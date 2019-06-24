Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADEA50E10
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 16:30:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E537985657;
	Mon, 24 Jun 2019 14:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmNA0A53ItpT; Mon, 24 Jun 2019 14:30:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AF4984693;
	Mon, 24 Jun 2019 14:30:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2DB71BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3273204C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mn6AfHXNg0BJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 14:30:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 0BC3720016
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:30:49 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id d15so9876264qkl.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=11lK59YDMxKSz6mXU2KGCY9MvqRCcSB/VBlnjMcKATg=;
 b=hIa1fwnHi0E4pA9ODwnJCh3iy8AyQE783+J8LO2nFASHhu/uth6PuSh+YStKX1qLEs
 67WNcet5NG1Ew0RHAXfqUrNqmA6GQEWl9HbDtMiy60kgIAxhYVdMZ6B9q4WuFUx79+r/
 iDt4O0ppH29XJ0+x65eWif+LRlI2+s4bAFnOCOm25kA8uIAv2Jfl4tAo5rlQSr6SEwZO
 XH57MVyUkPOxiVulGkyn/AP4pShbrMsqyH13QXJiYJ2k/KzZ5ct7l4yESIhjatjJ3+B6
 0Uwxg+j78/VAghHvLnUK5cwC00PkL/6jjc6ynV0crdpdK9bgyjKZWH2t+jQa0jJaX2jA
 5qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=11lK59YDMxKSz6mXU2KGCY9MvqRCcSB/VBlnjMcKATg=;
 b=iRr35XXDvtpCzGslTQK/UEFV4lYjap64/w5wcCtLxHHi0oU2oSzoJzzDT9YsadB5Xh
 kDXiWEANFb7U1Lq2sHDUrG2pc3iHYnQRP9XUCcBf/16/AZt3rVtpRo/Qdic1wJbB4JYw
 MhAZOMzmDDzyMXVIM2AgpL4isZF7BW5r9kWO8GxYy8MEVmbu+Se5m+9HNQtTHDsQYA0v
 +UFeqNzsxtWwmVPnc39GTdz9YqyohNaF2R82fQ/XYUdseyzQb2v80c0XlZ0tyJrV/LdC
 0Dya8qgmsKZJ4tjaBO1lxHR5aTXflOYa3d10D1kqw5aPv40EhbUySFMTwaX88u3XTVQk
 A5Pg==
X-Gm-Message-State: APjAAAWss0eRj5DO5/NQU5vo1wW1n8KPZzcWz7U8x8n4SOsFQ2GibuLI
 9fIw+zo6CJI91N34RCf6Jji9D0CXtZ/yAomjrUk=
X-Google-Smtp-Source: APXvYqz1SFCvmwZ3IST4zw4OAov3RX6uDX06+jQAWwGYOQYABIagXpRAjY8php/Q1DdRkquo/W/PeSV0JZF1Z14ThiM=
X-Received: by 2002:a37:d16:: with SMTP id 22mr102835149qkn.232.1561386648099; 
 Mon, 24 Jun 2019 07:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-3-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-3-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 16:30:37 +0200
Message-ID: <CAJ+HfNhcj+LOQ5uLmyj0rZnomvW83NFDty0CQqj4a1wV7sQnmA@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 02/11] ixgbe: simplify Rx buffer
 recycle
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
cmlnaW5hbCAnb2JpJyB2YWx1ZXMKPiBkaXJlY3RseSB3aXRob3V0IGhhdmluZyB0byBtYXNrIGFu
ZCBhZGQgdGhlIGhlYWRyb29tLgo+Cj4gU2lnbmVkLW9mZi1ieTogS2V2aW4gTGFhdHogPGtldmlu
LmxhYXR6QGludGVsLmNvbT4KCkFja2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBp
bnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfeHNrLmMgfCAxMyArKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfeHNrLmMKPiBpbmRleCBiZmU5NWNlMGJkN2YuLjQ5NTM2YWRhZmU4ZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4gQEAg
LTI1MSw4ICsyNTEsNiBAQCBpeGdiZV9yeF9idWZmZXIgKml4Z2JlX2dldF9yeF9idWZmZXJfemMo
c3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3JpbmcsCj4gIHN0YXRpYyB2b2lkIGl4Z2JlX3JldXNlX3J4
X2J1ZmZlcl96YyhzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZywKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGl4Z2JlX3J4X2J1ZmZlciAqb2JpKQo+ICB7Cj4g
LSAgICAgICB1bnNpZ25lZCBsb25nIG1hc2sgPSAodW5zaWduZWQgbG9uZylyeF9yaW5nLT54c2tf
dW1lbS0+Y2h1bmtfbWFzazsKPiAtICAgICAgIHU2NCBociA9IHJ4X3JpbmctPnhza191bWVtLT5o
ZWFkcm9vbSArIFhEUF9QQUNLRVRfSEVBRFJPT007Cj4gICAgICAgICB1MTYgbnRhID0gcnhfcmlu
Zy0+bmV4dF90b19hbGxvYzsKPiAgICAgICAgIHN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKm5iaTsK
Pgo+IEBAIC0yNjIsMTQgKzI2MCw5IEBAIHN0YXRpYyB2b2lkIGl4Z2JlX3JldXNlX3J4X2J1ZmZl
cl96YyhzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZywKPiAgICAgICAgIHJ4X3JpbmctPm5leHRf
dG9fYWxsb2MgPSAobnRhIDwgcnhfcmluZy0+Y291bnQpID8gbnRhIDogMDsKPgo+ICAgICAgICAg
LyogdHJhbnNmZXIgcGFnZSBmcm9tIG9sZCBidWZmZXIgdG8gbmV3IGJ1ZmZlciAqLwo+IC0gICAg
ICAgbmJpLT5kbWEgPSBvYmktPmRtYSAmIG1hc2s7Cj4gLSAgICAgICBuYmktPmRtYSArPSBocjsK
PiAtCj4gLSAgICAgICBuYmktPmFkZHIgPSAodm9pZCAqKSgodW5zaWduZWQgbG9uZylvYmktPmFk
ZHIgJiBtYXNrKTsKPiAtICAgICAgIG5iaS0+YWRkciArPSBocjsKPiAtCj4gLSAgICAgICBuYmkt
PmhhbmRsZSA9IG9iaS0+aGFuZGxlICYgbWFzazsKPiAtICAgICAgIG5iaS0+aGFuZGxlICs9IHJ4
X3JpbmctPnhza191bWVtLT5oZWFkcm9vbTsKPiArICAgICAgIG5iaS0+ZG1hID0gb2JpLT5kbWE7
Cj4gKyAgICAgICBuYmktPmFkZHIgPSBvYmktPmFkZHI7Cj4gKyAgICAgICBuYmktPmhhbmRsZSA9
IG9iaS0+aGFuZGxlOwo+Cj4gICAgICAgICBvYmktPmFkZHIgPSBOVUxMOwo+ICAgICAgICAgb2Jp
LT5za2IgPSBOVUxMOwo+IC0tCj4gMi4xNy4xCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
