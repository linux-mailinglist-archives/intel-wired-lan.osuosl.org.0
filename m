Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83243203E5A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 19:50:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B65E204D9;
	Mon, 22 Jun 2020 17:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-Ul7fMhwfgd; Mon, 22 Jun 2020 17:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB5852639A;
	Mon, 22 Jun 2020 17:50:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CA111BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 17:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BD20204E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 17:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v6rxE7s9YtIE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 17:50:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 52474204D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 17:50:12 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id b6so17563150wrs.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MytJQNHwUuIHQCvUrb2QWgEFAej7FCrWKZnvsJ2APNQ=;
 b=WS+XpUllS+nNl1CgqRAztFtTPE4HVBBwSK5Urp+wj/rOiXNQIenwwAXrmgkUm6Ch+M
 k+INI8JhTW3ZzGJnKKIHD3VScU/MB/ZR5CfGOkEQl+yUdI1i+C01hA6Z0Q6MVhSs1dR6
 1D2c3hhDaPMbflWovD1Efr8lTKyOzpSWepHtvex7Ntc2W7q6EjOWSNxfLxsWKLPF3f3R
 H3GrcPtC77U8NmUol7wsqhvndwPnuuIgYy+auMURRUwl2gabokj8r84tqGNTB5ln2m11
 odBTnqahWhn4Z4gLMERAd3igVDJP9hwOpGtBysix64sXDbmd3CcYYD3+eLWyDkYn0Z3z
 n9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MytJQNHwUuIHQCvUrb2QWgEFAej7FCrWKZnvsJ2APNQ=;
 b=j+MkNiCl8ymPk8Rw6U3I+sfhk+eqNCquRiV2f3jIh9mYb97YI2FVFr5/BwEPlWSdH/
 GuZU9owrHiPaqvIVoah9l3NbLDyxkZV3fGDkrK1zRQt7RRSh213YS8dT6hIhfYCa1Wt0
 2Ekw1XtZlkjpJg+AmutMrzIGFq+dvAizKNlnPIACU+chhoctRZ8BF+js4p/M7lq6kje1
 38A3QkCeha4U+Jp3eop3hSVp9MehNcA/Av8oP+nWQ5Y2tDpZ25vhIHELgqHw+jO1h1Z/
 mnMiSlZSzoI4hPB158L69DHAAIhJOqnFrCH5FcV0ETgl01nI2EnOoVRSjTP8WwmrDxYo
 ZiqQ==
X-Gm-Message-State: AOAM530kTxBD8Mcmp01rPyDBqHp+SDcSRkxMFfoa4LcbWtrBqob7z0vN
 +ZPXc1nS/U6XvnXcmQ+UMzQpXQ254JilIpmOcR8=
X-Google-Smtp-Source: ABdhPJxJF4aqt3bCkQIuqNAhRhk1Q0qBBeXN+OUYz+j7E9zklXx7aeRoKxzPfM4AG/TE7F9z0YfZC8qiWeR7ZRCy2rw=
X-Received: by 2002:a5d:504b:: with SMTP id h11mr13249465wrt.160.1592848210651; 
 Mon, 22 Jun 2020 10:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200622090824.41cff8a3@hermes.lan>
 <CAJ+HfNhhpZoeoZC5gS93Lbc5GvDUO9m0RrKNFU=kU0v+AXe=ig@mail.gmail.com>
In-Reply-To: <CAJ+HfNhhpZoeoZC5gS93Lbc5GvDUO9m0RrKNFU=kU0v+AXe=ig@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 22 Jun 2020 19:49:59 +0200
Message-ID: <CAJ+HfNgG4dBTf7Ei2CmuedQLnv-nOqpf4Nuep+FB9Oxob+zhdA@mail.gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>, 
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: Re: [Intel-wired-lan] Fw: [Bug 208275] New: kernel hang
 occasionally while running the sample of xdpsock
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Alexei Starovoitov <ast@kernel.org>, KP Singh <kpsingh@chromium.org>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMiBKdW4gMjAyMCBhdCAxOTo0NiwgQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgMjIgSnVuIDIwMjAgYXQgMTg6MDgsIFN0ZXBo
ZW4gSGVtbWluZ2VyCj4gPHN0ZXBoZW5AbmV0d29ya3BsdW1iZXIub3JnPiB3cm90ZToKPiA+Cj4g
Pgo+ID4KPiA+IEJlZ2luIGZvcndhcmRlZCBtZXNzYWdlOgo+ID4KPiA+IERhdGU6IE1vbiwgMjIg
SnVuIDIwMjAgMTA6MTM6NTIgKzAwMDAKPiA+IEZyb206IGJ1Z3ppbGxhLWRhZW1vbkBidWd6aWxs
YS5rZXJuZWwub3JnCj4gPiBUbzogc3RlcGhlbkBuZXR3b3JrcGx1bWJlci5vcmcKPiA+IFN1Ympl
Y3Q6IFtCdWcgMjA4Mjc1XSBOZXc6IGtlcm5lbCBoYW5nIG9jY2FzaW9uYWxseSB3aGlsZSBydW5u
aW5nIHRoZSBzYW1wbGUgb2YgeGRwc29jawo+ID4KPgo+IFRoYW5rcyBmb3IgZm9yd2FyZGluZywg
U3RlcGhlbi4KPgo+IEknbGwgaGF2ZSBhIGxvb2shCj4KCkludGVsIGl4Z2JlIHNwbGF0LiBBZGRp
bmcgaW50ZWwtd2lyZWQtbGFuIHRvIFRvOi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
