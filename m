Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD53F2CF619
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 22:26:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AE1D87F86;
	Fri,  4 Dec 2020 21:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8RjvAjPhP1U; Fri,  4 Dec 2020 21:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB6B887FB4;
	Fri,  4 Dec 2020 21:26:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74A5E1BF280
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 21:26:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6EA2C87D8A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 21:26:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CeyTou97aDe6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 21:26:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 474B587CE8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 21:26:02 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id r9so7224424ioo.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 13:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dcobOCg4elJ1lBIJnbdqI7sJMeQVb3HqQ2OWJay91KA=;
 b=KrtuBt5MXQtj9zWIsKhfga5hBQGSBID2664sPjRwL0rOihm6EPbkABs+Av6MkIjVjn
 TBPHWrpwNtWgF9I8br+bubAJv3JAmgoMVp3LsbwaXchyw6SNLlL3yeVIl1bWu2+JbzHq
 9AZFKzvEsjkgCvBLOA9LA3e0RKcLhXFg/29w/NoPzWFfX3UKTJMdbepL1xKlcnRyypBo
 643+hIgkR8PNRbifZcMEQGO/A7JByE0BjJTAlItgEowUH3wUCYMoE2IwO1cT+wb4Ipyr
 E7hDtUUF3ceyao47yCQXPYB6MtXLcAWnpfQbCPr2e7sAiNDKzj4jy5ME1NFEvREvV70U
 JXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dcobOCg4elJ1lBIJnbdqI7sJMeQVb3HqQ2OWJay91KA=;
 b=KUxGqawPbYsVHCBaARfWOPJKqPI/MAPyUlpMeqNaLXevhEpae9+7udMYDPag4Bqv6W
 IOhD0oQRu7Kzw/Ez5jdIYxkvfz6NfzuUYCEOF0TCCo7333E5AFD8zISlkpCN/kj2TbjU
 jsTg5rLn6hcstOKVDfM9ZOaPgY5Yi74JdNY8oOwT0z+O4VoPeIxRTTt305vVCwfyb+LU
 YRDw9VToEfsSZR4J934xMqepSybJxv5Ae1fjUWJ5b8IwNCrPMtno36Sxi32mazPENtup
 7pyAiLbkir2QV5uxyz7vuKOZKUKCF6OtB7I+TEPEj8RS5SKtKf4rysqIngk/TCqWpTzf
 BE/g==
X-Gm-Message-State: AOAM533PpIvGEz9LL2mZ+lMhUcjwXeu1FJyIAF4zFHHn5mplcQGJPfT4
 RvT1hkvZZo4MDPcksl54KC3DIT1kWFBRWub+sD0=
X-Google-Smtp-Source: ABdhPJx86Powa4ZnC6gzQpBuytC8EmVW3lKN6t9bFbw4cSl/I0aTSHWtuY+5ZF97rQ6aFHJHwlv9tMGf0x4ij9I4aRQ=
X-Received: by 2002:a02:4:: with SMTP id 4mr8851115jaa.121.1607117161437; Fri,
 04 Dec 2020 13:26:01 -0800 (PST)
MIME-Version: 1.0
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <20201204200920.133780-3-mario.limonciello@dell.com>
In-Reply-To: <20201204200920.133780-3-mario.limonciello@dell.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 4 Dec 2020 13:25:50 -0800
Message-ID: <CAKgT0Ucz5zDp3fEJFpt1x1e+OcLCxOZVyo5KK5sM_LktbLQH3Q@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@dell.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 2/7] e1000e: Move all S0ix related
 code into its own source file
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun Shen <Yijun.Shen@dell.com>,
 LKML <linux-kernel@vger.kernel.org>, anthony.wong@canonical.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 4, 2020 at 12:09 PM Mario Limonciello
<mario.limonciello@dell.com> wrote:
>
> Introduce a flag to indicate the device should be using the S0ix
> flows and use this flag to run those functions.
>
> Splitting the code to it's own file will make future heuristics
> more self contained.
>
> Tested-by: Yijun Shen <yijun.shen@dell.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>

One minor issue pointed out below.

