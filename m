Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBE62CCFEB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 07:58:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D450203BE;
	Thu,  3 Dec 2020 06:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rzMy+mopvLch; Thu,  3 Dec 2020 06:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5EF1B203EE;
	Thu,  3 Dec 2020 06:58:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C18B1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 06:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E91287141
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 06:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-1UTzRVBtAF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 06:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB13386DC9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 06:58:17 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id p21so1627570pjv.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 22:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YsmUWAir1b5Cki8mRIguhpP0JOCeBAGFzmuzsMza7Bg=;
 b=Def33h22jTS2hyweuH6CldMV6vSSY54coAaTh/4noAeWWG+dtnOACR+W7TO0fz1suh
 zM80Lu9mTAr3Equ7nJ6saR/Cr8Xbpr1C9kCyIf+wz656UXHvlPMVpfSzH0Gycuz7ufAv
 TyeT/20NAAprLUW7NQXIYqq/drVWQfEKgFWN7My/hmdaKZ/Zuif9kH3XK65SVE6lpSC7
 gJnKjcZeOkP4fuBCs06cv+EwF0hnKL3TT84sXetU5WNcHU4zbssbymjZylItGlKfPig9
 vV6ml2Mg8AeZzOkklOQyP2Y/Ilv3lX9x7SphipFOYGcloFEGo2g81nKp1fUlThHV6FAD
 vCFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YsmUWAir1b5Cki8mRIguhpP0JOCeBAGFzmuzsMza7Bg=;
 b=QkvYIMdRMSbZAg7FP2YnKf/QArFGrocTkDyamkdDDivw5KHxuN3X2DCqAKNJoADoDd
 DAIhjULlMgLHW0fbSzj36lR0egZG6U9xWi2xVZDbCxqC6x6zNdhLKYWcuFo+phyqs7oO
 fi8ryzAbuVv4CgVcWsbrsxyFdhLQNkYged3EQMU36LZf7pY05OQAkVD2yS1ALvLalNvg
 fR+/RcnNaEQBdZlnhtC1xgMCOqO6A5WVERjYtlPEgUYmTocLur1pLD5beWqk2grYro3B
 3GvGBkyq1AM5LPkGMMWVpTx1tS2UpPMqJcz3be025E6DAxwEku4zWOcpNW3/oJw+0hwx
 oCpw==
X-Gm-Message-State: AOAM533LEeN2JvD82h6hyrP55IOJRsbNPlCvkaBp6iiVjPTi1wt/mRoz
 BULCJJXGes2QPkIHcadCxJkUUKOkYZVZrGmTsNg=
X-Google-Smtp-Source: ABdhPJx+E1N0OEAyN6x4UdYwJstVEoeYMazJKS4KFK+eH868p3JFsnCe8ItLhA80rRSTM1sQ/U80s/BTqmELuy5i/xU=
X-Received: by 2002:a17:90a:8c4:: with SMTP id 4mr1762593pjn.204.1606978697290; 
 Wed, 02 Dec 2020 22:58:17 -0800 (PST)
MIME-Version: 1.0
References: <20201202150724.31439-1-magnus.karlsson@gmail.com>
 <20201202204041.GA30907@ranger.igk.intel.com>
In-Reply-To: <20201202204041.GA30907@ranger.igk.intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 3 Dec 2020 07:58:06 +0100
Message-ID: <CAJ8uoz04dFruNnDDyvgbPBZBbMqZxHS6xQJ66dnoPLFtWXv0Uw@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] i40e, ice,
 ixgbe: optimize for XDP_REDIRECT in xsk path
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 2, 2020 at 9:49 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Wed, Dec 02, 2020 at 04:07:21PM +0100, Magnus Karlsson wrote:
> > Optimize run_xdp_zc() for the XDP program verdict being XDP_REDIRECT
> > in the zsk zero-copy path. This path is only used when having AF_XDP
> > zero-copy on and in that case most packets will be directed to user
> > space. This provides around 100k extra packets in throughput on my
> > server when running l2fwd in xdpsock.
> >
> > Thanks: Magnus
>
> For series:
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>
> You only ate 'e' from i40e subject line.

Sorry, you are right. Tony, would you please be so kind to add this
missing "e" in the commit message before you send the pull request?

Thanks: Magnus

> >
> > Magnus Karlsson (3):
> >   i40: optimize for XDP_REDIRECT in xsk path
> >   ixgbe: optimize for XDP_REDIRECT in xsk path
> >   ice: optimize for XDP_REDIRECT in xsk path
> >
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 11 +++++++----
> >  drivers/net/ethernet/intel/ice/ice_xsk.c     | 12 ++++++++----
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 11 +++++++----
> >  3 files changed, 22 insertions(+), 12 deletions(-)
> >
> >
> > base-commit: 6b4f503186b73e3da24c6716c8c7ea903e6b74d4
> > --
> > 2.29.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
