Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C2F2A80A3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 15:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F04CE858D3;
	Thu,  5 Nov 2020 14:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3vtZ0P5UQ1c; Thu,  5 Nov 2020 14:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36C07858D4;
	Thu,  5 Nov 2020 14:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E93AF1BF425
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 14:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E08CE871CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 14:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sy64+PoP6-Ic for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 14:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B71AC871BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 14:18:01 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id e7so1548086pfn.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 06:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gsfXgYp6d/745vIPy5RjIVehOz0ZLPpOeltimNylI9o=;
 b=DM48THk5JPXrFvaL+o/TrrTHlDQ/280/s6v+YSRtkTpzJ9BCVGqZF022NuUiRSIzZx
 yIjnwa2FEACXxwFnOaHSQ43NBZ2GasIGFJ6qxNFnepnRy0M0S4bn/RY7PWQFgV6zknlH
 9TRqWmOpIXADcfph7/2yhJx9V2Skptm5tegyFBkeMp+sEe1v4fTYAnk7zgejXDorRo4f
 ghtO8PypWRds4kV+DiEttpOMl01qtLpb5UM7T+i4UinQj82wGBF6gzffv77Sg0xAT2pE
 mE4mIgkMnrMx7FYsQ8kELZ4ko0r4VETfSQmj1lsAMk0YMlLvPp2qvfJNkVP/ex+kRp1A
 5i8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gsfXgYp6d/745vIPy5RjIVehOz0ZLPpOeltimNylI9o=;
 b=YxdNN+liaoWQcUEwZWBkAuIDXNXZBalIYk0P8Hay+VXvOawcRC5ERzSGjmwfAwRwFH
 lRdQXAgBZqeJvMXDLB1jdpJjsb6+/ztKhH2AFxZgpS/yX2ioenTJ+WFdRl8acnA8hKoX
 CCkdiizZi32VmbUbuNv+0VNgOSQ1dehQe09UVX8DGvNB8nlKsOZeeDMZRXTJ37jXx2tn
 G66ZuVupU2FF1Dqs59fRH9a05nG+AKlzuhWMyg73+IW0EFy81Hm94jzFb/CqLZyxI9Cu
 Mc0K3NhdBnS8knax0RTyLccWfItfE16nwMxw3PrYRQ0V3mdXXTPCIIYECDrN3X3shM2o
 CxFQ==
X-Gm-Message-State: AOAM5312TSdpMq0xEyECHzm1dv4A5b6X1KV9Ej60jBzOMfeij0HuQd9D
 oFeUpIZ15lsZTou3UrFTjjgBseSHia7gkZK+o8U=
X-Google-Smtp-Source: ABdhPJwXTwb01LuOIuCIJoXgHdk44wasB0pppP3vWiPTqrgsJlDGm7O4K9WDFYnd65Jf4ac9TImWunVd9mjBa315xpI=
X-Received: by 2002:aa7:8428:0:b029:18b:b43:6cc with SMTP id
 q8-20020aa784280000b029018b0b4306ccmr2692443pfn.73.1604585881330; Thu, 05 Nov
 2020 06:18:01 -0800 (PST)
MIME-Version: 1.0
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
 <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 5 Nov 2020 15:17:50 +0100
Message-ID: <CAJ8uoz3-tjXekU=kR+HfMhGBcHtAFnKGq1ZvpFq99T_S-mknPg@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/6] i40e: introduce lazy Tx
 completions for AF_XDP zero-copy
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 5, 2020 at 12:33 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed,  4 Nov 2020 15:08:57 +0100 Magnus Karlsson wrote:
> > From: Magnus Karlsson <magnus.karlsson@intel.com>
> >
> > Introduce lazy Tx completions when a queue is used for AF_XDP
> > zero-copy. In the current design, each time we get into the NAPI poll
> > loop we try to complete as many Tx packets as possible from the
> > NIC. This is performed by reading the head pointer register in the NIC
> > that tells us how many packets have been completed. Reading this
> > register is expensive as it is across PCIe, so let us try to limit the
> > number of times it is read by only completing Tx packets to user-space
> > when the number of available descriptors in the Tx HW ring is below
> > some threshold. This will decrease the number of reads issued to the
> > NIC and improves performance with 1.5% - 2% for the l2fwd xdpsock
> > microbenchmark.
> >
> > The threshold is set to the minimum possible size that the HW ring can
> > have. This so that we do not run into a scenario where the threshold
> > is higher than the configured number of descriptors in the HW ring.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
>
> I feel like this needs a big fat warning somewhere.
>
> It's perfectly fine to never complete TCP packets, but AF_XDP could be
> used to implement protocols in user space. What if someone wants to
> implement something like TSQ?

I might misunderstand you, but with TSQ here (for something that
bypasses qdisk and any buffering and just goes straight to the driver)
you mean the ability to have just a few buffers outstanding and
continuously reuse these? If so, that is likely best achieved by
setting a low Tx queue size on the NIC. Note that even without this
patch, completions could be delayed. Though this patch makes that the
normal case. In any way, I think this calls for some improved
documentation.

I also discovered a corner case that will lead to a deadlock if the
completion ring size is half the size of the Tx NIC ring size. This
needs to be fixed, so I will spin a v2.

Thanks: Magnus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