> ---
>  drivers/net/ethernet/intel/e1000e/Makefile |   2 +-
>  drivers/net/ethernet/intel/e1000e/e1000.h  |   4 +
>  drivers/net/ethernet/intel/e1000e/netdev.c | 272 +-------------------
>  drivers/net/ethernet/intel/e1000e/s0ix.c   | 280 +++++++++++++++++++++
>  4 files changed, 290 insertions(+), 268 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/e1000e/s0ix.c
>
> diff --git a/drivers/net/ethernet/intel/e1000e/Makefile b/drivers/net/ethernet/intel/e1000e/Makefile
> index 44e58b6e7660..f2332c01f86c 100644
> --- a/drivers/net/ethernet/intel/e1000e/Makefile
> +++ b/drivers/net/ethernet/intel/e1000e/Makefile
> @@ -9,5 +9,5 @@ obj-$(CONFIG_E1000E) += e1000e.o
>
>  e1000e-objs := 82571.o ich8lan.o 80003es2lan.o \
>                mac.o manage.o nvm.o phy.o \
> -              param.o ethtool.o netdev.o ptp.o
> +              param.o ethtool.o netdev.o s0ix.o ptp.o
>
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba7a0f8f6937..b13f956285ae 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -436,6 +436,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
>  #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
>  #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
>  #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
> +#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
>
>  #define E1000_RX_DESC_PS(R, i)     \
>         (&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
> @@ -462,6 +463,9 @@ enum latency_range {
>  extern char e1000e_driver_name[];
>
>  void e1000e_check_options(struct e1000_adapter *adapter);
> +void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter);
> +void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter);
> +void e1000e_maybe_enable_s0ix(struct e1000_adapter *adapter);
>  void e1000e_set_ethtool_ops(struct net_device *netdev);
>
>  int e1000e_open(struct net_device *netdev);
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 128ab6898070..cd9839e86615 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c

<snip>

>  static int e1000e_pm_freeze(struct device *dev)
>  {
>         struct net_device *netdev = dev_get_drvdata(dev);
> @@ -6962,7 +6701,6 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
>         struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
>         struct e1000_adapter *adapter = netdev_priv(netdev);
>         struct pci_dev *pdev = to_pci_dev(dev);
> -       struct e1000_hw *hw = &adapter->hw;
>         int rc;
>
>         e1000e_flush_lpic(pdev);
> @@ -6974,8 +6712,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
>                 e1000e_pm_thaw(dev);
>
>         /* Introduce S0ix implementation */
> -       if (hw->mac.type >= e1000_pch_cnp &&
> -           !e1000e_check_me(hw->adapter->pdev->device))
> +       if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
>                 e1000e_s0ix_entry_flow(adapter);

So the placement of this code raises some issues. It isn't a problem
with your patch but a bug in the driver that needs to be addressed. I
am assuming you only need to perform this flow if you successfully
froze the part. However this is doing it in all cases, which is why
the e1000e_pm_thaw is being called before you call this code. This is
something that should probably be an "else if" rather than a seperate
if statement.

>
>         return rc;
> @@ -6986,12 +6723,10 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>         struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
>         struct e1000_adapter *adapter = netdev_priv(netdev);
>         struct pci_dev *pdev = to_pci_dev(dev);
> -       struct e1000_hw *hw = &adapter->hw;
>         int rc;
>
>         /* Introduce S0ix implementation */
> -       if (hw->mac.type >= e1000_pch_cnp &&
> -           !e1000e_check_me(hw->adapter->pdev->device))
> +       if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
>                 e1000e_s0ix_exit_flow(adapter);
>
>         rc = __e1000_resume(pdev);
> @@ -7655,6 +7390,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>         if (!(adapter->flags & FLAG_HAS_AMT))
>                 e1000e_get_hw_control(adapter);
>
> +       /* use heuristics to decide whether to enable s0ix flows */
> +       e1000e_maybe_enable_s0ix(adapter);
> +
>         strlcpy(netdev->name, "eth%d", sizeof(netdev->name));
>         err = register_netdev(netdev);
>         if (err)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
