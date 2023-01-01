Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0749F65A997
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 11:32:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEF4760BE3;
	Sun,  1 Jan 2023 10:32:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEF4760BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672569148;
	bh=w9rE3ykbQX9LUfPGq5Blgi8S19oo1uc2Lywlofbzw+o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XiplzMtlM7p0fiW9hdWlG1N5ijF77LJMp3T4Cn1JMRLSDF6prsAI0n0yniL6dR5TE
	 O+syieCdiNuHVvFYXjLPLJFJlPdaEHr/SNjgQ0pGnwBReKIaL9NaboONtEAkMlJJKd
	 50g/nwnice5xwzOHjFCDgv8UvSxLG0rRxG3mTFpoZQ9ts8ZWDTxRYedOIw8HnaPKEC
	 R4UOjcFDJr41t5UrejhQOkQb6qLj1aXQrtWmFsABU/4UnZpEfOAO4jF0g3uaiZZaxb
	 YPkVwJqwxuswMF7UKmfLYRetXRcrabLoKYwIzC+fuGHOSPo+wQ5JPLpRPr60UYecX1
	 ji1GP7MSI1rUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nt6ksMIQE2Sa; Sun,  1 Jan 2023 10:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63D8460BE1;
	Sun,  1 Jan 2023 10:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63D8460BE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 587C41BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 10:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28BC360BE1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 10:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28BC360BE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fXNxUqzFZHLE for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Jan 2023 10:32:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3202060BD6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3202060BD6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 10:32:19 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aefd4.dynamic.kabel-deutschland.de
 [95.90.239.212])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 72F6060027FC1;
 Sun,  1 Jan 2023 11:32:16 +0100 (CET)
