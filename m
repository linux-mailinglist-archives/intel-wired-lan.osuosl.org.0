Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF70F1A3677
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 17:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D02524BEA;
	Thu,  9 Apr 2020 15:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vDWsfZE7tIK4; Thu,  9 Apr 2020 15:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E585C24B96;
	Thu,  9 Apr 2020 15:01:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E6771BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 09:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 35C288353B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 09:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uO5djB5aGquJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2020 09:33:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2063.outbound.protection.outlook.com [40.107.20.63])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD76986AE3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 09:33:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qxs90vYbQDV8kKFA3cSRLPYRCCeMr0S91BUUMLrsa/haUYRBQZeM0r7ppq4NNELOEkTTk+PD6gsTrikUCjeWY23w7otRvQAiMF+NTIoEZ7IVDKOeyHKUhSRt+nm1SwXRqk2zWW9U84/3NPYL48+00IcXvHeYr5DgldJh1knlu/EvQYZ0zMxen2HRva9Km1Kvls9B2km/3ImwPIdYCvWB2OOPOE5Wog2waMN1i+iLc6fK7si2ecLX2u5rwQnXq/RBppHqolVgA28z5jcH+sKbpGR4ivj5xpj0hqjgRkAGUGyXHbAWA/eM9WSZCcOoO/MKP2GPYzav81kJ22OWQiRxVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/O1vZwEiRoNobvRsR1qziTH42kCuWGQZQoW2AXibCI=;
 b=eMk4U3UkRmYNbpc+zY91+V1oocxFDtvUn4LjrFQS9yE1YScY7gSo3yIPn7nHDYruYxQ1Y2M0ObaXu5/GGLB1+Q76Y9wKmN4/xoJZeA/qinaUVvT4mSshOwwTNEpcaseDT1VsWv38rWEfrpZjL4NFqU54zgBc1cpLIfFZVMSp2EzKpdKp2fTMTLKjcnvSwrIDyKQXVS8N251KJPFOeKYnz7PfNstJYX8YUzQnXVUPFmRmUQMikpK6F8YCgzDE0+zxQfUHBBEYU6suZ++rIwfkj/B+JhJ+btgf+zX+zq2KgCAvbkiqxOXDFUQwnrbCNh5BedmdpkMZbx+yME6Xs8Fyzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/O1vZwEiRoNobvRsR1qziTH42kCuWGQZQoW2AXibCI=;
 b=Rb4lV4dfUdpJZxWg12x8mE2L63Y2hX3iphx72NLmkZfcZXqNNlCnuzL0/JKveEtrOg5rQTBIucSuefonT3lwt5nB8tnFIMu0KXq6VWTNTl6hZE1GsexmYQ+yeilQJ85UaJR8Dd/SyKQ4KZ/NvpjEYstl805tg9P9/xrmYTV2df8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
Received: from HE1PR0501MB2570.eurprd05.prod.outlook.com (2603:10a6:3:6c::17)
 by HE1PR0501MB2395.eurprd05.prod.outlook.com (2603:10a6:3:71::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 9 Apr
 2020 09:33:41 +0000
Received: from HE1PR0501MB2570.eurprd05.prod.outlook.com
 ([fe80::60c4:f0b4:dc7b:c7fc]) by HE1PR0501MB2570.eurprd05.prod.outlook.com
 ([fe80::60c4:f0b4:dc7b:c7fc%10]) with mapi id 15.20.2878.021; Thu, 9 Apr 2020
 09:33:41 +0000
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, sameehj@amazon.com
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
 <158634677661.707275.17823370564281193008.stgit@firesoul>
 <55b6684d-9097-e2c1-c939-bf3273bd70f6@intel.com>
From: Maxim Mikityanskiy <maximmi@mellanox.com>
Message-ID: <efb24e4f-610e-5793-dde4-76b42ebca826@mellanox.com>
Date: Thu, 9 Apr 2020 12:33:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <55b6684d-9097-e2c1-c939-bf3273bd70f6@intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM6PR10CA0099.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:8c::40) To HE1PR0501MB2570.eurprd05.prod.outlook.com
 (2603:10a6:3:6c::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.57.1.235] (159.224.90.213) by
 AM6PR10CA0099.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:8c::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.17 via Frontend Transport; Thu, 9 Apr 2020 09:33:39 +0000
