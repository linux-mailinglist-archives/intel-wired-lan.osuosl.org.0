Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7013A0C5C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 08:24:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6C79404A6;
	Wed,  9 Jun 2021 06:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13Vr3eusdJxp; Wed,  9 Jun 2021 06:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A89684048F;
	Wed,  9 Jun 2021 06:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F08E1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 06:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D8E0839B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 06:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22ZipKb0MYxd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 06:24:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0403834B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 06:24:21 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aef16.dynamic.kabel-deutschland.de
 [95.90.239.22])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6992161E6476C;
 Wed,  9 Jun 2021 08:24:18 +0200 (CEST)
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
 <20210605002356.3996853-4-vinicius.gomes@intel.com>
 <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
 <87sg1sw56h.fsf@vcostago-mobl2.amr.corp.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <939b8042-a313-47db-43d9-ea37e95b724b@molgen.mpg.de>
Date: Wed, 9 Jun 2021 08:24:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87sg1sw56h.fsf@vcostago-mobl2.amr.corp.intel.com>
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

RGVhciBWaW5pY2l1cywKCgpBbSAwOC4wNi4yMSB1bSAyMTowMiBzY2hyaWViIFZpbmljaXVzIENv
c3RhIEdvbWVzOgoKPiBQYXVsIE1lbnplbCB3cml0ZXM6Cgo+PiBBbSAwNS4wNi4yMSB1bSAwMjoy
MyBzY2hyaWViIFZpbmljaXVzIENvc3RhIEdvbWVzOgo+Pj4gRW5hYmxlcyBQQ0llIFBUTSAoUHJl
Y2lzaW9uIFRpbWUgTWVhc3VyZW1lbnQpIHN1cHBvcnQgaW4gdGhlIGlnYwo+Pj4gZHJpdmVyLiBO
b3RpZmllcyB0aGUgUENJIGRldmljZXMgdGhhdCBQQ0llIFBUTSBzaG91bGQgYmUgZW5hYmxlZC4K
Pj4+Cj4+PiBQQ0llIFBUTSBpcyBzaW1pbGFyIHByb3RvY29sIHRvIFBUUCAoUHJlY2lzaW9uIFRp
bWUgUHJvdG9jb2wpIHJ1bm5pbmcKPj4+IGluIHRoZSBQQ0llIGZhYnJpYywgaXQgYWxsb3dzIGRl
dmljZXMgdG8gcmVwb3J0IHRpbWUgbWVhc3VyZW1lbnRzIGZyb20KPj4+IHRoZWlyIGludGVybmFs
IGNsb2NrcyBhbmQgdGhlIGNvcnJlbGF0aW9uIHdpdGggdGhlIFBDSWUgcm9vdCBjbG9jay4KPj4+
Cj4+PiBUaGUgaTIyNSBOSUMgZXhwb3NlcyBzb21lIHJlZ2lzdGVycyB0aGF0IGV4cG9zZSB0aG9z
ZSB0aW1lCj4+PiBtZWFzdXJlbWVudHMsIHRob3NlIHJlZ2lzdGVycyB3aWxsIGJlIHVzZWQsIGlu
IGxhdGVyIHBhdGNoZXMsIHRvCj4+PiBpbXBsZW1lbnQgdGhlIFBUUF9TWVNfT0ZGU0VUX1BSRUNJ
U0UgaW9jdGwoKS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBWaW5pY2l1cyBDb3N0YSBHb21lcyA8
dmluaWNpdXMuZ29tZXNAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDYgKysrKysrCj4+PiAgICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19tYWluLmMKPj4+IGluZGV4IGEwNWU2ZDhlYzY2MC4uZjIzZDAzMDNlNTNiIDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4+PiBAQCAtMTIs
NiArMTIsOCBAQAo+Pj4gICAgI2luY2x1ZGUgPG5ldC9wa3Rfc2NoZWQuaD4KPj4+ICAgICNpbmNs
dWRlIDxsaW51eC9icGZfdHJhY2UuaD4KPj4+ICAgICNpbmNsdWRlIDxuZXQveGRwX3NvY2tfZHJ2
Lmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L3BjaS5oPgo+Pj4gKwo+Pj4gICAgI2luY2x1ZGUgPG5l
dC9pcHY2Lmg+Cj4+PiAgICAKPj4+ICAgICNpbmNsdWRlICJpZ2MuaCIKPj4+IEBAIC01ODY0LDYg
KzU4NjYsMTAgQEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4+
PiAgICAKPj4+ICAgIAlwY2lfZW5hYmxlX3BjaWVfZXJyb3JfcmVwb3J0aW5nKHBkZXYpOwo+Pj4g
ICAgCj4+PiArCWVyciA9IHBjaV9lbmFibGVfcHRtKHBkZXYsIE5VTEwpOwo+Pj4gKwlpZiAoZXJy
IDwgMCkKPj4+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgIlBUTSBub3Qgc3VwcG9ydGVkXG4iKTsK
Pj4+ICsKPj4KPj4gU29ycnksIGlmIEkgYW0gbWlzc2luZyBzb21ldGhpbmcsIGJ1dCBkbyBhbGwg
ZGV2aWNlcyBzdXBwb3J0ZWQgYnkgdGhpcwo+PiBkcml2ZXIgc3VwcG9ydCBQVE0gb3Igb25seSB0
aGUgaTIyNSBOSUM/IEluIHRoYXQgY2FzZSwgaXQgd291bGRu4oCZdCBiZSBhbgo+PiBlcnJvciBm
b3IgYSBkZXZpY2Ugbm90IHN1cHBvcnRpbmcgUFRNLCB3b3VsZCBpdD8KPiAKPiBUaGF0IHdhcyBh
IHZlcnkgZ29vZCBxdWVzdGlvbi4gSSBoYWQgdG8gdGFsayB3aXRoIHRoZSBoYXJkd2FyZSBmb2xr
cy4KPiBBbGwgdGhlIGRldmljZXMgc3VwcG9ydGVkIGJ5IHRoZSBpZ2MgZHJpdmVyIHNob3VsZCBz
dXBwb3J0IFBUTS4KClRoYW5rIHlvdSBmb3IgY2hlY2tpbmcgdGhhdCwgdGhhdCBpcyB2YWx1YWJs
ZSBpbmZvcm1hdGlvbi4KCj4gQW5kIGp1c3QgdG8gYmUgY2xlYXIsIHRoZSByZWFzb24gdGhhdCBJ
IGFtIG5vdCByZXR1cm5pbmcgYW4gZXJyb3IgaGVyZQo+IGlzIHRoYXQgUFRNIGNvdWxkIG5vdCBi
ZSBzdXBwb3J0ZWQgYnkgdGhlIGhvc3Qgc3lzdGVtICh0aGluayBQQ0kKPiBjb250cm9sbGVyKS4K
CkkganVzdCBjaGVja2VkIGBwY2lfZW5hYmxlX3B0bSgpYCBhbmQgb24gc3VjY2VzcyBpdCBjYWxs
cyAKYHBjaV9wdG1faW5mbygpYCBsb2dnaW5nIGEgbWVzc2FnZToKCglwY2lfaW5mbyhkZXYsICJQ
VE0gZW5hYmxlZCVzLCAlcyBncmFudWxhcml0eVxuIiwKCQkgZGV2LT5wdG1fcm9vdCA/ICIgKHJv
b3QpIiA6ICIiLCBjbG9ja19kZXNjKTsKCldhcyB0aGF0IHByZXNlbnQgb24geW91ciBzeXN0ZW0g
d2l0aCB5b3VyIHBhdGNoPyBQbGVhc2UgYWRkIHRoYXQgdG8gdGhlIApjb21taXQgbWVzc2FnZS4K
ClJlZ2FyZGluZyBteSBjb21tZW50LCBJIGRpZCBub3QgbWVhbiByZXR1cm5pbmcgYW4gZXJyb3Ig
YnV0IHRoZSBsb2cgCipsZXZlbCogb2YgdGhlIG1lc3NhZ2UuIFNvLCBgZG1lc2cgLS1sZXZlbCBl
cnJgIHdvdWxkIHNob3cgdGhhdCBtZXNzYWdlLiAKQnV0IGlmIHRoZXJlIGFyZSBQQ0kgY29udHJv
bGxlcnMgbm90IHN1cHBvcnRpbmcgdGhhdCwgaXTigJlzIG5vdCBhbiBlcnJvciwgCmJ1dCBhIHdh
cm5pbmcgYXQgbW9zdC4gU28sIEnigJlkIHVzZToKCglkZXZfd2FybigmcGRldi0+ZGV2LCAiUFRN
IG5vdCBzdXBwb3J0ZWQgYnkgUENJIGJ1cy9jb250cm9sbGVyIAoocGNpX2VuYWJsZV9wdG0oKSBm
YWlsZWQpXG4iKTsKCj4+PiAgICAJcGNpX3NldF9tYXN0ZXIocGRldik7Cj4+PiAgICAKPj4+ICAg
IAllcnIgPSAtRU5PTUVNOwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
