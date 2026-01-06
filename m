Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B790CF85E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 13:45:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13B9360B6F;
	Tue,  6 Jan 2026 12:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UoLH9HQFvMN4; Tue,  6 Jan 2026 12:45:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79DC560A9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767703502;
	bh=P3h4pPUgXcEbuck4HB373WT8r3jD774ogI5y0zA2Ek0=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=saKvPkKUxziPpEORlj9qDSrDWt4JiuHrvmdp4D6jhdtW6OW7yS0qpMJXTQagqNG4W
	 aZ4Fz+hmPJDak0VXe/kpufDMLJp8SVNkSKf3iIHCbTusi2gWabTnyc0wChspSAdoV5
	 YKz3XJUVEr7QfrhjH9Tji6TKC/lXPVtWGFsLbK0ilqViT0u0GH7A6pSzVem4c4rEkZ
	 9capb/GsNlPgl8s180IU/eAjyQvXBuRO6jCrzKgNUZxOdu+IGBA2lkZIa6zfnXf/pK
	 b3Zc3zH3YPElxeCOGqJhoxTBLTfqYbmjs1DfB04JQ9TGDztkiHgpOrL8UCCJtsx2VG
	 1T4kjCrtgtJiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79DC560A9D;
	Tue,  6 Jan 2026 12:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 55A02249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 12:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 472F360867
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 12:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0oFeQXj3r-lm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 12:44:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AEF3B6080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEF3B6080C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEF3B6080C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 12:44:57 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 26D2B61BBD244;
 Tue, 06 Jan 2026 13:44:42 +0100 (CET)
Message-ID: <5ff52b14-08dd-46f7-9148-70c04023d924@molgen.mpg.de>
Date: Tue, 6 Jan 2026 13:44:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20260106102153.1577396-1-vitaly.lifshits@intel.com>
 <20260106102153.1577396-2-vitaly.lifshits@intel.com>
Content-Language: en-US
Cc: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260106102153.1577396-2-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/2] e1000e: introduce new
 MAC type for PTP
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

Dear Vitaly,


Thank you for your patch.

Am 06.01.26 um 11:21 schrieb Vitaly Lifshits:
> Add new MAC type for panther-point devices for separating the device

Panther Point

> specific feature and flows.

Maybe state, that until now MTP was used?

> Additionally, remove the unsupported device IDs: 0x57B5, 0x57B6.

Why *unsupported*? Also, why not make it a separate commit?

> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
>   drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++++--------
>   4 files changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index aa08f397988e..63ebe00376f5 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -117,7 +117,8 @@ enum e1000_boards {
>   	board_pch_cnp,
>   	board_pch_tgp,
>   	board_pch_adp,
> -	board_pch_mtp
> +	board_pch_mtp,
> +	board_pch_ptp
>   };
>   
>   struct e1000_ps_page {
> @@ -527,6 +528,7 @@ extern const struct e1000_info e1000_pch_cnp_info;
>   extern const struct e1000_info e1000_pch_tgp_info;
>   extern const struct e1000_info e1000_pch_adp_info;
>   extern const struct e1000_info e1000_pch_mtp_info;
> +extern const struct e1000_info e1000_pch_ptp_info;
>   extern const struct e1000_info e1000_es2_info;
>   
>   void e1000e_ptp_init(struct e1000_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
> index fc8ed38aa095..c7ac599e5a7a 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -118,8 +118,6 @@ struct e1000_hw;
>   #define E1000_DEV_ID_PCH_ARL_I219_V24		0x57A1
>   #define E1000_DEV_ID_PCH_PTP_I219_LM25		0x57B3
>   #define E1000_DEV_ID_PCH_PTP_I219_V25		0x57B4
> -#define E1000_DEV_ID_PCH_PTP_I219_LM26		0x57B5
> -#define E1000_DEV_ID_PCH_PTP_I219_V26		0x57B6
>   #define E1000_DEV_ID_PCH_PTP_I219_LM27		0x57B7
>   #define E1000_DEV_ID_PCH_PTP_I219_V27		0x57B8
>   #define E1000_DEV_ID_PCH_NVL_I219_LM29		0x57B9
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 0ff8688ac3b8..eead80bba6f4 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -6208,3 +6208,23 @@ const struct e1000_info e1000_pch_mtp_info = {
>   	.phy_ops		= &ich8_phy_ops,
>   	.nvm_ops		= &spt_nvm_ops,
>   };
> +
> +const struct e1000_info e1000_pch_ptp_info = {
> +	.mac			= e1000_pch_ptp,
> +	.flags			= FLAG_IS_ICH
> +				  | FLAG_HAS_WOL
> +				  | FLAG_HAS_HW_TIMESTAMP
> +				  | FLAG_HAS_CTRLEXT_ON_LOAD
> +				  | FLAG_HAS_AMT
> +				  | FLAG_HAS_FLASH
> +				  | FLAG_HAS_JUMBO_FRAMES
> +				  | FLAG_APME_IN_WUC,
> +	.flags2			= FLAG2_HAS_PHY_STATS
> +				  | FLAG2_HAS_EEE,
> +	.pba			= 26,
> +	.max_hw_frame_size	= 9022,
> +	.get_variants		= e1000_get_variants_ich8lan,
> +	.mac_ops		= &ich8_mac_ops,
> +	.phy_ops		= &ich8_phy_ops,
> +	.nvm_ops		= &spt_nvm_ops,
> +};

Looks exactly the same as `e1000_pch_adp_info`. Should it be collapsed 
somehow?

> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index edb72054d0d9..46c3d5eb996e 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -55,6 +55,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
>   	[board_pch_tgp]		= &e1000_pch_tgp_info,
>   	[board_pch_adp]		= &e1000_pch_adp_info,
>   	[board_pch_mtp]		= &e1000_pch_mtp_info,
> +	[board_pch_ptp]		= &e1000_pch_ptp_info,
>   };
>   
>   struct e1000_reg_info {
> @@ -8006,14 +8007,12 @@ static const struct pci_device_id e1000_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_mtp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_LM24), board_pch_mtp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_V24), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM26), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V26), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29), board_pch_mtp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25), board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25), board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27), board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27), board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29), board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29), board_pch_ptp },
>   
>   	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
>   };

