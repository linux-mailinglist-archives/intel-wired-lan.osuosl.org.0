Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CACD6CAE3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2019 10:24:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E2309204EE;
	Thu, 18 Jul 2019 08:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DsSAaT4ijQNl; Thu, 18 Jul 2019 08:24:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C095204ED;
	Thu, 18 Jul 2019 08:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD69E1BF5A1
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D69CC87645
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MOZ9JTyweHoQ for <intel-wired-lan@osuosl.org>;
 Thu, 18 Jul 2019 08:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0540B87594
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:24:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 01:24:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,276,1559545200"; d="scan'208";a="173116381"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.174.196])
 ([10.185.174.196])
 by orsmga006.jf.intel.com with ESMTP; 18 Jul 2019 01:24:25 -0700
To: Gavin Lambert <intel@mirality.co.nz>, intel-wired-lan@osuosl.org
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
Date: Thu, 18 Jul 2019 11:24:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <000661bda5687541e895a949c76712fb@mirality.co.nz>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
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

T24gNy8xOC8yMDE5IDExOjA2LCBHYXZpbiBMYW1iZXJ0IHdyb3RlOgo+IE9uIDIwMTktMDctMTIg
MTU6MjMsIEkgd3JvdGU6Cj4+IE9uIDIwMTktMDctMTEgMTg6NTAsIEkgd3JvdGU6Cj4+PiBPbiBh
IERlYmlhbiBzeXN0ZW0gd2l0aCBrZXJuZWwgbGludXgtaW1hZ2UtNC45LjAtNC1ydC1hbWQ2NCAo
NC45LjY1KQo+Pj4gaW5zdGFsbGVkLCB0aGlzIHdvcmtzIHBlcmZlY3RseS7CoCBJdCBhbHNvIHdv
cmtzIHBlcmZlY3RseSB3aXRoCj4+PiBsaW51eC1pbWFnZS00LjkuMC04LXJ0LWFtZDY0ICg0Ljku
MTEwKS4KPj4+Cj4+PiBIb3dldmVyLCB3aXRoIGtlcm5lbCBsaW51eC1pbWFnZS00LjkuMC05LXJ0
LWFtZDY0ICg0LjkuMTY4KSBpbnN0YWxsZWQKPj4+IChhbmQgbm8gb3RoZXIgY2hhbmdlcyB0byB0
aGUgc3lzdGVtIG90aGVyIHRoYW4gYnVpbGRpbmcgdGhlIHBhdGNoZWQKPj4+IGUxMDAwZSBtb2R1
bGUgYWdhaW5zdCB0aGlzIGtlcm5lbCdzIGhlYWRlcnMpLCBzb21ldGhpbmcgd2VpcmQgaGFwcGVu
cwo+Pj4gd2hlbiB0aGUgZHJpdmVyIGlzIHJ1bm5pbmcgaW4gaXRzIGFsdGVybmF0ZSAiZWNkZXYi
IG1vZGUuCj4gWy4uLl0KPj4gU2luY2UgdGhpcyB3YXMgbW9zdGx5IGp1c3QgYSByZWJhc2UgZXJy
b3IgKHlvdSBjYW4gc2VlIGEgc2ltaWxhcgo+PiBjaGFuZ2UgaW4gdGhlIG9sZCBsb2NhdGlvbiBv
ZiB0aGlzIGNvZGUpLCBJJ20gbm90IHN1cmUgaWYgdGhpcyBoZWxwcwo+PiBuYXJyb3cgZG93biB0
aGUgc291cmNlIG9mIHRoZSBwcm9ibGVtIGJldHdlZW4gNC45LjExMCBhbmQgNC45LjE2OCBvcgo+
PiBub3QuwqAgSSdtIHN0aWxsIGxvb2tpbmcgZm9yIGlkZWFzIGZvciB0aGF0Lgo+IAo+IFVzaW5n
IHRoaXMga2VybmVsIHRyZWU6Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvcnQvbGludXgtc3RhYmxlLXJ0LmdpdC9sb2cvP2g9djQuOS1ydCZvZnM9MzEy
MCAKPiAKPiAKPiBJJ3ZlIGlkZW50aWZpZWQgdGhhdCB0aGUgY29kZSBhdCB0YWcgdjQuOS4xMjYg
aXMgImdvb2QiIGFuZCB0aGUgY29kZSBhdCAKPiB0YWcgdjQuOS4xMjcgaXMgImJhZCIuCj4gCj4g
SSd2ZSBkb25lIGEgYmlzZWN0ICh0d2ljZSwgZnJvbSBkaWZmZXJlbnQgc3RhcnRpbmcgcG9pbnRz
KSBhbmQgYm90aCAKPiB0aW1lcyBzZXR0bGVkIG9uIHRoaXMgY29tbWl0IGFzIHRoZSBvbmUgd2hp
Y2ggaW50cm9kdWNlZCB0aGUgcHJvYmxlbSBJJ20gCj4gZXhwZXJpZW5jaW5nOgo+IAo+IGNvbW1p
dCBjMGI4MDk5ODVhN2E0MThmY2MzMzYxYzIzOWFlNzkyNTAyNDUyODJkIChyZWZzL2Jpc2VjdC9i
YWQpCj4gQXV0aG9yOiBUb21hcyBXaW5rbGVyIDx0b21hcy53aW5rbGVyQGludGVsLmNvbT4KPiBE
YXRlOsKgwqAgVHVlIEphbiAyIDEyOjAxOjQxIDIwMTggKzAyMDAKPiAKPiAgwqDCoMKgIG1laTog
bWU6IGFsbG93IHJ1bnRpbWUgcG0gZm9yIHBsYXRmb3JtIHdpdGggRDBpMwo+IAo+ICDCoMKgwqAg
Y29tbWl0IGNjMzY1ZGNmMGU1NjI3MWJlZGYzZGU5NWY4ODkyMmFiZTI0OGU5NTEgdXBzdHJlYW0u
Cj4gCj4gIMKgwqDCoCA+RnJvbSB0aGUgcGNpIHBvd2VyIGRvY3VtZW50YXRpb246Cj4gIMKgwqDC
oCAiVGhlIGRyaXZlciBpdHNlbGYgc2hvdWxkIG5vdCBjYWxsIHBtX3J1bnRpbWVfYWxsb3coKSwg
dGhvdWdoLiAKPiBJbnN0ZWFkLAo+ICDCoMKgwqAgaXQgc2hvdWxkIGxldCB1c2VyIHNwYWNlIG9y
IHNvbWUgcGxhdGZvcm0tc3BlY2lmaWMgY29kZSBkbyB0aGF0IAo+ICh1c2VyIHNwYWNlCj4gIMKg
wqDCoCBjYW4gZG8gaXQgdmlhIHN5c2ZzIGFzIHN0YXRlZCBhYm92ZSkuLi4iCj4gCj4gIMKgwqDC
oCBIb3dldmVyLCB0aGUgUzBpeCByZXNpZGVuY3kgY2Fubm90IGJlIHJlYWNoZWQgd2l0aG91dCBN
RUkgZGV2aWNlIAo+IGdldHRpbmcKPiAgwqDCoMKgIGludG8gbG93IHBvd2VyIHN0YXRlLiBIZW5j
ZSwgZm9yIG1laSBkZXZpY2VzIHRoYXQgc3VwcG9ydCBEMGkzLCAKPiBpdCdzIGJldHRlcgo+ICDC
oMKgwqAgdG8gbWFrZSBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQgbWFuZGF0b3J5IGFuZCBub3Qg
cmVseSBvbiB0aGUgc3lzdGVtCj4gIMKgwqDCoCBpbnRlZ3JhdGlvbiBzdWNoIGFzIHVkZXYgcnVs
ZXMuCj4gIMKgwqDCoCBUaGlzIHBvbGljeSBjYW5ub3QgYmUgYXBwbGllZCBnbG9iYWxseSBhcyBz
b21lIG9sZGVyIHBsYXRmb3Jtcwo+ICDCoMKgwqAgd2VyZSBmb3VuZCB0byBoYXZlIGJyb2tlbiBw
b3dlciBtYW5hZ2VtZW50Lgo+IAo+ICDCoMKgwqAgQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3Jn
PiB2NC4xMysKPiAgwqDCoMKgIENjOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsLmoud3lzb2Nr
aUBpbnRlbC5jb20+Cj4gIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBUb21hcyBXaW5rbGVyIDx0b21h
cy53aW5rbGVyQGludGVsLmNvbT4KPiAgwqDCoMKgIFJldmlld2VkLWJ5OiBBbGV4YW5kZXIgVXN5
c2tpbiA8YWxleGFuZGVyLnVzeXNraW5AaW50ZWwuY29tPgo+ICDCoMKgwqAgU2lnbmVkLW9mZi1i
eTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiAKPiBJ
dCBpcyByZXByb2R1Y2libGUgZXZlcnkgdGltZTsgaWYgSSBidWlsZCBhdCB0aGUgcGFyZW50IGNv
bW1pdCAKPiAoM2QzNDMyNTgwOTExKSB0aGVuIHRoZSBkcml2ZXIgd29ya3MsIGFuZCBpZiBJIGFk
ZCB0aGUgY29tbWl0IGFib3ZlIHRoZW4gCj4gaXQgZmFpbHMuCj4gCj4gSG93ZXZlciBpdCdzIHVu
Y2xlYXIgdG8gbWUgaG93IHRoaXMgaXMgYWZmZWN0aW5nIG15IG1vZGlmaWVkIGUxMDAwZSAKPiBk
cml2ZXIgaW4gdGhpcyB3YXksIGV4Y2VwdCB0aGF0IGl0IGlzIHBlcmhhcHMgcG93ZXIgbWFuYWdl
bWVudCByZWxhdGVkPwo+IAo+IFNpbmNlIGl0IGFwcGVhcnMgdG8gYmUgYSBwbV9ydW50aW1lLXJl
bGF0ZWQgdGhpbmcsIGp1c3QgYXMgYW4gZXhwZXJpbWVudCAKPiBJIGRpZCB0cnkgY29tbWVudGlu
ZyBvdXQgZXZlcnkgc2luZ2xlIGNhbGwgdG8gcG1fcnVudGltZSogZnVuY3Rpb25zIGluIAo+IG5l
dGRldi5jLCBidXQgdGhpcyBkaWQgbm90IHJlc29sdmUgdGhlIHByb2JsZW0uwqAgRGl0dG8gZm9y
IGFueXRoaW5nIHdpdGggCj4gdGhlIHdvcmQgInN1c3BlbmQiIGluIGl0LsKgIEkgYWxzbyB0cmll
ZCBhZGRpbmcgZV9pbmZvKCkgbG9nZ2luZyBjYWxscyB0byAKPiBtb3N0IHBsYWNlcyB0aGF0IHVz
ZWQgcG1fIGNhbGxzIG90aGVyIHRoYW4gcG1fcnVudGltZV9nZXQvcHV0IChhbmQgaW4gCj4gcGFy
dGljdWxhciwgaW4gYWxsIG9mIHRoZSBwbV9vcHMgY2FsbGJhY2tzKSwgYW5kIG5vbmUgb2YgdGhl
bSB3ZXJlIGhpdCAKPiBkdXJpbmcgdGhlIHByb2JsZW0gZXZlbnRzLgo+IAo+IEFuZCBldmVuIHdo
ZW4gaXQncyBub3Qgd29ya2luZywgaWYgSSBgY2F0YCB2YXJpb3VzIHRoaW5ncyBpbiAKPiBgL3N5
cy9idXMvcGNpLy4uLi9wb3dlci9gIG9uIHRoZSBhZGFwdGVyIGRldmljZSwgaXQgYXBwZWFycyB0
byBhbGwgYmUgCj4gbm9uLXN1c3BlbmRlZCwgd2hpY2ggbWFrZXMgbWUgZG91YnQgdGhhdCBpdCBy
ZWFsbHkgaXMgYSBQTSBpc3N1ZSwgdW5sZXNzIAo+IEknbSBqdXN0IGxvb2tpbmcgaW4gdGhlIHdy
b25nIHBsYWNlcy4KPiAKPiBBbnkgaWRlYXM/Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KUGxlYXNlLCByZWZlciB0byB0aGUgY29tbWl0IGRl
ZjRlYzZkY2UzOTNlMjEzNmI2MmEwNTcxMmYzNWE3ZmE1ZjVlNTYKb24gdGhlIEplZmYgS2lyc2hl
cidzIG5leHQtcXVldWU6IApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9qa2lyc2hlci9uZXh0LXF1ZXVlLmdpdC9jb21taXQvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlP2lkPWRlZjRlYzZkY2UzOTNlMjEzNmI2MmEwNTcxMmYzNWE3ZmE1ZjVl
NTYKCldlIGFyZSB3b3JraW5nIHRvIHB1c2ggdGhpcyBwYXRjaCB0byB1cHN0cmVhbS4KVGhhbmtz
LApTYXNoYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
