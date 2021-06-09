Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 593213A1EF9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 23:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D562F60A52;
	Wed,  9 Jun 2021 21:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 03Qa7BtaG14O; Wed,  9 Jun 2021 21:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D30F060A46;
	Wed,  9 Jun 2021 21:26:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D92091BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 21:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3890405C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 21:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5NugO7rCwN0K for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 21:26:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF2EE405B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 21:26:12 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae88d.dynamic.kabel-deutschland.de
 [95.90.232.141])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7651261E646D4;
 Wed,  9 Jun 2021 23:26:09 +0200 (CEST)
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
 <20210605002356.3996853-4-vinicius.gomes@intel.com>
 <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
 <87sg1sw56h.fsf@vcostago-mobl2.amr.corp.intel.com>
 <939b8042-a313-47db-43d9-ea37e95b724b@molgen.mpg.de>
 <87r1havm15.fsf@vcostago-mobl2.amr.corp.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <d8740484-3879-1c13-65ce-82d3e71cb96c@molgen.mpg.de>
Date: Wed, 9 Jun 2021 23:26:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87r1havm15.fsf@vcostago-mobl2.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v5 3/4] igc: Enable PCIe PTM
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 helgaas@kernel.org, netdev@vger.kernel.org, bhelgaas@google.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBWaW5pY2l1cywKCgpBbSAwOS4wNi4yMSB1bSAyMjowOCBzY2hyaWViIFZpbmljaXVzIENv
c3RhIEdvbWVzOgo+IFBhdWwgTWVuemVsIHdyaXRlczoKCj4+IEFtIDA4LjA2LjIxIHVtIDIxOjAy
IHNjaHJpZWIgVmluaWNpdXMgQ29zdGEgR29tZXM6Cj4+Cj4+PiBQYXVsIE1lbnplbCB3cml0ZXM6
Cj4+Cj4+Pj4gQW0gMDUuMDYuMjEgdW0gMDI6MjMgc2NocmllYiBWaW5pY2l1cyBDb3N0YSBHb21l
czoKPj4+Pj4gRW5hYmxlcyBQQ0llIFBUTSAoUHJlY2lzaW9uIFRpbWUgTWVhc3VyZW1lbnQpIHN1
cHBvcnQgaW4gdGhlIGlnYwo+Pj4+PiBkcml2ZXIuIE5vdGlmaWVzIHRoZSBQQ0kgZGV2aWNlcyB0
aGF0IFBDSWUgUFRNIHNob3VsZCBiZSBlbmFibGVkLgo+Pj4+Pgo+Pj4+PiBQQ0llIFBUTSBpcyBz
aW1pbGFyIHByb3RvY29sIHRvIFBUUCAoUHJlY2lzaW9uIFRpbWUgUHJvdG9jb2wpIHJ1bm5pbmcK
Pj4+Pj4gaW4gdGhlIFBDSWUgZmFicmljLCBpdCBhbGxvd3MgZGV2aWNlcyB0byByZXBvcnQgdGlt
ZSBtZWFzdXJlbWVudHMgZnJvbQo+Pj4+PiB0aGVpciBpbnRlcm5hbCBjbG9ja3MgYW5kIHRoZSBj
b3JyZWxhdGlvbiB3aXRoIHRoZSBQQ0llIHJvb3QgY2xvY2suCj4+Pj4+Cj4+Pj4+IFRoZSBpMjI1
IE5JQyBleHBvc2VzIHNvbWUgcmVnaXN0ZXJzIHRoYXQgZXhwb3NlIHRob3NlIHRpbWUKPj4+Pj4g
bWVhc3VyZW1lbnRzLCB0aG9zZSByZWdpc3RlcnMgd2lsbCBiZSB1c2VkLCBpbiBsYXRlciBwYXRj
aGVzLCB0bwo+Pj4+PiBpbXBsZW1lbnQgdGhlIFBUUF9TWVNfT0ZGU0VUX1BSRUNJU0UgaW9jdGwo
KS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogVmluaWNpdXMgQ29zdGEgR29tZXMgPHZpbmlj
aXVzLmdvbWVzQGludGVsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDYgKysrKysrCj4+Pj4+ICAgICAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFpbi5jCj4+Pj4+IGluZGV4IGEwNWU2ZDhlYzY2MC4uZjIzZDAzMDNlNTNi
IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21h
aW4uYwo+Pj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4u
Ywo+Pj4+PiBAQCAtMTIsNiArMTIsOCBAQAo+Pj4+PiAgICAgI2luY2x1ZGUgPG5ldC9wa3Rfc2No
ZWQuaD4KPj4+Pj4gICAgICNpbmNsdWRlIDxsaW51eC9icGZfdHJhY2UuaD4KPj4+Pj4gICAgICNp
bmNsdWRlIDxuZXQveGRwX3NvY2tfZHJ2Lmg+Cj4+Pj4+ICsjaW5jbHVkZSA8bGludXgvcGNpLmg+
Cj4+Pj4+ICsKPj4+Pj4gICAgICNpbmNsdWRlIDxuZXQvaXB2Ni5oPgo+Pj4+PiAgICAgCj4+Pj4+
ICAgICAjaW5jbHVkZSAiaWdjLmgiCj4+Pj4+IEBAIC01ODY0LDYgKzU4NjYsMTAgQEAgc3RhdGlj
IGludCBpZ2NfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4+Pj4+ICAgICAKPj4+Pj4gICAg
IAlwY2lfZW5hYmxlX3BjaWVfZXJyb3JfcmVwb3J0aW5nKHBkZXYpOwo+Pj4+PiAgICAgCj4+Pj4+
ICsJZXJyID0gcGNpX2VuYWJsZV9wdG0ocGRldiwgTlVMTCk7Cj4+Pj4+ICsJaWYgKGVyciA8IDAp
Cj4+Pj4+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgIlBUTSBub3Qgc3VwcG9ydGVkXG4iKTsKPj4+
Pj4gKwo+Pj4+Cj4+Pj4gU29ycnksIGlmIEkgYW0gbWlzc2luZyBzb21ldGhpbmcsIGJ1dCBkbyBh
bGwgZGV2aWNlcyBzdXBwb3J0ZWQgYnkgdGhpcwo+Pj4+IGRyaXZlciBzdXBwb3J0IFBUTSBvciBv
bmx5IHRoZSBpMjI1IE5JQz8gSW4gdGhhdCBjYXNlLCBpdCB3b3VsZG7igJl0IGJlIGFuCj4+Pj4g
ZXJyb3IgZm9yIGEgZGV2aWNlIG5vdCBzdXBwb3J0aW5nIFBUTSwgd291bGQgaXQ/Cj4+Pgo+Pj4g
VGhhdCB3YXMgYSB2ZXJ5IGdvb2QgcXVlc3Rpb24uIEkgaGFkIHRvIHRhbGsgd2l0aCB0aGUgaGFy
ZHdhcmUgZm9sa3MuCj4+PiBBbGwgdGhlIGRldmljZXMgc3VwcG9ydGVkIGJ5IHRoZSBpZ2MgZHJp
dmVyIHNob3VsZCBzdXBwb3J0IFBUTS4KPj4KPj4gVGhhbmsgeW91IGZvciBjaGVja2luZyB0aGF0
LCB0aGF0IGlzIHZhbHVhYmxlIGluZm9ybWF0aW9uLgo+Pgo+Pj4gQW5kIGp1c3QgdG8gYmUgY2xl
YXIsIHRoZSByZWFzb24gdGhhdCBJIGFtIG5vdCByZXR1cm5pbmcgYW4gZXJyb3IgaGVyZQo+Pj4g
aXMgdGhhdCBQVE0gY291bGQgbm90IGJlIHN1cHBvcnRlZCBieSB0aGUgaG9zdCBzeXN0ZW0gKHRo
aW5rIFBDSQo+Pj4gY29udHJvbGxlcikuCj4+Cj4+IEkganVzdCBjaGVja2VkIGBwY2lfZW5hYmxl
X3B0bSgpYCBhbmQgb24gc3VjY2VzcyBpdCBjYWxscwo+PiBgcGNpX3B0bV9pbmZvKClgIGxvZ2dp
bmcgYSBtZXNzYWdlOgo+Pgo+PiAJcGNpX2luZm8oZGV2LCAiUFRNIGVuYWJsZWQlcywgJXMgZ3Jh
bnVsYXJpdHlcbiIsCj4+IAkJIGRldi0+cHRtX3Jvb3QgPyAiIChyb290KSIgOiAiIiwgY2xvY2tf
ZGVzYyk7Cj4+Cj4+IFdhcyB0aGF0IHByZXNlbnQgb24geW91ciBzeXN0ZW0gd2l0aCB5b3VyIHBh
dGNoPyBQbGVhc2UgYWRkIHRoYXQgdG8gdGhlCj4+IGNvbW1pdCBtZXNzYWdlLgo+IAo+IFllcywg
d2l0aCBteSBwYXRjaGVzIGFwcGxpZWQgSSBjYW4gc2VlIHRoaXMgbWVzc2FnZSBvbiBteSBzeXN0
ZW1zLgo+IAo+IFN1cmUsIHdpbGwgYWRkIHRoaXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLgo+IAo+
PiBSZWdhcmRpbmcgbXkgY29tbWVudCwgSSBkaWQgbm90IG1lYW4gcmV0dXJuaW5nIGFuIGVycm9y
IGJ1dCB0aGUgbG9nCj4+ICpsZXZlbCogb2YgdGhlIG1lc3NhZ2UuIFNvLCBgZG1lc2cgLS1sZXZl
bCBlcnJgIHdvdWxkIHNob3cgdGhhdCBtZXNzYWdlLgo+PiBCdXQgaWYgdGhlcmUgYXJlIFBDSSBj
b250cm9sbGVycyBub3Qgc3VwcG9ydGluZyB0aGF0LCBpdOKAmXMgbm90IGFuIGVycm9yLAo+PiBi
dXQgYSB3YXJuaW5nIGF0IG1vc3QuIFNvLCBJ4oCZZCB1c2U6Cj4+Cj4+IAlkZXZfd2FybigmcGRl
di0+ZGV2LCAiUFRNIG5vdCBzdXBwb3J0ZWQgYnkgUENJIGJ1cy9jb250cm9sbGVyCj4+IChwY2lf
ZW5hYmxlX3B0bSgpIGZhaWxlZClcbiIpOwo+IAo+IEkgd2lsbCB1c2UgeW91IHN1Z2dlc3Rpb24g
Zm9yIHRoZSBtZXNzYWdlLCBidXQgSSB0aGluayB0aGF0IHdhcm4gaXMgYQo+IGJpdCB0b28gbXVj
aCwgaW5mbyBvciBub3RpY2Ugc2VlbSB0byBiZSBiZXR0ZXIuCgpJIGRvIG5vdCBrbm93LCBpZiBt
b2Rlcm4gUENJKGUpKD8pIGNvbnRyb2xsZXJzIG5vcm1hbGx5IHN1cHBvcnQgUFRNIG9yIApub3Qu
IElmIHJlY2VudCBjb250cm9sbGVycyBzaG91bGQgc3VwcG9ydCBpdCwgdGhlbiBhIHdhcm5pbmcg
d291bGQgYmUgCndhcnJhbnRlZCwgb3RoZXJ3aXNlIGEgbm90aWNlLgoKCktpbmQgcmVnYXJkcywK
ClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
