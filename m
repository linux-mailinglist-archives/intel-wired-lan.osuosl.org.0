Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4240B6EFF2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jul 2019 18:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 976ED20033;
	Sat, 20 Jul 2019 16:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QNpXYzjGHMY5; Sat, 20 Jul 2019 16:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E9982033D;
	Sat, 20 Jul 2019 16:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9D101BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2019 16:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D0FDA855EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2019 16:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gz71-XWQ5dyl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jul 2019 16:11:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38ECE81CEB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2019 16:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jul 2019 09:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,287,1559545200"; d="scan'208";a="162699808"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2019 09:11:12 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.240]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.157]) with mapi id 14.03.0439.000;
 Sat, 20 Jul 2019 09:11:11 -0700
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] How to update firmware?
Thread-Index: AQHVPaBwFIjMjno7CUqCHEdzfMpcnKbTr54g
Date: Sat, 20 Jul 2019 16:11:10 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69AFF0A1B@ORSMSX115.amr.corp.intel.com>
References: <f16c92b9-61bf-6ea8-afc9-28e778c2b625@molgen.mpg.de>
In-Reply-To: <f16c92b9-61bf-6ea8-afc9-28e778c2b625@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2MzNTE5ZWUtMTRjYi00N2ZmLThmYzItZGUwZmMwNTI2M2IwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiM3VRVVprTERMbUtwUjJZaUtMWWFtK2NXKzVjNzlCRTc5Qk9YakFwREVZbXJDMEJRTnpkMG1RODRteER0SVZJRyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] How to update firmware?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2hhdCBwYXJ0PyBUaGUgMUcgcGFydHMgZGlkbid0IGhhdmUgbXVjaCBmaXJtd2FyZSAob25seSBv
bmUgaGFkIGEgbGl0dGxlKSBhbmQgc29tZSBvZiB0aGUgMTBHIHBhcnRzIGRpZG4ndCwgZWl0aGVy
Lg0KDQpXZSBkb24ndCByZWxlYXNlIHRoZSBzb3VyY2UgdG8gdGhlIGZpcm13YXJlIHVwZGF0ZXIg
YW5kIHRoZXJlIG1pZ2h0IG5vdCBiZSBhbiB1cGRhdGUgZm9yIHlvdSBhbnl3YXkuDQoNClRvZGQg
RnVqaW5ha2ENClNvZnR3YXJlIEFwcGxpY2F0aW9uIEVuZ2luZWVyDQpEYXRhY2VudGVyIEVuZ2lu
ZWVyaW5nIEdyb3VwDQpJbnRlbCBDb3Jwb3JhdGlvbg0KdG9kZC5mdWppbmFrYUBpbnRlbC5jb20N
Cg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSW50ZWwtd2lyZWQtbGFuIFtt
YWlsdG86aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZ10gT24gQmVoYWxmIE9mIFBh
dWwgTWVuemVsDQpTZW50OiBUaHVyc2RheSwgSnVseSAxOCwgMjAxOSAxMjozOSBQTQ0KVG86IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQpTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBIb3cgdG8gdXBkYXRlIGZpcm13YXJlPw0KDQpEZWFyIExpbnV4IGZvbGtzLA0KDQoNCkhvdyBj
YW4gSSB1cGRhdGUgdGhlIGZpcm13YXJlIG9mIEludGVsIG5ldHdvcmsgY2FyZHMgd2l0aCBmcmVl
IHNvZnR3YXJlIHV0aWxpdGllcz8gRGVsbCBwcm92aWRlcyBhIGJpbmFyeSB0byB1cGRhdGUgdGhl
IGZpcm13YXJlLCBhbmQgaXQgd29ya2VkLCBidXQgSeKAmWQgbGlrZSB0byBoYXZlIHRoZSBzb3Vy
Y2VzLiBJbiB0aGlzIGNhc2UsIGl0IHdhcyBhYm91dCB0aGUgZGV2aWNlIGJlbG93Lg0KDQpgYGAN
CiQgZG1lc2cgfCBncmVwIGlnYg0KW+KApl0NClsgICAxOC40Mzk4MTVdIGlnYjogSW50ZWwoUikg
R2lnYWJpdCBFdGhlcm5ldCBOZXR3b3JrIERyaXZlciAtIHZlcnNpb24gDQo1LjQuMC1rDQpbICAg
MTguNDY2ODgyXSBpZ2I6IENvcHlyaWdodCAoYykgMjAwNy0yMDE0IEludGVsIENvcnBvcmF0aW9u
Lg0KWyAgIDE4LjUzMDc2OV0gaWdiIDAwMDA6MDQ6MDAuMDogYWRkZWQgUEhDIG9uIGV0aDANClsg
ICAxOC41MzA3NzJdIGlnYiAwMDAwOjA0OjAwLjA6IEludGVsKFIpIEdpZ2FiaXQgRXRoZXJuZXQg
TmV0d29yayANCkNvbm5lY3Rpb24NClsgICAxOC41MzA3NzNdIGlnYiAwMDAwOjA0OjAwLjA6IGV0
aDA6IChQQ0llOjUuMEdiL3M6V2lkdGggeDIpIA0KZTQ6NDM6NGI6MTM6NTE6ZjQNClsgICAxOC41
MzEwOTFdIGlnYiAwMDAwOjA0OjAwLjA6IGV0aDA6IFBCQSBObzogRzYxMzQ2LTAxOA0KWyAgIDE4
LjUzMTA5Ml0gaWdiIDAwMDA6MDQ6MDAuMDogVXNpbmcgTVNJLVggaW50ZXJydXB0cy4gOCByeCBx
dWV1ZShzKSwgDQo4IHR4IHF1ZXVlKHMpDQpb4oCmXQ0KJCBldGh0b29sIC1pIGV0cmgwDQpkcml2
ZXI6IGl4Z2JlDQp2ZXJzaW9uOiA1LjEuMC1rDQpmaXJtd2FyZS12ZXJzaW9uOiAweDgwMDAwOTVj
LCAxOC44LjkNCmV4cGFuc2lvbi1yb20tdmVyc2lvbjoNCmJ1cy1pbmZvOiAwMDAwOjAxOjAwLjAN
CnN1cHBvcnRzLXN0YXRpc3RpY3M6IHllcw0Kc3VwcG9ydHMtdGVzdDogeWVzDQpzdXBwb3J0cy1l
ZXByb20tYWNjZXNzOiB5ZXMNCnN1cHBvcnRzLXJlZ2lzdGVyLWR1bXA6IHllcw0Kc3VwcG9ydHMt
cHJpdi1mbGFnczogeWVzDQpgYGANCg0KDQpLaW5kIHJlZ2FyZHMsDQoNClBhdWwNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0DQpJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
