Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4EB3BB7BE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 09:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3304783A5F;
	Mon,  5 Jul 2021 07:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJDjxMy4nfYh; Mon,  5 Jul 2021 07:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3189583A4A;
	Mon,  5 Jul 2021 07:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E15C81BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF5C340169
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ay-IwV7SxT1m for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 07:23:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2174400B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:23:33 +0000 (UTC)
Received: from [222.129.38.159] (helo=[192.168.1.18])
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <aaron.ma@canonical.com>)
 id 1m0Iwy-0000jS-Ew; Mon, 05 Jul 2021 07:23:28 +0000
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210704142808.f43jbcufk37hundo@pali>
From: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <3bc507f7-3eb9-1bef-d47d-cad42fcb1c48@canonical.com>
Date: Mon, 5 Jul 2021 15:23:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210704142808.f43jbcufk37hundo@pali>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, kuba@kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDcvNC8yMSAxMDoyOCBQTSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gKyBCam9ybiwgS3J6eXN6
dG9mIGFuZCBsaW51eC1wY2kKPiAKPiBPbiBGcmlkYXkgMDIgSnVseSAyMDIxIDEyOjUxOjE5IEFh
cm9uIE1hIHdyb3RlOgo+PiBDaGVjayBQQ0kgc3RhdGUgd2hlbiByZC93ciBpb21lbS4KPj4gSW1w
bGVtZW50IHdyMzIgZnVuY3Rpb24gYXMgcmQzMiB0b28uCj4+Cj4+IFdoZW4gdW5wbHVnIFRCVCBk
b2NrIHdpdGggaTIyNSwgcmQvd3IgUENJIGlvbWVtIHdpbGwgY2F1c2UgZXJyb3IgbG9nOgo+PiBU
cmFjZToKPj4gQlVHOiB1bmFibGUgdG8gaGFuZGxlIHBhZ2UgZmF1bHQgZm9yIGFkZHJlc3M6IDAw
MDAwMDAwMDAwMGI2MDQKPj4gT29wczogMDAwMCBbIzFdIFNNUCBOT1BUSQo+PiBSSVA6IDAwMTA6
aWdjX3JkMzIrMHgxYy8weDkwIFtpZ2NdCj4+IENhbGwgVHJhY2U6Cj4+IGlnY19wdHBfc3VzcGVu
ZCsweDZjLzB4YTAgW2lnY10KPj4gaWdjX3B0cF9zdG9wKzB4MTIvMHg1MCBbaWdjXQo+PiBpZ2Nf
cmVtb3ZlKzB4N2YvMHgxYzAgW2lnY10KPj4gcGNpX2RldmljZV9yZW1vdmUrMHgzZS8weGIwCj4+
IF9fZGV2aWNlX3JlbGVhc2VfZHJpdmVyKzB4MTgxLzB4MjQwCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDE2ICsrKysrKysrKysrKysrKysKPj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaCB8ICA3ICsrLS0tLS0K
Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4u
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4+IGluZGV4IGYx
YWRmMTU0ZWM0YS4uNjA2YjcyY2I2MTkzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX21haW4uYwo+PiBAQCAtNTI5Miw2ICs1MjkyLDEwIEBAIHUzMiBpZ2NfcmQz
MihzdHJ1Y3QgaWdjX2h3ICpodywgdTMyIHJlZykKPj4gICAJdTggX19pb21lbSAqaHdfYWRkciA9
IFJFQURfT05DRShody0+aHdfYWRkcik7Cj4+ICAgCXUzMiB2YWx1ZSA9IDA7Cj4+ICAgCj4+ICsJ
aWYgKGlnYy0+cGRldiAmJgo+PiArCQlpZ2MtPnBkZXYtPmVycm9yX3N0YXRlID09IHBjaV9jaGFu
bmVsX2lvX3Blcm1fZmFpbHVyZSkKPiAKPiBIZWxsbyEgVGhpcyBjb2RlIHBhdHRlcm4gYW5kIGNv
bW1pdCBtZXNzYWdlIGxvb2tzIGxpa2UgdGhhdCB3ZSBjb3VsZCB1c2UKPiBwY2lfZGV2X2lzX2Rp
c2Nvbm5lY3RlZCgpIGhlbHBlciBmdW5jdGlvbiBmb3IgY2hlY2tpbmcgaWYgZGV2aWNlIGlzCj4g
c3RpbGwgY29ubmVjdGVkIG9yIHdhcyBkaXNjb25uZWN0ZWQuCj4gCj4gQXBwYXJlbnRseSBwY2lf
ZGV2X2lzX2Rpc2Nvbm5lY3RlZCgpIGlzIGRlZmluZWQgb25seSBpbiBwcml2YXRlIGhlYWRlcgo+
IGZpbGUgZHJpdmVycy9wY2kvcGNpLmggYW5kIG5vdCBpbiBwdWJsaWMgaW5jbHVkZS9saW51eC9w
Y2kuaC4KPiAKPiBBYXJvbjogY2FuIHlvdSBjaGVjayBpZiBwY2lfZGV2X2lzX2Rpc2Nvbm5lY3Rl
ZCgpIGlzIHJlYWxseSBzb21ldGhpbmcKPiB3aGljaCBzaG91bGQgYmUgdXNlZCBhbmQgaXQgaGVs
cHMgeW91Pwo+IAoKSGkgUGFsaSwKCkhvdyBhYm91dCB1c2luZyBwY2lfY2hhbm5lbF9vZmZsaW5l
IGluc3RlYWQ/Ckl0J3MgcmVhZHkgYW5kIGFsc28gc2FmZSBmb3IgZnJvemVuIHN0YXRlLCBhbmQg
dmVyaWZpZWQgb24gaHcuCgo+IEJqb3JuLCBLcnp5c3p0b2Y6IHdoYXQgZG8geW91IHRoaW5rIGFi
b3V0IGxpZnRpbmcgaGVscGVyIGZ1bmN0aW9uCj4gcGNpX2Rldl9pc19kaXNjb25uZWN0ZWQoKSB0
byBiZSBhdmFpbGFibGUgdG8gYWxsIGRyaXZlcnMgYW5kIG5vdCBvbmx5IGluCj4gUENJIHN1YnN5
c3RlbT8KPiAKPiBJIHRoaW5rIHRoYXQgc3VjaCBoZWxwZXIgZnVuY3Rpb24gbWFrZXMgZHJpdmVy
IGNvZGUgbW9yZSByZWFkYWJsZSBhbmQKPiBjYW4gYmUgdXNlZnVsIGFsc28gZm9yIG90aGVyIGRy
aXZlcnMgd2hpY2ggYXJlIGNoZWNraW5nIGlmIHJldHVybiB2YWx1ZQo+IGlzIGFsbCBGJ3MuCj4g
Cj4+ICsJCXJldHVybiAwOwo+IAo+IEFhcm9uOiBzaG91bGQgbm90IHlvdSByZXR1cm4gYWxsIEYn
cyBvbiBlcnJvcj8gQmVjYXVzZSBmZXcgbGluZXMgYmVsb3cKPiBpbiB0aGlzIGZ1bmN0aW9uIGlz
IHJldHVybmVkIHZhbHVlIHdpdGggYWxsIEYncyB3aGVuIFBDSWUgbGluayBsb3N0Lgo+IAoKSWYg
eW91IGFncmVlIHdpdGggdGhlIGFib3ZlIGNoYW5nZSwgSSBjYW4gZml4IGl0IHRvICJyZXR1cm4g
LTEiIGluIHYyLgoKVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLApBYXJvbgoKCj4+ICsKPj4gICAJ
dmFsdWUgPSByZWFkbCgmaHdfYWRkcltyZWddKTsKPiAKPiBBbnl3YXksIHRoaXMgY29kZSBsb29r
cyB0byBiZSByYWN5LiBXaGVuIHBjaV9jaGFubmVsX2lvX3Blcm1fZmFpbHVyZSBpcwo+IHNldCAo
ZS5nLiBieSBob3RwbHVnIGludGVycnVwdCkgYWZ0ZXIgY2hlY2tpbmcgZm9yIHBkZXYtPmVycm9y
X3N0YXRlIGFuZAo+IHByaW9yIGV4ZWN1dGluZyBhYm92ZSByZWFkbCgpIHRoZW4gbWVudGlvbmVk
IGZhdGFsIGVycm9yIHN0aWxsIG9jY3Vycy4KPiAKPj4gICAKPj4gICAJLyogcmVhZHMgc2hvdWxk
IG5vdCByZXR1cm4gYWxsIEYncyAqLwo+PiBAQCAtNTMwOCw2ICs1MzEyLDE4IEBAIHUzMiBpZ2Nf
cmQzMihzdHJ1Y3QgaWdjX2h3ICpodywgdTMyIHJlZykKPj4gICAJcmV0dXJuIHZhbHVlOwo+PiAg
IH0KPj4gICAKPj4gK3ZvaWQgaWdjX3dyMzIoc3RydWN0IGlnY19odyAqaHcsIHUzMiByZWcsIHUz
MiB2YWwpCj4+ICt7Cj4+ICsJc3RydWN0IGlnY19hZGFwdGVyICppZ2MgPSBjb250YWluZXJfb2Yo
aHcsIHN0cnVjdCBpZ2NfYWRhcHRlciwgaHcpOwo+PiArCXU4IF9faW9tZW0gKmh3X2FkZHIgPSBS
RUFEX09OQ0UoaHctPmh3X2FkZHIpOwo+PiArCj4+ICsJaWYgKGlnYy0+cGRldiAmJgo+PiArCQlp
Z2MtPnBkZXYtPmVycm9yX3N0YXRlID09IHBjaV9jaGFubmVsX2lvX3Blcm1fZmFpbHVyZSkKPj4g
KwkJcmV0dXJuOwo+PiArCj4+ICsJd3JpdGVsKCh2YWwpLCAmaHdfYWRkclsocmVnKV0pOwo+PiAr
fQo+PiArCj4+ICAgaW50IGlnY19zZXRfc3BkX2RwbHgoc3RydWN0IGlnY19hZGFwdGVyICphZGFw
dGVyLCB1MzIgc3BkLCB1OCBkcGx4KQo+PiAgIHsKPj4gICAJc3RydWN0IGlnY19tYWNfaW5mbyAq
bWFjID0gJmFkYXB0ZXItPmh3Lm1hYzsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19yZWdzLmgKPj4gaW5kZXggY2MxNzQ4NTM1NTRiLi5lYjRiZTg3ZDBlOGIgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oCj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oCj4+IEBAIC0yNjAsMTMg
KzI2MCwxMCBAQCBzdHJ1Y3QgaWdjX2h3Owo+PiAgIHUzMiBpZ2NfcmQzMihzdHJ1Y3QgaWdjX2h3
ICpodywgdTMyIHJlZyk7Cj4+ICAgCj4+ICAgLyogd3JpdGUgb3BlcmF0aW9ucywgaW5kZXhlZCB1
c2luZyBEV09SRFMgKi8KPj4gLSNkZWZpbmUgd3IzMihyZWcsIHZhbCkgXAo+PiAtZG8geyBcCj4+
IC0JdTggX19pb21lbSAqaHdfYWRkciA9IFJFQURfT05DRSgoaHcpLT5od19hZGRyKTsgXAo+PiAt
CXdyaXRlbCgodmFsKSwgJmh3X2FkZHJbKHJlZyldKTsgXAo+PiAtfSB3aGlsZSAoMCkKPj4gK3Zv
aWQgaWdjX3dyMzIoc3RydWN0IGlnY19odyAqaHcsIHUzMiByZWcsIHUzMiB2YWwpOwo+PiAgIAo+
PiAgICNkZWZpbmUgcmQzMihyZWcpIChpZ2NfcmQzMihodywgcmVnKSkKPj4gKyNkZWZpbmUgd3Iz
MihyZWcsIHZhbCkgKGlnY193cjMyKGh3LCByZWcsIHZhbCkpCj4+ICAgCj4+ICAgI2RlZmluZSB3
cmZsKCkgKCh2b2lkKXJkMzIoSUdDX1NUQVRVUykpCj4+ICAgCj4+IC0tIAo+PiAyLjMwLjIKPj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
