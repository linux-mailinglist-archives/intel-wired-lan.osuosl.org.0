Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F0A1BBBA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2019 19:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB3DB869F2;
	Mon, 13 May 2019 17:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRz3WZfxm1MR; Mon, 13 May 2019 17:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 474C68618E;
	Mon, 13 May 2019 17:20:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3FB21BF358
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 09:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC35C24B3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 09:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5cbB6mqa9wD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2019 09:10:45 +0000 (UTC)
X-Greylist: delayed 01:18:39 by SQLgrey-1.7.6
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70085.outbound.protection.outlook.com [40.107.7.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 852BC248F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 09:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4hbvaHGdk2G1Gjl1G5Wd6/JDCrOYrX+d3D2rVEwJ0Y=;
 b=GAtuvRBttXV5iOc0cAQAGcbSQam8P3FPbNcHhvxnc0XYTEYnh8LoRgM36D5NAQmW5y330/rERQ+/4cyud6FH5Jh+zVa2SOXg0PVs2C4Vwww0Nc6XpqucWLgrtkWBDSqnTkZLvuiX1aSF+ufg3jhqKMKYD53RG45la9iVBEvabA8=
Received: from AM0PR07MB5313.eurprd07.prod.outlook.com (20.178.20.30) by
 AM0PR07MB6178.eurprd07.prod.outlook.com (20.178.16.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.11; Mon, 13 May 2019 07:36:42 +0000
Received: from AM0PR07MB5313.eurprd07.prod.outlook.com
 ([fe80::acc6:ea33:3778:a22b]) by AM0PR07MB5313.eurprd07.prod.outlook.com
 ([fe80::acc6:ea33:3778:a22b%6]) with mapi id 15.20.1900.010; Mon, 13 May 2019
 07:36:42 +0000
From: Periyasamy Palanisamy <periyasamy.palanisamy@ericsson.com>
To: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>
Thread-Topic: Not able to create VFs on PF passthrough of ethernet interface
 to VM
Thread-Index: AdUHGI+04+vWHpzmSXO89XdUR2sjhgAGC6MQAItor/A=
Date: Mon, 13 May 2019 07:36:41 +0000
Message-ID: <AM0PR07MB531393AB5237B86A25991A7A8A0F0@AM0PR07MB5313.eurprd07.prod.outlook.com>
References: <AM0PR07MB531316C34EDCB413A855132A8A0C0@AM0PR07MB5313.eurprd07.prod.outlook.com>
 <AM0PR07MB531317D299B0EC8D11D67F568A0C0@AM0PR07MB5313.eurprd07.prod.outlook.com>
In-Reply-To: <AM0PR07MB531317D299B0EC8D11D67F568A0C0@AM0PR07MB5313.eurprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=periyasamy.palanisamy@ericsson.com; 
x-originating-ip: [129.192.10.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a59b2ea-969c-44ea-1b8a-08d6d775be1d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:AM0PR07MB6178; 
x-ms-traffictypediagnostic: AM0PR07MB6178:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <AM0PR07MB6178C3AE0D323C7731A2B5518A0F0@AM0PR07MB6178.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(2501003)(74316002)(5640700003)(6436002)(68736007)(256004)(5024004)(55016002)(33656002)(66066001)(9686003)(236005)(6306002)(54896002)(25786009)(2351001)(2906002)(53936002)(52536014)(8936002)(81166006)(8676002)(81156014)(4326008)(186003)(44832011)(486006)(476003)(6116002)(26005)(446003)(11346002)(3846002)(6916009)(66556008)(66446008)(66476007)(64756008)(66946007)(76116006)(73956011)(316002)(790700001)(7736002)(478600001)(606006)(966005)(14454004)(99286004)(5660300002)(7696005)(102836004)(76176011)(6506007)(86362001)(71200400001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR07MB6178;
 H:AM0PR07MB5313.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DxAL47puR4JveFZRdnRW+Cu3dJn6Jz/oLSTo8Gw/PdM+SGfsRBwte5rC/YMZ3NaQ1J7Kmt1OQIBvRBVcc/jOY7J08LfoTWOgHkCHKLFrALDBbyYFmWpBJMyCEUk3NSRW+M85umhVWAeu7OcSfrrPvhDiRcFm9Bk6YKXy96oH+FPwpWPcHStPYdOakz0Glwaq+O1elIt05GsHdbpEmTUjPbBCLSROlYRttJC35Yt9AYgcBBk/kqtD96y5MJCx1nl7Qey52+KknzuyYxRAM7EtzudXGHxYWT78UP+6oYFm7x73t5iC/OR6+jw1fh/mQodXQrC9sm892u6TwMaWALuEA3D2qFJ3gJFzkc4tMksYc7hIp+7PiDUfqJeQuwsTgzORK3Uk2XBovY0hdJJTyGBGdIXvdUUNoMXbO42hncufQu4=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a59b2ea-969c-44ea-1b8a-08d6d775be1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 07:36:41.8718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB6178
X-Mailman-Approved-At: Mon, 13 May 2019 17:20:32 +0000
Subject: [Intel-wired-lan] Not able to create VFs on PF passthrough of
 ethernet interface to VM
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============2905239569929986669=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2905239569929986669==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR07MB531393AB5237B86A25991A7A8A0F0AM0PR07MB5313eurp_"

--_000_AM0PR07MB531393AB5237B86A25991A7A8A0F0AM0PR07MB5313eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCknigJltIHRyeWluZyB0byBhY2hpZXZlIFBGIHBhc3N0aHJvdWdoIG9mIDQwLzEwRyBl
dGhlcm5ldCBpbnRlcmZhY2UgKGk0MGUpIGludG8gZ3Vlc3QgVk0gcnVubmluZyBvbiBxZW11L2t2
bSBoeXBlcnZpc29yIGFuZCB0aGVuIGNyZWF0ZSBWRnMgb24gdGhlIFBGIGluc2lkZSB0aGUgVk0u
DQpUaGlzIGlzIHRvIGhhdmUgYSBmbGV4aWJpbGl0eSBhbmQgYmV0dGVyIG1hbmFnZWFiaWxpdHkg
b2YgVkZzIGluc2lkZSB0aGUgVk0gKGZvciBleGFtcGxlLCBrdWJlcm5ldGVzIHdvcmtlciBub2Rl
KSBpdHNlbGYgYW5kIG5vdCBvbiB0aGUgaG9zdC4NCg0KDQpUaGUgZXRoZXJuZXQgUENJIGRldmlj
ZSBpcyBzZWVuIGluc2lkZSB0aGUgVk0gYW5kIGJvdW5kIHRvIGk0MGUgZHJpdmVyLiBCdXQgSSBk
b27igJl0IHNlZSBhbiBvcHRpb24gdG8gY3JlYXRlIFZGcy4gaS5lLiBzcmlvdl9udW12ZnMgZmls
ZSBpcyBub3Qgc2VlbiB1bmRlciAvc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAyLjEv
MDAwMDowMjowMC4wIGRpcmVjdG9yeS4NCg0KSG9zdCB2ZXJzaW9uczoNCk9TOiBVYnVudHUgMTYu
MDQuNSBMVFMsIEtlcm5lbDogNC4xNS4wLTQ4LWdlbmVyaWMsIGxpYnZpcnQ6IDQuMC4wLCBxZW11
OiAyLjExLjENCmk0MGUgdmVyc2lvbjogMi4xLjE0LWssIGZpcm13YXJlLXZlcnNpb246IDYuMDEg
MHg4MDAwMzRhMyAxLjE3NDcuMA0KDQpHdWVzdCB2ZXJzaW9uczoNCk9TOiBDZW50T1MgNyAoQ29y
ZSkgS2VybmVsOiAzLjEwLjAtODYyLjE0LjQuZWw3Lng4Nl82NA0KaTQwZSB2ZXJzaW9uOiAyLjEu
MTQtaywgZmlybXdhcmUtdmVyc2lvbjogNi4wMSAweDgwMDAzNGEzIDEuMTc0Ny4wDQoNClRoZSBW
TSBsaWJ2aXJ0IHhtbCBjb25maWd1cmF0aW9uIFsxXSwgUEYgY29uZmlndXJhdGlvbiBhdCBob3N0
IFsyXSwgUEYgY29uZmlndXJhdGlvbiBhdCBWTSBbM10gYXJlIGF0dGFjaGVkLg0KVGhlIGxzcGNp
IG91dHB1dCBsaW5lIG5vcy4gNjMtNzUgcmVsYXRlZCB0byBTUklPViBDYXBhYmlsaXRpZXMgaW4g
aG9zdCBbMl0gYXJlIG1pc3NpbmcgaW4gVk0gd2hpY2ggbG9va3MgYml0IHdlaXJkLg0KDQpDb3Vs
ZCB5b3UgcGxlYXNlIGxvb2sgaW50byBpdCBhbmQgbGV0IHVzIGtub3cgd2hhdOKAmXMgZ29pbmcg
d3JvbmcgPw0KDQpbMV0gaHR0cHM6Ly9wYXN0ZWJpbi51YnVudHUuY29tL3Avd3JEQjZUNjhyMy8N
ClsyXSBodHRwczovL3Bhc3RlYmluLnVidW50dS5jb20vcC9QVzdaNFN4UVB0Lw0KWzNdIGh0dHBz
Oi8vcGFzdGViaW4udWJ1bnR1LmNvbS9wL0pjbXBNWTQ4RDYvDQoNClRoYW5rcywNClBlcml5YXNh
bXkNCg==

--_000_AM0PR07MB531393AB5237B86A25991A7A8A0F0AM0PR07MB5313eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCglt
c28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJ
e21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlv
bjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21z
by1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojOTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1
bmRlcmxpbmU7fQ0KcHJlDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGlu
azoiSFRNTCBQcmVmb3JtYXR0ZWQgQ2hhciI7DQoJbWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9t
Oi4wMDAxcHQ7DQoJZm9udC1zaXplOjEwLjBwdDsNCglmb250LWZhbWlseToiQ291cmllciBOZXci
O30NCnNwYW4uSFRNTFByZWZvcm1hdHRlZENoYXINCgl7bXNvLXN0eWxlLW5hbWU6IkhUTUwgUHJl
Zm9ybWF0dGVkIENoYXIiOw0KCW1zby1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGlu
azoiSFRNTCBQcmVmb3JtYXR0ZWQiOw0KCWZvbnQtZmFtaWx5OiJDb3VyaWVyIE5ldyI7DQoJbXNv
LWZhcmVhc3QtbGFuZ3VhZ2U6IzIwMDA7fQ0KcC5tc29ub3JtYWwwLCBsaS5tc29ub3JtYWwwLCBk
aXYubXNvbm9ybWFsMA0KCXttc28tc3R5bGUtbmFtZTptc29ub3JtYWw7DQoJbXNvLW1hcmdpbi10
b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBjbTsNCgltc28tbWFyZ2luLWJvdHRvbS1hbHQ6
YXV0bzsNCgltYXJnaW4tbGVmdDowY207DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpzcGFuLkVtYWlsU3R5bGUyMA0KCXttc28tc3R5bGUt
dHlwZTpwZXJzb25hbDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xv
cjp3aW5kb3d0ZXh0O30NCnNwYW4uRW1haWxTdHlsZTIxDQoJe21zby1zdHlsZS10eXBlOnBlcnNv
bmFsOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3Rl
eHQ7fQ0Kc3Bhbi5FbWFpbFN0eWxlMjINCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7
DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9
DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNp
emU6MTAuMHB0O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsN
CgltYXJnaW46NzIuMHB0IDcyLjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjEN
Cgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3ht
bD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6
ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBl
bGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iZW4tMTUwIiBs
aW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEi
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj5IaSw8bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJlbi0xNTAiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9ImVuLTE1MCI+SeKAmW0gdHJ5aW5nIHRvIGFjaGlldmUgUEYgcGFzc3Rocm91Z2ggb2YgNDAv
MTBHIGV0aGVybmV0IGludGVyZmFjZSAoaTQwZSkgaW50byBndWVzdCBWTSBydW5uaW5nIG9uIHFl
bXUva3ZtIGh5cGVydmlzb3IgYW5kIHRoZW4gY3JlYXRlIFZGcyBvbiB0aGUgUEYgaW5zaWRlIHRo
ZSBWTS4NCjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9ImVuLTE1MCI+VGhpcyBpcyB0byBoYXZlIGEgZmxleGliaWxpdHkgYW5kIGJldHRlciBt
YW5hZ2VhYmlsaXR5IG9mIFZGcyBpbnNpZGUgdGhlIFZNIChmb3IgZXhhbXBsZSwga3ViZXJuZXRl
cyB3b3JrZXIgbm9kZSkgaXRzZWxmIGFuZCBub3Qgb24gdGhlIGhvc3QuPG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj48bzpwPiZu
YnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cHJlPjxzcGFuIGxhbmc9ImVuLTE1MCIgc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
Ij5UaGUgZXRoZXJuZXQgUENJIGRldmljZSBpcyBzZWVuIGluc2lkZSB0aGUgVk0gYW5kIGJvdW5k
IHRvIGk0MGUgZHJpdmVyLiBCdXQgSSBkb27igJl0IHNlZSBhbiBvcHRpb24gdG8gY3JlYXRlIFZG
cy4gaS5lLiBzcmlvdl9udW12ZnMgZmlsZSBpcyBub3Qgc2VlbiB1bmRlcjxzcGFuIHN0eWxlPSJj
b2xvcjpibGFjayI+IC9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMS8wMDAwOjAy
OjAwLjAgPC9zcGFuPmRpcmVjdG9yeS48bzpwPjwvbzpwPjwvc3Bhbj48L3ByZT4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9ImVuLTE1MCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIiBzdHlsZT0iZm9u
dC1mYW1pbHk6JnF1b3Q7Q291cmllciBOZXcmcXVvdDsiPkhvc3QgdmVyc2lvbnM6PG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIiBz
dHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q291cmllciBOZXcmcXVvdDsiPk9TOiBVYnVudHUgMTYu
MDQuNSBMVFMsIEtlcm5lbDogNC4xNS4wLTQ4LWdlbmVyaWMsIGxpYnZpcnQ6IDQuMC4wLCBxZW11
OiAyLjExLjE8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJlbi0xNTAiIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDb3VyaWVyIE5ldyZxdW90
OyI+aTQwZSB2ZXJzaW9uOiAyLjEuMTQtaywgZmlybXdhcmUtdmVyc2lvbjogNi4wMSAweDgwMDAz
NGEzIDEuMTc0Ny4wPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iZW4tMTUwIiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q291cmllciBOZXcm
cXVvdDsiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9ImVuLTE1MCIgc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0NvdXJpZXIgTmV3
JnF1b3Q7Ij5HdWVzdCB2ZXJzaW9uczo8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJlbi0xNTAiIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtD
b3VyaWVyIE5ldyZxdW90OyI+T1M6IENlbnRPUyA3IChDb3JlKSBLZXJuZWw6IDMuMTAuMC04NjIu
MTQuNC5lbDcueDg2XzY0PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iZW4tMTUwIiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q291cmllciBO
ZXcmcXVvdDsiPmk0MGUgdmVyc2lvbjogMi4xLjE0LWssIGZpcm13YXJlLXZlcnNpb246IDYuMDEg
MHg4MDAwMzRhMyAxLjE3NDcuMDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9ImVuLTE1MCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj5UaGUgVk0gbGlidmlydCB4
bWwgY29uZmlndXJhdGlvbiBbMV0sIFBGIGNvbmZpZ3VyYXRpb24gYXQgaG9zdCBbMl0sIFBGIGNv
bmZpZ3VyYXRpb24gYXQgVk0gWzNdIGFyZSBhdHRhY2hlZC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJlbi0xNTAiPlRoZSBsc3BjaSBvdXRw
dXQgbGluZSBub3MuIDYzLTc1IHJlbGF0ZWQgdG8gU1JJT1YgQ2FwYWJpbGl0aWVzIGluIGhvc3Qg
WzJdIGFyZSBtaXNzaW5nIGluIFZNIHdoaWNoIGxvb2tzIGJpdCB3ZWlyZC4NCjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9ImVuLTE1MCI+PG86
cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iZW4tMTUwIj5Db3VsZCB5b3UgcGxlYXNlIGxvb2sgaW50byBpdCBhbmQgbGV0IHVzIGtub3cg
d2hhdOKAmXMgZ29pbmcgd3JvbmcgPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9ImVuLTE1MCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj5bMV0gPGEgaHJlZj0i
aHR0cHM6Ly9wYXN0ZWJpbi51YnVudHUuY29tL3Avd3JEQjZUNjhyMy8iPg0KaHR0cHM6Ly9wYXN0
ZWJpbi51YnVudHUuY29tL3Avd3JEQjZUNjhyMy88L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj5bMl0gPGEgaHJlZj0iaHR0
cHM6Ly9wYXN0ZWJpbi51YnVudHUuY29tL3AvUFc3WjRTeFFQdC8iPg0KaHR0cHM6Ly9wYXN0ZWJp
bi51YnVudHUuY29tL3AvUFc3WjRTeFFQdC88L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj5bM10gPGEgaHJlZj0iaHR0cHM6
Ly9wYXN0ZWJpbi51YnVudHUuY29tL3AvSmNtcE1ZNDhENi8iPg0KaHR0cHM6Ly9wYXN0ZWJpbi51
YnVudHUuY29tL3AvSmNtcE1ZNDhENi88L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iZW4tMTUwIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJlbi0xNTAiPlRoYW5rcyw8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJl
bi0xNTAiPlBlcml5YXNhbXk8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_AM0PR07MB531393AB5237B86A25991A7A8A0F0AM0PR07MB5313eurp_--

--===============2905239569929986669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2905239569929986669==--
