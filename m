Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FDC3BB82C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 09:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F70183A66;
	Mon,  5 Jul 2021 07:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4X2z2cQe9aQ; Mon,  5 Jul 2021 07:47:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E95E83A54;
	Mon,  5 Jul 2021 07:47:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47CAD1BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30B8A83A54
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oaxxF1YWg7j5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 07:47:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 610BE83A4E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:47:13 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id t3so22581691edc.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 00:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3lU+yaKyB51Nd0BK8K42+im13NtdWR4bDe3Aamdm8jM=;
 b=uL2q1Zm27Mou4aR++Qi4k2PhgTcOxmTaP/AvPFFD6VwvtpuVHyKE+SeDhn9TagmhLM
 gAUS+muSbU17ieGtmK6jbT3cVJ1D2VAdrTPbA2KDHp9BJ47Blcxph91HM9uAxUeHe+xq
 6oA9502f2xIpoXh/nGgdlrE07cDFvnvonT3fhqoEyotKc3pba1Evzn7QSt73TMejW+X3
 5Dx6/3ghkpKVg76hBPLASmOgrjkx4it6ctWl9fA1+FXW7Z4So0zQLyzyLGqc5LrkHj9m
 UWRfTqUBaYfHwqKFDN4Z2CTBr+xWVeAk0A1rubFbE1AuVe76++CPrUk5XHWmByVPHqup
 vHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3lU+yaKyB51Nd0BK8K42+im13NtdWR4bDe3Aamdm8jM=;
 b=tWHVheMASMafT8OQnYXc9gzvn2nCDa20lc9bOizxI98SdXKXu0Pn5GCXYwkPmAzTEr
 SuZ3Lrqr26MM5iADE9zqaJbUXNb5yQCjWPW5kqYwpWn5lb2Rp9hPV7aWYWyTIJ5skedb
 DJBaHotHQeWO1IBe+ZMgjPOdOPro58usPqlaTYzQirzRA2ATgMrYaWjA0Cc7/bSDd9gG
 bp3alZp9gTEsIk4HGa2WYGtYTPnLD6uz3r5SGLPhmxUV4wraK0Xur2vM06ADXNfAxbxi
 aoytpu9fDthZVPG8EpiCLVBav6KRaJ2SLfVIhXNa0Qxlv3BdkcWl/5c1FUB7RsIp0wOP
 G/GA==
X-Gm-Message-State: AOAM533oxO3dbpyXjBAdy80KLk6kf3+SDli7dxIJUeRUGrbSnJKVvNA/
 ahVJUNctjPoE1JxOvcRcIR5S9Ow5+lKdOc0IKGw=
X-Google-Smtp-Source: ABdhPJz69wsIJaVHAjEsyhlptcdaiCA6lkPbcEgV2ZN7vTcn2KJseSzhclcqBiPPooE+gAluDhZBtkKzSUMJypwiJb4=
X-Received: by 2002:a05:6402:430f:: with SMTP id
 m15mr2352655edc.113.1625471231421; 
 Mon, 05 Jul 2021 00:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210702045120.22855-1-aaron.ma@canonical.com>
In-Reply-To: <20210702045120.22855-1-aaron.ma@canonical.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 5 Jul 2021 17:47:00 +1000
Message-ID: <CAPM=9twzx0aa5Dq-L5oOSk+w8z7audCq_biXwtFVh3QVY1VceA@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2 Jul 2021 at 14:53, Aaron Ma <aaron.ma@canonical.com> wrote:
>
> Check PCI state when rd/wr iomem.
> Implement wr32 function as rd32 too.
>
> When unplug TBT dock with i225, rd/wr PCI iomem will cause error log:
> Trace:
> BUG: unable to handle page fault for address: 000000000000b604
> Oops: 0000 [#1] SMP NOPTI
> RIP: 0010:igc_rd32+0x1c/0x90 [igc]
> Call Trace:
> igc_ptp_suspend+0x6c/0xa0 [igc]
> igc_ptp_stop+0x12/0x50 [igc]
> igc_remove+0x7f/0x1c0 [igc]
> pci_device_remove+0x3e/0xb0
> __device_release_driver+0x181/0x240
>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---

Drive-by, but won't this add a lot of overhead on every register
access? has this been benchmarked with lots of small network transfers
or anything?

Dave.


>  drivers/net/ethernet/intel/igc/igc_main.c | 16 ++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h |  7 ++-----
>  2 files changed, 18 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index f1adf154ec4a..606b72cb6193 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5292,6 +5292,10 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>         u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
>         u32 value = 0;
>
> +       if (igc->pdev &&
> +               igc->pdev->error_state == pci_channel_io_perm_failure)
> +               return 0;
> +
>         value = readl(&hw_addr[reg]);
>
>         /* reads should not return all F's */
> @@ -5308,6 +5312,18 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>         return value;
>  }
>
> +void igc_wr32(struct igc_hw *hw, u32 reg, u32 val)
> +{
> +       struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
> +       u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
> +
> +       if (igc->pdev &&
> +               igc->pdev->error_state == pci_channel_io_perm_failure)
> +               return;
> +
> +       writel((val), &hw_addr[(reg)]);
> +}
> +
>  int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
>  {
>         struct igc_mac_info *mac = &adapter->hw.mac;
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index cc174853554b..eb4be87d0e8b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -260,13 +260,10 @@ struct igc_hw;
>  u32 igc_rd32(struct igc_hw *hw, u32 reg);
>
>  /* write operations, indexed using DWORDS */
> -#define wr32(reg, val) \
> -do { \
> -       u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
> -       writel((val), &hw_addr[(reg)]); \
> -} while (0)
> +void igc_wr32(struct igc_hw *hw, u32 reg, u32 val);
>
>  #define rd32(reg) (igc_rd32(hw, reg))
> +#define wr32(reg, val) (igc_wr32(hw, reg, val))
>
>  #define wrfl() ((void)rd32(IGC_STATUS))
>
> --
> 2.30.2
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
