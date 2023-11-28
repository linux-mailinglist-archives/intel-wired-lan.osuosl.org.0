Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8967FC38F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 19:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE8A981F3A;
	Tue, 28 Nov 2023 18:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE8A981F3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701196775;
	bh=CwLibEn9A8ogqmoVj3t+f8Mh9TSWrCqgRgBLM7UehmM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LOUrowkpOa3n0wwuT4V9wVldKE5tfWs2cVaHlqnSdrC+/Tr0zhDWa7AuM2hPqY45g
	 cGddXkoGVyN+VH38ocgvphGon1N8CI8CeFiS8aLdjiEN0Xa1jJiQfiwV33dcOY1C5z
	 m+t7antMYo3M2ammQNDIphx6x8kAUkz3oT31JTPodqcC5dHOxEOI86OEw1wDUJfQNj
	 3N+OPsabl18hEFBzBLiBysD5Kk6LAJpfNNMk+to7iRWQeJm/Nhy+Zv2wwy32NzepQU
	 V5gOHasnqv78+8uUbK59XiFYbpj5nXZzn+N1Ohcvat548Wooy764jJ3wzFQzNDTk/2
	 1/+OMVkCyY/bA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sn0IGXmQy9Lm; Tue, 28 Nov 2023 18:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8B0B81E5A;
	Tue, 28 Nov 2023 18:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8B0B81E5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79EB21BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 18:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 506A881E7D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 18:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 506A881E7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xKnAy7GfhnQO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 18:39:28 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F25E881E66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 18:39:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F25E881E66
Received: from [192.168.0.183] (ip5f5af0c0.dynamic.kabel-deutschland.de
 [95.90.240.192])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 174B561E5FE03;
 Tue, 28 Nov 2023 19:39:10 +0100 (CET)
Message-ID: <aa574a42-ebd9-4bda-abe0-a85d969a8eef@molgen.mpg.de>
Date: Tue, 28 Nov 2023 19:39:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sachin Bahadur <sachin.bahadur@intel.com>
References: <20231128183505.1338736-1-sachin.bahadur@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231128183505.1338736-1-sachin.bahadur@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Print NIC FW version
 during init
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sachin,


Thank you for the patch.

Am 28.11.23 um 19:35 schrieb Sachin Bahadur:
> Print NIC FW version during PF initialization. FW version in dmesg is used
> to identify and isolate issues. Particularly useful when dmesg is read
> after reboot.

Please paste one example log line into the commit message.

> Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
> Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1f159b4362ec..71d3d8cfdd1d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4568,6 +4568,12 @@ static int ice_init_dev(struct ice_pf *pf)
>   		dev_err(dev, "ice_init_hw failed: %d\n", err);
>   		return err;
>   	}
> +	dev_info(dev, "fw %u.%u.%u api %u.%u.%u nvm %u.%u 0x%08x %u.%u.%u\n",
> +		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_patch, hw->api_maj_ver,
> +		 hw->api_min_ver, hw->api_patch, hw->flash.nvm.major,
> +		 hw->flash.nvm.minor, hw->flash.nvm.eetrack,
> +		 hw->flash.orom.major, hw->flash.orom.build,
> +		 hw->flash.orom.patch);
>   
>   	/* Some cards require longer initialization times
>   	 * due to necessity of loading FW from an external source.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
