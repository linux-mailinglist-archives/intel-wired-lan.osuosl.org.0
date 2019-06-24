Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365C650E22
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 16:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E65AD8731A;
	Mon, 24 Jun 2019 14:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0oUkM6pNzuHr; Mon, 24 Jun 2019 14:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F3DC86FCD;
	Mon, 24 Jun 2019 14:33:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D212D1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:33:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE09B84D16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Stxvna3PalIY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 14:33:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 34CE985BA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:33:11 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id r6so9910919qkc.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Y9Y2C5sAs+7ESo3yvMuycRT88EAj9a/XPg+oK6UXn8E=;
 b=AAvZB0tJ+TlcBgquT4PTY6Is1MdjKBOhaoYpASqP8SVqMf0w1oof4avV7z7JovvO1S
 LgWVyNQyWo3jd39ADq+ZiJIfcIdlrFI5pd+oR0608yOLcJs5CGNOd/D/7dIec0bNFR5U
 t1Yh0nYR5EP+PAsFn6QmCWfQKdlPl1Zn9s9NPr7dRYBkFX2OyfGGpkpNN8OhTa9xpFa2
 fn/+QDqLuv6Ytj7Mfi0eV0q0NQyKLcovkKIdP53Suoh7nwPaP0xCAfOJJvYyw3EcUJxT
 WYBgeEZL6xOjVKiddZo0NV6tYn43Z2wvIs0SGsGo9mVmHuTVQWS3jYI8judBfBQcJ8Q0
 jQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Y9Y2C5sAs+7ESo3yvMuycRT88EAj9a/XPg+oK6UXn8E=;
 b=J47xmEEfDpWBMiSIhkzwRr0RpX12nVGA/LrYzYQflZc769sYFdTunov2Xee0o1+vlU
 ERGd4pS5pgo+bhc/86A2jrzmkS7tE7iF72pU9lm1ChFCL3upMS58bUzEyfa8QetoK0ss
 QXiLYUZsFlaroGbx28HQnnKucUDRjzUof053qV0SYmeKRLmw2VSof3JowpbcxDLLRatm
 qQAoPN3l9I57AgDAy3D4rw9Ly+czru/axjdaftsnCHunBsO1pXmSThweFyPYLoBc7Bqw
 PKg1ssRp0ZqWYlaxJHwRdTwtMMLBagUzLsWmN+tiVaX0SncEYIB5UqPR6XSJwdqn4pa/
 knXA==
X-Gm-Message-State: APjAAAW/j5e8JpXKaNsVW4UIw5xRP0mPno4p7JgpwVeg9hA4xT+Henmq
 N05yfJqSQ9wkRZZQsbJfUblIVeuzKQK2HNBKoaQ=
X-Google-Smtp-Source: APXvYqzpeMWaYgUjFY2oiWqgasi4EBY4BCU1lPGhcVFWMmJwsJoFyDMJa4XvPuFDReBSdr0tWjVYftj+nP6p62mqFn4=
X-Received: by 2002:a05:620a:1270:: with SMTP id
 b16mr100549560qkl.333.1561386790244; 
 Mon, 24 Jun 2019 07:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-6-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-6-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 16:32:59 +0200
