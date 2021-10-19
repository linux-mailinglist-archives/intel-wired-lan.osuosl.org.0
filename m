Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72639433C08
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 18:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BC0380DBD;
	Tue, 19 Oct 2021 16:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhanTZrqSHm5; Tue, 19 Oct 2021 16:24:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D69BF80DD9;
	Tue, 19 Oct 2021 16:24:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95AA51BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 16:24:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 828DF60B79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 16:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1au1VVX7PvPq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 16:24:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 269C8606B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 16:24:06 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef80.dynamic.kabel-deutschland.de
 [95.90.239.128])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E735361E5FE00;
 Tue, 19 Oct 2021 18:24:03 +0200 (CEST)
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20211019152758.58277-1-anthony.l.nguyen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c2e59ebe-4a7b-b2d7-f15d-759ad26c006b@molgen.mpg.de>
Date: Tue, 19 Oct 2021 18:24:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211019152758.58277-1-anthony.l.nguyen@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Tony,


Am 19.10.21 um 17:27 schrieb Tony Nguyen:

Please mention E810 in the git commit message summary:

> ice: Add missing E810 device ids


> As part of support for E810 XXV devices, some device ids were > inadvertently left out. Add those missing ids.
Please mention the source of these IDs.


Kind regards,

Paul


> Fixes: 195fb97766da ("ice: add additional E810 device id")
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 2 ++
>   drivers/net/ethernet/intel/ice/ice_devids.h | 4 ++++
>   drivers/net/ethernet/intel/ice/ice_main.c   | 2 ++
>   3 files changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2fb81e359cdf..df5ad4de1f00 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -25,6 +25,8 @@ static enum ice_status ice_set_mac_type(struct ice_hw *hw)
>   	case ICE_DEV_ID_E810C_BACKPLANE:
>   	case ICE_DEV_ID_E810C_QSFP:
>   	case ICE_DEV_ID_E810C_SFP:
> +	case ICE_DEV_ID_E810_XXV_BACKPLANE:
> +	case ICE_DEV_ID_E810_XXV_QSFP:
>   	case ICE_DEV_ID_E810_XXV_SFP:
>   		hw->mac_type = ICE_MAC_E810;
>   		break;
> diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
> index 9d8194671f6a..ef4392e6e244 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devids.h
> +++ b/drivers/net/ethernet/intel/ice/ice_devids.h
> @@ -21,6 +21,10 @@
>   #define ICE_DEV_ID_E810C_QSFP		0x1592
>   /* Intel(R) Ethernet Controller E810-C for SFP */
>   #define ICE_DEV_ID_E810C_SFP		0x1593
> +/* Intel(R) Ethernet Controller E810-XXV for backplane */
> +#define ICE_DEV_ID_E810_XXV_BACKPLANE	0x1599
> +/* Intel(R) Ethernet Controller E810-XXV for QSFP */
> +#define ICE_DEV_ID_E810_XXV_QSFP	0x159A
>   /* Intel(R) Ethernet Controller E810-XXV for SFP */
>   #define ICE_DEV_ID_E810_XXV_SFP		0x159B
>   /* Intel(R) Ethernet Connection E823-C for backplane */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 94037881bfd8..06fa93e597fb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5020,6 +5020,8 @@ static const struct pci_device_id ice_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE), 0 },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP), 0 },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP), 0 },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_BACKPLANE), 0 },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_QSFP), 0 },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP), 0 },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE), 0 },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP), 0 },
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
