Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4555094D370
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 17:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5AFD841A2;
	Fri,  9 Aug 2024 15:26:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PeMiCybmhoID; Fri,  9 Aug 2024 15:26:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4116841A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723217161;
	bh=mEXAcdQc9At8siYZ7juroJxwxM0M5PLfQR5s3I+RuAg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oARed/pgP/C7ok10H9T5aZB5A4fFOiamRIgu77D6ijqG1g+dRfUJmnjKbzpm+/9Op
	 AXDoilBY+U+M65pFs2LV/7lJuTEg9w9Kal05Nf4tM5YO1isrRPB4RJHnQhaadrEruA
	 BgJnISoShySRdXFEfjR9uJv5Qe8MhATAczI9ROoSKRb1cn4V08N2BNSheEg+8sePfa
	 /D0atZoGG2E3Z002+yf21jzaKAqFkh9sHsir3nexP2vM9xOvevzSOUPLwNOsVuUOrw
	 VAtZ5QCLVcLAHb7WK2DXgQBSSp10omKR4nJzli8jcpjWd/mOvNELc4/HythxA/JrGu
	 8cu7zumqYZgLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4116841A9;
	Fri,  9 Aug 2024 15:26:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A36DC1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 15:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CBB9413A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 15:25:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BVZb7aljGV5i for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 15:25:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2250A413A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2250A413A8
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2250A413A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 15:25:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1B608CE131A;
 Fri,  9 Aug 2024 15:25:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 110ACC32782;
 Fri,  9 Aug 2024 15:25:51 +0000 (UTC)
Date: Fri, 9 Aug 2024 16:25:49 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20240809152549.GB1951@kernel.org>
References: <20240808112217.3560733-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240808112217.3560733-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723217153;
 bh=22mMSvyDc2IiU19uY1pfTN1tmmxYIKM2YfhxIAI0xs0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dMOHsbDbtBMC3+JWlhg3yK8lxRPpneMtrmfqHTqzTkrQqXC964vJWQ9juko4Ba5uc
 Mxd9Tp9Hv/Y155rWxLYJIdJnjWraDnslhV0CmvP0SIUriaq9yHlr8RbK1wa4KkFec0
 SV7mRgZyASRRdMu1I5Hbr7LwPDgxg8Sc9GCEkHFtxTdrsaAY1MHh9d5o4douB89oqy
 i8We6ZS5THERx72QWmuxj7d6FlUtwNj2UxdWxCRGivH3lktq9tjse0NQRPNoPqBMQw
 TD9MFB5uOV4Mh9ivznTXFI5I66VO5tawCmwi++SOSBU+iwlYMMeirUYSDWztqU/Its
 6zaV84gPpEZXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dMOHsbDb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Add Energy
 Efficient Ethernet ability for X710 Base-T/KR/KX cards
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
Cc: anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 08, 2024 at 01:22:17PM +0200, Aleksandr Loktionov wrote:

