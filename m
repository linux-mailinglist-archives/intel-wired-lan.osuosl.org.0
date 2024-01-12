Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A8D82C116
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 14:48:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 757EF42D37;
	Fri, 12 Jan 2024 13:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 757EF42D37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705067313;
	bh=bKzyUT8kGNzu7d79B40L0Jzx/4hfcpufq6SQv29IRgA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vzboX60K8nq4Z/4GoPAfaORj8Nu1lv3HB1GhYJ+hbY2p5oALpesNIQQZLGFeseEgj
	 hMgpJoXZ5QDO9pe6o4n+rn9vP/O7sWrVAO3jf+3LbawvHnW1jaBi5blElF2i0uHgmm
	 HgWZrwNm1EQkO38o4pzQcodcDpdtchj6pONP6P6O19QhLQmYh3FTtMuGrc5AHX5df7
	 uRu87evc84aDVUA27AahBGxhVSfKq3KC1K6R2NdcTLo7opLUtQcZdaZ2nJ7n2Vc9Nc
	 aPRcFgDWW714OTrpNVGEIYcIYeDaG2L4zabLq19vTp6WkTevprlUrigWqa0FwoXSlp
	 C5P53kdC+TIog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a34e4Z3CsL3a; Fri, 12 Jan 2024 13:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2106842CE8;
	Fri, 12 Jan 2024 13:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2106842CE8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC92F1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 13:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1D6180E8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 13:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1D6180E8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zgzXEG4R0Fn0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 13:48:25 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0DD380AC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 13:48:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0DD380AC3
Received: from [192.168.0.6] (ip5f5af452.dynamic.kabel-deutschland.de
 [95.90.244.82])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 375FE61E5FE03;
 Fri, 12 Jan 2024 14:46:43 +0100 (CET)
Message-ID: <2a58fed3-1fa9-47eb-b475-3f7c3b291376@molgen.mpg.de>
Date: Fri, 12 Jan 2024 14:46:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kunwu Chan <chentao@kylinos.cn>
References: <20240112025853.123048-1-chentao@kylinos.cn>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240112025853.123048-1-chentao@kylinos.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix string truncation
 warnings in igb_set_fw_version
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>, przemyslaw.kitszel@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Kunwu,


Thank you for your patch. I have some minor nits.

Am 12.01.24 um 03:58 schrieb Kunwu Chan:
> 'commit 1978d3ead82c ("intel: fix string truncation warnings")'

Please don’t enclose it in '': Commit 1978d3ead82c ("intel: fix string 
truncation warnings")

> fix '-Wformat-truncation=' warnings in igb_main.c by using kasprintf.

fix*es*

> kasprintf() returns a pointer to dynamically allocated memory
> which can be NULL upon failure.

Maybe paste one warning message.

> Fix this warning by using a larger space for adapter->fw_version,
> and then fall back and continue to use snprintf.
> 
> Fixes: 1978d3ead82c ("intel: fix string truncation warnings")
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>


Kind regards,

Paul Menzel


> ---
> v2: Fall back to use snprintf and a larger space,as suggested by
> https://lore.kernel.org/all/20231212132637.1b0fb8aa@kernel.org/
> ---
>   drivers/net/ethernet/intel/igb/igb.h      |  2 +-
>   drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++-----------
>   2 files changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index a2b759531cb7..3c2dc7bdebb5 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -637,7 +637,7 @@ struct igb_adapter {
>   		struct timespec64 period;
>   	} perout[IGB_N_PEROUT];
>   
> -	char fw_version[32];
> +	char fw_version[48];
>   #ifdef CONFIG_IGB_HWMON
>   	struct hwmon_buff *igb_hwmon_buff;
>   	bool ets;
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index b2295caa2f0a..ce762d77d2c1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3069,7 +3069,6 @@ void igb_set_fw_version(struct igb_adapter *adapter)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
>   	struct e1000_fw_version fw;
> -	char *lbuf;
>   
>   	igb_get_fw_version(hw, &fw);
>   
> @@ -3077,34 +3076,36 @@ void igb_set_fw_version(struct igb_adapter *adapter)
>   	case e1000_i210:
>   	case e1000_i211:
>   		if (!(igb_get_flash_presence_i210(hw))) {
> -			lbuf = kasprintf(GFP_KERNEL, "%2d.%2d-%d",
> -					 fw.invm_major, fw.invm_minor,
> -					 fw.invm_img_type);
> +			snprintf(adapter->fw_version,
> +				 sizeof(adapter->fw_version),
> +				 "%2d.%2d-%d",
> +				 fw.invm_major, fw.invm_minor,
> +				 fw.invm_img_type);
>   			break;
>   		}
>   		fallthrough;
>   	default:
>   		/* if option rom is valid, display its version too */
>   		if (fw.or_valid) {
> -			lbuf = kasprintf(GFP_KERNEL, "%d.%d, 0x%08x, %d.%d.%d",
> -					 fw.eep_major, fw.eep_minor,
> -					 fw.etrack_id, fw.or_major, fw.or_build,
> -					 fw.or_patch);
> +			snprintf(adapter->fw_version,
> +				 sizeof(adapter->fw_version),
> +				 "%d.%d, 0x%08x, %d.%d.%d",
> +				 fw.eep_major, fw.eep_minor, fw.etrack_id,
> +				 fw.or_major, fw.or_build, fw.or_patch);
>   		/* no option rom */
>   		} else if (fw.etrack_id != 0X0000) {
> -			lbuf = kasprintf(GFP_KERNEL, "%d.%d, 0x%08x",
> -					 fw.eep_major, fw.eep_minor,
> -					 fw.etrack_id);
> +			snprintf(adapter->fw_version,
> +				 sizeof(adapter->fw_version),
> +				 "%d.%d, 0x%08x",
> +				 fw.eep_major, fw.eep_minor, fw.etrack_id);
>   		} else {
> -			lbuf = kasprintf(GFP_KERNEL, "%d.%d.%d", fw.eep_major,
> -					 fw.eep_minor, fw.eep_build);
> +			snprintf(adapter->fw_version,
> +				 sizeof(adapter->fw_version),
> +				 "%d.%d.%d",
> +				 fw.eep_major, fw.eep_minor, fw.eep_build);
>   		}
>   		break;
>   	}
> -
> -	/* the truncate happens here if it doesn't fit */
> -	strscpy(adapter->fw_version, lbuf, sizeof(adapter->fw_version));
> -	kfree(lbuf);
>   }
>   
>   /**
