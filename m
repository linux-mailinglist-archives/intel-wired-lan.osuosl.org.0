Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F4EABA4E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 22:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C054682C3C;
	Fri, 16 May 2025 20:58:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H6CGw2fz0SLt; Fri, 16 May 2025 20:58:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09991829FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747429084;
	bh=3t/wxED51SAiRAH//BzhApWVEXY0SUrukSp/7lJ9QHo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YRQi+6BGlV7xEwnmzeotxjzToCxnMAnDxVDb65JuEMzSSBSLQZctPMZ/Lm4K7JpiB
	 hHkgw3M6a2MWVmOEi4uZqS4bw/hETbhgdw6lBcSyetXV8SUenAmlgMn4BISUdVu43D
	 3K3X5DaGMy4WbVds+symNCwpKdJtuhNFZ8oqgcJhyZoi8P/C+BneNxkgYeqjKeeGuT
	 WG9FLkZfwVNmo66X3QaAoantSaIjREbeKb4i0fb+4taArYQnGmaVR33y1XKOXUkqc/
	 U7FRrSCk6Ti0gCKoNMKMwdC9XgPdmdTelMbodEGGZ/1SEd+JW8vGPB63MzA9JbFoSK
	 BUWYw87FoRBow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09991829FE;
	Fri, 16 May 2025 20:58:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 020D21142
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 20:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E71E160AA2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 20:58:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mqYXD4RHCI1d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 20:58:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 466DE6000A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 466DE6000A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 466DE6000A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 20:57:59 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af287.dynamic.kabel-deutschland.de
 [95.90.242.135])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2ACF461EA1BD4;
 Fri, 16 May 2025 22:57:34 +0200 (CEST)
Message-ID: <8c8999a7-d586-4bc6-9912-b088d9c3049f@molgen.mpg.de>
Date: Fri, 16 May 2025 22:57:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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

Dear Dawid,


Thank you for your patch.

Am 14.05.25 um 12:46 schrieb Dawid Osuchowski:
> E835 is an enhanced version of the E830.
> It continues to use the same set of commands, registers and interfaces
> as other devices in the 800 Series.
> 
> Following device IDs are added:
> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP

Should you resend, it’d be great, if you added the datasheet name, where 
these id’s are present.

> Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c |  9 +++++++++
>   drivers/net/ethernet/intel/ice/ice_devids.h | 18 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_main.c   |  9 +++++++++
>   3 files changed, 36 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 6e38d46c2c51..010ad09b3200 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -171,6 +171,15 @@ static int ice_set_mac_type(struct ice_hw *hw)
>   	case ICE_DEV_ID_E830_XXV_QSFP:
>   	case ICE_DEV_ID_E830C_SFP:
>   	case ICE_DEV_ID_E830_XXV_SFP:
> +	case ICE_DEV_ID_E835CC_BACKPLANE:
> +	case ICE_DEV_ID_E835CC_QSFP56:
> +	case ICE_DEV_ID_E835CC_SFP:
> +	case ICE_DEV_ID_E835C_BACKPLANE:
> +	case ICE_DEV_ID_E835C_QSFP:
> +	case ICE_DEV_ID_E835C_SFP:
> +	case ICE_DEV_ID_E835_L_BACKPLANE:
> +	case ICE_DEV_ID_E835_L_QSFP:
> +	case ICE_DEV_ID_E835_L_SFP:
>   		hw->mac_type = ICE_MAC_E830;
>   		break;
>   	default:
> diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
> index 34fd604132f5..7761c3501174 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devids.h
> +++ b/drivers/net/ethernet/intel/ice/ice_devids.h
> @@ -36,6 +36,24 @@
>   #define ICE_DEV_ID_E830_XXV_QSFP	0x12DD
>   /* Intel(R) Ethernet Controller E830-XXV for SFP */
>   #define ICE_DEV_ID_E830_XXV_SFP		0x12DE
> +/* Intel(R) Ethernet Controller E835-CC for backplane */
> +#define ICE_DEV_ID_E835CC_BACKPLANE	0x1248
> +/* Intel(R) Ethernet Controller E835-CC for QSFP */
> +#define ICE_DEV_ID_E835CC_QSFP56	0x1249
> +/* Intel(R) Ethernet Controller E835-CC for SFP */
> +#define ICE_DEV_ID_E835CC_SFP		0x124A
> +/* Intel(R) Ethernet Controller E835-C for backplane */
> +#define ICE_DEV_ID_E835C_BACKPLANE	0x1261
> +/* Intel(R) Ethernet Controller E835-C for QSFP */
> +#define ICE_DEV_ID_E835C_QSFP		0x1262
> +/* Intel(R) Ethernet Controller E835-C for SFP */
> +#define ICE_DEV_ID_E835C_SFP		0x1263
> +/* Intel(R) Ethernet Controller E835-L for backplane */
> +#define ICE_DEV_ID_E835_L_BACKPLANE	0x1265
> +/* Intel(R) Ethernet Controller E835-L for QSFP */
> +#define ICE_DEV_ID_E835_L_QSFP		0x1266
> +/* Intel(R) Ethernet Controller E835-L for SFP */
> +#define ICE_DEV_ID_E835_L_SFP		0x1267
>   /* Intel(R) Ethernet Controller E810-C for backplane */
>   #define ICE_DEV_ID_E810C_BACKPLANE	0x1591
>   /* Intel(R) Ethernet Controller E810-C for QSFP */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index c4264984cfcb..5c941f4426d1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5906,6 +5906,15 @@ static const struct pci_device_id ice_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_QSFP), },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_SFP), },
>   	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_SFP), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_BACKPLANE), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_QSFP56), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_SFP), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_BACKPLANE), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_QSFP), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_SFP), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_BACKPLANE), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_QSFP), },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_SFP), },
>   	/* required last entry */
>   	{}
>   };


Kind regards,

Paul
