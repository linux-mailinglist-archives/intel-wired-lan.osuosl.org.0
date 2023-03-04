Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF76AA753
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 02:35:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31D8F416B8;
	Sat,  4 Mar 2023 01:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31D8F416B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677893729;
	bh=yWkXOM8DK9Azv6ucl9yBYkstnreUcB5W7j0lbu2c07g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ku/dXxfs6nIqAcDZFllIdzOt1rk45ypR71xagUulNOgTeIni4e2uc6VuCra3vtPEE
	 6lA4NIkeK6sACQNSNKutTLP5QdYA3b24VPMF7BVWB5bk0IIALRHilVIbJVP0a7EaJO
	 Ks93fR5AsCv/0WMgzqdLBWxEEGG57R5M44SfkCkv8Od7UkiXQTjCN4ANRSPUxf5nqQ
	 54kPheMmyqZ/HMI0/MuN2STcwoslPcrfMUEOzT3yn33d6FupgDjPGthF4llzxzOXkT
	 oNkAzqZiPTkv/yhaxw/d3vIDp9PLWWhVR4L4uZiWIBu6jtC2k/2zLsSmH1+k7rD4ym
	 zMHRedipugYbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEZLqOFPb2xg; Sat,  4 Mar 2023 01:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CE70416B7;
	Sat,  4 Mar 2023 01:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CE70416B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 370861BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 01:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B69741D55
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 01:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B69741D55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TsYPnqEbLpSl for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 01:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42AAD41D54
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42AAD41D54
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 01:35:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 880C86186E;
 Sat,  4 Mar 2023 01:35:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B89D6C433EF;
 Sat,  4 Mar 2023 01:35:20 +0000 (UTC)
Date: Fri, 3 Mar 2023 17:35:19 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
Message-ID: <20230303173519.72c2d236@kernel.org>
In-Reply-To: <20230303180926.142107-1-vincenzopalazzodev@gmail.com>
References: <20230303180926.142107-1-vincenzopalazzodev@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677893721;
 bh=1bi4llHOwlPPb86qFs2pmB2pX17hbLNqmRX20t+Ttuo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jg84SrzVXVEC0srdtbf8JuWDM5L1QmGBgeYnWwsdW5pv05tbvF+hFy/u46Rg7/iQ6
 55jHyYePpvCN06cAEGVgjj5wRupS74YgRo/1ZCW+4/aquxjGIiq93EMZGIG6HTV+fF
 znljY9NfrLfsNuVHhIjDazeQePdce4SJfk7mZj2rx5v7VMQscC56k7mUpgYuQTcpZ9
 SGUfWpczSE/EQXhBZ3bJ6hZVnKVSxZgZ61Pn2DXrE/Lx75GxWUwVmmQIBegvNlWI4l
 pX5wuZSzKkIf22rksFSlcsRSAy6bOQC8uB402cTM+ag4volLpTeL1UQth1nYatjMcp
 Vi8OyhOJT4RRw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jg84SrzV
Subject: Re: [Intel-wired-lan] [PATCH v2] netdevice: use ifmap instead of
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
 davem@davemloft.net, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  3 Mar 2023 19:09:26 +0100 Vincenzo Palazzo wrote:
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index e1eb1de88bf9..059ff8bcdbbc 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7476,8 +7476,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	netif_napi_add(netdev, &adapter->napi, e1000e_poll);
>  	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>  
> -	netdev->mem_start = mmio_start;
> -	netdev->mem_end = mmio_start + mmio_len;
> +	netdev->dev_mapping.mem_start = mmio_start;
> +	netdev->dev_mapping.mem_end = mmio_start + mmio_len;
>  
>  	adapter->bd_number = cards_found++;

That's not the only driver that'd need to be changed.
Try building the kernel with allmodconfig.

> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 6a14b7b11766..c5987e90a078 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -2031,13 +2031,7 @@ struct net_device {
>  	char			name[IFNAMSIZ];
>  	struct netdev_name_node	*name_node;
>  	struct dev_ifalias	__rcu *ifalias;
> -	/*
> -	 *	I/O specific fields
> -	 *	FIXME: Merge these and struct ifmap into one
> -	 */
> -	unsigned long		mem_end;
> -	unsigned long		mem_start;
> -	unsigned long		base_addr;
> +	struct ifmap dev_mapping;

base_addr was unsigned long now its unsigned short.
IDK if that matters.

I'd rather we didn't mess with this code - it's only used by ancient
drivers. We can wait until those drivers are no longer used and delete
this instead.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
