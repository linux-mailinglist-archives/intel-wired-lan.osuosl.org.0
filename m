Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647F82515C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 11:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1720A88236;
	Tue, 25 Aug 2020 09:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIadtPDJJfLF; Tue, 25 Aug 2020 09:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B87E88271;
	Tue, 25 Aug 2020 09:55:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBA851BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D50D887E6E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AzmkGaA1DNBZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 09:55:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0082F87A6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:55:28 +0000 (UTC)
Received: from BC-Mail-Ex30.internal.baidu.com (unknown [172.31.51.24])
 by Forcepoint Email with ESMTPS id 156F2123377374D54E85;
 Tue, 25 Aug 2020 17:55:25 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex30.internal.baidu.com (172.31.51.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Tue, 25 Aug 2020 17:55:25 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Tue, 25 Aug 2020 17:55:24 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net 3/3] ice: avoid premature Rx buffer reuse
Thread-Index: AQHWesB+EeQgHcjyYUOf84ugEjVBQqlIlccw
Date: Tue, 25 Aug 2020 09:55:24 +0000
Message-ID: <f4cf2c5e2a0a4a6bb877fb24f0cc8b97@baidu.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-4-bjorn.topel@gmail.com>
In-Reply-To: <20200825091629.12949-4-bjorn.topel@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.44]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex30_2020-08-25 17:55:25:195
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ice: avoid premature Rx
 buffer reuse
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
Cc: "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "maciej.machnikowski@intel.com" <maciej.machnikowski@intel.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "magnus.karlsson@intel.com" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmrDtnJuIFTDtnBlbCBb
bWFpbHRvOmJqb3JuLnRvcGVsQGdtYWlsLmNvbV0NCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDI1
LCAyMDIwIDU6MTYgUE0NCj4gVG86IGplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbTsgaW50ZWwt
d2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRv
cGVsQGludGVsLmNvbT47IG1hZ251cy5rYXJsc3NvbkBpbnRlbC5jb207DQo+IG1hZ251cy5rYXJs
c3NvbkBnbWFpbC5jb207IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7DQo+IG1hY2llai5maWphbGtv
d3NraUBpbnRlbC5jb207IHBpb3RyLnJhY3p5bnNraUBpbnRlbC5jb207DQo+IG1hY2llai5tYWNo
bmlrb3dza2lAaW50ZWwuY29tOyBMaSxSb25ncWluZyA8bGlyb25ncWluZ0BiYWlkdS5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSCBuZXQgMy8zXSBpY2U6IGF2b2lkIHByZW1hdHVyZSBSeCBidWZmZXIg
cmV1c2UNCj4gDQo+IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4N
Cj4gDQo+IFRoZSBwYWdlIHJlY3ljbGUgY29kZSwgaW5jb3JyZWN0bHksIHJlbGllZCBvbiB0aGF0
IGEgcGFnZSBmcmFnbWVudCBjb3VsZCBub3QgYmUNCj4gZnJlZWQgaW5zaWRlIHhkcF9kb19yZWRp
cmVjdCgpLiBUaGlzIGFzc3VtcHRpb24gbGVhZHMgdG8gdGhhdCBwYWdlIGZyYWdtZW50cw0KPiB0
aGF0IGFyZSB1c2VkIGJ5IHRoZSBzdGFjay9YRFAgcmVkaXJlY3QgY2FuIGJlIHJldXNlZCBhbmQg
b3ZlcndyaXR0ZW4uDQo+IA0KPiBUbyBhdm9pZCB0aGlzLCBzdG9yZSB0aGUgcGFnZSBjb3VudCBw
cmlvciBpbnZva2luZyB4ZHBfZG9fcmVkaXJlY3QoKS4NCj4gDQo+IEZpeGVzOiBlZmMyMjE0YjYw
NDcgKCJpY2U6IEFkZCBzdXBwb3J0IGZvciBYRFAiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBCasO2cm4g
VMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+DQoNCg0KUmVwb3J0ZWQtYW5kLWFuYWx5emVk
LWJ5OiBMaSBSb25nUWluZyA8bGlyb25ncWluZ0BiYWlkdS5jb20+DQoNClRoYW5rcw0KDQotTGkN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
