Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C2019419B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 15:34:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD4E3261E5;
	Thu, 26 Mar 2020 14:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I8ydjbFcX2Vo; Thu, 26 Mar 2020 14:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9204226230;
	Thu, 26 Mar 2020 14:34:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8C591BF362
 for <intel-wired-lan@osuosl.org>; Thu, 26 Mar 2020 14:34:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2FE3871E4
 for <intel-wired-lan@osuosl.org>; Thu, 26 Mar 2020 14:34:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9-hi6_lHc_V for <intel-wired-lan@osuosl.org>;
 Thu, 26 Mar 2020 14:34:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B198A87156
 for <intel-wired-lan@osuosl.org>; Thu, 26 Mar 2020 14:34:21 +0000 (UTC)
IronPort-SDR: IdU7HEGuRTVn2TnbB3MrNOTNRfv6KdldDZNVDUoV4EyclQteUx5uML9R2teM7w6JWdhmAJQtYK
 ZX5lPajH4FeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 07:34:20 -0700
IronPort-SDR: /syfVzavJwcuaIxjpv2unRkVXiJTCOwp2ECJowtdRXz9YCjyYx77pmhLCNc8CC8APjf+jaJcEM
 Y677XYpZL7Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="271190693"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.226.169])
 ([10.214.226.169])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2020 07:34:19 -0700
To: intel-wired-lan@osuosl.org
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
 <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
 <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
 <3895cb4d-cc9d-238a-0776-a1fd3a490664@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <065e5e61-0342-3882-d6af-21618b44033c@intel.com>
Date: Thu, 26 Mar 2020 16:34:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <3895cb4d-cc9d-238a-0776-a1fd3a490664@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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

