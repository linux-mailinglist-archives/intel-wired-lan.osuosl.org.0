Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4029B7CB80
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:08:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E0C011FD90;
	Wed, 31 Jul 2019 18:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6TGm89u4f5NX; Wed, 31 Jul 2019 18:08:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A3E5F203AD;
	Wed, 31 Jul 2019 18:08:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 088CB1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 14:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0409F220C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 14:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sV5FOmS9ZY-1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 14:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 131742201C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 14:25:43 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id n11so66716964qtl.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 07:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ilmbv3LwU3n/nvyIEEtNJYwKwa9nTuuolqGHBIVjFFI=;
 b=iYCmpv1Tqh1NkgYy767EfDxhSa80zx8RiW4kNKouex1nvzWg72oJ9X7GJM6K07ifwt
 6VRnzR/m3gr3cd/1aWsA+gM62VS2ESES9PoHN8mEubZoj/YD4AX3/tL6YRGDjtW+Iqv8
 fDq6mSefDaWt3FIU4QaUg+O4Ou6AFTxKdpLsBjA4Pk1lfkGPU4fFSGug2GMUNjRM/HJQ
 cLx/EFgiS2gna/Jxl9XCLTzfgWAZQhd0DdGevNnfcQ+3nnGURsS8xnwQ753P8ygP7rKA
 I5exc7qLGwULM20inqfhdqfinkrQJVPFDWGCImQgr3kf/Pd0JxFDDQoTGvwC9ZFxbdXj
 Mh4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ilmbv3LwU3n/nvyIEEtNJYwKwa9nTuuolqGHBIVjFFI=;
 b=johlIDzNd7SRPibIFb7mx2aok88TupF3WbxGPnMAF/sSmmG3k2bCVhAJaR8pQelTeA
 B9iCK0TIE4jYn1Q8m8V87i9FogcfazfBIBxFSEkAbgW/+oRsui74eeeKHEc5eXvTABPX
 CTuyWAyTeBqSxA4/Hz+gvBP3ISQkR7XKPaT9UZOaRWnCP02oBE00cgOfJGc+XZQRJ9d3
 wlwA2qYkQjCmLkCCGO1bVLf3q/JKNH+UTWC7xU14/gcL1PHWyRkDRwdU7kAYsc2qnL2Y
 fppz33WpzWslNBkWXvjRLe1KKF9yuSF9Jo6JounV28dREvLo8JjBzbmpU0iF3xJsOiFE
 ktEg==
X-Gm-Message-State: APjAAAUpohV2ZhvJ5xpNCAP0u4dbwvJ723gLyDwo9u5s57Qgr7rXXxD6
 3bT84JbgKP9Zet8n/8WQwUGWGV24/PKLTdRuazk=
X-Google-Smtp-Source: APXvYqzxWgjc02cLAA2WDeeksryUHOXoxBOcJOOm7Xcnx36Do8x4tszpKdz8ALRxPxYQzxxL2NLzPIhRg0cfd5GDdNY=
X-Received: by 2002:aed:2ca3:: with SMTP id g32mr87786724qtd.359.1564583141992; 
 Wed, 31 Jul 2019 07:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-4-kevin.laatz@intel.com>
