Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A25E514B06F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2020 08:31:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2195B204F7;
	Tue, 28 Jan 2020 07:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDhMhJhXtuRJ; Tue, 28 Jan 2020 07:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D34F204F2;
	Tue, 28 Jan 2020 07:31:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89EB61BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2020 07:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 854DA86940
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2020 07:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWwvrqNg11kK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jan 2020 07:31:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B717586988
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2020 07:31:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 23:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,372,1574150400"; d="scan'208";a="231823956"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga006.jf.intel.com with ESMTP; 27 Jan 2020 23:31:14 -0800
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20200127115831.18047-1-sasha.neftin@intel.com>
 <5a057e0a-c746-ce58-8dbe-9a31ab883c4f@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <94dad75b-4f03-de9f-a36b-a87384bbafcc@intel.com>
Date: Tue, 28 Jan 2020 09:31:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <5a057e0a-c746-ce58-8dbe-9a31ab883c4f@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add pcie error handler support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS8yNy8yMDIwIDE2OjUzLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaCBzZXQuCj4gCj4gCj4gT24gMjAyMC0wMS0yNyAx
Mjo1OCwgU2FzaGEgTmVmdGluIHdyb3RlOgo+PiBBZGQgcGNpZSBlcnJvciBkZXRlY3Rpb24sIHNs
b3QgcmVzZXQgYW5kIHJlc3VtZSBjYXBhYmlsaXR5Cj4gCj4gVGVzdGVkIGhvdz8KPiAKVGVzdGVk
IG9uIHRoZSBwbGF0Zm9ybSB3aXRoIGVycm9yLXByb25lIFBDSWUgc2xvdCBhbmQgc3lzdGVtIGhh
cyBiZWVuIApyZWNvdmVyZWQuIFRvIG1vcmUgdGVzdGluZywgSSB3b3VsZCByZWNvbW1lbmQgdXNp
bmcgcGVyaXBoZXJhbCAKZXF1aXBtZW50LiBMZWNyb3kncyBQQ0llIHRlc3QgYm9hcmQgY291bGQg
YmUgYSBnb29kIG9wdGlvbi4KPj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5u
ZWZ0aW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX21haW4uYyB8IDEwNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICAx
IGZpbGUgY2hhbmdlZCwgMTA1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPj4gaW5kZXggZmE3MjQ2MGUyNTVhLi5iMDY1NmFlMmZj
YjMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFp
bi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4+
IEBAIC01MDc2LDYgKzUwNzYsMTEwIEBAIHN0YXRpYyB2b2lkIGlnY19zaHV0ZG93bihzdHJ1Y3Qg
cGNpX2RldiAqcGRldikKPj4gICAJfQo+PiAgIH0KPj4gICAKPj4gKy8qKgo+PiArICogIGlnY19p
b19lcnJvcl9kZXRlY3RlZCAtIGNhbGxlZCB3aGVuIFBDSSBlcnJvciBpcyBkZXRlY3RlZAo+PiAr
ICogIEBwZGV2OiBQb2ludGVyIHRvIFBDSSBkZXZpY2UKPj4gKyAqICBAc3RhdGU6IFRoZSBjdXJy
ZW50IHBjaSBjb25uZWN0aW9uIHN0YXRlCj4gCj4gUENJCj4gCmdvb2QuIEkgd2lsbCBjaGFuZ2Uu
Cj4+ICsgKgo+PiArICogIFRoaXMgZnVuY3Rpb24gaXMgY2FsbGVkIGFmdGVyIGEgUENJIGJ1cyBl
cnJvciBhZmZlY3RpbmcKPj4gKyAqICB0aGlzIGRldmljZSBoYXMgYmVlbiBkZXRlY3RlZC4KPiAK
PiBEb2N1bWVudCB0aGUgdHdvIHBvc3NpYmxlIHJldHVybiBjb2Rlcz8KPiAKSSB3aWxsIGVsYWJv
cmF0ZSBvbiB0aGUgY29tbWVudC4KPj4gKyAqKi8KPj4gK3N0YXRpYyBwY2lfZXJzX3Jlc3VsdF90
IGlnY19pb19lcnJvcl9kZXRlY3RlZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPj4gKwkJCQkJICAg
ICAgcGNpX2NoYW5uZWxfc3RhdGVfdCBzdGF0ZSkKPj4gK3sKPj4gKwlzdHJ1Y3QgbmV0X2Rldmlj
ZSAqbmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwo+PiArCXN0cnVjdCBpZ2NfYWRhcHRl
ciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7Cj4+ICsKPj4gKwluZXRpZl9kZXZpY2Vf
ZGV0YWNoKG5ldGRldik7Cj4+ICsKPj4gKwlpZiAoc3RhdGUgPT0gcGNpX2NoYW5uZWxfaW9fcGVy
bV9mYWlsdXJlKQo+PiArCQlyZXR1cm4gUENJX0VSU19SRVNVTFRfRElTQ09OTkVDVDsKPj4gKwo+
PiArCWlmIChuZXRpZl9ydW5uaW5nKG5ldGRldikpCj4+ICsJCWlnY19kb3duKGFkYXB0ZXIpOwo+
PiArCXBjaV9kaXNhYmxlX2RldmljZShwZGV2KTsKPj4gKwo+PiArCS8qIFJlcXVlc3QgYSBzbG90
IHNsb3QgcmVzZXQuICovCj4gCj4gT25lIHNsb3Q/Cj4gCnllcywgdHlwby4KPj4gKwlyZXR1cm4g
UENJX0VSU19SRVNVTFRfTkVFRF9SRVNFVDsKPj4gK30KPj4gKwo+PiArLyoqCj4+ICsgKiAgaWdj
X2lvX3Nsb3RfcmVzZXQgLSBjYWxsZWQgYWZ0ZXIgdGhlIHBjaSBidXMgaGFzIGJlZW4gcmVzZXQu
Cj4gCj4gUENJCj4gCm9rLgo+PiArICogIEBwZGV2OiBQb2ludGVyIHRvIFBDSSBkZXZpY2UKPj4g
KyAqCj4+ICsgKiAgUmVzdGFydCB0aGUgY2FyZCBmcm9tIHNjcmF0Y2gsIGFzIGlmIGZyb20gYSBj
b2xkLWJvb3QuIEltcGxlbWVudGF0aW9uCj4+ICsgKiAgcmVzZW1ibGVzIHRoZSBmaXJzdC1oYWxm
IG9mIHRoZSBpZ2NfcmVzdW1lIHJvdXRpbmUuCj4gCj4gU2hvdWxkbuKAmXQgdGhlIGNvbW1vbiBj
b2RlIGJlIGZhY3RvcmVkIG91dCB0aGVuPwo+IApJIHByZWZlciBzdGF5IGFsaWduIHdpdGggb3Vy
IGxlZ2FjeSBjb2RlIGluIG90aGVyIGRyaXZlcnMuCj4+ICsgKiovCj4+ICtzdGF0aWMgcGNpX2Vy
c19yZXN1bHRfdCBpZ2NfaW9fc2xvdF9yZXNldChzdHJ1Y3QgcGNpX2RldiAqcGRldikKPj4gK3sK
Pj4gKwlzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwo+
PiArCXN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7Cj4+
ICsJc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7Cj4+ICsJcGNpX2Vyc19yZXN1bHRf
dCByZXN1bHQ7Cj4+ICsKPj4gKwlpZiAocGNpX2VuYWJsZV9kZXZpY2VfbWVtKHBkZXYpKSB7Cj4+
ICsJCWRldl9lcnIoJnBkZXYtPmRldiwKPj4gKwkJCSJDYW5ub3QgcmUtZW5hYmxlIFBDSSBkZXZp
Y2UgYWZ0ZXIgcmVzZXQuXG4iKTsKPiAKPiAqQ291bGQgbm90Kiwgc28gaXTigJlzIGNsZWFyLCBp
dCB3YXMgdHJpZWQsIGFuZCBub3QgYSBwb2xpY3kgZGVjaXNpb24uCj4gCm9rLgo+PiArCQlyZXN1
bHQgPSBQQ0lfRVJTX1JFU1VMVF9ESVNDT05ORUNUOwo+PiArCX0gZWxzZSB7Cj4+ICsJCXBjaV9z
ZXRfbWFzdGVyKHBkZXYpOwo+PiArCQlwY2lfcmVzdG9yZV9zdGF0ZShwZGV2KTsKPj4gKwkJcGNp
X3NhdmVfc3RhdGUocGRldik7Cj4+ICsKPj4gKwkJcGNpX2VuYWJsZV93YWtlKHBkZXYsIFBDSV9E
M2hvdCwgMCk7Cj4+ICsJCXBjaV9lbmFibGVfd2FrZShwZGV2LCBQQ0lfRDNjb2xkLCAwKTsKPj4g
Kwo+PiArCQkvKiBJbiBjYXNlIG9mIFBDSSBlcnJvciwgYWRhcHRlciBsb3NlIGl0cyBIVyBhZGRy
ZXNzCj4gCj4gbG9zZSpzKgo+IApvay4KPj4gKwkJICogc28gd2Ugc2hvdWxkIHJlLWFzc2lnbiBp
dCBoZXJlLgo+PiArCQkgKi8KPj4gKwkJaHctPmh3X2FkZHIgPSBhZGFwdGVyLT5pb19hZGRyOwo+
PiArCj4+ICsJCWlnY19yZXNldChhZGFwdGVyKTsKPj4gKwkJd3IzMihJR0NfV1VTLCB+MCk7Cj4+
ICsJCXJlc3VsdCA9IFBDSV9FUlNfUkVTVUxUX1JFQ09WRVJFRDsKPj4gKwl9Cj4+ICsKPj4gKwly
ZXR1cm4gcmVzdWx0Owo+IAo+IFlvdSBjYW4gZ2V0IHJpZCBvZiB0aGUgaWYtZWxzZSBzdGF0ZW1l
bnQsIGJ5IHJldHVybmluZyBpbiB0aGUgaWYgYnJhbmNoLAo+IGFuZCB1c2UgdGhlIGVsc2UgYnJh
bmNoIGFzIHRoZSBmb2xsb3ctb24oPykuIFRoZW4geW91IGNhbiByZXR1cm4gdGhlCj4gcmVzdWx0
IGRpcmVjdGx5IHRvbywgYW5kIGV2ZW4gcmVtb3ZlIHRoZSB2YXJpYWJsZSBgcmVzdWx0YC4KPiAK
SSBwcmVmZXIgc3RheSB3aXRoIGEgbGVnYWN5IGNvZGUgdG8gYWxpZ24gd2l0aCBvdGhlciBvdXJz
IGRyaXZlcnMuCj4+ICt9Cj4+ICsKPj4gKy8qKgo+PiArICogIGlnY19pb19yZXN1bWUgLSBjYWxs
ZWQgd2hlbiB0cmFmZmljIGNhbiBzdGFydCBmbG93aW5nIGFnYWluLgo+IAo+IHN0YXJ0IHRvIGZs
b3cKPiAKb2ssIHRoYW5rcy4KPj4gKyAqICBAcGRldjogUG9pbnRlciB0byBQQ0kgZGV2aWNlCj4+
ICsgKgo+PiArICogIFRoaXMgY2FsbGJhY2sgaXMgY2FsbGVkIHdoZW4gdGhlIGVycm9yIHJlY292
ZXJ5IGRyaXZlciB0ZWxscyB1cyB0aGF0Cj4+ICsgKiAgaXRzIE9LIHRvIHJlc3VtZSBub3JtYWwg
b3BlcmF0aW9uLiBJbXBsZW1lbnRhdGlvbiByZXNlbWJsZXMgdGhlCj4+ICsgKiAgc2Vjb25kLWhh
bGYgb2YgdGhlIGlnY19yZXN1bWUgcm91dGluZS4KPj4gKyAqLwo+PiArc3RhdGljIHZvaWQgaWdj
X2lvX3Jlc3VtZShzdHJ1Y3QgcGNpX2RldiAqcGRldikKPj4gK3sKPj4gKwlzdHJ1Y3QgbmV0X2Rl
dmljZSAqbmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwo+PiArCXN0cnVjdCBpZ2NfYWRh
cHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7Cj4+ICsJdTMyIGVyciA9IDA7Cj4+
ICsKPj4gKwlydG5sX2xvY2soKTsKPj4gKwlpZiAobmV0aWZfcnVubmluZyhuZXRkZXYpKSB7Cj4+
ICsJCWVyciA9IGlnY19vcGVuKG5ldGRldik7Cj4+ICsJCWlmIChlcnIpIHsKPiAKPiBVc2UgYGlm
IChpZ2Nfb3BlbihuZXRkZXYpKSB7YCwgYW5kIHJlbW92ZSB2YXJpYWJsZSBgZXJyYD8KPiAKZ29v
ZCBpZGVhLiB0aGFua3MKPj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImlnaWNfb3BlbiBmYWls
ZWQgYWZ0ZXIgcmVzZXRcbiIpOwo+PiArCQkJcmV0dXJuOwo+PiArCQl9Cj4+ICsJfQo+PiArCj4+
ICsJbmV0aWZfZGV2aWNlX2F0dGFjaChuZXRkZXYpOwo+PiArCj4+ICsJLyogbGV0IHRoZSBmL3cg
a25vdyB0aGF0IHRoZSBoL3cgaXMgbm93IHVuZGVyIHRoZSBjb250cm9sIG9mIHRoZQo+PiArCSAq
IGRyaXZlci4KPj4gKwkgKi8KPj4gKwlpZ2NfZ2V0X2h3X2NvbnRyb2woYWRhcHRlcik7Cj4+ICsJ
cnRubF91bmxvY2soKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXJy
b3JfaGFuZGxlcnMgaWdjX2Vycl9oYW5kbGVyID0gewo+PiArCS5lcnJvcl9kZXRlY3RlZCA9IGln
Y19pb19lcnJvcl9kZXRlY3RlZCwKPj4gKwkuc2xvdF9yZXNldCA9IGlnY19pb19zbG90X3Jlc2V0
LAo+PiArCS5yZXN1bWUgPSBpZ2NfaW9fcmVzdW1lLAo+PiArfTsKPj4gKwo+PiAgICNpZmRlZiBD
T05GSUdfUE0KPj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgaWdjX3BtX29wcyA9
IHsKPj4gICAJU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMoaWdjX3N1c3BlbmQsIGlnY19yZXN1bWUp
Cj4+IEBAIC01MDkzLDYgKzUxOTcsNyBAQCBzdGF0aWMgc3RydWN0IHBjaV9kcml2ZXIgaWdjX2Ry
aXZlciA9IHsKPj4gICAJLmRyaXZlci5wbSA9ICZpZ2NfcG1fb3BzLAo+PiAgICNlbmRpZgo+PiAg
IAkuc2h1dGRvd24gPSBpZ2Nfc2h1dGRvd24sCj4+ICsJLmVycl9oYW5kbGVyID0gJmlnY19lcnJf
aGFuZGxlciwKPj4gICB9Owo+PiAgIAo+PiAgIC8qKgo+Pgo+IApQYXVsLCB0aGFua3MgZm9yIHlv
dXIgZmVlZGJhY2sgLSBJIHdpbGwgc3VibWl0IHYyIGFuZCBhZGRyZXNzIHlvdXIgY29tbWVudHMu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
