Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21A67E025
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2019 18:26:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0FC988127;
	Thu,  1 Aug 2019 16:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P+Z1JRVlxxLz; Thu,  1 Aug 2019 16:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 131FA8813E;
	Thu,  1 Aug 2019 16:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1911BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 06:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 140898686A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 06:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SN4fxzukNcGd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2019 06:59:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2FAC186762
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 06:59:36 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id w17so24846844qto.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 23:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o6bbI+5Bc/kSGDNfHGa5kyM396+R4ZLjYLFH+qxl3I0=;
 b=mCKdDGmvB7LBrBBWAWulBdGvfYugUE4jjKGlYaTkK0GSWrW7WO+/bhp4B3b4tRmE5y
 lwsivNJhXch0SaIncLCcHm8f6fwKFBFLoz7UaRfdum4ciebvBcVLf3IZVmyFEccPT/ZW
 DNLcqvwFNG0BGLUq7lCoxQH3F4Jg1JTYtttgPuVYYWqyTLW2YtsR3yjApvmUUqM9/QCe
 on5fqVSoBGwl+vkvOyVY7Um+osQM1ZAkrGcQlNcSjpSo7s9uquHpkvT6LS3nposaynlE
 j3tLPY/ykuKQ/U4yj5k05lawxPPDPksh/ufyYAR5SK9it1tBWT7bD8f3KIn13jXOzpm1
 yvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o6bbI+5Bc/kSGDNfHGa5kyM396+R4ZLjYLFH+qxl3I0=;
 b=R3t7i88rNwyo9fuhR7AFbUz11XpQVtcK/yNa6birdgtuukMTE7Tn2oCEdNTA6sgmZP
 c4zNbAmA4/OSG/4nNRNArP2mQSEUvdZSj2AgvBlR/GCUtFozRtHDT/3OJW+oIg8PfCe2
 kNJmB6JEVGU3ApMtU3c7HU6jmNm1FLHzGRmje1f8JTTOJEktNbCMqmQaUWtpQCgtbkIk
 jy/xG3hsrRCxGeRbuK5DTk+3kRu2mOnyb5rjj50Xny/l/gdG4igp8DZ7HbS5kSdAscFT
 lmTUE8CDolglT8S4u+sOZZGwsYnx94ilf1obRIawZ/znrlU09dj5n5BsEC3NYOAvEG+V
 +ewQ==
X-Gm-Message-State: APjAAAXlvwLgozeks5OiZmKd9d5tPG74EExrhT7/ImIifa2kZ9bt3zCs
 y+3QuMvn4f16YA285OXcB0RdDwsywwDsXMRdfa0=
X-Google-Smtp-Source: APXvYqzK9K9kBzbQ/q3/M0oJLL8NuX6Hcl96T2xrcl6H75pRe3Ik/Djw7Tn1dY3BiE2ppNKPJ1gEsIhYBHNsKiaV2mM=
X-Received: by 2002:ac8:6601:: with SMTP id c1mr82633846qtp.93.1564642775046; 
 Wed, 31 Jul 2019 23:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-4-kevin.laatz@intel.com>
 <CAJ+HfNifxfgycmZFz8eBZq=FZXAgNQezNqUiy3Q1z4JBrUEkew@mail.gmail.com>
In-Reply-To: <CAJ+HfNifxfgycmZFz8eBZq=FZXAgNQezNqUiy3Q1z4JBrUEkew@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 31 Jul 2019 23:59:23 -0700
Message-ID: <CAEf4BzbTbX-Teth+4-yiorO-oHp+JhGfW2e08iBoCsBA4JCbMQ@mail.gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
X-Mailman-Approved-At: Thu, 01 Aug 2019 16:26:28 +0000
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
 Daniel Borkmann <daniel@iogearbox.net>, Kevin Laatz <kevin.laatz@intel.com>,
 ciara.loftus@intel.com, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Netdev <netdev@vger.kernel.org>, Bruce Richardson <bruce.richardson@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgODoyMSBBTSBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxOTo0MywgS2V2
