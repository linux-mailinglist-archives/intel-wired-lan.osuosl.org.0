Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C71833BBC73
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 13:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23F2C83A05;
	Mon,  5 Jul 2021 11:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uP1l_ZP-9D4J; Mon,  5 Jul 2021 11:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AEAB8379F;
	Mon,  5 Jul 2021 11:54:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 096F21BF31A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 11:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0398040478
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 11:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVHG-OpPOsx3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 11:54:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4077640364
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 11:54:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="196249655"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="196249655"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 04:54:44 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="485477393"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.169.17])
 ([10.185.169.17])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 04:54:41 -0700
To: Aaron Ma <aaron.ma@canonical.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Edri, Michael" <michael.edri@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Shalev, Avi" <avi.shalev@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210702045120.22855-2-aaron.ma@canonical.com>
 <613e2106-940a-49ed-6621-0bb00bc7dca5@intel.com>
 <ad3d2d01-1d0a-8887-b057-e6a9531a05f4@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <f9f9408e-9ba3-7ed9-acc2-1c71913b04f0@intel.com>
Date: Mon, 5 Jul 2021 14:54:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ad3d2d01-1d0a-8887-b057-e6a9531a05f4@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: wait for the MAC copy when
 enabled MAC passthrough
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy81LzIwMjEgMTA6MzgsIEFhcm9uIE1hIHdyb3RlOgo+IAo+IAo+IE9uIDcvNC8yMSAxOjM2
IFBNLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+PiBPbiA3LzIvMjAyMSAwNzo1MSwgQWFyb24gTWEg
d3JvdGU6Cj4+PiBTdWNoIGFzIGRvY2sgaG90IHBsdWcgZXZlbnQgd2hlbiBydW50aW1lLCBmb3Ig
aGFyZHdhcmUgaW1wbGVtZW50YXRpb24sCj4+PiB0aGUgTUFDIGNvcHkgdGFrZXMgbGVzcyB0aGFu
IG9uZSBzZWNvbmQgd2hlbiBCSU9TIGVuYWJsZWQgTUFDIAo+Pj4gcGFzc3Rocm91Z2guCj4+PiBB
ZnRlciB0ZXN0IG9uIExlbm92byBUQlQ0IGRvY2ssIDYwMG1zIGlzIGVub3VnaCB0byB1cGRhdGUg
dGhlCj4+PiBNQUMgYWRkcmVzcy4KPj4+IE90aGVyd2lzZSBldGhlcm5ldCBmYWlscyB0byB3b3Jr
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29t
Pgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4u
YyB8IDMgKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIAo+
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+Pj4gaW5kZXgg
NjA2YjcyY2I2MTkzLi5jOGJjNWYwODkyNTUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPj4+IEBAIC01NDY4LDYgKzU0NjgsOSBAQCBzdGF0aWMg
aW50IGlnY19wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPj4+IMKgwqDCoMKgwqAgbWVtY3B5
KCZody0+bWFjLm9wcywgZWktPm1hY19vcHMsIHNpemVvZihody0+bWFjLm9wcykpOwo+Pj4gwqDC
oMKgwqDCoCBtZW1jcHkoJmh3LT5waHkub3BzLCBlaS0+cGh5X29wcywgc2l6ZW9mKGh3LT5waHku
b3BzKSk7Cj4+PiArwqDCoMKgIGlmIChwY2lfaXNfdGh1bmRlcmJvbHRfYXR0YWNoZWQocGRldikg
PiArwqDCoMKgwqDCoMKgwqAgbXNsZWVwKDYwMCk7Cj4+IEkgYmVsaWV2ZSBpdCBpcyBhIGJpdCBm
cmFnaWxlLiBJIHdvdWxkIHJlY29tbWVuZCBoZXJlIGxvb2sgZm9yIGFub3RoZXIgCj4+IGluZGlj
YXRpb24gaW5zdGVhZCBvZiBkZWxheS4gQ2FuIHdlIHBvbGwgZm9yIGEgJ3BjaV9jaGFubmVsX2lv
X25vcm1hbCcgCj4+IHN0YXRlPyAoaWdjLT5wZGV2LT5lcnJvcl9zdGF0ZSA9PSBwY2lfY2hhbm5l
bF9pb19ub3JtYWwpCj4gCj4gSGkgc2FzaGEsCj4gSW4gdGhpcyBzaXR1YXRpb24sIHRoZSBlcnJv
cl9zdGF0ZSBpcyBhbHdheXMgcGNpX2NoYW5uZWxfaW9fbm9ybWFsLgpPay4KPiBUaGUgZGVsYXkg
aXMgbmVjZXNzYXJ5Lgo+IAo+IFJlZmVyIHRvICI2MjcyMzktSW50ZWzCriBFdGhlcm5ldCBDb250
cm9sbGVyIAo+IEkyMjUtTUFDLUFkZHJlc3MtUGFzc3Rocm91Z2gtcmV2MS4yIgo+IHNlY3Rpb24g
IjMuNQo+ICDCoFRpbWluZyBDb25zaWRlcmF0aW9ucyI6CkhlbGxvIEFhcm9uLCBUaGFua3MgdG8g
cG9pbnQgbWUgb24gdGhpcyBkb2N1bWVudC4gSSBzZWUuLi4gVGhpcyBpcyAKcmVjb21tZW5kYXRp
b24gZm9yIFdpbmRvd3MgZHJpdmVyLiBBbnl3YXksICJkZWxheSIgYXBwcm9hY2ggaXMgCmVycm9y
LXByb25lLiBXZSBuZWVkIHJhdGhlciBhc2sgZm9yIE1ORyBGVyBjb25maXJtYXRpb24gKG1lc3Nh
Z2UpIHRoYXQgCk1BQyBhZGRyZXNzIGlzIGNvcGllZC4KQ2FuIHdlIGNhbGwgKGluIGNhc2Ugd2Ug
a25vdyB0aGF0IE1ORyBGVyBjb3BpZWQgTUFDIGFkZHJlc3MpOgppZ2NfcmFyX3NldCAobWV0aG9k
IGZyb20gaWdjX21hYy5jKSwgdXBkYXRlIHRoZSBtYWMuYWRkciBhbmQgdGhlbiAKcGVyZm9ybSI6
IG1lbWNweShuZXRkZXYtPmRldl9hZGRyLCBody0+bWFjLmFkZHIsIG5ldGRldi0+YWRkcl9sZW4p
Oz8KCj4gIkZvciBoYXJkd2FyZSBpbXBsZW1lbnRhdGlvbiwKPiAKPiB3aGVuIHRoZSBvcGVyYXRp
bmcgc3lzdGVtIGlzIGFscmVhZHkgcnVubmluZywgdGhlIE1BQyBjb3B5IG11c3QgaGFwcGVuIAo+
IG5vdCBtb3JlIHRoYW4gb25lCj4gCj4gc2Vjb25kIGFmdGVyIFRCVCBsaW5rIGlzIGVzdGFibGlz
aGVkLgo+IHRoZSBJMjI1IFdpbmRvd3MgZHJpdmVyIHByZXZlbnRzIHRoZSBvcGVyYXRpbmcKPiAK
PiBzeXN0ZW0gZnJvbSBkZXRlY3RpbmcgdGhlIEkyMjUgZm9yIG9uZSBzZWNvbmQuIFRoaXMgYWxs
b3dzIGVub3VnaCB0aW1lIAo+IGZvciBoYXJkd2FyZSB0byB1cGRhdGUgdGhlCj4gCj4gTUFDIGFk
ZHJlc3MuIgo+IAo+IFRoYW5rcyBzYXNoYSwKPiBBYXJvbgo+IAo+Pj4gKwo+Pj4gwqDCoMKgwqDC
oCAvKiBJbml0aWFsaXplIHNrZXctc3BlY2lmaWMgY29uc3RhbnRzICovCj4+PiDCoMKgwqDCoMKg
IGVyciA9IGVpLT5nZXRfaW52YXJpYW50cyhodyk7Cj4+PiDCoMKgwqDCoMKgIGlmIChlcnIpCj4+
Pgo+PiBUaGFua3MgQWFyb24sCj4+IHNhc2hhClNhc2hhCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
