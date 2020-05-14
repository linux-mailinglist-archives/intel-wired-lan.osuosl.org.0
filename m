Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4571D33C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2020 16:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78EA6891A0;
	Thu, 14 May 2020 14:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AOvwqzrncYUe; Thu, 14 May 2020 14:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DBA7589152;
	Thu, 14 May 2020 14:57:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85AB21BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 14:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D128228E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 14:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Thvx62x43BVZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2020 14:57:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3234322721
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 14:57:43 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id s10so2450977iog.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 07:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sSOzS9/AwTJ/dUTM+b9jQevKw/QMNrwD3wxfgOBQCVk=;
 b=d+PTljg/UHKuu0OaaGc6wDa0hdswTZVUjo8NTAq2GNPSb0jWT2ZesIJZY6B/wQuy9l
 lB5YQtnLySMHKSZihqN8mHpdDsiEKGf6VfV+XqYGH0PcktlN1Jz5xVRP8LdoQ0RhI/XG
 Ljptu5mIAecQ7r1zEeurGgKENieMm7S2Ul+HeReNESjkYtzTsWGvR2ZwaoD61icXqIkR
 YJ+vAFD8+230wwcTbUZpNgS/8Ipc/2Y4gpiTO94/+qolg2p67lqqifWkbeDNUELbmWaK
 UfawE1pK+e4/MWuYZfh1BiJke/eOmv652x7VsFi7LKGNqZ7aimL4NgcltRZlfIf2jUig
 I3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sSOzS9/AwTJ/dUTM+b9jQevKw/QMNrwD3wxfgOBQCVk=;
 b=i8SW3eh949gTU4KFLej4sCPDuRKV6dUL+QczaiQb1tjOYx6Ho41X0WzYnryz6ThSPV
 i3nAGdKDEuS57xngly89H4NAi1Ze7+0bIbk5lHl5b29Eh8T3for/XosvkAjaVDpIFqr7
 9fIC6KD3AKVBuIf2nqmYkSYq0CfxWSHL61nJQLMyi3QnSXTddurtz9lQnILME7f4GD0u
 YKn8JixUI7Kgmz306RCHpRVjLqhCPYKA+9oIHFjbqCWM0O611un5FrwW888UJOSc5g1R
 3rZV4fbFnLRDukn0eBsloD7IZugTCcgtcGelr6uonwN5Q9FoIN9oUz/2qUwzEjLoliWR
 WVRA==
X-Gm-Message-State: AGi0Pua7Dbsz6oPmzXgKV3oT04h2q90M1vWxJj63av0taVLcasOOKdLt
 dFiVHb1GFLcUARJsiyNAcnOC20Km+5RiooRdRsg=
X-Google-Smtp-Source: APiQypJZXnVIye3UpmOXWT60F5NfoSWVF+2sMzyyXKujoTDAt0Cd5tD07ZzXAygotdJdnqelz4KNMkw1rN4ZHYsRy7c=
X-Received: by 2002:a02:9103:: with SMTP id a3mr4719820jag.87.1589468262207;
 Thu, 14 May 2020 07:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200512044347.3810257-1-punit1.agrawal@toshiba.co.jp>
In-Reply-To: <20200512044347.3810257-1-punit1.agrawal@toshiba.co.jp>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 14 May 2020 07:57:31 -0700
Message-ID: <CAKgT0Uf86d8wnAMSLO4hn4+mfCH5fP4e8OsAYknE0m3Y7in9gw@mail.gmail.com>
To: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
Subject: Re: [Intel-wired-lan] [RFC] e1000e: Relax condition to trigger
 reset for ME workaround
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
Cc: daniel.sangorrin@toshiba.co.jp, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 11, 2020 at 9:45 PM Punit Agrawal
<punit1.agrawal@toshiba.co.jp> wrote:
>
> It's an error if the value of the RX/TX tail descriptor does not match
> what was written. The error condition is true regardless the duration
> of the interference from ME. But the code only performs the reset if
> E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
> transpired. The extra condition can lead to inconsistency between the
> state of hardware as expected by the driver.
>
> Fix this by dropping the check for number of delay iterations.
>
> Signed-off-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
> Hi,
>
> The issue was noticed through code inspection while backporting the
> workaround for TDT corruption. Sending it out as an RFC as I am not
> familiar with the hardware internals of the e1000e.
>
> Another unresolved question is the inherent racy nature of the
> workaround - the ME could block access again after releasing the
> device (i.e., BIT(E1000_ICH_FWSM_PCIM2PCI) clear) but before the
> driver performs the write. Has this not been a problem?
>
> Any feedback on the patch or the more information on the issues
> appreciated.
>
> Thanks,
> Punit
>
>  drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 177c6da80c57..5ed4d7ed35b3 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -607,11 +607,11 @@ static void e1000e_update_rdt_wa(struct e1000_ring *rx_ring, unsigned int i)
>  {
>         struct e1000_adapter *adapter = rx_ring->adapter;
>         struct e1000_hw *hw = &adapter->hw;
> -       s32 ret_val = __ew32_prepare(hw);
>
> +       __ew32_prepare(hw);
>         writel(i, rx_ring->tail);
>
> -       if (unlikely(!ret_val && (i != readl(rx_ring->tail)))) {
> +       if (unlikely(i != readl(rx_ring->tail))) {
>                 u32 rctl = er32(RCTL);
>
>                 ew32(RCTL, rctl & ~E1000_RCTL_EN);
> @@ -624,11 +624,11 @@ static void e1000e_update_tdt_wa(struct e1000_ring *tx_ring, unsigned int i)
>  {
>         struct e1000_adapter *adapter = tx_ring->adapter;
>         struct e1000_hw *hw = &adapter->hw;
> -       s32 ret_val = __ew32_prepare(hw);
>
> +       __ew32_prepare(hw);
>         writel(i, tx_ring->tail);
>
> -       if (unlikely(!ret_val && (i != readl(tx_ring->tail)))) {
> +       if (unlikely(i != readl(tx_ring->tail))) {
>                 u32 tctl = er32(TCTL);
>
>                 ew32(TCTL, tctl & ~E1000_TCTL_EN);

You are eliminating the timeout check in favor of just verifying if
the write succeeded or not. Seems pretty straight forward to me.

One other change you may consider making would be to drop the return
value from __ew32_prepare since it doesn't appear to be used anywhere,
make the function static, and maybe get rid of the prototype in
e1000.h.

Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
