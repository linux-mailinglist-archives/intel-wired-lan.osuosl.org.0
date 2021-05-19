Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D5A38992B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 00:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C08883148;
	Wed, 19 May 2021 22:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozxXRBFQO5gu; Wed, 19 May 2021 22:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3019182F84;
	Wed, 19 May 2021 22:16:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F192D1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 22:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBBE84061B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 22:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6p_7zNTSEe6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 22:16:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D605040522
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 22:16:12 +0000 (UTC)
IronPort-SDR: 2eC4+eRRz73J9CpHcezMEJ9JHQRDC0O0FxPowEyWCCQ3uaWagDmh9m+kF2r/ERecI+Tii/ZARZ
 zfnOTnYgY+YA==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="188218775"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188218775"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 15:16:01 -0700
IronPort-SDR: ATK5oUX/UmPtyN8L/+uGComviQx7UsAFoJIAM8/RR/5LaOLRTS9z6ZLJ+L+7o16LljT/UTYepc
 /BRJTfkCnfTA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473696521"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.165.64])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 15:16:01 -0700
Date: Wed, 19 May 2021 15:16:00 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20210519151600.00006065@intel.com>
In-Reply-To: <20210519194350.1854798-1-geert@linux-m68k.org>
References: <20210519194350.1854798-1-geert@linux-m68k.org>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] virtchnl: Add missing padding to
 virtchnl_proto_hdrs
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
Cc: Simei Su <simei.su@intel.com>, Jeff Guo <jia.guo@intel.com>,
 Yahui Cao <yahui.cao@intel.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Beilei Xing <beilei.xing@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 intel-wired-lan@lists.osuosl.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

R2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgoKPiBPbiBtNjhrIChDb2xkZmlyZSBNNTQ3eCk6Cj4g
Cj4gICAgICAgQ0MgICAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFp
bi5vCj4gICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfcHJvdG90eXBlLmg6OSwKPiAJCSAgICAgZnJvbSBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGUuaDo0MSwKPiAJCSAgICAgZnJvbSBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jOjEyOgo+ICAgICBpbmNsdWRlL2xpbnV4L2F2Zi92
aXJ0Y2hubC5oOjE1MzozNjogd2FybmluZzogZGl2aXNpb24gYnkgemVybyBbLVdkaXYtYnktemVy
b10KPiAgICAgICAxNTMgfCAgeyB2aXJ0Y2hubF9zdGF0aWNfYXNzZXJ0XyMjWCA9IChuKS8oKHNp
emVvZihzdHJ1Y3QgWCkgPT0gKG4pKSA/IDEgOiAwKSB9Cj4gCSAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF4KPiAgICAgaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaDo4
NDQ6MTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmFZJUlRDSE5MX0NIRUNLX1NUUlVD
VF9MRU7igJkKPiAgICAgICA4NDQgfCBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDIzMTIsIHZp
cnRjaG5sX3Byb3RvX2hkcnMpOwo+IAkgIHwgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ICAg
ICBpbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oOjg0NDozMzogZXJyb3I6IGVudW1lcmF0b3Ig
dmFsdWUgZm9yIOKAmHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfdmlydGNobmxfcHJvdG9faGRyc+KA
mSBpcyBub3QgYW4gaW50ZWdlciBjb25zdGFudAo+ICAgICAgIDg0NCB8IFZJUlRDSE5MX0NIRUNL
X1NUUlVDVF9MRU4oMjMxMiwgdmlydGNobmxfcHJvdG9faGRycyk7Cj4gCSAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KPiAKPiBPbiBtNjhrLCBp
bnRlZ2VycyBhcmUgYWxpZ25lZCBvbiBhZGRyZXNzZXMgdGhhdCBhcmUgbXVsdGlwbGVzIG9mIHR3
bywKPiBub3QgZm91ciwgYnl0ZXMuICBIZW5jZSB0aGUgc2l6ZSBvZiBhIHN0cnVjdHVyZSBjb250
YWluaW5nIGludGVnZXJzIG1heQo+IG5vdCBiZSBkaXZpc2libGUgYnkgNC4KPiAKPiBGaXggdGhp
cyBieSBhZGRpbmcgZXhwbGljaXQgcGFkZGluZy4KClRoYW5rcyBHZWVydCwgSSBjaGVja2VkIGFu
ZCB4ODZfNjQgYWRkcyB0aGlzIHBhZGRpbmcgYW55d2F5LCBzbyBkb2Vzbid0CnJlc3VsdCBpbiBh
bnkgZnVuY3Rpb25hbCBjaGFuZ2VzIEFGQUlDUy4gSW4gYW55IGNhc2UsIHRoaXMgaXMgbW9yZQpj
b3JyZWN0IGZvciBhIHN0cnVjdHVyZSB0aGF0IGlzIHBhcnQgb2YgYW4gQVBJIChubyBpbXBsaWNp
dCBwYWRkaW5nISkKCkJUVy4gdGhlIHBhdGNoIHN1YmplY3QgaXMgYSBsaXR0bGUgd3JvbmcsIHNo
b3VsZCBoYXZlIGJlZW4KW1BBVENIIG5ldF0KCkJ1dCBJIHRoaW5rIFRvbnkgY2FuIHRha2UgY2Fy
ZSBvZiB0aGF0IHdoZW4gc2VuZGluZyB0byBuZXRkZXYgbGlzdCwKdW5sZXNzIHlvdSB3YW50IHRv
IHNlbmQgYSB2Mi4KIAo+IEZpeGVzOiAxZjdlYTFjZDZhMzc0ODQyICgiaWNlOiBFbmFibGUgRkRJ
UiBDb25maWd1cmUgZm9yIEFWRiIpCj4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxs
a3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRA
bGludXgtbTY4ay5vcmc+Cj4gLS0tCj4gQ29tcGlsZS10ZXN0ZWQgb25seS4KCkFja2VkLWJ5OiBK
ZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
