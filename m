Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B56B5812C3B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 10:56:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5055C61B3A;
	Thu, 14 Dec 2023 09:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5055C61B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702547772;
	bh=YXlTHyVGLjBZjr90JFxUgNGW1/EYQTOy8NpOBWh2E9c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3h9+i05rpIQnIox6z8WN6+Tt6cBpPuOAcWYMZZmsC0K7ndda63pxfGqDRF2EvVfut
	 xVFZXmeYYRuMm6veaNXnwwQtNgaZ4JbiH0Qu7cfwnnA1ie2H6skGvlL5vPz85AThEa
	 haJsEum47e+coPFdaLtBYBRZzTBIxng+85GI5jEU8r7eeTNXnqvz+urE8u8dCzlx/H
	 nGpnTuOr5zQ5ZUGGkKVCGTSI8j1NcpPR42Hl1ZXwpfLTFJoeAcOaLemsJUt7odlyan
	 JAu4xvmFsRhloRRqYwo2icJONySmxr9gG2GAAdWOsoD943hHNjskwgHaRXL4jnyblZ
	 WanlUvYVnCsVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHtOfLIjS8t2; Thu, 14 Dec 2023 09:56:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A78E161B11;
	Thu, 14 Dec 2023 09:56:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A78E161B11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72FB91BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48142436E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48142436E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DAoBuCZs2Kyh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 09:56:02 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A53A405B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:56:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A53A405B1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2278FCE203A;
 Thu, 14 Dec 2023 09:55:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64FF5C433C8;
 Thu, 14 Dec 2023 09:55:56 +0000 (UTC)
Date: Thu, 14 Dec 2023 09:55:53 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20231214095553.GJ5817@kernel.org>
References: <20231212104642.316887-1-jedrzej.jagielski@intel.com>
 <20231212104642.316887-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231212104642.316887-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702547757;
 bh=fr556/1bjaRw8tu8bD+o5ZS/ydF4Zz/SePK+fQc/gz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ugwNfNBE0Q878ZLdF3wDnPH1exUMg3HPbmC4o/CzhYAyXMjMF10M8XmTyDPfigkFa
 2DXt19BVS3/PVBChOPk7SVRzvqUEB/WXRI5ykUp8PSkbnPzyPvuTPs2mTHSV22sUOY
 xr9gfuAOnw/e+xlpySTeRGiXPb/Im2cR7gNciFlSPxS+vy+mro2zniQleA6la1BDt2
 uYLPgGQCcGzPsUpbB5L4ks2NtmR21iLu7atOeB6WfzCaaxVWKWY31B17p2n1nxvf/T
 SFijaC+VgEPl9ADknsZdmCJG9Qtn/OfzSdKbLElGyIaE21s9XXQpmlTicZq1vtb4qN
 1bz24qJutqyyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ugwNfNBE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 12, 2023 at 11:46:41AM +0100, Jedrzej Jagielski wrote:
> Currently ixgbe driver is notified of overheating events
> via internal IXGBE_ERR_OVERTEMP error code.
> 
> Change the approach for handle_lasi() to use freshly introduced
> is_overtemp function parameter which set when such event occurs.
> Change check_overtemp() to bool and return true if overtemp
> event occurs.
> 
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: change aproach to use additional function parameter to notify when overheat
> v4: change check_overtemp to bool
> 
> https://lore.kernel.org/netdev/20231208090055.303507-1-jedrzej.jagielski@intel.com/T/
> ---

Hi Jedrzej,

I like where this patch-set is going.
Please find some feedback from my side inline.

>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 19 ++++----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 26 ++++++-----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 45 +++++++++++--------
>  5 files changed, 54 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 227415d61efc..9bff614788a2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>  {
>  	struct ixgbe_hw *hw = &adapter->hw;
>  	u32 eicr = adapter->interrupt_event;
> -	s32 rc;
> +	bool overtemp;
>  
>  	if (test_bit(__IXGBE_DOWN, &adapter->state))
>  		return;
> @@ -2790,14 +2790,15 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>  		}
>  
>  		/* Check if this is not due to overtemp */
> -		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
> +		overtemp = hw->phy.ops.check_overtemp(hw);
> +		if (!overtemp)
>  			return;

I like the readability of the above, but FWIIW, I think it could
also be slightly more compactly written as (completely untested!):

		if (!hw->phy.ops.check_overtemp(hw))
			return;

