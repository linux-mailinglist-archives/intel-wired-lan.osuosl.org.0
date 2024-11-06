Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C59EB9BF9BF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 00:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B3C48113C;
	Wed,  6 Nov 2024 23:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DvRHp1KrLU_H; Wed,  6 Nov 2024 23:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9076E8124F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730934849;
	bh=klCRqaCZj5BtmsDSkG9gs15OXajFGAsZztSXD6mEQH8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tkuOao2Q4g+xnCCsVekLwOT0ypPcmE4uStLZQYF0vl9omnrWkMxMBQS1PVW5EQLWt
	 xAPe29dS6iqKv6S2sKLHu0Ohq8v1gM30gy3IUDaidq7t76P3dS6q3gQxRmdQdzy69h
	 kHukjeB2yELlmvd1uG/8/nNhhQl62OAEJgUe7T8A06g6iWVr2AAWsKRJvRMhtN3UAT
	 jtpv3hmCNc1+EnVQ5Ih9WeDbNlDlKgz/TyiwYmYsuTnkE35sjBpxOzE1DfYmDkwdMo
	 HFcUBr7a+b9xsi0184594YU5dB8ENs5FABUYXeIM2zbI0EnBMhoSAovXtfj5O7XzxG
	 bZqgv79IbYu7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9076E8124F;
	Wed,  6 Nov 2024 23:14:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A822E3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 23:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8936F405D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 23:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MOIwqTxOEOfa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 23:14:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 871DD406EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 871DD406EC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 871DD406EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 23:14:05 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5aedfa.dynamic.kabel-deutschland.de
 [95.90.237.250])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F3EAB61E5FE05;
 Thu, 07 Nov 2024 00:13:43 +0100 (CET)
Message-ID: <4ee8f886-40ed-46bc-9d11-1619d64f7875@molgen.mpg.de>
Date: Thu, 7 Nov 2024 00:13:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christopher S M Hall <christopher.s.hall@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mor Bar-Gabay <morx.bar.gabay@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
 <20241106184722.17230-3-christopher.s.hall@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241106184722.17230-3-christopher.s.hall@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] igc: Lengthen the
 hardware retry time to prevent timeouts
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

Dear Christopher,


Thank you for the patch.

I’d use the more specific summary/title below:

igc: Lengthen hardware retry time to 4 μs to prevent timeouts

Am 06.11.24 um 19:47 schrieb Christopher S M Hall:
> Lengthen the hardware retry timer to four microseconds.
> 
> The i225/i226 hardware retries if it receives an inappropriate response
> from the upstream device. If the device retries too quickly, the root
> port does not respond.

Any idea why? Is it documented somewhere?

> The issue can be reproduced with the following:
> 
> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
> 
> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
> quickly reproduce the issue.
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>    fails

Why four microseconds, and not some other value?

> Fixes: 6b8aa753a9f9 ("igc: Decrease PTM short interval from 10 us to 1 us")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
> Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 2ff292f5f63b..84521a4c35b4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -574,7 +574,7 @@
>   #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
>   #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
>   
> -#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
> +#define IGC_PTM_SHORT_CYC_DEFAULT	4   /* Default short cycle interval */
>   #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
>   #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */


Kind regards,

Paul
