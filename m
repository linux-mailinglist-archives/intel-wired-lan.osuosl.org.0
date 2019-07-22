Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF1670266
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2019 16:34:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01F9A2042A;
	Mon, 22 Jul 2019 14:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B1ZBTkFgqtfO; Mon, 22 Jul 2019 14:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07B2320413;
	Mon, 22 Jul 2019 14:34:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 822F41BF275
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 14:34:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D31183616
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 14:34:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQsUNw35WQQU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2019 14:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C21C9835F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 14:34:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 07:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="252925494"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga001.jf.intel.com with ESMTP; 22 Jul 2019 07:34:45 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jul 2019 07:34:45 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.6]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.253]) with mapi id 14.03.0439.000;
 Mon, 22 Jul 2019 07:34:45 -0700
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] How to update firmware?
Thread-Index: AQHVPaBwFIjMjno7CUqCHEdzfMpcnKbTr54ggADrWoCAAh7GEA==
Date: Mon, 22 Jul 2019 14:34:44 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69AFF1015@ORSMSX115.amr.corp.intel.com>
References: <f16c92b9-61bf-6ea8-afc9-28e778c2b625@molgen.mpg.de>
 <9B4A1B1917080E46B64F07F2989DADD69AFF0A1B@ORSMSX115.amr.corp.intel.com>
 <14c67f8e-b345-4aae-169f-4b7c9eba5d89@molgen.mpg.de>
In-Reply-To: <14c67f8e-b345-4aae-169f-4b7c9eba5d89@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTYyYjliYmYtZjdkMi00Mjc5LWJkNzItNGU0YzdkOTQ2ZWU0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTzNyZmhCYk4zRmhObkZHaWduQVlWem92NDZsM1k5TEgxOVUrVE5vNzcyWGNrUEVMRElmTGVyNE5nXC85VmFwVysifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SWYgaXQncyBhIERlbGwgYWRhcHRlciwgdGhlIGFuc3dlciBpcyB5b3UgaGF2ZSB0byBhc2sgRGVs
bCBmb3IgdXBkYXRlcy4NCg0KVG9kZCBGdWppbmFrYQ0KU29mdHdhcmUgQXBwbGljYXRpb24gRW5n
aW5lZXINCkRhdGFjZW50ZXIgRW5naW5lZXJpbmcgR3JvdXANCkludGVsIENvcnBvcmF0aW9uDQp0
b2RkLmZ1amluYWthQGludGVsLmNvbQ0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBQYXVsIE1lbnplbCBbbWFpbHRvOnBtZW56ZWxAbW9sZ2VuLm1wZy5kZV0gDQpTZW50OiBT
YXR1cmRheSwgSnVseSAyMCwgMjAxOSA0OjExIFBNDQpUbzogRnVqaW5ha2EsIFRvZGQgPHRvZGQu
ZnVqaW5ha2FAaW50ZWwuY29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3Jn
DQpTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gSG93IHRvIHVwZGF0ZSBmaXJtd2FyZT8N
Cg0KRGVhciBUb2RkLA0KDQoNClRoYW5rIHlvdSBmb3IgeW91ciBhbnN3ZXIuIFBsZWFzZSBmaW5k
IG15IGFuc3dlcnMgYmVsb3cgKGludGVybGVhdmVkIHN0eWxlKS4NCg0KDQpPbiAyMC4wNy4xOSAx
ODoxMSwgRnVqaW5ha2EsIFRvZGQgd3JvdGU6DQo+IFdoYXQgcGFydD8gVGhlIDFHIHBhcnRzIGRp
ZG4ndCBoYXZlIG11Y2ggZmlybXdhcmUgKG9ubHkgb25lIGhhZCBhDQo+IGxpdHRsZSkgYW5kIHNv
bWUgb2YgdGhlIDEwRyBwYXJ0cyBkaWRuJ3QsIGVpdGhlci4NCg0KU29ycnksIEkgZG8gbm90IHVu
ZGVyc3RhbmQuIFRoZXJlIGlzIGEgZmlybXdhcmUgbGluZSBpbiB0aGUgb3V0cHV0IG9mIGBldGh0
b29sYCBhbmQgaXQgd2FzIGluZGVlZCB1cGRhdGVkIHRvIDE4LjguOSBieSBydW5uaWcgdGhlDQoo
cHJvcHJpZXRhcnkpIERlbGwgdXBkYXRlIHByYWdyYW0uDQoNCj4gV2UgZG9uJ3QgcmVsZWFzZSB0
aGUgc291cmNlIHRvIHRoZSBmaXJtd2FyZSB1cGRhdGVyIGFuZCB0aGVyZSBtaWdodCANCj4gbm90
IGJlIGFuIHVwZGF0ZSBmb3IgeW91IGFueXdheS4NCg0KQXMgd3JpdHRlbiwgRGVsbCBvZmZlcnMg
YW4gdXBkYXRlLg0KDQpTbywgd2h5IGRvbuKAmXQgeW91IHJlbGVhc2UgdGhlIHNvdXJjZSBmb3Ig
dGhlIGZpcm13YXJlIHVwZGF0ZXIgdW5kZXIgYSBmcmVlIGxpY2VuY2U/IFdlIHJlYWxseSBsaWtl
IHRvIGF1ZGl0IGFsbCB0aGUgcHJvZ3JhbXMsIHdlIHJ1biwgYW5kIHJldmlldyAoYnkgb3Vyc2Vs
dmVzIG9yIG90aGVycykgdGhlbS4NCg0KU28gbWFpbiBnb2FsIHdvdWxkIGJlIHRvIGhhdmUganVz
dCBvbmUgdXBkYXRlIGludGVyZmFjZSwgZm9yIGV4YW1wbGUgYGZ3dXBkbWdyYCwgdG8gb25seSBk
ZWFsIHdpdGggb25lIHRvb2wuIEFuZCBJbnRlbCB3b3VsZCBoYXZlIG9uZSBwbGFjZSB0byB1cGxv
YWQgdGhlIGZpcm13YXJlIHVwZGF0ZSBmaWxlcyB0byAod2l0aCBzZWN1cml0eSBpc3N1ZXMgYWRk
cmVzc2VkIGxpa2Ugc2lnbmF0dXJlcywgYW5kIGdvb2QgcmVsZWFzZSBwcmFjdGljZXMgbGlrZSBy
ZWxlYXNlIG5vdGVzIGFuZCBzbyBvbikuDQoNCg0KS2luZCByZWdhcmRzLA0KDQpQYXVsDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