T24gMy8yNi8yMDIwIDEzOjQxLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIEthaS1IZW5nLAo+
IAo+IAo+IEFtIDI2LjAzLjIwIHVtIDEyOjI5IHNjaHJpZWIgS2FpLUhlbmcgRmVuZzoKPiAKPj4+
IE9uIE1hciAyNSwgMjAyMCwgYXQgMjM6NDksIFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5t
cGcuZGU+IHdyb3RlOgo+IAo+Pj4gQW0gMjUuMDMuMjAgdW0gMTQ6NTggc2NocmllYiBOZWZ0aW4s
IFNhc2hhOgo+Pj4+IE9uIDMvMjUvMjAyMCAwODo0MywgQWFyb24gTWEgd3JvdGU6Cj4+Pgo+Pj4+
PiBPbiAzLzI1LzIwIDI6MzYgUE0sIE5lZnRpbiwgU2FzaGEgd3JvdGU6Cj4+Pj4+PiBPbiAzLzI1
LzIwMjAgMDY6MTcsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pgo+Pj4+Pj4+PiBPbiBNYXIgMjQs
IDIwMjAsIGF0IDAzOjE2LCBBYXJvbiBNYSA8YWFyb24ubWFAY2Fub25pY2FsLmNvbT4gd3JvdGU6
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE1FIHRha2VzIDIrIHNlY29uZHMgdG8gdW4tY29uZmlndXJlIFVM
UCBtb2RlIGRvbmUgYWZ0ZXIgcmVzdW1lCj4+Pj4+Pj4+IGZyb20gczJpZGxlIG9uIHNvbWUgVGhp
bmtQYWQgbGFwdG9wcy4KPj4+Pj4+Pj4gV2l0aG91dCBlbm91Z2ggd2FpdCwgcmVzZXQgYW5kIHJl
LWluaXQgd2lsbCBmYWlsIHdpdGggZXJyb3IuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MsIHRoaXMg
cGF0Y2ggc29sdmVzIHRoZSBpc3N1ZS4gV2UgY2FuIGRyb3AgdGhlIERNSSBxdWlyayBpbgo+Pj4+
Pj4+IGZhdm9yIG9mIHRoaXMgcGF0Y2guCj4+Pj4+Pj4KPj4+Pj4+Pj4gRml4ZXM6IGYxNWJiNmRk
ZTczOGNjOGZhMCAoImUxMDAwZTogQWRkIHN1cHBvcnQgZm9yIFMwaXgiKQo+Pj4+Pj4+PiBCdWdM
aW5rOiBodHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC9idWdzLzE4NjU1NzAKPj4+Pj4+Pj4gU2ln
bmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+Cj4+Pj4+Pj4+IC0t
LQo+Pj4+Pj4+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwg
NCArKy0tCj4+Pj4+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+Pj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+Pj4+Pj4+PiBpbmRleCBiNDEzNWM1MGU5MDUuLjE0N2Ix
NWEyZjhiMyAxMDA2NDQKPj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2ljaDhsYW4uYwo+Pj4+Pj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+Pj4+IEBAIC0xMjQwLDkgKzEyNDAsOSBAQCBzdGF0aWMg
czMyIGUxMDAwX2Rpc2FibGVfdWxwX2xwdF9scChzdHJ1Y3QKPj4+Pj4+Pj4gZTEwMDBfaHcgKmh3
LCBib29sIGZvcmNlKQo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldzMyKEgy
TUUsIG1hY19yZWcpOwo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiAtwqDCoMKgwqDCoMKgwqAgLyogUG9sbCB1cCB0byAzMDBtc2VjIGZvciBNRSB0byBjbGVh
ciBVTFBfQ0ZHX0RPTkUuICovCj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBQb2xsIHVwIHRv
IDIuNXNlYyBmb3IgTUUgdG8gY2xlYXIgVUxQX0NGR19ET05FLiAqLwo+Pj4+Pj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgd2hpbGUgKGVyMzIoRldTTSkgJiBFMTAwMF9GV1NNX1VMUF9DRkdfRE9ORSkg
ewo+Pj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoaSsrID09IDMwKSB7Cj4+Pj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpKysgPT0gMjUwKSB7Cj4+Pj4+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9IC1FMTAwMF9FUlJfUEhZ
Owo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+
Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGUg
cmV0dXJuIHZhbHVlIHdhcyBub3QgY2F1Z2h0IGJ5IHRoZSBjYWxsZXIsIHNvIHRoZSBlcnJvciBl
bmRzIHVwCj4+Pj4+Pj4gdW5ub3RpY2VkLgo+Pj4+Pj4+IE1heWJlIGxldCB0aGUgY2FsbGVyIGNo
ZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YKPj4+Pj4+PiBlMTAwMF9kaXNhYmxlX3VscF9scHRfbHAo
KT8KPj4+Cj4+Pj4+PiBJIGEgYml0IGNvbmZ1c2VkLiBJbiBvdXIgcHJldmlvdXMgY29udmVyc2F0
aW9uIHlvdSB0b2xkIE1FIG5vdCAKPj4+Pj4+IHJ1bm5pbmcuCj4+Pj4+PiBsZXQgbWUgc2hpbW1p
bmcgaW4uIEluY3JlYXNpbmcgZGVsYXkgd29uJ3QgYmUgc29sdmUgdGhlIHByb2JsZW0gCj4+Pj4+
PiBhbmQganVzdAo+Pj4+Pj4gbWFzayBpdC4gV2UgbmVlZCB0byB1bmRlcnN0YW5kIHdoeSBNRSB0
YWtlIHRvbyBtdWNoIHRpbWUuIFdoYXQgaXMKPj4+Pj4+IHByb2JsZW0gd2l0aCB0aGlzIHNwZWNp
ZmljIHN5c3RlbT8KPj4+Pj4+IFNvLCBiYXNpY2FsbHkgbm8gTUUgc3lzdGVtIHNob3VsZCB3b3Jr
cyBmb3IgeW91Lgo+Pj4+Pgo+Pj4+PiBTb21lIGxhcHRvcHMgTUUgd29yayB0aGF0J3Mgd2h5IG9u
bHkgcmVwcm9kdWNlIGlzc3VlIG9uIHNvbWUgbGFwdG9wcy4KPj4+Pj4gSW4gdGhpcyBpc3N1ZSBp
MjE5IGlzIGNvbnRyb2xsZWQgYnkgTUUuCj4+Pj4KPj4+PiBXaG8gY2FuIGV4cGxhaW4gLSB3aHkg
TUUgcmVxdWlyZWQgdG9vIG11Y2ggdGltZSBvbiB0aGlzIHN5c3RlbT8KPj4+PiBQcm9iYWJseSBu
ZWVkIHdvcmsgd2l0aCBNRS9CSU9TIHZlbmRvciBhbmQgdW5kZXJzdGFuZCBpdC4KPj4+PiBEZWxh
eSB3aWxsIGp1c3QgbWFzayB0aGUgcmVhbCBwcm9ibGVtIC0gd2UgbmVlZCB0byBmaW5kIHJvb3Qg
Y2F1c2UuCj4+Pj4+IFF1aXJrIGlzIG9ubHkgZm9yIDEgbW9kZWwgdHlwZS4gQnV0IGlzc3VlIGlz
IHJlcHJvZHVjZWQgYnkgbW9yZSAKPj4+Pj4gbW9kZWxzLgo+Pj4+PiBTbyBpdCB3b24ndCB3b3Jr
Lgo+Pj4KPj4+IChXaGVyZSBpcyBBYXJvbuKAmXMgcmVwbHk/IEl0IHdhc27igJl0IGRlbGl2ZXJl
ZCB0byBtZSB5ZXQuKQo+Pj4KPj4+IEFzIHRoaXMgaXMgY2xlYXJseSBhIHJlZ3Jlc3Npb24sIHBs
ZWFzZSByZXZlcnQgdGhlIGNvbW1pdCBmb3Igbm93LAo+Pj4gYW5kIHRoZW4gZmluZCBhIHdheSB0
byBjb3JyZWN0bHkgaW1wbGVtZW50IFMwaXggc3VwcG9ydC4gTGludXjigJkKPj4+IHJlZ3Jlc3Np
b24gcG9saWN5IGRlbWFuZHMgdGhhdCBhcyBubyBmaXggaGFzIGJlZW4gZm91bmQgc2luY2UKPj4+
IHY1LjUtcmMxLiBDaGFuZ2luZyBJbnRlbCBNRSBzZXR0aW5ncywgZXZlbiBpZiBpdCB3b3VsZCB3
b3JrIGFyb3VuZAo+Pj4gdGhlIGlzc3VlLCBpcyBub3QgYW4gYWNjZXB0YWJsZSBzb2x1dGlvbi4g
RGVsYXlpbmcgdGhlIHJlc3VtZSB0aW1lCj4+PiBpcyBhbHNvIG5vdCBhIHNvbHV0aW9uLgo+Pgo+
PiBUaGUgczBpeCBwYXRjaCBjYW4gcmVkdWNlIHBvd2VyIGNvbnN1bXB0aW9uLCBmaW5hbGx5IG1h
a2VzIFMyaWRsZSBhbgo+PiBhY2NlcHRhYmxlIHNsZWVwIG1ldGhvZC4gU28gSSdkIHNheSBpdCdz
IGEgZml4LCBhbGJlaXQgYSByZWdyZXNzaW9uCj4+IHdhcyBpbnRyb2R1Y2VkLgo+Pgo+Pj4gUmVn
YXJkaW5nIEludGVsIE1hbmFnZW1lbnQgRW5naW5lLCBvbmx5IEludGVsIGtub3dzIHdoYXQgaXQg
ZG9lcwo+Pj4gYW5kIHdoYXQgdGhlIGVycm9yIGlzLCBhcyB0aGUgTUUgZmlybXdhcmUgaXMgcHJv
cHJpZXRhcnkgYW5kCj4+PiBjbG9zZWQuCj4+Pgo+Pj4gTGFzdGx5LCB0aGVyZSBpcyBubyB3YXkg
dG8gZnVsbHkgZGlzYWJsZSB0aGUgSW50ZWwgTWFuYWdlbWVudAo+Pj4gRW5naW5lLiBUaGUgSEFQ
IHN0dWZmIGNsYWltcyB0byBzdG9wIHRoZSBJbnRlbCBNRSBleGVjdXRpb24sIGJ1dAo+Pj4gbm9i
b2R5IGtub3dzLCBpZiBpdOKAmXMgc3VjY2Vzc2Z1bC4KPj4+Cj4+PiBBYXJvbiwgS2FpLUhhbmcs
IGNhbiB5b3Ugc2VuZCB0aGUgcmV2ZXJ0Pwo+Pgo+PiBJIGNvbnNpZGVyIHRoYXQgYXMgYW4gaW1w
b3J0YW50IGZpeCBmb3IgczJpZGxlLCBJIGRvbid0IHRoaW5rCj4+IHJldmVydGluZyBpcyBhcHBy
b3ByaWF0ZS4KPiAKPiBJZiB0aGVyZSBpcyBhIGZpeCB3aXRoIG5vIG90aGVyIHJlZ3Jlc3Npb24s
IEkgYWdyZWUuIEJ1dCB0aGVyZSBoYXMgbm90IAo+IGJlZW4gb25lLCBzbyBwbGVhc2UgcmV2ZXJ0
LiBJdCBkb2VzbuKAmXQgbWF0dGVyIGlmIHRoZSBjb21taXQgaW50cm9kdWNpbmcgCj4gdGhlIHJl
Z3Jlc3Npb24gZml4ZXMgc29tZXRoaW5nIGVsc2UuIEl0IGdldHMgdG9vIGNvbXBsaWNhdGVkIHRv
IGRlY2lkZSwgCj4gd2hpY2ggcmVncmVzc2lvbiBpcyB3b3J0aCBpdCBvciBub3QuIFRoZSBMaW51
eCBrZXJuZWwgZ3VhcmFudGVlcyBpdHMgCj4gdXNlcnMsIHRoZXkgY2FuIHVwZGF0ZSBhbnkgdGlt
ZSB3aXRob3V0IGJyZWFraW5nIHVzZXIgc3BhY2UgKGluIHRoaXMgCj4gY2FzZSBzdXNwZW5kL3Jl
c3VtZSkuwqAgUGxlYXNlIHJlYWQgTGludXPigJkgc2V2ZXJhbCBtZXNzYWdlcyBhYm91dCB0aGF0
LiAKPiBIaXMgbWVzc2FnZSBbMV0gZXhhY3RseSBhZGRyZXNzZXMgeW91ciBhcmd1bWVudHMuCj4g
ClJldmVydCBpcyBubyBvcHRpb24uIFMwaXggc3VwcG9ydGVkIG9uIG5vbmUgTUUgc3lzdGVtLCBh
cHByb3ZlZCBieSBJbnRlbCAKZGVzaWduIHRlYW0gYW5kIHBvd2VyIG1hbmFnZW1lbnQgZG9tYWlu
IG93bmVyLgpWZW5kb3Igc2hvdWxkIHByb3ZpZGUgbm9uZSBNRSBCSU9TIEkgdGhvdWdodC4gT3Vy
IFBBRSB3aWxsIHdvcmsgdG93YXJkIAptZWV0IHRoaXMuCj4+IFllYWgsIEhFTEwgTk8hCj4+Cj4+
IEd1ZXNzIHdoYXQ/IFlvdSdyZSB3cm9uZy4gWU9VIEFSRSBNSVNTSU5HIFRIRSAjMSBLRVJORUwg
UlVMRS4KPj4KPj4gV2UgZG8gbm90IHJlZ3Jlc3MsIGFuZCB3ZSBkbyBub3QgcmVncmVzcyBleGFj
dGx5IGJlY2F1c2UgeW91ciBhcmUgMTAwJSAKPj4gd3JvbmcuCj4+Cj4+IEFuZCB0aGUgcmVhc29u
IHlvdSBzdGF0ZSBmb3IgeW91ciBvcGluaW9uIGlzIGluIGZhY3QgZXhhY3RseSAqV0hZKiB5b3UK
Pj4gYXJlIHdyb25nLgo+Pgo+PiBZb3VyICJnb29kIHJlYXNvbnMiIGFyZSBwdXJlIGFuZCB1dHRl
ciBnYXJiYWdlLgo+Pgo+PiBUaGUgd2hvbGUgcG9pbnQgb2YgIndlIGRvIG5vdCByZWdyZXNzIiBp
cyBzbyB0aGF0IHBlb3BsZSBjYW4gdXBncmFkZQo+PiB0aGUga2VybmVsIGFuZCBuZXZlciBoYXZl
IHRvIHdvcnJ5IGFib3V0IGl0Lgo+Pgo+Pj4gS2VybmVsIGhhZCBhIGJ1ZyB3aGljaCBoYXMgYmVl
biBmaXhlZAo+Pgo+PiBUaGF0IGlzICpFTlRJUkVMWSogaW1tYXRlcmlhbC4KPj4KPj4gR3V5cywg
d2hldGhlciBzb21ldGhpbmcgd2FzIGJ1Z2d5IG9yIG5vdCBET0VTIE5PVCBNQVRURVIuCj4gCj4g
U28sIHBsZWFzZSAoYWxzbyBJbnRlbCBkZXZlbG9wZXJzKSwgcGxlYXNlIGFkaGVyZSB0byB0aGlz
IHJ1bGUsIGFuZCAKPiByZXZlcnQgdGhlIGNvbW1pdC4KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4g
Cj4gUGF1bAo+IAo+IAo+IFsxXTogaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTgvOC8zLzYyMQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
