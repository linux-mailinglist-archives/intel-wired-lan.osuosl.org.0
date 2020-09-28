Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1B327B77C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 01:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E61DB86554;
	Mon, 28 Sep 2020 23:06:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7-1r5tkkmusO; Mon, 28 Sep 2020 23:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 253D786A98;
	Mon, 28 Sep 2020 23:06:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9341BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 23:04:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74ED4870C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 23:04:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVRac8+NwJk5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 23:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 88758870C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 23:04:43 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id y16so480175ioc.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 16:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1KseT/svdKVvJYTJTQpp56Ar8bPIQrMokOTCZMQ15rc=;
 b=d1oxmyG/ypY91Fb3AbMotpeF8MEzxfA/5DNjoQRwhoeh04debN3CSOa6qe/h7WetAp
 WapYVV6eD8jP/F7S+y6HYqkKTjIsXfIIxkeyc/HzPSbfDvUqst8aDK9arRJ0A5+o/qdN
 +6qkNjXAa2nZLHrmoXAH8B23Zq/J1sP66Qg+3+BXVQ8Y4p03kaPi75WET9CbUl679xNC
 +fHoM1lL7U1gsR2QOZqDDs9v6pPFoZmxRwLNQ/YOX12qPhLXh1hg7nHk0ZFKOTXEzq3p
 9PM/Ale+256/qTh3y/0AfMKl0Ddskr5pSGfrcT8bVRAaEoIVraqGQFNMhebeG5hzimvk
 mjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1KseT/svdKVvJYTJTQpp56Ar8bPIQrMokOTCZMQ15rc=;
 b=PwbSvTxa6LkRkjXT7/eSL3PKjyPF5xYNUVnUqaDhZBV6394aoV7STLSIvsFq8SAgkJ
 BzT05fF1qZFgtJnMRdPB21UFmmxYizFb4LKUiVJ7D+0vzlHCX/+twmPYevh5wD97pUCC
 6clvWgXPEzs/D+KP4ifiyrr/m4qAuVbLZuG355qPAeeIAP1zV03LhY7NzLv9UNmG1cjV
 IMCPgHgzDr7YRoXnrRIXQX15B2xAjTrMXD4nfYvbQZqsQ22X+9lkcGyodD3xnmonhbwS
 k2Uy5dJKu8A8mJ0qq2aETrSKe1kDKqpbgKlBOiAWqMZ+xTOIj3QsQbmELttPTlXlxTnf
 xSGQ==
X-Gm-Message-State: AOAM530BSP/pKEZ65x6anZ5pRQo6xnNxZ95/Tfb77QJrJhCQ8EOB5JrK
 XggU+e9aKF5nXSy2G8NpxCUKWbfjkfF9ZmvOupY=
X-Google-Smtp-Source: ABdhPJy8fKGk4i2gt+Z971pAw5a/T0PJzv1K80XuRjSiR9lSjSp1Cx0n8Ja8XgZ7afOYIc3DouJfdcqfHrCmVR1/+14=
X-Received: by 2002:a02:c004:: with SMTP id y4mr730552jai.121.1601334282736;
 Mon, 28 Sep 2020 16:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200927194846.045411263@linutronix.de>
 <20200927194920.824108021@linutronix.de>
In-Reply-To: <20200927194920.824108021@linutronix.de>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 28 Sep 2020 16:04:31 -0700
Message-ID: <CAKgT0Uc0bB8nr0Kh-UHS=dEW3nu=DrYeio1w6snkzFSB=tQgXw@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Approved-At: Mon, 28 Sep 2020 23:06:11 +0000
Subject: Re: [Intel-wired-lan] [patch 10/35] net: intel: Remove
 in_interrupt() warnings
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 Netdev <netdev@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Sep 27, 2020 at 1:00 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>
> in_interrupt() is ill defined and does not provide what the name
> suggests. The usage especially in driver code is deprecated and a tree wide
> effort to clean up and consolidate the (ab)usage of in_interrupt() and
> related checks is happening.
>
> In this case the checks cover only parts of the contexts in which these
> functions cannot be called. They fail to detect preemption or interrupt
> disabled invocations.
>
> As the functions which are invoked from the various places contain already
> a broad variety of checks (always enabled or debug option dependent) cover
> all invalid conditions already, there is no point in having inconsistent
> warnings in those drivers.
>
> Just remove them.
>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org

