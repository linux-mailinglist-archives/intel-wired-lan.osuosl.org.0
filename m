Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C526CBD84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 13:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D09B82178;
	Tue, 28 Mar 2023 11:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D09B82178
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680002771;
	bh=lu4tQqyNi+AA9MX2rgVdvRQyqFr2eLmruhXyCIL6NXA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gCtS0LyAzPAWt71Pb1mp1bzNoD7YOllxvQinWr4+sZhHgvgjaFW594A9bceaI22Jb
	 1Mnoiw4YV68plKDs6xMPENhBOXTo+m0eiIBX0TxN9okIeRLpoGzrgXVJgfHaIivx0u
	 1QnbwJ4RNdxHJ5QvdIxhh9iaWE990Y37oYLSBv7Gq8HqK9VjCDQ714r6B0QaINX77F
	 0ixLY6x6f+XKdnFAMT6CE6jPNopYg2GbCuyyXVvX5ewckqZZoL30jaglf92c+TmQm/
	 6QeMlO7hybQYGNhcIoE5eNH6kKRDY+/tqENHO8rKxFxjtlhAhUVpcAFOtNVak9JPmw
	 naxdS2GYdi/vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ku1Mv2JDANH; Tue, 28 Mar 2023 11:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47AB382176;
	Tue, 28 Mar 2023 11:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47AB382176
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A74A1BF616
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 11:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F3026121E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 11:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F3026121E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pnsERAEe1lPB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 11:25:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B42160F47
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B42160F47
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 11:25:58 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C386661CC40F9;
 Tue, 28 Mar 2023 13:25:55 +0200 (CEST)
Message-ID: <2c1aeff8-4ed6-4971-5505-8df0da32d1ce@molgen.mpg.de>
Date: Tue, 28 Mar 2023 13:25:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20230328054111.803638-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230328054111.803638-1-aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix passing tainted
 expression to kzalloc()
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your patch.

Am 28.03.23 um 07:41 schrieb Loktionov, Aleksandr:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Add buff_size limit of 1280 bytes for user input value.

Why did you choose 1280 bytes and not some other number?

For the commit message summary/title you could use:

i40e: Limit expression passed to kzalloc() to 1280 bytes

> Fixes: f1143c4b0f60 ("i40e: Expose AQ debugfs hooks")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index c9dcd6d..b10d00d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -1356,7 +1356,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
>   			goto command_write_done;
>   		}
>   		/* Just stub a buffer big enough in case user messed up */
> -		if (buffer_len == 0)
> +		if (buffer_len == 0 || buffer_len > 1280)
>   			buffer_len = 1280;
>   
>   		buff = kzalloc(buffer_len, GFP_KERNEL);


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
