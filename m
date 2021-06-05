Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DBE39C659
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 08:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20EFD6075E;
	Sat,  5 Jun 2021 06:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qv04d_2QxjZ1; Sat,  5 Jun 2021 06:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C506C60795;
	Sat,  5 Jun 2021 06:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53F101BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 06:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41F7E83BAA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 06:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8P_8eScZZFP for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jun 2021 06:43:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B44ED83B95
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 06:43:01 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aeece.dynamic.kabel-deutschland.de
 [95.90.238.206])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6746C61E646D4;
 Sat,  5 Jun 2021 08:42:59 +0200 (CEST)
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
 <20210605002356.3996853-4-vinicius.gomes@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
Date: Sat, 5 Jun 2021 08:42:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210605002356.3996853-4-vinicius.gomes@intel.com>
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
 helgaas@kernel.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBWaW5pY2l1cywKCgpBbSAwNS4wNi4yMSB1bSAwMjoyMyBzY2hyaWViIFZpbmljaXVzIENv
c3RhIEdvbWVzOgo+IEVuYWJsZXMgUENJZSBQVE0gKFByZWNpc2lvbiBUaW1lIE1lYXN1cmVtZW50
KSBzdXBwb3J0IGluIHRoZSBpZ2MKPiBkcml2ZXIuIE5vdGlmaWVzIHRoZSBQQ0kgZGV2aWNlcyB0
aGF0IFBDSWUgUFRNIHNob3VsZCBiZSBlbmFibGVkLgo+IAo+IFBDSWUgUFRNIGlzIHNpbWlsYXIg
cHJvdG9jb2wgdG8gUFRQIChQcmVjaXNpb24gVGltZSBQcm90b2NvbCkgcnVubmluZwo+IGluIHRo
ZSBQQ0llIGZhYnJpYywgaXQgYWxsb3dzIGRldmljZXMgdG8gcmVwb3J0IHRpbWUgbWVhc3VyZW1l
bnRzIGZyb20KPiB0aGVpciBpbnRlcm5hbCBjbG9ja3MgYW5kIHRoZSBjb3JyZWxhdGlvbiB3aXRo
IHRoZSBQQ0llIHJvb3QgY2xvY2suCj4gCj4gVGhlIGkyMjUgTklDIGV4cG9zZXMgc29tZSByZWdp
c3RlcnMgdGhhdCBleHBvc2UgdGhvc2UgdGltZQo+IG1lYXN1cmVtZW50cywgdGhvc2UgcmVnaXN0
ZXJzIHdpbGwgYmUgdXNlZCwgaW4gbGF0ZXIgcGF0Y2hlcywgdG8KPiBpbXBsZW1lbnQgdGhlIFBU
UF9TWVNfT0ZGU0VUX1BSRUNJU0UgaW9jdGwoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaW5pY2l1
cyBDb3N0YSBHb21lcyA8dmluaWNpdXMuZ29tZXNAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCA2ICsrKysrKwo+ICAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfbWFpbi5jCj4gaW5kZXggYTA1ZTZkOGVjNjYwLi5mMjNkMDMwM2U1M2IgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+IEBAIC0xMiw2ICsx
Miw4IEBACj4gICAjaW5jbHVkZSA8bmV0L3BrdF9zY2hlZC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L2JwZl90cmFjZS5oPgo+ICAgI2luY2x1ZGUgPG5ldC94ZHBfc29ja19kcnYuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L3BjaS5oPgo+ICsKPiAgICNpbmNsdWRlIDxuZXQvaXB2Ni5oPgo+ICAgCj4gICAj
aW5jbHVkZSAiaWdjLmgiCj4gQEAgLTU4NjQsNiArNTg2NiwxMCBAQCBzdGF0aWMgaW50IGlnY19w
cm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiAgIAo+ICAgCXBjaV9lbmFibGVfcGNpZV9lcnJv
cl9yZXBvcnRpbmcocGRldik7Cj4gICAKPiArCWVyciA9IHBjaV9lbmFibGVfcHRtKHBkZXYsIE5V
TEwpOwo+ICsJaWYgKGVyciA8IDApCj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiUFRNIG5vdCBz
dXBwb3J0ZWRcbiIpOwo+ICsKClNvcnJ5LCBpZiBJIGFtIG1pc3Npbmcgc29tZXRoaW5nLCBidXQg
ZG8gYWxsIGRldmljZXMgc3VwcG9ydGVkIGJ5IHRoaXMgCmRyaXZlciBzdXBwb3J0IFBUTSBvciBv
bmx5IHRoZSBpMjI1IE5JQz8gSW4gdGhhdCBjYXNlLCBpdCB3b3VsZG7igJl0IGJlIGFuIAplcnJv
ciBmb3IgYSBkZXZpY2Ugbm90IHN1cHBvcnRpbmcgUFRNLCB3b3VsZCBpdD8KCj4gICAJcGNpX3Nl
dF9tYXN0ZXIocGRldik7Cj4gICAKPiAgIAllcnIgPSAtRU5PTUVNOwo+IAoKCktpbmQgcmVnYXJk
cywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
