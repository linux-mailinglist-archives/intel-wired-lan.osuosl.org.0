Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA1A50E05
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 16:30:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACDFE85BCE;
	Mon, 24 Jun 2019 14:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XpsIverfJOOk; Mon, 24 Jun 2019 14:30:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FADC84BCF;
	Mon, 24 Jun 2019 14:30:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 462DF1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 418D084525
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:29:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ci2ATzO4xv30 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 14:29:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F33C84415
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:29:57 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id j19so14629601qtr.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6aelL0MYmoOsC39DEdXgcWsMn76iOSdVzTtBRnix9CY=;
 b=bPD9fJzSQhKHGsiTuI4l9fH1CJtHQoMunWWiZarqS9+JnriIG67gcEDTjK0s3yJKEf
 4DFsz1e8l947ZNusMXVQcz0HS6YGDpKdarjDw74b3E8Pk8qBjp0H2u+FWSVtH2qEHYew
 5IqrIrT5wb8uSiD1YpC05+PmxDfL1lEJcTKIKlYPANKtdgcMUK5WViPRKquEP0rcg6U1
 Be4tz+M+P/a6lruSQZPThuc1vBwEPL3OEeyeqFIOJDMu/qrT1EQgteK+I1jwodMnxiBe
 N0G+uQRcseLvebe3Nq5xQn6eH85RpZKD7YhEdHfYyS4pWQpsi/WPFqYC2vDKqVk13kRE
 MIMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6aelL0MYmoOsC39DEdXgcWsMn76iOSdVzTtBRnix9CY=;
 b=RJrsF/UOUGCtckA1625QnUphrhHuj1Vv57qmqqaScdp2STG/UzwspaFuyTSm7PZMth
 vopMFHrLx67nVO5XTUlCY1LGchLGEj8xqQvrKJCT/Mv2Wh78X1i4HvHM3i9G6rjwKAnI
 jXv6HveIzIl8ZLnanYYnCDIUPiHsJf0scz1XVB9ZEifDj9DmJ6ulhLqADnOsDE8rYjMf
 Icr2KUFRtggtwNk1zFUDgF7gi5qWiBK8LpPHpuj4EgJJy+eS4oJEFTWFUzDmOwgU4pda
 GvVFoKssC/YubP2rwZmIMkB3xMNNPWpFc2zpsSqndAZ797f6zkrO6K5AxdyvgY+EOnDq
 T4QQ==
X-Gm-Message-State: APjAAAXrzJje+nukbw++ERT1NENMVIMKG1pJsFGCLjr5INy4x6Q7+FBB
 F1Wipp+AHEOrk4yNihPgeJejetL6sXv3tIdNpVE=
X-Google-Smtp-Source: APXvYqwG7TgKreWxn+atApq7FFCeEtjit9RsVISUqPHmI/gF0Gc11UM2Oz0soeGxLwq8FLZIaRRvWwc3Xzuxz5BKY2M=
X-Received: by 2002:ac8:25b1:: with SMTP id e46mr110318908qte.36.1561386596482; 
 Mon, 24 Jun 2019 07:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-2-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-2-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 16:29:45 +0200
