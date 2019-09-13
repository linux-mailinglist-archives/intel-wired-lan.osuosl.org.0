Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C217BB17C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 06:33:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6867B2039A;
	Fri, 13 Sep 2019 04:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUD2zETtc7RI; Fri, 13 Sep 2019 04:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 707B1203F4;
	Fri, 13 Sep 2019 04:33:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B22A71BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 04:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A88328300C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 04:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7Qc3RiyAzTb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2019 04:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E981082BCE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 04:33:15 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id w2so4014759qkf.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 21:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T0dCPF8vk9ULuKJw0AOHaH0QHgTU+BgYYbjonrk1USU=;
 b=il3H5WUXtFnQepZZDwMXvFOv3EozGsv9JoWDtJwoqHUmZnOUkFDbZo4Yifs6SWHLnD
 qZzj/OHw1kqgev3L6W1syp4Lgj2/aLnC/ODFM5SykbyFlit7RUsxYA9hTRvKTr/CTE92
 Ikzrdf1oDoOnSkV4S4Ji30CruPFMWeWM9TL5hS/ErlE3gRim/+6IZqQfaD/6xepuVvUY
 QdC9PdtnWgnHagkwHXihgwpCePfLq2VjWBWd4dKNOMEt/rVRs5F6Epu2BGlgEsMT2bQw
 Eno2Nl31BxlOi80uIzxYX7yEUVQT6otiLUbLIyJpJ31WJ3UvBWiQA62BKj/HxLNMPhlV
 rI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T0dCPF8vk9ULuKJw0AOHaH0QHgTU+BgYYbjonrk1USU=;
 b=mdvO4FpGQBT+1VTQ3g/DbgkmYfrhXkdBVQSGk9e1vfkOzPQfZgWy6wsFeK+3RSsJMb
 /kxcD8VGINiURTFQ4HP1nZCH2KHZOiL5MKV9XAwmr/k1VYD2qWGG3XhlAZFSAsHijEHp
 F3jsrpK5BFXJTJsPe0kms3YaDU4ehQVL6uEQFVgftO4ptPCk4JnW9YS2i+wfOGVU6XdU
 Jc+WpRT2WbUlHm+SPN2xZ2kbTdjgXqxNNm1yIrDCPcfPrIGHcf88A3LUqH/GUaCyK7SH
 e3Dy0cH2WktDvZHvq4qI/6gpb9lPRhBelcqCn59okHRUhzKhEnAa/kib5Z/BXLigQM6k
 5Xaw==
X-Gm-Message-State: APjAAAXhxP42sYSg1OD1sT3Up804bG1Mje7ClEx3IUBVsUHZwIxXgvkz
 bIrqayXT5Tn5l8DAAsNoLF0k7riAkCAo+hc9Whg=
X-Google-Smtp-Source: APXvYqxTHK4eng6Pb63g05ufEgjuuCkKruliwdcCR4NYaO0aLVa36LCNge9zGWOZ81PHLI0hGxOwJWnM/XWsRCbTXcg=
X-Received: by 2002:a37:4b02:: with SMTP id y2mr44721354qka.493.1568349194998; 
 Thu, 12 Sep 2019 21:33:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190911172435.21042-1-ciara.loftus@intel.com>
 <20190911172435.21042-2-ciara.loftus@intel.com>
