Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 123428B0D43
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 16:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9858582124;
	Wed, 24 Apr 2024 14:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Epi7qt1l5R5T; Wed, 24 Apr 2024 14:53:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D63B82121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713970414;
	bh=3kq9j4lVqiFnsWUpzMPWkpETwW2WImozG8n7O8MCA9M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=udbioZmXdGv7CArU2EqXioJ7FsYHFoAOA9cqnxnrcvRzVCpbtyg4aSwAdvcwvLebO
	 x61XxqorpvWhuJy8PmtOArTbSsQFhG+UdSnvHxS+NNmGcMdTURyEDHxXEL2GrjeiBx
	 b2soDhOrain+KmqspDHMGe+pQbsrnJ2rhD/n3Ob7v47vs3YOdTYFDzIl5WNQfiLjLJ
	 pz6C8s8DpcATfGouUMMYwQkPoU5UaTmP6U+9Q0P5TYrrwVs9wVEMIreQJfL5o6GUQu
	 AtsPyka1NSZQ5SCpvd+PNdUWgThc86L7ztLV+fjzNCNz2MvxbG9foNzfCHHM5AsiIk
	 /m2WSRalY4Xew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D63B82121;
	Wed, 24 Apr 2024 14:53:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6CB1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DD8560BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYYLXwYQMj2S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:53:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B874607B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B874607B5
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B874607B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:53:25 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5af5d1.dynamic.kabel-deutschland.de
 [95.90.245.209])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F085F61E5FE05;
 Wed, 24 Apr 2024 16:52:56 +0200 (CEST)
Message-ID: <1ad7d60c-ea33-43e4-9cc3-033786fce13b@molgen.mpg.de>
Date: Wed, 24 Apr 2024 16:52:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
References: <20240424142251.3887-1-piotr.kwapulinski@intel.com>
 <20240424142251.3887-6-piotr.kwapulinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240424142251.3887-6-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 5/5] ixgbe: Enable link
 management in E610 device
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Carolyn Wyborny <carolyn.wyborny@intel.com>, Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Piotr,


Thank you for the patch.

Am 24.04.24 um 16:22 schrieb Piotr Kwapulinski:
> Add high level link management support for E610 device. Enable the
> following features:
> - driver load
> - bring up network interface
> - IP address assignment
> - pass traffic
> - show statistics (e.g. via ethtool)
> - disable network interface
> - driver unload

Please elaborate how the existing driver needs to be adapted. You also 
add some mutex just for this device.

Please document the datasheet name and revision in the commit message. 
Also, please document the test setup and maybe paste the new log messages.

Is firmware needed? What versions did you test with?

