Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B70561FF0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 18:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 561774243F;
	Thu, 30 Jun 2022 16:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 561774243F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656605378;
	bh=MwNKZeQpxMUIshJbcpKeR887pUfEJCmIyHMAjLYbeH0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T49mNj9QNpfuoWIbPx6a4a02t8ESwPXM4XZKFu0Hfj2zVvc7jBWCb32cUQB5vp6+V
	 0ZuProaMqW26SCswKsVYoZwLr/miaeEkPbkkh7BOkBScsOGEqQ4Py2PavK7xMNEwKo
	 rXlWG8oaJ/ztDhanz58Gy8DuHqvlOduRz5IoauLPM3TLKuIzPOzePvmh04lHI6eVsJ
	 9UdLcKRWpb2B3kFvmDJael2eFH5gkwoovqBjpfJNM8imbwblKrt6GwbaHD6CODnlOg
	 +qg+u0ylGk2e8uMzAU58sMMWNY49piRFkTTPpyIi8oAUk4XPi1rnAr+7pCHBUECVf2
	 +RYc5SrvZoQbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x4ISjxl4426Z; Thu, 30 Jun 2022 16:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF26642427;
	Thu, 30 Jun 2022 16:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF26642427
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C1B41BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 16:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 752D640B1A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 16:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 752D640B1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zw34yyvWPRtA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 16:09:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43BF640533
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43BF640533
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 16:09:31 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id sb34so39855958ejc.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 09:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W7SHta3R6YcleHmOphCvTADHKrbts/DoO7PiUh5TyAw=;
 b=qo+1Mgt87WICuRODS9t890lF2CR24FdmPNmDfGYw0HahlW09XbhQ84gr3LR6YlcaT/
 n9EEi1gkm0k09NrJzAXbNfxETATIIJobYsGpNFZ0FksLJpLhm4XK77WpqwjSSlGqsjvh
 nDyaBfbXj/iEwCBTupjkrbrueRGbY4TO/tdvZemXXPqqQZQl+EQZ8iIEWJuyn60Gd+a2
 Qah+LUXq6aNj8e0KOVBHSR7Sh5+beJL8sJcHu2Dnb5nV1A/LulTk2f233hXY71JVG/p7
 d9wTGxBz0nA7aMeQJoUsq50rAzKzPdex6p/Z3Ht4y8aEqJQ2QmnFV5T2HE9cNjH41lDt
 0vVw==
X-Gm-Message-State: AJIora82pbDSuo1L+SPHf/+fFxTpDDMyLTtma7fZwaqYWoAfM7Yd5FTk
 YMfL2XPBtIEHoBaOGXqfMt/vAjMZaJyv1J1pb6U=
X-Google-Smtp-Source: AGRyM1see/eF8lNqERI7kZvJTMTd5XDcrqHQx57Y8MmMZ80nmUey6lr33deQShd6xy8hmeSnHCAIpwbadHNwDYyAiBE=
X-Received: by 2002:a17:907:d17:b0:726:a3be:bba4 with SMTP id
 gn23-20020a1709070d1700b00726a3bebba4mr9602604ejc.584.1656605369361; Thu, 30
 Jun 2022 09:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <Yr12jl1nEqqVI3TT@boxer>
 <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
 <CANn89iK6g+4Fy2VMV7=feUAOUDHu-J38be+oU76yp+zGH6xCJQ@mail.gmail.com>
In-Reply-To: <CANn89iK6g+4Fy2VMV7=feUAOUDHu-J38be+oU76yp+zGH6xCJQ@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 30 Jun 2022 09:09:18 -0700
Message-ID: <CAKgT0UcKRJUJrpFHdNrdH98eu_dpiZiVakJRqc2qHrdGJJQRQA@mail.gmail.com>
To: Eric Dumazet <edumazet@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=W7SHta3R6YcleHmOphCvTADHKrbts/DoO7PiUh5TyAw=;
 b=leQQP/xhczwNdOGnF18R9mF1JXFj2pmiWegEIpuR/mn6I7XObmb8R/TeqQyM7hkH0F
 kYK75lbPEikoYA5d/mNMOo9I5X01TIWLhsFRp7GYYk4blQ9KDfwKc2R6hPys1gv31QZC
 7vHGwCNZUN+IjHVGqL/BNxJzmdkkbru/xoOdG8X5yCdqqV0exGFQkXXtQdcDBQ5IPRBO
 Ks9mL31MeKBiF9JARxV/08FqW39PJuiX1sYOhBgCNdhcHsHkXHqyu36RSzhqg081jEJh
 mstGPi3BeGuxoB7S6rP1c6v9vJYkwQU5M8af5DrCcEhbq6GJXDOsa2sxpd3fswRdDhwP
 eb4g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=leQQP/xh
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
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 30, 2022 at 8:25 AM Eric Dumazet <edumazet@google.com> wrote:
>
> On Thu, Jun 30, 2022 at 5:17 PM Alexander Duyck
> <alexander.duyck@gmail.com> wrote:
> >
> > On Thu, Jun 30, 2022 at 3:10 AM Maciej Fijalkowski
> > <maciej.fijalkowski@intel.com> wrote:
> > >
> > > On Wed, Jun 29, 2022 at 10:58:36AM +0200, Fabio M. De Francesco wrote:
> > > > The use of kmap() is being deprecated in favor of kmap_local_page().
> > > >
> > > > With kmap_local_page(), the mapping is per thread, CPU local and not
> > > > globally visible. Furthermore, the mapping can be acquired from any context
> > > > (including interrupts).
> > > >
> > > > Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
> > > > this mapping is per thread, CPU local, and not globally visible.
> > >
> > > Hi,
> > >
> > > I'd like to ask why kmap was there in the first place and not plain
> > > page_address() ?
> > >
> > > Alex?
> >
> > The page_address function only works on architectures that have access
> > to all of physical memory via virtual memory addresses. The kmap
> > function is meant to take care of highmem which will need to be mapped
> > before it can be accessed.
> >
> > For non-highmem pages kmap just calls the page_address function.
> > https://elixir.bootlin.com/linux/latest/source/include/linux/highmem-internal.h#L40
>
>
> Sure, but drivers/net/ethernet/intel/ixgbe/ixgbe_main.c is allocating
> pages that are not highmem ?
>
> This kmap() does not seem needed.

Good point. So odds are page_address is fine to use. Actually there is
a note to that effect in ixgbe_pull_tail.

As such we could probably go through and update igb, and several of
the other Intel drivers as well.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
