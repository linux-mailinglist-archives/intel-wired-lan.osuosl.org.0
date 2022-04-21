Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E89BC50A761
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Apr 2022 19:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 648D260EAC;
	Thu, 21 Apr 2022 17:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbo8Vfc0oU3K; Thu, 21 Apr 2022 17:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55A4760B17;
	Thu, 21 Apr 2022 17:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D52371BF406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 17:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D084C813DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 17:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 48Yq0NUOkdiO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Apr 2022 17:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EA5981383
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 17:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650563351; x=1682099351;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mA55YQhjLIsfXwlrMTErhiZKJ7+sd5wb1DTEqU6nP0c=;
 b=fPO8pYomAtQYKSUgZWoVKtHmbp8qHWjyDfWrB8k+TFLrERj10bTrfuEi
 //33Y193SMzyuVYs340yQX+J3B481Hq84cribOUOGr7qdzxikFZ6oklf3
 kxClA41VHw+XjR6egw1O+m/zlZokXJWmwEbxga8L7Lkj88+M5vckaZDK2
 ErgbANgmXYRmJZt9m8vftBGZSnqoomqYZOnmjS2YUxCc4hQFLwhs9OvGu
 MLK+aFl2PqujQLBnOpxqbDrgvEbuSPiWv7hlJn4k4K5p+qIrfuxHx4Khz
 EuLJMxFV7Yps696i39UFDTNXI5Bma+qIBdNWuIbntrCxRScHDgIvyljnt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="245006103"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="245006103"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:49:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="562674802"
Received: from ssaladi-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.213.165.163])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:49:09 -0700
Date: Thu, 21 Apr 2022 10:49:09 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <YmGZFfcY/Yz6Iv1Y@iweiny-desk3>
References: <20220419234313.10324-1-eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419234313.10324-1-eng.alaamohamedsoliman.am@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v5] igb: Convert kmap() to
 kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 20, 2022 at 01:43:13AM +0200, Alaa Mohamed wrote:
> kmap() is being deprecated and these usages are all local to the thread
> so there is no reason kmap_local_page() can't be used.
> 
> Replace kmap() calls with kmap_local_page().
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> ---
> changes in V2:
> 	fix kunmap_local path value to take address of the mapped page.
> ---
> changes in V3:
> 	edit commit message to be clearer
> ---
> changes in V4:
> 	edit the commit message
> ---
> changes in V5:
> 	-edit commit subject
> 	-edit commit message
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 2a5782063f4c..c14fc871dd41 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
>  
>  	frame_size >>= 1;
>  
> -	data = kmap(rx_buffer->page);
> +	data = kmap_local_page(rx_buffer->page);
>  
>  	if (data[3] != 0xFF ||
>  	    data[frame_size + 10] != 0xBE ||
>  	    data[frame_size + 12] != 0xAF)
>  		match = false;
>  
> -	kunmap(rx_buffer->page);
> +	kunmap_local(data);
>  
>  	return match;
>  }
> -- 
> 2.35.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
