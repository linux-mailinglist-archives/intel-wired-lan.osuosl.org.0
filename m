Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3E21DAAAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 08:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A4F7868A8;
	Wed, 20 May 2020 06:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulhR8nineuYY; Wed, 20 May 2020 06:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CA1C869C4;
	Wed, 20 May 2020 06:34:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F225E1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 06:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC0B386B59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 06:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxr1AQq2Q2vm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 06:34:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 55E4586B19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 06:34:37 +0000 (UTC)
IronPort-SDR: 1XDFK3z4IcB2pgoPzRfI8xdwkPXAneLiSurp0t/TiQ4wZYSWvYLnbIVcN5fEW7XchvxSUtgtG3
 W2FxpQTi09ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 23:34:36 -0700
IronPort-SDR: LwwiOxGVGh8/15EyzRHvfDKFkx7X6aqFLiV0YaRMcsey4shOl8uNCniWgi/XRx+1zzuh8U6izp
 czSA0kNYPQRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="268163642"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.172.236])
 ([10.185.172.236])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2020 23:34:35 -0700
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20200519101644.8246-1-sasha.neftin@intel.com>
 <158993395587.38317.17024118281100869909@twxiong-mobl.amr.corp.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <c586b0ab-f652-65b9-3d6b-f3697464631b@intel.com>
Date: Wed, 20 May 2020 09:34:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <158993395587.38317.17024118281100869909@twxiong-mobl.amr.corp.intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/20/2020 03:19, Andre Guedes wrote:
> Hi Sasha,
> 
>> +static int igc_ethtool_get_eee(struct net_device *netdev,
>> +                              struct ethtool_eee *edata)
>> +{
>> +       struct igc_adapter *adapter = netdev_priv(netdev);
>> +       struct igc_hw *hw = &adapter->hw;
>> +       u32 eeer;
>> +
>> +       if (!hw->dev_spec._base.eee_disable)
>> +               edata->advertised =
>> +                       mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
>> +
>> +       *edata = adapter->eee;
>> +       edata->supported = (SUPPORTED_Autoneg);
> 
> Nitpicking: The surrounding parentheses here looks pointless.
> 
I will fix it in v2
>> +       netdev_info(netdev,
>> +                   "Supported EEE link modes: 100baseT/Full, 1000baseT/Full, 2500baseT/Full");
> 
> Although the '\n' is automatically added to this message, from the discussion
> in [1], the preference is that we keep putting it at the end of our logging
> messages.
> 
> This comment applies to all other log messages in this patch.
> 
yeah... we will need do that for all rest code where we removed "\n". I 
will take care for code relvant to this patch only. Other netdev_* 
should be changed too.
>> +static int igc_ethtool_set_eee(struct net_device *netdev,
>> +                              struct ethtool_eee *edata)
>> +{
>> +       struct igc_adapter *adapter = netdev_priv(netdev);
>> +       struct igc_hw *hw = &adapter->hw;
>> +       struct ethtool_eee eee_curr;
>> +       s32 ret_val;
>> +
>> +       if (hw->phy.media_type != igc_media_type_copper)
>> +               return -EOPNOTSUPP;
> 
> It looks 'igc_media_type_copper' is the only media_type supported by the
> driver, at least up till now. I'm wondering if we could get rid of it and
> simplify the code.
> 
Will fix in v2.
>> +
>> +       memset(&eee_curr, 0, sizeof(struct ethtool_eee));
>> +
>> +       ret_val = igc_ethtool_get_eee(netdev, &eee_curr);
>> +       if (ret_val)
>> +               return ret_val;
>> +
>> +       if (eee_curr.eee_enabled) {
>> +               if (eee_curr.tx_lpi_enabled != edata->tx_lpi_enabled) {
>> +                       netdev_err(netdev,
>> +                                  "Setting EEE tx-lpi is not supported");
>> +                       return -EINVAL;
>> +               }
>> +
>> +               /* Tx LPI timer is not implemented currently */
>> +               if (edata->tx_lpi_timer) {
>> +                       netdev_err(netdev,
>> +                                  "Setting EEE Tx LPI timer is not supported");
>> +                       return -EINVAL;
>> +               }
>> +
> 
> It seems we have an empty line here by mistake.
> 
Will fix in v2.
>> +       } else if (!edata->eee_enabled) {
>> +               netdev_err(netdev,
>> +                          "Setting EEE options are not supported with EEE disabled");
>> +               return -EINVAL;
>> +       }
>> +
>> +       adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
>> +       if (hw->dev_spec._base.eee_disable != !edata->eee_enabled) {
> 
> In every occurrence of _base.eee_disable we use the '!' operator like in the
> line above. I think the code would be more readable if we inverted the logic
> and had _base.eee_enable instead.
> 
I agree. Actually all Intel drivers used inverted logic. Indeed will be 
more readable. Will fix in v2.
>> +s32 igc_set_eee_i225(struct igc_hw *hw, bool adv2p5G, bool adv1G,
>> +                    bool adv100M)
>> +{
>> +       u32 ipcnfg, eeer;
>> +
>> +       if (hw->mac.type != igc_i225 ||
>> +           hw->phy.media_type != igc_media_type_copper)
> 
> The same comment I made above about checking for 'igc_media_type_copper'
> applies here too.
> 
Will fix in v2.
> It looks 'igc_i225' is the only hw->mac.type supported by the driver, at least
> up till now. I'm wondering if we could get rid of it and simplify the code.
> 
Right, mac_type and media_type is only one for i225 part. I think we 
will clean up it in separated patches.
> Regards,
> 
> Andre
> 
> [1] https://lore.kernel.org/netdev/20200421.153221.2089591404052111123.davem@davemloft.net/
> 
Hello Andre, thanks for review
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
