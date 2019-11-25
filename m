Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A7E109375
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Nov 2019 19:24:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6023F21505;
	Mon, 25 Nov 2019 18:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ge4g5rxVgG1i; Mon, 25 Nov 2019 18:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ECCA520763;
	Mon, 25 Nov 2019 18:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44EBF1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 18:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 417FC85B3D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 18:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EvfT04gbz17e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2019 18:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 222F285A1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 18:24:06 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id j20so17298394ioo.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 10:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xcKIB6x0BdLkd0mUw6rlhrNb22CiiLAEebAgeSrkRYg=;
 b=kmLO2jEA2MLSQZbH30JQKAglG7apXby1uRNKK64H2XHNKrlWoihH/jhG59Ns34hO5Q
 Wlsfy1yJkdu4psM+TjA5W4MPTY9Akf1hkUkSPscRJn9Ue6pYI4uOxLWaXwop/wGXJEbF
 zblR/3aKzd/67QIcXvyPRhNj47g6LEhmoULc3a2dwxnb9ja/9Ykd6dP+Cd3lyuIq/wvD
 /7GbjQ7c7dlhlVof12EeNPyB2pEeL/PZA8nlQsSW6n4sh3BlkLO4xoCvyWxG0siL//Kt
 IIMQJ3IqrvNIK5hxXnbPxZE8aFrg1U/bkQDmBS/l+3vdkv5WdXWtaY9drzOVMTxkCpLU
 q/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xcKIB6x0BdLkd0mUw6rlhrNb22CiiLAEebAgeSrkRYg=;
 b=jUmeHSmBmgw0sNgAcb5s3cYh17BbzV+xCj7+s9XhrI2AHA4ywRsn8f/GUWL3rthLUr
 e7YKDfe2CigCTeI9aJ644V7oTNRgoSHzSbmyUQl5coTelrV/PFXa7/CKtjyx9WQ+Ce/r
 eamuKMrtRC3BAedDg0vwuCvg5x8HCfMdzwiSy/4d1WodJDGA/LKSwOnz6MyMt+H94yxL
 QtVrc6/TtEqk0AK0QwpOrj8ph/r1yUYKf1VnuChW7AxCt8jSmU5N/sXAhKVpwCMDgeCI
 nwWcWgVnZMWSuxnB+xNk5xHKdLd6RGkuHPjEkBYTVX6njii+g1uRv8xiahsJs8dEzd7u
 XYug==
X-Gm-Message-State: APjAAAU2av/4a0RDzRv7bwybMk6UBzV2ZyWwZ86rvUDQGjncVvs9+RkS
 urUENw4d1Ga+/ftnNFTnRER/6sZqGmKHtCIo8tk=
X-Google-Smtp-Source: APXvYqxiHn9ZLBPpjB9BaKFS3i2KgLbfl4VoPIkBESxB7McEJoY3bkyIZtPFfZfVZQbXtPSc2hcXNw4JWPmAqliUvNQ=
X-Received: by 2002:a5d:8b94:: with SMTP id p20mr25608093iol.97.1574706245210; 
 Mon, 25 Nov 2019 10:24:05 -0800 (PST)
MIME-Version: 1.0
References: <20191125142452.21819-1-radoslawx.tyl@intel.com>
 <7e9bbd9b-ee05-b207-a472-77d03c3ee6ac@molgen.mpg.de>
