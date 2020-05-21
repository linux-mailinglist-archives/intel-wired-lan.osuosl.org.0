Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 404C11DD5B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2020 20:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B969C87614;
	Thu, 21 May 2020 18:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJmhs8hvQ-QT; Thu, 21 May 2020 18:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2127F85DF9;
	Thu, 21 May 2020 18:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF45C1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 18:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B417B20466
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 18:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qckK55GhWaEy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 18:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 70BC520418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 18:09:09 +0000 (UTC)
IronPort-SDR: gfbZfERDW18VjLuUMljJRA4fSMkjnhsX8uC1BBQi5mIv7qFowH92M+jiUHLHWr6jmzG+Y0FXpP
 JJfCwtGIXqGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 11:09:08 -0700
IronPort-SDR: 6/eK5Foo7aTSpCIc20YMn3QOkjEvc/E+OQiR8YAT9r9z0prTB53WNN988LSL7zRCAwZiGsBX5s
 /2eCX8Tux+Ug==
X-IronPort-AV: E=Sophos;i="5.73,418,1583222400"; d="scan'208";a="412489115"
Received: from swaranku-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.255.230.223])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 11:09:08 -0700
MIME-Version: 1.0
In-Reply-To: <20200521051033.30813-1-sasha.neftin@intel.com>
References: <20200521051033.30813-1-sasha.neftin@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Thu, 21 May 2020 11:09:07 -0700
Message-ID: <159008454769.70366.11413367573186547439@swaranku-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Add initial EEE support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

Quoting Sasha Neftin (2020-05-20 22:10:33)
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 2214a5d3a259..3035d3a96621 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
[...]
> +static int igc_ethtool_set_eee(struct net_device *netdev,
> +                              struct ethtool_eee *edata)
> +{
> +       struct igc_adapter *adapter = netdev_priv(netdev);
> +       struct igc_hw *hw = &adapter->hw;
> +       struct ethtool_eee eee_curr;
> +       s32 ret_val;
> +
> +       memset(&eee_curr, 0, sizeof(struct ethtool_eee));
> +
> +       ret_val = igc_ethtool_get_eee(netdev, &eee_curr);
> +       if (ret_val)
> +               return ret_val;
> +
> +       if (eee_curr.eee_enabled) {
> +               if (eee_curr.tx_lpi_enabled != edata->tx_lpi_enabled) {
> +                       netdev_err(netdev,
> +                                  "Setting EEE tx-lpi is not supported\n");
> +                       return -EINVAL;
> +               }
> +
> +               /* Tx LPI timer is not implemented currently */
> +               if (edata->tx_lpi_timer) {
> +                       netdev_err(netdev,
> +                                  "Setting EEE Tx LPI timer is not supported\n");
> +                       return -EINVAL;
> +               }
> +       } else if (!edata->eee_enabled) {
> +               netdev_err(netdev,
> +                          "Setting EEE options are not supported with EEE disabled\n");
> +               return -EINVAL;
> +       }
> +
> +       adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
> +       if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
> +               hw->dev_spec._base.eee_enable = edata->eee_enabled;
> +               adapter->flags |= IGC_FLAG_EEE;
> +
> +               /* reset link */
> +               if (netif_running(netdev))
> +                       igc_reinit_locked(adapter);
> +               else
> +                       igc_reset(adapter);
> +       }
> +
> +       if (ret_val) {
> +               netdev_err(netdev,
> +                          "Problem setting EEE advertisement options\n");
> +               return -EINVAL;
> +       }

'ret_val' is already checked in the beginning of this function, and it is not
set afterwards. So it seems this check is pointless.

> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c4df7129f930..6110093c6ad9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
[...]
> @@ -5190,6 +5202,10 @@ static int igc_probe(struct pci_dev *pdev,
>         netdev_info(netdev, "MAC: %pM", netdev->dev_addr);
>  
>         dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
> +       /* Disable EEE for internal copper PHY devices */
> +       hw->dev_spec._base.eee_enable = false;
> +       adapter->flags &= ~IGC_FLAG_EEE;
> +       igc_set_eee_i225(hw, false, false, false);

Could you please clarify if EEE is expected to be enabled or disabled by
default? IIUC this code, EEE is disabled by default. But in IGB it is enabled
by default.

In addition to that, the comment above mentions it disables EEE for copper
devices, but there is no check for such device. Is the comment indeed
applicable here?

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
