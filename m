Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B57953361
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 16:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6C4D40881;
	Thu, 15 Aug 2024 14:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jx8yGEJcQLVF; Thu, 15 Aug 2024 14:16:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5721408DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723731386;
	bh=qERHidEXfphJSdzBW+ptBsNsrjKp/p0URs8j7wwSF1g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pEUDTtCViLYtTR2RFn313hgoBb+vgsrqiRGeu5OX/HaHNUIixpvjgeJ4PMoROWj5B
	 YobkY8uB6EHj99gPf3mVFr3iKTIWvGIQ99axSpq3o2245sX2tPnfuGTL88uza/V+3k
	 yZsrN+Izr7Tyj5w57A1QmCMJ+sPzHDtA3QlHhn5ZpHik5sw5uLBZbUSIttoI7NkUqv
	 VMTN325SUSidHIWL0raZH/8hnn38DN7ObPaWFXNrjYFDlk5UdZKw8Ym1rMVInlg82g
	 trXX5XkzJzpCJVuO3HBA5zQAtikVBL8Alu5X0uQn2uQLpZZP2OAhDqcr8g7xqZWHix
	 EHNbxEiJ+aQNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5721408DB;
	Thu, 15 Aug 2024 14:16:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFC591BF591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 14:16:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC7A4408DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 14:16:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GHL2THSYrKwZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 14:16:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B86B40148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B86B40148
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B86B40148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 14:16:21 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 68A2961E5FE05;
 Thu, 15 Aug 2024 16:16:04 +0200 (CEST)
Message-ID: <ca7af4aa-74bb-4e19-9121-141c3799e22a@molgen.mpg.de>
Date: Thu, 15 Aug 2024 16:16:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240815131144.2953402-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240815131144.2953402-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change I219
 (19) devices to ADP
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for the patch.


Am 15.08.24 um 15:11 schrieb Vitaly Lifshits:
> Change the MAC and board types of I219 (19) devices from MTP to ADP.
> These devices have hardware more closely related to ADP than MTP.

According to what metric are they more similar to ADP?

Do you have any bug reports or test system with problems?

> Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")

So, it’s present since v6.2-rc1 from December 2022. Why change it now?


Kind regards,

Paul


> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h     | 4 ++--
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
> index 4b6e7536170a..fc8ed38aa095 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -108,8 +108,8 @@ struct e1000_hw;
>   #define E1000_DEV_ID_PCH_RPL_I219_V22		0x0DC8
>   #define E1000_DEV_ID_PCH_MTP_I219_LM18		0x550A
>   #define E1000_DEV_ID_PCH_MTP_I219_V18		0x550B
> -#define E1000_DEV_ID_PCH_MTP_I219_LM19		0x550C
> -#define E1000_DEV_ID_PCH_MTP_I219_V19		0x550D
> +#define E1000_DEV_ID_PCH_ADP_I219_LM19		0x550C
> +#define E1000_DEV_ID_PCH_ADP_I219_V19		0x550D
>   #define E1000_DEV_ID_PCH_LNP_I219_LM20		0x550E
>   #define E1000_DEV_ID_PCH_LNP_I219_V20		0x550F
>   #define E1000_DEV_ID_PCH_LNP_I219_LM21		0x5510
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 360ee26557f7..80f8e23bc4f5 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7896,10 +7896,10 @@ static const struct pci_device_id e1000_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_adp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), board_pch_adp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), board_pch_adp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM19), board_pch_adp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V19), board_pch_adp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_mtp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_mtp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_mtp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_mtp },
>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_mtp },

