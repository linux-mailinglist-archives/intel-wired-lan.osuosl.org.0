Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0BA46865
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2019 21:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0B5EA2042F;
	Fri, 14 Jun 2019 19:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJu2UGHjlPhy; Fri, 14 Jun 2019 19:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09D18204BD;
	Fri, 14 Jun 2019 19:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31F0C1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 16:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2D9DF884BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 16:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEafybcWFpuL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2019 16:13:03 +0000 (UTC)
X-Greylist: delayed 00:59:23 by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130077.outbound.protection.outlook.com [40.107.13.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3776C884B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 16:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qlJXSOT/rsVlbpCfsF9K5y78r3RgmWjUbBZnYANU0Gs=;
 b=rb2BYGSzkk+Ym5e7MAOD4HYzKvlvzfuDKojmsq7vOTn7Ga+TN+dtMMnJHq/ye4hblrTnJdq+akJkt1zWBSPt1tMrAwGQpcNe5hBMbjlVdNl+7hLRhL2Kl67VOzBlk0yGvWJHT7LFbOWDiD5LbnRORK1Qv7ON3e6q9Tn7iR+cO6Q=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB6389.eurprd05.prod.outlook.com (20.179.6.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Fri, 14 Jun 2019 13:38:04 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::9527:fe9d:2a02:41d5]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::9527:fe9d:2a02:41d5%5]) with mapi id 15.20.1987.010; Fri, 14 Jun 2019
 13:38:04 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Magnus Karlsson <magnus.karlsson@intel.com>, "bjorn.topel@intel.com"
 <bjorn.topel@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "brouer@redhat.com" <brouer@redhat.com>
Thread-Topic: [PATCH bpf-next 0/6] add need_wakeup flag to the AF_XDP rings
Thread-Index: AQHVIbrjdEzhYlYHsEebC95X2ngPYqabKT6A
Date: Fri, 14 Jun 2019 13:38:04 +0000
Message-ID: <b84b2128-da38-3f0e-35fe-7d1466005dca@mellanox.com>
References: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
In-Reply-To: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0026.prod.exchangelabs.com (2603:10b6:a02:80::39)
 To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67f56fd0-5e71-40d1-1cd8-08d6f0cd86a2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB6389; 
x-ms-traffictypediagnostic: AM6PR05MB6389:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM6PR05MB63890988974828B8DDCBB6EBD1EE0@AM6PR05MB6389.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(7736002)(305945005)(2616005)(446003)(36756003)(66066001)(486006)(11346002)(2501003)(73956011)(64756008)(66446008)(5660300002)(68736007)(476003)(66556008)(8676002)(8936002)(14454004)(66476007)(66946007)(81166006)(6116002)(3846002)(81156014)(71200400001)(26005)(6246003)(76176011)(53936002)(4326008)(478600001)(6506007)(2201001)(966005)(53546011)(55236004)(386003)(14444005)(6486002)(229853002)(53376002)(86362001)(102836004)(66574012)(2906002)(54906003)(52116002)(6512007)(316002)(71190400001)(6306002)(99286004)(186003)(256004)(7416002)(6436002)(31686004)(110136005)(25786009)(31696002)(48284002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6389;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZUPFcABagxTgpYu1tN45O0SdEALsDKqEBw2tSXxQuzMbUDjrq2dpB1nGxOUjscSzOl5bSY0KSqTsSxWlflH3J3vUzJfgkNG6zReNvkldB+bKDUdM8en2romqwoFeP6sKq3Q/P7E+zHU53sJLmuD7U9aZxjhAQscThAV9FvoL3AxGkdyfjwDeKV0wU7um0eOhORdPTppTrPocWKo5DRhrLqmWnR7Q4dpYPHuQwLvS+DCKmnyyEfB7ow8AdoAjNQ9sEFkr3lwNkHXJTPmn+/Q8pgHdmB9aQ2sAH+K6KpNpEOP4YTuBPnNYEZXj4ajwKtrn5Bh9MKwhLFXGua1aJ9lxwQTm/4b6wk6cH0BhGMR3jWcrJN8C2AHtQ0dLbVUJa+Z0a6l/IJpuwua5gDBTTbgiaVo2qJSLYj/ARLgGB4eWxtQ=
Content-ID: <1C73F767DEF6D246BCE8948B031B4BF5@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67f56fd0-5e71-40d1-1cd8-08d6f0cd86a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 13:38:04.3603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6389
X-Mailman-Approved-At: Fri, 14 Jun 2019 19:55:19 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] add need_wakeup flag to
 the AF_XDP rings
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "maciejromanfijalkowski@gmail.com" <maciejromanfijalkowski@gmail.com>,
 "kevin.laatz@intel.com" <kevin.laatz@intel.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "xiaolong.ye@intel.com" <xiaolong.ye@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "qi.z.zhang@intel.com" <qi.z.zhang@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wNi0xMyAxMDozNywgTWFnbnVzIEthcmxzc29uIHdyb3RlOg0KPiANCj4gVGhpcyBw