In-Reply-To: <7e9bbd9b-ee05-b207-a472-77d03c3ee6ac@molgen.mpg.de>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 25 Nov 2019 10:23:54 -0800
Message-ID: <CAKgT0UexoZWiF7Z745O3FkA+A+f-E31DhD5mGXjweXecrRJtgw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbevf: Remove limit of 10
 entries for unicast filter list
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
Cc: mukesh.gangadhar@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Greg Rose <gvrose8192@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgNTozMiBBTSBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xn
ZW4ubXBnLmRlPiB3cm90ZToKPgo+IERlYXIgUmFkb3NsYXcsCj4KPgo+IE9uIDIwMTktMTEtMjUg
MTU6MjQsIFJhZG9zbGF3IFR5bCB3cm90ZToKPiA+IEN1cnJlbnRseSwgdGhvdWdoIHRoZSBGREIg
ZW50cnkgaXMgYWRkZWQgdG8gVkYsIGl0IGRvZXMgbm90IGFwcGVhciBpbgo+ID4gUkFSIGZpbHRl
cnMuIFZGIGRyaXZlciBvbmx5IGFsbG93cyB0byBhZGQgMTAgZW50cmllcy4gQXR0ZW1wdGluZyB0
byBhZGQKPiA+IGFub3RoZXIgY2F1c2VzIGFuIGVycm9yLiBUaGlzIHBhdGNoIHJlbW92ZXMgbGlt
aXRhdGlvbiBhbmQgYWxsb3dzIHVzZSBvZgo+ID4gYWxsIGZyZWUgUkFSIGVudHJpZXMgZm9yIHRo
ZSBGREIgaWYgbmVlZGVkLgo+Cj4gSSBzdGlsbCB3b25kZXIsIHdoeSB0aGUgbGltaXQgd2FzIGlu
dHJvZHVjZWQgaW4gdGhlIGZpcnN0IHBsYWNlLgo+IGdyZWdvcnkudi5yb3NlQGludGVsLmNvbSBi
b3VuY2VzLCBzbyB3ZSBjYW7igJl0IGFzay4KCkkndmUgYWRkZWQgR3JlZydzIGN1cnJlbnQgZW1h
aWwgYWRkcmVzcyBpbiBjYXNlIGhlIGhhcyBzb21lIG1lbW9yeSBmb3IKd2h5IHRoZSBsaW1pdCBv
ZiAxMCB3YXMgYWRkZWQuCgpJdCBwcm9iYWJseSBoYXMgdG8gZG8gd2l0aCB3YW50aW5nIHRvIHBy
ZXZlbnQgc3RhcnZhdGlvbiBvZiByZXNvdXJjZXMuClRoZSBoYXJkd2FyZSBpdHNlbGYgb25seSBz
dXBwb3J0cyAxMjggdG90YWwgUkFSIGVudHJpZXMuIFNvIGlmIHdlIGhhdmUKNjMgVkZzIGFuZCAx
IFBGLCBhbmQgMTUgb2YgUEYgbWFjdmxhbnMsIHRoZW4gd2Ugd291bGQgb25seSBoYXZlIDQ5CmVu
dHJpZXMgdG8gc3BhcmUgdGhhdCBhcmUgdGhlbiBzaGFyZWQuIFNvIGF0IGJlc3QgdGhpcyBpcyBv
bmx5IHB1c2hpbmcKdGhpbmdzIG91dCB0byA0OSBzaW5jZSBhdCB0aGF0IHBvaW50IHdlIGFyZSBv
dXQgb2YgUkFSIGVudHJpZXMgYW55d2F5LgoKPiA+IEZpeGVzOiA0NmVjMjBmZjdkICgiaXhnYmV2
ZjogQWRkIG1hY3ZsYW4gc3VwcG9ydCBpbiB0aGUgc2V0IHJ4IG1vZGUgb3AiKQoKSSB3b3VsZG4n
dCBib3RoZXIgd2l0aCB0aGUgZml4ZXMgdGFnIHNpbmNlIGl0IGlzbid0ICJmaXhpbmciIHRoaW5n
cy4KSXQgaXMgY2hhbmdpbmcgYmVoYXZpb3IuIEkgd291bGQgc2F5IGl0IHdhcyBieSBkZXNpZ24g
dGhhdCBpdCB3YXMKbGltaXRlZCB0byAxMCBlbnRyaWVzLiBBbGwgdGhpcyBjaGFuZ2UgZG9lcyBp
cyBwdXNoIHRoZSB3b3JrIG9udG8gdGhlClBGIGZvciByZXR1cm5pbmcgYW4gZXJyb3IgaW5zdGVh
ZCBvZiBkb2luZyBzbyBlYXJsaWVyLgoKRm9yIGEgbm9ybWFsIE5JQyB0aGUgZmFpbHVyZSBjYXNl
IGhlcmUgd291bGQgYmUgdG8gZW5hYmxlIHByb21pc2N1b3VzCm1vZGUuIEhvd2V2ZXIgc2luY2Ug
dGhpcyBpcyBhIFZGIHlvdSBjYW5ub3QgZG8gdGhhdC4gSW5zdGVhZCBpdCBtaWdodAptYWtlIG1v
cmUgc2Vuc2UgdG8gZHVtcCBhIG1lc3NhZ2Ugd2hlbiB5b3UgaGl0IHRoZSBsaW1pdC4KCj4gPiBT
aWduZWQtb2ZmLWJ5OiBSYWRvc2xhdyBUeWwgPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4u
YyB8IDUgLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21h
aW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYvaXhnYmV2Zl9tYWluLmMK
PiA+IGluZGV4IDA3NmYyZGEzNmYyNy4uNjRlYzBlN2M2NGI0IDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYwo+ID4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYwo+ID4gQEAg
LTIwODEsMTEgKzIwODEsNiBAQCBzdGF0aWMgaW50IGl4Z2JldmZfd3JpdGVfdWNfYWRkcl9saXN0
KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYpCj4gPiAgICAgICBzdHJ1Y3QgaXhnYmVfaHcgKmh3
ID0gJmFkYXB0ZXItPmh3Owo+ID4gICAgICAgaW50IGNvdW50ID0gMDsKPiA+Cj4gPiAtICAgICBp
ZiAoKG5ldGRldl91Y19jb3VudChuZXRkZXYpKSA+IDEwKSB7Cj4gPiAtICAgICAgICAgICAgIHBy
X2VycigiVG9vIG1hbnkgdW5pY2FzdCBmaWx0ZXJzIC0gTm8gU3BhY2VcbiIpOwo+ID4gLSAgICAg
ICAgICAgICByZXR1cm4gLUVOT1NQQzsKPiA+IC0gICAgIH0KPiA+IC0KPiA+ICAgICAgIGlmICgh
bmV0ZGV2X3VjX2VtcHR5KG5ldGRldikpIHsKPiA+ICAgICAgICAgICAgICAgc3RydWN0IG5ldGRl
dl9od19hZGRyICpoYTsKCkkgd291bGQgc2F5IE5BSy4gVGhlIHByb2JsZW0gaGVyZSBpcyB0aGlz
IGRvZXNuJ3Qgc29sdmUgdGhlIG9yaWdpbmFsCnByb2JsZW0uIEl0IGp1c3QgbWFza3MgaXQgYnkg
cHVzaGluZyB0aGUgZmFpbHVyZSBvdXQgdG8gdGhlCnNldF91Y19hZGRyIGNhbGwgd2hpY2ggZG9l
c24ndCBoYXZlIHRoZSByZXR1cm4gdmFsdWUgY2hlY2tlZCBzbwppbnN0ZWFkIHlvdSB3aWxsIGdl
dCBhIHNpbGVudCBmYWlsdXJlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
