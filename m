Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0437A2F4140
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jan 2021 02:37:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B16C8713A;
	Wed, 13 Jan 2021 01:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9FCcCrcfh0G4; Wed, 13 Jan 2021 01:37:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5D7287104;
	Wed, 13 Jan 2021 01:37:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C54A81BF38B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 01:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C0F41858C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 01:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EWjkMvxTYmj3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Jan 2021 01:37:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C2F3785868
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 01:37:02 +0000 (UTC)
Received: from BC-Mail-Ex30.internal.baidu.com (unknown [172.31.51.24])
 by Forcepoint Email with ESMTPS id 6BE8323B6FECE21FF455;
 Wed, 13 Jan 2021 09:36:59 +0800 (CST)
Received: from BJHW-Mail-Ex15.internal.baidu.com (10.127.64.38) by
 BC-Mail-Ex30.internal.baidu.com (172.31.51.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Wed, 13 Jan 2021 09:36:59 +0800
Received: from BJHW-Mail-Ex15.internal.baidu.com ([100.100.100.38]) by
 BJHW-Mail-Ex15.internal.baidu.com ([100.100.100.38]) with mapi id
 15.01.2106.006; Wed, 13 Jan 2021 09:36:59 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Thread-Topic: [PATCH] igb: avoid premature Rx buffer reuse
Thread-Index: AQHW6Fvbto35lVctrkuLVJL42A+U1qojSruAgACwj4CAAM0BMA==
Date: Wed, 13 Jan 2021 01:36:58 +0000
Message-ID: <005b033dad0a47d7858a9d71d20acda0@baidu.com>
References: <1609990905-29220-1-git-send-email-lirongqing@baidu.com>
 <CAKgT0Ucar6h-V2pQK6Gx4wrwFzJqySfv-MGXtW1yEc6Jq3uNSQ@mail.gmail.com>
 <65a7da2dc20c4fa5b69270f078026100@baidu.com>
 <CAKgT0UccR7Mh4efd+d193bvQNP2-QMdBxP0uk0__0Z+dYepNjg@mail.gmail.com>
In-Reply-To: <CAKgT0UccR7Mh4efd+d193bvQNP2-QMdBxP0uk0__0Z+dYepNjg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.52]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: avoid premature Rx buffer reuse
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWxleGFuZGVyIER1eWNr
IFttYWlsdG86YWxleGFuZGVyLmR1eWNrQGdtYWlsLmNvbV0NCj4gU2VudDogV2VkbmVzZGF5LCBK
YW51YXJ5IDEzLCAyMDIxIDU6MjMgQU0NCj4gVG86IExpLFJvbmdxaW5nIDxsaXJvbmdxaW5nQGJh
aWR1LmNvbT4NCj4gQ2M6IE5ldGRldiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz47IGludGVsLXdp
cmVkLWxhbg0KPiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBCasO2cm4gVMO2
cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGlnYjog
YXZvaWQgcHJlbWF0dXJlIFJ4IGJ1ZmZlciByIA0KPiBPa2F5LCB0aGlzIGV4cGxhbmF0aW9uIG1h
a2VzIG11Y2ggbW9yZSBzZW5zZS4gQ291bGQgeW91IHBsZWFzZSBlaXRoZXIgaW5jbHVkZQ0KPiB0
aGlzIGV4cGxhbmF0aW9uIGluIHlvdXIgcGF0Y2gsIG9yIGluY2x1ZGUgYSByZWZlcmVuY2UgdG8g
dGhpcyBwYXRjaCBhcyB0aGlzDQo+IGV4cGxhaW5zIGNsZWFybHkgd2hhdCB0aGUgaXNzdWUgaXMg
d2hpbGUgeW91cnMgZGlkbid0IGFuZCBsZWQgdG8gdGhlIGNvbmZ1c2lvbiBhcyBJDQo+IHdhcyBh
c3N1bWluZyB0aGUgZnJlZWluZyB3YXMgaGFwcGVuaW5nIGNsb3NlciB0byB0aGUgdDAgY2FzZSwg
YW5kIHJlYWxseSB0aGUNCj4gcHJvYmxlbSBpcyB0MS4NCj4gDQo+IFRoYW5rcy4NCj4gDQo+IC0g
QWxleA0KDQoNCk9rLCBJIHdpbGwgc2VuZCBWMg0KDQpUaGFua3MNCg0KLUxpDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
