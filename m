Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AA21D9D15
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3C2487DE4;
	Tue, 19 May 2020 16:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Qkte9mYF9YI; Tue, 19 May 2020 16:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F74287E25;
	Tue, 19 May 2020 16:43:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C58941BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE81187872
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVfQUkGvGhRh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:43:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BAA8E8793F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:43:28 +0000 (UTC)
IronPort-SDR: uV28HNY9NcIvjeCjAr6mekvQov3NO52h3NYyMMrYb6+FBGKR0mFuzToUq4D58R/wW55NrIX1EO
 t2SFFPFodDvA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:43:28 -0700
IronPort-SDR: +FjcqJDHR9R/Re7HZp4dpz/9ikQyuz/ivoU0Gz9SJLda9voOJwIOIrIrnSEjBElu6sfgAx3xKC
 AdGvDuvCf8ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="466192281"
Received: from stputhen-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.5.127])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 09:43:27 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Po Liu <po.liu@nxp.com>, Michal Kubecek <mkubecek@suse.cz>,
 "netdev\@vger.kernel.org" <netdev@vger.kernel.org>
In-Reply-To: <VE1PR04MB6496D0B1507969D8474F78FC92B90@VE1PR04MB6496.eurprd04.prod.outlook.com>
References: <VE1PR04MB6496D0B1507969D8474F78FC92B90@VE1PR04MB6496.eurprd04.prod.outlook.com>
Date: Tue, 19 May 2020 09:43:27 -0700
Message-ID: <87lflnooy8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UG8gTGl1IDxwby5saXVAbnhwLmNvbT4gd3JpdGVzOgoKPiBIaSBWaW5pY2l1cywKPgo+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBWaW5pY2l1cyBDb3N0YSBHb21lcyA8dmlu
aWNpdXMuZ29tZXNAaW50ZWwuY29tPgo+PiBTZW50OiAyMDIw5bm0NeaciDE55pelIDM6MzQKPj4g
VG86IE1pY2hhbCBLdWJlY2VrIDxta3ViZWNla0BzdXNlLmN6PjsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZwo+PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGplZmZyZXkudC5r
aXJzaGVyQGludGVsLmNvbTsgVmxhZGltaXIKPj4gT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5Abnhw
LmNvbT47IFBvIExpdSA8cG8ubGl1QG54cC5jb20+OyBtLQo+PiBrYXJpY2hlcmkyQHRpLmNvbTsg
Sm9zZS5BYnJldUBzeW5vcHN5cy5jb20KPj4gU3ViamVjdDogUmU6IFtuZXh0LXF1ZXVlIFJGQyAw
LzRdIGV0aHRvb2w6IEFkZCBzdXBwb3J0IGZvciBmcmFtZQo+PiBwcmVlbXB0aW9uCj4+IAo+PiBI
aSwKPj4gCj4+IE1pY2hhbCBLdWJlY2VrIDxta3ViZWNla0BzdXNlLmN6PiB3cml0ZXM6Cj4+IAo+
PiA+IE9uIEZyaSwgTWF5IDE1LCAyMDIwIGF0IDA2OjI5OjQ0UE0gLTA3MDAsIFZpbmljaXVzIENv
c3RhIEdvbWVzIHdyb3RlOgo+PiA+PiBIaSwKPj4gPj4KPj4gPj4gVGhpcyBzZXJpZXMgYWRkcyBz
dXBwb3J0IGZvciBjb25maWd1cmluZyBmcmFtZSBwcmVlbXB0aW9uLCBhcyBkZWZpbmVkCj4+ID4+
IGJ5IElFRUUgODAyLjFRLTIwMTggKHByZXZpb3VzbHkgSUVFRSA4MDIuMVFidSkgYW5kIElFRUUg
ODAyLjNici4KPj4gPj4KPj4gPj4gRnJhbWUgcHJlZW1wdGlvbiBhbGxvd3MgYSBwYWNrZXQgZnJv
bSBhIGhpZ2hlciBwcmlvcml0eSBxdWV1ZSBtYXJrZWQKPj4gPj4gYXMgImV4cHJlc3MiIHRvIHBy
ZWVtcHQgYSBwYWNrZXQgZnJvbSBsb3dlciBwcmlvcml0eSBxdWV1ZSBtYXJrZWQgYXMKPj4gPj4g
InByZWVtcHRpYmxlIi4gVGhlIGlkZWEgaXMgdGhhdCB0aGlzIGNhbiBoZWxwIHJlZHVjZSB0aGUg
bGF0ZW5jeSBmb3IKPj4gPj4gaGlnaGVyIHByaW9yaXR5IHRyYWZmaWMuCj4+ID4+Cj4+ID4+IFBy
ZXZpb3VzbHksIHRoZSBwcm9wb3NlZCBpbnRlcmZhY2UgZm9yIGNvbmZpZ3VyaW5nIHRoZXNlIGZl
YXR1cmVzIHdhcwo+PiA+PiB1c2luZyB0aGUgcWRpc2MgbGF5ZXIuIEJ1dCBhcyB0aGlzIGlzIHZl
cnkgaGFyZHdhcmUgZGVwZW5kZW50IGFuZCBhbGwKPj4gPj4gdGhhdCBxZGlzYyBkaWQgd2FzIHBh
c3MgdGhlIGluZm9ybWF0aW9uIHRvIHRoZSBkcml2ZXIsIGl0IG1ha2VzIHNlbnNlCj4+ID4+IHRv
IGhhdmUgdGhpcyBpbiBldGh0b29sLgo+PiA+Pgo+PiA+PiBPbmUgZXhhbXBsZSwgZm9yIHJldHJp
ZXZpbmcgYW5kIHNldHRpbmcgdGhlIGNvbmZpZ3VyYXRpb246Cj4+ID4+Cj4+ID4+ICQgZXRodG9v
bCAkIHN1ZG8gLi9ldGh0b29sIC0tc2hvdy1mcmFtZS1wcmVlbXB0aW9uIGVucDNzMCBGcmFtZQo+
PiA+PiBwcmVlbXB0aW9uIHNldHRpbmdzIGZvciBlbnAzczA6Cj4+ID4+ICAgICAgc3VwcG9ydDog
c3VwcG9ydGVkCj4+ID4KPj4gPiBJTUhPIHdlIGRvbid0IG5lZWQgYSBzcGVjaWFsIGJvb2wgZm9y
IHRoaXMuIElJVUMgdGhpcyBpcyBub3QgYSBzdGF0ZQo+PiA+IGZsYWcgdGhhdCB3b3VsZCBjaGFu
Z2UgdmFsdWUgZm9yIGEgcGFydGljdWxhciBkZXZpY2U7IGVpdGhlciB0aGUKPj4gPiBkZXZpY2Ug
c3VwcG9ydHMgdGhlIGZlYXR1cmUgb3IgaXQgZG9lcyBub3QuIElmIGl0IGRvZXMgbm90LCB0aGUK
Pj4gPiBldGh0b29sX29wcyBjYWxsYmFja3Mgd291bGQgcmV0dXJuIC1FT1BOT1RTVVBQIChvciB3
b3VsZCBub3QgZXZlbgo+PiA+IGV4aXN0IGlmIHRoZSBkcml2ZXIgaGFzIG5vIHN1cHBvcnQpIGFu
ZCBldGh0b29sIHdvdWxkIHNheSBzby4KPj4gCj4+IChJIGtub3cgdGhhdCB0aGUgY29tbWVudHMg
YmVsb3cgb25seSBhcHBseSBpZiAiZXRodG9vbC13YXkiIGlzIHdoYXQncwo+PiBkZWNpZGVkKQo+
PiAKPj4gQ29vbC4gV2lsbCByZW1vdmUgdGhlIHN1cHBvcnRlZCBiaXQuCj4KPiBTaGFsbCBpdCBt
b3ZlIHRvIHRoZSBsaW5rX2tzZXR0aW5ncyBmaXhlZCBzdXBwb3J0ZWQgbGlzdD8gU28gY2FuIGJl
Cj4gY2hlY2tlZCBieSB0aGUgZXRodG9vbCAtayBjb21tYW5kLiBJIHVuZGVyc3RhbmQgdGhhdCB0
aGUgaHcgZmVhdHVyZXMKPiBhcmUgZW5jb3VyYWdlZCBsaXN0aW5nIGluIHRoZSBrc2V0dGluZ3Mu
CgpIYXZpbmcgaXQgaW4gbGlua19rc2V0dGluZ3MgbWlnaHQgbWFrZSBzZW5zZSwgdXNpbmcgc29t
ZXRoaW5nIGxpa2UKImZyYW1lLXByZWVtcHRpb246IG9mZiBbZml4ZWRdIiB0byBtZWFuICJub3Qg
c3VwcG9ydGVkIiBzb3VuZHMgbmljZS4KCj4gVGhlIHR3byBNQUNzIHNob3VsZCBhbGwgYmUgaW5p
dGlhbGl6ZWQgYXQgZHJpdmVyIHNpemUuIEFuZCBhbGwgZnJhbWUgcXVldWVzIHNob3VsZCBhc3Np
Z25lZCB0byB0aGUgZXhwcmVzcyBNQUMgYnkgZGVmYXVsdC4gVGhhdCBsb29rcyBhcyBub3JtYWwg
bW9kZSBjYWxsZWQgcHJlZW1wdGlvbiBkaXNhYmxlLgo+IEFueSBmcmFtZSBxdWV1ZXMgYXNzaWdu
ZWQgcGFzcyBwcmVlbXB0YWJsZSBNQUMgY291bGQgYmUgY2FsbGVkCj4gcHJlZW1wdGlvbiBlbmFi
bGUuCgpJZiB5b3UgbWVhbiB0byBoYXZlIGZyYW1lLXByZWVtcHRpb24gZW5hYmxlZCBieSBkZWZh
dWx0LCBJIHRoaW5rIGl0CnNob3VsZCBiZSBhIHBlci1kcml2ZXIgZGVjaXNpb24sIGFuZCBwcm9i
YWJseSBkaXNhYmxlZCBieSBkZWZhdWx0LCBhdApsZWFzdCBpbiB0aGUgYmVnaW5pbmc6IGZyYW1l
IHByZWVtcHRpb24gbWlnaHQgaW50ZXJhY3QgYmFkbHkgd2l0aCBvdGhlcgpmZWF0dXJlcywganVt
Ym8gZnJhbWVzIGFuZCBFRUUgY29tZSB0byBtaW5kLgoKCkNoZWVycywKLS0KVmluaWNpdXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
