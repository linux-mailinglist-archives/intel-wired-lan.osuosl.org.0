Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520573A1DF7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 22:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF97540275;
	Wed,  9 Jun 2021 20:08:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJdzvWjtTu1s; Wed,  9 Jun 2021 20:08:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9578401ED;
	Wed,  9 Jun 2021 20:08:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFE721BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 20:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DADDB608FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 20:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9V4HTW_e6T0K for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 20:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E6A360844
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 20:08:39 +0000 (UTC)
IronPort-SDR: FIzPdMzJS6idnPt2FGJJYEvtKSd7uZ8EtAvBmKHvllfcMSEQq5HBgnrnz8ieJLhTxnaOOmo2VB
 AzSQhF7dCffw==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="202133387"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="202133387"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 13:08:24 -0700
IronPort-SDR: 3TGz301bugDjWwRg6Bww+l0yeV9Yscc3z+HOtZkb450U+OKLqmtKOUM21zN9lUth5+S81ZObjc
 h+CjizKW+QZA==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="482519863"
Received: from kotikala-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.25.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 13:08:24 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <939b8042-a313-47db-43d9-ea37e95b724b@molgen.mpg.de>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
 <20210605002356.3996853-4-vinicius.gomes@intel.com>
 <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
 <87sg1sw56h.fsf@vcostago-mobl2.amr.corp.intel.com>
 <939b8042-a313-47db-43d9-ea37e95b724b@molgen.mpg.de>
