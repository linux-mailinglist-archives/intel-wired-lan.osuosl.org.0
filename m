Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D728F3B2A46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 10:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FC744157D;
	Thu, 24 Jun 2021 08:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWmfYvqXzxLY; Thu, 24 Jun 2021 08:22:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 852E341573;
	Thu, 24 Jun 2021 08:22:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45EBC1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4129883BF0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:22:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZ9YsAlR1WFp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 08:22:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AB2283B44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:22:46 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5ae88e.dynamic.kabel-deutschland.de
 [95.90.232.142])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AE86361E30B8D;
 Thu, 24 Jun 2021 10:22:42 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210624081827.568657-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <00356b48-f9a6-1864-26f8-a64ed8ee5b95@molgen.mpg.de>
Date: Thu, 24 Jun 2021 10:22:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624081827.568657-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/3] e1000e: Add handshake with the
 CSME to support s0ix
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
Cc: michael.edri@intel.com, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Am 24.06.21 um 10:18 schrieb Sasha Neftin:
> On the corporate system, the driver will ask from the CSME
> (manageability engine) to perform device settings are required
> to allow s0ix residency.
> This patch provides initial support.

Please give more details, and list the (public) datasheets documenting 
this procedure.

As this has caused problems in the past, please document the performed 
tests (including used devices and firmware versions) in detail in the 
commit message.


Kind regards,

Paul


> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.h |   2 +
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 328 +++++++++++---------
>   2 files changed, 176 insertions(+), 154 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
> index 1502895eb45d..e59456d867db 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
> @@ -47,6 +47,8 @@
>   #define E1000_SHRAH_PCH_LPT(_i)		(0x0540C + ((_i) * 8))
>   
>   #define E1000_H2ME		0x05B50	/* Host to ME */
> +#define E1000_H2ME_START_DPG	0x00000001	/* indicate the ME of DPG */
> +#define E1000_H2ME_EXIT_DPG	0x00000002	/* indicate the ME exit DPG */
>   #define E1000_H2ME_ULP		0x00000800	/* ULP Indication Bit */
>   #define E1000_H2ME_ENFORCE_SETTINGS	0x00001000	/* Enforce Settings */
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 646bfb83a18b..786719890f2b 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6345,42 +6345,104 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>   	u32 mac_data;
>   	u16 phy_data;
>   
> -	/* Disable the periodic inband message,
> -	 * don't request PCIe clock in K1 page770_17[10:9] = 10b
> -	 */
> -	e1e_rphy(hw, HV_PM_CTRL, &phy_data);
> -	phy_data &= ~HV_PM_CTRL_K1_CLK_REQ;
> -	phy_data |= BIT(10);
> -	e1e_wphy(hw, HV_PM_CTRL, phy_data);
> +	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
> +		/* Request ME configure the device for s0ix */
> +		mac_data = er32(H2ME);
> +		mac_data |= E1000_H2ME_START_DPG;
> +		mac_data &= ~E1000_H2ME_EXIT_DPG;
> +		ew32(H2ME, mac_data);
> +	} else {
> +		/* Request driver configure the device to s0ix */
> +		/* Disable the periodic inband message,
> +		 * don't request PCIe clock in K1 page770_17[10:9] = 10b
> +		 */
> +		e1e_rphy(hw, HV_PM_CTRL, &phy_data);
> +		phy_data &= ~HV_PM_CTRL_K1_CLK_REQ;
> +		phy_data |= BIT(10);
> +		e1e_wphy(hw, HV_PM_CTRL, phy_data);
>   
> -	/* Make sure we don't exit K1 every time a new packet arrives
> -	 * 772_29[5] = 1 CS_Mode_Stay_In_K1
> -	 */
> -	e1e_rphy(hw, I217_CGFREG, &phy_data);
> -	phy_data |= BIT(5);
> -	e1e_wphy(hw, I217_CGFREG, phy_data);
> +		/* Make sure we don't exit K1 every time a new packet arrives
> +		 * 772_29[5] = 1 CS_Mode_Stay_In_K1
> +		 */
> +		e1e_rphy(hw, I217_CGFREG, &phy_data);
> +		phy_data |= BIT(5);
> +		e1e_wphy(hw, I217_CGFREG, phy_data);
>   
> -	/* Change the MAC/PHY interface to SMBus
> -	 * Force the SMBus in PHY page769_23[0] = 1
> -	 * Force the SMBus in MAC CTRL_EXT[11] = 1
> -	 */
> -	e1e_rphy(hw, CV_SMB_CTRL, &phy_data);
> -	phy_data |= CV_SMB_CTRL_FORCE_SMBUS;
> -	e1e_wphy(hw, CV_SMB_CTRL, phy_data);
> -	mac_data = er32(CTRL_EXT);
> -	mac_data |= E1000_CTRL_EXT_FORCE_SMBUS;
> -	ew32(CTRL_EXT, mac_data);
> +		/* Change the MAC/PHY interface to SMBus
> +		 * Force the SMBus in PHY page769_23[0] = 1
> +		 * Force the SMBus in MAC CTRL_EXT[11] = 1
> +		 */
> +		e1e_rphy(hw, CV_SMB_CTRL, &phy_data);
> +		phy_data |= CV_SMB_CTRL_FORCE_SMBUS;
> +		e1e_wphy(hw, CV_SMB_CTRL, phy_data);
> +		mac_data = er32(CTRL_EXT);
> +		mac_data |= E1000_CTRL_EXT_FORCE_SMBUS;
> +		ew32(CTRL_EXT, mac_data);
> +
> +		/* DFT control: PHY bit: page769_20[0] = 1
> +		 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
> +		 */
> +		e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
> +		phy_data |= BIT(0);
> +		e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
> +
> +		mac_data = er32(EXTCNF_CTRL);
> +		mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
> +		ew32(EXTCNF_CTRL, mac_data);
> +
> +		/* Enable the Dynamic Power Gating in the MAC */
> +		mac_data = er32(FEXTNVM7);
> +		mac_data |= BIT(22);
> +		ew32(FEXTNVM7, mac_data);
> +
> +		/* Disable disconnected cable conditioning for Power Gating */
> +		mac_data = er32(DPGFR);
> +		mac_data |= BIT(2);
> +		ew32(DPGFR, mac_data);
> +
> +		/* Don't wake from dynamic Power Gating with clock request */
> +		mac_data = er32(FEXTNVM12);
> +		mac_data |= BIT(12);
> +		ew32(FEXTNVM12, mac_data);
> +
> +		/* Ungate PGCB clock */
> +		mac_data = er32(FEXTNVM9);
> +		mac_data &= ~BIT(28);
> +		ew32(FEXTNVM9, mac_data);
> +
> +		/* Enable K1 off to enable mPHY Power Gating */
> +		mac_data = er32(FEXTNVM6);
> +		mac_data |= BIT(31);
> +		ew32(FEXTNVM6, mac_data);
> +
> +		/* Enable mPHY power gating for any link and speed */
> +		mac_data = er32(FEXTNVM8);
> +		mac_data |= BIT(9);
> +		ew32(FEXTNVM8, mac_data);
> +
> +		/* Enable the Dynamic Clock Gating in the DMA and MAC */
> +		mac_data = er32(CTRL_EXT);
> +		mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
> +		ew32(CTRL_EXT, mac_data);
> +
> +		/* No MAC DPG gating SLP_S0 in modern standby
> +		 * Switch the logic of the lanphypc to use PMC counter
> +		 */
> +		mac_data = er32(FEXTNVM5);
> +		mac_data |= BIT(7);
> +		ew32(FEXTNVM5, mac_data);
> +	}
>   
> -	/* DFT control: PHY bit: page769_20[0] = 1
> -	 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
> -	 */
> -	e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
> -	phy_data |= BIT(0);
> -	e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
> +	/* Disable the time synchronization clock */
> +	mac_data = er32(FEXTNVM7);
> +	mac_data |= BIT(31);
> +	mac_data &= ~BIT(0);
> +	ew32(FEXTNVM7, mac_data);
>   
> -	mac_data = er32(EXTCNF_CTRL);
> -	mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
> -	ew32(EXTCNF_CTRL, mac_data);
> +	/* Dynamic Power Gating Enable */
> +	mac_data = er32(CTRL_EXT);
> +	mac_data |= BIT(3);
> +	ew32(CTRL_EXT, mac_data);
>   
>   	/* Check MAC Tx/Rx packet buffer pointers.
>   	 * Reset MAC Tx/Rx packet buffer pointers to suppress any
> @@ -6416,59 +6478,6 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>   	mac_data = er32(RDFPC);
>   	if (mac_data)
>   		ew32(RDFPC, 0);
> -
> -	/* Enable the Dynamic Power Gating in the MAC */
> -	mac_data = er32(FEXTNVM7);
> -	mac_data |= BIT(22);
> -	ew32(FEXTNVM7, mac_data);
> -
> -	/* Disable the time synchronization clock */
> -	mac_data = er32(FEXTNVM7);
> -	mac_data |= BIT(31);
> -	mac_data &= ~BIT(0);
> -	ew32(FEXTNVM7, mac_data);
> -
> -	/* Dynamic Power Gating Enable */
> -	mac_data = er32(CTRL_EXT);
> -	mac_data |= BIT(3);
> -	ew32(CTRL_EXT, mac_data);
> -
> -	/* Disable disconnected cable conditioning for Power Gating */
> -	mac_data = er32(DPGFR);
> -	mac_data |= BIT(2);
> -	ew32(DPGFR, mac_data);
> -
> -	/* Don't wake from dynamic Power Gating with clock request */
> -	mac_data = er32(FEXTNVM12);
> -	mac_data |= BIT(12);
> -	ew32(FEXTNVM12, mac_data);
> -
> -	/* Ungate PGCB clock */
> -	mac_data = er32(FEXTNVM9);
> -	mac_data &= ~BIT(28);
> -	ew32(FEXTNVM9, mac_data);
> -
> -	/* Enable K1 off to enable mPHY Power Gating */
> -	mac_data = er32(FEXTNVM6);
> -	mac_data |= BIT(31);
> -	ew32(FEXTNVM6, mac_data);
> -
> -	/* Enable mPHY power gating for any link and speed */
> -	mac_data = er32(FEXTNVM8);
> -	mac_data |= BIT(9);
> -	ew32(FEXTNVM8, mac_data);
> -
> -	/* Enable the Dynamic Clock Gating in the DMA and MAC */
> -	mac_data = er32(CTRL_EXT);
> -	mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
> -	ew32(CTRL_EXT, mac_data);
> -
> -	/* No MAC DPG gating SLP_S0 in modern standby
> -	 * Switch the logic of the lanphypc to use PMC counter
> -	 */
> -	mac_data = er32(FEXTNVM5);
> -	mac_data |= BIT(7);
> -	ew32(FEXTNVM5, mac_data);
>   }
>   
>   static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
> @@ -6477,87 +6486,98 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>   	u32 mac_data;
>   	u16 phy_data;
>   
> -	/* Disable the Dynamic Power Gating in the MAC */
> -	mac_data = er32(FEXTNVM7);
> -	mac_data &= 0xFFBFFFFF;
> -	ew32(FEXTNVM7, mac_data);
> +	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
> +		/* Request ME un configure the device from s0ix */
> +		mac_data = er32(H2ME);
> +		mac_data &= ~E1000_H2ME_START_DPG;
> +		mac_data |= E1000_H2ME_EXIT_DPG;
> +		ew32(H2ME, mac_data);
> +	} else {
> +		/* Request driver un configure the device from s0ix */
> +
> +		/* Disable the Dynamic Power Gating in the MAC */
> +		mac_data = er32(FEXTNVM7);
> +		mac_data &= 0xFFBFFFFF;
> +		ew32(FEXTNVM7, mac_data);
> +
> +		/* Disable mPHY power gating for any link and speed */
> +		mac_data = er32(FEXTNVM8);
> +		mac_data &= ~BIT(9);
> +		ew32(FEXTNVM8, mac_data);
> +
> +		/* Disable K1 off */
> +		mac_data = er32(FEXTNVM6);
> +		mac_data &= ~BIT(31);
> +		ew32(FEXTNVM6, mac_data);
> +
> +		/* Disable Ungate PGCB clock */
> +		mac_data = er32(FEXTNVM9);
> +		mac_data |= BIT(28);
> +		ew32(FEXTNVM9, mac_data);
> +
> +		/* Cancel not waking from dynamic
> +		 * Power Gating with clock request
> +		 */
> +		mac_data = er32(FEXTNVM12);
> +		mac_data &= ~BIT(12);
> +		ew32(FEXTNVM12, mac_data);
>   
> -	/* Enable the time synchronization clock */
> -	mac_data = er32(FEXTNVM7);
> -	mac_data |= BIT(0);
> -	ew32(FEXTNVM7, mac_data);
> +		/* Cancel disable disconnected cable conditioning
> +		 * for Power Gating
> +		 */
> +		mac_data = er32(DPGFR);
> +		mac_data &= ~BIT(2);
> +		ew32(DPGFR, mac_data);
>   
> -	/* Disable mPHY power gating for any link and speed */
> -	mac_data = er32(FEXTNVM8);
> -	mac_data &= ~BIT(9);
> -	ew32(FEXTNVM8, mac_data);
> +		/* Disable the Dynamic Clock Gating in the DMA and MAC */
> +		mac_data = er32(CTRL_EXT);
> +		mac_data &= 0xFFF7FFFF;
> +		ew32(CTRL_EXT, mac_data);
>   
> -	/* Disable K1 off */
> -	mac_data = er32(FEXTNVM6);
> -	mac_data &= ~BIT(31);
> -	ew32(FEXTNVM6, mac_data);
> +		/* Revert the lanphypc logic to use the internal Gbe counter
> +		 * and not the PMC counter
> +		 */
> +		mac_data = er32(FEXTNVM5);
> +		mac_data &= 0xFFFFFF7F;
> +		ew32(FEXTNVM5, mac_data);
>   
> -	/* Disable Ungate PGCB clock */
> -	mac_data = er32(FEXTNVM9);
> -	mac_data |= BIT(28);
> -	ew32(FEXTNVM9, mac_data);
> +		/* Enable the periodic inband message,
> +		 * Request PCIe clock in K1 page770_17[10:9] =01b
> +		 */
> +		e1e_rphy(hw, HV_PM_CTRL, &phy_data);
> +		phy_data &= 0xFBFF;
> +		phy_data |= HV_PM_CTRL_K1_CLK_REQ;
> +		e1e_wphy(hw, HV_PM_CTRL, phy_data);
>   
> -	/* Cancel not waking from dynamic
> -	 * Power Gating with clock request
> -	 */
> -	mac_data = er32(FEXTNVM12);
> -	mac_data &= ~BIT(12);
> -	ew32(FEXTNVM12, mac_data);
> +		/* Return back configuration
> +		 * 772_29[5] = 0 CS_Mode_Stay_In_K1
> +		 */
> +		e1e_rphy(hw, I217_CGFREG, &phy_data);
> +		phy_data &= 0xFFDF;
> +		e1e_wphy(hw, I217_CGFREG, phy_data);
>   
> -	/* Cancel disable disconnected cable conditioning
> -	 * for Power Gating
> -	 */
> -	mac_data = er32(DPGFR);
> -	mac_data &= ~BIT(2);
> -	ew32(DPGFR, mac_data);
> +		/* Change the MAC/PHY interface to Kumeran
> +		 * Unforce the SMBus in PHY page769_23[0] = 0
> +		 * Unforce the SMBus in MAC CTRL_EXT[11] = 0
> +		 */
> +		e1e_rphy(hw, CV_SMB_CTRL, &phy_data);
> +		phy_data &= ~CV_SMB_CTRL_FORCE_SMBUS;
> +		e1e_wphy(hw, CV_SMB_CTRL, phy_data);
> +		mac_data = er32(CTRL_EXT);
> +		mac_data &= ~E1000_CTRL_EXT_FORCE_SMBUS;
> +		ew32(CTRL_EXT, mac_data);
> +	}
>   
>   	/* Disable Dynamic Power Gating */
>   	mac_data = er32(CTRL_EXT);
>   	mac_data &= 0xFFFFFFF7;
>   	ew32(CTRL_EXT, mac_data);
>   
> -	/* Disable the Dynamic Clock Gating in the DMA and MAC */
> -	mac_data = er32(CTRL_EXT);
> -	mac_data &= 0xFFF7FFFF;
> -	ew32(CTRL_EXT, mac_data);
> -
> -	/* Revert the lanphypc logic to use the internal Gbe counter
> -	 * and not the PMC counter
> -	 */
> -	mac_data = er32(FEXTNVM5);
> -	mac_data &= 0xFFFFFF7F;
> -	ew32(FEXTNVM5, mac_data);
> -
> -	/* Enable the periodic inband message,
> -	 * Request PCIe clock in K1 page770_17[10:9] =01b
> -	 */
> -	e1e_rphy(hw, HV_PM_CTRL, &phy_data);
> -	phy_data &= 0xFBFF;
> -	phy_data |= HV_PM_CTRL_K1_CLK_REQ;
> -	e1e_wphy(hw, HV_PM_CTRL, phy_data);
> -
> -	/* Return back configuration
> -	 * 772_29[5] = 0 CS_Mode_Stay_In_K1
> -	 */
> -	e1e_rphy(hw, I217_CGFREG, &phy_data);
> -	phy_data &= 0xFFDF;
> -	e1e_wphy(hw, I217_CGFREG, phy_data);
> -
> -	/* Change the MAC/PHY interface to Kumeran
> -	 * Unforce the SMBus in PHY page769_23[0] = 0
> -	 * Unforce the SMBus in MAC CTRL_EXT[11] = 0
> -	 */
> -	e1e_rphy(hw, CV_SMB_CTRL, &phy_data);
> -	phy_data &= ~CV_SMB_CTRL_FORCE_SMBUS;
> -	e1e_wphy(hw, CV_SMB_CTRL, phy_data);
> -	mac_data = er32(CTRL_EXT);
> -	mac_data &= ~E1000_CTRL_EXT_FORCE_SMBUS;
> -	ew32(CTRL_EXT, mac_data);
> +	/* Enable the time synchronization clock */
> +	mac_data = er32(FEXTNVM7);
> +	mac_data &= ~BIT(31);
> +	mac_data |= BIT(0);
> +	ew32(FEXTNVM7, mac_data);
>   }
>   
>   static int e1000e_pm_freeze(struct device *dev)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
