Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EDC50E1E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 16:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8575086C3A;
	Mon, 24 Jun 2019 14:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id clIFRtSaF2De; Mon, 24 Jun 2019 14:32:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DC9686FC3;
	Mon, 24 Jun 2019 14:32:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57AEC1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 53D5884778
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0MirPQ-HbY64 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 14:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9983484693
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:32:35 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id j19so14640292qtr.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ctFjDCzhggvVXefGJm4hCGvB8upg6mpaGEDe91Sd9LA=;
 b=kYJvjoQR7lhZe1qJG+X81nw9eg9atRS+11KNat1Arg+wqTqhqZlp1CRvz4RXseIRCa
 ZE3ZnwOdwsnWlc6n8qwdekXlvWzlm56cKNoQrVKbBrx1fbrDHjuy5YakndF46g+P8t3i
 4GYHiGsL4f8iUPT3PzkyN/L+QC6kE+umsIMYRG9nZa9EKL9I/nGARi8W1te4N3S3JmC/
 sTK0RjEUsXmRPLArIyIyQj7K066C6FYwh7bMzrBXn3exkt3HMh5h6Bmm/0/xUfc3oCya
 LFTZZhkn4FDcZufCQxyJ2qDs8nmNNMjng9zoDy21WdCa1eBj40Xh7saGtrvu2HhAiHWx
 zFZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ctFjDCzhggvVXefGJm4hCGvB8upg6mpaGEDe91Sd9LA=;
 b=NW6Xsv55xqpCWCmMrDCdDUeqANml0GEO5r/WZzE4Q5/n+5vYDG7QbY/GZ575mVLUYf
 pjxuAk3tQbo7YTjA7AAzOWvMY+xKZinPP7GisqbhOUI0ofXmSDYGuUpi5V+Y1t4SZd0A
 l/lLAToMUhVhAYu00MZjLaIJv3knr4Q4Xt+fMmiXpS2uJMs4JlJIzeHY0Nin5A5KdZi9
 3IS/i3BTbm3E4AeV78TxMLG+AYqk88NXrxm28QbPoUcdlkj8XeaUr7cN7dHavChgEZQ9
 ibnTdyrfvLDaQxj6e7ea2cM2FbTnBMb0v4elQ5jJb5ClkzExO17sTTOsBaCfKLH2SZos
 Ag3A==
X-Gm-Message-State: APjAAAVfJR5QqV8KR2RBnLrfBGzwkY/37DtgRqF72cS6RxpwaIOPR/5r
 Au64J+2F8gMzPn7XXXjVI3j0BzHWrnE2tTIcR7+T30i7Qrrbrg==
X-Google-Smtp-Source: APXvYqz2ivGbven9zWTQ+Nqz8yp8WiF8tnns7upW8xDvZ3E0XTfPTmThwDw8gMBMvxG6UuEnNmFDPUjLb8X3lND95yE=
X-Received: by 2002:ac8:2f07:: with SMTP id j7mr118604479qta.359.1561386754593; 
 Mon, 24 Jun 2019 07:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-5-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-5-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 16:32:23 +0200
