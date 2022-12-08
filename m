Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC80646BD1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 10:24:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 046814193F;
	Thu,  8 Dec 2022 09:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 046814193F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670491459;
	bh=yKAARrEoYW/Rdw760M5FOg2JPgGjlR3NT7+1f7AzMbI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9vLZOcMauuBckO7viPP5XQevTbHvXdXIDBv9s28v7EaFpivdBdF/yuCq9RWoyKj+L
	 P/wC8sh95NVxK+xgj3u5aJOJZwa6vySKWdIyYKJ+s1/xqfWlIAoC3G9QnrOvRcLIQV
	 RFSUFWWBCoFi95c63e3AtE60g/ZqhmGm3OY4ivMg0HDRywxEweFKDygjCUxP/6MR8r
	 c0e5+ArWoM1prMhpG6OzRdL2/I69OZpGApnth4J1yELOQqRoKmkOpTNy5whVqFTq/7
	 B/zn6AZQ+3wGCcuvHeUBx06v6UmhfSBWM5EEnXhfNOe3cmvLtBTPiqCUYtRvYSa0rf
	 zSevc8wa6+E3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tE1d1F1CGH_o; Thu,  8 Dec 2022 09:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEEE041918;
	Thu,  8 Dec 2022 09:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEEE041918
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 767941BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 09:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50A6581FA9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 09:24:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50A6581FA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dOlh_uoDlMh6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 09:24:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27BB181FA8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27BB181FA8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 09:24:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1BF4D61E15;
 Thu,  8 Dec 2022 09:24:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE570C433C1;
 Thu,  8 Dec 2022 09:24:05 +0000 (UTC)
Date: Thu, 8 Dec 2022 11:24:02 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y5GtMk64Zg+tnbMS@unreal>
References: <20221208011936.47943-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221208011936.47943-1-jiasheng@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670491446;
 bh=XZlUsEv07hjY4O631nUYURDX0RrEAXkxMKI/UXjPh44=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WlPi4TibsAaYUTb1UptmbOlmFTUoq1ZrCcb/hswmi7YK9rtmOC42UwBeGeWVxUlZC
 krS5O1VFc9SuHRkcZLfLOF0lxnWA/HS9VFM0HTCkxXqUr1NApI3zX1Dt8lcyJMyXJN
 M8Znz/5sIjpeEWzdxOjo1u1b3BPStar9xDvBFOPv6gUvrMXhcUMoxwMxSjilFCcrE7
 WWhNffXUBexBvx48vJFJbr/y0Qt3MpFGuKU4IKxEuAsWo7ZDIDAkJVn6blzFcPZwnZ
 9GpdogkPmVFow2KEYQd7UoPOxYLJXNcCd58VDzaAjZaziAPhFXcmtVHG/9M93X/fhS
 8Noaw03g3Lw0g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WlPi4Tib
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Add check for kzalloc
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
Cc: jiri@resnulli.us, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 08, 2022 at 09:19:36AM +0800, Jiasheng Jiang wrote:
> As kzalloc may return NULL pointer, the return value should
> be checked and return error if fails in order to avoid the
> NULL pointer dereference.
> Moreover, use the goto-label to share the clean code.
> 
> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
> Changelog:
> 
> v1 -> v2:
> 
> 1. Use goto-label to share the clean code.
> ---
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 25 ++++++++++++++---------
>  1 file changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> index b5a7f246d230..7bd3452a16d2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> @@ -421,7 +421,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
>  	const int ICE_TTYDRV_NAME_MAX = 14;
>  	struct tty_driver *tty_driver;
>  	char *ttydrv_name;
> -	unsigned int i;
> +	unsigned int i, j;
>  	int err;
>  
>  	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
> @@ -462,6 +462,9 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
>  					       GFP_KERNEL);
>  		pf->gnss_serial[i] = NULL;
>  
> +		if (!pf->gnss_tty_port[i])
> +			goto err_out;
> +
>  		tty_port_init(pf->gnss_tty_port[i]);
>  		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
>  	}
> @@ -469,21 +472,23 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
>  	err = tty_register_driver(tty_driver);
>  	if (err) {
>  		dev_err(dev, "Failed to register TTY driver err=%d\n", err);
> -
> -		for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
> -			tty_port_destroy(pf->gnss_tty_port[i]);
> -			kfree(pf->gnss_tty_port[i]);
> -		}
> -		kfree(ttydrv_name);
> -		tty_driver_kref_put(pf->ice_gnss_tty_driver);
> -
> -		return NULL;
> +		goto err_out;
>  	}
>  
>  	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++)
>  		dev_info(dev, "%s%d registered\n", ttydrv_name, i);
>  
>  	return tty_driver;
> +
> +err_out:
> +	for (j = 0; j < i; j++) {

You don't need an extra variable, "while(i--)" will do the trick.

Thanks

> +		tty_port_destroy(pf->gnss_tty_port[j]);
> +		kfree(pf->gnss_tty_port[j]);
> +	}
> +	kfree(ttydrv_name);
> +	tty_driver_kref_put(pf->ice_gnss_tty_driver);
> +
> +	return NULL;
>  }
>  
>  /**
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
