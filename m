Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA53C25164D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 12:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DEB88827E;
	Tue, 25 Aug 2020 10:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QzG3G6XwcPQy; Tue, 25 Aug 2020 10:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0592B88275;
	Tue, 25 Aug 2020 10:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1025F1BF278
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 067072154B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YtdrnS7lJkoL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 10:12:06 +0000 (UTC)
X-Greylist: delayed 00:16:21 by SQLgrey-1.7.6
Received: from baidu.com (mx21.baidu.com [220.181.3.85])
 by silver.osuosl.org (Postfix) with ESMTP id 89CAA2046F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:12:06 +0000 (UTC)
Received: from BC-Mail-Ex32.internal.baidu.com (unknown [172.31.51.26])
 by Forcepoint Email with ESMTPS id 3539B8D34D64D489C8D8;
 Tue, 25 Aug 2020 17:55:44 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex32.internal.baidu.com (172.31.51.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Tue, 25 Aug 2020 17:55:44 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Tue, 25 Aug 2020 17:55:44 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net 2/3] ixgbe: avoid premature Rx buffer reuse
Thread-Index: AQHWesB7tnRiiToEI0WTNehm9NY04alIljXw
Date: Tue, 25 Aug 2020 09:55:44 +0000
Message-ID: <6356c0ddbdbd4f8fb4927f3ee96c4c33@baidu.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-3-bjorn.topel@gmail.com>
In-Reply-To: <20200825091629.12949-3-bjorn.topel@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.44]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex32_2020-08-25 17:55:44:333
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] ixgbe: avoid premature Rx
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
IFN1YmplY3Q6IFtQQVRDSCBuZXQgMi8zXSBpeGdiZTogYXZvaWQgcHJlbWF0dXJlIFJ4IGJ1ZmZl
ciByZXVzZQ0KPiANCj4gRnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29t
Pg0KPiANCj4gVGhlIHBhZ2UgcmVjeWNsZSBjb2RlLCBpbmNvcnJlY3RseSwgcmVsaWVkIG9uIHRo
YXQgYSBwYWdlIGZyYWdtZW50IGNvdWxkIG5vdCBiZQ0KPiBmcmVlZCBpbnNpZGUgeGRwX2RvX3Jl
ZGlyZWN0KCkuIFRoaXMgYXNzdW1wdGlvbiBsZWFkcyB0byB0aGF0IHBhZ2UgZnJhZ21lbnRzDQo+
IHRoYXQgYXJlIHVzZWQgYnkgdGhlIHN0YWNrL1hEUCByZWRpcmVjdCBjYW4gYmUgcmV1c2VkIGFu
ZCBvdmVyd3JpdHRlbi4NCj4gDQo+IFRvIGF2b2lkIHRoaXMsIHN0b3JlIHRoZSBwYWdlIGNvdW50
IHByaW9yIGludm9raW5nIHhkcF9kb19yZWRpcmVjdCgpLg0KPiANCj4gRml4ZXM6IDY0NTMwNzM5
ODdiYSAoIml4Z2JlOiBhZGQgaW5pdGlhbCBzdXBwb3J0IGZvciB4ZHAgcmVkaXJlY3QiKQ0KPiBT
aWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+DQoNClJl
cG9ydGVkLWFuZC1hbmFseXplZC1ieTogTGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29t
Pg0KDQpUaGFua3MNCg0KLUxpDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
