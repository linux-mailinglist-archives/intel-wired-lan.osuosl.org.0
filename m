Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB0B95B371
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 13:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8989560B31;
	Thu, 22 Aug 2024 11:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C91y3lEp1Z7A; Thu, 22 Aug 2024 11:06:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1A9D60B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724324804;
	bh=TdyPobpTBjVFt6/6esqIiyYFXDrac+erd9XC4liV9EM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FWsiuH7KxNVri5j8qY5dI6eXFs/Hz9f/p3RSEYwEj5E3YA6rxzLgdpBtXy5PIdofC
	 9TBy4Zx7EWzDgh2mNCxCJdlwsxu/uliX8CjFzYBt0eYUbF7/6UPwZMbGz+7nc0jJ+T
	 bA3oiFblwzARr8svMDctvji/d/0MV6hmMg+jeASV6FTC2TSLwwV2m8wz3w34QII4c6
	 5Sp13zQ7qezFaEa+hsBA/FyNdt5oQMORH5sVAMDT2KUsDLl5Ko+kM72TBG4wYNFq9F
	 Pra0KfDi4Xz4MvLv3NeiQ4Yf4xbIQKTqcFKIVGu5vAsilpS3AwQaR40ksLiCeTiy4S
	 cH/1klVDvyezg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1A9D60B36;
	Thu, 22 Aug 2024 11:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D71E61BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CEB0460B2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:06:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tM7qzeq-k33H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 11:06:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 787E960B2C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 787E960B2C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 787E960B2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:06:39 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EDE7761E5FE05;
 Thu, 22 Aug 2024 13:06:23 +0200 (CEST)
Message-ID: <1057cf31-8da9-40b7-8ac7-418da7115b87@molgen.mpg.de>
Date: Thu, 22 Aug 2024 13:06:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240822103320.2302092-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240822103320.2302092-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: change I219
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


Thank you very much for the improved version with the updated commit 
message.

Am 22.08.24 um 12:33 schrieb Vitaly Lifshits:
> Sporadic issues have been observed on I219 (19) devices.

It’d be great if you could be specific and describe them, despite they 
are fixed with the patch.


Kind regards,

Paul


> It was found that these devices have hardware more closely related
> to ADP than MTP and the issues were caused by taking MTP-specific
> flows.>
> Change the MAC and board types of these devices from MTP to ADP to
> correctly reflect the LAN hardware, and flows, of these devices.
> 
> Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: elaborate on the meanings of this change
> v1: initial version
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

