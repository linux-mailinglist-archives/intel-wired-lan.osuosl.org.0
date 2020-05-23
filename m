Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9A51DF852
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 May 2020 18:50:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44A3A87A11;
	Sat, 23 May 2020 16:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vx4Yhb9jGum5; Sat, 23 May 2020 16:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 291348663C;
	Sat, 23 May 2020 16:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2735D1BF576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 16:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6253588302
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 16:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id servj+nrEAxB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 May 2020 16:50:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84AB688364
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 16:50:14 +0000 (UTC)
IronPort-SDR: F87o2OXb+21v0oZCP9q+j4EKTUvNqfPQocX/TxyaCXI8VbWGJ1L4Hr1Lf1vyASSAS4GumIwqp4
 jkDkMNFXmuag==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2020 09:50:13 -0700
IronPort-SDR: 2EngG+pTaJpYuBofv5yYjervBOCbpv3ywUPU+bjRNmiFTkkpzyqHIyZw0rqWrcqZRT9w89Sp3a
 BOxxT1jnAGHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,426,1583222400"; d="scan'208";a="301406558"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.219.200])
 ([10.214.219.200])
 by orsmga008.jf.intel.com with ESMTP; 23 May 2020 09:50:12 -0700
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20200521051033.30813-1-sasha.neftin@intel.com>
 <159008454769.70366.11413367573186547439@swaranku-mobl2.amr.corp.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <67bce2b9-5913-4499-fa37-0c5507c1af5b@intel.com>
Date: Sat, 23 May 2020 19:50:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159008454769.70366.11413367573186547439@swaranku-mobl2.amr.corp.intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/21/2020 21:09, Andre Guedes wrote:
> Hi Sasha,
> 
> Quoting Sasha Neftin (2020-05-20 22:10:33)
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index 2214a5d3a259..3035d3a96621 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> [...]
>> +static int igc_ethtool_set_eee(struct net_device *netdev,
>> +                              struct ethtool_eee *edata)
>> +{
>> +       struct igc_adapter *adapter = netdev_priv(netdev);
>> +       struct igc_hw *hw = &adapter->hw;
>> +       struct ethtool_eee eee_curr;
>> +       s32 ret_val;
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
>> +                                  "Setting EEE tx-lpi is not supported\n");
>> +                       return -EINVAL;
>> +               }
>> +
>> +               /* Tx LPI timer is not implemented currently */
>> +               if (edata->tx_lpi_timer) {
>> +                       netdev_err(netdev,
>> +                                  "Setting EEE Tx LPI timer is not supported\n");
>> +                       return -EINVAL;
>> +               }
>> +       } else if (!edata->eee_enabled) {
>> +               netdev_err(netdev,
>> +                          "Setting EEE options are not supported with EEE disabled\n");
>> +               return -EINVAL;
>> +       }
>> +
>> +       adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
>> +       if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
>> +               hw->dev_spec._base.eee_enable = edata->eee_enabled;
>> +               adapter->flags |= IGC_FLAG_EEE;
>> +
>> +               /* reset link */
>> +               if (netif_running(netdev))
>> +                       igc_reinit_locked(adapter);
>> +               else
>> +                       igc_reset(adapter);
>> +       }
>> +
>> +       if (ret_val) {
>> +               netdev_err(netdev,
>> +                          "Problem setting EEE advertisement options\n");
>> +               return -EINVAL;
>> +       }
> 
> 'ret_val' is already checked in the beginning of this function, and it is not
> set afterwards. So it seems this check is pointless.
Correct, I will fix in v3.
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index c4df7129f930..6110093c6ad9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> [...]
>> @@ -5190,6 +5202,10 @@ static int igc_probe(struct pci_dev *pdev,
>>          netdev_info(netdev, "MAC: %pM", netdev->dev_addr);
>>   
>>          dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
>> +       /* Disable EEE for internal copper PHY devices */
>> +       hw->dev_spec._base.eee_enable = false;
>> +       adapter->flags &= ~IGC_FLAG_EEE;
>> +       igc_set_eee_i225(hw, false, false, false);
> 
> Could you please clarify if EEE is expected to be enabled or disabled by
> default? IIUC this code, EEE is disabled by default. But in IGB it is enabled
> by default.
> 
EEE is expected to be disabled by default. This is our HW design's 
expert recommendation. The reason for that: gPHY firmware (running in 
PHY) release is not the final version yet.
Since gPHY firmware will be done and validated we will reconsider this 
recommendation.
EEE should be disabled when TSN in use, but actually this is not reason 
for currently decision to keep EEE disabled.

> In addition to that, the comment above mentions it disables EEE for copper
> devices, but there is no check for such device. Is the comment indeed
> applicable here?
We support only copper devices. I will clarify in v3
Thanks, Sasha
> 
> Regards,
> 
> Andre
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
