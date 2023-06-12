Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 193D772B809
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 08:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59D6B417A7;
	Mon, 12 Jun 2023 06:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59D6B417A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686551066;
	bh=e+l86KtnGABBd56wCXG61Rz+nK4o1jigIadDPhJnONI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KciSfDjcw/9w5+1qHb1cyHO31HjBH6XYYXchDSLDsJDhxYp6jtq2LJTCle6n6JalA
	 2A50d2OU2JXLfLPy1FEBdoStyWLJC/Zf2Cv4f3lnJHRSP5pOQ6KTAnVuiTVe1znff/
	 T3+X0V2gNSOD1isquy2Yrl4yib4KUqhPpKpIsTjdAybO8Usrisoyiodjew9961buH3
	 4u6UtPHyVzcV+E0EloTtOmvA8v+eBWoUFb/JAiT0mIpKDj1+YQ/cva3PW3iB34VytO
	 rAUPPz7YRhHFQ+Uo7oB3ImmebAxrFIznFGEHhuHWmOWEz8fj8Zg1Ml7yMqfagbROhz
	 uGX7B8OTvxP0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDDqjSlyuhbo; Mon, 12 Jun 2023 06:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0DCC41687;
	Mon, 12 Jun 2023 06:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0DCC41687
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C325F1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 06:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98CC841687
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 06:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98CC841687
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7VOzOVOwZqYz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 06:24:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B08B741621
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B08B741621
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 06:24:17 +0000 (UTC)
Received: from [192.168.0.185] (ip5f5aee35.dynamic.kabel-deutschland.de
 [95.90.238.53])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3A68161EA1BFF;
 Mon, 12 Jun 2023 08:23:27 +0200 (CEST)
Message-ID: <77eaaa44-25af-84c4-91ec-c7b5ec2f6f64@molgen.mpg.de>
Date: Mon, 12 Jun 2023 08:23:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <e86a1ab7b450462a1e92264dccb5a5855546e384.1686516193.git.christophe.jaillet@wanadoo.fr>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <e86a1ab7b450462a1e92264dccb5a5855546e384.1686516193.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Remove managed memory
 usage in ice_get_fw_log_cfg()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Christophe,


Thank you for the patch.

Am 11.06.23 um 22:44 schrieb Christophe JAILLET:
> There is no need to use managed memory allocation here. The memory is
> released at the end of the function.
> 
> You kzalloc()/kfree() to simplify the code.

s/You/Use/?


Kind regards,

Paul


> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index eb2dc0983776..4b799a5d378a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -834,7 +834,7 @@ static int ice_get_fw_log_cfg(struct ice_hw *hw)
>   	u16 size;
>   
>   	size = sizeof(*config) * ICE_AQC_FW_LOG_ID_MAX;
> -	config = devm_kzalloc(ice_hw_to_dev(hw), size, GFP_KERNEL);
> +	config = kzalloc(size, GFP_KERNEL);
>   	if (!config)
>   		return -ENOMEM;
>   
> @@ -857,7 +857,7 @@ static int ice_get_fw_log_cfg(struct ice_hw *hw)
>   		}
>   	}
>   
> -	devm_kfree(ice_hw_to_dev(hw), config);
> +	kfree(config);
>   
>   	return status;
>   }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
