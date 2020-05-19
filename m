Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 393351DA0E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E90CC86E10;
	Tue, 19 May 2020 19:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 77NBDqKbAEb5; Tue, 19 May 2020 19:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EA0786E1F;
	Tue, 19 May 2020 19:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 571371BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E74687F43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ozh-KpN-5-+U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 048C787F00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:55:42 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC4A4204EA;
 Tue, 19 May 2020 16:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589907341;
 bh=RjYocffFKOJBoRXrKQVtxRkFXXHlM2JSmrJvKUhqZQY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wZ38Yv509LMdk2AMoily5o/NpnCT4zyGc6FsE/CiBZpjorSleQZQvKhYBx+cRyRZs
 R9LM6IHFZmP2lRgiMMfaZlfifXfyp5KKegrrT7jhTMzKaB+feCH5L/6/N/71XqBp+U
 CWD6JRx8pOv6zOYfUl5qo4Jy7748kDAcRfMyh04E=
Date: Tue, 19 May 2020 09:55:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <20200519095539.570323c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <c81b36a0-11dd-4b7f-fad8-85f31dced58c@intel.com>
References: <20200519085724.294949-8-bjorn.topel@gmail.com>
 <202005192351.j1H08VpV%lkp@intel.com>
 <c81b36a0-11dd-4b7f-fad8-85f31dced58c@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 May 2020 19:19:37 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 07/15] i40e: separate
 kernel allocated rx_bi rings from AF_XDP rings
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
Cc: maximmi@mellanox.com, kbuild-all@lists.01.org, hawk@kernel.org,
 daniel@iogearbox.net, jonathan.lemon@gmail.com, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAxOSBNYXkgMjAyMCAxODoyMDowOSArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+
IE9uIDIwMjAtMDUtMTkgMTc6MTgsIGtidWlsZCB0ZXN0IHJvYm90IHdyb3RlOgo+ID4gSGkgIkJq
w7ZybiwKPiA+IAo+ID4gSSBsb3ZlIHlvdXIgcGF0Y2ghIFBlcmhhcHMgc29tZXRoaW5nIHRvIGlt
cHJvdmU6Cj4gPiAKPiA+IFthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBicGYtbmV4dC9tYXN0
ZXJdCj4gPiBbYWxzbyBidWlsZCB0ZXN0IFdBUk5JTkcgb24gamtpcnNoZXItbmV4dC1xdWV1ZS9k
ZXYtcXVldWUgbmV4dC0yMDIwMDUxOF0KPiA+IFtjYW5ub3QgYXBwbHkgdG8gYnBmL21hc3RlciBs
aW51cy9tYXN0ZXIgdjUuNy1yYzZdCj4gPiBbaWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRo
ZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNlIGRyb3AgdXMgYSBub3RlIHRvIGhlbHAKPiA+IGltcHJv
dmUgdGhlIHN5c3RlbS4gQlRXLCB3ZSBhbHNvIHN1Z2dlc3QgdG8gdXNlICctLWJhc2UnIG9wdGlv
biB0byBzcGVjaWZ5IHRoZQo+ID4gYmFzZSB0cmVlIGluIGdpdCBmb3JtYXQtcGF0Y2gsIHBsZWFz
ZSBzZWUgaHR0cHM6Ly9zdGFja292ZXJmbG93LmNvbS9hLzM3NDA2OTgyXQo+ID4gCj4gPiB1cmw6
ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMvQmotcm4tVC1wZWwv
SW50cm9kdWNlLUFGX1hEUC1idWZmZXItYWxsb2NhdGlvbi1BUEkvMjAyMDA1MTktMjAzMTIyCj4g
PiBiYXNlOiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L2JwZi9icGYtbmV4dC5naXQgbWFzdGVyCj4gPiBjb25maWc6IHJpc2N2LWFsbHllc2NvbmZpZyAo
YXR0YWNoZWQgYXMgLmNvbmZpZykKPiA+IGNvbXBpbGVyOiByaXNjdjY0LWxpbnV4LWdjYyAoR0ND
KSA5LjMuMAo+ID4gcmVwcm9kdWNlOgo+ID4gICAgICAgICAgd2dldCBodHRwczovL3Jhdy5naXRo
dWJ1c2VyY29udGVudC5jb20vaW50ZWwvbGtwLXRlc3RzL21hc3Rlci9zYmluL21ha2UuY3Jvc3Mg
LU8gfi9iaW4vbWFrZS5jcm9zcwo+ID4gICAgICAgICAgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9z
cwo+ID4gICAgICAgICAgIyBzYXZlIHRoZSBhdHRhY2hlZCAuY29uZmlnIHRvIGxpbnV4IGJ1aWxk
IHRyZWUKPiA+ICAgICAgICAgIENPTVBJTEVSX0lOU1RBTExfUEFUSD0kSE9NRS8wZGF5IENPTVBJ
TEVSPWdjYy05LjMuMCBtYWtlLmNyb3NzIEFSQ0g9cmlzY3YKPiA+IAo+ID4gSWYgeW91IGZpeCB0
aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZyBhcyBhcHByb3ByaWF0ZQo+ID4gUmVw
b3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+ID4gCj4gPiBBbGwg
d2FybmluZ3MgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+LCBvbGQgb25lcyBwcmVmaXhlZCBieSA8
PCk6Cj4gPiAgIAo+ID4+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhy
eC5jOjUzMTo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yICdpNDBlX2ZkX2hh
bmRsZV9zdGF0dXMnIFstV21pc3NpbmctcHJvdG90eXBlc10gIAo+ID4gNTMxIHwgdm9pZCBpNDBl
X2ZkX2hhbmRsZV9zdGF0dXMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTY0IHF3b3JkMF9y
YXcsCj4gPiB8ICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiAgCj4gCj4gWWVzLCB0aGlz
IGNvdWxkIGluZGVlZCBiZSBtYWRlIHN0YXRpYy4gSG1tLCBJIHdvbmRlciB3aHkgSSBkaWRuJ3Qg
Z2V0Cj4gdGhhdCB3YXJuaW5nIG9uIG15IHg4Ni02NCBidWlsZCE/IEknbGwgc3BpbiBhIHY0IChv
ciBkbyBhIGZvbGxvdy11cD8pLgo+IAo+IAo+IEJqw7ZybgoKV2hpbGUgYXQgaXQgSSBhbHNvIGdl
dCB0aGlzIG9uIHBhdGNoIDExIChnY2MtMTAsIFc9MSk6Cgpkcml2ZXJzL25ldC9ldGhlcm5ldC9t
ZWxsYW5veC9tbHg1L2NvcmUvZW5fbWFpbi5jOiBJbiBmdW5jdGlvbiBtbHg1ZV9hbGxvY19ycToK
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuX21haW4uYzozNzY6Njog
d2FybmluZzogdmFyaWFibGUgbnVtX3hza19mcmFtZXMgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVz
ZWQtYnV0LXNldC12YXJpYWJsZV0KICAgMzc2IHwgIHUzMiBudW1feHNrX2ZyYW1lcyA9IDA7CiAg
ICAgICB8ICAgICAgXn5+fn5+fn5+fn5+fn4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