> Co-developed-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Signed-off-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  15 +-
>   .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |   3 +-
>   .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  19 +-
>   .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |   3 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 154 +++++++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   7 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |   3 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 435 +++++++++++++++++-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |   4 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |   5 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  42 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |   7 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |  29 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |  20 +
>   15 files changed, 688 insertions(+), 59 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 559b443..ea6df1e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -1,5 +1,5 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #ifndef _IXGBE_H_
>   #define _IXGBE_H_
> @@ -20,6 +20,7 @@
>   #include "ixgbe_type.h"
>   #include "ixgbe_common.h"
>   #include "ixgbe_dcb.h"
> +#include "ixgbe_e610.h"
>   #if IS_ENABLED(CONFIG_FCOE)
>   #define IXGBE_FCOE
>   #include "ixgbe_fcoe.h"
> @@ -28,7 +29,6 @@
>   #include <linux/dca.h>
>   #endif
>   #include "ixgbe_ipsec.h"
> -
>   #include <net/xdp.h>
>   
>   /* common prefix used by pr_<> macros */
> @@ -173,6 +173,7 @@ enum ixgbe_tx_flags {
>   #define VMDQ_P(p)   ((p) + adapter->ring_feature[RING_F_VMDQ].offset)
>   #define IXGBE_82599_VF_DEVICE_ID        0x10ED
>   #define IXGBE_X540_VF_DEVICE_ID         0x1515
> +#define IXGBE_E610_VF_DEVICE_ID		0x57AD
>   
>   #define UPDATE_VF_COUNTER_32bit(reg, last_counter, counter)	\
>   	{							\
> @@ -654,6 +655,7 @@ struct ixgbe_adapter {
>   #define IXGBE_FLAG2_RSS_FIELD_IPV6_UDP		BIT(9)
>   #define IXGBE_FLAG2_PTP_PPS_ENABLED		BIT(10)
>   #define IXGBE_FLAG2_PHY_INTERRUPT		BIT(11)
> +#define IXGBE_FLAG2_FW_ASYNC_EVENT		BIT(12)
>   #define IXGBE_FLAG2_VLAN_PROMISC		BIT(13)
>   #define IXGBE_FLAG2_EEE_CAPABLE			BIT(14)
>   #define IXGBE_FLAG2_EEE_ENABLED			BIT(15)
> @@ -661,7 +663,9 @@ struct ixgbe_adapter {
>   #define IXGBE_FLAG2_IPSEC_ENABLED		BIT(17)
>   #define IXGBE_FLAG2_VF_IPSEC_ENABLED		BIT(18)
>   #define IXGBE_FLAG2_AUTO_DISABLE_VF		BIT(19)
> -
> +#define IXGBE_FLAG2_PHY_FW_LOAD_FAILED		BIT(20)
> +#define IXGBE_FLAG2_NO_MEDIA			BIT(21)
> +#define IXGBE_FLAG2_MOD_POWER_UNSUPPORTED	BIT(22)
>   	/* Tx fast path data */
>   	int num_tx_queues;
>   	u16 tx_itr_setting;
> @@ -793,6 +797,7 @@ struct ixgbe_adapter {
>   	u32 vferr_refcount;
>   	struct ixgbe_mac_addr *mac_table;
>   	struct kobject *info_kobj;
> +	u16 lse_mask;
>   #ifdef CONFIG_IXGBE_HWMON
>   	struct hwmon_buff *ixgbe_hwmon_buff;
>   #endif /* CONFIG_IXGBE_HWMON */
> @@ -849,6 +854,7 @@ static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:

Should the cases be sorted?

>   		return IXGBE_MAX_RSS_INDICES_X550;
>   	default:
>   		return 0;
> @@ -874,6 +880,7 @@ enum ixgbe_state_t {
>   	__IXGBE_PTP_RUNNING,
>   	__IXGBE_PTP_TX_IN_PROGRESS,
>   	__IXGBE_RESET_REQUESTED,
> +	__IXGBE_PHY_INIT_COMPLETE,
>   };
>   
>   struct ixgbe_cb {
> @@ -896,6 +903,7 @@ enum ixgbe_boards {
>   	board_x550em_x_fw,
>   	board_x550em_a,
>   	board_x550em_a_fw,
> +	board_e610,
>   };
>   
>   extern const struct ixgbe_info ixgbe_82598_info;
> @@ -906,6 +914,7 @@ extern const struct ixgbe_info ixgbe_X550EM_x_info;
>   extern const struct ixgbe_info ixgbe_x550em_x_fw_info;
>   extern const struct ixgbe_info ixgbe_x550em_a_info;
>   extern const struct ixgbe_info ixgbe_x550em_a_fw_info;
> +extern const struct ixgbe_info ixgbe_e610_info;
>   #ifdef CONFIG_IXGBE_DCB
>   extern const struct dcbnl_rtnl_ops ixgbe_dcbnl_ops;
>   #endif
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
> index cdaf087..964988b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include <linux/pci.h>
>   #include <linux/delay.h>
> @@ -1615,6 +1615,7 @@ int ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:

No idea, why this inconsistency in spelling.

> +	case ixgbe_mac_e610:

The spelling should be unified.

>   		IXGBE_WRITE_REG(hw, IXGBE_FDIRSCTPM, ~fdirtcpm);
>   		break;
>   	default:
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> index 3be1bfb..dd4a827 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include <linux/pci.h>
>   #include <linux/delay.h>
> @@ -58,6 +58,7 @@ bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw)
>   		switch (hw->device_id) {
>   		case IXGBE_DEV_ID_X550EM_A_SFP:
>   		case IXGBE_DEV_ID_X550EM_A_SFP_N:
> +		case IXGBE_DEV_ID_E610_SFP:
>   			supported = false;
>   			break;
>   		default:
> @@ -88,6 +89,8 @@ bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw)
>   		case IXGBE_DEV_ID_X550EM_A_10G_T:
>   		case IXGBE_DEV_ID_X550EM_A_1G_T:
>   		case IXGBE_DEV_ID_X550EM_A_1G_T_L:
> +		case IXGBE_DEV_ID_E610_10G_T:
> +		case IXGBE_DEV_ID_E610_2_5G_T:
>   			supported = true;
>   			break;
>   		default:
> @@ -469,9 +472,14 @@ int ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw)
>   		}
>   	}
>   
> -	if (hw->mac.type == ixgbe_mac_X550 || hw->mac.type == ixgbe_mac_X540) {
> +	if (hw->mac.type == ixgbe_mac_X550 ||
> +	    hw->mac.type == ixgbe_mac_X540 ||
> +	    hw->mac.type == ixgbe_mac_e610) {

The capitilization should be consistent.

>   		if (hw->phy.id == 0)
>   			hw->phy.ops.identify(hw);
> +	}

I’d split the style changes out into separate changes, and order them 
before.

> +
> +	if (hw->mac.type == ixgbe_mac_X550 || hw->mac.type == ixgbe_mac_X540) {
>   		hw->phy.ops.read_reg(hw, IXGBE_PCRC8ECL, MDIO_MMD_PCS, &i);
>   		hw->phy.ops.read_reg(hw, IXGBE_PCRC8ECH, MDIO_MMD_PCS, &i);
>   		hw->phy.ops.read_reg(hw, IXGBE_LDPCECL, MDIO_MMD_PCS, &i);
> @@ -2918,6 +2926,10 @@ u16 ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw)
>   		pcie_offset = IXGBE_PCIE_MSIX_82599_CAPS;
>   		max_msix_count = IXGBE_MAX_MSIX_VECTORS_82599;
>   		break;
> +	case ixgbe_mac_e610:
> +		pcie_offset = IXGBE_PCIE_MSIX_E610_CAPS;
> +		max_msix_count = IXGBE_MAX_MSIX_VECTORS_82599;
> +		break;
>   	default:
>   		return 1;
>   	}
> @@ -3366,7 +3378,8 @@ int ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
>   		*speed = IXGBE_LINK_SPEED_1GB_FULL;
>   		break;
>   	case IXGBE_LINKS_SPEED_100_82599:
> -		if ((hw->mac.type >= ixgbe_mac_X550) &&
> +		if ((hw->mac.type >= ixgbe_mac_X550 ||
> +		     hw->mac.type == ixgbe_mac_e610) &&
>   		    (links_reg & IXGBE_LINKS_SPEED_NON_STD))
>   			*speed = IXGBE_LINK_SPEED_5GB_FULL;
>   		else
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
> index e85f7d2..cf4e4a8 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include "ixgbe.h"
>   #include <linux/dcbnl.h>
> @@ -154,6 +154,7 @@ static void ixgbe_dcbnl_get_perm_hw_addr(struct net_device *netdev,
>   	case ixgbe_mac_82599EB:
>   	case ixgbe_mac_X540:
>   	case ixgbe_mac_X550:
> +	case ixgbe_mac_e610:
>   		for (j = 0; j < netdev->addr_len; j++, i++)
>   			perm_addr[i] = adapter->hw.mac.san_addr[j];
>   		break;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 330c7e7..758b62e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3,6 +3,7 @@
>   
>   #include "ixgbe_common.h"
>   #include "ixgbe_e610.h"
> +#include "ixgbe_x550.h"
>   #include "ixgbe_type.h"
>   #include "ixgbe_x540.h"
>   #include "ixgbe_phy.h"
> @@ -2377,3 +2378,156 @@ int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val)
>   
>   	return err;
>   }
> +
> +/**
> + * ixgbe_reset_hw_e610 - Perform hardware reset
> + * @hw: pointer to hardware structure
> + *
> + * Resets the hardware by resetting the transmit and receive units, masks
> + * and clears all interrupts, and perform a reset.

perform*s*

> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_reset_hw_e610(struct ixgbe_hw *hw)
> +{
> +	u32 swfw_mask = hw->phy.phy_semaphore_mask;
> +	u32 ctrl, i;

Count variables could be `unsigned int`.

https://notabs.org/coding/smallIntsBigPenalty.htm

> +	int err;
> +
> +	/* Call adapter stop to disable tx/rx and clear interrupts */
> +	err = hw->mac.ops.stop_adapter(hw);
> +	if (err)
> +		goto reset_hw_out;
> +
> +	/* Flush pending Tx transactions. */
> +	ixgbe_clear_tx_pending(hw);
> +
> +	hw->phy.ops.init(hw);
> +mac_reset_top:
> +	err = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
> +	if (err)
> +		return -EBUSY;
> +	ctrl = IXGBE_CTRL_RST;
> +	ctrl |= IXGBE_READ_REG(hw, IXGBE_CTRL);
> +	IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);
> +	IXGBE_WRITE_FLUSH(hw);
> +	hw->mac.ops.release_swfw_sync(hw, swfw_mask);
> +
> +	/* Poll for reset bit to self-clear indicating reset is complete */
> +	for (i = 0; i < 10; i++) {
> +		udelay(1);
> +		ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
> +		if (!(ctrl & IXGBE_CTRL_RST_MASK))
> +			break;
> +	}
> +
> +	if (ctrl & IXGBE_CTRL_RST_MASK)
> +		err = -EIO;

Print a debug message?

> +	msleep(100);

Why such a long sleep?

> +
> +	/* Double resets are required for recovery from certain error
> +	 * conditions.  Between resets, it is necessary to stall to allow time
> +	 * for any pending HW events to complete.
> +	 */
> +	if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
> +		hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
> +		goto mac_reset_top;
> +	}
> +
> +	/* Set the Rx packet buffer size. */
> +	IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(0), GENMASK(18, 17));
> +
> +	/* Store the permanent mac address */
> +	hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);
> +
> +	/* Store MAC address from RAR0, clear receive address registers, and
> +	 * clear the multicast table.  Also reset num_rar_entries to 128,
> +	 * since we modify this value when programming the SAN MAC address.

Why 128?

> +	 */
> +	hw->mac.num_rar_entries = 128;
> +	hw->mac.ops.init_rx_addrs(hw);
> +
> +	/* Initialize bus function number */
> +	hw->mac.ops.set_lan_id(hw);
> +
> +reset_hw_out:
> +	return err;
> +}
> +
> +static const struct ixgbe_mac_operations mac_ops_e610 = {
> +	.init_hw			= ixgbe_init_hw_generic,
> +	.start_hw			= ixgbe_start_hw_X540,
> +	.clear_hw_cntrs			= ixgbe_clear_hw_cntrs_generic,
> +	.enable_rx_dma			= ixgbe_enable_rx_dma_generic,
> +	.get_mac_addr			= ixgbe_get_mac_addr_generic,
> +	.get_device_caps		= ixgbe_get_device_caps_generic,
> +	.stop_adapter			= ixgbe_stop_adapter_generic,
> +	.set_lan_id			= ixgbe_set_lan_id_multi_port_pcie,
> +	.set_rxpba			= ixgbe_set_rxpba_generic,
> +	.check_link			= ixgbe_check_link_e610,
> +	.blink_led_start		= ixgbe_blink_led_start_X540,
> +	.blink_led_stop			= ixgbe_blink_led_stop_X540,
> +	.set_rar			= ixgbe_set_rar_generic,
> +	.clear_rar			= ixgbe_clear_rar_generic,
> +	.set_vmdq			= ixgbe_set_vmdq_generic,
> +	.set_vmdq_san_mac		= ixgbe_set_vmdq_san_mac_generic,
> +	.clear_vmdq			= ixgbe_clear_vmdq_generic,
> +	.init_rx_addrs			= ixgbe_init_rx_addrs_generic,
> +	.update_mc_addr_list		= ixgbe_update_mc_addr_list_generic,
> +	.enable_mc			= ixgbe_enable_mc_generic,
> +	.disable_mc			= ixgbe_disable_mc_generic,
> +	.clear_vfta			= ixgbe_clear_vfta_generic,
> +	.set_vfta			= ixgbe_set_vfta_generic,
> +	.fc_enable			= ixgbe_fc_enable_generic,
> +	.set_fw_drv_ver			= ixgbe_set_fw_drv_ver_x550,
> +	.init_uta_tables		= ixgbe_init_uta_tables_generic,
> +	.set_mac_anti_spoofing		= ixgbe_set_mac_anti_spoofing,
> +	.set_vlan_anti_spoofing		= ixgbe_set_vlan_anti_spoofing,
> +	.set_source_address_pruning	=
> +				ixgbe_set_source_address_pruning_x550,
> +	.set_ethertype_anti_spoofing	=
> +				ixgbe_set_ethertype_anti_spoofing_x550,
> +	.disable_rx_buff		= ixgbe_disable_rx_buff_generic,
> +	.enable_rx_buff			= ixgbe_enable_rx_buff_generic,
> +	.enable_rx			= ixgbe_enable_rx_generic,
> +	.disable_rx			= ixgbe_disable_rx_e610,
> +	.led_on				= ixgbe_led_on_generic,
> +	.led_off			= ixgbe_led_off_generic,
> +	.init_led_link_act		= ixgbe_init_led_link_act_generic,
> +	.reset_hw			= ixgbe_reset_hw_e610,
> +	.get_media_type			= ixgbe_get_media_type_e610,
> +	.setup_link			= ixgbe_setup_link_e610,
> +	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
> +	.get_bus_info			= ixgbe_get_bus_info_generic,
> +	.acquire_swfw_sync		= ixgbe_acquire_swfw_sync_X540,
> +	.release_swfw_sync		= ixgbe_release_swfw_sync_X540,
> +	.init_swfw_sync			= ixgbe_init_swfw_sync_X540,
> +	.prot_autoc_read		= prot_autoc_read_generic,
> +	.prot_autoc_write		= prot_autoc_write_generic,
> +	.setup_fc			= ixgbe_setup_fc_e610,
> +	.fc_autoneg			= ixgbe_fc_autoneg_e610,
> +};
> +
> +static const struct ixgbe_phy_operations phy_ops_e610 = {
> +	.init				= ixgbe_init_phy_ops_e610,
> +	.identify			= ixgbe_identify_phy_e610,
> +	.identify_sfp			= ixgbe_identify_module_e610,
> +	.setup_link_speed		= ixgbe_setup_phy_link_speed_generic,
> +	.setup_link			= ixgbe_setup_phy_link_e610,
> +	.enter_lplu			= ixgbe_enter_lplu_e610,
> +};
> +
> +static const struct ixgbe_eeprom_operations eeprom_ops_e610 = {
> +	.read				= ixgbe_read_ee_aci_e610,
> +	.validate_checksum		= ixgbe_validate_eeprom_checksum_e610,
> +};
> +
> +const struct ixgbe_info ixgbe_e610_info = {
> +	.mac			= ixgbe_mac_e610,
> +	.get_invariants		= ixgbe_get_invariants_X540,
> +	.mac_ops		= &mac_ops_e610,
> +	.eeprom_ops		= &eeprom_ops_e610,
> +	.phy_ops		= &phy_ops_e610,
> +	.mbx_ops		= &mbx_ops_generic,
> +	.mvals			= ixgbe_mvals_x550em_a,
> +};
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> index df54a80..69cd151 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> @@ -70,5 +70,6 @@ int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
>   			u8 *data, bool read_shadow_ram);
>   int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data);
>   int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val);
> +int ixgbe_reset_hw_e610(struct ixgbe_hw *hw);
>   
>   #endif /* _IXGBE_E610_H_ */
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 6e6e6f1..df8482c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   /* ethtool support for ixgbe */
>   
> @@ -17,7 +17,6 @@
>   #include "ixgbe.h"
>   #include "ixgbe_phy.h"
>   
> -