YXRjaCBzZXQgYWRkcyBzdXBwb3J0IGZvciBhIG5ldyBmbGFnIGNhbGxlZCBuZWVkX3dha2V1cCBp
biB0aGUNCj4gQUZfWERQIFR4IGFuZCBmaWxsIHJpbmdzLiBXaGVuIHRoaXMgZmxhZyBpcyBzZXQg
YnkgdGhlIGRyaXZlciwgaXQNCj4gbWVhbnMgdGhhdCB0aGUgYXBwbGljYXRpb24gaGFzIHRvIGV4
cGxpY2l0bHkgd2FrZSB1cCB0aGUga2VybmVsIFJ4DQo+IChmb3IgdGhlIGJpdCBpbiB0aGUgZmls
bCByaW5nKSBvciBrZXJuZWwgVHggKGZvciBiaXQgaW4gdGhlIFR4IHJpbmcpDQo+IHByb2Nlc3Np
bmcgYnkgaXNzdWluZyBhIHN5c2NhbGwuIFBvbGwoKSBjYW4gd2FrZSB1cCBib3RoIGFuZCBzZW5k
dG8oKQ0KPiB3aWxsIHdha2UgdXAgVHggcHJvY2Vzc2luZyBvbmx5Lg0KDQpBdCBmaXJzdCBzaWdo
dCwgc291bmRzIHVzZWZ1bCEgKEkgZGlkbid0IGhhdmUgdGltZSB0byBoYXZlIGEgZGVlcGVyIGxv
b2sgDQphdCB0aGUgc2VyaWVzIHlldC4pDQoNCkkgc2VlIHlvdSBhcmUgcmVwbGFjaW5nIG5kb194
c2tfYXN5bmNfeG1pdCB3aXRoIGFub3RoZXIgZnVuY3Rpb24gdG8gDQpzdXBwb3J0IHlvdXIgZXh0
ZW5zaW9uLCBhbmQgc29tZSBkcml2ZXIgY2hhbmdlcyBhcmUgbWFkZS4gRG9lcyBpdCBtZWFuIA0K
dGhhdCBldmVyeSBkcml2ZXIgbXVzdCBzdXBwb3J0IHRoZSBuZXcgZXh0ZW5zaW9uPyBIb3cgYWJv
dXQgbWFraW5nIGl0IA0Kb3B0aW9uYWw/IEkuZS4gdGhlIGtlcm5lbCBjYW4gY2hlY2sgd2hldGhl
ciB0aGUgbmV3IE5ETyBpcyBpbXBsZW1lbnRlZCANCm9yIG5vdCwgYW5kIHVzZSB0aGUgbmV3IGZl
YXR1cmUgd2l0aCBkcml2ZXJzIHRoYXQgc3VwcG9ydCBpdC4NCg0KVGhhbmtzLA0KTWF4DQoNCj4g
VGhlIG1haW4gcmVhc29uIGZvciBpbnRyb2R1Y2luZyB0aGlzIG5ldyBmbGFnIGlzIHRvIGJlIGFi
bGUgdG8NCj4gZWZmaWNpZW50bHkgc3VwcG9ydCB0aGUgY2FzZSB3aGVuIGFwcGxpY2F0aW9uIGFu
ZCBkcml2ZXIgaXMgZXhlY3V0aW5nDQo+IG9uIHRoZSBzYW1lIGNvcmUuIFByZXZpb3VzbHksIHRo
ZSBkcml2ZXIgd2FzIGp1c3QgYnVzeS1zcGlubmluZyBvbiB0aGUNCj4gZmlsbCByaW5nIGlmIGl0
IHJhbiBvdXQgb2YgYnVmZmVycyBpbiB0aGUgSFcgYW5kIHRoZXJlIHdlcmUgbm9uZSB0bw0KPiBn
ZXQgZnJvbSB0aGUgZmlsbCByaW5nLiBUaGlzIGFwcHJvYWNoIHdvcmtzIHdoZW4gdGhlIGFwcGxp
Y2F0aW9uIGFuZA0KPiBkcml2ZXIgaXMgcnVubmluZyBvbiBkaWZmZXJlbnQgY29yZXMgYXMgdGhl
IGFwcGxpY2F0aW9uIGNhbiByZXBsZW5pc2gNCj4gdGhlIGZpbGwgcmluZyB3aGlsZSB0aGUgZHJp
dmVyIGlzIGJ1c3ktc3Bpbm5pbmcuIFRob3VnaCwgdGhpcyBpcyBhDQo+IGxvdXN5IGFwcHJvYWNo
IGlmIGJvdGggb2YgdGhlbSBhcmUgcnVubmluZyBvbiB0aGUgc2FtZSBjb3JlIGFzIHRoZQ0KPiBw
cm9iYWJpbGl0eSBvZiB0aGUgZmlsbCByaW5nIGdldHRpbmcgbW9yZSBlbnRyaWVzIHdoZW4gdGhl
IGRyaXZlciBpcw0KPiBidXN5LXNwaW5uaW5nIGlzIHplcm8uIFdpdGggdGhpcyBuZXcgZmVhdHVy
ZSB0aGUgZHJpdmVyIG5vdyBzZXRzIHRoZQ0KPiBuZWVkX3dha2V1cCBmbGFnIGFuZCByZXR1cm5z
IHRvIHRoZSBhcHBsaWNhdGlvbi4gVGhlIGFwcGxpY2F0aW9uIGNhbg0KPiB0aGVuIHJlcGxlbmlz
aCB0aGUgZmlsbCBxdWV1ZSBhbmQgdGhlbiBleHBsaWNpdGx5IHdha2UgdXAgdGhlIFJ4DQo+IHBy
b2Nlc3NpbmcgaW4gdGhlIGtlcm5lbCB1c2luZyB0aGUgc3lzY2FsbCBwb2xsKCkuIEZvciBUeCwg
dGhlIGZsYWcgaXMNCj4gb25seSBzZXQgdG8gb25lIGlmIHRoZSBkcml2ZXIgaGFzIG5vIG91dHN0
YW5kaW5nIFR4IGNvbXBsZXRpb24NCj4gaW50ZXJydXB0cy4gSWYgaXQgaGFzIHNvbWUsIHRoZSBm
bGFnIGlzIHplcm8gYXMgaXQgd2lsbCBiZSB3b2tlbiB1cCBieQ0KPiBhIGNvbXBsZXRpb24gaW50
ZXJydXB0IGFueXdheS4gVGhpcyBmbGFnIGNhbiBhbHNvIGJlIHVzZWQgaW4gb3RoZXINCj4gc2l0
dWF0aW9ucyB3aGVyZSB0aGUgZHJpdmVyIG5lZWRzIHRvIGJlIHdva2VuIHVwIGV4cGxpY2l0bHku
DQo+IA0KPiBBcyBhIG5pY2Ugc2lkZSBlZmZlY3QsIHRoaXMgbmV3IGZsYWcgYWxzbyBpbXByb3Zl
cyB0aGUgVHggcGVyZm9ybWFuY2UNCj4gb2YgdGhlIGNhc2Ugd2hlcmUgYXBwbGljYXRpb24gYW5k
IGRyaXZlciBhcmUgcnVubmluZyBvbiB0d28gZGlmZmVyZW50DQo+IGNvcmVzIGFzIGl0IHJlZHVj
ZXMgdGhlIG51bWJlciBvZiBzeXNjYWxscyB0byB0aGUga2VybmVsLiBUaGUga2VybmVsDQo+IHRl
bGxzIHVzZXIgc3BhY2UgaWYgaXQgbmVlZHMgdG8gYmUgd29rZW4gdXAgYnkgYSBzeXNjYWxsLCBh
bmQgdGhpcw0KPiBlbGltaW5hdGVzIG1hbnkgb2YgdGhlIHN5c2NhbGxzLiBUaGUgUnggcGVyZm9y
bWFuY2Ugb2YgdGhlIDItY29yZSBjYXNlDQo+IGlzIG9uIHRoZSBvdGhlciBoYW5kIHNsaWdodGx5
IHdvcnNlLCBzaW5jZSB0aGVyZSBpcyBhIG5lZWQgdG8gdXNlIGENCj4gc3lzY2FsbCBub3cgdG8g
d2FrZSB1cCB0aGUgZHJpdmVyLCBpbnN0ZWFkIG9mIHRoZSBkcml2ZXINCj4gYnVzeS1zcGlubmlu
Zy4gSXQgZG9lcyB3YXN0ZSBsZXNzIENQVSBjeWNsZXMgdGhvdWdoLCB3aGljaCBtaWdodCBsZWFk
DQo+IHRvIGJldHRlciBvdmVyYWxsIHN5c3RlbSBwZXJmb3JtYW5jZS4NCj4gDQo+IFRoaXMgbmV3
IGZsYWcgbmVlZHMgc29tZSBzaW1wbGUgZHJpdmVyIHN1cHBvcnQuIElmIHRoZSBkcml2ZXIgZG9l
cyBub3QNCj4gc3VwcG9ydCBpdCwgdGhlIFJ4IGZsYWcgaXMgYWx3YXlzIHplcm8gYW5kIHRoZSBU
eCBmbGFnIGlzIGFsd2F5cw0KPiBvbmUuIFRoaXMgbWFrZXMgYW55IGFwcGxpY2F0aW9uIHJlbHlp
bmcgb24gdGhpcyBmZWF0dXJlIGRlZmF1bHQgdG8gdGhlDQo+IG9sZCBiZWhhdmlvciBvZiBub3Qg
cmVxdWlyaW5nIGFueSBzeXNjYWxscyBpbiB0aGUgUnggcGF0aCBhbmQgYWx3YXlzDQo+IGhhdmlu
ZyB0byBjYWxsIHNlbmR0bygpIGluIHRoZSBUeCBwYXRoLg0KPiANCj4gRm9yIGJhY2t3YXJkcyBj
b21wYXRpYmlsaXR5IHJlYXNvbnMsIHRoaXMgZmVhdHVyZSBoYXMgdG8gYmUgZXhwbGljaXRseQ0K
PiB0dXJuZWQgb24gdXNpbmcgYSBuZXcgYmluZCBmbGFnIChYRFBfVVNFX05FRURfV0FLRVVQKS4g
SSByZWNvbW1lbmQNCj4gdGhhdCB5b3UgYWx3YXlzIHR1cm4gaXQgb24gYXMgaXQgaGFzIGEgbGFy
Z2UgcG9zaXRpdmUgcGVyZm9ybWFuY2UNCj4gaW1wYWN0IGZvciB0aGUgb25lIGNvcmUgY2FzZSBh
bmQgZG9lcyBub3QgZGVncmFkZSAyIGNvcmUgcGVyZm9ybWFuY2UNCj4gYW5kIGFjdHVhbGx5IGlt
cHJvdmVzIGl0IGZvciBUeCBoZWF2eSB3b3JrbG9hZHMuDQo+IA0KPiBIZXJlIGFyZSBzb21lIHBl
cmZvcm1hbmNlIG51bWJlcnMgbWVhc3VyZWQgb24gbXkgbG9jYWwsDQo+IG5vbi1wZXJmb3JtYW5j
ZSBvcHRpbWl6ZWQgZGV2ZWxvcG1lbnQgc3lzdGVtLiBUaGF0IGlzIHdoeSB5b3UgYXJlDQo+IHNl
ZWluZyBudW1iZXJzIGxvd2VyIHRoYW4gdGhlIG9uZXMgZnJvbSBCasO2cm4gYW5kIEplc3Blci4g
NjQgYnl0ZQ0KPiBwYWNrZXRzIGF0IDQwR2JpdC9zIGxpbmUgcmF0ZS4gQWxsIHJlc3VsdHMgaW4g
TXBwcy4gQ29yZXMgPT0gMSBtZWFucw0KPiB0aGF0IGJvdGggYXBwbGljYXRpb24gYW5kIGRyaXZl
ciBpcyBleGVjdXRpbmcgb24gdGhlIHNhbWUgY29yZS4gQ29yZXMNCj4gPT0gMiB0aGF0IHRoZXkg
YXJlIG9uIGRpZmZlcmVudCBjb3Jlcy4NCj4gDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBBcHBsaWNhdGlvbnMNCj4gbmVlZF93YWtldXAgIGNvcmVzICAgIHR4cHVzaCAgICByeGRy
b3AgICAgICBsMmZ3ZA0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAgICAgbiAgICAgICAgIDEgICAgICAgMC4wNyAg
ICAgIDAuMDYgICAgICAgIDAuMDMNCj4gICAgICAgeSAgICAgICAgIDEgICAgICAgMjEuNiAgICAg
IDguMiAgICAgICAgIDYuNQ0KPiAgICAgICBuICAgICAgICAgMiAgICAgICAzMi4zICAgICAgMTEu
NyAgICAgICAgOC43DQo+ICAgICAgIHkgICAgICAgICAyICAgICAgIDMzLjEgICAgICAxMS43ICAg
ICAgICA4LjcNCj4gDQo+IE92ZXJhbGwsIHRoZSBuZWVkX3dha2V1cCBmbGFnIHByb3ZpZGVzIHRo
ZSBzYW1lIG9yIGJldHRlciBwZXJmb3JtYW5jZQ0KPiBpbiBhbGwgdGhlIG1pY3JvLWJlbmNobWFy
a3MuIFRoZSByZWR1Y3Rpb24gb2Ygc2VuZHRvKCkgY2FsbHMgaW4gdHhwdXNoDQo+IGlzIGxhcmdl
LiBPbmx5IGEgZmV3IHBlciBzZWNvbmQgaXMgbmVlZGVkLiBGb3IgbDJmd2QsIHRoZSBkcm9wIGlz
IDUwJQ0KPiBmb3IgdGhlIDEgY29yZSBjYXNlIGFuZCBtb3JlIHRoYW4gOTkuOSUgZm9yIHRoZSAy
IGNvcmUgY2FzZS4gRG8gbm90DQo+IGtub3cgd2h5IEkgYW0gbm90IHNlZWluZyB0aGUgc2FtZSBk
cm9wIGZvciB0aGUgMSBjb3JlIGNhc2UgeWV0Lg0KPiANCj4gVGhlIG5hbWUgYW5kIGluc3BpcmF0
aW9uIG9mIHRoZSBmbGFnIGhhcyBiZWVuIHRha2VuIGZyb20gaW9fdXJpbmcgYnkNCj4gSmVucyBB
eGJvZS4gRGV0YWlscyBhYm91dCB0aGlzIGZlYXR1cmUgaW4gaW9fdXJpbmcgY2FuIGJlIGZvdW5k
IGluDQo+IGh0dHA6Ly9rZXJuZWwuZGsvaW9fdXJpbmcucGRmLCBzZWN0aW9uIDguMy4gSXQgYWxz
byBhZGRyZXNzZXMgbW9zdCBvZg0KPiB0aGUgZGVuaWFsIG9mIHNlcnZpY2UgYW5kIHNlbmR0bygp
IGNvbmNlcm5zIHJhaXNlZCBieSBNYXhpbQ0KPiBNaWtpdHlhbnNraXkgaW4gaHR0cHM6Ly93d3cu
c3Bpbmljcy5uZXQvbGlzdHMvbmV0ZGV2L21zZzU1NDY1Ny5odG1sLg0KPiANCj4gVGhlIHR5cGlj
YWwgVHggcGFydCBvZiBhbiBhcHBsaWNhdGlvbiB3aWxsIGhhdmUgdG8gY2hhbmdlIGZyb206DQo+
IA0KPiByZXQgPSBzZW5kdG8oZmQsLi4uLikNCj4gDQo+IHRvOg0KPiANCj4gaWYgKHhza19yaW5n
X3Byb2RfX25lZWRzX3dha2V1cCgmeHNrLT50eCkpDQo+ICAgICAgICAgcmV0ID0gc2VuZHRvKGZk
LC4uLi4pDQo+IA0KPiBhbmQgdGggUnggcGFydCBmcm9tOg0KPiANCj4gcmN2ZCA9IHhza19yaW5n
X2NvbnNfX3BlZWsoJnhzay0+cngsIEJBVENIX1NJWkUsICZpZHhfcngpOw0KPiBpZiAoIXJjdmQp
DQo+ICAgICAgICAgcmV0dXJuOw0KPiANCj4gdG86DQo+IA0KPiByY3ZkID0geHNrX3JpbmdfY29u
c19fcGVlaygmeHNrLT5yeCwgQkFUQ0hfU0laRSwgJmlkeF9yeCk7DQo+IGlmICghcmN2ZCkgew0K
PiAgICAgICAgIGlmICh4c2tfcmluZ19wcm9kX19uZWVkc193YWtldXAoJnhzay0+dW1lbS0+ZnEp
KQ0KPiAgICAgICAgICAgICAgICByZXQgPSBwb2xsKGZkLC4uLi4uKTsNCj4gICAgICAgICByZXR1
cm47DQo+IH0NCj4gDQo+IFRoaXMgcGF0Y2ggaGFzIGJlZW4gYXBwbGllZCBhZ2FpbnN0IGNvbW1p
dCBhZWU0NTBjYmU0ODIgKCJicGY6IHNpbGVuY2Ugd2FybmluZyBtZXNzYWdlcyBpbiBjb3JlIikN
Cj4gDQo+IFN0cnVjdHVyZSBvZiB0aGUgcGF0Y2ggc2V0Og0KPiANCj4gUGF0Y2ggMTogUmVwbGFj
ZXMgdGhlIG5kb194c2tfYXN5bmNfeG1pdCB3aXRoIG5kb194c2tfd2FrZXVwIHRvDQo+ICAgICAg
ICAgICBzdXBwb3J0IHdha2luZyB1cCBib3RoIFJ4IGFuZCBUeCBwcm9jZXNzaW5nDQo+IFBhdGNo
IDI6IEltcGxlbWVudHMgdGhlIG5lZWRfd2FrZXVwIGZ1bmN0aW9uYWxpdHkgaW4gY29tbW9uIGNv
ZGUNCj4gUGF0Y2ggMy00OiBBZGQgbmVlZF93YWtldXAgc3VwcG9ydCB0byB0aGUgaTQwZSBhbmQg
aXhnYmUgZHJpdmVycw0KPiBQYXRjaCA1OiBBZGQgbmVlZF93YWtldXAgc3VwcG9ydCB0byBsaWJi
cGYNCj4gUGF0Y2ggNjogQWRkIG5lZWRfd2FrZXVwIHN1cHBvcnQgdG8gdGhlIHhkcHNvY2sgc2Ft
cGxlIGFwcGxpY2F0aW9uDQo+IA0KPiBUaGFua3M6IE1hZ251cw0KPiANCj4gTWFnbnVzIEthcmxz
c29uICg2KToNCj4gICAgeHNrOiByZXBsYWNlIG5kb194c2tfYXN5bmNfeG1pdCB3aXRoIG5kb194
c2tfd2FrZXVwDQo+ICAgIHhzazogYWRkIHN1cHBvcnQgZm9yIG5lZWRfd2FrZXVwIGZsYWcgaW4g
QUZfWERQIHJpbmdzDQo+ICAgIGk0MGU6IGFkZCBzdXBwb3J0IGZvciBBRl9YRFAgbmVlZF93YWt1
cCBmZWF0dXJlDQo+ICAgIGl4Z2JlOiBhZGQgc3VwcG9ydCBmb3IgQUZfWERQIG5lZWRfd2FrdXAg
ZmVhdHVyZQ0KPiAgICBsaWJicGY6IGFkZCBzdXBwb3J0IGZvciBuZWVkX3dha2V1cCBmbGFnIGlu
IEFGX1hEUCBwYXJ0DQo+ICAgIHNhbXBsZXMvYnBmOiBhZGQgdXNlIG9mIG5lZWRfc2xlZXAgZmxh
ZyBpbiB4ZHBzb2NrDQo+IA0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMgICAgICAgIHwgICA1ICstDQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3hzay5jICAgICAgICAgfCAgMjMgKystDQo+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5oICAgICAgICAgfCAgIDIgKy0NCj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgICAgICB8ICAgNSArLQ0KPiAgIC4u
Li9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHhyeF9jb21tb24uaCAgIHwgICAyICst
DQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgICAgICAg
fCAgMjAgKystDQo+ICAgaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaCAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgMTggKy0NCj4gICBpbmNsdWRlL25ldC94ZHBfc29jay5oICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAzMyArKystDQo+ICAgaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hk
cC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTMgKysNCj4gICBuZXQveGRwL3hkcF91bWVt
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNiArLQ0KPiAgIG5ldC94ZHAv
eHNrLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDkzICsrKysrKysr
Ky0NCj4gICBuZXQveGRwL3hza19xdWV1ZS5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMSArDQo+ICAgc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAxOTEgKysrKysrKysrKysrKy0tLS0tLS0tDQo+ICAgdG9vbHMvaW5jbHVkZS91
YXBpL2xpbnV4L2lmX3hkcC5oICAgICAgICAgICAgICAgICAgfCAgMTMgKysNCj4gICB0b29scy9s
aWIvYnBmL3hzay5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNCArDQo+ICAg
dG9vbHMvbGliL2JwZi94c2suaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDYg
Kw0KPiAgIDE2IGZpbGVzIGNoYW5nZWQsIDM0MyBpbnNlcnRpb25zKCspLCA5MiBkZWxldGlvbnMo
LSkNCj4gDQo+IC0tDQo+IDIuNy40DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
