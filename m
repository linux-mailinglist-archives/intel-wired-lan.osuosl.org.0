Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB078331F84
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 07:46:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58A134016D;
	Tue,  9 Mar 2021 06:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O9VzVJxk2k6u; Tue,  9 Mar 2021 06:46:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C76640158;
	Tue,  9 Mar 2021 06:46:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D0BE1BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 06:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A83E489E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 06:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eYKJ61KMllVP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 06:46:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EECCB47415
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 06:46:14 +0000 (UTC)
IronPort-SDR: ytl/Ik7dH3YXpDtP9NK77wB0Vr/YDbtwqwRaWHlWGe/v8RAKbl9l4L03FyIq5jtH3u44Xa5JXu
 RYoeiOaxQbWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="175280744"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="175280744"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 22:46:13 -0800
IronPort-SDR: EN3Mx1ubdIE/uW0dKYA3qJa49VQI/Ffpg6rNjXunRS5NGSh3fIif6BRLZhw4qLS4oo/472zbHQ
 h2e6zlrrwjhg==
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="409610337"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 22:46:12 -0800
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 anna.kostyukovsky@intel.com
References: <20210304073813.2741545-1-sasha.neftin@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <5541b467-3699-2ca6-86cd-a60619af34eb@linux.intel.com>
Date: Tue, 9 Mar 2021 08:46:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210304073813.2741545-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for Lunar
 Lake
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

On 04/03/2021 09:38, Sasha Neftin wrote:
> Add devices IDs for the next LOM generations that will be
> available on the next Intel Client platform (Lunar Lake)
> This patch provides the initial support for these devices
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
>   drivers/net/ethernet/intel/e1000e/hw.h      | 5 +++++
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 6 ++++++
>   drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
>   5 files changed, 21 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 06442e6bef73..7256b43b7a65 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -903,6 +903,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		mask |= BIT(18);
>   		break;
>   	default:
> @@ -1569,6 +1570,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		fext_nvm11 = er32(FEXTNVM11);
>   		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
>   		ew32(FEXTNVM11, fext_nvm11);
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
> index 69a2329ea463..d02aebf65554 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -106,6 +106,10 @@ struct e1000_hw;
>   #define E1000_DEV_ID_PCH_MTP_I219_V18		0x550B
>   #define E1000_DEV_ID_PCH_MTP_I219_LM19		0x550C
>   #define E1000_DEV_ID_PCH_MTP_I219_V19		0x550D
> +#define E1000_DEV_ID_PCH_LNP_I219_LM20		0x550E
> +#define E1000_DEV_ID_PCH_LNP_I219_V20		0x550F
> +#define E1000_DEV_ID_PCH_LNP_I219_LM21		0x5510
> +#define E1000_DEV_ID_PCH_LNP_I219_V21		0x5511
>   
>   #define E1000_REVISION_4	4
>   
> @@ -132,6 +136,7 @@ enum e1000_mac_type {
>   	e1000_pch_tgp,
>   	e1000_pch_adp,
>   	e1000_pch_mtp,
> +	e1000_pch_lnp,
>   };
>   
>   enum e1000_media_type {
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 0ac8d79a7987..8c5aaa523b01 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -321,6 +321,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		if (e1000_phy_is_accessible_pchlan(hw))
>   			break;
>   
> @@ -466,6 +467,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
>   		case e1000_pch_tgp:
>   		case e1000_pch_adp:
>   		case e1000_pch_mtp:
> +		case e1000_pch_lnp:
>   			/* In case the PHY needs to be in mdio slow mode,
>   			 * set slow mode and try to get the PHY id again.
>   			 */
> @@ -711,6 +713,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   	case e1000_pchlan:
>   		/* check management mode */
>   		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
> @@ -1663,6 +1666,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		rc = e1000_init_phy_params_pchlan(hw);
>   		break;
>   	default:
> @@ -2118,6 +2122,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
>   		break;
>   	default:
> @@ -3162,6 +3167,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		bank1_offset = nvm->flash_bank_size;
>   		act_offset = E1000_ICH_NVM_SIG_WORD;
>   
> @@ -4101,6 +4107,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		word = NVM_COMPAT;
>   		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
>   		break;
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index f1c9debd9f3b..ecbe91cb95ed 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3550,6 +3550,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
>   			/* Stable 24MHz frequency */
>   			incperiod = INCPERIOD_24MHZ;
> @@ -4068,6 +4069,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		fc->refresh_time = 0xFFFF;
>   		fc->pause_time = 0xFFFF;
>   
> @@ -7855,6 +7857,10 @@ static const struct pci_device_id e1000_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_cnp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_cnp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_cnp },
>   
>   	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
>   };
> diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
> index f3f671311855..41213baee050 100644
> --- a/drivers/net/ethernet/intel/e1000e/ptp.c
> +++ b/drivers/net/ethernet/intel/e1000e/ptp.c
> @@ -298,6 +298,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
>   	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
>   		if ((hw->mac.type < e1000_pch_lpt) ||
>   		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
>   			adapter->ptp_clock_info.max_adj = 24000000 - 1;
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