X-Originating-IP: [159.224.90.213]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 351300be-296c-4f83-de05-08d7dc6916df
X-MS-TrafficTypeDiagnostic: HE1PR0501MB2395:|HE1PR0501MB2395:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0501MB239599B5032E58ACC5D2C825D1C10@HE1PR0501MB2395.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0368E78B5B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0501MB2570.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(52116002)(86362001)(54906003)(107886003)(66574012)(7416002)(4326008)(316002)(81166007)(66476007)(16576012)(66946007)(31686004)(31696002)(55236004)(8676002)(6486002)(53546011)(110136005)(66556008)(5660300002)(81156014)(8936002)(186003)(956004)(16526019)(2616005)(478600001)(36756003)(2906002)(26005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qR7MKsbM/qVy3k1SrbuD867c31zkGjCg9yLUN2dVQ7Ig4/s1YC7MiaUYIZkgzdH8a8dW88Qdk4Ncm2uPMniHN3G/ncB+X19+DKgUEvVVVeNMCY2c8xY2DeFbPpDBVDLVZ0/+d42K2t575dvlo1pIWmWTou5SW9sP3MhIUDM9KQ8e2HtLnIXH/YS52svfdKlAbC9im6CJKDGuErNUWkyBKZenmtEy986xLjYuP8bEr158ucDANkeGJnRTaQ9k4ouon8okKQ1z4uWzBUBm5Xa9SsTeNJ/cUAxG65YOO8IBoni4wbT6tP+8jBbsJLzQGFrsWBjBokpilMjDFvCzVzqjtte+wKgBCp5e1H04bJ4EtjOgrjtQeJ5ngfjd4Fv0cHAnoL1TrlpWSb6xgCWkUhE1FC1LoXhxrgv8yAk4P/RMMZ7bjFPWKA4/Pm4a8f8YH4Et
X-MS-Exchange-AntiSpam-MessageData: sAmVyDafSvrzjkDutOttLmOaq2hyBT92ET84IR0B3iMM8bBq44pPPLsv2x4KS5hYf3xk5RtjDiITBoBTxD2bvXsvaJniVmWgeR56V4Dibtz4+jG7EkL+kelOtFvuWVzqmt1hrYD+KFv1XQkD/khlnA==
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 351300be-296c-4f83-de05-08d7dc6916df
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 09:33:41.0960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tXn7b+g1BcykjYGhNnuFyemlIx7pspByCHe7HOMplbmo2IAItOv2uOiOrI02RR0Tne2Ku3mKvZJZdVCsXTtZlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0501MB2395
X-Mailman-Approved-At: Thu, 09 Apr 2020 15:00:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC v2 28/33] xdp: for Intel AF_XDP
 drivers add XDP frame_sz
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, zorik@amazon.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 gtzalik@amazon.com, Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Ahern <dsahern@gmail.com>,
 bpf@vger.kernel.org, Daniel Borkmann <borkmann@iogearbox.net>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, akiyano@amazon.com,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wNC0wOCAyMDozMSwgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBPbiAyMDIwLTA0LTA4
IDEzOjUyLCBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIHdyb3RlOgo+PiBJbnRlbCBkcml2ZXJzIGlt
cGxlbWVudCBuYXRpdmUgQUZfWERQIHplcm9jb3B5IGluIHNlcGFyYXRlIEMtZmlsZXMsCj4+IHRo
YXQgaGF2ZSBpdHMgb3duIGludm9jYXRpb24gb2YgYnBmX3Byb2dfcnVuX3hkcCgpLiBUaGUgc2V0
dXAgb2YKPj4geGRwX2J1ZmYgaXMgYWxzbyBoYW5kbGVkIGluIHNlcGFyYXRlbHkgZnJvbSBub3Jt
YWwgY29kZSBwYXRoLgo+Pgo+PiBUaGlzIHBhdGNoIHVwZGF0ZSBYRFAgZnJhbWVfc3ogZm9yIEFG
X1hEUCB6ZXJvY29weSBkcml2ZXJzIGk0MGUsIGljZQo+PiBhbmQgaXhnYmUsIGFzIHRoZSBjb2Rl
IGNoYW5nZXMgbmVlZGVkIGFyZSB2ZXJ5IHNpbWlsYXIuwqAgSW50cm9kdWNlIGEKPj4gaGVscGVy
IGZ1bmN0aW9uIHhza191bWVtX3hkcF9mcmFtZV9zeigpIGZvciBjYWxjdWxhdGluZyBmcmFtZSBz
aXplLgo+Pgo+PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcKPj4gQ2M6IEJq
w7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPj4gQ2M6IE1hZ251cyBLYXJsc3Nv
biA8bWFnbnVzLmthcmxzc29uQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSmVzcGVyIERh
bmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gCj4gVGhhbmtzIGZvciB0aGUgcGF0
Y2gsIEplc3BlciEgTm90ZSB0aGF0IG1seDUgaGFzIEFGX1hEUCBzdXBwb3J0IGFzIHdlbGwsCj4g
YW5kIG1pZ2h0IG5lZWQgc2ltaWxhciBjaGFuZ2VzLiBBZGRpbmcgTWF4IGZvciBpbnB1dCEKClRo
YW5rcyBmb3IgZHJhd2luZyBteSBhdHRlbnRpb24gdG8gdGhpcyBzZXJpZXMsIEJqw7ZybiEgSSBj
b21tZW50ZWQgCnJlZ2FyZGluZyBmcmFtZV9zeiBjYWxjdWxhdGlvbiB1bmRlciB0aGUgbWx4NSBw
YXRjaCAoMTcvMzMpLgoKPiBGb3IgdGhlIEludGVsIGRyaXZlcnMsIGFuZCBjb3JlIEFGX1hEUDoK
PiBBY2tlZC1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+IAo+PiAt
LS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jwqDCoCB8
wqDCoMKgIDIgKysKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2su
Y8KgwqDCoMKgIHzCoMKgwqAgMiArKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV94c2suYyB8wqDCoMKgIDIgKysKPj4gwqAgaW5jbHVkZS9uZXQveGRwX3NvY2su
aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDExICsr
KysrKysrKysrCj4+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIAo+
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+PiBpbmRleCAw
YjdkMjkxOTJiMmMuLjJiOTE4NGFlYWQ1ZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV94c2suYwo+PiBAQCAtNTMxLDEyICs1MzEsMTQgQEAgaW50IGk0MGVf
Y2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpNDBlX3JpbmcgCj4+ICpyeF9yaW5nLCBpbnQgYnVkZ2V0
KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IHRvdGFsX3J4X2J5dGVzID0gMCwg
dG90YWxfcnhfcGFja2V0cyA9IDA7Cj4+IMKgwqDCoMKgwqAgdTE2IGNsZWFuZWRfY291bnQgPSBJ
NDBFX0RFU0NfVU5VU0VEKHJ4X3JpbmcpOwo+PiArwqDCoMKgIHN0cnVjdCB4ZHBfdW1lbSAqdW1l
bSA9IHJ4X3JpbmctPnhza191bWVtOwo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCB4ZHBfcmVz
LCB4ZHBfeG1pdCA9IDA7Cj4+IMKgwqDCoMKgwqAgYm9vbCBmYWlsdXJlID0gZmFsc2U7Cj4+IMKg
wqDCoMKgwqAgc3RydWN0IHNrX2J1ZmYgKnNrYjsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgeGRwX2J1
ZmYgeGRwOwo+PiDCoMKgwqDCoMKgIHhkcC5yeHEgPSAmcnhfcmluZy0+eGRwX3J4cTsKPj4gK8Kg
wqDCoCB4ZHAuZnJhbWVfc3ogPSB4c2tfdW1lbV94ZHBfZnJhbWVfc3oodW1lbSk7Cj4+IMKgwqDC
oMKgwqAgd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNrZXRzIDwgKHVuc2lnbmVkIGludClidWRn
ZXQpKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKmJpOwo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYyAK
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCj4+IGluZGV4IDgy
NzlkYjE1ZTg3MC4uMjNlNTUxNWQ0NTI3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfeHNrLmMKPj4gQEAgLTg0MCwxMSArODQwLDEzIEBAIGludCBpY2VfY2xlYW5f
cnhfaXJxX3pjKHN0cnVjdCBpY2VfcmluZyAKPj4gKnJ4X3JpbmcsIGludCBidWRnZXQpCj4+IMKg
IHsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgdG90YWxfcnhfYnl0ZXMgPSAwLCB0b3RhbF9y
eF9wYWNrZXRzID0gMDsKPj4gwqDCoMKgwqDCoCB1MTYgY2xlYW5lZF9jb3VudCA9IElDRV9ERVND
X1VOVVNFRChyeF9yaW5nKTsKPj4gK8KgwqDCoCBzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0gPSByeF9y
aW5nLT54c2tfdW1lbTsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgeGRwX3htaXQgPSAwOwo+
PiDCoMKgwqDCoMKgIGJvb2wgZmFpbHVyZSA9IGZhbHNlOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCB4
ZHBfYnVmZiB4ZHA7Cj4+IMKgwqDCoMKgwqAgeGRwLnJ4cSA9ICZyeF9yaW5nLT54ZHBfcnhxOwo+
PiArwqDCoMKgIHhkcC5mcmFtZV9zeiA9IHhza191bWVtX3hkcF9mcmFtZV9zeih1bWVtKTsKPj4g
wqDCoMKgwqDCoCB3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCAodW5zaWduZWQgaW50
KWJ1ZGdldCkpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVuaW9uIGljZV8zMmJfcnhfZmxleF9k
ZXNjICpyeF9kZXNjOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfeHNrLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfeHNrLmMKPj4gaW5kZXggNzRiNTQwZWJiM2RjLi5hNjU2ZWU5YTFmYWUgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4+IEBAIC00
MzEsMTIgKzQzMSwxNCBAQCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9x
X3ZlY3RvciAKPj4gKnFfdmVjdG9yLAo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCB0b3RhbF9y
eF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBp
eGdiZV9hZGFwdGVyICphZGFwdGVyID0gcV92ZWN0b3ItPmFkYXB0ZXI7Cj4+IMKgwqDCoMKgwqAg
dTE2IGNsZWFuZWRfY291bnQgPSBpeGdiZV9kZXNjX3VudXNlZChyeF9yaW5nKTsKPj4gK8KgwqDC
oCBzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0gPSByeF9yaW5nLT54c2tfdW1lbTsKPj4gwqDCoMKgwqDC
oCB1bnNpZ25lZCBpbnQgeGRwX3JlcywgeGRwX3htaXQgPSAwOwo+PiDCoMKgwqDCoMKgIGJvb2wg
ZmFpbHVyZSA9IGZhbHNlOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBza19idWZmICpza2I7Cj4+IMKg
wqDCoMKgwqAgc3RydWN0IHhkcF9idWZmIHhkcDsKPj4gwqDCoMKgwqDCoCB4ZHAucnhxID0gJnJ4
X3JpbmctPnhkcF9yeHE7Cj4+ICvCoMKgwqAgeGRwLmZyYW1lX3N6ID0geHNrX3VtZW1feGRwX2Zy
YW1lX3N6KHVtZW0pOwo+PiDCoMKgwqDCoMKgIHdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0
cyA8IGJ1ZGdldCkpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVuaW9uIGl4Z2JlX2Fkdl9yeF9k
ZXNjICpyeF9kZXNjOwo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQveGRwX3NvY2suaCBiL2lu
Y2x1ZGUvbmV0L3hkcF9zb2NrLmgKPj4gaW5kZXggZTg2ZWM0OGVmNjI3Li4xY2QxZWMzY2VhOTcg
MTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbmV0L3hkcF9zb2NrLmgKPj4gKysrIGIvaW5jbHVkZS9u
ZXQveGRwX3NvY2suaAo+PiBAQCAtMjM3LDYgKzIzNywxMiBAQCBzdGF0aWMgaW5saW5lIHU2NCB4
c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0KHN0cnVjdCAKPj4geGRwX3VtZW0gKnVtZW0sIHU2NCBhZGRy
ZXNzLAo+PiDCoMKgwqDCoMKgIGVsc2UKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBhZGRy
ZXNzICsgb2Zmc2V0Owo+PiDCoCB9Cj4+ICsKPj4gK3N0YXRpYyBpbmxpbmUgdTMyIHhza191bWVt
X3hkcF9mcmFtZV9zeihzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0pCj4+ICt7Cj4+ICvCoMKgwqAgcmV0
dXJuIHVtZW0tPmNodW5rX3NpemVfbm9ociArIHVtZW0tPmhlYWRyb29tOwo+PiArfQo+PiArCgpU
aGlzIG5ldyBmdW5jdGlvbiBtYXkgYmUgdXNlZCBpbiBtbHg1IGZvciBtbHg1ZV9idWlsZF94c2tf
cGFyYW0uCgo+PiDCoCAjZWxzZQo+PiDCoCBzdGF0aWMgaW5saW5lIGludCB4c2tfZ2VuZXJpY19y
Y3Yoc3RydWN0IHhkcF9zb2NrICp4cywgc3RydWN0IAo+PiB4ZHBfYnVmZiAqeGRwKQo+PiDCoCB7
Cj4+IEBAIC0zNjcsNiArMzczLDExIEBAIHN0YXRpYyBpbmxpbmUgdTY0IHhza191bWVtX2FkanVz
dF9vZmZzZXQoc3RydWN0IAo+PiB4ZHBfdW1lbSAqdW1lbSwgdTY0IGhhbmRsZSwKPj4gwqDCoMKg
wqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+PiArc3RhdGljIGlubGluZSB1MzIgeHNrX3VtZW1feGRw
X2ZyYW1lX3N6KHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSkKPj4gK3sKPj4gK8KgwqDCoCByZXR1cm4g
MDsKPj4gK30KPj4gKwo+PiDCoCBzdGF0aWMgaW5saW5lIGludCBfX3hza19tYXBfcmVkaXJlY3Qo
c3RydWN0IHhkcF9zb2NrICp4cywgc3RydWN0IAo+PiB4ZHBfYnVmZiAqeGRwKQo+PiDCoCB7Cj4+
IMKgwqDCoMKgwqAgcmV0dXJuIC1FT1BOT1RTVVBQOwo+Pgo+PgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
