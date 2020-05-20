Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F01A71DA659
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 02:19:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C978323355;
	Wed, 20 May 2020 00:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wRly08QYX9Ux; Wed, 20 May 2020 00:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 800CB232F2;
	Wed, 20 May 2020 00:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16D681BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 129A086D3C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zsPVIdjHF7Dy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 00:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F4A8865AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:19:17 +0000 (UTC)
IronPort-SDR: svDd9ATPxzkNwXuCdEaHub2qtrPPhbJ6/enKgpiiKTYlaBPLijTZdx9t8lqIxxQS+xcjz7pyLe
 HLFbTefJL/sA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 17:19:16 -0700
IronPort-SDR: JhtDlSLQ9Q4U7IIGRNsPdQL96zsKQWKtzPjzfOFn39gaK4ahueczxxL7j3yCmIo5tCyD9bsCaa
 a9hOWukx2pUQ==
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="411823587"
Received: from twxiong-mobl.amr.corp.intel.com (HELO localhost)
 ([10.254.97.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 17:19:16 -0700
MIME-Version: 1.0
In-Reply-To: <20200519101644.8246-1-sasha.neftin@intel.com>
References: <20200519101644.8246-1-sasha.neftin@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 17:19:15 -0700
Message-ID: <158993395587.38317.17024118281100869909@twxiong-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add initial EEE support
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

> +static int igc_ethtool_get_eee(struct net_device *netdev,
> +                              struct ethtool_eee *edata)
> +{
> +       struct igc_adapter *adapter = netdev_priv(netdev);
> +       struct igc_hw *hw = &adapter->hw;
> +       u32 eeer;
> +
> +       if (!hw->dev_spec._base.eee_disable)
> +               edata->advertised =
> +                       mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
> +
> +       *edata = adapter->eee;
> +       edata->supported = (SUPPORTED_Autoneg);

Nitpicking: The surrounding parentheses here looks pointless.

> +       netdev_info(netdev,
> +                   "Supported EEE link modes: 100baseT/Full, 1000baseT/Full, 2500baseT/Full");

Although the '\n' is automatically added to this message, from the discussion
in [1], the preference is that we keep putting it at the end of our logging
messages.

This comment applies to all other log messages in this patch.

> +static int igc_ethtool_set_eee(struct net_device *netdev,
> +                              struct ethtool_eee *edata)
> +{
> +       struct igc_adapter *adapter = netdev_priv(netdev);
> +       struct igc_hw *hw = &adapter->hw;
> +       struct ethtool_eee eee_curr;
> +       s32 ret_val;
> +
> +       if (hw->phy.media_type != igc_media_type_copper)
> +               return -EOPNOTSUPP;

It looks 'igc_media_type_copper' is the only media_type supported by the
driver, at least up till now. I'm wondering if we could get rid of it and
simplify the code.

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
> +                                  "Setting EEE tx-lpi is not supported");
> +                       return -EINVAL;
> +               }
> +
> +               /* Tx LPI timer is not implemented currently */
> +               if (edata->tx_lpi_timer) {
> +                       netdev_err(netdev,
> +                                  "Setting EEE Tx LPI timer is not supported");
> +                       return -EINVAL;
> +               }
> +

It seems we have an empty line here by mistake.

> +       } else if (!edata->eee_enabled) {
> +               netdev_err(netdev,
> +                          "Setting EEE options are not supported with EEE disabled");
> +               return -EINVAL;
> +       }
> +
> +       adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
> +       if (hw->dev_spec._base.eee_disable != !edata->eee_enabled) {

In every occurrence of _base.eee_disable we use the '!' operator like in the
line above. I think the code would be more readable if we inverted the logic
and had _base.eee_enable instead.

> +s32 igc_set_eee_i225(struct igc_hw *hw, bool adv2p5G, bool adv1G,
> +                    bool adv100M)
> +{
> +       u32 ipcnfg, eeer;
> +
> +       if (hw->mac.type != igc_i225 ||
> +           hw->phy.media_type != igc_media_type_copper)

The same comment I made above about checking for 'igc_media_type_copper'
applies here too.

It looks 'igc_i225' is the only hw->mac.type supported by the driver, at least
up till now. I'm wondering if we could get rid of it and simplify the code.

Regards,

Andre

[1] https://lore.kernel.org/netdev/20200421.153221.2089591404052111123.davem@davemloft.net/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