Message-ID: <CAJ+HfNg9chx674Sc=Ht-UJ_iYoau=X6LJYn5w05rUQ85b9oyDg@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 05/11] ixgbe: add offset to zca_free
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMCBKdW4gMjAxOSBhdCAxOToyNSwgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgdGhlIG9mZnNldCBwYXJhbSB0byBm
b3IgemVyb19jb3B5X2FsbG9jYXRvciB0bwo+IGl4Z2JlX3pjYV9mcmVlLiBUaGlzIGNoYW5nZSBp
cyByZXF1aXJlZCB0byBjYWxjdWxhdGUgdGhlIGhhbmRsZSwgb3RoZXJ3aXNlLAo+IHRoaXMgZnVu
Y3Rpb24gd2lsbCBub3Qgd29yayBpbiB1bmFsaWduZWQgY2h1bmsgbW9kZSBzaW5jZSB3ZSBjYW4n
dCBlYXNpbHkgbWFzawo+IGJhY2sgdG8gdGhlIG9yaWdpbmFsIGhhbmRsZSBpbiB1bmFsaWduZWQg
Y2h1bmsgbW9kZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtldmluIExhYXR6IDxrZXZpbi5sYWF0ekBp
bnRlbC5jb20+CgpBY2tlZC1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29t
PgoKCj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R4cnhf
Y29tbW9uLmggfCAzICsrLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdi
ZV94c2suYyAgICAgICAgIHwgOCArKysrLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV90eHJ4X2NvbW1vbi5oIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHhyeF9jb21tb24uaAo+IGluZGV4IGQ5M2E2OTBhZmY3NC4u
NDk3MDJlMmE0MzYwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX3R4cnhfY29tbW9uLmgKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV90eHJ4X2NvbW1vbi5oCj4gQEAgLTMzLDcgKzMzLDggQEAgc3RydWN0IHhk
cF91bWVtICppeGdiZV94c2tfdW1lbShzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRhcHRlciwKPiAg
aW50IGl4Z2JlX3hza191bWVtX3NldHVwKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLCBz
dHJ1Y3QgeGRwX3VtZW0gKnVtZW0sCj4gICAgICAgICAgICAgICAgICAgICAgICAgIHUxNiBxaWQp
Owo+Cj4gLXZvaWQgaXhnYmVfemNhX2ZyZWUoc3RydWN0IHplcm9fY29weV9hbGxvY2F0b3IgKmFs
bG9jLCB1bnNpZ25lZCBsb25nIGhhbmRsZSk7Cj4gK3ZvaWQgaXhnYmVfemNhX2ZyZWUoc3RydWN0
IHplcm9fY29weV9hbGxvY2F0b3IgKmFsbG9jLCB1bnNpZ25lZCBsb25nIGhhbmRsZSwKPiArICAg
ICAgICAgICAgICAgb2ZmX3Qgb2ZmKTsKPgo+ICB2b2lkIGl4Z2JlX2FsbG9jX3J4X2J1ZmZlcnNf
emMoc3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3JpbmcsIHUxNiBjbGVhbmVkX2NvdW50KTsKPiAgaW50
IGl4Z2JlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2su
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4gaW5kZXgg
NDk1MzZhZGFmZThlLi4xZWMwMjA3N2NjYjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+IEBAIC0yNjgsMTYgKzI2OCwxNiBAQCBzdGF0aWMg
dm9pZCBpeGdiZV9yZXVzZV9yeF9idWZmZXJfemMoc3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3Jpbmcs
Cj4gICAgICAgICBvYmktPnNrYiA9IE5VTEw7Cj4gIH0KPgo+IC12b2lkIGl4Z2JlX3pjYV9mcmVl
KHN0cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9yICphbGxvYywgdW5zaWduZWQgbG9uZyBoYW5kbGUp
Cj4gK3ZvaWQgaXhnYmVfemNhX2ZyZWUoc3RydWN0IHplcm9fY29weV9hbGxvY2F0b3IgKmFsbG9j
LCB1bnNpZ25lZCBsb25nIGhhbmRsZSwKPiArICAgICAgICAgICAgICAgb2ZmX3Qgb2ZmKQo+ICB7
Cj4gICAgICAgICBzdHJ1Y3QgaXhnYmVfcnhfYnVmZmVyICpiaTsKPiAgICAgICAgIHN0cnVjdCBp
eGdiZV9yaW5nICpyeF9yaW5nOwo+IC0gICAgICAgdTY0IGhyLCBtYXNrOwo+ICsgICAgICAgdTY0
IGhyOwo+ICAgICAgICAgdTE2IG50YTsKPgo+ICAgICAgICAgcnhfcmluZyA9IGNvbnRhaW5lcl9v
ZihhbGxvYywgc3RydWN0IGl4Z2JlX3JpbmcsIHpjYSk7Cj4gICAgICAgICBociA9IHJ4X3Jpbmct
Pnhza191bWVtLT5oZWFkcm9vbSArIFhEUF9QQUNLRVRfSEVBRFJPT007Cj4gLSAgICAgICBtYXNr
ID0gcnhfcmluZy0+eHNrX3VtZW0tPmNodW5rX21hc2s7Cj4KPiAgICAgICAgIG50YSA9IHJ4X3Jp
bmctPm5leHRfdG9fYWxsb2M7Cj4gICAgICAgICBiaSA9IHJ4X3JpbmctPnJ4X2J1ZmZlcl9pbmZv
Owo+IEBAIC0yODUsNyArMjg1LDcgQEAgdm9pZCBpeGdiZV96Y2FfZnJlZShzdHJ1Y3QgemVyb19j
b3B5X2FsbG9jYXRvciAqYWxsb2MsIHVuc2lnbmVkIGxvbmcgaGFuZGxlKQo+ICAgICAgICAgbnRh
Kys7Cj4gICAgICAgICByeF9yaW5nLT5uZXh0X3RvX2FsbG9jID0gKG50YSA8IHJ4X3JpbmctPmNv
dW50KSA/IG50YSA6IDA7Cj4KPiAtICAgICAgIGhhbmRsZSAmPSBtYXNrOwo+ICsgICAgICAgaGFu
ZGxlIC09IG9mZjsKPgo+ICAgICAgICAgYmktPmRtYSA9IHhkcF91bWVtX2dldF9kbWEocnhfcmlu
Zy0+eHNrX3VtZW0sIGhhbmRsZSk7Cj4gICAgICAgICBiaS0+ZG1hICs9IGhyOwo+IC0tCj4gMi4x
Ny4xCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
