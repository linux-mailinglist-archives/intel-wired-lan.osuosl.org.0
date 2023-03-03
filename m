Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 747996A9C1F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 17:48:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33508415B2;
	Fri,  3 Mar 2023 16:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33508415B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677862130;
	bh=Nkb1fJc9zrJsMLGHNkXRLp266XX7kSG703lupKEMgIw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xV8BcvoW1J0RCuA11+7kg2gQYJC1T1LunvLlysBRTvvbyDtKbGg5/sZMbvdbVkmce
	 1aPtOdwL446URdfHh0KZlnZZ+CwepCEAR1r1Yc7wk9M4jfdT1uDIzu0aFwGs0pWeEf
	 2XAMn3CFGwqnMOByislwotokVIknjc7PSb1WKcXtqK1l2JviEKw9sJxcv/dCMw+8fu
	 anWpScR/wVXhhm+A82F2A/udzdxjrLAZW9D5eYldavGUesZnqkVXVWuLUZyAw0H1pe
	 vWh2p15qHi7jvM2rv9V8PuPNUpi0h8U/TTLFJfuiRhv0qBJYDXk6U2ujOXWu7xlaEE
	 t+TuhPoKNAG6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecOtLChyRZIa; Fri,  3 Mar 2023 16:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1011E415B0;
	Fri,  3 Mar 2023 16:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1011E415B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32B381BF424
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 16:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B0C58227A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 16:48:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B0C58227A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qq8OvnREU2ma for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 16:48:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 219BF821FE
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 219BF821FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 16:48:41 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae973.dynamic.kabel-deutschland.de
 [95.90.233.115])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BEC3861CC457B;
 Fri,  3 Mar 2023 17:48:38 +0100 (CET)
Message-ID: <bd0a8066-9360-7440-9705-68118eb5e0ff@molgen.mpg.de>
Date: Fri, 3 Mar 2023 17:48:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
References: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v1] netdevice: use ifmap isteand of
 plain fields
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
 Linus Torvalds <torvalds@linux-foundation.org>, davem@davemloft.net,
 jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vincenzo,


Thank you for your patch. There is a small typo in the commit message 
summary in *instead*.

Am 03.03.23 um 16:08 schrieb Vincenzo Palazzo:
> clean the code by using the ifmap instead of plain fields,
> and avoid code duplication.
> 
> P.S: I'm giving credit to the author of the FIXME commit.

No idea, what you mean exactly, but you can do that by adding From: in 
the first line of the commit message body.


Kind regards,

Paul


> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c |  4 ++--
>   include/linux/netdevice.h                  |  8 +-------
>   net/core/dev_ioctl.c                       | 12 ++++++------
>   net/core/rtnetlink.c                       |  6 +++---
>   4 files changed, 12 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index e1eb1de88bf9..059ff8bcdbbc 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7476,8 +7476,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	netif_napi_add(netdev, &adapter->napi, e1000e_poll);
>   	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>   
> -	netdev->mem_start = mmio_start;
> -	netdev->mem_end = mmio_start + mmio_len;
> +	netdev->dev_mapping.mem_start = mmio_start;
> +	netdev->dev_mapping.mem_end = mmio_start + mmio_len;
>   
>   	adapter->bd_number = cards_found++;
>   
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 6a14b7b11766..c5987e90a078 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -2031,13 +2031,7 @@ struct net_device {
>   	char			name[IFNAMSIZ];
>   	struct netdev_name_node	*name_node;
>   	struct dev_ifalias	__rcu *ifalias;
> -	/*
> -	 *	I/O specific fields
> -	 *	FIXME: Merge these and struct ifmap into one
> -	 */
> -	unsigned long		mem_end;
> -	unsigned long		mem_start;
> -	unsigned long		base_addr;
> +	struct ifmap dev_mapping;
>   
>   	/*
>   	 *	Some hardware also needs these fields (state,dev_list,
> diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
> index 5cdbfbf9a7dc..89469cb97e35 100644
> --- a/net/core/dev_ioctl.c
> +++ b/net/core/dev_ioctl.c
> @@ -88,9 +88,9 @@ static int dev_getifmap(struct net_device *dev, struct ifreq *ifr)
>   	if (in_compat_syscall()) {
>   		struct compat_ifmap *cifmap = (struct compat_ifmap *)ifmap;
>   
> -		cifmap->mem_start = dev->mem_start;
> -		cifmap->mem_end   = dev->mem_end;
> -		cifmap->base_addr = dev->base_addr;
> +		cifmap->mem_start = dev->dev_mapping.mem_start;
> +		cifmap->mem_end   = dev->dev_mapping.mem_end;
> +		cifmap->base_addr = dev->dev_mapping.base_addr;
>   		cifmap->irq       = dev->irq;
>   		cifmap->dma       = dev->dma;
>   		cifmap->port      = dev->if_port;
> @@ -98,9 +98,9 @@ static int dev_getifmap(struct net_device *dev, struct ifreq *ifr)
>   		return 0;
>   	}
>   
> -	ifmap->mem_start  = dev->mem_start;
> -	ifmap->mem_end    = dev->mem_end;
> -	ifmap->base_addr  = dev->base_addr;
> +	ifmap->mem_start  = dev->dev_mapping.mem_start;
> +	ifmap->mem_end    = dev->dev_mapping.mem_end;
> +	ifmap->base_addr  = dev->dev_mapping.base_addr;
>   	ifmap->irq        = dev->irq;
>   	ifmap->dma        = dev->dma;
>   	ifmap->port       = dev->if_port;
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index 5d8eb57867a9..ff8fc1bbda31 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -1445,9 +1445,9 @@ static int rtnl_fill_link_ifmap(struct sk_buff *skb, struct net_device *dev)
>   	struct rtnl_link_ifmap map;
>   
>   	memset(&map, 0, sizeof(map));
> -	map.mem_start   = dev->mem_start;
> -	map.mem_end     = dev->mem_end;
> -	map.base_addr   = dev->base_addr;
> +	map.mem_start   = dev->dev_mapping.mem_start;
> +	map.mem_end     = dev->dev_mapping.mem_end;
> +	map.base_addr   = dev->dev_mapping.base_addr;
>   	map.irq         = dev->irq;
>   	map.dma         = dev->dma;
>   	map.port        = dev->if_port;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