Message-ID: <CAJ+HfNh5bqmjXFQ5r0h-K10H+ZaSEYoi0Xx5j+2VJ_rq+Ktu-g@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 01/11] i40e: simplify Rx buffer recycle
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
dGVsLmNvbT4gd3JvdGU6Cj4KPiBDdXJyZW50bHksIHRoZSBkbWEsIGFkZHIgYW5kIGhhbmRsZSBh
cmUgbW9kaWZpZWQgd2hlbiB3ZSByZXVzZSBSeCBidWZmZXJzCj4gaW4gemVyby1jb3B5IG1vZGUu
IEhvd2V2ZXIsIHRoaXMgaXMgbm90IHJlcXVpcmVkIGFzIHRoZSBpbnB1dHMgdG8gdGhlCj4gZnVu
Y3Rpb24gYXJlIGNvcGllcywgbm90IHRoZSBvcmlnaW5hbCB2YWx1ZXMgdGhlbXNlbHZlcy4gQXMg
d2UgdXNlIHRoZQo+IGNvcGllcyB3aXRoaW4gdGhlIGZ1bmN0aW9uLCB3ZSBjYW4gdXNlIHRoZSBv
cmlnaW5hbCAnb2xkX2JpJyB2YWx1ZXMKPiBkaXJlY3RseSB3aXRob3V0IGhhdmluZyB0byBtYXNr
IGFuZCBhZGQgdGhlIGhlYWRyb29tLgo+CgpJIGxpa2UgdGhhdCB0aGUgcmVxdWlyZWQgY2hhbmdl
IHdhcyB0dXJuZWQgaW50byBhIGNsZWFudXAhIE5pY2UhCgpBY2tlZC1ieTogQmrDtnJuIFTDtnBl
bCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0eiA8
a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfeHNrLmMgfCAxMyArKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV94c2suYwo+IGluZGV4IDFiMTc0ODY1NDNhYy4uYzg5ZTY5MmU4NjYz
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2su
Ywo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+IEBA
IC00MTksOCArNDE5LDYgQEAgc3RhdGljIHZvaWQgaTQwZV9yZXVzZV9yeF9idWZmZXJfemMoc3Ry
dWN0IGk0MGVfcmluZyAqcnhfcmluZywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKm9sZF9iaSkKPiAgewo+ICAgICAgICAgc3RydWN0
IGk0MGVfcnhfYnVmZmVyICpuZXdfYmkgPSAmcnhfcmluZy0+cnhfYmlbcnhfcmluZy0+bmV4dF90
b19hbGxvY107Cj4gLSAgICAgICB1bnNpZ25lZCBsb25nIG1hc2sgPSAodW5zaWduZWQgbG9uZyly
eF9yaW5nLT54c2tfdW1lbS0+Y2h1bmtfbWFzazsKPiAtICAgICAgIHU2NCBociA9IHJ4X3Jpbmct
Pnhza191bWVtLT5oZWFkcm9vbSArIFhEUF9QQUNLRVRfSEVBRFJPT007Cj4gICAgICAgICB1MTYg
bnRhID0gcnhfcmluZy0+bmV4dF90b19hbGxvYzsKPgo+ICAgICAgICAgLyogdXBkYXRlLCBhbmQg
c3RvcmUgbmV4dCB0byBhbGxvYyAqLwo+IEBAIC00MjgsMTQgKzQyNiw5IEBAIHN0YXRpYyB2b2lk
IGk0MGVfcmV1c2VfcnhfYnVmZmVyX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCj4gICAg
ICAgICByeF9yaW5nLT5uZXh0X3RvX2FsbG9jID0gKG50YSA8IHJ4X3JpbmctPmNvdW50KSA/IG50
YSA6IDA7Cj4KPiAgICAgICAgIC8qIHRyYW5zZmVyIHBhZ2UgZnJvbSBvbGQgYnVmZmVyIHRvIG5l
dyBidWZmZXIgKi8KPiAtICAgICAgIG5ld19iaS0+ZG1hID0gb2xkX2JpLT5kbWEgJiBtYXNrOwo+
IC0gICAgICAgbmV3X2JpLT5kbWEgKz0gaHI7Cj4gLQo+IC0gICAgICAgbmV3X2JpLT5hZGRyID0g
KHZvaWQgKikoKHVuc2lnbmVkIGxvbmcpb2xkX2JpLT5hZGRyICYgbWFzayk7Cj4gLSAgICAgICBu
ZXdfYmktPmFkZHIgKz0gaHI7Cj4gLQo+IC0gICAgICAgbmV3X2JpLT5oYW5kbGUgPSBvbGRfYmkt
PmhhbmRsZSAmIG1hc2s7Cj4gLSAgICAgICBuZXdfYmktPmhhbmRsZSArPSByeF9yaW5nLT54c2tf
dW1lbS0+aGVhZHJvb207Cj4gKyAgICAgICBuZXdfYmktPmRtYSA9IG9sZF9iaS0+ZG1hOwo+ICsg
ICAgICAgbmV3X2JpLT5hZGRyID0gb2xkX2JpLT5hZGRyOwo+ICsgICAgICAgbmV3X2JpLT5oYW5k
bGUgPSBvbGRfYmktPmhhbmRsZTsKPgo+ICAgICAgICAgb2xkX2JpLT5hZGRyID0gTlVMTDsKPiAg
fQo+IC0tCj4gMi4xNy4xCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