Unrelated.

>   enum {NETDEV_STATS, IXGBE_STATS};
>   
>   struct ixgbe_stats {
> @@ -690,6 +689,7 @@ static void ixgbe_get_regs(struct net_device *netdev,
>   		case ixgbe_mac_X550:
>   		case ixgbe_mac_X550EM_x:
>   		case ixgbe_mac_x550em_a:
> +		case ixgbe_mac_e610:
>   			regs_buff[35 + i] = IXGBE_READ_REG(hw, IXGBE_FCRTL_82599(i));
>   			regs_buff[43 + i] = IXGBE_READ_REG(hw, IXGBE_FCRTH_82599(i));
>   			break;
> @@ -1613,6 +1613,7 @@ static int ixgbe_reg_test(struct ixgbe_adapter *adapter, u64 *data)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		toggle = 0x7FFFF30F;
>   		test = reg_test_82599;
>   		break;
> @@ -1874,6 +1875,7 @@ static int ixgbe_setup_desc_rings(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		reg_data = IXGBE_READ_REG(&adapter->hw, IXGBE_DMATXCTL);
>   		reg_data |= IXGBE_DMATXCTL_TE;
>   		IXGBE_WRITE_REG(&adapter->hw, IXGBE_DMATXCTL, reg_data);
> @@ -1935,6 +1937,7 @@ static int ixgbe_setup_loopback_test(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		reg_data = IXGBE_READ_REG(hw, IXGBE_MACC);
>   		reg_data |= IXGBE_MACC_FLU;
>   		IXGBE_WRITE_REG(hw, IXGBE_MACC, reg_data);
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> index 0ee943d..bd7ec73 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include "ixgbe.h"
>   #include "ixgbe_sriov.h"
> @@ -107,6 +107,7 @@ static void ixgbe_get_first_reg_idx(struct ixgbe_adapter *adapter, u8 tc,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		if (num_tcs > 4) {
>   			/*
>   			 * TCs    : TC0/1 TC2/3 TC4-7
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 43e7e75..1c619f0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include <linux/types.h>
>   #include <linux/module.h>
> @@ -72,6 +72,7 @@ static const struct ixgbe_info *ixgbe_info_tbl[] = {
>   	[board_x550em_x_fw]	= &ixgbe_x550em_x_fw_info,
>   	[board_x550em_a]	= &ixgbe_x550em_a_info,
>   	[board_x550em_a_fw]	= &ixgbe_x550em_a_fw_info,
> +	[board_e610]		= &ixgbe_e610_info,
>   };
>   
>   /* ixgbe_pci_tbl - PCI Device ID Table
> @@ -130,6 +131,11 @@ static const struct pci_device_id ixgbe_pci_tbl[] = {
>   	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_X550EM_A_SFP), board_x550em_a },
>   	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_X550EM_A_1G_T), board_x550em_a_fw },
>   	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_X550EM_A_1G_T_L), board_x550em_a_fw },
> +	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_E610_BACKPLANE), board_e610},
> +	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_E610_SFP), board_e610},
> +	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_E610_10G_T), board_e610},
> +	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_E610_2_5G_T), board_e610},
> +	{PCI_VDEVICE(INTEL, IXGBE_DEV_ID_E610_SGMII), board_e610},
>   	/* required last entry */
>   	{0, }
>   };
> @@ -173,6 +179,8 @@ static struct workqueue_struct *ixgbe_wq;
>   
>   static bool ixgbe_check_cfg_remove(struct ixgbe_hw *hw, struct pci_dev *pdev);
>   static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *);
> +static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *);
> +static void ixgbe_watchdog_update_link(struct ixgbe_adapter *);
>   
>   static const struct net_device_ops ixgbe_netdev_ops;
>   
> @@ -236,8 +244,11 @@ static int ixgbe_get_parent_bus_info(struct ixgbe_adapter *adapter)
>    * bandwidth details should be gathered from the parent bus instead of from the
>    * device. Used to ensure that various locations all have the correct device ID
>    * checks.
> + *
> + * Return: true if information should be collected from the parent bus, false
> + *         otherwise

Make it a separate patch.

>    */
> -static inline bool ixgbe_pcie_from_parent(struct ixgbe_hw *hw)
> +static bool ixgbe_pcie_from_parent(struct ixgbe_hw *hw)
>   {
>   	switch (hw->device_id) {
>   	case IXGBE_DEV_ID_82599_SFP_SF_QP:
> @@ -876,6 +887,7 @@ static void ixgbe_set_ivar(struct ixgbe_adapter *adapter, s8 direction,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		if (direction == -1) {
>   			/* other causes */
>   			msix_vector |= IXGBE_IVAR_ALLOC_VAL;
> @@ -915,6 +927,7 @@ void ixgbe_irq_rearm_queues(struct ixgbe_adapter *adapter,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		mask = (qmask & 0xFFFFFFFF);
>   		IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS_EX(0), mask);
>   		mask = (qmask >> 32);
> @@ -1025,7 +1038,7 @@ static u64 ixgbe_get_tx_pending(struct ixgbe_ring *ring)
>   	return ((head <= tail) ? tail : tail + ring->count) - head;
>   }
>   
> -static inline bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
> +static bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
>   {
>   	u32 tx_done = ixgbe_get_tx_completed(tx_ring);
>   	u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
> @@ -2515,6 +2528,7 @@ static void ixgbe_configure_msix(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		ixgbe_set_ivar(adapter, -1, 1, v_idx);
>   		break;
>   	default:
> @@ -2526,8 +2540,12 @@ static void ixgbe_configure_msix(struct ixgbe_adapter *adapter)
>   	mask = IXGBE_EIMS_ENABLE_MASK;
>   	mask &= ~(IXGBE_EIMS_OTHER |
>   		  IXGBE_EIMS_MAILBOX |
> +		  IXGBE_EIMS_FW_EVENT |
>   		  IXGBE_EIMS_LSC);
>   
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
> +		mask &= ~IXGBE_EIMS_FW_EVENT;
> +
>   	IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIAC, mask);
>   }
>   
> @@ -2744,6 +2762,7 @@ void ixgbe_write_eitr(struct ixgbe_q_vector *q_vector)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		/*
>   		 * set the WDIS bit to not clear the timer bits and cause an
>   		 * immediate assertion of the interrupt
> @@ -2966,6 +2985,222 @@ static void ixgbe_check_lsc(struct ixgbe_adapter *adapter)
>   	}
>   }
>   
> +/**
> + * ixgbe_check_phy_fw_load - check if PHY FW load failed
> + * @adapter: pointer to adapter structure
> + * @link_cfg_err: bitmap from the link info structure
> + *
> + * Check if external PHY FW load failed and print an error message if it did.
> + */
> +static void ixgbe_check_phy_fw_load(struct ixgbe_adapter *adapter,
> +				    u8 link_cfg_err)
> +{
> +	if (!(link_cfg_err & IXGBE_ACI_LINK_EXTERNAL_PHY_LOAD_FAILURE)) {
> +		adapter->flags2 &= ~IXGBE_FLAG2_PHY_FW_LOAD_FAILED;
> +		return;
> +	}
> +
> +	if (adapter->flags2 & IXGBE_FLAG2_PHY_FW_LOAD_FAILED)
> +		return;
> +
> +	if (link_cfg_err & IXGBE_ACI_LINK_EXTERNAL_PHY_LOAD_FAILURE) {
> +		netdev_err(adapter->netdev, "Device failed to load the FW for the external PHY. Please download and install the latest NVM for your device and try again\n");

Can the current version be added to the error message?

> +		adapter->flags2 |= IXGBE_FLAG2_PHY_FW_LOAD_FAILED;
> +	}
> +}
> +
> +/**
> + * ixgbe_check_module_power - check module power level
> + * @adapter: pointer to adapter structure
> + * @link_cfg_err: bitmap from the link info structure
> + *
> + * Check module power level returned by a previous call to aci_get_link_info
> + * and print error messages if module power level is not supported.
> + */
> +static void ixgbe_check_module_power(struct ixgbe_adapter *adapter,
> +				     u8 link_cfg_err)
> +{
> +	/* If module power level is supported, clear the flag. */
> +	if (!(link_cfg_err & (IXGBE_ACI_LINK_INVAL_MAX_POWER_LIMIT |
> +			      IXGBE_ACI_LINK_MODULE_POWER_UNSUPPORTED))) {
> +		adapter->flags2 &= ~IXGBE_FLAG2_MOD_POWER_UNSUPPORTED;
> +		return;
> +	}
> +
> +	/* If IXGBE_FLAG2_MOD_POWER_UNSUPPORTED was previously set and the
> +	 * above block didn't clear this bit, there's nothing to do.
> +	 */
> +	if (adapter->flags2 & IXGBE_FLAG2_MOD_POWER_UNSUPPORTED)
> +		return;
> +
> +	if (link_cfg_err & IXGBE_ACI_LINK_INVAL_MAX_POWER_LIMIT) {
> +		netdev_err(adapter->netdev, "The installed module is incompatible with the device's NVM image. Cannot start link\n");

Add a dot/period at the end?

> +		adapter->flags2 |= IXGBE_FLAG2_MOD_POWER_UNSUPPORTED;
> +	} else if (link_cfg_err & IXGBE_ACI_LINK_MODULE_POWER_UNSUPPORTED) {
> +		netdev_err(adapter->netdev, "The module's power requirements exceed the device's power supply. Cannot start link\n");

Ditto.

> +		adapter->flags2 |= IXGBE_FLAG2_MOD_POWER_UNSUPPORTED;
> +	}
> +}
> +
> +/**
> + * ixgbe_check_link_cfg_err - check if link configuration failed
> + * @adapter: pointer to adapter structure
> + * @link_cfg_err: bitmap from the link info structure
> + *
> + * Print if any link configuration failure happens due to the value in the
> + * link_cfg_err parameter in the link info structure.
> + */
> +static void ixgbe_check_link_cfg_err(struct ixgbe_adapter *adapter,
> +				     u8 link_cfg_err)
> +{
> +	ixgbe_check_module_power(adapter, link_cfg_err);
> +	ixgbe_check_phy_fw_load(adapter, link_cfg_err);
> +}
> +
> +/**
> + * ixgbe_process_link_status_event - process the link event
> + * @adapter: pointer to adapter structure
> + * @link_up: true if the physical link is up and false if it is down
> + * @link_speed: current link speed received from the link event
> + *
> + * Return: 0 on success and negative on failure.

negative value?

> + */
> +static int
> +ixgbe_process_link_status_event(struct ixgbe_adapter *adapter, bool link_up,
> +				u16 link_speed)
> +{
> +	struct ixgbe_hw *hw = &adapter->hw;
> +	int status;
> +
> +	/* Update the link info structures and re-enable link events,
> +	 * don't bail on failure due to other book keeping needed.
> +	 */
> +	status = ixgbe_update_link_info(hw);
> +	if (status)
> +		e_dev_err("Failed to update link status, err %d aq_err %d\n",
> +			  status, hw->aci.last_status);
> +
> +	ixgbe_check_link_cfg_err(adapter, hw->link.link_info.link_cfg_err);
> +
> +	/* Check if the link state is up after updating link info, and treat
> +	 * this event as an UP event since the link is actually UP now.
> +	 */
> +	if (hw->link.link_info.link_info & IXGBE_ACI_LINK_UP)
> +		link_up = true;
> +
> +	/* Turn off PHY if media was removed. */
> +	if (!(adapter->flags2 & IXGBE_FLAG2_NO_MEDIA) &&
> +	    !(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
> +		(adapter->flags2 |= IXGBE_FLAG2_NO_MEDIA);
> +		if (ixgbe_aci_set_link_restart_an(hw, false))
> +			e_dev_err("can't set link to OFF\n");

Add the error to the error log? Should some different code path be taken 
in case of the error?

> +	}
> +
> +	if (link_up == adapter->link_up &&
> +	    link_up == netif_carrier_ok(adapter->netdev))
> +		return 0;
> +
> +	if (link_up)
> +		ixgbe_watchdog_link_is_up(adapter);
> +	else
> +		ixgbe_watchdog_link_is_down(adapter);
> +
> +	if (link_speed != adapter->link_speed) {
> +		adapter->flags |= IXGBE_FLAG_NEED_LINK_UPDATE;
> +		ixgbe_watchdog_update_link(adapter);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ixgbe_handle_link_status_event - handle link status event via ACI
> + * @adapter: pointer to adapter structure
> + * @e: event structure containing link status info
> + */
> +static void
> +ixgbe_handle_link_status_event(struct ixgbe_adapter *adapter,
> +			       struct ixgbe_aci_event *e)
> +{
> +	struct ixgbe_aci_cmd_get_link_status_data *link_data;
> +	u16 link_speed;
> +	bool link_up;
> +
> +	link_data = (struct ixgbe_aci_cmd_get_link_status_data *)e->msg_buf;
> +
> +	link_up = !!(link_data->link_info & IXGBE_ACI_LINK_UP);
> +	link_speed = link_data->link_speed;
> +
> +	if (ixgbe_process_link_status_event(adapter, link_up, link_speed))
> +		e_dev_warn("Could not process link status event");

Add the event to the log message?

> +}
> +
> +/**
> + * ixgbe_schedule_fw_event - schedule Firmware event
> + * @adapter: pointer to the adapter structure
> + *
> + * If the adapter is not in down, removing or resetting state,
> + * an event is scheduled.
> + */
> +static void ixgbe_schedule_fw_event(struct ixgbe_adapter *adapter)
> +{
> +	if (!test_bit(__IXGBE_DOWN, &adapter->state) &&
> +	    !test_bit(__IXGBE_REMOVING, &adapter->state) &&
> +	    !test_bit(__IXGBE_RESETTING, &adapter->state)) {
> +		adapter->flags2 |= IXGBE_FLAG2_FW_ASYNC_EVENT;
> +		ixgbe_service_event_schedule(adapter);
> +	}
> +}
> +
> +/**
> + * ixgbe_aci_event_cleanup - release msg_buf memory
> + * @event: pointer to the event holding msg_buf to be released
> + *
> + * Clean memory allocated for event's msg_buf. Implements auto memory cleanup.
> + */
> +static void ixgbe_aci_event_cleanup(struct ixgbe_aci_event *event)
> +{
> +	kfree(event->msg_buf);
> +}
> +
> +/**
> + * ixgbe_handle_fw_event - handle Firmware event
> + * @adapter: pointer to the adapter structure
> + *
> + * Obtain an event from ACI and then
> + * depending on the type of event through the opcode
> + * correspondingly process it.

Please reflow.

Reword? Maybe: … and then process it according to the type of the event 
and the opcode.

> + */
> +static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
> +{
> +	struct ixgbe_aci_event event __cleanup(ixgbe_aci_event_cleanup);
> +	struct ixgbe_hw *hw = &adapter->hw;
> +	bool pending = false;
> +	int err;
> +
> +	if (adapter->flags2 & IXGBE_FLAG2_FW_ASYNC_EVENT)
> +		adapter->flags2 &= ~IXGBE_FLAG2_FW_ASYNC_EVENT;
> +	event.buf_len = IXGBE_ACI_MAX_BUFFER_SIZE;
> +	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
> +	if (!event.msg_buf)
> +		return;
> +
> +	do {
> +		err = ixgbe_aci_get_event(hw, &event, &pending);
> +		if (err)
> +			break;

Why shouldn’t the error be returned?

> +
> +		switch (event.desc.opcode) {
> +		case ixgbe_aci_opc_get_link_status:
> +			ixgbe_handle_link_status_event(adapter, &event);
> +			break;
> +		default:
> +			e_warn(hw, "unknown FW async event captured\n");
> +			break;
> +		}
> +	} while (pending);
> +}
> +
>   static inline void ixgbe_irq_enable_queues(struct ixgbe_adapter *adapter,
>   					   u64 qmask)
>   {
> @@ -2982,6 +3217,7 @@ static inline void ixgbe_irq_enable_queues(struct ixgbe_adapter *adapter,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		mask = (qmask & 0xFFFFFFFF);
>   		if (mask)
>   			IXGBE_WRITE_REG(hw, IXGBE_EIMS_EX(0), mask);
> @@ -3035,6 +3271,9 @@ static inline void ixgbe_irq_enable(struct ixgbe_adapter *adapter, bool queues,
>   	case ixgbe_mac_X540:
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
> +	case ixgbe_mac_e610:
> +		mask |= IXGBE_EIMS_FW_EVENT;
> +		fallthrough;
>   	case ixgbe_mac_x550em_a:
>   		if (adapter->hw.device_id == IXGBE_DEV_ID_X550EM_X_SFP ||
>   		    adapter->hw.device_id == IXGBE_DEV_ID_X550EM_A_SFP ||
> @@ -3091,12 +3330,16 @@ static irqreturn_t ixgbe_msix_other(int irq, void *data)
>   	if (eicr & IXGBE_EICR_MAILBOX)
>   		ixgbe_msg_task(adapter);
>   
> +	if (eicr & IXGBE_EICR_FW_EVENT)
> +		ixgbe_schedule_fw_event(adapter);

Make it a separate patch?

> +
>   	switch (hw->mac.type) {
>   	case ixgbe_mac_82599EB:
>   	case ixgbe_mac_X540:
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		if (hw->phy.type == ixgbe_phy_x550em_ext_t &&
>   		    (eicr & IXGBE_EICR_GPI_SDP0_X540)) {
>   			adapter->flags2 |= IXGBE_FLAG2_PHY_INTERRUPT;
> @@ -3334,6 +3577,9 @@ static irqreturn_t ixgbe_intr(int irq, void *data)
>   	if (eicr & IXGBE_EICR_LSC)
>   		ixgbe_check_lsc(adapter);
>   
> +	if (eicr & IXGBE_EICR_FW_EVENT)
> +		ixgbe_schedule_fw_event(adapter);
> +
>   	switch (hw->mac.type) {
>   	case ixgbe_mac_82599EB:
>   		ixgbe_check_sfp_event(adapter, eicr);
> @@ -3342,6 +3588,7 @@ static irqreturn_t ixgbe_intr(int irq, void *data)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		if (eicr & IXGBE_EICR_ECC) {
>   			e_info(link, "Received ECC Err, initiating reset\n");
>   			set_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
> @@ -3442,6 +3689,7 @@ static inline void ixgbe_irq_disable(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, 0xFFFF0000);
>   		IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC_EX(0), ~0);
>   		IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC_EX(1), ~0);
> @@ -4279,6 +4527,9 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
>   	int i;
>   	u32 mhadd, hlreg0;
>   
> +	if (hw->mac.type == ixgbe_mac_e610)
> +		max_frame += IXGBE_TS_HDR_LEN;

Add a comment, why E610 is different?

> +
>   #ifdef IXGBE_FCOE
>   	/* adjust max frame to be able to do baby jumbo for FCoE */
>   	if ((adapter->flags & IXGBE_FLAG_FCOE_ENABLED) &&
> @@ -4359,6 +4610,7 @@ static void ixgbe_setup_rdrxctl(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		if (adapter->num_vfs)
>   			rdrxctl |= IXGBE_RDRXCTL_PSP;
>   		fallthrough;
> @@ -4526,6 +4778,7 @@ static void ixgbe_vlan_strip_disable(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		for (i = 0; i < adapter->num_rx_queues; i++) {
>   			struct ixgbe_ring *ring = adapter->rx_ring[i];
>   
> @@ -4564,6 +4817,7 @@ static void ixgbe_vlan_strip_enable(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		for (i = 0; i < adapter->num_rx_queues; i++) {
>   			struct ixgbe_ring *ring = adapter->rx_ring[i];
>   
> @@ -5149,6 +5403,7 @@ static int ixgbe_hpbthresh(struct ixgbe_adapter *adapter, int pb)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		dv_id = IXGBE_DV_X540(link, tc);
>   		break;
>   	default:
> @@ -5210,6 +5465,7 @@ static int ixgbe_lpbthresh(struct ixgbe_adapter *adapter, int pb)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		dv_id = IXGBE_LOW_DV_X540(tc);
>   		break;
>   	default:
> @@ -5511,6 +5767,48 @@ static void ixgbe_configure(struct ixgbe_adapter *adapter)
>   	ixgbe_configure_dfwd(adapter);
>   }
>   
> +/**
> + * ixgbe_enable_link_status_events - enable link status events
> + * @adapter: pointer to the adapter structure
> + * @mask: event mask to be set
> + *
> + * Enables link status events by invoking ixgbe_configure_lse()
> + *
> + * Return: the exit code of the operation.
> + */
> +static int ixgbe_enable_link_status_events(struct ixgbe_adapter *adapter,
> +					   u16 mask)
> +{
> +	int err;
> +
> +	err = ixgbe_configure_lse(&adapter->hw, true, mask);

It would be nice, if `ixgbe_enable_lse()` could be added.

> +	if (err)
> +		return err;
> +
> +	adapter->lse_mask = mask;
> +	return 0;
> +}
> +
> +/**
> + * ixgbe_disable_link_status_events - disable link status events
> + * @adapter: pointer to the adapter structure
> + *
> + * Disables link status events by invoking ixgbe_configure_lse()
> + *
> + * Return: the exit code of the operation.
> + */
> +static int ixgbe_disable_link_status_events(struct ixgbe_adapter *adapter)
> +{
> +	int err;
> +
> +	err = ixgbe_configure_lse(&adapter->hw, false, adapter->lse_mask);

Ditto.

> +	if (err)
> +		return err;
> +
> +	adapter->lse_mask = 0;
> +	return 0;
> +}
> +
>   /**
>    * ixgbe_sfp_link_config - set up SFP+ link
>    * @adapter: pointer to private adapter struct
> @@ -5534,13 +5832,21 @@ static void ixgbe_sfp_link_config(struct ixgbe_adapter *adapter)
>    * ixgbe_non_sfp_link_config - set up non-SFP+ link
>    * @hw: pointer to private hardware struct
>    *
> - * Returns 0 on success, negative on failure
> + * Configure non-SFP link.
> + *
> + * Return: 0 on success, negative on failure

Should be a separate patch.

>    **/
>   static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
>   {
> -	u32 speed;
> +	struct ixgbe_adapter *adapter = container_of(hw, struct ixgbe_adapter,
> +						     hw);
> +	u16 mask = ~((u16)(IXGBE_ACI_LINK_EVENT_UPDOWN |
> +			   IXGBE_ACI_LINK_EVENT_MEDIA_NA |
> +			   IXGBE_ACI_LINK_EVENT_MODULE_QUAL_FAIL |
> +			   IXGBE_ACI_LINK_EVENT_PHY_FW_LOAD_FAIL));
>   	bool autoneg, link_up = false;
>   	int ret = -EIO;
> +	u32 speed;
>   
>   	if (hw->mac.ops.check_link)
>   		ret = hw->mac.ops.check_link(hw, &speed, &link_up, false);
> @@ -5563,12 +5869,52 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
>   	if (ret)
>   		return ret;
>   
> -	if (hw->mac.ops.setup_link)
> +	if (hw->mac.ops.setup_link) {
> +		if (adapter->hw.mac.type == ixgbe_mac_e610) {
> +			ret = ixgbe_enable_link_status_events(adapter, mask);
> +			if (ret)
> +				return ret;
> +		}
>   		ret = hw->mac.ops.setup_link(hw, speed, link_up);
> +	}
>   
>   	return ret;
>   }
>   
> +/**
> + * ixgbe_check_media_subtask - Check for media
> + * @adapter: pointer to adapter structure
> + *
> + * If media is available, then initialize PHY user configuration if it is not

has not yet been?

> + * been, and configure the PHY if the interface is up.
> + */
> +static void ixgbe_check_media_subtask(struct ixgbe_adapter *adapter)
> +{
> +	struct ixgbe_hw *hw = &adapter->hw;
> +
> +	/* No need to check for media if it's already present */
> +	if (!(adapter->flags2 & IXGBE_FLAG2_NO_MEDIA))
> +		return;
> +
> +	/* Refresh link info and check if media is present */
> +	if (ixgbe_update_link_info(hw))
> +		return;
> +
> +	ixgbe_check_link_cfg_err(adapter, hw->link.link_info.link_cfg_err);
> +
> +	if (hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE) {
> +		/* PHY settings are reset on media insertion, reconfigure
> +		 * PHY to preserve settings.
> +		 */
> +		if (!(ixgbe_non_sfp_link_config(&adapter->hw)))
> +			adapter->flags2 &= ~IXGBE_FLAG2_NO_MEDIA;
> +
> +		/* A Link Status Event will be generated; the event handler
> +		 * will complete bringing the interface up
> +		 */
> +	}
> +}
> +
>   /**
>    * ixgbe_clear_vf_stats_counters - Clear out VF stats after reset
>    * @adapter: board private structure
> @@ -5632,6 +5978,7 @@ static void ixgbe_setup_gpie(struct ixgbe_adapter *adapter)
>   		case ixgbe_mac_X550:
>   		case ixgbe_mac_X550EM_x:
>   		case ixgbe_mac_x550em_a:
> +		case ixgbe_mac_e610:
>   		default:
>   			IXGBE_WRITE_REG(hw, IXGBE_EIAM_EX(0), 0xFFFFFFFF);
>   			IXGBE_WRITE_REG(hw, IXGBE_EIAM_EX(1), 0xFFFFFFFF);
> @@ -5982,6 +6329,7 @@ void ixgbe_disable_tx(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL,
>   				(IXGBE_READ_REG(hw, IXGBE_DMATXCTL) &
>   				 ~IXGBE_DMATXCTL_TE));
> @@ -6226,6 +6574,8 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
>   
>   	ixgbe_clean_all_tx_rings(adapter);
>   	ixgbe_clean_all_rx_rings(adapter);
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
> +		ixgbe_disable_link_status_events(adapter);
>   }
>   
>   /**
> @@ -6281,6 +6631,7 @@ static void ixgbe_init_dcb(struct ixgbe_adapter *adapter)
>   		break;
>   	case ixgbe_mac_X540:
>   	case ixgbe_mac_X550:
> +	case ixgbe_mac_e610:
>   		adapter->dcb_cfg.num_tcs.pg_tcs = X540_TRAFFIC_CLASS;
>   		adapter->dcb_cfg.num_tcs.pfc_tcs = X540_TRAFFIC_CLASS;
>   		break;
> @@ -6344,6 +6695,8 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
>   	hw->subsystem_vendor_id = pdev->subsystem_vendor;
>   	hw->subsystem_device_id = pdev->subsystem_device;
>   
> +	hw->mac.max_link_up_time = IXGBE_LINK_UP_TIME;
> +

Makes this a separate patch.

>   	/* get_invariants needs the device IDs */
>   	ii->get_invariants(hw);
>   
> @@ -6911,6 +7264,16 @@ int ixgbe_open(struct net_device *netdev)
>   	ixgbe_up_complete(adapter);
>   
>   	udp_tunnel_nic_reset_ntf(netdev);
> +	if (adapter->hw.mac.type == ixgbe_mac_e610) {
> +		if (ixgbe_update_link_info(&adapter->hw))
> +			e_dev_warn("ixgbe_update_link_info failed\n");

Extend the log message?

> +
> +		ixgbe_check_link_cfg_err(adapter,
> +					 adapter->hw.link.link_info.link_cfg_err);
> +
> +		if (ixgbe_non_sfp_link_config(&adapter->hw))
> +			e_dev_warn("link setup failed\n");

Should this be an error? Also extend the message?

> +	}
>   
>   	return 0;
>   
> @@ -7064,6 +7427,7 @@ static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		pci_wake_from_d3(pdev, !!wufc);
>   		break;
>   	default:
> @@ -7211,6 +7575,7 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
>   		case ixgbe_mac_X550:
>   		case ixgbe_mac_X550EM_x:
>   		case ixgbe_mac_x550em_a:
> +		case ixgbe_mac_e610:
>   			hwstats->pxonrxc[i] +=
>   				IXGBE_READ_REG(hw, IXGBE_PXONRXCNT(i));
>   			break;
> @@ -7223,11 +7588,12 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
>   	for (i = 0; i < 16; i++) {
>   		hwstats->qptc[i] += IXGBE_READ_REG(hw, IXGBE_QPTC(i));
>   		hwstats->qprc[i] += IXGBE_READ_REG(hw, IXGBE_QPRC(i));
> -		if ((hw->mac.type == ixgbe_mac_82599EB) ||
> -		    (hw->mac.type == ixgbe_mac_X540) ||
> -		    (hw->mac.type == ixgbe_mac_X550) ||
> -		    (hw->mac.type == ixgbe_mac_X550EM_x) ||
> -		    (hw->mac.type == ixgbe_mac_x550em_a)) {
> +		if (hw->mac.type == ixgbe_mac_82599EB ||
> +		    hw->mac.type == ixgbe_mac_X540 ||
> +		    hw->mac.type == ixgbe_mac_X550 ||
> +		    hw->mac.type == ixgbe_mac_X550EM_x ||
> +		    hw->mac.type == ixgbe_mac_x550em_a ||

Make the () removal a separate patch?

> +		    hw->mac.type == ixgbe_mac_e610) {
>   			hwstats->qbtc[i] += IXGBE_READ_REG(hw, IXGBE_QBTC_L(i));
>   			IXGBE_READ_REG(hw, IXGBE_QBTC_H(i)); /* to clear */
>   			hwstats->qbrc[i] += IXGBE_READ_REG(hw, IXGBE_QBRC_L(i));
> @@ -7253,6 +7619,7 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		/* OS2BMC stats are X540 and later */
>   		hwstats->o2bgptc += IXGBE_READ_REG(hw, IXGBE_O2BGPTC);
>   		hwstats->o2bspc += IXGBE_READ_REG(hw, IXGBE_O2BSPC);
> @@ -7553,6 +7920,7 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   	case ixgbe_mac_82599EB: {
>   		u32 mflcn = IXGBE_READ_REG(hw, IXGBE_MFLCN);
>   		u32 fccfg = IXGBE_READ_REG(hw, IXGBE_FCCFG);
> @@ -8054,6 +8422,11 @@ static void ixgbe_service_task(struct work_struct *work)
>   		ixgbe_service_event_complete(adapter);
>   		return;
>   	}
> +	if (adapter->hw.mac.type == ixgbe_mac_e610) {
> +		if (adapter->flags2 & IXGBE_FLAG2_FW_ASYNC_EVENT)
> +			ixgbe_handle_fw_event(adapter);
> +		ixgbe_check_media_subtask(adapter);
> +	}
>   	ixgbe_reset_subtask(adapter);
>   	ixgbe_phy_interrupt_subtask(adapter);
>   	ixgbe_sfp_detection_subtask(adapter);
> @@ -10772,6 +11145,24 @@ bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
>   	return false;
>   }
>   
> +/**
> + * ixgbe_set_fw_version_e610 - Set FW version specifically on E610 adapters
> + * @adapter: the adapter private structure
> + *
> + * This function is used by probe and ethtool to determine the FW version to
> + * format to display. The FW version is taken from the EEPROM/NVM.

Document some example versions?

> + *
> + */
> +static void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter)
> +{
> +	struct ixgbe_orom_info *orom = &adapter->hw.flash.orom;
> +	struct ixgbe_nvm_info *nvm = &adapter->hw.flash.nvm;
> +
> +	snprintf(adapter->eeprom_id, sizeof(adapter->eeprom_id),
> +		 "%x.%02x 0x%x %d.%d.%d", nvm->major, nvm->minor,
> +		 nvm->eetrack, orom->major, orom->build, orom->patch);
> +}
> +
>   /**
>    * ixgbe_set_fw_version - Set FW version
>    * @adapter: the adapter private structure
> @@ -10784,6 +11175,11 @@ static void ixgbe_set_fw_version(struct ixgbe_adapter *adapter)
>   	struct ixgbe_hw *hw = &adapter->hw;
>   	struct ixgbe_nvm_version nvm_ver;
>   
> +	if (adapter->hw.mac.type == ixgbe_mac_e610) {
> +		ixgbe_set_fw_version_e610(adapter);

Could the driver be extended to make this an ops?

> +		return;
> +	}
> +
>   	ixgbe_get_oem_prod_version(hw, &nvm_ver);
>   	if (nvm_ver.oem_valid) {
>   		snprintf(adapter->eeprom_id, sizeof(adapter->eeprom_id),
> @@ -10870,6 +11266,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   #else
>   		indices = IXGBE_MAX_RSS_INDICES;
>   #endif
> +	} else if (ii->mac == ixgbe_mac_e610) {
> +		indices = IXGBE_MAX_RSS_INDICES_X550;
>   	}
>   
>   	netdev = alloc_etherdev_mq(sizeof(struct ixgbe_adapter), indices);
> @@ -10941,6 +11339,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	switch (adapter->hw.mac.type) {
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
> +	case ixgbe_mac_e610:
>   		netdev->udp_tunnel_nic_info = &ixgbe_udp_tunnels_x550;
>   		break;
>   	case ixgbe_mac_x550em_a:
> @@ -10961,6 +11360,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
>   		break;
>   	default:
> @@ -11133,6 +11533,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	ether_addr_copy(hw->mac.addr, hw->mac.perm_addr);
>   	ixgbe_mac_set_default_filter(adapter);
>   
> +	if (hw->mac.type == ixgbe_mac_e610)
> +		mutex_init(&hw->aci.lock);

Why is this mutex needed?

>   	timer_setup(&adapter->service_timer, ixgbe_service_timer, 0);
>   
>   	if (ixgbe_removed(hw->hw_addr)) {
> @@ -11278,6 +11680,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   err_register:
>   	ixgbe_release_hw_control(adapter);
>   	ixgbe_clear_interrupt_scheme(adapter);
> +	if (hw->mac.type == ixgbe_mac_e610)
> +		mutex_destroy(&adapter->hw.aci.lock);
>   err_sw_init:
>   	ixgbe_disable_sriov(adapter);
>   	adapter->flags2 &= ~IXGBE_FLAG2_SEARCH_FOR_SFP;
> @@ -11324,6 +11728,12 @@ static void ixgbe_remove(struct pci_dev *pdev)
>   	set_bit(__IXGBE_REMOVING, &adapter->state);
>   	cancel_work_sync(&adapter->service_task);
>   
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
> +		ixgbe_disable_link_status_events(adapter);
> +
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
> +		mutex_destroy(&adapter->hw.aci.lock);
> +

Collapse into one if statement?

>   	if (adapter->mii_bus)
>   		mdiobus_unregister(adapter->mii_bus);
>   
> @@ -11455,6 +11865,9 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
>   		case ixgbe_mac_x550em_a:
>   			device_id = IXGBE_DEV_ID_X550EM_A_VF;
>   			break;
> +		case ixgbe_mac_e610:
> +			device_id = IXGBE_DEV_ID_E610_VF;
> +			break;
>   		default:
>   			device_id = 0;
>   			break;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
> index d67d77e..788b5af 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include <linux/pci.h>
>   #include <linux/delay.h>
> @@ -283,6 +283,7 @@ static int ixgbe_check_for_rst_pf(struct ixgbe_hw *hw, u16 vf_number)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		vflre = IXGBE_READ_REG(hw, IXGBE_VFLREC(reg_offset));
>   		break;
>   	default:
> @@ -407,6 +408,7 @@ void ixgbe_init_mbx_params_pf(struct ixgbe_hw *hw)
>   	    hw->mac.type != ixgbe_mac_X550 &&
>   	    hw->mac.type != ixgbe_mac_X550EM_x &&
>   	    hw->mac.type != ixgbe_mac_x550em_a &&
> +	    hw->mac.type != ixgbe_mac_e610 &&
>   	    hw->mac.type != ixgbe_mac_X540)
>   		return;
>   
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> index 07eaa3c3..0a03a8b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include <linux/pci.h>
>   #include <linux/delay.h>
> @@ -1117,7 +1117,7 @@ int ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
>   	hw->phy.ops.read_reg(hw, IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG,
>   			     MDIO_MMD_AN, &autoneg_reg);
>   
> -	if (hw->mac.type == ixgbe_mac_X550) {
> +	if (hw->mac.type == ixgbe_mac_X550 || hw->mac.type == ixgbe_mac_e610) {
>   		/* Set or unset auto-negotiation 5G advertisement */
>   		autoneg_reg &= ~IXGBE_MII_5GBASE_T_ADVERTISE;
>   		if ((hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) &&
> @@ -1233,6 +1233,7 @@ static int ixgbe_get_copper_speeds_supported(struct ixgbe_hw *hw)
>   
>   	switch (hw->mac.type) {
>   	case ixgbe_mac_X550:
> +	case ixgbe_mac_e610:
>   		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
>   		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
>   		break;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> index f1ffa39..778dbbb 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> @@ -1,5 +1,5 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include <linux/pci.h>
>   #include <linux/delay.h>
> @@ -65,7 +65,9 @@ int ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
>    *  Resets the hardware by resetting the transmit and receive units, masks
>    *  and clears all interrupts, perform a PHY reset, and perform a link (MAC)
>    *  reset.
> - **/
> + *
> + *  Return: 0 on success, non-zero on failure

Any difference between negative and positive numbers?

> + */
>   int ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
>   {
>   	u32 swfw_mask = hw->phy.phy_semaphore_mask;
> @@ -132,28 +134,30 @@ int ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
>   	hw->mac.num_rar_entries = IXGBE_X540_MAX_TX_QUEUES;
>   	hw->mac.ops.init_rx_addrs(hw);
>   
> -	/* Store the permanent SAN mac address */
> -	hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);
> +	if (hw->mac.type != ixgbe_mac_e610) {

Why is it not needed for E610? Maybe do

     if (hw->mac.type == ixgbe_mac_e610)
     	return status;

> +		/* Store the permanent SAN mac address */
> +		hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);
>   
> -	/* Add the SAN MAC address to the RAR only if it's a valid address */
> -	if (is_valid_ether_addr(hw->mac.san_addr)) {
> -		/* Save the SAN MAC RAR index */
> -		hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;
> +		/* Add the SAN MAC address to RAR if it's a valid address */
> +		if (is_valid_ether_addr(hw->mac.san_addr)) {
> +			/* Save the SAN MAC RAR index */
> +			hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;
>   
> -		hw->mac.ops.set_rar(hw, hw->mac.san_mac_rar_index,
> -				    hw->mac.san_addr, 0, IXGBE_RAH_AV);
> +			hw->mac.ops.set_rar(hw, hw->mac.san_mac_rar_index,
> +					    hw->mac.san_addr, 0, IXGBE_RAH_AV);
>   
> -		/* clear VMDq pool/queue selection for this RAR */
> -		hw->mac.ops.clear_vmdq(hw, hw->mac.san_mac_rar_index,
> -				       IXGBE_CLEAR_VMDQ_ALL);
> +			/* clear VMDq pool/queue selection for this RAR */
> +			hw->mac.ops.clear_vmdq(hw, hw->mac.san_mac_rar_index,
> +					       IXGBE_CLEAR_VMDQ_ALL);
>   
> -		/* Reserve the last RAR for the SAN MAC address */
> -		hw->mac.num_rar_entries--;
> -	}
> +			/* Reserve the last RAR for the SAN MAC address */
> +			hw->mac.num_rar_entries--;
> +		}
>   
> -	/* Store the alternative WWNN/WWPN prefix */
> -	hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
> -				   &hw->mac.wwpn_prefix);
> +		/* Store the alternative WWNN/WWPN prefix */
> +		hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
> +					   &hw->mac.wwpn_prefix);
> +	}
>   
>   	return status;
>   }
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
> index b69a680..6ed360c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
> @@ -1,5 +1,8 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
> +
> +#ifndef _IXGBE_X540_H_
> +#define _IXGBE_X540_H_
>   
>   #include "ixgbe_type.h"
>   
> @@ -17,3 +20,5 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
>   void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
>   void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw);
>   int ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw);
> +
> +#endif /* _IXGBE_X540_H_ */

Please make this a separate patch.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index 2decb07..71f111f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -1,7 +1,8 @@
>   // SPDX-License-Identifier: GPL-2.0
> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>   
>   #include "ixgbe_x540.h"
> +#include "ixgbe_x550.h"
>   #include "ixgbe_type.h"
>   #include "ixgbe_common.h"
>   #include "ixgbe_phy.h"
> @@ -2819,9 +2820,9 @@ static int ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
>    *  semaphore, -EIO when command fails or -ENIVAL when incorrect
>    *  params passed.
>    **/
> -static int ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
> -				     u8 build, u8 sub, u16 len,
> -				     const char *driver_ver)
> +int ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
> +			      u8 build, u8 sub, u16 len,
> +			      const char *driver_ver)
>   {
>   	struct ixgbe_hic_drv_info2 fw_cmd;
>   	int ret_val;
> @@ -3554,14 +3555,14 @@ static int ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
>   	return status;
>   }
>   
> -/** ixgbe_set_ethertype_anti_spoofing_X550 - Enable/Disable Ethertype
> +/** ixgbe_set_ethertype_anti_spoofing_x550 - Enable/Disable Ethertype
>    *	anti-spoofing
>    *  @hw:  pointer to hardware structure
>    *  @enable: enable or disable switch for Ethertype anti-spoofing
>    *  @vf: Virtual Function pool - VF Pool to set for Ethertype anti-spoofing
>    **/
> -static void ixgbe_set_ethertype_anti_spoofing_X550(struct ixgbe_hw *hw,
> -						   bool enable, int vf)
> +void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
> +					    bool enable, int vf)
>   {
>   	int vf_target_reg = vf >> 3;
>   	int vf_target_shift = vf % 8 + IXGBE_SPOOF_ETHERTYPEAS_SHIFT;
> @@ -3576,14 +3577,14 @@ static void ixgbe_set_ethertype_anti_spoofing_X550(struct ixgbe_hw *hw,
>   	IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg), pfvfspoof);
>   }
>   
> -/** ixgbe_set_source_address_pruning_X550 - Enable/Disbale src address pruning
> +/** ixgbe_set_source_address_pruning_x550 - Enable/Disbale src address pruning
>    *  @hw: pointer to hardware structure
>    *  @enable: enable or disable source address pruning
>    *  @pool: Rx pool to set source address pruning for
>    **/
> -static void ixgbe_set_source_address_pruning_X550(struct ixgbe_hw *hw,
> -						  bool enable,
> -						  unsigned int pool)
> +void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
> +					   bool enable,
> +					   unsigned int pool)
>   {
>   	u64 pfflp;
>   
> @@ -3880,9 +3881,9 @@ static int ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
>   	.set_mac_anti_spoofing		= &ixgbe_set_mac_anti_spoofing, \
>   	.set_vlan_anti_spoofing		= &ixgbe_set_vlan_anti_spoofing, \
>   	.set_source_address_pruning	= \
> -				&ixgbe_set_source_address_pruning_X550, \
> +				&ixgbe_set_source_address_pruning_x550, \
>   	.set_ethertype_anti_spoofing	= \
> -				&ixgbe_set_ethertype_anti_spoofing_X550, \
> +				&ixgbe_set_ethertype_anti_spoofing_x550, \

Please make the renaming a separate patch.

>   	.disable_rx_buff		= &ixgbe_disable_rx_buff_generic, \
>   	.enable_rx_buff			= &ixgbe_enable_rx_buff_generic, \
>   	.get_thermal_sensor_data	= NULL, \
> @@ -4096,7 +4097,7 @@ static const u32 ixgbe_mvals_X550EM_x[IXGBE_MVALS_IDX_LIMIT] = {
>   	IXGBE_MVALS_INIT(X550EM_x)
>   };
>   
> -static const u32 ixgbe_mvals_x550em_a[IXGBE_MVALS_IDX_LIMIT] = {
> +const u32 ixgbe_mvals_x550em_a[IXGBE_MVALS_IDX_LIMIT] = {
>   	IXGBE_MVALS_INIT(X550EM_a)
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
> new file mode 100644
> index 0000000..3e4092f
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright(c) 2024 Intel Corporation. */
> +
> +#ifndef _IXGBE_X550_H_
> +#define _IXGBE_X550_H_
> +
> +#include "ixgbe_type.h"
> +
> +extern const u32 ixgbe_mvals_x550em_a[IXGBE_MVALS_IDX_LIMIT];
> +
> +int ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
> +			      u8 build, u8 sub, u16 len,
> +			      const char *driver_ver);
> +void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
> +					   bool enable,
> +					   unsigned int pool);
> +void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
> +					    bool enable, int vf);
> +
> +#endif /* _IXGBE_X550_H_ */

I know, it’s a lot of work to split out clean-up and formatting changes, 
but to save time for reviewers and make it easier, please try to do this 
right away in the future.


Kind regards,

Paul
