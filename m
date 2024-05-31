Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC04D8D64EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 16:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D693641A00;
	Fri, 31 May 2024 14:54:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SzZze6qXS4e4; Fri, 31 May 2024 14:54:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82F7D417FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717167246;
	bh=fDQyzVQa+9heQ10GkNQBCFhU8JSkHQEGv6nxcuqr1rU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fByBpahxm8Tm3fDHgtXGfjNJRwjdNYpdbmkt3Pm56cObDmcZ9KxxLGlUAATG280NS
	 w9764kZV+fNZuWIDCq8sdCYX+kLGGnWPtN9ygup9GkVzeSy9kOwX/kjbPduSqLiWaT
	 /vMgjbk5l3GB3AH3cfxmjo3PTqESbeA5SgFxMllWrQnjtrlwrl3om8wTFbUmU5Ja8z
	 umJP4ypKaS91tNPRn54Ue7fsdbV4ajbZEkjBoGLFa/cdHEiuWrMAPuGizrGBqbKw8F
	 972p19jRxUSLNfjYeWjHSY6SI4p/xfACCLrdEntB6SZaiC5JeQwUskQnwgCB1wcdJl
	 6R1SZ8ewYcLJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82F7D417FB;
	Fri, 31 May 2024 14:54:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 640191D53A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 579C141463
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Csf3C_lATh3s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 14:54:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDBD140800
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDBD140800
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDBD140800
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:54:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0E47362CC7;
 Fri, 31 May 2024 14:54:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21BFCC32781;
 Fri, 31 May 2024 14:53:59 +0000 (UTC)
Date: Fri, 31 May 2024 15:53:57 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240531145357.GJ123401@kernel.org>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-4-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527151023.3634-4-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717167241;
 bh=poEP61pqmH0sqgdYzxQc9fRjI4xg73KexHSn91ysA+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=juMsyTspP99qiSbZXOei9Vs90PJKgAmqLH8NddJsUt4rrWPYuprN6kegYqRGOrJw1
 /YxZZC6NT0C5FDDfvTgDLb0LEicR7PZ6JJJ/UAS8BS1OUDR+IY00pGS4UfWOrZzuRz
 ZDRYFW18jjokZOfBD1vZbaFvI0gwAE9v8zxCN6noD/uNOEPXrhoz1o5qz8oKh22YBV
 WrIcmQoafe65eYptfww8+yT9KVCjEnFNsLw2hfVu3sKdGO1zyDN4QXpn7CXFc3G3ie
 JZ4jTAtmQVyWhRWniusdyON4M1ivjHHHpbD5R/DBS9ZpxAF6eV5q8BTeT/dGmXsheX
 FexPd2+idiXBA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=juMsyTsp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 3/7] ixgbe: Add link
 management support for E610 device
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
Cc: Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 05:10:19PM +0200, Piotr Kwapulinski wrote:
> Add low level link management support for E610 device. Link management
> operations are handled via the Admin Command Interface. Add the following
> link management operations:
> - get link capabilities
> - set up link
> - get media type
> - get link status, link status events
> - link power management
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Hi Pitor, all,

Some more minor feedback from my side.

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c

...

> +/**
> + * ixgbe_is_media_cage_present - check if media cage is present
> + * @hw: pointer to the HW struct
> + *
> + * Identify presence of media cage using the ACI command (0x06E0).
> + *
> + * Return: true if media cage is present, else false. If no cage, then
> + * media type is backplane or BASE-T.
> + */
> +static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
> +{
> +	struct ixgbe_aci_cmd_get_link_topo *cmd;
> +	struct ixgbe_aci_desc desc;
> +
> +	cmd = &desc.params.get_link_topo;
> +
> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
> +
> +	cmd->addr.topo_params.node_type_ctx =
> +		FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_CTX_M,
> +			   IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT);
> +
> +	/* Set node type. */
> +	cmd->addr.topo_params.node_type_ctx |=
> +		(IXGBE_ACI_LINK_TOPO_NODE_TYPE_M &
> +		 IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE);

nit: Can this also use FIELD_PREP?

> +
> +	/* Node type cage can be used to determine if cage is present. If AQC
> +	 * returns error (ENOENT), then no cage present. If no cage present then
> +	 * connection type is backplane or BASE-T.
> +	 */
> +	return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);
> +}

...

> +/**
> + * ixgbe_get_link_status - get status of the HW network link
> + * @hw: pointer to the HW struct
> + * @link_up: pointer to bool (true/false = linkup/linkdown)
> + *
> + * Variable link_up is true if link is up, false if link is down.
> + * The variable link_up is invalid if status is non zero. As a
> + * result of this call, link status reporting becomes enabled
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up)
> +{
> +	int err = 0;
> +
> +	if (!hw || !link_up)
> +		return -EINVAL;
> +
> +	if (hw->link.get_link_info) {
> +		err = ixgbe_update_link_info(hw);
> +		if (err)
> +			return err;
> +	}
> +
> +	*link_up = hw->link.link_info.link_info & IXGBE_ACI_LINK_UP;
> +
> +	return err;

nit: If the function used "return 0" here,
     then there would be no need to initialise err to 0
     and the scope of err could be reduced to the if clause where
     ixgbe_update_link_info() is called.

> +}

...

> +/**
> + * ixgbe_fc_autoneg_e610 - Configure flow control
> + * @hw: pointer to hardware structure
> + *
> + * Configure Flow Control.
> + */
> +void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
> +{
> +	int err;
> +
> +	/* Get current link err.
> +	 * Current FC mode will be stored in the hw context.
> +	 */
> +	err = ixgbe_aci_get_link_info(hw, false, NULL);
> +	if (err)
> +		goto out;
> +
> +	/* Check if the link is up */
> +	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP)) {
> +		err = -EIO;
> +		goto out;
> +	}
> +
> +	/* Check if auto-negotiation has completed */
> +	if (!(hw->link.link_info.an_info & IXGBE_ACI_AN_COMPLETED)) {
> +		err = -EIO;
> +		goto out;
> +	}
> +
> +out:
> +	if (!err) {
> +		hw->fc.fc_was_autonegged = true;
> +	} else {
> +		hw->fc.fc_was_autonegged = false;
> +		hw->fc.current_mode = hw->fc.requested_mode;
> +	}
> +}