Date: Wed, 09 Jun 2021 13:08:22 -0700
Message-ID: <87r1havm15.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gd3JpdGVzOgoKPiBEZWFyIFZpbmlj
aXVzLAo+Cj4KPiBBbSAwOC4wNi4yMSB1bSAyMTowMiBzY2hyaWViIFZpbmljaXVzIENvc3RhIEdv
bWVzOgo+Cj4+IFBhdWwgTWVuemVsIHdyaXRlczoKPgo+Pj4gQW0gMDUuMDYuMjEgdW0gMDI6MjMg
c2NocmllYiBWaW5pY2l1cyBDb3N0YSBHb21lczoKPj4+PiBFbmFibGVzIFBDSWUgUFRNIChQcmVj
aXNpb24gVGltZSBNZWFzdXJlbWVudCkgc3VwcG9ydCBpbiB0aGUgaWdjCj4+Pj4gZHJpdmVyLiBO
b3RpZmllcyB0aGUgUENJIGRldmljZXMgdGhhdCBQQ0llIFBUTSBzaG91bGQgYmUgZW5hYmxlZC4K
Pj4+Pgo+Pj4+IFBDSWUgUFRNIGlzIHNpbWlsYXIgcHJvdG9jb2wgdG8gUFRQIChQcmVjaXNpb24g
VGltZSBQcm90b2NvbCkgcnVubmluZwo+Pj4+IGluIHRoZSBQQ0llIGZhYnJpYywgaXQgYWxsb3dz
IGRldmljZXMgdG8gcmVwb3J0IHRpbWUgbWVhc3VyZW1lbnRzIGZyb20KPj4+PiB0aGVpciBpbnRl
cm5hbCBjbG9ja3MgYW5kIHRoZSBjb3JyZWxhdGlvbiB3aXRoIHRoZSBQQ0llIHJvb3QgY2xvY2su
Cj4+Pj4KPj4+PiBUaGUgaTIyNSBOSUMgZXhwb3NlcyBzb21lIHJlZ2lzdGVycyB0aGF0IGV4cG9z
ZSB0aG9zZSB0aW1lCj4+Pj4gbWVhc3VyZW1lbnRzLCB0aG9zZSByZWdpc3RlcnMgd2lsbCBiZSB1
c2VkLCBpbiBsYXRlciBwYXRjaGVzLCB0bwo+Pj4+IGltcGxlbWVudCB0aGUgUFRQX1NZU19PRkZT
RVRfUFJFQ0lTRSBpb2N0bCgpLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVmluaWNpdXMgQ29z
dGEgR29tZXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4KPj4+PiAtLS0KPj4+PiAgICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDYgKysrKysrCj4+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPj4+PiBpbmRleCBhMDVlNmQ4ZWM2NjAuLmYyM2Qw
MzAzZTUzYiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjX21haW4uYwo+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
bWFpbi5jCj4+Pj4gQEAgLTEyLDYgKzEyLDggQEAKPj4+PiAgICAjaW5jbHVkZSA8bmV0L3BrdF9z
Y2hlZC5oPgo+Pj4+ICAgICNpbmNsdWRlIDxsaW51eC9icGZfdHJhY2UuaD4KPj4+PiAgICAjaW5j
bHVkZSA8bmV0L3hkcF9zb2NrX2Rydi5oPgo+Pj4+ICsjaW5jbHVkZSA8bGludXgvcGNpLmg+Cj4+
Pj4gKwo+Pj4+ICAgICNpbmNsdWRlIDxuZXQvaXB2Ni5oPgo+Pj4+ICAgIAo+Pj4+ICAgICNpbmNs
dWRlICJpZ2MuaCIKPj4+PiBAQCAtNTg2NCw2ICs1ODY2LDEwIEBAIHN0YXRpYyBpbnQgaWdjX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+Pj4+ICAgIAo+Pj4+ICAgIAlwY2lfZW5hYmxlX3Bj
aWVfZXJyb3JfcmVwb3J0aW5nKHBkZXYpOwo+Pj4+ICAgIAo+Pj4+ICsJZXJyID0gcGNpX2VuYWJs
ZV9wdG0ocGRldiwgTlVMTCk7Cj4+Pj4gKwlpZiAoZXJyIDwgMCkKPj4+PiArCQlkZXZfZXJyKCZw
ZGV2LT5kZXYsICJQVE0gbm90IHN1cHBvcnRlZFxuIik7Cj4+Pj4gKwo+Pj4KPj4+IFNvcnJ5LCBp
ZiBJIGFtIG1pc3Npbmcgc29tZXRoaW5nLCBidXQgZG8gYWxsIGRldmljZXMgc3VwcG9ydGVkIGJ5
IHRoaXMKPj4+IGRyaXZlciBzdXBwb3J0IFBUTSBvciBvbmx5IHRoZSBpMjI1IE5JQz8gSW4gdGhh
dCBjYXNlLCBpdCB3b3VsZG7igJl0IGJlIGFuCj4+PiBlcnJvciBmb3IgYSBkZXZpY2Ugbm90IHN1
cHBvcnRpbmcgUFRNLCB3b3VsZCBpdD8KPj4gCj4+IFRoYXQgd2FzIGEgdmVyeSBnb29kIHF1ZXN0
aW9uLiBJIGhhZCB0byB0YWxrIHdpdGggdGhlIGhhcmR3YXJlIGZvbGtzLgo+PiBBbGwgdGhlIGRl
dmljZXMgc3VwcG9ydGVkIGJ5IHRoZSBpZ2MgZHJpdmVyIHNob3VsZCBzdXBwb3J0IFBUTS4KPgo+
IFRoYW5rIHlvdSBmb3IgY2hlY2tpbmcgdGhhdCwgdGhhdCBpcyB2YWx1YWJsZSBpbmZvcm1hdGlv
bi4KPgo+PiBBbmQganVzdCB0byBiZSBjbGVhciwgdGhlIHJlYXNvbiB0aGF0IEkgYW0gbm90IHJl
dHVybmluZyBhbiBlcnJvciBoZXJlCj4+IGlzIHRoYXQgUFRNIGNvdWxkIG5vdCBiZSBzdXBwb3J0
ZWQgYnkgdGhlIGhvc3Qgc3lzdGVtICh0aGluayBQQ0kKPj4gY29udHJvbGxlcikuCj4KPiBJIGp1
c3QgY2hlY2tlZCBgcGNpX2VuYWJsZV9wdG0oKWAgYW5kIG9uIHN1Y2Nlc3MgaXQgY2FsbHMgCj4g
YHBjaV9wdG1faW5mbygpYCBsb2dnaW5nIGEgbWVzc2FnZToKPgo+IAlwY2lfaW5mbyhkZXYsICJQ
VE0gZW5hYmxlZCVzLCAlcyBncmFudWxhcml0eVxuIiwKPiAJCSBkZXYtPnB0bV9yb290ID8gIiAo
cm9vdCkiIDogIiIsIGNsb2NrX2Rlc2MpOwo+Cj4gV2FzIHRoYXQgcHJlc2VudCBvbiB5b3VyIHN5
c3RlbSB3aXRoIHlvdXIgcGF0Y2g/IFBsZWFzZSBhZGQgdGhhdCB0byB0aGUgCj4gY29tbWl0IG1l
c3NhZ2UuCgpZZXMsIHdpdGggbXkgcGF0Y2hlcyBhcHBsaWVkIEkgY2FuIHNlZSB0aGlzIG1lc3Nh
Z2Ugb24gbXkgc3lzdGVtcy4KClN1cmUsIHdpbGwgYWRkIHRoaXMgdG8gdGhlIGNvbW1pdCBtZXNz
YWdlLgoKPgo+IFJlZ2FyZGluZyBteSBjb21tZW50LCBJIGRpZCBub3QgbWVhbiByZXR1cm5pbmcg
YW4gZXJyb3IgYnV0IHRoZSBsb2cgCj4gKmxldmVsKiBvZiB0aGUgbWVzc2FnZS4gU28sIGBkbWVz
ZyAtLWxldmVsIGVycmAgd291bGQgc2hvdyB0aGF0IG1lc3NhZ2UuIAo+IEJ1dCBpZiB0aGVyZSBh
cmUgUENJIGNvbnRyb2xsZXJzIG5vdCBzdXBwb3J0aW5nIHRoYXQsIGl04oCZcyBub3QgYW4gZXJy
b3IsIAo+IGJ1dCBhIHdhcm5pbmcgYXQgbW9zdC4gU28sIEnigJlkIHVzZToKPgo+IAlkZXZfd2Fy
bigmcGRldi0+ZGV2LCAiUFRNIG5vdCBzdXBwb3J0ZWQgYnkgUENJIGJ1cy9jb250cm9sbGVyIAo+
IChwY2lfZW5hYmxlX3B0bSgpIGZhaWxlZClcbiIpOwoKSSB3aWxsIHVzZSB5b3Ugc3VnZ2VzdGlv
biBmb3IgdGhlIG1lc3NhZ2UsIGJ1dCBJIHRoaW5rIHRoYXQgd2FybiBpcyBhCmJpdCB0b28gbXVj
aCwgaW5mbyBvciBub3RpY2Ugc2VlbSB0byBiZSBiZXR0ZXIuCgoKQ2hlZXJzLAotLSAKVmluaWNp
dXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
