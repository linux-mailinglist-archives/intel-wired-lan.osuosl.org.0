Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B40B48F5CA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jan 2022 08:55:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABE1A4098E;
	Sat, 15 Jan 2022 07:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mqo9H6FsLTrn; Sat, 15 Jan 2022 07:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DA0F4088B;
	Sat, 15 Jan 2022 07:55:03 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 789DF1BF3A0
 for <intel-wired-lan@osuosl.org>; Sat, 15 Jan 2022 07:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64D6F4088B
 for <intel-wired-lan@osuosl.org>; Sat, 15 Jan 2022 07:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgZwvXeRoJXi for <intel-wired-lan@osuosl.org>;
 Sat, 15 Jan 2022 07:54:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F2EE40591
 for <intel-wired-lan@osuosl.org>; Sat, 15 Jan 2022 07:54:56 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aed15.dynamic.kabel-deutschland.de
 [95.90.237.21])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 48A2661EA1BE3;
 Sat, 15 Jan 2022 08:54:53 +0100 (CET)
Message-ID: <434da5fe-62cb-7ad6-0cb7-e117c6f716eb@molgen.mpg.de>
Date: Sat, 15 Jan 2022 08:54:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20220114233839.67979-1-jesse.brandeburg@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220114233839.67979-1-jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix IPIP and SIT TSO
 offload
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZXNzZSwKCgpBbSAxNS4wMS4yMiB1bSAwMDozOCBzY2hyaWViIEplc3NlIEJyYW5kZWJ1
cmc6Cj4gVGhlIGRyaXZlciB3YXMgYXZvaWRpbmcgb2ZmbG9hZCBmb3IgSVBJUCAoYXQgbGVhc3Qp
IGZyYW1lcyBkdWUgdG8KPiBwYXJzaW5nIHRoZSBpbm5lciBoZWFkZXIgb2Zmc2V0cyBpbmNvcnJl
Y3RseSB3aGVuIHRyeWluZyB0byBjaGVjawo+IGxlbmd0aHMuCj4gCj4gVGhpcyBsZW5ndGggY2hl
Y2sgd29ya3MgZm9yIFZYTEFOIGZyYW1lcyBidXQgZmFpbHMgb24gSVBJUCBmcmFtZXMKPiBiZWNh
dXNlIHNrYl90cmFuc3BvcnRfb2Zmc2V0IHBvaW50cyB0byB0aGUgaW5uZXIgaGVhZGVyIGluIElQ
SVAKPiBmcmFtZXMsIHdoaWNoIG1lYW50IHRoZSBzdWJ0cmFjdGlvbiBvZiB0cmFuc3BvcnRfaGVh
ZGVyIGZyb20KPiBpbm5lcl9uZXR3b3JrX2hlYWRlciByZXR1cm5zIGEgbmVnYXRpdmUgdmFsdWUg
KC0yMCkuCj4gCj4gV2l0aCB0aGUgY29kZSBiZWZvcmUgdGhpcyBwYXRjaCwgZXZlcnl0aGluZyBj
b250aW51ZWQgdG8gd29yaywgYnV0IEdTTwo+IHdhcyBiZWluZyB1c2VkIHRvIHNlZ21lbnQsIGNh
dXNpbmcgdGhyb3VnaHB1dHMgb2YgMS41R2IvcyBwZXIgdGhyZWFkLgo+IEFmdGVyIHRoaXMgcGF0
Y2gsIHRocm91Z2hwdXQgaXMgbW9yZSBsaWtlIDEwR2IvcyBwZXIgdGhyZWFkIGZvciBJUElQCj4g
dHJhZmZpYy4KCldvdWxkIGJlIG5pY2UgdG8gcmVmbG93IGZvciA3NSBjaGFyYWN0ZXJzIHBlciBs
aW5lLgoKPiBGaXhlczogZTk0ZDQ0Nzg2NjkzICgiaWNlOiBJbXBsZW1lbnQgZmlsdGVyIHN5bmMs
IE5ETyBvcGVyYXRpb25zIGFuZCBidW1wIHZlcnNpb24iKQoKV293IHByZXNlbnQgc2luY2UgTGlu
dXggNC4xNy4KCj4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRl
YnVyZ0BpbnRlbC5jb20+Cj4gLS0KPiBUZXN0aW5nIEhpbnRzOiB0ZXN0IElQSVAgdHVubmVsIGFu
ZCBWWExBTiB0dW5uZWwsIGJvdGggc2hvdWxkIHVzZSBUU08uCgpEbyB5b3UgaGF2ZSBhIHNjcmlw
dCB0byB0ZXN0IGl0PyBXb3VsZCBiZSBuaWNlIHRvIGhhdmUgaW4gdGhlIGNvbW1pdCAKbWVzc2Fn
ZS4KCj4gLS0tCj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFuX3R4X3J4Lmgg
ICAgfCAgMSArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAg
ICAgfCAyNSArKysrKysrKysrKysrLS0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbGFuX3R4X3J4LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2xhbl90eF9yeC5oCj4gaW5kZXggZDk4MWRjNmYyMzIzLi44NWE2MTI4Mzhh
ODkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9sYW5f
dHhfcnguaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFuX3R4
X3J4LmgKPiBAQCAtNTY4LDYgKzU2OCw3IEBAIHN0cnVjdCBpY2VfdHhfY3R4X2Rlc2Mgewo+ICAg
CQkJKDB4M0ZGRkZVTEwgPDwgSUNFX1RYRF9DVFhfUVcxX1RTT19MRU5fUykKPiAgIAo+ICAgI2Rl
ZmluZSBJQ0VfVFhEX0NUWF9RVzFfTVNTX1MJNTAKPiArI2RlZmluZSBJQ0VfVFhEX0NUWF9NSU5f
TVNTCTY0Cj4gICAKPiAgICNkZWZpbmUgSUNFX1RYRF9DVFhfUVcxX1ZTSV9TCTUwCj4gICAjZGVm
aW5lIElDRV9UWERfQ1RYX1FXMV9WU0lfTQkoMHgzRkZVTEwgPDwgSUNFX1RYRF9DVFhfUVcxX1ZT
SV9TKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21h
aW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gaW5kZXgg
NzNjNjFjZGIwMzZmLi4xMDViNjJiNWU3Y2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYwo+IEBAIC04NTQwLDYgKzg1NDAsNyBAQCBpY2VfZmVhdHVyZXNf
Y2hlY2soc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiAgIAkJICAgc3RydWN0IG5ldF9kZXZpY2UgX19h
bHdheXNfdW51c2VkICpuZXRkZXYsCj4gICAJCSAgIG5ldGRldl9mZWF0dXJlc190IGZlYXR1cmVz
KQo+ICAgewo+ICsJYm9vbCBnc28gPSBza2JfaXNfZ3NvKHNrYik7CgpNYXliZSBuYW1lIGl0IGBp
c19nc29gLCBzbyBpdOKAmXMgY2xlYXIgaXTigJlzIGEgYm9vbGVhbiwgYW5kIG1ha2UgaXQgY29u
c3Q/Cgo+ICAgCXNpemVfdCBsZW47Cj4gICAKPiAgIAkvKiBObyBwb2ludCBpbiBkb2luZyBhbnkg
b2YgdGhpcyBpZiBuZWl0aGVyIGNoZWNrc3VtIG5vciBHU08gYXJlCj4gQEAgLTg1NTIsMjQgKzg1
NTMsMzIgQEAgaWNlX2ZlYXR1cmVzX2NoZWNrKHN0cnVjdCBza19idWZmICpza2IsCj4gICAJLyog
V2UgY2Fubm90IHN1cHBvcnQgR1NPIGlmIHRoZSBNU1MgaXMgZ29pbmcgdG8gYmUgbGVzcyB0aGFu
Cj4gICAJICogNjQgYnl0ZXMuIElmIGl0IGlzIHRoZW4gd2UgbmVlZCB0byBkcm9wIHN1cHBvcnQg
Zm9yIEdTTy4KPiAgIAkgKi8KPiAtCWlmIChza2JfaXNfZ3NvKHNrYikgJiYgKHNrYl9zaGluZm8o
c2tiKS0+Z3NvX3NpemUgPCA2NCkpCj4gKwlpZiAoZ3NvICYmIChza2Jfc2hpbmZvKHNrYiktPmdz
b19zaXplIDwgSUNFX1RYRF9DVFhfTUlOX01TUykpCj4gICAJCWZlYXR1cmVzICY9IH5ORVRJRl9G
X0dTT19NQVNLOwo+ICAgCj4gLQlsZW4gPSBza2JfbmV0d29ya19oZWFkZXIoc2tiKSAtIHNrYi0+
ZGF0YTsKPiArCWxlbiA9IHNrYl9uZXR3b3JrX29mZnNldChza2IpOwo+ICAgCWlmIChsZW4gPiBJ
Q0VfVFhEX01BQ0xFTl9NQVggfHwgbGVuICYgMHgxKQo+ICAgCQlnb3RvIG91dF9ybV9mZWF0dXJl
czsKPiAgIAo+IC0JbGVuID0gc2tiX3RyYW5zcG9ydF9oZWFkZXIoc2tiKSAtIHNrYl9uZXR3b3Jr
X2hlYWRlcihza2IpOwo+ICsJbGVuID0gc2tiX25ldHdvcmtfaGVhZGVyX2xlbihza2IpOwoKT2ss
IGZvciBuZXR3b3JraW5nIHVuZmFtaWxpYXIsIHRoaXMgaXMgcmVmYWN0b3JpbmcuCgo+ICAgCWlm
IChsZW4gPiBJQ0VfVFhEX0lQTEVOX01BWCB8fCBsZW4gJiAweDEpCj4gICAJCWdvdG8gb3V0X3Jt
X2ZlYXR1cmVzOwo+ICAgCj4gICAJaWYgKHNrYi0+ZW5jYXBzdWxhdGlvbikgewo+IC0JCWxlbiA9
IHNrYl9pbm5lcl9uZXR3b3JrX2hlYWRlcihza2IpIC0gc2tiX3RyYW5zcG9ydF9oZWFkZXIoc2ti
KTsKPiAtCQlpZiAobGVuID4gSUNFX1RYRF9MNExFTl9NQVggfHwgbGVuICYgMHgxKQo+IC0JCQln
b3RvIG91dF9ybV9mZWF0dXJlczsKPiArCQkvKiB0aGlzIG11c3Qgd29yayBmb3IgdnhsYW4gZnJh
bWVzIEFORCBJUElQL1NJVCBmcmFtZXMsIGFuZCBpbgo+ICsJCSAqIHRoZSBjYXNlIG9mIElQSVAg
ZnJhbWVzLCB0aGUgdHJhbnNwb3J0IGhlYWRlciBwb2ludGVyIGlzCj4gKwkJICogYWZ0ZXIgdGhl
IGlubmVyIGhlYWRlciEgU28gY2hlY2sgdG8gbWFrZSBzdXJlIHRoYXQgdGhpcwo+ICsJCSAqIGlz
IGEgR1JFIG9yIFVEUF9UVU5ORUwgZnJhbWUgYmVmb3JlIGRvaW5nIHRoYXQgbWF0aC4KPiArCQkg
Ki8KPiArCQlpZiAoZ3NvICYmIChza2Jfc2hpbmZvKHNrYiktPmdzb190eXBlICYKPiArCQkJICAg
IChTS0JfR1NPX0dSRSB8IFNLQl9HU09fVURQX1RVTk5FTCkpKSB7Cj4gKwkJCWxlbiA9IHNrYl9p
bm5lcl9uZXR3b3JrX2hlYWRlcihza2IpIC0KPiArCQkJICAgICAgc2tiX3RyYW5zcG9ydF9oZWFk
ZXIoc2tiKTsKCgo+ICsJCQlpZiAobGVuID4gSUNFX1RYRF9MNExFTl9NQVggfHwgbGVuICYgMHgx
KQo+ICsJCQkJZ290byBvdXRfcm1fZmVhdHVyZXM7Cj4gKwkJfQo+ICAgCj4gLQkJbGVuID0gc2ti
X2lubmVyX3RyYW5zcG9ydF9oZWFkZXIoc2tiKSAtCj4gLQkJICAgICAgc2tiX2lubmVyX25ldHdv
cmtfaGVhZGVyKHNrYik7Cj4gKwkJbGVuID0gc2tiX2lubmVyX25ldHdvcmtfaGVhZGVyX2xlbihz
a2IpOwoKSnVzdCByZWZhY3RvcmluZy4KCj4gICAJCWlmIChsZW4gPiBJQ0VfVFhEX0lQTEVOX01B
WCB8fCBsZW4gJiAweDEpCj4gICAJCQlnb3RvIG91dF9ybV9mZWF0dXJlczsKPiAgIAl9CgpOZXh0
IHRpbWUsIEnigJlkIHByZWZlciBhIHNlcGFyYXRlIHBhdGNoIGRvaW5nIHRoZSByZWZhY3Rvcmlu
Z3MuCgpSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4uCgoK
S2luZCByZWdhcmRzLAoKUGF1bAoKClBTOiBJcyB0aGlzIGFsc28gbmVlZGVkIGZvciBpNDBlIAoo
YGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmNgKT8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