As out is only jumped to from error paths, and err is not returned,
perhaps this is a bit nicer (completely untested!):

void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
{
	int err;

	/* Get current link err.
	 * Current FC mode will be stored in the hw context.
	 */
	err = ixgbe_aci_get_link_info(hw, false, NULL);
	if (err)
		goto no_autoneg;

	/* Check if the link is up */
	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP))
		goto no_autoneg;

	/* Check if auto-negotiation has completed */
	if (!(hw->link.link_info.an_info & IXGBE_ACI_AN_COMPLETED))
		goto no_autoneg;

	hw->fc.fc_was_autonegged = true;
	return;

no_autoneg:
	hw->fc.fc_was_autonegged = false;
	hw->fc.current_mode = hw->fc.requested_mode;
}

> +
> +/**
> + * ixgbe_disable_rx_e610 - Disable RX unit
> + * @hw: pointer to hardware structure
> + *
> + * Disable RX DMA unit on E610 with use of ACI command (0x000C).
> + *
> + * Return: the exit code of the operation.
> + */
> +void ixgbe_disable_rx_e610(struct ixgbe_hw *hw)
> +{
> +	u32 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
> +
> +	if (rxctrl & IXGBE_RXCTRL_RXEN) {

FWIIW, this could be less indented using something like:

	if (!(rxctrl & IXGBE_RXCTRL_RXEN))
		return;

	...

> +		u32 pfdtxgswc;
> +		int err;
> +
> +		pfdtxgswc = IXGBE_READ_REG(hw, IXGBE_PFDTXGSWC);
> +		if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
> +			pfdtxgswc &= ~IXGBE_PFDTXGSWC_VT_LBEN;
> +			IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
> +			hw->mac.set_lben = true;
> +		} else {
> +			hw->mac.set_lben = false;
> +		}
> +
> +		err = ixgbe_aci_disable_rxen(hw);
> +
> +		/* If we fail - disable RX using register write */
> +		if (err) {
> +			rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
> +			if (rxctrl & IXGBE_RXCTRL_RXEN) {
> +				rxctrl &= ~IXGBE_RXCTRL_RXEN;
> +				IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl);
> +			}
> +		}
> +	}
> +}

...

> +/**
> + * ixgbe_setup_phy_link_e610 - Sets up firmware-controlled PHYs
> + * @hw: pointer to hardware structure
> + *
> + * Set the parameters for the firmware-controlled PHYs.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
> +{
> +	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
> +	struct ixgbe_aci_cmd_set_phy_cfg_data pcfg;
> +	int err;
> +
> +	err = ixgbe_aci_get_link_info(hw, false, NULL);
> +	if (err)
> +		goto err;
> +
> +	/* Set PHY Configuration only if media is available */
> +	if (!(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
> +		err = ixgbe_aci_set_link_restart_an(hw, false);
> +		if (err)
> +			goto err;
> +
> +		return 0;
> +	}
> +
> +	err = ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_DFLT_CFG,
> +				     &pcaps);
> +	if (err)
> +		goto err;

nit: The goto label only returns err.
     So IMHO it' slightly nicer to just do that here.
     And return 0 right at the end of the function.

> +
> +	ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
> +
> +	pcfg.caps |= IXGBE_ACI_PHY_ENA_LINK;
> +	pcfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
> +
> +	/* Set default PHY types for a given speed */
> +	pcfg.phy_type_low = 0;
> +	pcfg.phy_type_high = 0;
> +
> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL) {
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10BASE_T;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10M_SGMII;
> +	}
> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL) {
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_100BASE_TX;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_100M_SGMII;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_100M_USXGMII;
> +	}
> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_T;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_SX;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_LX;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_KX;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1G_SGMII;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_1G_USXGMII;
> +	}
> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL) {
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_T;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_X;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_KX;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_SGMII;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_USXGMII;
> +	}
> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) {
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_T;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_KR;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_5G_USXGMII;
> +	}
> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL) {
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_T;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_DA;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_SR;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_LR;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC;
> +		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_C2C;
> +		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
> +	}
> +
> +	/* Mask the set values to avoid requesting unsupported link types */
> +	pcfg.phy_type_low &= pcaps.phy_type_low;
> +	pcfg.phy_type_high &= pcaps.phy_type_high;
> +
> +	err = ixgbe_aci_set_phy_cfg(hw, &pcfg);
> +	if (err)
> +		goto err;
> +
> +	/* Request link restart - without putting it down */
> +	err = ixgbe_aci_set_link_restart_an(hw, true);
> +	if (err)
> +		goto err;
> +
> +err:
> +	return err;
> +}

...
