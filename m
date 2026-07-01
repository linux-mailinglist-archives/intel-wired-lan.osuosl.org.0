Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lu5WFLoHRWq45QoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:27:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 437D46ED4EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:27:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="M9VEGix/";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=none
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CF548210F;
	Wed,  1 Jul 2026 12:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CiCHeo_16piI; Wed,  1 Jul 2026 12:27:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BB12821E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782908853;
	bh=8C7oyBswJVgp2DVXnhG0/eaFmWwl+G1eGvrR5SX4E84=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M9VEGix/ZhbNJ0XufWOLmaW/7efT9iXHSNrYkKwjlopXPrWYmKl7HcCsGLqKhsPQU
	 PKTcy3an9N5ljV5ixcNzS2A/gBk0aX3Oe3zG7TSOt8L59yqynmtpB1mysveRwPH9uo
	 uOD9EfzQL8kx2wSOlzlMw2L4H4AEBhWTrcnsPaPDqt2aD7iYPT6W05zwxMCXSD5Mzu
	 cnWLAIdF9lngo2auHYb8zZrg9GBBjmZyfNFRNDL0mQJsctf2hP3KIgg1yN8CrWFq5o
	 PsCxZh61Utsg1cE8UaXIl4mnKwoMgCjrYxBm9N/JOo1GbqFM9TNHwttAf5xpU5Cqsp
	 TnOIv9Wg1GPIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BB12821E2;
	Wed,  1 Jul 2026 12:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AC5FA2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91AF840D50
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:27:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vp2JhGiXVSm6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 12:27:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C50F140619
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C50F140619
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C50F140619
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:27:26 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9AB5B4C2C37D66;
 Wed, 01 Jul 2026 14:27:01 +0200 (CEST)
Message-ID: <fb13640b-0171-457a-84c5-f6dbdd6d7471@molgen.mpg.de>
Date: Wed, 1 Jul 2026 14:27:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260701113519.49859-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260701113519.49859-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: E610: force phy
 link to get down when interface is down
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 437D46ED4EE

Dear Jedrzej,


Thank you for your patch.

Am 01.07.26 um 13:35 schrieb Jedrzej Jagielski:
> For the E610 family, similarly to the E8xx adapters, the default behavior
> is for the PHY link to remain up even when the corresponding OS interface
> is down.
> 
> Add function setting down the PHY config IXGBE_ACI_PHY_ENA_LINK bit
> what leads to disabling PHY link.

It’d extend it a little:

… by factoring the code out into ixgbe_handle_link_down(), and call it 
in ixgbe_close().

> Align functionality with the implementation of the ice driver.

Please add a paragraph detailing regression potential. Are there users 
that might depend on the current default, as uncommon it might be?

> Let user to configure link-down-on-close enablement through ethtool.