>  
>  		break;
>  	case IXGBE_DEV_ID_X550EM_A_1G_T:
>  	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
> -		rc = hw->phy.ops.check_overtemp(hw);
> -		if (rc != IXGBE_ERR_OVERTEMP)
> +		overtemp = hw->phy.ops.check_overtemp(hw);
> +		if (!overtemp)
>  			return;
>  		break;
>  	default:
> @@ -7938,7 +7939,7 @@ static void ixgbe_service_timer(struct timer_list *t)
>  static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
>  {
>  	struct ixgbe_hw *hw = &adapter->hw;
> -	u32 status;
> +	bool overtemp;
>  
>  	if (!(adapter->flags2 & IXGBE_FLAG2_PHY_INTERRUPT))
>  		return;
> @@ -7948,11 +7949,9 @@ static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
>  	if (!hw->phy.ops.handle_lasi)
>  		return;
>  
> -	status = hw->phy.ops.handle_lasi(&adapter->hw);
> -	if (status != IXGBE_ERR_OVERTEMP)
> -		return;
> -
> -	e_crit(drv, "%s\n", ixgbe_overheat_msg);
> +	hw->phy.ops.handle_lasi(&adapter->hw, &overtemp);

Unless I am mistaken, the above can return an error. Should it be checked?

Or alternatively, as this seems to be the only call-site,
could handle_lasi() return overtemp as a bool?

> +	if (overtemp)
> +		e_crit(drv, "%s\n", ixgbe_overheat_msg);
>  }
>  
>  static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> index ca31638c6fb8..343c3ca9b1c9 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> @@ -396,9 +396,10 @@ static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
>   **/
>  s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
>  {
> -	u32 i;
> -	u16 ctrl = 0;
>  	s32 status = 0;
> +	bool overtemp;
> +	u16 ctrl = 0;
> +	u32 i;
>  
>  	if (hw->phy.type == ixgbe_phy_unknown)
>  		status = ixgbe_identify_phy_generic(hw);
> @@ -407,8 +408,8 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
>  		return status;
>  
>  	/* Don't reset PHY if it's shut down due to overtemp. */
> -	if (!hw->phy.reset_if_overtemp &&
> -	    (IXGBE_ERR_OVERTEMP == hw->phy.ops.check_overtemp(hw)))
> +	overtemp = hw->phy.ops.check_overtemp(hw);
> +	if (!hw->phy.reset_if_overtemp && overtemp)
>  		return 0;

Previously check_overtemp() would only be called if reset_if_overtemp was
false. Now it is called unconditionally. I'm not sure if it matters, but
the check for reset_if_overtemp may have avoided some logic, including a
call to hw->phy.ops.read_reg() in some cases.

I wonder if it would be nicer to go back to the previous logic.
(completely untested!)

	if (!hw->phy.reset_if_overtemp && hw->phy.ops.check_overtemp(hw))
		return 0;

>  
>  	/* Blocked by MNG FW so bail */
> @@ -2747,21 +2748,24 @@ static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw)
>   *
>   *  Checks if the LASI temp alarm status was triggered due to overtemp
>   **/
> -s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
> +bool ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
>  {
>  	u16 phy_data = 0;
> +	u32 status;
>  
>  	if (hw->device_id != IXGBE_DEV_ID_82599_T3_LOM)
> -		return 0;
> +		return false;
>  
>  	/* Check that the LASI temp alarm status was triggered */
> -	hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
> -			     MDIO_MMD_PMAPMD, &phy_data);
> +	status = hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
> +				      MDIO_MMD_PMAPMD, &phy_data);
> +	if (status)
> +		return false;
>  
> -	if (!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM))
> -		return 0;
> +	if (phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM)
> +		return true;
>  
> -	return IXGBE_ERR_OVERTEMP;
> +	return false;

Maybe (completely untested!):

	return !!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM)