Message-ID: <CAJ+HfNibp3x7dYav4Ps8USEDhWgxnm8o=DXVBz8qZTn3NDc_=Q@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 04/11] i40e: add offset to zca_free
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
b3IgemVyb19jb3B5X2FsbG9jYXRvciB0bwo+IGk0MGVfemNhX2ZyZWUuIFRoaXMgY2hhbmdlIGlz
IHJlcXVpcmVkIHRvIGNhbGN1bGF0ZSB0aGUgaGFuZGxlLCBvdGhlcndpc2UsCj4gdGhpcyBmdW5j
dGlvbiB3aWxsIG5vdCB3b3JrIGluIHVuYWxpZ25lZCBjaHVuayBtb2RlIHNpbmNlIHdlIGNhbid0
IGVhc2lseSBtYXNrCj4gYmFjayB0byB0aGUgb3JpZ2luYWwgaGFuZGxlIGluIHVuYWxpZ25lZCBj
aHVuayBtb2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4KCkFja2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+
CgoKPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIHwg
OCArKysrLS0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmgg
fCAzICsrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiBpbmRl
eCBjODllNjkyZTg2NjMuLjhjMjgxZjM1NjI5MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiBAQCAtNDM4LDE2ICs0MzgsMTYgQEAgc3RhdGljIHZv
aWQgaTQwZV9yZXVzZV9yeF9idWZmZXJfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKPiAg
ICogQGFsbG9jOiBaZXJvLWNvcHkgYWxsb2NhdG9yCj4gICAqIEBoYW5kbGU6IEJ1ZmZlciBoYW5k
bGUKPiAgICoqLwo+IC12b2lkIGk0MGVfemNhX2ZyZWUoc3RydWN0IHplcm9fY29weV9hbGxvY2F0
b3IgKmFsbG9jLCB1bnNpZ25lZCBsb25nIGhhbmRsZSkKPiArdm9pZCBpNDBlX3pjYV9mcmVlKHN0
cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9yICphbGxvYywgdW5zaWduZWQgbG9uZyBoYW5kbGUsCj4g
KyAgICAgICAgICAgICAgIG9mZl90IG9mZikKPiAgewo+ICAgICAgICAgc3RydWN0IGk0MGVfcnhf
YnVmZmVyICpiaTsKPiAgICAgICAgIHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jpbmc7Cj4gLSAgICAg
ICB1NjQgaHIsIG1hc2s7Cj4gKyAgICAgICB1NjQgaHI7Cj4gICAgICAgICB1MTYgbnRhOwo+Cj4g
ICAgICAgICByeF9yaW5nID0gY29udGFpbmVyX29mKGFsbG9jLCBzdHJ1Y3QgaTQwZV9yaW5nLCB6
Y2EpOwo+ICAgICAgICAgaHIgPSByeF9yaW5nLT54c2tfdW1lbS0+aGVhZHJvb20gKyBYRFBfUEFD
S0VUX0hFQURST09NOwo+IC0gICAgICAgbWFzayA9IHJ4X3JpbmctPnhza191bWVtLT5jaHVua19t
YXNrOwo+Cj4gICAgICAgICBudGEgPSByeF9yaW5nLT5uZXh0X3RvX2FsbG9jOwo+ICAgICAgICAg
YmkgPSAmcnhfcmluZy0+cnhfYmlbbnRhXTsKPiBAQCAtNDU1LDcgKzQ1NSw3IEBAIHZvaWQgaTQw
ZV96Y2FfZnJlZShzdHJ1Y3QgemVyb19jb3B5X2FsbG9jYXRvciAqYWxsb2MsIHVuc2lnbmVkIGxv
bmcgaGFuZGxlKQo+ICAgICAgICAgbnRhKys7Cj4gICAgICAgICByeF9yaW5nLT5uZXh0X3RvX2Fs
bG9jID0gKG50YSA8IHJ4X3JpbmctPmNvdW50KSA/IG50YSA6IDA7Cj4KPiAtICAgICAgIGhhbmRs
ZSAmPSBtYXNrOwo+ICsgICAgICAgaGFuZGxlIC09IG9mZjsKPgo+ICAgICAgICAgYmktPmRtYSA9
IHhkcF91bWVtX2dldF9kbWEocnhfcmluZy0+eHNrX3VtZW0sIGhhbmRsZSk7Cj4gICAgICAgICBi
aS0+ZG1hICs9IGhyOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmgKPiBpbmRleCA4Y2MwYTJlN2Q5YTIuLjg1NjkxZGM5YWM0MiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmgKPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmgKPiBAQCAtMTIsNyArMTIsOCBAQCBpbnQg
aTQwZV9xdWV1ZV9wYWlyX2Rpc2FibGUoc3RydWN0IGk0MGVfdnNpICp2c2ksIGludCBxdWV1ZV9w
YWlyKTsKPiAgaW50IGk0MGVfcXVldWVfcGFpcl9lbmFibGUoc3RydWN0IGk0MGVfdnNpICp2c2ks
IGludCBxdWV1ZV9wYWlyKTsKPiAgaW50IGk0MGVfeHNrX3VtZW1fc2V0dXAoc3RydWN0IGk0MGVf
dnNpICp2c2ksIHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICB1MTYgcWlkKTsKPiAtdm9pZCBpNDBlX3pjYV9mcmVlKHN0cnVjdCB6ZXJvX2NvcHlfYWxsb2Nh
dG9yICphbGxvYywgdW5zaWduZWQgbG9uZyBoYW5kbGUpOwo+ICt2b2lkIGk0MGVfemNhX2ZyZWUo
c3RydWN0IHplcm9fY29weV9hbGxvY2F0b3IgKmFsbG9jLCB1bnNpZ25lZCBsb25nIGhhbmRsZSwK
PiArICAgICAgICAgICAgICAgb2ZmX3Qgb2ZmKTsKPiAgYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZl
cnNfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTE2IGNsZWFuZWRfY291bnQpOwo+ICBp
bnQgaTQwZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1
ZGdldCk7Cj4KPiAtLQo+IDIuMTcuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
