Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C138E8132E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 15:20:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BBCB42177;
	Thu, 14 Dec 2023 14:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BBCB42177
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702563633;
	bh=ViLucHPXxq3AOa91udPEPY76wtbzoTruumxRRyrnlRE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FSn5/I8fVZ16RPOP8PjMB9zuI0BRxZwClIg54ZL0MbUlhI8CbjFm96C/1yGqiqLTy
	 P7l2w8a2Ef9C/RYvG06kirk4SndquDYFNP11ySOCAIpLR2RyZ7Jam6TVvmj7RderVC
	 0RQm3y8RyQUup/y36DiSJXmZj038yPBXLQvmc398xjLG1U+U6Lfps6io2WhKPUlOEQ
	 Rw4ZVMwg091SgxSm8+sMRAYfRJZkEaQ3lebF0Wwa/7pRaUsCF4GoN18J9hgtQ8nCKt
	 0Qsx83DkiCMRY/yxtokk43stxVK4xVjI80sqTV49dDrVxAsszg7vOeRwF2HLLsBYHL
	 LenOdnbNKFXSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbVaMIfYNuR5; Thu, 14 Dec 2023 14:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D977442176;
	Thu, 14 Dec 2023 14:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D977442176
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4965A1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2134460ED0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2134460ED0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSUX8lcVQPKW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 14:20:25 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76A1160F54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76A1160F54
Received: from [141.14.220.40] (g40.guest.molgen.mpg.de [141.14.220.40])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 35D8661E5FE04;
 Thu, 14 Dec 2023 15:20:07 +0100 (CET)
Message-ID: <ed0ebf46-1c24-45d1-a841-7733a3b70966@molgen.mpg.de>
Date: Thu, 14 Dec 2023 15:20:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20231214141012.224894-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231214141012.224894-1-aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: add trace events
 related to SFP module IOCTLs
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your patch.


Am 14.12.23 um 15:10 schrieb Aleksandr Loktionov:
> Add trace events related to SFP module IOCTLs for troubleshooting.

Maybe list the three events? Maybe even a usage example.

> Riewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   src/CORE/i40e_ethtool.c |  5 +++++
>   src/CORE/i40e_trace.h   | 18 ++++++++++++++++++
>   2 files changed, 23 insertions(+)
> 
> diff --git a/src/CORE/i40e_ethtool.c b/src/CORE/i40e_ethtool.c
> index 0838566..e9d9d4b 100644
> --- a/src/CORE/i40e_ethtool.c
> +++ b/src/CORE/i40e_ethtool.c
> @@ -1057,6 +1057,7 @@ static int i40e_get_link_ksettings(struct net_device *netdev,
>   	ethtool_link_ksettings_zero_link_mode(ks, supported);
>   	ethtool_link_ksettings_zero_link_mode(ks, advertising);
>   
> +	i40e_trace(ioctl_get_link_ksettings, pf, hw_link_info->link_info);
>   	if (link_up)
>   		i40e_get_settings_link_up(hw, ks, netdev, pf);
>   	else
> @@ -7219,9 +7220,12 @@ static int i40e_get_module_info(struct net_device *netdev,
>   		modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
>   		break;
>   	default:
> +		i40e_trace(ioctl_get_module_info, pf, ~0UL);
>   		netdev_dbg(vsi->netdev, "SFP module type unrecognized or no SFP connector used.\n");

Is it useful, if there is a debug print already?


Kind regards,

Paul


>   		return -EOPNOTSUPP;
>   	}
> +	i40e_trace(ioctl_get_module_info, pf, (((u64)modinfo->type) << 32) |
> +		   modinfo->eeprom_len);
>   	return 0;
>   }
>   
> @@ -7244,6 +7248,7 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
>   	u32 value = 0;
>   	int i;
>   
> +	i40e_trace(ioctl_get_module_eeprom, pf, ee ? ee->len : 0U);
>   	if (!ee || !ee->len || !data)
>   		return -EINVAL;
>   
> diff --git a/src/CORE/i40e_trace.h b/src/CORE/i40e_trace.h
> index cac0f7c..f54fc36 100644
> --- a/src/CORE/i40e_trace.h
> +++ b/src/CORE/i40e_trace.h
> @@ -428,6 +428,24 @@ DEFINE_EVENT(
>   
>   	TP_ARGS(pf, val));
>   
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_get_module_info,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_get_module_eeprom,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
> +DEFINE_EVENT(
> +	i40e_ioctl_template, i40e_ioctl_get_link_ksettings,
> +	TP_PROTO(struct i40e_pf *pf, u64 val),
> +
> +	TP_ARGS(pf, val));
> +
>   DECLARE_EVENT_CLASS(
>   	i40e_nvmupd_template,
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
