Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC0B2ECCEB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 10:37:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD3BC204E6;
	Thu,  7 Jan 2021 09:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 025ypF3C2SCI; Thu,  7 Jan 2021 09:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B820204D8;
	Thu,  7 Jan 2021 09:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9550E1BF403
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 09:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C9BF204D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 09:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hv4JpRyeAj6B for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jan 2021 09:37:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C8DA204D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 09:37:11 +0000 (UTC)
IronPort-SDR: 8npgn9Va+VjaKByXsqjK/2CN6tDVaZksNV2WYhTXLVtrlsArAArFP+tNAblUC6azLBrz5cZYhE
 J/kNnxZflT+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="195957358"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="195957358"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 01:37:10 -0800
IronPort-SDR: ksr8sKSCpgtFgRg/KwXLlaEMP0tpRyKsKzEa+AjeF6RnL9jYwKTJpFdce2ocKouBJ56DZMuEck
 jcBV6YTYsvbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="361910819"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 07 Jan 2021 01:37:09 -0800
Date: Thu, 7 Jan 2021 10:28:28 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20210107092828.GA30484@ranger.igk.intel.com>
References: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
 <e983a9eb-3d87-8fb4-3221-1f012e04d5a6@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e983a9eb-3d87-8fb4-3221-1f012e04d5a6@molgen.mpg.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKYW4gMDYsIDIwMjEgYXQgMTA6MzY6MjNBTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBFcnlrLAoKRXJ5aywgeW91IHN0aWxsIGhhdmVuJ3Qgc3BlY2lmaWVkIHRoZSB0
