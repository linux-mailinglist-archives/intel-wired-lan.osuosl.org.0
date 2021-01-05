Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B61132EAAEC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 13:30:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72E5B868DA;
	Tue,  5 Jan 2021 12:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6Xr9j0t-iE0; Tue,  5 Jan 2021 12:30:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 550CF868B8;
	Tue,  5 Jan 2021 12:30:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B76F1BF47F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 12:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56B5685EBB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 12:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDIti-yXB9Kk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 12:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9648685E7C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 12:30:44 +0000 (UTC)
IronPort-SDR: pEMyrws4zZrotoZJknThWXGsnWCuPF81H9XQmAGgV3qMZf0hkqntISYljlHdm2biyn7FfB8G3R
 pXlJhAykXp2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="177250304"
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="177250304"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 04:30:43 -0800
IronPort-SDR: hIpDz3Nu+7aoUj84TXDPReVyppQdKGdtMIAA862s5t11hnJYCg/kngfSUx6rgJUPityYlvhCFE
 2TpVZwwXd1qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="350359967"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jan 2021 04:30:42 -0800
Date: Tue, 5 Jan 2021 13:21:59 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20210105122159.GB13327@ranger.igk.intel.com>
References: <20210104143628.5845-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104143628.5845-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Add support for 5Gbps
 cards
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 04, 2021 at 02:36:28PM +0000, Mateusz Palczewski wrote:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Make possible for the i40e driver to bind to the new
> V710 for 5GBASE-T cards.

Why 'net' is your target tree? it's not a fix.

> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 3 +++
>  drivers/net/ethernet/intel/i40e/i40e_devids.h | 4 +++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 1 +
>  3 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 45b90eb..05f1dd7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -27,6 +27,7 @@ i40e_status i40e_set_mac_type(struct i40e_hw *hw)
>  		case I40E_DEV_ID_QSFP_A:
>  		case I40E_DEV_ID_QSFP_B:
>  		case I40E_DEV_ID_QSFP_C:
> +		case I40E_DEV_ID_5G_BASE_T_BC:
>  		case I40E_DEV_ID_10G_BASE_T:
>  		case I40E_DEV_ID_10G_BASE_T4:
>  		case I40E_DEV_ID_10G_BASE_T_BC:
> @@ -4910,6 +4911,7 @@ i40e_status i40e_write_phy_register(struct i40e_hw *hw,
>  		status = i40e_write_phy_register_clause22(hw, reg, phy_addr,
>  							  value);
>  		break;
> +	case I40E_DEV_ID_5G_BASE_T_BC:
>  	case I40E_DEV_ID_10G_BASE_T:
>  	case I40E_DEV_ID_10G_BASE_T4:
>  	case I40E_DEV_ID_10G_BASE_T_BC:
> @@ -4947,6 +4949,7 @@ i40e_status i40e_read_phy_register(struct i40e_hw *hw,
>  		status = i40e_read_phy_register_clause22(hw, reg, phy_addr,
>  							 value);
>  		break;
> +	case I40E_DEV_ID_5G_BASE_T_BC:
>  	case I40E_DEV_ID_10G_BASE_T:
>  	case I40E_DEV_ID_10G_BASE_T4:
>  	case I40E_DEV_ID_10G_BASE_T_BC:
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devids.h b/drivers/net/ethernet/intel/i40e/i40e_devids.h
> index bf15a86..acd39ab 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devids.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devids.h
> @@ -23,8 +23,10 @@
>  #define I40E_DEV_ID_10G_BASE_T_BC	0x15FF
>  #define I40E_DEV_ID_10G_B		0x104F
>  #define I40E_DEV_ID_10G_SFP		0x104E
> +#define I40E_DEV_ID_5G_BASE_T_BC	0x101F
>  #define I40E_IS_X710TL_DEVICE(d) \
> -	((d) == I40E_DEV_ID_10G_BASE_T_BC)
> +	(((d) == I40E_DEV_ID_10G_BASE_T_BC) || \
> +	((d) == I40E_DEV_ID_5G_BASE_T_BC))
>  #define I40E_DEV_ID_KX_X722		0x37CE
>  #define I40E_DEV_ID_QSFP_X722		0x37CF
>  #define I40E_DEV_ID_SFP_X722		0x37D0
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 8c3e753..692c8bc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -71,6 +71,7 @@ static const struct pci_device_id i40e_pci_tbl[] = {
>  	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_A), 0},
>  	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_B), 0},
>  	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_C), 0},
> +	{PCI_VDEVICE(INTEL, I40E_DEV_ID_5G_BASE_T_BC), 0},
>  	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T), 0},
>  	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T4), 0},
>  	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T_BC), 0},
> -- 
> 2.17.1
> 
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
> Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
>  
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
