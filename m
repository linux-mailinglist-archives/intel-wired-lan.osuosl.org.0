Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EFC11ED43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2019 22:55:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B68858886F;
	Fri, 13 Dec 2019 21:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HMsj+ix+PcA; Fri, 13 Dec 2019 21:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BCA18886C;
	Fri, 13 Dec 2019 21:55:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA7EB1BF348
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 17:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A7C40889A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 17:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlB9OQhUTcKA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2019 17:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr10062.outbound.protection.outlook.com [40.107.1.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8112788933
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 17:25:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITnQDfqaWwJmtKC+XWFJU3a/mmsJAGhcRkjpYoLrpgaI09REFGGmcrxlbxk+DnuiFHkNesQV3JgLy+mCi4pAmW1SlG/WEexfoyN4b/sdWSsJtNnEELZxIcOqBVXrgOpnMSvy8tNtaudCpQUgZPfauxivuaFEEV6B94vQhzvyFSL2LvtbDqr6m8ADSLbjmOqE3XclWUG9zEs7NlCqG/DwDxqO+0HN1EUKnkaptUkb8VMLl5LeOjvMVVFOOPhNdYs63w5JLnkw2uiL2uJv4gNFK0N7xYT8xDolfkq0GglvG3Rq/JZGCCbF1dQjcu06T4IX9UuypLJErWk+yv4Cqr12JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xQDhG0SJdeE7NfAog1c+1ZQkn3mKCRuRptMQIlbK57A=;
 b=Y1RcYMSyDD3T/Yg6Y2L97TO+qXg9SmXEoeG1z3yfpajTvN2mZwYdL2fGJFXxLylYxyjuqTNYkHdvdIijEPdLfYzEr7CA3pA4kh00RgsomhP6FPSmi22webaMICd3KzOSIrloEwsIMGbnq+87dIUeYawK0yBVvIHijDFa5w6kQUrG6szkrN1E8gPni2QnxO2omPKP7MphHesn6b/IrghHSQy5zwwSmoiTqKSBDRp3m5z7V3NKFGiLW4lbXxShvslOMztluLb6SOQDkMKAB3VVkaUgTHoJt204HBY97P28Qy/l4rAqQqBP8uRq1gAh8j3JRauH3OTciauzyPe/TMaMBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xQDhG0SJdeE7NfAog1c+1ZQkn3mKCRuRptMQIlbK57A=;
 b=QP2f2Lpa/4JNLoltj7jpuICUOy8Km5GKjmNQ29j3nS6V3ovvrXi6zDf8nCdzUFEUkLCEN11OIA1OCgbOGr2eROaZdp+sg/7/tzzyd8IVQ2nywoCOxkuHQTqCPoEfo1NoalhZwvDdpQr0qAvS/CPBi4eXGggO96VaXAzVDMvJO+U=
Received: from DB8PR05MB5881.eurprd05.prod.outlook.com (20.179.10.21) by
 DB8PR05MB6668.eurprd05.prod.outlook.com (10.186.165.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Fri, 13 Dec 2019 17:10:09 +0000
Received: from DB8PR05MB5881.eurprd05.prod.outlook.com
 ([fe80::1124:46fe:725e:458c]) by DB8PR05MB5881.eurprd05.prod.outlook.com
 ([fe80::1124:46fe:725e:458c%4]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 17:10:09 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Thread-Topic: [PATCH bpf 3/4] net/i40e: Fix concurrency issues between config
 flow and XSK
Thread-Index: AQHVq4PTP1CGOF24FEqoAXqjM71N8Kes0OoAgAbFRACAASjDgIADmksA
Date: Fri, 13 Dec 2019 17:10:08 +0000
Message-ID: <85dd0047-a033-e349-077c-395da14fe82b@mellanox.com>
References: <20191205155028.28854-1-maximmi@mellanox.com>
 <20191205155028.28854-4-maximmi@mellanox.com>
 <CAJ+HfNiXPo_Qkja=tCakX6a=swVY_KRMXmT79wQuQa_+kORQ=g@mail.gmail.com>
 <121c3135-3b52-1d64-c1e0-26de38687b4f@mellanox.com>
 <8e8a8cc2-9347-df33-0e98-1594b6d0171d@intel.com>
In-Reply-To: <8e8a8cc2-9347-df33-0e98-1594b6d0171d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR02CA0015.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::28) To DB8PR05MB5881.eurprd05.prod.outlook.com
 (2603:10a6:10:a8::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 727b3ee4-ef10-4a07-cf9b-08d77fef4e58
x-ms-traffictypediagnostic: DB8PR05MB6668:|DB8PR05MB6668:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR05MB6668AF7A78BF0FA70CE276BBD1540@DB8PR05MB6668.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(366004)(396003)(346002)(43544003)(199004)(189003)(51914003)(6512007)(66476007)(55236004)(66446008)(110136005)(6486002)(4001150100001)(8936002)(81166006)(81156014)(478600001)(26005)(316002)(66556008)(66946007)(8676002)(2906002)(64756008)(7416002)(186003)(31686004)(5660300002)(66574012)(2616005)(86362001)(30864003)(31696002)(71200400001)(54906003)(53546011)(36756003)(6506007)(4326008)(52116002)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR05MB6668;
 H:DB8PR05MB5881.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mUzEG5gXbBTx6Oo87xQvWTcA48qXmOMO0YafbMNtmWsznGblKnPKV82/R34CL0DLiQYHD7XVjZFPL9OD8Pj6Bn0NhE5/U/hfMVaA9EtBS1Rd/IuJQ4KAYPc5hXKUWTs6RC5Usn7+X/LauZV5G8H8kp354Dn6F2W6ujILY2KwHJg3F1q012jdiGNVCldpDZhv/9EmsYPWTTuMFID//F1sU/EfV5KeoXufTAMpWSXcQE3bmU8vBKPNktFQ26bCOKIDe9cnKyD7BLUdH9CN8PiKrAHFIs6icX8VbzdP1FZdlUQ3GVR3FcKKgCHNzZMvhSQuC3MulAQjmOQv34QuW0YfNkVTBKJO2aItClumXTDhs71awjiRzzcSzL5MHVucszhnN+wTSelpiv57aNK+/63VDbrdpR54zWwuwRMLVXMg2GwqmFkXC22z0K86OQLXVzzEvYGOWT5Fge0oEweGLQZtnIMu9D7eFHAa4Aq8cLik9QPBQ05t/MtBURDb113qZJv2F1nltIwlCH8M9lMJqnbLeIpCf1oXbi5ENq1U9Sasb9M=
Content-ID: <0804D4492259B14D85FAFDCBEC07F6F4@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 727b3ee4-ef10-4a07-cf9b-08d77fef4e58
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 17:10:08.8336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D29lXLO1tCtWMz8CevEbCYz+0OHYzovmT3MxlHAcAghNUfDOf0grxCzHlafOX/hylL9Gbf+078wEDKWnAb3Q0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR05MB6668
X-Mailman-Approved-At: Fri, 13 Dec 2019 21:55:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf 3/4] net/i40e: Fix concurrency
 issues between config flow and XSK
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Maxim Mikityanskiy <maxtram95@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "David
 S. Miller" <davem@davemloft.net>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0xMi0xMSAxMjowOCwgQmrDtnJuIFTDtnBlbCB3cm90ZToNCj4gT24gMjAxOS0xMi0x
MCAxNToyNiwgTWF4aW0gTWlraXR5YW5za2l5IHdyb3RlOg0KPj4gT24gMjAxOS0xMi0wNiAxMTow
MywgQmrDtnJuIFTDtnBlbCB3cm90ZToNCj4+PiBPbiBUaHUsIDUgRGVjIDIwMTkgYXQgMTY6NTIs
IE1heGltIE1pa2l0eWFuc2tpeSANCj4+PiA8bWF4aW1taUBtZWxsYW5veC5jb20+IHdyb3RlOg0K
Pj4+Pg0KPj4+PiBVc2Ugc3luY2hyb25pemVfcmN1IHRvIHdhaXQgdW50aWwgdGhlIFhTSyB3YWtl
dXAgZnVuY3Rpb24gZmluaXNoZXMNCj4+Pj4gYmVmb3JlIGRlc3Ryb3lpbmcgdGhlIHJlc291cmNl
cyBpdCB1c2VzOg0KPj4+Pg0KPj4+PiAxLiBpNDBlX2Rvd24gYWxyZWFkeSBjYWxscyBzeW5jaHJv
bml6ZV9yY3UuIE9uIGk0MGVfZG93biBlaXRoZXINCj4+Pj4gX19JNDBFX1ZTSV9ET1dOIG9yIF9f
STQwRV9DT05GSUdfQlVTWSBpcyBzZXQuIENoZWNrIHRoZSBsYXR0ZXIgaW4NCj4+Pj4gaTQwZV94
c2tfYXN5bmNfeG1pdCAodGhlIGZvcm1lciBpcyBhbHJlYWR5IGNoZWNrZWQgdGhlcmUpLg0KPj4+
Pg0KPj4+PiAyLiBBZnRlciBzd2l0Y2hpbmcgdGhlIFhEUCBwcm9ncmFtLCBjYWxsIHN5bmNocm9u
aXplX3JjdSB0byBsZXQNCj4+Pj4gaTQwZV94c2tfYXN5bmNfeG1pdCBleGl0IGJlZm9yZSB0aGUg
WERQIHByb2dyYW0gaXMgZnJlZWQuDQo+Pj4+DQo+Pj4+IDMuIENoYW5naW5nIHRoZSBudW1iZXIg
b2YgY2hhbm5lbHMgYnJpbmdzIHRoZSBpbnRlcmZhY2UgZG93biAoc2VlDQo+Pj4+IGk0MGVfcHJl
cF9mb3JfcmVzZXQgYW5kIGk0MGVfcGZfcXVpZXNjZV9hbGxfdnNpKS4NCj4+Pj4NCj4+Pj4gNC4g
RGlzYWJsaW5nIFVNRU0gc2V0cyBfX0k0MEVfQ09ORklHX0JVU1ksIHRvby4NCj4+Pj4NCj4+Pj4g
U2lnbmVkLW9mZi1ieTogTWF4aW0gTWlraXR5YW5za2l5IDxtYXhpbW1pQG1lbGxhbm94LmNvbT4N
Cj4+Pj4gLS0tDQo+Pj4+IMKgwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X21haW4uYyB8IDcgKysrKystLQ0KPj4+PiDCoMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV94c2suY8KgIHwgNCArKysrDQo+Pj4+IMKgwqAgMiBmaWxlcyBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIA0KPj4+PiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4+Pj4gaW5kZXggMWNjYWJl
YWZhNDRjLi5hZmEzYTk5ZTY4ZTEgMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPj4+PiBAQCAtNjgyMyw4ICs2ODIzLDggQEAgdm9p
ZCBpNDBlX2Rvd24oc3RydWN0IGk0MGVfdnNpICp2c2kpDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBmb3IgKGkgPSAwOyBpIDwgdnNpLT5udW1fcXVldWVfcGFpcnM7IGkrKykgew0KPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGk0MGVfY2xlYW5fdHhfcmluZyh2c2ktPnR4
X3JpbmdzW2ldKTsNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
aTQwZV9lbmFibGVkX3hkcF92c2kodnNpKSkgew0KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogTWFrZSBzdXJlIHRoYXQgaW4tcHJvZ3Jlc3MgbmRv
X3hkcF94bWl0DQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogY2FsbHMgYXJlIGNvbXBsZXRlZC4NCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE1ha2Ugc3VyZSB0aGF0IGluLXByb2dyZXNzIG5k
b194ZHBfeG1pdCBhbmQNCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKiBuZG9feHNrX2FzeW5jX3htaXQgY2FsbHMgYXJlIGNvbXBsZXRlZC4NCj4+
DQo+PiBPb29wcywgSSBzZWUgbm93IHNvbWUgY2hhbmdlcyB3ZXJlIGxvc3QgZHVyaW5nIHJlYmFz
aW5nLiBJIGhhZCBhIHZlcnNpb24NCj4+IG9mIHRoaXMgc2VyaWVzIHdpdGggbmRvX3hza19hc3lu
Y194bWl0IC0+IG5kb194c2tfd2FrZXVwIGZpeGVkLg0KPj4NCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzeW5jaHJvbml6ZV9yY3Uo
KTsNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaTQwZV9jbGVhbl90eF9yaW5nKHZzaS0+eGRwX3JpbmdzW2ldKTsNCj4+Pj4gQEAgLTEyNTQ1
LDYgKzEyNTQ1LDkgQEAgc3RhdGljIGludCBpNDBlX3hkcF9zZXR1cChzdHJ1Y3QgaTQwZV92c2kg
KnZzaSwNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpNDBlX3ByZXBf
Zm9yX3Jlc2V0KHBmLCB0cnVlKTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIG9sZF9w
cm9nID0geGNoZygmdnNpLT54ZHBfcHJvZywgcHJvZyk7DQo+Pj4+ICvCoMKgwqDCoMKgwqAgaWYg
KG9sZF9wcm9nKQ0KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBXYWl0IHVu
dGlsIG5kb194c2tfYXN5bmNfeG1pdCBjb21wbGV0ZXMuICovDQo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN5bmNocm9uaXplX3JjdSgpOw0KPj4+DQo+Pj4gVGhpcyBpcyBub3Qg
bmVlZGVkIC0tIHBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbSBtaXNzaW5nIHNvbWV0aGluZyEgSWYN
Cj4+PiB3ZSdyZSBkaXNhYmxpbmcgWERQLCB0aGUgbmVlZF9yZXNldC1jbGF1c2Ugd2lsbCB0YWtl
IGNhcmUgb3IgdGhlDQo+Pj4gcHJvcGVyIHN5bmNocm9uaXphdGlvbi4NCj4+DQo+PiBZZXMsIGl0
IHdhcyBhZGRlZCB0byBjb3ZlciB0aGUgY2FzZSBvZiBkaXNhYmxpbmcgWERQLiBJJ20gbm90IHN1
cmUgaG93DQo+PiBpNDBlX3Jlc2V0X2FuZF9yZWJ1aWxkIHdpbGwgaGVscCBoZXJlLiBXaGF0IEkg
d2FudGVkIHRvIGFjaGlldmUgaXMgdG8NCj4+IHdhaXQgdW50aWwgYWxsIGk0MGVfeHNrX3dha2V1
cHMgZmluaXNoIGFmdGVyIHNldHRpbmcgdnNpLT54ZHBfcHJvZyA9DQo+PiBOVUxMIGFuZCBiZWZv
cmUgZG9pbmcgYW55dGhpbmcgZWxzZS4gSSBkb24ndCBzZWUgaG93DQo+PiBpNDBlX3Jlc2V0X2Fu
ZF9yZWJ1aWxkIGhlbHBzIGhlcmUsIGJ1dCBJJ20gbm90IHZlcnkgZmFtaWxpYXIgd2l0aCBpNDBl
DQo+PiBjb2RlLiBDb3VsZCB5b3UgZ3VpZGUgbWUgdGhyb3VnaCB0aGUgY29kZSBvZiBpNDBlX3Jl
c2V0X2FuZF9yZWJ1aWxkIGFuZA0KPj4gc2hvdyBob3cgaXQgdGFrZXMgY2FyZSBvZiB0aGUgc3lu
Y2hyb25pemF0aW9uPw0KPj4NCj4+PiBBbmQgd2UgZG9uJ3QgbmVlZCB0byB3b3JyeSBhYm91dCBv
bGRfcHJvZyBmb3INCj4+PiB0aGUgc3dhcC1YRFAgY2FzZSwNCj4+DQo+PiBSaWdodC4NCj4+DQo+
Pj4gYmVjYXVzZSBicGZfcHJvZ19wdXQoKSBkb2VzIGNsZWFudXAgd2l0aA0KPj4+IGNhbGxfcmN1
KCkuDQo+Pg0KPj4gQnV0IGlmIGk0MGVfeHNrX3dha2V1cCBpcyBub3Qgd3JhcHBlZCB3aXRoIHJj
dV9yZWFkX2xvY2ssIGl0IHdvbid0IHN5bmMNCj4+IHdpdGggaXQuDQo+Pg0KPj4+DQo+Pj4+DQo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAobmVlZF9yZXNldCkNCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpNDBlX3Jlc2V0X2FuZF9yZWJ1aWxkKHBmLCB0cnVlLCB0
cnVlKTsNCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV94c2suYyANCj4+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmMNCj4+Pj4gaW5kZXggZDA3ZTFhODkwNDI4Li5mNzNjZDkxN2M0NGYgMTAwNjQ0DQo+Pj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYw0KPj4+PiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMNCj4+Pj4gQEAg
LTc4Nyw4ICs3ODcsMTIgQEAgaW50IGk0MGVfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2RldmljZSAq
ZGV2LCB1MzIgDQo+Pj4+IHF1ZXVlX2lkLCB1MzIgZmxhZ3MpDQo+Pj4+IMKgwqAgew0KPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGk0MGVfbmV0ZGV2X3ByaXYgKm5wID0gbmV0ZGV2X3By
aXYoZGV2KTsNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpNDBlX3ZzaSAqdnNpID0g
bnAtPnZzaTsNCj4+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgaTQwZV9wZiAqcGYgPSB2c2ktPmJh
Y2s7DQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaTQwZV9yaW5nICpyaW5nOw0KPj4+
Pg0KPj4+PiArwqDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChfX0k0MEVfQ09ORklHX0JVU1ksIHBm
LT5zdGF0ZSkpDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5F
VERPV047DQo+Pj4+ICsNCj4+Pg0KPj4+IFlvdSByaWdodCB0aGF0IHdlIG5lZWQgdG8gY2hlY2sg
Zm9yIEJVU1ksIHNpbmNlIHRoZSBYRFAgcmluZyBtaWdodCBiZQ0KPj4+IHN0YWxlISBUaGFua3Mg
Zm9yIGNhdGNoaW5nIHRoaXMhIENhbiB5b3UgcmVzcGluIHRoaXMgcGF0Y2gsIHdpdGgganVzdA0K
Pj4+IHRoaXMgaHVuaz8gKFVubGVzcyBJJ20gd3JvbmchIDotKSkNCj4+DQo+PiBUaGlzIGNoZWNr
IGl0c2VsZiB3aWxsIG5vdCBiZSBlbm91Z2gsIHVubGVzcyB5b3Ugd3JhcCBpNDBlX3hza193YWtl
dXANCj4+IHdpdGggcmN1X3JlYWRfbG9jay4NCj4+DQo+PiBpNDBlX3hza193YWtldXAgZG9lcyBz
b21lIGNoZWNrcyBpbiB0aGUgYmVnaW5uaW5nLCB0aGVuIHRoZSBtYWluIHBhcnQgb2YNCj4+IHRo
ZSBjb2RlIGdvZXMuIE15IGFzc3VtcHRpb24gaXMgdGhhdCBpZiB0aGUgY2hlY2tzIGRvbid0IHBh
c3MsIHRoZSBtYWluDQo+PiBwYXJ0IHdpbGwgZmFpbCBpbiBzb21lIHdheSAoZS5nLiwgTlVMTCBv
ciBkYW5nbGluZyBwb2ludGVyIHdoZW4NCj4+IGFjY2Vzc2luZyB0aGUgcmluZyksIG90aGVyd2lz
ZSB5b3Ugd291bGRuJ3QgbmVlZCB0aG9zZSBjaGVja3MgYXQgYWxsLg0KPj4gV2l0aG91dCBSQ1Us
IGV2ZW4gaWYgeW91IGRvIHRoZXNlIGNoZWNrcywgaXQgbWF5IHN0aWxsIGZhaWwgaW4gdGhlDQo+
PiBmb2xsb3dpbmcgc2NlbmFyaW86DQo+Pg0KPj4gMS4gaTQwZV94c2tfd2FrZXVwIHN0YXJ0cyBy
dW5uaW5nLCBjaGVja3MgdGhlIGZsYWcsIHRoZSBmbGFnIGlzIHNldCwgdGhlDQo+PiBmdW5jdGlv
biBnb2VzIG9uLg0KPj4NCj4+IDIuIFRoZSBmbGFnIGdldHMgY2xlYXJlZC4NCj4+DQo+PiAzLiBU
aGUgcmVzb3VyY2VzIGFyZSBkZXN0cm95ZWQuDQo+Pg0KPj4gNC4gaTQwZV94c2tfd2FrZXVwIHRy
aWVzIHRvIGFjY2VzcyB0aGUgcmVzb3VyY2VzIHRoYXQgd2VyZSBkZXN0cm95ZWQuDQo+Pg0KPj4g
SSBkb24ndCBzZWUgYW55dGhpbmcgaW4gaTQwZSBhbmQgaXhnYmUgdGhhdCBjdXJyZW50bHkgcHJv
dGVjdHMgZnJvbSBzdWNoDQo+PiBhIHJhY2UgY29uZGl0aW9uLiBJZiBJJ20gbWlzc2luZyBhbnl0
aGluZywgcGxlYXNlIHBvaW50IG1lIHRvIGl0LA0KPj4gb3RoZXJ3aXNlIGk0MGVfeHNrX3dha2V1
cCByZWFsbHkgbmVlZHMgdG8gYmUgd3JhcHBlZCBpbnRvIHJjdV9yZWFkX2xvY2suDQo+PiBJIHdv
dWxkIHByZWZlciB0byBoYXZlIHJjdV9yZWFkX2xvY2sgaW4gdGhlIGtlcm5lbCwgc28gdGhhdCBh
bGwgZHJpdmVycw0KPj4gY291bGQgYmVuZWZpdCBmcm9tIGl0LCBiZWNhdXNlIEkgdGhpbmsgaXQn
cyB0aGUgc2FtZSBpc3N1ZSBpbiBhbGwNCj4+IGRyaXZlcnMsIGJ1dCBJJ20gZmluZSB3aXRoIG1v
dmluZyBpdCB0byB0aGUgZHJpdmVycyBpZiB0aGVyZSBpcyBhIHJlYXNvbg0KPj4gd2h5IHNvbWUg
ZHJpdmVycyBtYXkgbm90IG5lZWQgaXQuDQo+Pg0KPj4gVGhhbmtzIGZvciB0YWtpbmcgYSBsb29r
LiBMZXQncyBzZXR0bGUgdGhlIGNhc2Ugd2l0aCBJbnRlbCdzIGRyaXZlcnMsIHNvDQo+PiB0aGF0
IEkgd2lsbCBrbm93IHdoYXQgZml4ZXMgdG8gaW5jbHVkZSBpbnRvIHRoZSByZXNwaW4uDQo+Pg0K
PiANCj4gTWF4LCB5b3UncmUgcmlnaHQuIEl0J3Mgbm90IGNvcnJlY3Qgd2l0aG91dCBSQ1UgbG9j
a2luZy4gVGhhbmtzIGZvciB0aGUNCj4gcGF0aWVuY2UuDQo+IA0KPiBGb3IgdGhlIEludGVsIG5k
b194c2tfd2FrZXVwIGltcGxlbWVudGF0aW9uIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgDQo+
IHRoZSAxLiB1bWVtKHNvY2tldCkgZXhpc3RzLCBhbmQgdGhhdCB0aGUgMi4gWERQIHJpbmdzIGV4
aXN0cyBmb3IgdGhlIA0KPiBkdXJhdGlvbiBvZiB0aGUgY2FsbC4NCj4gDQo+IDEuIEluIHhza191
bmJpbmRfZGV2KCkgdGhlIHN0YXRlIGlzIGNoYW5nZWQgdG8gVU5CT1VORCBhbmQgdGhlbg0KPiAg
wqDCoCBmb2xsb3dlZCBieSBzeW5jaHJvbml6ZV9uZXQoKS4gSXQgd291bGQgYmUsIGFzIHlvdSB3
cm90ZSwgaW5jb3JyZWN0DQo+ICDCoMKgIHdpdGhvdXQgUkNVIGxvY2tpbmcgdGhlIG5kb194c2tf
d2FrZXVwKCkgcmVnaW9uLg0KPiANCj4gMi4gVG8gZW5zdXJlIHRoYXQgdGhlIFhEUCByaW5ncyBh
cmUgaW50YWN0IGZvciB0aGUgZHVyYXRpb24gb2YgdGhlDQo+ICDCoMKgIG5kb194c2tfd2FrZXVw
KCksIGEgc3luY2hyb25pemVfcmN1KCkgaXMgcmVxdWlyZWQgd2hlbiB0aGUgWERQDQo+ICDCoMKg
IHByb2dyYW0gaXMgc3dhcHBlZCBvdXQgKHByb2ctPk5VTEwpLg0KPiANCj4gQWdhaW4sIGJvdGgg
MSBhbmQgMiByZXF1aXJlcyBSQ1UgbG9ja2luZy4NCj4gDQo+IFdoYXQgZG8geW91IHRoaW5rIGFi
b3V0IHRoZSB0aGlzIHBhdGNoIGZvciB4c2suYyAoYW5kIHRoZSBJbnRlbCANCj4gZHJpdmVycyk/
IEl0IG1vdmVzIGFsbCBuZG9feHNrX3dha2V1cCBjYWxscyBkbyBvbmUgcGxhY2UuDQoNCkxvb2tz
IGdvb2QsIHBsZWFzZSBhbHNvIHNlZSBhIGZldyBjb21tZW50cyBiZWxvdy4NCg0KQ2hlY2tpbmcg
dGhlIF9fSTQwRV9DT05GSUdfQlVTWSBhbmQgX19JWEdCRV9UWF9ESVNBQkxFRCBmbGFncyBpbiB0
aGUgDQp3YWtldXAgZnVuY3Rpb25zIGlzIHN0aWxsIHJlcXVpcmVkLCBJIGJlbGlldmUuIFlvdSBk
aWRuJ3QgaW5jbHVkZSB0aGVzZSANCnBhcnRzIGludG8geW91ciBwYXRjaCwgSSBqdXN0IHdhbnQg
dG8gbWFrZSBzdXJlIHlvdSBkb24ndCBzdWdnZXN0IHRvIA0KZHJvcCB0aGVzZSBwYXJ0cyBvZiBt
eSBwYXRjaGVzLg0KDQpIb3cgd291bGQgeW91IGxpa2UgdG8gcHJvY2VlZCB3aXRoIGl0PyBEbyB5
b3Ugd2FudCBtZSB0byBpbnRlZ3JhdGUgeW91ciANCmNoYW5nZXMgaW50byBteSBwYXRjaGVzIGFu
ZCByZXNwaW4gd2l0aCBib3RoIG15IGFuZCB5b3VyIHNpZ24tb2Zmcz8NCg0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oIA0KPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+IGluZGV4IGNiNjM2NzMzNGNhNy4u
NDgzMzE4N2JkMjU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGUuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUu
aA0KPiBAQCAtMTE1Miw3ICsxMTUyLDcgQEAgdm9pZCBpNDBlX3NldF9mZWNfaW5fZmxhZ3ModTgg
ZmVjX2NmZywgdTMyICpmbGFncyk7DQo+IA0KPiAgwqBzdGF0aWMgaW5saW5lIGJvb2wgaTQwZV9l
bmFibGVkX3hkcF92c2koc3RydWN0IGk0MGVfdnNpICp2c2kpDQo+ICDCoHsNCj4gLcKgwqDCoCBy
ZXR1cm4gISF2c2ktPnhkcF9wcm9nOw0KPiArwqDCoMKgIHJldHVybiAhIVJFQURfT05DRSh2c2kt
PnhkcF9wcm9nKTsNCj4gIMKgfQ0KPiANCj4gIMKgaW50IGk0MGVfY3JlYXRlX3F1ZXVlX2NoYW5u
ZWwoc3RydWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCANCj4gaTQwZV9jaGFubmVsICpjaCk7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5j
IA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gaW5k
ZXggMWNjYWJlYWZhNDRjLi5mZDA4NGYwM2YwMGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiBAQCAtMTI1NDYsOCArMTI1NDYsMTEgQEAg
c3RhdGljIGludCBpNDBlX3hkcF9zZXR1cChzdHJ1Y3QgaTQwZV92c2kgKnZzaSwNCj4gDQo+ICDC
oMKgwqDCoCBvbGRfcHJvZyA9IHhjaGcoJnZzaS0+eGRwX3Byb2csIHByb2cpOw0KPiANCj4gLcKg
wqDCoCBpZiAobmVlZF9yZXNldCkNCj4gK8KgwqDCoCBpZiAobmVlZF9yZXNldCkgew0KPiArwqDC
oMKgwqDCoMKgwqAgaWYgKCFwcm9nKQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzeW5jaHJv
bml6ZV9yY3UoKTsNCj4gIMKgwqDCoMKgwqDCoMKgwqAgaTQwZV9yZXNldF9hbmRfcmVidWlsZChw
ZiwgdHJ1ZSwgdHJ1ZSk7DQo+ICvCoMKgwqAgfQ0KPiANCj4gIMKgwqDCoMKgIGZvciAoaSA9IDA7
IGkgPCB2c2ktPm51bV9xdWV1ZV9wYWlyczsgaSsrKQ0KPiAgwqDCoMKgwqDCoMKgwqDCoCBXUklU
RV9PTkNFKHZzaS0+cnhfcmluZ3NbaV0tPnhkcF9wcm9nLCB2c2ktPnhkcF9wcm9nKTsNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyAN
Cj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMNCj4gaW5k
ZXggMjVjMDk3Y2Q4MTAwLi5hZGZmMmNiY2RlMWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMNCj4gQEAgLTEwMjYxLDcgKzEwMjYxLDEx
IEBAIHN0YXRpYyBpbnQgaXhnYmVfeGRwX3NldHVwKHN0cnVjdCBuZXRfZGV2aWNlIA0KPiAqZGV2
LCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cpDQo+IA0KPiAgwqDCoMKgwqAgLyogSWYgdHJhbnNpdGlv
bmluZyBYRFAgbW9kZXMgcmVjb25maWd1cmUgcmluZ3MgKi8NCj4gIMKgwqDCoMKgIGlmIChuZWVk
X3Jlc2V0KSB7DQo+IC3CoMKgwqDCoMKgwqDCoCBpbnQgZXJyID0gaXhnYmVfc2V0dXBfdGMoZGV2
LCBhZGFwdGVyLT5od190Y3MpOw0KPiArwqDCoMKgwqDCoMKgwqAgaW50IGVycjsNCj4gKw0KPiAr
wqDCoMKgwqDCoMKgwqAgaWYgKCFwcm9nKQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzeW5j
aHJvbml6ZV9yY3UoKTsNCj4gK8KgwqDCoMKgwqDCoMKgIGVyciA9IGl4Z2JlX3NldHVwX3RjKGRl
diwgYWRhcHRlci0+aHdfdGNzKTsNCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgIGlmIChlcnIpIHsN
Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByY3VfYXNzaWduX3BvaW50ZXIoYWRhcHRlci0+
eGRwX3Byb2csIG9sZF9wcm9nKTsNCj4gZGlmZiAtLWdpdCBhL25ldC94ZHAveHNrLmMgYi9uZXQv
eGRwL3hzay5jDQo+IGluZGV4IDk1Njc5Mzg5M2M5ZC4uZGJmMDZjM2I3MDYxIDEwMDY0NA0KPiAt
LS0gYS9uZXQveGRwL3hzay5jDQo+ICsrKyBiL25ldC94ZHAveHNrLmMNCj4gQEAgLTMzNCwxMiAr
MzM0LDIwIEBAIGJvb2wgeHNrX3VtZW1fY29uc3VtZV90eChzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0s
IA0KPiBzdHJ1Y3QgeGRwX2Rlc2MgKmRlc2MpDQo+ICDCoH0NCj4gIMKgRVhQT1JUX1NZTUJPTCh4
c2tfdW1lbV9jb25zdW1lX3R4KTsNCj4gDQo+IC1zdGF0aWMgaW50IHhza196Y194bWl0KHN0cnVj
dCB4ZHBfc29jayAqeHMpDQo+ICtzdGF0aWMgaW50IHhza193YWtldXAoc3RydWN0IHhkcF9zb2Nr
ICp4cywgdTggZmxhZ3MpDQo+ICDCoHsNCj4gIMKgwqDCoMKgIHN0cnVjdCBuZXRfZGV2aWNlICpk
ZXYgPSB4cy0+ZGV2Ow0KPiArwqDCoMKgIGludCBlcnI7DQo+IA0KPiAtwqDCoMKgIHJldHVybiBk
ZXYtPm5ldGRldl9vcHMtPm5kb194c2tfd2FrZXVwKGRldiwgeHMtPnF1ZXVlX2lkLA0KPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBYRFBfV0FL
RVVQX1RYKTsNCj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7DQo+ICvCoMKgwqAgZXJyID0gZGV2
LT5uZXRkZXZfb3BzLT5uZG9feHNrX3dha2V1cChkZXYsIHhzLT5xdWV1ZV9pZCwgZmxhZ3MpOw0K
PiArwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOw0KPiArwqDCoMKgIHJldHVybiBlcnI7DQo+ICt9
DQo+ICsNCj4gK3N0YXRpYyBpbnQgeHNrX3pjX3htaXQoc3RydWN0IHhkcF9zb2NrICp4cykNCj4g
K3sNCj4gK8KgwqDCoCByZXR1cm4geHNrX3dha2V1cCh4cywgWERQX1dBS0VVUF9UWCk7DQo+ICDC
oH0NCj4gDQo+ICDCoHN0YXRpYyB2b2lkIHhza19kZXN0cnVjdF9za2Ioc3RydWN0IHNrX2J1ZmYg
KnNrYikNCj4gQEAgLTQ1MywxOSArNDYxLDE2IEBAIHN0YXRpYyBfX3BvbGxfdCB4c2tfcG9sbChz
dHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IA0KPiBzb2NrZXQgKnNvY2ssDQo+ICDCoMKgwqDCoCBf
X3BvbGxfdCBtYXNrID0gZGF0YWdyYW1fcG9sbChmaWxlLCBzb2NrLCB3YWl0KTsNCj4gIMKgwqDC
oMKgIHN0cnVjdCBzb2NrICpzayA9IHNvY2stPnNrOw0KPiAgwqDCoMKgwqAgc3RydWN0IHhkcF9z
b2NrICp4cyA9IHhkcF9zayhzayk7DQo+IC3CoMKgwqAgc3RydWN0IG5ldF9kZXZpY2UgKmRldjsN
Cj4gIMKgwqDCoMKgIHN0cnVjdCB4ZHBfdW1lbSAqdW1lbTsNCj4gDQo+ICDCoMKgwqDCoCBpZiAo
dW5saWtlbHkoIXhza19pc19ib3VuZCh4cykpKQ0KPiAgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
bWFzazsNCj4gDQo+IC3CoMKgwqAgZGV2ID0geHMtPmRldjsNCj4gIMKgwqDCoMKgIHVtZW0gPSB4
cy0+dW1lbTsNCj4gDQo+ICDCoMKgwqDCoCBpZiAodW1lbS0+bmVlZF93YWtldXApIHsNCj4gLcKg
wqDCoMKgwqDCoMKgIGlmIChkZXYtPm5ldGRldl9vcHMtPm5kb194c2tfd2FrZXVwKQ0KPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkZXYtPm5ldGRldl9vcHMtPm5kb194c2tfd2FrZXVwKGRldiwg
eHMtPnF1ZXVlX2lkLA0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHVtZW0tPm5lZWRfd2FrZXVwKTsNCj4gK8KgwqDCoMKgwqDCoMKgIGlm
ICh4cy0+emMpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHhza193YWtldXAodW1lbS0+bmVl
ZF93YWtldXApOw0KDQpUaGFua3MgZm9yIHNwb3R0aW5nIHRoaXMuIEkgbWlzc2VkIHRoZSBzZWNv
bmQgcGxhY2Ugd2hlcmUgd2FrZXVwIGlzIGNhbGxlZC4NCg0KQlRXLCBkb2VzIHRoZSBjdXJyZW50
IGNvZGUgY29udGFpbiBhIGJ1Zz8gVGhlIHNvY2tldCBjYW4gYmUgb3BlbmVkIGluIA0KY29weSBt
b2RlIGV2ZW4gaWYgbmRvX3hza193YWtldXAgaXMgbm90IE5VTEwsIGFuZCB3ZSdsbCBjYWxsIA0K
bmRvX3hza193YWtldXAgaW4gdGhpcyBjYXNlLCBhbHRob3VnaCBpdCdzIG5vdCB6ZXJvLWNvcHku
IEFmdGVyIHlvdXIgDQpwYXRjaCBpdCB3aWxsIGJlIGZpeGVkLg0KDQpQLlMuIEknbGwgYmUgb24g
dmFjYXRpb24sIHNvIEkgYWRkZWQgbXkgcGVyc29uYWwgZW1haWwgdG8gQ2MgdG8gYmUgYWJsZSAN
CnRvIHJlY2VpdmUgcmVzcG9uc2VzLg0KDQo+ICDCoMKgwqDCoMKgwqDCoMKgIGVsc2UNCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBQb2xsIG5lZWRzIHRvIGRyaXZlIFR4IGFsc28gaW4g
Y29weSBtb2RlICovDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX194c2tfc2VuZG1zZyhz
ayk7DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
