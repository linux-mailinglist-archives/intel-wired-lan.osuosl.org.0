Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A34524C1E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Aug 2020 17:16:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC3CF85F92;
	Thu, 20 Aug 2020 15:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FT9Z2uFcfHcE; Thu, 20 Aug 2020 15:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4B418693F;
	Thu, 20 Aug 2020 15:14:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC9EC1BF355
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 15:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C35D7203F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 15:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MGsnRpaRKoe0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Aug 2020 15:13:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 45E871FC7D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 15:13:30 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id d190so1924462wmd.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 08:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=r+6wCFKa8SGdi32yV32f+r2mcnJIjzitPz2Zc/AeqCg=;
 b=f/KrHytoPO1yGjZ58ymAbvA1U4YXXF9qwPj157aqVJZXc3O2JWNs94R9WxKbgsf4zU
 OXUXziHKzaGxoLhauioFun+joOHAyx11sNoS1Q1rTFPxILimrt8FC8bInNAdWzeHg/gR
 Wkkaku44v4psicXBuBqU6k+6DCApStKi8/VYCIvHcPX57gOh7ag4qbu8Lzihn/mrrvYO
 v0IbYSFMoHynyzKV+Cu3W1+8uZ63o/2Ikvg+dExkfM51JEp9SPZmqYni7vybDnem9/EG
 gIh+7Hn4yQnExznYLt2orUs637b/9PqpVEvMKfEX9cByBiF5MKVWCzyJeS7FpqveakBM
 27Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=r+6wCFKa8SGdi32yV32f+r2mcnJIjzitPz2Zc/AeqCg=;
 b=Scn2j+Vk7uJebTSyQaSU6TrxRGL7z5N8vzkGxTHm9a+ezoVQm2YrMJN571tIuE4k58
 2HeFUFMES1EQWUMD3DkS7lRSj0mTRqxq5ohRP/NnzPwUHMpFm7r7mJvrTlAXa/Dd28bJ
 i/7WN5C+61Igu/v6EBCSL4oi/EYbfzxgg0jBloJ7JLySZZ+Y76RsP9Gi1fVWVt/F+hdM
 KgRXh5GUM3XeNzV1c42IHPCSV7tIi4kvMrm6DskuhAwILXRs/NgK2QsoTEBR09tdXS2W
 DJSXaplOFCenqrYYPfmOlt5PvXV1/xLOqx7+C4I3zz83IFGgH/OlV0xBrz8Vjm+SkllZ
 ljLA==
X-Gm-Message-State: AOAM5304B8kJcHqR06WaFa4hxDnlI/M/yDKbskHMaDENJHlbrx95j778
 V3EEzA0Vk/Y1h5oS7k8URnZjOGCcdjtZeb/jHYw=
X-Google-Smtp-Source: ABdhPJy2mCdw4lhoFf7YjVAIA/PYPCjhwuGS+RqZOtIe3jhyzy9jwavfqqt8COZzp1dCC0I4Ist9yqD9Vn9ITdf3OyY=
X-Received: by 2002:a05:600c:21cd:: with SMTP id
 x13mr4234963wmj.155.1597936408521; 
 Thu, 20 Aug 2020 08:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