>  }
>  
>  /** ixgbe_set_copper_phy_power - Control power for copper phy
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> index 6544c4539c0d..ef72729d7c93 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> @@ -155,7 +155,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
>  s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
>  					u16 *list_offset,
>  					u16 *data_offset);
> -s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
> +bool ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
>  s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
>  				u8 dev_addr, u8 *data);
>  s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index 2b00db92b08f..91c9ecca4cb5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -3509,10 +3509,10 @@ struct ixgbe_phy_operations {
>  	s32 (*read_i2c_sff8472)(struct ixgbe_hw *, u8 , u8 *);
>  	s32 (*read_i2c_eeprom)(struct ixgbe_hw *, u8 , u8 *);
>  	s32 (*write_i2c_eeprom)(struct ixgbe_hw *, u8, u8);
> -	s32 (*check_overtemp)(struct ixgbe_hw *);
> +	bool (*check_overtemp)(struct ixgbe_hw *);
>  	s32 (*set_phy_power)(struct ixgbe_hw *, bool on);
>  	s32 (*enter_lplu)(struct ixgbe_hw *);
> -	s32 (*handle_lasi)(struct ixgbe_hw *hw);
> +	s32 (*handle_lasi)(struct ixgbe_hw *hw, bool *);

I'm not sure of the history of this, or the nature of the other callbacks,
but I think that usually int is used as the return type when standard error
numbers are returned. I realise that is not strictly related to this patch,
maybe it could be addressed at some point?

>  	s32 (*read_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
>  				      u8 *value);
>  	s32 (*write_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index b3509b617a4e..59dd38dd8248 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -600,8 +600,10 @@ static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
>  	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_SETUP_LINK, &setup);
>  	if (rc)
>  		return rc;
> +
>  	if (setup[0] == FW_PHY_ACT_SETUP_LINK_RSP_DOWN)
> -		return IXGBE_ERR_OVERTEMP;
> +		return -EIO;
> +
>  	return 0;
>  }
>  
> @@ -2367,18 +2369,21 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
>   * @hw: pointer to hardware structure
>   * @lsc: pointer to boolean flag which indicates whether external Base T
>   *	 PHY interrupt is lsc
> + * @is_overtemp: indicate whether an overtemp event encountered
>   *
>   * Determime if external Base T PHY interrupt cause is high temperature
>   * failure alarm or link status change.
> - *
> - * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
> - * failure alarm, else return PHY access status.
>   **/
> -static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
> +static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc,
> +				       bool *is_overtemp)
>  {
>  	u32 status;
>  	u16 reg;
>  
> +	if (!hw || !lsc || !is_overtemp)
> +		return -EINVAL;

I don't think this kind of defensive programming is appropriate
in a kernel driver.

And unless I am mistaken, caller's don't check the return value of this
function (or propagate to a caller which doesn't check it).

> +
> +	*is_overtemp = false;
>  	*lsc = false;
>  
>  	/* Vendor alarm triggered */
> @@ -2410,7 +2415,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>  	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL) {
>  		/* power down the PHY in case the PHY FW didn't already */
>  		ixgbe_set_copper_phy_power(hw, false);
> -		return IXGBE_ERR_OVERTEMP;
> +		*is_overtemp = true;
> +		return -EIO;
>  	}
>  	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT) {
>  		/*  device fault alarm triggered */
> @@ -2424,7 +2430,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>  		if (reg == IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP) {
>  			/* power down the PHY in case the PHY FW didn't */
>  			ixgbe_set_copper_phy_power(hw, false);
> -			return IXGBE_ERR_OVERTEMP;
> +			*is_overtemp = true;
> +			return -EIO;
>  		}
>  	}
>  
> @@ -2460,12 +2467,12 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>   **/
>  static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>  {
> +	bool lsc, overtemp;
>  	u32 status;
>  	u16 reg;
> -	bool lsc;
>  
>  	/* Clear interrupt flags */
> -	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
> +	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, &overtemp);
>  
>  	/* Enable link status change alarm */
>  
> @@ -2544,21 +2551,23 @@ static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>  /**
>   * ixgbe_handle_lasi_ext_t_x550em - Handle external Base T PHY interrupt
>   * @hw: pointer to hardware structure
> + * @is_overtemp: indicate whether an overtemp event encountered
>   *
>   * Handle external Base T PHY interrupt. If high temperature
>   * failure alarm then return error, else if link status change
>   * then setup internal/external PHY link
> - *
> - * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
> - * failure alarm, else return PHY access status.
>   **/
> -static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
> +static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw,
> +					  bool *is_overtemp)
>  {
>  	struct ixgbe_phy_info *phy = &hw->phy;
>  	bool lsc;
>  	u32 status;
>  
> -	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
> +	if (!hw || !is_overtemp)
> +		return -EINVAL;

Ditto.

> +
> +	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, is_overtemp);
>  	if (status)
>  		return status;
>  
> @@ -3186,20 +3195,20 @@ static s32 ixgbe_reset_phy_fw(struct ixgbe_hw *hw)
>   * ixgbe_check_overtemp_fw - Check firmware-controlled PHYs for overtemp
>   * @hw: pointer to hardware structure
>   */
> -static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
> +static bool ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
>  {
>  	u32 store[FW_PHY_ACT_DATA_COUNT] = { 0 };
>  	s32 rc;
>  
>  	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_GET_LINK_INFO, &store);
>  	if (rc)
> -		return rc;
> +		return false;
>  
>  	if (store[0] & FW_PHY_ACT_GET_LINK_INFO_TEMP) {
>  		ixgbe_shutdown_fw_phy(hw);
> -		return IXGBE_ERR_OVERTEMP;
> +		return true;
>  	}
> -	return 0;
> +	return false;
>  }
>  
>  /**
> -- 
> 2.31.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
