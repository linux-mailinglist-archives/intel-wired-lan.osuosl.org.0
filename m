Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A3CA496D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 11:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD2F783F24;
	Fri, 28 Feb 2025 10:17:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x86sD8GdmS9Q; Fri, 28 Feb 2025 10:17:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBB4583ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740737859;
	bh=eOUjWy4cl51QoNaXogkrnBkdeq9tSDnIC82G9AkS+ZE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=elnhjAu79oF8ywX8emMRWYxoI/oQkm9vGI/Nbz7SYFredgvCPCd6LB2DIzUItEMjn
	 2kxU7WbX3/MyJ2ymDxVUGHzPKmjI3WhAAb0GxneiI1b9x8XwuzGxEzY5R3kJ1RAMcJ
	 Y6pbPO5n0RM/y/vBZjqUt8TdPITllcHtiNGmbxKI7vm9a6QfUw9sJ/q+1WsiQkBOV4
	 VBVHpeokbNS286dQr3qN5j8jPjrqXOrsP9asIoqMJoO3woxWrhQ1opsT64b/CZhMad
	 6nRre3KmVELq9oYkB+fc4VR2MVbeb6GckH+nTUMwSxLnnk5BdPTJf5Xmvy8f5qgdO5
	 /37yBIGZrPgtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBB4583ECA;
	Fri, 28 Feb 2025 10:17:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A1B994F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1DA9783ECA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XTpepP2_6ttd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 10:17:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC0D583C10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC0D583C10
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC0D583C10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:17:34 +0000 (UTC)
Received: from [141.14.12.179] (g179.RadioFreeInternet.molgen.mpg.de
 [141.14.12.179])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4681B61E6478F;
 Fri, 28 Feb 2025 11:17:17 +0100 (CET)
Message-ID: <776c21b6-c39c-4871-9d95-e54470d0d55a@molgen.mpg.de>
Date: Fri, 28 Feb 2025 11:17:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
 <20250228083739.209076-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250228083739.209076-2-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ixgbe: create E610
 specific ethtool_ops structure
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jedrzej,


Thank you for your patch.

Am 28.02.25 um 09:37 schrieb Jedrzej Jagielski:
> E610's implementation of various ethtool ops is different than
> the ones corresponding to ixgbe legacy products. Therefore create
> separate E610 ethtool_ops struct which will be filled out in the
> forthcoming patches.
> 
> Assing adequate ops struct basing on mac type. This step requires

1.  A*dd*ing
2.  Maybe even imperative mood: Add.
3.  … based on MAC type.

> changing a bit the flow of probing by placing ixgbe_set_ethtool_ops
> after mac type is assigned. So move the whole netdev assignment
> block after mac_type is known. This step doesn't have any additional
> impact on probing sequence.
> 
> Suggested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 52 ++++++++++++++++++-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 ++--
>   2 files changed, 56 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index c86103eccc8a..83d9ee3941e5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -3650,7 +3650,57 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
>   	.set_link_ksettings     = ixgbe_set_link_ksettings,
>   };
>   
> +static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
> +	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
> +	.get_drvinfo            = ixgbe_get_drvinfo,
> +	.get_regs_len           = ixgbe_get_regs_len,
> +	.get_regs               = ixgbe_get_regs,
> +	.get_wol                = ixgbe_get_wol,
> +	.set_wol                = ixgbe_set_wol,
> +	.nway_reset             = ixgbe_nway_reset,
> +	.get_link               = ethtool_op_get_link,
> +	.get_eeprom_len         = ixgbe_get_eeprom_len,
> +	.get_eeprom             = ixgbe_get_eeprom,
> +	.set_eeprom             = ixgbe_set_eeprom,
> +	.get_ringparam          = ixgbe_get_ringparam,
> +	.set_ringparam          = ixgbe_set_ringparam,
> +	.get_pause_stats	= ixgbe_get_pause_stats,
> +	.get_pauseparam         = ixgbe_get_pauseparam,
> +	.set_pauseparam         = ixgbe_set_pauseparam,
> +	.get_msglevel           = ixgbe_get_msglevel,
> +	.set_msglevel           = ixgbe_set_msglevel,
> +	.self_test              = ixgbe_diag_test,
> +	.get_strings            = ixgbe_get_strings,
> +	.set_phys_id            = ixgbe_set_phys_id,
> +	.get_sset_count         = ixgbe_get_sset_count,
> +	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
> +	.get_coalesce           = ixgbe_get_coalesce,
> +	.set_coalesce           = ixgbe_set_coalesce,
> +	.get_rxnfc		= ixgbe_get_rxnfc,
> +	.set_rxnfc		= ixgbe_set_rxnfc,
> +	.get_rxfh_indir_size	= ixgbe_rss_indir_size,
> +	.get_rxfh_key_size	= ixgbe_get_rxfh_key_size,
> +	.get_rxfh		= ixgbe_get_rxfh,
> +	.set_rxfh		= ixgbe_set_rxfh,
> +	.get_eee		= ixgbe_get_eee,
> +	.set_eee		= ixgbe_set_eee,
> +	.get_channels		= ixgbe_get_channels,
> +	.set_channels		= ixgbe_set_channels,
> +	.get_priv_flags		= ixgbe_get_priv_flags,
> +	.set_priv_flags		= ixgbe_set_priv_flags,
> +	.get_ts_info		= ixgbe_get_ts_info,
> +	.get_module_info	= ixgbe_get_module_info,
> +	.get_module_eeprom	= ixgbe_get_module_eeprom,
> +	.get_link_ksettings     = ixgbe_get_link_ksettings,
> +	.set_link_ksettings     = ixgbe_set_link_ksettings,
> +};
> +
>   void ixgbe_set_ethtool_ops(struct net_device *netdev)
>   {
> -	netdev->ethtool_ops = &ixgbe_ethtool_ops;
> +	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
> +
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
> +		netdev->ethtool_ops = &ixgbe_ethtool_ops_e610;
> +	else
> +		netdev->ethtool_ops = &ixgbe_ethtool_ops;
>   }
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 90cffa50221c..b6ce1017bf13 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11610,11 +11610,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_ioremap;
>   	}
>   
> -	netdev->netdev_ops = &ixgbe_netdev_ops;
> -	ixgbe_set_ethtool_ops(netdev);
> -	netdev->watchdog_timeo = 5 * HZ;
> -	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
> -
>   	/* Setup hw api */
>   	hw->mac.ops   = *ii->mac_ops;
>   	hw->mac.type  = ii->mac;
> @@ -11644,6 +11639,11 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	hw->phy.mdio.mdio_read = ixgbe_mdio_read;
>   	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
>   
> +	netdev->netdev_ops = &ixgbe_netdev_ops;
> +	ixgbe_set_ethtool_ops(netdev);
> +	netdev->watchdog_timeo = 5 * HZ;
> +	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
> +
>   	/* setup the private structure */
>   	err = ixgbe_sw_init(adapter, ii);
>   	if (err)


Kind regards,

Paul
