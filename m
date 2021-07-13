Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 365103C7300
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 17:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E58E60A82;
	Tue, 13 Jul 2021 15:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bOA-RhtgWTC; Tue, 13 Jul 2021 15:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99C1B60802;
	Tue, 13 Jul 2021 15:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D10A1BF488
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 15:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 699194018D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 15:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLrYrDc2UmCh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jul 2021 15:16:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54E9D400CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 15:16:52 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id 21so19942685pfp.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 08:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=91peoSJ0PBLVlMtyFoEBCQE1ene1ra9TecasmLqGkDo=;
 b=Ujt0jnll95O35CTZEOpWcg4yfWcMuQuwe0SasFzttpPg4VRQzqgbhKARVA6XdzjTgO
 RuWANCnmV9eNyw3fjXCCtgr9pO9qPj3OrU9LpQQNDQeCCjiPUbcTVbbk+3oUrAozo4YO
 DMrHCYLuQjh3HH7Vxu4il0tuw3Yx/+pvSjQ1gQD7yqm/kpmpk7Zgch+hwNiRWMq1nt+w
 iImDrLFKZJIAuDDnn6nMBASlpJ43aNW6gzvOt5TBgUbVI8gNG8QUzg9O5tSWHtf3/GsK
 BBdbf0P3GEVMiExnDZ4CUpa9Qazrt/k2ouwzXmQI4M+FAmbN08BV/6tVuCfQy2zDzEmK
 xx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=91peoSJ0PBLVlMtyFoEBCQE1ene1ra9TecasmLqGkDo=;
 b=R1UJApcmmE3TJcZzz6TbWef/0gjrKYF6P2XpmITWjcqglZUWRZem9o2zPOm+1/2Wme
 wRUkamyDAuN841cWXPmnxpdw/4jb++3crJnmv9ubpbagPRsGmgJkMhw+uMfEeuhbX8nc
 MenldtAVI4ojgBPU7VQ9ssh5Cp3vHWYQkQOaROcqJ15G1x4MAWVsBHCSfb92XLuH4d29
 gi8jSkU6HCNtn4pKOlFmEe36Z3DL/wT07/gOVgmqXEZhH38chF6vRpqShN56PRdz1dhR
 KSQA4GZTaxL1MfMAW1J0ybCftgzBG9CBwkhpCI+DbXVITbmwQbtQzx3FUNx3s4INGp3G
 gYqQ==
X-Gm-Message-State: AOAM533loDPmkIM4m5tosjE6kPquMkdnE1WX2kL+on9o3yk+5GTTTb7I
 5UfZd1e3/vtIJvhdtRYMgOLiQA==
X-Google-Smtp-Source: ABdhPJxg5dN+rerGopytXEj4MtB9aUJVnLId/gt3Xt7NImr2eQDKjnIC+d7AwADKzbuTL0jJf907tg==
X-Received: by 2002:a65:568c:: with SMTP id v12mr4866454pgs.88.1626189411737; 
 Tue, 13 Jul 2021 08:16:51 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id g12sm3381550pjk.25.2021.07.13.08.16.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Jul 2021 08:16:51 -0700 (PDT)
To: Dongliang Mu <mudongliangabcd@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Shannon Nelson <shannon.nelson@intel.com>,
 Catherine Sullivan <catherine.sullivan@intel.com>
References: <20210713122028.463450-1-mudongliangabcd@gmail.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <58d854d9-a371-7689-d396-de1c26b34bfa@pensando.io>
Date: Tue, 13 Jul 2021 08:16:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210713122028.463450-1-mudongliangabcd@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix error handling code of
 label err_set_queues
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/13/21 5:20 AM, Dongliang Mu wrote:
> If i40e_up_complete fails in i40e_vsi_open, it goes to err_up_complete.
> The label err_set_queues has an issue: if the else branch is executed,
> there is no need to execute i40e_vsi_request_irq.

This is unnecessary: if the else branch is executed then control will 
goto err_setup_rx, skipping over i40e_up_complete().

sln

>
> Fix this by adding a condition of i40e_vsi_free_irq.
>
> Reported-by: Dongliang Mu (mudongliangabcd@gmail.com)
> Fixes: 9c04cfcd4aad ("i40e: Fix error handling in i40e_vsi_open")
> Fixes: c22e3c6c7912 ("i40e: prep vsi_open logic for non-netdev cases")
> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 861e59a350bd..ae54468c7001 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -8720,7 +8720,8 @@ int i40e_vsi_open(struct i40e_vsi *vsi)
>   err_up_complete:
>   	i40e_down(vsi);
>   err_set_queues:
> -	i40e_vsi_free_irq(vsi);
> +	if ((vsi->netdev) || (vsi->type == I40E_VSI_FDIR))
> +		i40e_vsi_free_irq(vsi);
>   err_setup_rx:
>   	i40e_vsi_free_rx_resources(vsi);
>   err_setup_tx:

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