In-Reply-To: <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 20 Aug 2020 17:13:16 +0200
Message-ID: <CAJ+HfNjybUeN9v6N-pnupi32088PL+ZXu8CKWGWmowOaH4nmOw@mail.gmail.com>
To: Li RongQing <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [PATCH 0/2] intel/xdp fixes for fliping rx
 buffer
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAxOCBBdWcgMjAyMCBhdCAxNjowNCwgQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgMTcgSnVsIDIwMjAgYXQgMDg6MjQsIExpIFJv
bmdRaW5nIDxsaXJvbmdxaW5nQGJhaWR1LmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhpcyBmaXhlcyBp
Y2UvaTQwZS9peGdiZS9peGdiZXZmX3J4X2J1ZmZlcl9mbGlwIGluCj4gPiBjb3B5IG1vZGUgeGRw
IHRoYXQgY2FuIGxlYWQgdG8gZGF0YSBjb3JydXB0aW9uLgo+ID4KPiA+IEkgc3BsaXQgdHdvIHBh
dGNoZXMsIHNpbmNlIGk0MGUveGdiZS9peGdiZXZmIHN1cHBvcnRzIHhzawo+ID4gcmVjZWl2aW5n
IGZyb20gNC4xOCwgcHV0IHRoZWlyIGZpeGVzIGluIGEgcGF0Y2gKPiA+Cj4KPiBMaSwgc29ycnkg
Zm9yIHRoZSBsb29vbmcgbGF0ZW5jeS4gSSB0b29rIGEgbG9vb25nIHZhY2F0aW9uLiA6LVAKPgo+
IFRoYW5rcyBmb3IgdGFraW5nIGEgbG9vayBhdCB0aGlzLCBidXQgSSBiZWxpZXZlIHRoaXMgaXMg
bm90IGEgYnVnLgo+CgpPaywgZHVnIGEgYml0IG1vcmUgaW50byB0aGlzLiBJIGhhZCBhbiBvZmZs
aXN0IGRpc2N1c3Npb24gd2l0aCBMaSwgYW5kCnRoZXJlIGFyZSB0d28gcGxhY2VzIChBRkFJSykg
d2hlcmUgTGkgZXhwZXJpZW5jZSBhIEJVRygpIGluCnRjcF9jb2xsYXBzZSgpOgoKICAgICAgICAg
ICAgQlVHX09OKG9mZnNldCA8IDApOwphbmQKICAgICAgICAgICAgICAgIGlmIChza2JfY29weV9i
aXRzKHNrYiwgb2Zmc2V0LCBza2JfcHV0KG5za2IsIHNpemUpLCBzaXplKSkKICAgICAgICAgICAg
ICAgICAgICBCVUcoKTsKCihMaSwgcGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nLikKCkkg
c3RpbGwgY2xhaW0gdGhhdCB0aGUgcGFnZS1mbGlwcGluZyBtZWNoYW5pc20gaXMgY29ycmVjdCwg
YnV0IEkgZm91bmQKc29tZSB3ZWlyZG5lc3MgaW4gdGhlIGJ1aWxkX3NrYigpIGNhbGwuCgpJbiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jLCBidWlsZF9za2IoKSBp
cyBpbnZva2VkIGFzOgogICAgc2tiID0gYnVpbGRfc2tiKHhkcC0+ZGF0YV9oYXJkX3N0YXJ0LCB0
cnVlc2l6ZSk7CgpGb3IgdGhlIHNldHVwIExpIGhhcyB0cnVlc2l6ZSBpcyAyMDQ4IChoYWxmIGEg
cGFnZSksIGJ1dCB0aGUKcnhfYnVmX2xlbiBpcyAxNTM2LiBJbiB0aGUgZHJpdmVyIGEgcGFja2V0
IGlzIGxheWVkIG91dCBhczoKCnwgcGFkZGluZyAxOTIgfCBwYWNrZXQgZGF0YSAxNTM2IHwgc2ti
IHNoYXJlZCBpbmZvIDMyMCB8CgpidWlsZF9za2IoKSBhc3N1bWVzIHRoYXQgdGhlIHNlY29uZCBh
cmd1bWVudCAoZnJhZ19zaXplKSBpcyBtYXggcGFja2V0CnNpemUgKyBTS0JfREFUQV9BTElHTihz
aXplb2Yoc3RydWN0IHNrYl9zaGFyZWRfaW5mbykpLiBJbiBvdGhlciB3b3JkcywKZnJhZ19zaXpl
IHNob3VsZCBub3QgaW5jbHVkZSB0aGUgcGFkZGluZyAoMTkyIGFib3ZlKS4gSW4gYnVpbGRfc2ti
KCksCmZyYWdfc2l6ZSBpcyB1c2VkIHRvIGNvbXB1dGUgdGhlIHNrYiB0cnVlc2l6ZSBhbmQgc2ti
IGVuZC4gaTQwZSBwYXNzZXMKYSB0b28gbGFyZ2UgYnVmZmVyLCBhbmQgY2FuIHRoZXJlZm9yZSBw
b3RlbnRpYWxseSBjb3JydXB0IHRoZSBza2IsIGFuZAptYXliZSB0aGlzIGlzIHRoZSByZWFzb24g
Zm9yIHRjcF9jb2xsYXBzZSgpIHNwbGF0dGluZy4KCkxpLCBjb3VsZCB5b3UgdGVzdCBpZiB5b3Ug
Z2V0IHRoZSBzcGxhdCB3aXRoIHRoaXMgcGF0Y2g6CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYwpiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV90eHJ4LmMKaW5kZXggM2U1YzU2NmNlYjAxLi5hY2ZiNGFkOWI1MDYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYwpAQCAtMjA2NSw3
ICsyMDY1LDggQEAgc3RhdGljIHN0cnVjdCBza19idWZmICppNDBlX2J1aWxkX3NrYihzdHJ1Y3QK
aTQwZV9yaW5nICpyeF9yaW5nLAogewogICAgIHVuc2lnbmVkIGludCBtZXRhc2l6ZSA9IHhkcC0+
ZGF0YSAtIHhkcC0+ZGF0YV9tZXRhOwogI2lmIChQQUdFX1NJWkUgPCA4MTkyKQotICAgIHVuc2ln
bmVkIGludCB0cnVlc2l6ZSA9IGk0MGVfcnhfcGdfc2l6ZShyeF9yaW5nKSAvIDI7CisgICAgdW5z
aWduZWQgaW50IHRydWVzaXplID0gcnhfcmluZy0+cnhfYnVmX2xlbiArCisgICAgICAgICAgICAg
ICAgU0tCX0RBVEFfQUxJR04oc2l6ZW9mKHN0cnVjdCBza2Jfc2hhcmVkX2luZm8pKTsKICNlbHNl
CiAgICAgdW5zaWduZWQgaW50IHRydWVzaXplID0gU0tCX0RBVEFfQUxJR04oc2l6ZW9mKHN0cnVj
dCBza2Jfc2hhcmVkX2luZm8pKSArCiAgICAgICAgICAgICAgICAgU0tCX0RBVEFfQUxJR04oeGRw
LT5kYXRhX2VuZCAtCgpJJ2xsIGhhdmUgYSBsb29rIGluIHRoZSBvdGhlciBJbnRlbCBkcml2ZXJz
LCBhbmQgc2VlIGlmIHRoZXJlIGFyZQpzaW1pbGFyIGlzc3Vlcy4gSSdsbCBjb29rIGEgcGF0Y2gu
CgoKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