Message-ID: <eb5a9805-3e53-ec22-696e-21c6b8cf0bfc@molgen.mpg.de>
Date: Sun, 1 Jan 2023 11:32:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
References: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 rajat.khandelwal@intel.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NjOiArQmpvcm4sICtsaW51eC1wY2ldCgoKRGVhciBSYWphdCwKCgpUaGFuayB5b3UgZm9yIHlv
dXIgcGF0Y2guCgpBbSAyOS4xMi4yMiB1bSAxMzoyNiBzY2hyaWViIFJhamF0IEtoYW5kZWx3YWw6
Cj4gVGhlIENQVSBsb2dzIGdldCBmbG9vZGVkIHdpdGggcmVwbGF5IHJvbGxvdmVyL3RpbWVvdXQg
QUVSIGVycm9ycyBpbgo+IHRoZSBzeXN0ZW0gd2l0aCBpMjI1X2xtdnAgY29ubmVjdGVkLCB1c3Vh
bGx5IGluc2lkZSB0aHVuZGVyYm9sdCBkZXZpY2VzLgoKUGxlYXNlIGFkZCBvbmUgZXhhbXBsZSBs
b2cgbWVzc2FnZSB0byB0aGUgY29tbWl0IG1lc3NhZ2UuCgo+IE9uZSBvZiB0aGUgcHJvbWluZW50
IFRCVDQgZG9ja3Mgd2UgdXNlIGlzIEhQIEc0IEhvb2syLCB3aGljaCBpbmNvcnBvcmF0ZXMKCkkg
Y291bGRu4oCZdCBmaW5kIHRoYXQgZGV2aWNlLiBJcyB0aGF0IHRoZSBjb3JyZWN0IG5hbWU/Cgo+
IGFuIEludGVsIEZveHZpbGxlIGNoaXBzZXQsIHdoaWNoIHVzZXMgdGhlIGlnYyBkcml2ZXIuCgpQ
bGVhc2UgYWRkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHMuCgo+IE9uIGNvbm5lY3Rp
bmcgZXRoZXJuZXQsIENQVSBsb2dzIGdldCBpbnVuZGF0ZWQgd2l0aCB0aGVzZSBlcnJvcnMuIFRo
ZSBwb2ludAo+IGlzIHdlIHNob3VsZG4ndCBiZSBzcGFtbWluZyB0aGUgbG9ncyB3aXRoIHN1Y2gg
Y29ycmVjdGlibGUgZXJyb3JzIGFzIGl0Cgpjb3JyZWN0YWJsZQoKPiBjb25mdXNlcyBvdGhlciBr
ZXJuZWwgZGV2ZWxvcGVycyBsZXNzIGZhbWlsaWFyIHdpdGggUENJIGVycm9ycywgc3VwcG9ydAo+
IHN0YWZmLCBhbmQgdXNlcnMgd2hvIGhhcHBlbiB0byBsb29rIGF0IHRoZSBsb2dzLgoKUGxlYXNl
IHJlZmVyZW5jZSB0aGUgYnVnIHJlcG9ydHMgKGJ1ZyB0cmFja2VyIGFuZCBtYWlsaW5nIGxpc3Qp
LCB5b3UgCmtub3cgb2YsIHdoZXJlIHRoaXMgd2FzIHJlcG9ydGVkLgoKPiBTaWduZWQtb2ZmLWJ5
OiBSYWphdCBLaGFuZGVsd2FsIDxyYWphdC5raGFuZGVsd2FsQGxpbnV4LmludGVsLmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgMjggKysr
KysrKysrKysrKysrKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
bWFpbi5jCj4gaW5kZXggZWJmZjBlMDQwNDVkLi5hM2E2ZTgwODZjOGQgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+IEBAIC02MjAxLDYgKzYyMDEsMjYg
QEAgdTMyIGlnY19yZDMyKHN0cnVjdCBpZ2NfaHcgKmh3LCB1MzIgcmVnKQo+ICAgCXJldHVybiB2
YWx1ZTsKPiAgIH0KPiAgIAo+ICsjaWZkZWYgQ09ORklHX1BDSUVBRVIKPiArc3RhdGljIHZvaWQg
aWdjX21hc2tfYWVyX3JlcGxheV9jb3JyZWN0aWJsZShzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0
ZXIpCgpjb3JyZWN0YWJsZQoKPiArewo+ICsJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBhZGFwdGVy
LT5wZGV2Owo+ICsJdTMyIGFlcl9wb3MsIGNvcnJfbWFzazsKCkluc3RlYWQgb2YgdXNpbmcgdGhl
IHByZXByb2Nlc3NvciwgdXNlIGEgbm9ybWFsIEMgY29uZGl0aW9uYWwuIEZyb20gCmBEb2N1bWVu
dGF0aW9uL3Byb2Nlc3MvY29kaW5nLXN0eWxlLnJzdGA6Cgo+IFdpdGhpbiBjb2RlLCB3aGVyZSBw
b3NzaWJsZSwgdXNlIHRoZSBJU19FTkFCTEVEIG1hY3JvIHRvIGNvbnZlcnQgYSBLY29uZmlnCj4g
c3ltYm9sIGludG8gYSBDIGJvb2xlYW4gZXhwcmVzc2lvbiwgYW5kIHVzZSBpdCBpbiBhIG5vcm1h
bCBDIGNvbmRpdGlvbmFsOgo+IAo+IC4uIGNvZGUtYmxvY2s6OiBjICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiAgICAg
ICAgIGlmIChJU19FTkFCTEVEKENPTkZJR19TT01FVEhJTkcpKSB7Cj4gICAgICAgICAgICAgICAg
IC4uLgo+ICAgICAgICAgfQo+IAo+IFRoZSBjb21waWxlciB3aWxsIGNvbnN0YW50LWZvbGQgdGhl
IGNvbmRpdGlvbmFsIGF3YXksIGFuZCBpbmNsdWRlIG9yIGV4Y2x1ZGUKPiB0aGUgYmxvY2sgb2Yg
Y29kZSBqdXN0IGFzIHdpdGggYW4gI2lmZGVmLCBzbyB0aGlzIHdpbGwgbm90IGFkZCBhbnkgcnVu
dGltZQo+IG92ZXJoZWFkLiAgSG93ZXZlciwgdGhpcyBhcHByb2FjaCBzdGlsbCBhbGxvd3MgdGhl
IEMgY29tcGlsZXIgdG8gc2VlIHRoZSBjb2RlCj4gaW5zaWRlIHRoZSBibG9jaywgYW5kIGNoZWNr
IGl0IGZvciBjb3JyZWN0bmVzcyAoc3ludGF4LCB0eXBlcywgc3ltYm9sCj4gcmVmZXJlbmNlcywg
ZXRjKS4gIFRodXMsIHlvdSBzdGlsbCBoYXZlIHRvIHVzZSBhbiAjaWZkZWYgaWYgdGhlIGNvZGUg
aW5zaWRlIHRoZQo+IGJsb2NrIHJlZmVyZW5jZXMgc3ltYm9scyB0aGF0IHdpbGwgbm90IGV4aXN0
IGlmIHRoZSBjb25kaXRpb24gaXMgbm90IG1ldC4KCgo+ICsKPiArCWlmIChwZGV2LT5kZXZpY2Ug
IT0gSUdDX0RFVl9JRF9JMjI1X0xNVlApCj4gKwkJcmV0dXJuOwo+ICsKPiArCWFlcl9wb3MgPSBw
Y2lfZmluZF9leHRfY2FwYWJpbGl0eShwZGV2LCBQQ0lfRVhUX0NBUF9JRF9FUlIpOwo+ICsJaWYg
KCFhZXJfcG9zKQo+ICsJCXJldHVybjsKPiArCj4gKwlwY2lfcmVhZF9jb25maWdfZHdvcmQocGRl
diwgYWVyX3BvcyArIFBDSV9FUlJfQ09SX01BU0ssICZjb3JyX21hc2spOwo+ICsKPiArCWNvcnJf
bWFzayB8PSBQQ0lfRVJSX0NPUl9SRVBfUk9MTCB8IFBDSV9FUlJfQ09SX1JFUF9USU1FUjsKPiAr
CXBjaV93cml0ZV9jb25maWdfZHdvcmQocGRldiwgYWVyX3BvcyArIFBDSV9FUlJfQ09SX01BU0ss
IGNvcnJfbWFzayk7Cj4gK30KPiArI2VuZGlmCj4gKwo+ICAgLyoqCj4gICAgKiBpZ2NfcHJvYmUg
LSBEZXZpY2UgSW5pdGlhbGl6YXRpb24gUm91dGluZQo+ICAgICogQHBkZXY6IFBDSSBkZXZpY2Ug
aW5mb3JtYXRpb24gc3RydWN0Cj4gQEAgLTYyMzYsOCArNjI1Niw2IEBAIHN0YXRpYyBpbnQgaWdj
X3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+ICAgCWlmIChlcnIpCj4gICAJCWdvdG8gZXJy
X3BjaV9yZWc7Cj4gICAKPiAtCXBjaV9lbmFibGVfcGNpZV9lcnJvcl9yZXBvcnRpbmcocGRldik7
Cj4gLQo+ICAgCWVyciA9IHBjaV9lbmFibGVfcHRtKHBkZXYsIE5VTEwpOwo+ICAgCWlmIChlcnIg
PCAwKQo+ICAgCQlkZXZfaW5mbygmcGRldi0+ZGV2LCAiUENJZSBQVE0gbm90IHN1cHBvcnRlZCBi
eSBQQ0llIGJ1cy9jb250cm9sbGVyXG4iKTsKPiBAQCAtNjI3Miw2ICs2MjkwLDEyIEBAIHN0YXRp
YyBpbnQgaWdjX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+ICAgCWlmICghYWRhcHRlci0+
aW9fYWRkcikKPiAgIAkJZ290byBlcnJfaW9yZW1hcDsKPiAgIAo+ICsjaWZkZWYgQ09ORklHX1BD
SUVBRVIKPiArCWlnY19tYXNrX2Flcl9yZXBsYXlfY29ycmVjdGlibGUoYWRhcHRlcik7Cj4gKyNl
bmRpZgo+ICsKPiArCXBjaV9lbmFibGVfcGNpZV9lcnJvcl9yZXBvcnRpbmcocGRldik7Cj4gKwo+
ICAgCS8qIGh3LT5od19hZGRyIGNhbiBiZSB6ZXJvZWQsIHNvIHVzZSBhZGFwdGVyLT5pb19hZGRy
IGZvciB1bm1hcCAqLwo+ICAgCWh3LT5od19hZGRyID0gYWRhcHRlci0+aW9fYWRkcjsKPiAgIAoK
CktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
