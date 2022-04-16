Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 485AE5034A8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Apr 2022 09:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C26EA401EC;
	Sat, 16 Apr 2022 07:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JHebxlsh9ZtF; Sat, 16 Apr 2022 07:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72D11401B2;
	Sat, 16 Apr 2022 07:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1561E1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 07:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F497401BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 07:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cSUI7ODVP2Ig for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 07:37:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C660401B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 07:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=uNkcqohuYyDBM1uM8iaZqasZVYq+vCj2MnEBhaavjiY=;
 b=bOUyhMkbovFHP9ui92W3xjlOSSKS64CpFVNDtR89Nmez9b4juIshm7jM
 bAyEtarlAiappoWHYePSBzNVBnqw5DCwZR3eZH4PANIg+Jn37/dQjcT3e
 FnpCMCeSQ3EgRk62JPUxZH/B4NdzZ2OsN85Qra3OCLMiZKbNUraCR168V I=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,264,1643670000"; d="scan'208";a="11683753"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2022 09:37:34 +0200
Date: Sat, 16 Apr 2022 09:37:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204160937120.3501@hadrien>
References: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
 pabeni@redhat.com, ira.weiny@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On Fri, 15 Apr 2022, Alaa Mohamed wrote:

> The use of kmap() is being deprecated in favor of kmap_local_page()
> where it is feasible.

And why is it feasible here?

julia

>
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible.
>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 2a5782063f4c..ba93aa4ae6a0 100644
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
> +	kunmap_local(rx_buffer->page);
>
>  	return match;
>  }
> --
> 2.35.2
>
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