Please provide examples, and how to test your change. Doing this you can 
also paste the new log messages.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 35 ++++++++++++++++++-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  1 +
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 15 ++++++++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 27 +++++++++++---
>   5 files changed, 73 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 30f62174acf2..7bbb82dd962c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -685,6 +685,7 @@ struct ixgbe_adapter {
>   #define IXGBE_FLAG2_MOD_POWER_UNSUPPORTED	BIT(22)
>   #define IXGBE_FLAG2_API_MISMATCH		BIT(23)
>   #define IXGBE_FLAG2_FW_ROLLBACK			BIT(24)
> +#define IXGBE_FLAG2_LINK_DOWN_ON_CLOSE		BIT(25)
>   
>   	/* Tx fast path data */
>   	int num_tx_queues;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index da445fb673fc..46d8a3ea86b8 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -1923,6 +1923,33 @@ void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
>   	hw->fc.current_mode = hw->fc.requested_mode;
>   }
>   
> +/**
> + * ixgbe_disable_phy_link - force phy link to get down
> + * @hw: pointer to hardware structure
> + *
> + * Send 0x0601 with the IXGBE_ACI_PHY_ENA_LINK bit set down.
> + *
> + * Return: the exit code of the operation.

At least for me it’s not that helpful. Shouldn’t the return values be 
listed? What is success? What is failure?

> + */
> +int ixgbe_disable_phy_link(struct ixgbe_hw *hw)
> +{
> +	struct ixgbe_aci_cmd_get_phy_caps_data pcaps = {};
> +	struct ixgbe_aci_cmd_set_phy_cfg_data pcfg = {};
> +	int err;
> +
> +	err = ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_ACTIVE_CFG,
> +				     &pcaps);
> +	if (err)
> +		return err;
> +
> +	ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
> +
> +	pcfg.caps &= ~IXGBE_ACI_PHY_ENA_LINK;
> +	pcfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
> +
> +	return ixgbe_aci_set_phy_cfg(hw, &pcfg);
> +}
> +
>   /**
>    * ixgbe_disable_rx_e610 - Disable RX unit
>    * @hw: pointer to hardware structure
> @@ -2207,6 +2234,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
>   	u8 rmode = IXGBE_ACI_REPORT_TOPO_CAP_MEDIA;
>   	u64 sup_phy_type_low, sup_phy_type_high;
>   	u64 phy_type_low = 0, phy_type_high = 0;
> +	bool force_on_required;
>   	int err;
>   
>   	err = ixgbe_aci_get_link_info(hw, false, NULL);
> @@ -2272,6 +2300,11 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
>   		phy_type_high |= IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
>   	}
>   
> +	/* If IXGBE_ACI_PHY_ENA_LINK has been explicitly disabled that means
> +	 * we need to force interface enablement after reaching that point

It’d be great, if you rephrased “that point”.

> +	 */
> +	force_on_required = !(pcfg.caps & IXGBE_ACI_PHY_ENA_LINK);
> +
>   	/* Mask the set values to avoid requesting unsupported link types. */
>   	phy_type_low &= sup_phy_type_low;
>   	pcfg.phy_type_low = cpu_to_le64(phy_type_low);
> @@ -2280,7 +2313,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
>   
>   	if (pcfg.phy_type_high != pcaps.phy_type_high ||
>   	    pcfg.phy_type_low != pcaps.phy_type_low ||
> -	    pcfg.caps != pcaps.caps) {
> +	    pcfg.caps != pcaps.caps || force_on_required) {
>   		pcfg.caps |= IXGBE_ACI_PHY_ENA_LINK;
>   		pcfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
>   
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> index 2cb76a3d30ae..59044d67ebeb 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> @@ -50,6 +50,7 @@ int ixgbe_cfg_phy_fc(struct ixgbe_hw *hw,
>   		     enum ixgbe_fc_mode req_mode);
>   int ixgbe_setup_fc_e610(struct ixgbe_hw *hw);
>   void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw);
> +int ixgbe_disable_phy_link(struct ixgbe_hw *hw);
>   void ixgbe_disable_rx_e610(struct ixgbe_hw *hw);
>   int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw);
>   int ixgbe_identify_phy_e610(struct ixgbe_hw *hw);
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 4dfae53b4ea1..0fcb9d738984 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -139,6 +139,8 @@ static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
>   	"vf-ipsec",
>   #define IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF	BIT(2)
>   	"mdd-disable-vf",
> +#define IXGBE_PRIV_LINK_DOWN_ON_CLOSE	BIT(3)
> +	"link-down-on-close",
>   };
>   
>   #define IXGBE_PRIV_FLAGS_STR_LEN ARRAY_SIZE(ixgbe_priv_flags_strings)
> @@ -3842,6 +3844,9 @@ static u32 ixgbe_get_priv_flags(struct net_device *netdev)
>   	if (adapter->flags2 & IXGBE_FLAG2_AUTO_DISABLE_VF)
>   		priv_flags |= IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF;
>   
> +	if (adapter->flags2 & IXGBE_FLAG2_LINK_DOWN_ON_CLOSE)
> +		priv_flags |= IXGBE_PRIV_LINK_DOWN_ON_CLOSE;
> +
>   	return priv_flags;
>   }
>   
> @@ -3879,6 +3884,16 @@ static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
>   		}
>   	}
>   
> +	flags2 &= ~IXGBE_FLAG2_LINK_DOWN_ON_CLOSE;
> +	if (priv_flags & IXGBE_PRIV_LINK_DOWN_ON_CLOSE) {
> +		if (adapter->hw.mac.type == ixgbe_mac_e610) {
> +			flags2 |= IXGBE_FLAG2_LINK_DOWN_ON_CLOSE;
> +		} else {
> +			e_info(probe, "Cannot set private flags: Unsupported hardware\n");

Please print hw.mac.type, and mention, that it’s only supported on E610.

> +			return -EOPNOTSUPP;
> +		}
> +	}
> +
>   	if (flags2 != adapter->flags2) {
>   		adapter->flags2 = flags2;
>   
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 62c2d83e1577..58ee4a186039 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -7544,6 +7544,17 @@ static void ixgbe_close_suspend(struct ixgbe_adapter *adapter)
>   	ixgbe_free_all_rx_resources(adapter);
>   }
>   
> +static void ixgbe_handle_link_down(struct ixgbe_adapter *adapter)
> +{
> +	struct net_device *netdev = adapter->netdev;
> +
> +	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
> +		ixgbe_ptp_start_cyclecounter(adapter);
> +
> +	e_info(drv, "NIC Link is Down\n");
> +	netif_carrier_off(netdev);
> +}
> +
>   /**
>    * ixgbe_close - Disables a network interface
>    * @netdev: network interface device structure
> @@ -7566,6 +7577,16 @@ int ixgbe_close(struct net_device *netdev)
>   
>   	ixgbe_fdir_filter_exit(adapter);
>   
> +	if (adapter->flags2 & IXGBE_FLAG2_LINK_DOWN_ON_CLOSE) {
> +		int err;
> +
> +		err = ixgbe_disable_phy_link(&adapter->hw);
> +		if (err)
> +			e_warn(drv, "Cannot set PHY link down\n");

Log the error?

> +
> +		ixgbe_handle_link_down(adapter);
> +	}
> +
>   	ixgbe_release_hw_control(adapter);
>   
>   	return 0;
> @@ -8244,11 +8265,7 @@ static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
>   	if (ixgbe_is_sfp(hw) && hw->mac.type == ixgbe_mac_82598EB)
>   		adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;
>   
> -	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
> -		ixgbe_ptp_start_cyclecounter(adapter);
> -
> -	e_info(drv, "NIC Link is Down\n");
> -	netif_carrier_off(netdev);
> +	ixgbe_handle_link_down(adapter);
>   }
>   
>   static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)


Kind regards,

Paul
