#!/usr/bin/python
# -*- coding: iso-8859-15 -*-

# -- IMPORTATION --

#import Tkinter as tk
import tkinter as tk
import serial

# -- INTERFACE GRAPHIQUE
class iface1(tk.Frame):
    def __init__(self, parent):
        #Variables
        self.parent = parent
        self.serialConnection = 0
        self.locations=['/dev/ttyUSB0', '/dev/ttyUSB1', '/dev/ttyUSB2', '/dev/ttyUSB3', '/dev/ttyS0', '/dev/ttyS1', '/dev/ttyS2', '/dev/ttyS3']
        self.ser = ''
        self.currentInterface = 0

        #Les frames
        tk.Frame.__init__(self, self.parent)
        self.interfaceDirect = tk.LabelFrame(self, text="Direction standard", padx = 20, pady = 20)
        self.interfaceSurPlace = tk.LabelFrame(self, text="Direction sur place", padx = 20, pady = 20)
        self.interfaceSpeed = tk.LabelFrame(self, text="Vitesse", padx = 20, pady = 20)
        self.interfaceInfos = tk.LabelFrame(self, text="Informations", padx = 20, pady = 20)
        self.interfaceConnexion = tk.LabelFrame(self, text="Connection", padx = 20, pady = 20)
        
        #Images
        self.myImgAV = tk.PhotoImage(file="ressources/icones/av.gif")
        self.myImgRG = tk.PhotoImage(file="ressources/icones/rg.gif")
        self.myImgRC = tk.PhotoImage(file="ressources/icones/rc.gif")
        self.myImgRD = tk.PhotoImage(file="ressources/icones/rd.gif")
        self.myImgRDG = tk.PhotoImage(file="ressources/icones/rdg.gif")
        self.myImgRDD = tk.PhotoImage(file="ressources/icones/rdd.gif")
        self.myImgAR = tk.PhotoImage(file="ressources/icones/ar.gif")
        self.myImgTSPG = tk.PhotoImage(file="ressources/icones/tspg.gif")
        self.myImgRSP = tk.PhotoImage(file="ressources/icones/rsp.gif")
        self.myImgTSPD = tk.PhotoImage(file="ressources/icones/tspd.gif")
        
        #Boutons
        self.btAV = tk.Button(self.interfaceDirect, image=self.myImgAV, bg = "grey", command=self.av)
        self.btRG = tk.Button(self.interfaceDirect, image=self.myImgRG, bg = "grey", command=self.rg)
        self.btRC = tk.Button(self.interfaceDirect, image=self.myImgRC, bg = "grey", command=self.rc)
        self.btRD = tk.Button(self.interfaceDirect, image=self.myImgRD, bg = "grey", command=self.rd)
        self.btRDG = tk.Button(self.interfaceDirect, image=self.myImgRDG, bg = "grey", command=self.rdg)
        self.btRDD = tk.Button(self.interfaceDirect, image=self.myImgRDD, bg = "grey", command=self.rdd)
        self.btAR = tk.Button(self.interfaceDirect, image=self.myImgAR, bg = "grey", command=self.ar)
        
        self.btTSPG = tk.Button(self.interfaceSurPlace, image=self.myImgTSPG, bg = "grey", command=self.tspg)
        self.btRSP = tk.Button(self.interfaceSurPlace, image=self.myImgRSP, bg = "grey", command=self.rsp)
        self.btTSPD = tk.Button(self.interfaceSurPlace, image=self.myImgTSPD, bg = "grey", command=self.tspd)

        self.scaleSpeed = tk.Scale(self.interfaceSpeed, from_=100, to=60, tickinterval=2)

        self.btCo = tk.Button(self.interfaceConnexion, image=self.myImgTSPD, bg = "green", command=self.serialConn)

        #Saisie de texte
        self.textInfos = tk.Text(self.interfaceInfos, width=100, height=20, wrap=tk.WORD)
        
        #Positionnement des boutons g�n�raux
        self.interfaceDirect.grid(column=0, row=0, sticky='NS')
        self.btAV.grid(column=2, row=0)
        self.btRG.grid(column=1, row=1)
        self.btRC.grid(column=2, row=1)
        self.btRD.grid(column=3, row=1)
        self.btRDG.grid(column=0, row=1)
        self.btRDD.grid(column=4, row=1)
        self.btAR.grid(column=2, row=2)

        #Positionnement de la gestion de vitesse
        self.interfaceSpeed.grid(column=1, row=0, rowspan=2, sticky='NS')
        self.scaleSpeed.grid(column=0, row=0)

        #Positionnement des boutons sp�ciaux
        self.interfaceSurPlace.grid(column=0, row=1, sticky='NS')
        self.btTSPG.grid(column=1, row=3)
        self.btRSP.grid(column=2, row=3)
        self.btTSPD.grid(column=3, row=3)

        #Positionement du log
        self.interfaceInfos.grid(column=0, row=2, sticky='NS')
        self.textInfos.grid(column=0, row=0)

        #Positionnement de la partie connection
        self.interfaceConnexion.grid(column=1, row=2, sticky='NS')
        self.btCo.grid(column=0, row=0)

        #self.serialConn()   #Lance la connection sur le mode serial

    #Avant
    def av(self):
        speed = self.scaleSpeed.get() #Mise � jour de la vitesse
        #Si on utilise l'interface 1 
        if self.currentInterface == 1:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                self.serialOrdre("!,1,1," + str(speed) + ",1," + str(speed) + ",1," + str(speed) + ",1," + str(speed) + ",*")

    #Roues Gauches
    def rg(self):
        #Si on utilise l'interface 1 
        if self.currentInterface == 1:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                #avg / arg / avd / ard
                #self.serialOrdre("!,2,70,110,70,110,*")
                self.serialOrdre("!,2,70,110,75,105,*")

    #Roues Centres
    def rc(self):
        #Active les boutons standards
        self.btnStandard()
        #Si on a la connection lanc�
        if self.serialConnection == 1:
            self.serialOrdre("!,2,90,90,90,90,*")

    #Roues Droites
    def rd(self):
        #Si on utilise l'interface 1 
        if self.currentInterface == 1:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                #self.serialOrdre("!,2,110,70,110,70,*")
                self.serialOrdre("!,2,105,75,110,70,*")

    #Roues Diagonales Gauches
    def rdg(self):
        #Si on utilise l'interface 1 
        if self.currentInterface == 1:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                self.serialOrdre("!,2,70,70,70,70,*")

    #Roues Diagolanes Droites
    def rdd(self):
        #Si on utilise l'interface 1 
        if self.currentInterface == 1:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                self.serialOrdre("!,2,110,110,110,110,*")

    #Arri�res
    def ar(self):
        speed = self.scaleSpeed.get() #Mise � jour de la vitesse
        #Si on utilise l'interface 1 
        if self.currentInterface == 1:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                self.serialOrdre("!,1,0," + str(speed) + ",0," + str(speed) + ",0," + str(speed) + ",0," + str(speed) + ",*")

    #Tourner Sur Place Gauche
    def tspg(self):
        speed = self.scaleSpeed.get() #Mise � jour de la vitesse
        #Si on utilise l'interface 2 
        if self.currentInterface == 2:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                self.serialOrdre("!,1,0," + str(speed) + ",1," + str(speed) + ",0," + str(speed) + ",1," + str(speed) + ",*")

    #Roues Sur Place
    def rsp(self):
        #Active les boutons s�ciaux
        self.btnSpeciaux()
        #Si on a la connection lanc�
        if self.serialConnection == 1:
            self.serialOrdre("!,2,140,40,40,140,*")

    #Tourner Sur Place � Droite
    def tspd(self):
        speed = self.scaleSpeed.get() #Mise � jour de la vitesse
        #Si on utilise l'interface 2 
        if self.currentInterface == 2:
            #Si on a la connection lanc�
            if self.serialConnection == 1:
                self.serialOrdre("!,1,1," + str(speed) + ",0," + str(speed) + ",1," + str(speed) + ",0," + str(speed) + ",*")
    #Initialisation du rover
    def initRover(self):
        #Active les boutons standards
        self.btnStandard()
        #Si on a la connection lanc�
        if self.serialConnection == 1:
            self.serialOrdre("!,2,90,90,90,90,*")
    
    #Ecrire sur le port s�rie l'ordre
    def serialOrdre(self, ordre):
        data = bytearray(ordre, 'ascii')
        self.ser.write(data)

        information = "Envoy� -> " + ordre + "...\n"
        self.textInfos.insert(0.0, information)
        #print("Ordre envoy�",ordre)

    #Active les boutons standard
    def btnStandard(self):
        #Si on a la connection lanc�
        if self.serialConnection == 1:
            self.btAV.configure(bg = "green")
            self.btRG.configure(bg = "green")
            self.btRC.configure(bg = "grey")
            self.btRD.configure(bg = "green")
            self.btRDG.configure(bg = "green")
            self.btRDD.configure(bg = "green")
            self.btAR.configure(bg = "green")
            self.btTSPG.configure(bg = "red")
            self.btRSP.configure(bg = "blue")
            self.btTSPD.configure(bg = "red")
            #Pour se rappeler dans quelle interface on est
            self.currentInterface = 1

    #Active les boutons sp�ciaux
    def btnSpeciaux(self):
        #Si on a la connection lanc�
        if self.serialConnection == 1:
            self.btAV.configure(bg = "red")
            self.btRG.configure(bg = "red")
            self.btRC.configure(bg = "blue")
            self.btRD.configure(bg = "red")
            self.btRDG.configure(bg = "red")
            self.btRDD.configure(bg = "red")
            self.btAR.configure(bg = "red")
            self.btTSPG.configure(bg = "green")
            self.btRSP.configure(bg = "grey")
            self.btTSPD.configure(bg = "green")
            #Pour se rappeler dans quelle interface on est
            self.currentInterface = 2

    #Etablire une connexion
    def serialConn(self):
        #Tentative de connexion au XBee Usb
        for device in self.locations:
            try:
                information = "Tentative de connecion sur le port" + device + "...\n"
                self.textInfos.insert(0.0, information)

                self.ser = serial.Serial(device, 9600)
                self.serialConnection = 1
                break
            except:
                information = "Connection �chou� sur " + device + "!\n"
                self.textInfos.insert(0.0, information)

        #Si la connexion est assur�
        if self.serialConnection == 1:
            self.initRover()    #Lancer l'initialisation du rover

posl_app = tk.Tk()              #Instancie la classe

iface_graphique = iface1(posl_app)
iface_graphique.grid(column = 0, row = 0, sticky='NS')

posl_app.title('POSL Rover')    #Titre de l'application
posl_app.mainloop()             #Boucler