In-Reply-To: <20190911172435.21042-2-ciara.loftus@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 13 Sep 2019 06:33:01 +0200
Message-ID: <CAJ+HfNhuhyjRXoTXLhR3CbzhvYZZNZXYcbPxYAokL7HuDT6nAw@mail.gmail.com>
To: Ciara Loftus <ciara.loftus@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/3] ixgbe: fix xdp handle
 calculations
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
Cc: Kevin Laatz <kevin.laatz@intel.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAxMSBTZXAgMjAxOSBhdCAxOToyNywgQ2lhcmEgTG9mdHVzIDxjaWFyYS5sb2Z0dXNA
aW50ZWwuY29tPiB3cm90ZToKPgo+IENvbW1pdCA3Y2JiZjlmMWZhMjMgKCJpeGdiZTogZml4IHhk
cCBoYW5kbGUgY2FsY3VsYXRpb25zIikgcmVpbnRyb2R1Y2VkCj4gdGhlIGFkZGl0aW9uIG9mIHRo
ZSB1bWVtIGhlYWRyb29tIHRvIHRoZSB4ZHAgaGFuZGxlIGluIHRoZSBpeGdiZV96Y2FfZnJlZSwK
PiBpeGdiZV9hbGxvY19idWZmZXJfc2xvd196YyBhbmQgaXhnYmVfYWxsb2NfYnVmZmVyX3pjIGZ1
bmN0aW9ucy4gSG93ZXZlciwKPiB0aGUgaGVhZHJvb20gaXMgYWxyZWFkeSBhZGRlZCB0byB0aGUg
aGFuZGxlIGluIHRoZSBmdW5jdGlvbgo+IGl4Z2JlX3J1bl94ZHBfemMuIFRoaXMgY29tbWl0IHJl
bW92ZXMgdGhlIGxhdHRlciBhZGRpdGlvbiBhbmQgZml4ZXMgdGhlCj4gY2FzZSB3aGVyZSB0aGUg
aGVhZHJvb20gaXMgbm9uLXplcm8uCj4KPiBGaXhlczogN2NiYmY5ZjFmYTIzICgiaXhnYmU6IGZp
eCB4ZHAgaGFuZGxlIGNhbGN1bGF0aW9ucyIpCj4gU2lnbmVkLW9mZi1ieTogQ2lhcmEgTG9mdHVz
IDxjaWFyYS5sb2Z0dXNAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV94c2suYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPiBpbmRleCBhZDgwMmE4OTA5ZTAuLjVlZDhiNWEyNTdjZiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2su
Ywo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4g
QEAgLTE0NSw3ICsxNDUsNyBAQCBzdGF0aWMgaW50IGl4Z2JlX3J1bl94ZHBfemMoc3RydWN0IGl4
Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIsCj4gIHsKPiAgICAgICAgIHN0cnVjdCB4ZHBfdW1lbSAqdW1l
bSA9IHJ4X3JpbmctPnhza191bWVtOwo+ICAgICAgICAgaW50IGVyciwgcmVzdWx0ID0gSVhHQkVf
WERQX1BBU1M7Cj4gLSAgICAgICB1NjQgb2Zmc2V0ID0gdW1lbS0+aGVhZHJvb207Cj4gKyAgICAg
ICB1NjQgb2Zmc2V0OwoKLi4uYW5kIHNhbWUgY29tbWVudCBhcyBmcm9tIHRoZSBpNDBlIHBhdGNo
OiBSZXZlcnNlIHhtYXMgdHJlZSwgcGxlYXNlLgoKCkNoZWVycywKQmrDtnJuCgo+ICAgICAgICAg
c3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZzsKPiAgICAgICAgIHN0cnVjdCB4ZHBfZnJhbWUgKnhk
cGY7Cj4gICAgICAgICB1MzIgYWN0Owo+IEBAIC0xNTMsNyArMTUzLDcgQEAgc3RhdGljIGludCBp
eGdiZV9ydW5feGRwX3pjKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLAo+ICAgICAgICAg
cmN1X3JlYWRfbG9jaygpOwo+ICAgICAgICAgeGRwX3Byb2cgPSBSRUFEX09OQ0UocnhfcmluZy0+
eGRwX3Byb2cpOwo+ICAgICAgICAgYWN0ID0gYnBmX3Byb2dfcnVuX3hkcCh4ZHBfcHJvZywgeGRw
KTsKPiAtICAgICAgIG9mZnNldCArPSB4ZHAtPmRhdGEgLSB4ZHAtPmRhdGFfaGFyZF9zdGFydDsK
PiArICAgICAgIG9mZnNldCA9IHhkcC0+ZGF0YSAtIHhkcC0+ZGF0YV9oYXJkX3N0YXJ0Owo+Cj4g
ICAgICAgICB4ZHAtPmhhbmRsZSA9IHhza191bWVtX2FkanVzdF9vZmZzZXQodW1lbSwgeGRwLT5o
YW5kbGUsIG9mZnNldCk7Cj4KPiAtLQo+IDIuMTcuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
