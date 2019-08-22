Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C9998C40
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 09:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03B578839E;
	Thu, 22 Aug 2019 07:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfeBhLCJgQxz; Thu, 22 Aug 2019 07:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79C5088383;
	Thu, 22 Aug 2019 07:11:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 204AB1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 07:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 175AF8833C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 07:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgqvoI5N+dOL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 07:11:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69F418833B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 07:11:11 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id e8so6395661qtp.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 00:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SjGrToOEWeMlpOS5e+zEaXYac5JbBU5qP/ippadIYok=;
 b=LKZVyQ6y7LhITaq+dPNulHmPllHIo9YQhD3YZH4XHzKUvfTokHfwav/6NZaHD1+CtO
 gMotuBGp+Mk7z/XTZdAJdM4t1YA/CBt9XKwUyCVSJ646dW8zOSqxckjP8toX4sTJCyY3
 sbdvq4944IWRmom98sAuYG8taznl2tiSGQBSy6yocpOMJyqB5o3QEgjbLZKr+/w34CXd
 D6FQbNXH/1PaHdbzcZgDTqBPepq9QB7RJWrFVIhaUC4vaeJLHtrUdPr5omqlEnI7WSVa
 WUbqIv7EW+sOGyKiD4wxQR6JkbdbGcWrFa+dAY2uI9HaGDnoEFMKtEc3Q4WJo54N3bHV
 n4rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SjGrToOEWeMlpOS5e+zEaXYac5JbBU5qP/ippadIYok=;
 b=VR8J3h3yTYQ9g+tbkEBggnb0GFGaUqMegVBHcQ7hiF/7PEee/YNgMl6o+68vHf2KCs
 WwGWzDB14w18TL8js/pSASPGjggpm2bevVvaHAflWVs/wROOiGGhVthmSp/2g9k2uku+
 kwMR7P26X5/f8CgSWfzBX4k/0bDT3+tEuEzUayEDJvWsvZ+WGag8Q57MXqClkH+oYU3Z
 g2PVDOe7IhSkHLzZPA8ifqus83egMAKGpR8v3w2F8VqwCbspFGaczCCDQ1/pb4K5Mw1t
 fDmTGSXfS2Z5qrZKJUghKFKrRlNDDIFFGdftZ/xu/oNpFNzAblp4M0jLKtiJ84xr3WXQ
 i52A==
X-Gm-Message-State: APjAAAXK+KOpEflL5HLHcc8+YMpG7a1Q4fpc2sCU3XK7jUf6+XtODSvJ
 pcvSuDJjxso5u0OgoUJxHwDd1L9NI5CrcRatfyA=
X-Google-Smtp-Source: APXvYqyWQZWb/ChKK9DWXD7EsDI7AMCn6gtCPdeGFgRHaHJ3x+JZm5cWp5mQ3p5et4V49xISmc9KhtIMuOtJHlCTQ8Q=
X-Received: by 2002:ac8:5247:: with SMTP id y7mr36273264qtn.107.1566457870403; 
 Thu, 22 Aug 2019 00:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
 <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
 <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
In-Reply-To: <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 22 Aug 2019 09:10:58 +0200
Message-ID: <CAJ+HfNgUe3xGHeLsK0eKV76BOgeV-ZFcNwWKOvxbzcGRcg58dg@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 William Tu <u9012063@gmail.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMSBBdWcgMjAxOSBhdCAxODoyMiwgSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0Bz
YW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBPbiAyMS4wOC4yMDE5IDQ6MTcsIEFsZXhhbmRlciBEdXlj
ayB3cm90ZToKPiA+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDg6NTggQU0gSWx5YSBNYXhpbWV0
cyA8aS5tYXhpbWV0c0BzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAyMC4wOC4yMDE5
IDE4OjM1LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6ClsuLi5dCj4gPgo+ID4gU28gaXMgaXQgYWx3
YXlzIGluIHRoZSBzYW1lIE5BUEkgY29udGV4dD8uIEkgZm9yZ290LCBJIHdhcyB0aGlua2luZwo+
ID4gdGhhdCBzb21laG93IHRoZSBzb2NrZXQgY291bGQgcG9zc2libHkgbWFrZSB1c2Ugb2YgWERQ
IGZvciB0cmFuc21pdC4KPgo+IEFGX1hEUCBzb2NrZXQgb25seSB0cmlnZ2VycyB0eCBpbnRlcnJ1
cHQgb24gbmRvX3hza19hc3luY194bWl0KCkgd2hpY2gKPiBpcyB1c2VkIGluIHplcm8tY29weSBt
b2RlLiBSZWFsIHhtaXQgaGFwcGVucyBpbnNpZGUKPiBpeGdiZV9wb2xsKCkKPiAgLT4gaXhnYmVf
Y2xlYW5feGRwX3R4X2lycSgpCj4gICAgIC0+IGl4Z2JlX3htaXRfemMoKQo+Cj4gVGhpcyBzaG91
bGQgYmUgbm90IHBvc3NpYmxlIHRvIGJvdW5kIGFub3RoZXIgWERQIHNvY2tldCB0byB0aGUgc2Ft
ZSBuZXRkZXYKPiBxdWV1ZS4KPgo+IEl0IGFsc28gcG9zc2libGUgdG8geG1pdCBmcmFtZXMgaW4g
eGRwX3Jpbmcgd2hpbGUgcGVyZm9ybWluZyBYRFBfVFgvUkVESVJFQ1QKPiBhY3Rpb25zLiBSRURJ
UkVDVCBjb3VsZCBoYXBwZW4gZnJvbSBkaWZmZXJlbnQgbmV0ZGV2IHdpdGggZGlmZmVyZW50IE5B
UEkKPiBjb250ZXh0LCBidXQgdGhpcyBvcGVyYXRpb24gaXMgYm91bmQgdG8gc3BlY2lmaWMgQ1BV
IGNvcmUgYW5kIGVhY2ggY29yZSBoYXMKPiBpdHMgb3duIHhkcF9yaW5nLgo+Cj4gSG93ZXZlciwg
SSdtIG5vdCBhbiBleHBlcnQgaGVyZS4KPiBCasO2cm4sIG1heWJlIHlvdSBjb3VsZCBjb21tZW50
IG9uIHRoaXM/Cj4KClllcywgeW91J3JlIGNvcnJlY3QgSWx5YS4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
