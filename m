Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F406B3A012A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jun 2021 21:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E27F40478;
	Tue,  8 Jun 2021 19:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vccuk4bcYRTA; Tue,  8 Jun 2021 19:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9B1040479;
	Tue,  8 Jun 2021 19:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87D671BF28C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 19:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7653383C00
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 19:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ciSb7jmW4d9C for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 19:02:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0DB6831A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 19:02:37 +0000 (UTC)
IronPort-SDR: tmN/hSJbc6YQK4dB51SiqHpmjNAF+MsKu1TsIWojclj9cuZkH0OLDAVTV20MnCNpcLi3S0UVx0
 9pyGv1PwHD6g==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="226271470"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="226271470"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 12:02:34 -0700
IronPort-SDR: MEcxlr6/6PVTW2YAwcxOPeu42eX2NYsaitOlR9ybJVyqHprVqOIu0NTddsR5T4YB1mhJLcoElb
 bpW6T5sD0jHg==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="402177037"
Received: from vgoornav-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.249.197])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 12:02:31 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
 <20210605002356.3996853-4-vinicius.gomes@intel.com>
 <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
Date: Tue, 08 Jun 2021 12:02:30 -0700
Message-ID: <87sg1sw56h.fsf@vcostago-mobl2.amr.corp.intel.com>
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
 helgaas@kernel.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKClBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IHdyaXRlczoKCj4g
RGVhciBWaW5pY2l1cywKPgo+Cj4gQW0gMDUuMDYuMjEgdW0gMDI6MjMgc2NocmllYiBWaW5pY2l1
cyBDb3N0YSBHb21lczoKPj4gRW5hYmxlcyBQQ0llIFBUTSAoUHJlY2lzaW9uIFRpbWUgTWVhc3Vy
ZW1lbnQpIHN1cHBvcnQgaW4gdGhlIGlnYwo+PiBkcml2ZXIuIE5vdGlmaWVzIHRoZSBQQ0kgZGV2
aWNlcyB0aGF0IFBDSWUgUFRNIHNob3VsZCBiZSBlbmFibGVkLgo+PiAKPj4gUENJZSBQVE0gaXMg
c2ltaWxhciBwcm90b2NvbCB0byBQVFAgKFByZWNpc2lvbiBUaW1lIFByb3RvY29sKSBydW5uaW5n
Cj4+IGluIHRoZSBQQ0llIGZhYnJpYywgaXQgYWxsb3dzIGRldmljZXMgdG8gcmVwb3J0IHRpbWUg
bWVhc3VyZW1lbnRzIGZyb20KPj4gdGhlaXIgaW50ZXJuYWwgY2xvY2tzIGFuZCB0aGUgY29ycmVs
YXRpb24gd2l0aCB0aGUgUENJZSByb290IGNsb2NrLgo+PiAKPj4gVGhlIGkyMjUgTklDIGV4cG9z
ZXMgc29tZSByZWdpc3RlcnMgdGhhdCBleHBvc2UgdGhvc2UgdGltZQo+PiBtZWFzdXJlbWVudHMs
IHRob3NlIHJlZ2lzdGVycyB3aWxsIGJlIHVzZWQsIGluIGxhdGVyIHBhdGNoZXMsIHRvCj4+IGlt
cGxlbWVudCB0aGUgUFRQX1NZU19PRkZTRVRfUFJFQ0lTRSBpb2N0bCgpLgo+PiAKPj4gU2lnbmVk
LW9mZi1ieTogVmluaWNpdXMgQ29zdGEgR29tZXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4K
Pj4gLS0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCA2
ICsrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4gCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4+IGluZGV4IGEwNWU2ZDhlYzY2
MC4uZjIzZDAzMDNlNTNiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjX21haW4uYwo+PiBAQCAtMTIsNiArMTIsOCBAQAo+PiAgICNpbmNsdWRlIDxuZXQvcGt0X3Nj
aGVkLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L2JwZl90cmFjZS5oPgo+PiAgICNpbmNsdWRlIDxu
ZXQveGRwX3NvY2tfZHJ2Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcGNpLmg+Cj4+ICsKPj4gICAj
aW5jbHVkZSA8bmV0L2lwdjYuaD4KPj4gICAKPj4gICAjaW5jbHVkZSAiaWdjLmgiCj4+IEBAIC01
ODY0LDYgKzU4NjYsMTAgQEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsCj4+ICAgCj4+ICAgCXBjaV9lbmFibGVfcGNpZV9lcnJvcl9yZXBvcnRpbmcocGRldik7Cj4+
ICAgCj4+ICsJZXJyID0gcGNpX2VuYWJsZV9wdG0ocGRldiwgTlVMTCk7Cj4+ICsJaWYgKGVyciA8
IDApCj4+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgIlBUTSBub3Qgc3VwcG9ydGVkXG4iKTsKPj4g
Kwo+Cj4gU29ycnksIGlmIEkgYW0gbWlzc2luZyBzb21ldGhpbmcsIGJ1dCBkbyBhbGwgZGV2aWNl
cyBzdXBwb3J0ZWQgYnkgdGhpcyAKPiBkcml2ZXIgc3VwcG9ydCBQVE0gb3Igb25seSB0aGUgaTIy
NSBOSUM/IEluIHRoYXQgY2FzZSwgaXQgd291bGRu4oCZdCBiZSBhbiAKPiBlcnJvciBmb3IgYSBk
ZXZpY2Ugbm90IHN1cHBvcnRpbmcgUFRNLCB3b3VsZCBpdD8KClRoYXQgd2FzIGEgdmVyeSBnb29k
IHF1ZXN0aW9uLiBJIGhhZCB0byB0YWxrIHdpdGggdGhlIGhhcmR3YXJlIGZvbGtzLgpBbGwgdGhl
IGRldmljZXMgc3VwcG9ydGVkIGJ5IHRoZSBpZ2MgZHJpdmVyIHNob3VsZCBzdXBwb3J0IFBUTS4K
CkFuZCBqdXN0IHRvIGJlIGNsZWFyLCB0aGUgcmVhc29uIHRoYXQgSSBhbSBub3QgcmV0dXJuaW5n
IGFuIGVycm9yIGhlcmUKaXMgdGhhdCBQVE0gY291bGQgbm90IGJlIHN1cHBvcnRlZCBieSB0aGUg
aG9zdCBzeXN0ZW0gKHRoaW5rIFBDSQpjb250cm9sbGVyKS4KCj4KPj4gICAJcGNpX3NldF9tYXN0
ZXIocGRldik7Cj4+ICAgCj4+ICAgCWVyciA9IC1FTk9NRU07Cj4+IAo+Cj4KPiBLaW5kIHJlZ2Fy
ZHMsCj4KPiBQYXVsCgoKQ2hlZXJzLAotLSAKVmluaWNpdXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