In-Reply-To: <20190730085400.10376-4-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 31 Jul 2019 16:25:30 +0200
Message-ID: <CAJ+HfNifxfgycmZFz8eBZq=FZXAgNQezNqUiy3Q1z4JBrUEkew@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
X-Mailman-Approved-At: Wed, 31 Jul 2019 18:08:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 03/11] libbpf: add flags
 to umem config
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxOTo0MywgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgYSAnZmxhZ3MnIGZpZWxkIHRvIHRo
ZSB1bWVtX2NvbmZpZyBhbmQgdW1lbV9yZWcgc3RydWN0cy4KPiBUaGlzIHdpbGwgYWxsb3cgZm9y
IG1vcmUgb3B0aW9ucyB0byBiZSBhZGRlZCBmb3IgY29uZmlndXJpbmcgdW1lbXMuCj4KPiBUaGUg
Zmlyc3QgdXNlIGZvciB0aGUgZmxhZ3MgZmllbGQgaXMgdG8gYWRkIGEgZmxhZyBmb3IgdW5hbGln
bmVkIGNodW5rcwo+IG1vZGUuIFRoZXNlIGZsYWdzIGNhbiBlaXRoZXIgYmUgdXNlci1wcm92aWRl
ZCBvciBmaWxsZWQgd2l0aCBhIGRlZmF1bHQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0
eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENpYXJhIExvZnR1cyA8
Y2lhcmEubG9mdHVzQGludGVsLmNvbT4KPgo+IC0tLQo+IHYyOgo+ICAgLSBSZW1vdmVkIHRoZSBo
ZWFkcm9vbSBjaGVjayBmcm9tIHRoaXMgcGF0Y2guIEl0IGhhcyBtb3ZlZCB0byB0aGUKPiAgICAg
cHJldmlvdXMgcGF0Y2guCj4KPiB2NDoKPiAgIC0gbW9kaWZpZWQgY2h1bmsgZmxhZyBkZWZpbmUK
PiAtLS0KPiAgdG9vbHMvaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5oIHwgOSArKysrKysrLS0K
PiAgdG9vbHMvbGliL2JwZi94c2suYyAgICAgICAgICAgICAgIHwgMyArKysKPiAgdG9vbHMvbGli
L2JwZi94c2suaCAgICAgICAgICAgICAgIHwgMiArKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvaW5jbHVk
ZS91YXBpL2xpbnV4L2lmX3hkcC5oIGIvdG9vbHMvaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5o
Cj4gaW5kZXggZmFhYTVjYTJhMTE3Li5hNjkxODAyZDc5MTUgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMv
aW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5oCj4gKysrIGIvdG9vbHMvaW5jbHVkZS91YXBpL2xp
bnV4L2lmX3hkcC5oCj4gQEAgLTE3LDYgKzE3LDEwIEBACj4gICNkZWZpbmUgWERQX0NPUFkgICAg
ICAgKDEgPDwgMSkgLyogRm9yY2UgY29weS1tb2RlICovCj4gICNkZWZpbmUgWERQX1pFUk9DT1BZ
ICAgKDEgPDwgMikgLyogRm9yY2UgemVyby1jb3B5IG1vZGUgKi8KPgo+ICsvKiBGbGFncyBmb3Ig
eHNrX3VtZW1fY29uZmlnIGZsYWdzICovCj4gKyNkZWZpbmUgWERQX1VNRU1fVU5BTElHTkVEX0NI
VU5LX0ZMQUdfU0hJRlQgMTUKPiArI2RlZmluZSBYRFBfVU1FTV9VTkFMSUdORURfQ0hVTktfRkxB
RyAoMSA8PCBYRFBfVU1FTV9VTkFMSUdORURfQ0hVTktfRkxBR19TSElGVCkKPiArCj4gIHN0cnVj
dCBzb2NrYWRkcl94ZHAgewo+ICAgICAgICAgX191MTYgc3hkcF9mYW1pbHk7Cj4gICAgICAgICBf
X3UxNiBzeGRwX2ZsYWdzOwo+IEBAIC00OSw4ICs1Myw5IEBAIHN0cnVjdCB4ZHBfbW1hcF9vZmZz
ZXRzIHsKPiAgI2RlZmluZSBYRFBfT1BUSU9OUyAgICAgICAgICAgICAgICAgICAgOAo+Cj4gIHN0
cnVjdCB4ZHBfdW1lbV9yZWcgewo+IC0gICAgICAgX191NjQgYWRkcjsgLyogU3RhcnQgb2YgcGFj
a2V0IGRhdGEgYXJlYSAqLwo+IC0gICAgICAgX191NjQgbGVuOyAvKiBMZW5ndGggb2YgcGFja2V0
IGRhdGEgYXJlYSAqLwo+ICsgICAgICAgX191NjQgYWRkcjsgICAgIC8qIFN0YXJ0IG9mIHBhY2tl
dCBkYXRhIGFyZWEgKi8KPiArICAgICAgIF9fdTY0IGxlbjo0ODsgICAvKiBMZW5ndGggb2YgcGFj
a2V0IGRhdGEgYXJlYSAqLwo+ICsgICAgICAgX191NjQgZmxhZ3M6MTY7IC8qIEZsYWdzIGZvciB1
bWVtICovCj4gICAgICAgICBfX3UzMiBjaHVua19zaXplOwo+ICAgICAgICAgX191MzIgaGVhZHJv
b207Cj4gIH07Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9icGYveHNrLmMgYi90b29scy9saWIv
YnBmL3hzay5jCj4gaW5kZXggNTAwN2I1ZDRmZDJjLi41ZTdlNGQ0MjBlZTAgMTAwNjQ0Cj4gLS0t
IGEvdG9vbHMvbGliL2JwZi94c2suYwo+ICsrKyBiL3Rvb2xzL2xpYi9icGYveHNrLmMKPiBAQCAt
MTE2LDYgKzExNiw3IEBAIHN0YXRpYyB2b2lkIHhza19zZXRfdW1lbV9jb25maWcoc3RydWN0IHhz
a191bWVtX2NvbmZpZyAqY2ZnLAo+ICAgICAgICAgICAgICAgICBjZmctPmNvbXBfc2l6ZSA9IFhT
S19SSU5HX0NPTlNfX0RFRkFVTFRfTlVNX0RFU0NTOwo+ICAgICAgICAgICAgICAgICBjZmctPmZy
YW1lX3NpemUgPSBYU0tfVU1FTV9fREVGQVVMVF9GUkFNRV9TSVpFOwo+ICAgICAgICAgICAgICAg
ICBjZmctPmZyYW1lX2hlYWRyb29tID0gWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfSEVBRFJPT007
Cj4gKyAgICAgICAgICAgICAgIGNmZy0+ZmxhZ3MgPSBYU0tfVU1FTV9fREVGQVVMVF9GTEFHUzsK
PiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAgICAgICAgfQo+Cj4gQEAgLTEyMyw2ICsxMjQs
NyBAQCBzdGF0aWMgdm9pZCB4c2tfc2V0X3VtZW1fY29uZmlnKHN0cnVjdCB4c2tfdW1lbV9jb25m
aWcgKmNmZywKPiAgICAgICAgIGNmZy0+Y29tcF9zaXplID0gdXNyX2NmZy0+Y29tcF9zaXplOwo+
ICAgICAgICAgY2ZnLT5mcmFtZV9zaXplID0gdXNyX2NmZy0+ZnJhbWVfc2l6ZTsKPiAgICAgICAg
IGNmZy0+ZnJhbWVfaGVhZHJvb20gPSB1c3JfY2ZnLT5mcmFtZV9oZWFkcm9vbTsKPiArICAgICAg
IGNmZy0+ZmxhZ3MgPSB1c3JfY2ZnLT5mbGFnczsKPiAgfQo+Cj4gIHN0YXRpYyBpbnQgeHNrX3Nl
dF94ZHBfc29ja2V0X2NvbmZpZyhzdHJ1Y3QgeHNrX3NvY2tldF9jb25maWcgKmNmZywKPiBAQCAt
MTgyLDYgKzE4NCw3IEBAIGludCB4c2tfdW1lbV9fY3JlYXRlKHN0cnVjdCB4c2tfdW1lbSAqKnVt
ZW1fcHRyLCB2b2lkICp1bWVtX2FyZWEsIF9fdTY0IHNpemUsCj4gICAgICAgICBtci5sZW4gPSBz
aXplOwo+ICAgICAgICAgbXIuY2h1bmtfc2l6ZSA9IHVtZW0tPmNvbmZpZy5mcmFtZV9zaXplOwo+
ICAgICAgICAgbXIuaGVhZHJvb20gPSB1bWVtLT5jb25maWcuZnJhbWVfaGVhZHJvb207Cj4gKyAg
ICAgICBtci5mbGFncyA9IHVtZW0tPmNvbmZpZy5mbGFnczsKPgo+ICAgICAgICAgZXJyID0gc2V0
c29ja29wdCh1bWVtLT5mZCwgU09MX1hEUCwgWERQX1VNRU1fUkVHLCAmbXIsIHNpemVvZihtcikp
Owo+ICAgICAgICAgaWYgKGVycikgewo+IGRpZmYgLS1naXQgYS90b29scy9saWIvYnBmL3hzay5o
IGIvdG9vbHMvbGliL2JwZi94c2suaAo+IGluZGV4IDgzM2E2ZTYwZDA2NS4uNDRhMDNkOGMzNGI5
IDEwMDY0NAo+IC0tLSBhL3Rvb2xzL2xpYi9icGYveHNrLmgKPiArKysgYi90b29scy9saWIvYnBm
L3hzay5oCj4gQEAgLTE3MCwxMiArMTcwLDE0IEBAIExJQkJQRl9BUEkgaW50IHhza19zb2NrZXRf
X2ZkKGNvbnN0IHN0cnVjdCB4c2tfc29ja2V0ICp4c2spOwo+ICAjZGVmaW5lIFhTS19VTUVNX19E
RUZBVUxUX0ZSQU1FX1NISUZUICAgIDEyIC8qIDQwOTYgYnl0ZXMgKi8KPiAgI2RlZmluZSBYU0tf
VU1FTV9fREVGQVVMVF9GUkFNRV9TSVpFICAgICAoMSA8PCBYU0tfVU1FTV9fREVGQVVMVF9GUkFN
RV9TSElGVCkKPiAgI2RlZmluZSBYU0tfVU1FTV9fREVGQVVMVF9GUkFNRV9IRUFEUk9PTSAwCj4g
KyNkZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRkxBR1MgMAo+Cj4gIHN0cnVjdCB4c2tfdW1lbV9j
b25maWcgewo+ICAgICAgICAgX191MzIgZmlsbF9zaXplOwo+ICAgICAgICAgX191MzIgY29tcF9z
aXplOwo+ICAgICAgICAgX191MzIgZnJhbWVfc2l6ZTsKPiAgICAgICAgIF9fdTMyIGZyYW1lX2hl
YWRyb29tOwo+ICsgICAgICAgX191MzIgZmxhZ3M7CgpBbmQgdGhlIGZsYWdzIGFkZGl0aW9uIGhl
cmUsIHVuZm9ydHVuYXRlbHksIHJlcXVpcmVzIHN5bWJvbCB2ZXJzaW9uaW5nCm9mIHhza191bWVt
X19jcmVhdGUoKS4gVGhhdCdsbCBiZSB0aGUgZmlyc3QgaW4gbGliYnBmISA6LSkKCgpCasO2cm4K
Cj4gIH07Cj4KPiAgLyogRmxhZ3MgZm9yIHRoZSBsaWJicGZfZmxhZ3MgZmllbGQuICovCj4gLS0K
PiAyLjE3LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
