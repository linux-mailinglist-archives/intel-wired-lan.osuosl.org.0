Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE699B9D86
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 07:54:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF898410D7;
	Sat,  2 Nov 2024 06:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Wb1YYtlVdJx; Sat,  2 Nov 2024 06:54:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E48FB40B8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730530448;
	bh=tbHHu1F2Z76KbBx7HyGk4i8jHpTi9hemBRlpZPp/PG0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B45BQCUDJ7Z2B3RFlCcXOzrMaEMeDDpqx+6E5LthmR0Sltrth78dFiJlMkkfvTDDh
	 DiNmNZST2vHZNHwoMxaBmyZ9rPJDuY4ycmo3Fi/ozkfOS3ADWPQhXjfiSzMxxPMFA0
	 sQ01/LpMzkY7qrjio3H3xpDv9QagkeA8W228aexLXeUpH+Q80ZtGgZfppuuoDD20uB
	 Fug5oY3K/wIVveMLmpehRRczcrRdjc7L6TTI9on/IkSMTIlkKL6j5LhlERRPwQ22Dg
	 cztAviZMe4/hDKKxETwwQcA3a/TNzlNPkii0xzhP5D76Y1Gzntfr8m2e09DC8tKfsN
	 tuRzIUiC9x+MA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E48FB40B8F;
	Sat,  2 Nov 2024 06:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 58948979
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 06:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3885A410D2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 06:54:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57hLx2iVQytp for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2024 06:54:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 050D4410C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 050D4410C3
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 050D4410C3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 06:54:01 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af2cf.dynamic.kabel-deutschland.de
 [95.90.242.207])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 844B461E5FE05;
 Sat, 02 Nov 2024 07:53:44 +0100 (CET)
Message-ID: <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
Date: Sat, 2 Nov 2024 07:53:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Yifei Liu <yifei.l.liu@oracle.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
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

Dear Jacob,


Thank you for the patch.

Am 02.11.24 um 00:05 schrieb Jacob Keller:
> The ixgbe PF driver logs an info message when a VF attempts to negotiate an
> API version which it does not support:
> 
>    VF 0 requested invalid api version 6
> 
> The ixgbevf driver attempts to load with mailbox API v1.5, which is
> required for best compatibility with other hosts such as the ESX VMWare PF.
> 
> The Linux PF only supports API v1.4, and does not currently have support
> for the v1.5 API.
> 
> The logged message can confuse users, as the v1.5 API is valid, but just
> happens to not currently be supported by the Linux PF.
> 
> Downgrade the info message to a debug message, and fix the language to
> use 'unsupported' instead of 'invalid' to improve message clarity.
> 
> Long term, we should investigate whether the improvements in the v1.5 API
> make sense for the Linux PF, and if so implement them properly. This may
> require yet another API version to resolve issues with negotiating IPSEC
> offload support.

It’d be great if you described the exact test setup for how to reproduce it.

> Reported-by: Yifei Liu <yifei.l.liu@oracle.com>

Do you have an Link: for this report?

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_common.h | 2 ++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c  | 2 +-
>   2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> index 6493abf189de..6639069ad528 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> @@ -194,6 +194,8 @@ u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg);
>   	dev_err(&adapter->pdev->dev, format, ## arg)
>   #define e_dev_notice(format, arg...) \
>   	dev_notice(&adapter->pdev->dev, format, ## arg)
> +#define e_dbg(msglvl, format, arg...) \
> +	netif_dbg(adapter, msglvl, adapter->netdev, format, ## arg)
>   #define e_info(msglvl, format, arg...) \
>   	netif_info(adapter, msglvl, adapter->netdev, format, ## arg)
>   #define e_err(msglvl, format, arg...) \
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index e71715f5da22..20415c1238ef 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -1047,7 +1047,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
>   		break;
>   	}
>   
> -	e_info(drv, "VF %d requested invalid api version %u\n", vf, api);
> +	e_dbg(drv, "VF %d requested unsupported api version %u\n", vf, api);

Is there a way to translate `api` to the API version scheme used in the 
commit message? So, 1.5 instead of 6? Maybe also add, that only the v1.4 
API is supported?

>   
>   	return -1;
>   }


Kind regards,

Paul