...

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 1d0d2e5..cd7509f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -5641,50 +5641,77 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
>  	return 0;
>  }
>  
> +static void i40e_eee_capability_to_kedata_supported(__le16  eee_capability_,
> +						    unsigned long *supported)
> +{
> +	const int eee_capability = le16_to_cpu(eee_capability_);

Hi Aleksandr,

Maybe u16 would be an appropriate type for eee_capability.
Also, using const seems excessive here.

> +	static const int lut[] = {
> +		ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +		ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +		ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> +		ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
> +		ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
> +		ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
> +		ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
> +	};
> +
> +	linkmode_zero(supported);
> +	for (unsigned int i = ARRAY_SIZE(lut); i--; )
> +		if (eee_capability & (1 << (i + 1)))

Perhaps:

		if (eee_capability & BIT(i + 1))

> +			linkmode_set_bit(lut[i], supported);
> +}
> +
>  static int i40e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
>  {
>  	struct i40e_netdev_priv *np = netdev_priv(netdev);
>  	struct i40e_aq_get_phy_abilities_resp phy_cfg;
>  	struct i40e_vsi *vsi = np->vsi;
>  	struct i40e_pf *pf = vsi->back;
>  	struct i40e_hw *hw = &pf->hw;
> -	int status = 0;
> +	int status;

This change seems unrelated to the subject of this patch.
If so, please remove.

>  
>  	/* Get initial PHY capabilities */
>  	status = i40e_aq_get_phy_capabilities(hw, false, true, &phy_cfg, NULL);
>  	if (status)
>  		return -EAGAIN;
>  
>  	/* Check whether NIC configuration is compatible with Energy Efficient
>  	 * Ethernet (EEE) mode.
>  	 */
>  	if (phy_cfg.eee_capability == 0)
>  		return -EOPNOTSUPP;
>  
> +	i40e_eee_capability_to_kedata_supported(phy_cfg.eee_capability, edata->supported);

Please line-wrap: Networking still prefers code to be 80 columns wide or less.

> +	linkmode_copy(edata->lp_advertised, edata->supported);
> +
>  	/* Get current configuration */
>  	status = i40e_aq_get_phy_capabilities(hw, false, false, &phy_cfg, NULL);
>  	if (status)
>  		return -EAGAIN;
>  
> +	linkmode_zero(edata->advertised);
> +	if (phy_cfg.eee_capability)
> +		linkmode_copy(edata->advertised, edata->supported);
>  	edata->eee_enabled = !!phy_cfg.eee_capability;
>  	edata->tx_lpi_enabled = pf->stats.tx_lpi_status;
>  
>  	edata->eee_active = pf->stats.tx_lpi_status && pf->stats.rx_lpi_status;
>  
>  	return 0;
>  }
>  
>  static int i40e_is_eee_param_supported(struct net_device *netdev,
>  				       struct ethtool_keee *edata)
>  {
>  	struct i40e_netdev_priv *np = netdev_priv(netdev);
>  	struct i40e_vsi *vsi = np->vsi;
>  	struct i40e_pf *pf = vsi->back;
>  	struct i40e_ethtool_not_used {
> -		u32 value;
> +		int value;

It is unclear to me that this type change is really related to the
subject of this patch. If not, please drop it. But if so, it
seems to me that bool would be the appropriate type.

>  		const char *name;
>  	} param[] = {
> -		{edata->tx_lpi_timer, "tx-timer"},
> +		{!!(edata->advertised[0] & ~edata->supported[0]), "advertise"},
> +		{!!edata->tx_lpi_timer, "tx-timer"},
>  		{edata->tx_lpi_enabled != pf->stats.tx_lpi_status, "tx-lpi"}
>  	};
>  	int i;
> @@ -5710,7 +5737,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
>  	struct i40e_pf *pf = vsi->back;
>  	struct i40e_hw *hw = &pf->hw;
>  	__le16 eee_capability;
> -	int status = 0;
> +	int status;

This change seems unrelated to the subject of this patch.
If so, please remove.

>  
>  	/* Deny parameters we don't support */
>  	if (i40e_is_eee_param_supported(netdev, edata))
> @@ -5754,7 +5781,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
>  		config.eeer |= cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
>  	} else {
>  		config.eee_capability = 0;
> -		config.eeer &= cpu_to_le32(~I40E_PRTPM_EEER_TX_LPI_EN_MASK);
> +		config.eeer &= ~cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);

Ditto.

>  	}
>  
>  	/* Apply modified PHY configuration */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index cbcfada..55bbf0f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -7263,6 +7263,22 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
>  	return err;
>  }
>  #endif /* CONFIG_I40E_DCB */
> +static void i40e_print_link_message_eee(struct i40e_vsi *vsi, struct ethtool_keee *kedata,
> +			    const char *speed, const char *fc)
> +{
> +	if (vsi->netdev->ethtool_ops->get_eee)
> +		vsi->netdev->ethtool_ops->get_eee(vsi->netdev, kedata);
> +
> +	if (!linkmode_empty(kedata->supported))
> +		netdev_info(vsi->netdev,
> +			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s, EEE: %s\n",
> +			    speed, fc,
> +			    kedata->eee_enabled ? "Enabled" : "Disabled");
> +	else
> +		netdev_info(vsi->netdev,
> +			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s\n",
> +			    speed, fc);
> +}
>  
>  /**
>   * i40e_print_link_message - print link up or down
> @@ -7395,9 +7411,12 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool isup)
>  			    "NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
>  			    speed, req_fec, fec, an, fc);
>  	} else {
> -		netdev_info(vsi->netdev,
> -			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s\n",
> -			    speed, fc);
> +		struct ethtool_keee kedata;
> +
> +		linkmode_zero(kedata.supported);
> +		kedata.eee_enabled = false;

Can the declaration of ethtool_keee be moved into
i40e_print_link_message_eee()? I suspect that would lead to
a cleaner implementation.

> +
> +		i40e_print_link_message_eee(vsi, &kedata, speed, fc);
>  	}
>  
>  }
