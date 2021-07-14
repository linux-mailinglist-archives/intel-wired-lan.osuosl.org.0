Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8CA3C8506
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 15:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE8B540515;
	Wed, 14 Jul 2021 13:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aeXujnX-EM7V; Wed, 14 Jul 2021 13:10:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C08E44020F;
	Wed, 14 Jul 2021 13:10:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12CF61BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 02:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A29940696
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 02:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D-pSU4DbK23T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 02:24:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF87F40695
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 02:24:31 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id ca14so975088edb.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 19:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xIRCf2+dkLK5/B4kVvO1NnIiKozWSuAMYOOSSKMhOFE=;
 b=AoddE8ZsiCEvSYYUzUXWkS+7kruOL0EVvBDV7+Yr9mXgpts5XNh9SG9ydJc1sftSYh
 i0bMsQamtfkDBTGHj+Rw8/5q2sLO7ldviCRWDx1jMw80SEd4Dn0QM5oKluOd4oCMmP/+
 mpTycrgEvqBMh8UBXnruIW635b+nU/lPELORa9bFNE7Y7+mwatN6InZcoxX/5hNbSBSw
 vjtk6ibL4hxAXvelpSLDPUSiIULD5ew6VSEa86uBt0TKom1ltmWAmjas+ysSLNFUQQZB
 XBXDEN/+NFCDQ0lWahRZxdma8jKPVEMWBtdgtzmcM4qjfSQNM6AxVDk1njz5XWy7vr1B
 mVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xIRCf2+dkLK5/B4kVvO1NnIiKozWSuAMYOOSSKMhOFE=;
 b=LRJag8FDPwdD4a8nos9N9J7zjqCoMWn2VY8DzLj+k4VMndV1q+0v8R7A/tv2O5cuiN
 PAgiNyV4Vm/YOtBUKTStNUlJPDGSfpLoFUtiNtcVZBypRCaw+XjrnampLYrXhWgu3dXT
 v8c1GKgIVFAJKKoGe8XoLiE1t8eEXSEfn8wF18k0nle7uKgM48fBhU1rdQ+vI3o2robs
 Sw92u6+0BMFYcqlkXlgl6reByZ2Y88M/323b6omt3DWwzmj0uIcAx2hxza7fm1yRYhyd
 p1AhinDLtApGoP6MMZyo/Y0A3WdYqCkTVxcJJMkct8uSe2W7GPD6BOFZtLtXZLjgdoin
 eBwQ==
X-Gm-Message-State: AOAM533ZGBUBfcCnWmSLijoKHc/qq3Fh4UYX7PALr+sdeddc1pnQK2Dk
 gy5vmriA3v5vSBn7BtORf7/xBo32d/FyGSiQjK0=
X-Google-Smtp-Source: ABdhPJz0+lA29ScaqgPQp3jxxE+/cjFx2y81DS7sl/Whk8Ix+51QXNlfiByuzy5xTnjkPhOqmEEfarSW9kEe0IDvXXE=
X-Received: by 2002:a05:6402:5114:: with SMTP id
 m20mr10082121edd.174.1626229470044; 
 Tue, 13 Jul 2021 19:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210713122028.463450-1-mudongliangabcd@gmail.com>
 <58d854d9-a371-7689-d396-de1c26b34bfa@pensando.io>
In-Reply-To: <58d854d9-a371-7689-d396-de1c26b34bfa@pensando.io>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Wed, 14 Jul 2021 10:24:04 +0800
Message-ID: <CAD-N9QXthA5JpsXkchx2rrgqWL6Z82FrVt4zF=ygRW9sYXFamA@mail.gmail.com>
To: Shannon Nelson <snelson@pensando.io>
X-Mailman-Approved-At: Wed, 14 Jul 2021 13:10:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix error handling code of
 label err_set_queues
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
Cc: Catherine Sullivan <catherine.sullivan@intel.com>,
 "open list:NETWORKING \[GENERAL\]" <netdev@vger.kernel.org>,
 Shannon Nelson <shannon.nelson@intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 13, 2021 at 11:16 PM Shannon Nelson <snelson@pensando.io> wrote:
>
> On 7/13/21 5:20 AM, Dongliang Mu wrote:
> > If i40e_up_complete fails in i40e_vsi_open, it goes to err_up_complete.
> > The label err_set_queues has an issue: if the else branch is executed,
> > there is no need to execute i40e_vsi_request_irq.
>
> This is unnecessary: if the else branch is executed then control will
> goto err_setup_rx, skipping over i40e_up_complete().

Oh, yes. Thank you. Please ignore this patch.

>
> sln
>
> >
> > Fix this by adding a condition of i40e_vsi_free_irq.
> >
> > Reported-by: Dongliang Mu (mudongliangabcd@gmail.com)
> > Fixes: 9c04cfcd4aad ("i40e: Fix error handling in i40e_vsi_open")
> > Fixes: c22e3c6c7912 ("i40e: prep vsi_open logic for non-netdev cases")
> > Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 861e59a350bd..ae54468c7001 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -8720,7 +8720,8 @@ int i40e_vsi_open(struct i40e_vsi *vsi)
> >   err_up_complete:
> >       i40e_down(vsi);
> >   err_set_queues:
> > -     i40e_vsi_free_irq(vsi);
> > +     if ((vsi->netdev) || (vsi->type == I40E_VSI_FDIR))
> > +             i40e_vsi_free_irq(vsi);
> >   err_setup_rx:
> >       i40e_vsi_free_rx_resources(vsi);
> >   err_setup_tx:
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