cmVlIHRoYXQgdGhpcyBwYXRjaCBpcyBzdXBwb3NlZCB0bwpsYW5kIChuaXQgLSBpdCB3aWxsIGJl
IG5ldC1uZXh0IDopKQoKPiAKPiAKPiBBbSAxOC4xMi4yMCB1bSAxNzo1MiBzY2hyaWViIEVyeWsg
UnliYWs6Cj4gCj4gTWF5YmUgYSBzaG9ydGVyIHN1bW1hcnk6Cj4gCj4gPiBpNDBlOiBMb2cgZXJy
b3IgZm9yIG92ZXJzaXplZCBNVFUgb24gZGV2aWNlCj4gCj4gPiBXaGVuIGF0dGVtcHRpbmcgdG8g
bGluayBYRFAgcHJvZyB3aXRoIE1UVSBsYXJnZXIgdGhhbiBzdXBwb3J0ZWQsCj4gPiB1c2VyIGlz
IG5vdCBpbmZvcm1lZCB3aHkgWERQIGxpbmtpbmcgZmFpbHMuIEFkZGluZyBwcm9wZXIKPiAKPiBO
aXQ6IEltcGVyYXRpdmUgbW9vZCBjb3VsZCBiZSB1c2VkIGluc3RlYWQ6IEFkZCBwcm9wZXIg4oCm
CgorMSwgdGhhbmtzIFBhdWwhCgo+IAo+ID4gZXJyb3IgbWVzc2FnZS4KPiAKPiBQZXJzb25hbGx5
LCB3aGVuIGFkZGluZyBuZXcgbG9nIG1lc3NhZ2UsIEkgZmluZCBpdCBuaWNlIHRvIHNlZSB0aGVt
IGluIHRoZQo+IGNvbW1pdCBtZXNzYWdlIHRvby4KPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEFya2Fk
aXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBFcnlrIFJ5YmFrIDxlcnlrLnJvY2gucnliYWtAaW50ZWwuY29tPgo+ID4gLS0t
Cj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCAxMSAr
KysrKysrLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMKPiA+IGluZGV4IDYzMDI1OGUuLjRmZGVmMDAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gPiBAQCAtMTI5MzMsOSArMTI5MzMs
MTAgQEAgc3RhdGljIG5ldGRldl9mZWF0dXJlc190IGk0MGVfZmVhdHVyZXNfY2hlY2soc3RydWN0
IHNrX2J1ZmYgKnNrYiwKPiA+ICAgICogaTQwZV94ZHBfc2V0dXAgLSBhZGQvcmVtb3ZlIGFuIFhE
UCBwcm9ncmFtCj4gPiAgICAqIEB2c2k6IFZTSSB0byBjaGFuZ2VkCj4gPiAgICAqIEBwcm9nOiBY
RFAgcHJvZ3JhbQo+ID4gKyAqIEBleHRhY2s6IG5ldGxpbmsgZXh0ZW5kZWQgYWNrCj4gPiAgICAq
Ki8KPiA+IC1zdGF0aWMgaW50IGk0MGVfeGRwX3NldHVwKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLAo+
ID4gLQkJCSAgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+ID4gK3N0YXRpYyBpbnQgaTQwZV94ZHBf
c2V0dXAoc3RydWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCBicGZfcHJvZyAqcHJvZywKPiA+ICsJ
CQkgIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykKPiA+ICAgewo+ID4gICAJaW50IGZy
YW1lX3NpemUgPSB2c2ktPm5ldGRldi0+bXR1ICsgRVRIX0hMRU4gKyBFVEhfRkNTX0xFTiArIFZM
QU5fSExFTjsKPiA+ICAgCXN0cnVjdCBpNDBlX3BmICpwZiA9IHZzaS0+YmFjazsKPiA+IEBAIC0x
Mjk0NCw4ICsxMjk0NSwxMCBAQCBzdGF0aWMgaW50IGk0MGVfeGRwX3NldHVwKHN0cnVjdCBpNDBl
X3ZzaSAqdnNpLAo+ID4gICAJaW50IGk7Cj4gPiAgIAkvKiBEb24ndCBhbGxvdyBmcmFtZXMgdGhh
dCBzcGFuIG92ZXIgbXVsdGlwbGUgYnVmZmVycyAqLwo+ID4gLQlpZiAoZnJhbWVfc2l6ZSA+IHZz
aS0+cnhfYnVmX2xlbikKPiA+ICsJaWYgKGZyYW1lX3NpemUgPiB2c2ktPnJ4X2J1Zl9sZW4pIHsK
PiA+ICsJCU5MX1NFVF9FUlJfTVNHX01PRChleHRhY2ssICJNVFUgdG9vIGxhcmdlIHRvIGVuYWJs
ZSBYRFAiKTsKPiAKPiBDb3VsZCB5b3UgcGxlYXNlIGFsc28gcHJpbnQgb3V0IGJvdGggdmFsdWVz
PyBNYXliZSAodW5zdXJlIGFib3V0IHRoZSB1bml0cyk6Cj4gCj4gICAgTVRVIG9mICV1IGJ5dGVz
KD8pIHRvbyBsYXJnZSB0byBlbmFibGUgWERQIChtYXhpbXVtOiAldSBieXRlcykKCk5vLCBleHRh
Y2sgZG9lcyBub3Qgc3VwcG9ydCBwcmludGYtbGlrZSBmb3JtYXQgc3BlY2lmaWVycywgdW5mb3J0
dW5hdGVseQo6PAoKTWF5YmUgd2UgY2FuIGRvdWJsZSB0aGUgbWVzc2FnZSBhbmQgaGF2ZSBhIHNl
cGFyYXRlIGRldl9pbmZvKCkgaW4gaGVyZT8KCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBh
dWwKPiAKPiAKPiA+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiA+ICsJfQo+ID4gICAJLyogV2hlbiB0
dXJuaW5nIFhEUCBvbi0+b2ZmL29mZi0+b24gd2UgcmVzZXQgYW5kIHJlYnVpbGQgdGhlIHJpbmdz
LiAqLwo+ID4gICAJbmVlZF9yZXNldCA9IChpNDBlX2VuYWJsZWRfeGRwX3ZzaSh2c2kpICE9ICEh
cHJvZyk7Cj4gPiBAQCAtMTMyNTQsNyArMTMyNTcsNyBAQCBzdGF0aWMgaW50IGk0MGVfeGRwKHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4gPiAgIAlzd2l0Y2ggKHhkcC0+Y29tbWFuZCkgewo+ID4g
ICAJY2FzZSBYRFBfU0VUVVBfUFJPRzoKPiA+IC0JCXJldHVybiBpNDBlX3hkcF9zZXR1cCh2c2ks
IHhkcC0+cHJvZyk7Cj4gPiArCQlyZXR1cm4gaTQwZV94ZHBfc2V0dXAodnNpLCB4ZHAtPnByb2cs
IHhkcC0+ZXh0YWNrKTsKPiA+ICAgCWNhc2UgWERQX1NFVFVQX1hTS19QT09MOgo+ID4gICAJCXJl
dHVybiBpNDBlX3hza19wb29sX3NldHVwKHZzaSwgeGRwLT54c2sucG9vbCwKPiA+ICAgCQkJCQkg
ICB4ZHAtPnhzay5xdWV1ZV9pZCk7Cj4gPiAKPiA+IGJhc2UtY29tbWl0OiBkMmMyYmJhZDkzYjgx
ODAyMDY1N2E4MjEyMWExNDdlOWFjZTEyMzBkCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