The patch looks good to me.

Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c     |    1 -
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c      |    2 --
>  drivers/net/ethernet/intel/i40e/i40e_main.c       |    4 ----
>  drivers/net/ethernet/intel/ice/ice_main.c         |    1 -
>  drivers/net/ethernet/intel/igb/igb_main.c         |    1 -
>  drivers/net/ethernet/intel/igc/igc_main.c         |    1 -
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |    1 -
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |    2 --
>  8 files changed, 13 deletions(-)
>
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -534,7 +534,6 @@ void e1000_down(struct e1000_adapter *ad
>
>  void e1000_reinit_locked(struct e1000_adapter *adapter)
>  {
> -       WARN_ON(in_interrupt());
>         while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
>                 msleep(1);
>
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
> @@ -221,8 +221,6 @@ static bool fm10k_prepare_for_reset(stru
>  {
>         struct net_device *netdev = interface->netdev;
>
> -       WARN_ON(in_interrupt());
> -
>         /* put off any impending NetWatchDogTimeout */
>         netif_trans_update(netdev);
>
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -6689,7 +6689,6 @@ static void i40e_vsi_reinit_locked(struc
>  {
>         struct i40e_pf *pf = vsi->back;
>
> -       WARN_ON(in_interrupt());
>         while (test_and_set_bit(__I40E_CONFIG_BUSY, pf->state))
>                 usleep_range(1000, 2000);
>         i40e_down(vsi);
> @@ -8462,9 +8461,6 @@ void i40e_do_reset(struct i40e_pf *pf, u
>  {
>         u32 val;
>
> -       WARN_ON(in_interrupt());
> -
> -
>         /* do the biggest reset indicated */
>         if (reset_flags & BIT_ULL(__I40E_GLOBAL_RESET_REQUESTED)) {
>
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -486,7 +486,6 @@ static void ice_do_reset(struct ice_pf *
>         struct ice_hw *hw = &pf->hw;
>
>         dev_dbg(dev, "reset_type 0x%x requested\n", reset_type);
> -       WARN_ON(in_interrupt());
>
>         ice_prepare_for_reset(pf);
>
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2220,7 +2220,6 @@ void igb_down(struct igb_adapter *adapte
>
>  void igb_reinit_locked(struct igb_adapter *adapter)
>  {
> -       WARN_ON(in_interrupt());
>         while (test_and_set_bit(__IGB_RESETTING, &adapter->state))
>                 usleep_range(1000, 2000);
>         igb_down(adapter);
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -3831,7 +3831,6 @@ void igc_down(struct igc_adapter *adapte
>
>  void igc_reinit_locked(struct igc_adapter *adapter)
>  {
> -       WARN_ON(in_interrupt());
>         while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>                 usleep_range(1000, 2000);
>         igc_down(adapter);
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -5677,7 +5677,6 @@ static void ixgbe_up_complete(struct ixg
>
>  void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
>  {
> -       WARN_ON(in_interrupt());
>         /* put off any impending NetWatchDogTimeout */
>         netif_trans_update(adapter->netdev);
>
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -2526,8 +2526,6 @@ void ixgbevf_down(struct ixgbevf_adapter
>
>  void ixgbevf_reinit_locked(struct ixgbevf_adapter *adapter)
>  {
> -       WARN_ON(in_interrupt());
> -
>         while (test_and_set_bit(__IXGBEVF_RESETTING, &adapter->state))
>                 msleep(1);
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