aW4gTGFhdHogPGtldmluLmxhYXR6QGludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhpcyBwYXRj
aCBhZGRzIGEgJ2ZsYWdzJyBmaWVsZCB0byB0aGUgdW1lbV9jb25maWcgYW5kIHVtZW1fcmVnIHN0
cnVjdHMuCj4gPiBUaGlzIHdpbGwgYWxsb3cgZm9yIG1vcmUgb3B0aW9ucyB0byBiZSBhZGRlZCBm
b3IgY29uZmlndXJpbmcgdW1lbXMuCj4gPgo+ID4gVGhlIGZpcnN0IHVzZSBmb3IgdGhlIGZsYWdz
IGZpZWxkIGlzIHRvIGFkZCBhIGZsYWcgZm9yIHVuYWxpZ25lZCBjaHVua3MKPiA+IG1vZGUuIFRo
ZXNlIGZsYWdzIGNhbiBlaXRoZXIgYmUgdXNlci1wcm92aWRlZCBvciBmaWxsZWQgd2l0aCBhIGRl
ZmF1bHQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IENpYXJhIExvZnR1cyA8Y2lhcmEubG9mdHVzQGlu
dGVsLmNvbT4KPiA+Cj4gPiAtLS0KPiA+IHYyOgo+ID4gICAtIFJlbW92ZWQgdGhlIGhlYWRyb29t
IGNoZWNrIGZyb20gdGhpcyBwYXRjaC4gSXQgaGFzIG1vdmVkIHRvIHRoZQo+ID4gICAgIHByZXZp
b3VzIHBhdGNoLgo+ID4KPiA+IHY0Ogo+ID4gICAtIG1vZGlmaWVkIGNodW5rIGZsYWcgZGVmaW5l
Cj4gPiAtLS0KClsuLi5dCgo+ID4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9icGYveHNrLmggYi90
b29scy9saWIvYnBmL3hzay5oCj4gPiBpbmRleCA4MzNhNmU2MGQwNjUuLjQ0YTAzZDhjMzRiOSAx
MDA2NDQKPiA+IC0tLSBhL3Rvb2xzL2xpYi9icGYveHNrLmgKPiA+ICsrKyBiL3Rvb2xzL2xpYi9i
cGYveHNrLmgKPiA+IEBAIC0xNzAsMTIgKzE3MCwxNCBAQCBMSUJCUEZfQVBJIGludCB4c2tfc29j
a2V0X19mZChjb25zdCBzdHJ1Y3QgeHNrX3NvY2tldCAqeHNrKTsKPiA+ICAjZGVmaW5lIFhTS19V
TUVNX19ERUZBVUxUX0ZSQU1FX1NISUZUICAgIDEyIC8qIDQwOTYgYnl0ZXMgKi8KPiA+ICAjZGVm
aW5lIFhTS19VTUVNX19ERUZBVUxUX0ZSQU1FX1NJWkUgICAgICgxIDw8IFhTS19VTUVNX19ERUZB
VUxUX0ZSQU1FX1NISUZUKQo+ID4gICNkZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfSEVB
RFJPT00gMAo+ID4gKyNkZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRkxBR1MgMAo+ID4KPiA+ICBz
dHJ1Y3QgeHNrX3VtZW1fY29uZmlnIHsKPiA+ICAgICAgICAgX191MzIgZmlsbF9zaXplOwo+ID4g
ICAgICAgICBfX3UzMiBjb21wX3NpemU7Cj4gPiAgICAgICAgIF9fdTMyIGZyYW1lX3NpemU7Cj4g
PiAgICAgICAgIF9fdTMyIGZyYW1lX2hlYWRyb29tOwo+ID4gKyAgICAgICBfX3UzMiBmbGFnczsK
Pgo+IEFuZCB0aGUgZmxhZ3MgYWRkaXRpb24gaGVyZSwgdW5mb3J0dW5hdGVseSwgcmVxdWlyZXMg
c3ltYm9sIHZlcnNpb25pbmcKPiBvZiB4c2tfdW1lbV9fY3JlYXRlKCkuIFRoYXQnbGwgYmUgdGhl
IGZpcnN0IGluIGxpYmJwZiEgOi0pCgp4c2tfdW1lbV9jb25maWcgaXMgcGFzc2VkIGJ5IHBvaW50
ZXIgdG8geHNrX3VtZW1fX2NyZWF0ZSgpLCBzbyB0aGlzCmRvZXNuJ3QgYnJlYWsgQUJJLCBkb2Vz
IGl0PwoKPgo+Cj4gQmrDtnJuCj4KPiA+ICB9Owo+ID4KPiA+ICAvKiBGbGFncyBmb3IgdGhlIGxp
YmJwZl9mbGFncyBmaWVsZC4gKi8KPiA+IC0tCj4gPiAyLjE3LjEKPiA+Cj4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiA+IGh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
