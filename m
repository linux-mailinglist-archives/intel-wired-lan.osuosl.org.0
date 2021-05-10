Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADAC377C11
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 08:06:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33196401B5;
	Mon, 10 May 2021 06:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdgI2QahJ1Jm; Mon, 10 May 2021 06:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F09040139;
	Mon, 10 May 2021 06:06:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A87C1BF44A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 06:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74F4283BA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 06:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ey-VOKJ3D1Oa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 06:06:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B74783BA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 06:06:10 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id z16so12566816pga.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 May 2021 23:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MDrcpXE39hK+tsy+zeJ9NcnfUtXm+Fj2OZgopVYIL0c=;
 b=a4k8t596jRiGiHvZ3K9iDz5sTR7VxyAB6dhL5+66qQchlvRyybuzfPcEgu3mErhetO
 sRGV2scP9qoVnV7zobRdH8j4p2CAHFm5D7KizyW267aRqlRFEy7sYCcruH9+5zj5BH71
 Uip2ZkTlM/yMTiCmBxx4lGSDZqexb2VIFjdTCUwMoacrvhf1UjKS3wHQ5ZVHg6BeNmie
 Mllfq7Xh2Iom/Gc9rLPnnmJO305FxGiuPMktkhi66GJ3O8VHpdv5qNowLBtp2Fv4Z22T
 ThPHreJeAGQFbiLRxL0GZu7CfOqC6YrfjF53myFmJbWQzKKj5ir9AitBShFvMsKvTRNP
 jFOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MDrcpXE39hK+tsy+zeJ9NcnfUtXm+Fj2OZgopVYIL0c=;
 b=mJH4ozt19uv8JQ3XBQqpoe88ShsSr3kiaxuHNTZpul92e4ZUwN1EWAIk0fZKdi+axE
 z/WDnP11+omCpce/KIu2Ieh7hJA2labaXWBZHcWjrHUG9D04+ppptRw4H0aArh+wjvgK
 MO7x6WpxBwsMyd7kTNS02Y6bK/N73dwqFrfHIoRKaOXA02OLUp7H8qF6T2xrv/eV6xVe
 rB85oacZnZYtngIl+4THgPTg/ZSOH/D11Jx+lQ5MK6TFZB/+75U6oqXSO+38NCu9Colw
 LNfpSKooAIjlLwQ+fG7kHkv4AJqzh0X5RDBiKKlPnxL1X+gG+BSXgLUqULmkW/q9zNcI
 0Pjg==
X-Gm-Message-State: AOAM533uWKIMv1TSslE/ysh/WtoHQ2wdJCjbCNT4kGV3DoUWKrDW4hyl
 oBVlb9GGL7+TVlytJ63j0msugTaJ8aH29lJsZFQ=
X-Google-Smtp-Source: ABdhPJyI5s8NZwfuKDpEZ8b6Fp2u5on+enRQ4oHGe86WgJBiFubYi63j4o4IlmRCWCnLfYIus4gTKeOu0wdd5AuRwMU=
X-Received: by 2002:a62:1b97:0:b029:24e:44e9:a8c1 with SMTP id
 b145-20020a621b970000b029024e44e9a8c1mr24125765pfb.19.1620626769732; Sun, 09
 May 2021 23:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
 <75d0a1d13a755bc128458c0d43f16d54fe08051e.camel@intel.com>
In-Reply-To: <75d0a1d13a755bc128458c0d43f16d54fe08051e.camel@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 10 May 2021 08:06:00 +0200
Message-ID: <CAJ8uoz0Pgfn8kai34_MFGYv3m7c24bpo4DhjZ8oLgd4zaGMWsg@mail.gmail.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-net 0/5] i40e: ice: ixgbe:
 ixgbevf: igb: add correct exception tracing for XDP
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
Cc: "brouer@redhat.com" <brouer@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, May 8, 2021 at 12:58 AM Nguyen, Anthony L
<anthony.l.nguyen@intel.com> wrote:
>
> On Fri, 2021-04-23 at 12:04 +0200, Magnus Karlsson wrote:
> > Add missing exception tracing to XDP when a number of different
> > errors
> > can occur. The support was only partial. Several errors where not
> > logged which would confuse the user quite a lot not knowing where and
> > why the packets disappeared.
> >
> > This patch set fixes this for all Intel drivers with XDP support.
> >
> > Thanks: Magnus
>
> This doesn't apply anymore with the 5.13 patches. It looks like your
> "optimize for XDP_REDIRECT in xsk path" patches are conflicting with
> some of these. Did you want to rework them?

I will rebase them and resubmit.

> Thanks,
> Tony
>
> > Magnus Karlsson (5):
> >   i40e: add correct exception tracing for XDP
> >   ice: add correct exception tracing for XDP
> >   ixgbe: add correct exception tracing for XDP
> >   igb add correct exception tracing for XDP
> >   ixgbevf: add correct exception tracing for XDP
> >
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c      |  7 ++++++-
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c       |  7 ++++++-
> >  drivers/net/ethernet/intel/ice/ice_txrx.c        | 12 +++++++++---
> >  drivers/net/ethernet/intel/ice/ice_xsk.c         |  7 ++++++-
> >  drivers/net/ethernet/intel/igb/igb_main.c        | 10 ++++++----
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 16 ++++++++----
> > ----
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c     | 13 ++++++++-----
> >  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c    |  3 +++
> >  8 files changed, 52 insertions(+), 23 deletions(-)
> >
> >
> > base-commit: bb556de79f0a9e647e8febe15786ee68483fa67b
> > --
> > 2.29.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
