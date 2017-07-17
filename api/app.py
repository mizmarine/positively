# -*- coding: utf-8 -*-
import connexion

app = connexion.App(__name__, specification_dir='swagger/')
app.add_api('api.yaml')
