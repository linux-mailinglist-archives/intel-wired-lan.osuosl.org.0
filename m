Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D21465E7E74
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 17:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF1A461159;
	Fri, 23 Sep 2022 15:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF1A461159
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663947138;
	bh=J2W7T18pJIOwyFxcO09bVtg5oxKSefYdqTMY4mI0LPU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TZ2uROHZhcAiLiFOEkyyvUpn7yX/Ng/XWmFjrKDkhRwdYrQg72coKNgmiuSijqw82
	 fa6+wNyHy8/01koW+r6xvFVbWZalL3vxfyIWRyJTzdDEjmy3sTTGP9nHs58NH33SQI
	 m8SlkKmIFczlXsZjmQftQVH8w12Jq0bIqwnP4Cx/IlFXiawiZ24/oHmyxNZNUKKgST
	 qX1xX2zKBUxhqIxAshfymTI/P/vhS8xNoFJeKylgMOfXhcjN3ooOK6Sl4xOKwgq6Au
	 kdb/XW9DcAECiA+mZ9dHiYAJCEWUjqn6EgPXqoV+k5+e/mAG/9Et0xws0eNXLJP/re
	 tjjs46kDNEqxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xInPFE8BmfwQ; Fri, 23 Sep 2022 15:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A72B61141;
	Fri, 23 Sep 2022 15:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A72B61141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A6C01BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 15:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3781409D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 15:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3781409D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aYZy1zM6NWY4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 15:32:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD7DB40FC2
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD7DB40FC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 15:32:09 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id q3so374036pjg.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 08:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=Xe3XyWrqsUpCuai4jbPz6/cvFb16oXvZzjUKpqqt2d4=;
 b=VyeqkJ5WtkNJLiOJH/9cV9hajsz968pS2hmr/c5hANaIqBqaZjGuyxCTSheysgP03m
 MG5f2Oz//dA7t+PT7yFrEeHRPtSFdVxOqH/P3956kV6fL51l29fWY6jGTXc30u5MnYqX
 oDWxkuQTAf5vjT9yms6M5UvimO/i1mrYnf+/7Bxg8ptOT04YmeYW3x6vdVR8UVJnGBgN
 ObdMoum5ugnJvN320xaqvdCvOOVZy4jxzIhBkEYD5OLS4sXqANIzGF+cnBm3AjrErVuJ
 KZIy0jzObso9Cq6CcrQRDjyTq8Duljx9tFChj6/Y5pcI7v/Rk9ndD+Z7T2BG0HKrBkFQ
 wmfw==
X-Gm-Message-State: ACrzQf0GwORpD2wUh+etkjwLUYTVxZMfaxNG/wWp0RzgtyANm7sfnECj
 DH012ZF5ron3MSKRFs101+Av6JeL6OKwwAU6hj8=
X-Google-Smtp-Source: AMsMyM4V+bhhAoWZQIUJnhCP5giOH+OiPQjy4oITXZkTIW3Z+rg7BhstdaANxGeUkZeDky5gUJezn1i+Zyp4KsdGQ94=
X-Received: by 2002:a17:902:e353:b0:178:77ca:a577 with SMTP id
 p19-20020a170902e35300b0017877caa577mr8883901plc.93.1663947129142; Fri, 23
 Sep 2022 08:32:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
 <2834855.e9J7NaK4W3@opensuse> <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
 <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
 <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
In-Reply-To: <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 23 Sep 2022 08:31:57 -0700
Message-ID: <CAKgT0UfU6Hu3XtuJS_vvmeOMDdFcVanieGXRLyVRmPF7+eRjvg@mail.gmail.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=Xe3XyWrqsUpCuai4jbPz6/cvFb16oXvZzjUKpqqt2d4=;
 b=pdNyL0WG+TM+D2OmwmHa3lgy/2qVjYEs4ma7S6GPiljI/h7J9uxrTXIshJRZpTLyuJ
 ADWNh/ennmmb5VuiZpuAjpfHrNtRXWUOPRTPO86XNjnUG9DHyQUULWRMgqXv+2WL82Cg
 A56cuv7CO7EIUZzobvZrcVWFv+oDKnO3hsEAHT8bCA3/yerqPfI3FfKHgSkQuIoMnQGs
 tICn+DKO3AjWeYOTBD1eOiYb8r6HQXJzF8g1Q9AU2n+SzCRG9OdMigh3MHDFApr7WSi0
 ifOEgu5qyTNdiMGfQbnSlqDBSOJsbnsJwzt58BwC7CAo461hl7d8VvcDiTIP2/1fOHFX
 EgGg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=pdNyL0WG
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 3:38 PM Anirudh Venkataramanan
<anirudh.venkataramanan@intel.com> wrote:
>
> On 9/22/2022 1:58 PM, Alexander Duyck wrote:
> > On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
> > <anirudh.venkataramanan@intel.com> wrote:
> >>
> >>
> >> Following Fabio's patches, I made similar changes for e1000/e1000e and
> >> submitted them to IWL [1].
> >>
> >> Yesterday, Ira Weiny pointed me to some feedback from Dave Hansen on the
> >> use of page_address() [2]. My understanding of this feedback is that
> >> it's safer to use kmap_local_page() instead of page_address(), because
> >> you don't always know how the underlying page was allocated.
> >>
> >> This approach (of using kmap_local_page() instead of page_address())
> >> makes sense to me. Any reason not to go this way?
> >>
> >> [1]
> >>
> >> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-1-anirudh.venkataramanan@intel.com/
> >>
> >> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-2-anirudh.venkataramanan@intel.com/
> >>
> >> [2]
> >> https://lore.kernel.org/lkml/5d667258-b58b-3d28-3609-e7914c99b31b@intel.com/
> >>
> >> Ani
> >
> > For the two patches you referenced the driver is the one allocating
> > the pages. So in such a case the page_address should be acceptable.
> > Specifically we are falling into alloc_page(GFP_ATOMIC) which should
> > fall into the first case that Dave Hansen called out.
>
> Right. However, I did run into a case in the chelsio inline crypto
> driver where it seems like the pages are allocated outside the driver.
> In such cases, kmap_local_page() would be the right approach, as the
> driver can't make assumptions on how the page was allocated.

Right, but that is comparing apples and oranges. As I said for Tx it
would make sense, but since we are doing the allocations for Rx that
isn't the case so we don't need it.

> ... and this makes me wonder why not just use kmap_local_page() even in
> cases where the page allocation was done in the driver. IMO, this is
> simpler because
>
> a) you don't have to care how a page was allocated. kmap_local_page()
> will create a temporary mapping if required, if not it just becomes a
> wrapper to page_address().
>
> b) should a future patch change the allocation to be from highmem, you
> don't have to change a bunch of page_address() calls to be
> kmap_local_page().
>
> Is using page_address() directly beneficial in some way?

By that argument why don't we just leave the code alone and keep using
kmap? I am pretty certain that is the logic that had us using kmap in
the first place since it also dumps us with page_address in most cases
and we didn't care much about the other architectures. If you look at
the kmap_local_page() it just adds an extra step or two to calling
page_address(). In this case it is adding extra complication to
something that isn't needed which is the reason why we are going
through this in the first place. If we are going to pull the bandage I
suggest we might as well just go all the way and not take a half-step
since we don't actually need kmap or its related calls for this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
