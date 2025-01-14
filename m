Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B417A113D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 23:08:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFB1D4053C;
	Tue, 14 Jan 2025 22:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vdfBsQHvbMhy; Tue, 14 Jan 2025 22:08:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2214F4068A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736892501;
	bh=PRPZt+xPv2lAcDFJ6DNFudHJDdBd+e68zE57pCoNNHE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8d6XPf9wm7SvknzBn8yvhVXC4xfotCS0TfCvxlKwSbAVRgEubcxZYi3WMhBqVWBGt
	 Z5iI7bdNNwFK4h6f1k5ej1eTnPedO5ekjkxUUlhiqMgtIkwoJkoJL84sUqwZO/7Isw
	 EJEYJ6KwGacnIn34QyGGW3H3Eajl/SU0ll5Z/K2HuOBiONBziOCW9Ey3MA6jSWwRv5
	 la/bWYYuI11m2PpSIUe4YcjSM+tkYmTEA3ptjYrOOlwDBohkGvKaSKiVGmgtjZkiYx
	 0NsiZYtXa3eSE0QPbUEBCDcWoN5KCuNGEjKT5pfHjigPS59Agk9XMXhrLddCsD9TVq
	 w9WgS5zy3UCXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2214F4068A;
	Tue, 14 Jan 2025 22:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E431B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 22:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BEB8403EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 22:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m_CXqI0oqGjG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 22:08:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EC88402ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EC88402ED
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EC88402ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 22:08:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2B8C55C572A;
 Tue, 14 Jan 2025 22:07:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0D78C4CEDD;
 Tue, 14 Jan 2025 22:08:14 +0000 (UTC)
Date: Tue, 14 Jan 2025 14:08:13 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, pavan.chebbi@broadcom.com,
 yury.norov@gmail.com, darinzon@amazon.com
Message-ID: <20250114140813.5a7d527f@kernel.org>
In-Reply-To: <20250113171042.158123-2-ahmed.zaki@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
 <20250113171042.158123-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736892495;
 bh=ItiB0l+fKlNWAxsQbsxn9LxOAZq5zvV0CpkPFjCUabM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iQDaUtxHqtf5EApRGlWnSV/qmMjOJS1oWEipTskRDJlkQwp9mHNCok6dLUwZgQ/4f
 cRMGe3tTYQIw9NlG9bHETKsKH3T/MZs+sB4hrWPP6yQckPIKAuLO061mj9pR2WQCgO
 Ps1AdygTABSP5fDi9WWCrfIRnpS+XVxKg3hlxKU708ZUpoW9ZsIknXPnxrBPTEEBtu
 wHxPWAN5b77lC4VPz8fnZVFBaglnLcciXZCl0AWGeyaZt0d/Dp+lKZ52zq1uqHsAtI
 Yk8Br+TdrG7kM2EKUqTd4+JTbFbjCSMotKSS9R5Lr1fg28EQ3C2gWM51XxDiab9BgY
 T+jGIPw4ggScw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iQDaUtxH
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/6] net: move ARFS rmap
 management to core
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

On Mon, 13 Jan 2025 10:10:37 -0700 Ahmed Zaki wrote:
> -#endif /* CONFIG_RFS_ACCEL */
> +	return netif_enable_cpu_rmap(adapter->netdev, adapter->num_io_queues);
> +#else
>  	return 0;
> +#endif /* CONFIG_RFS_ACCEL */

Let's try to eliminate some of the ifdef-ery on the driver side.
netif_enable_cpu_rmap() should simply do nothing if !CONFIG_RFS_ACCEL

> @@ -2398,6 +2401,9 @@ struct net_device {
> 	struct lock_class_key	*qdisc_tx_busylock;
> 	bool			proto_down;
> 	bool			threaded;
> +#ifdef CONFIG_RFS_ACCEL
> +	bool			rx_cpu_rmap_auto;
> +#endif

similar point, don't hide it, it's just one byte and we can just leave
it as false if !CONFIG_RFS_ACCEL. It can save us a bunch of other ifdefs

> +#ifdef CONFIG_RFS_ACCEL
> +static void netif_disable_cpu_rmap(struct net_device *dev)
> +{
> +	free_irq_cpu_rmap(dev->rx_cpu_rmap);
> +	dev->rx_cpu_rmap = NULL;
> +	dev->rx_cpu_rmap_auto = false;
> +}

Better do do:

static void netif_disable_cpu_rmap(struct net_device *dev)
{
#ifdef CONFIG_RFS_ACCEL
	free_irq_cpu_rmap(dev->rx_cpu_rmap);
	dev->rx_cpu_rmap = NULL;
	dev->rx_cpu_rmap_auto = false;
#endif
}

IOW if not relevant the function should do nothing

> +int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
> +{
> +	dev->rx_cpu_rmap = alloc_irq_cpu_rmap(num_irqs);
> +	if (!dev->rx_cpu_rmap)
> +		return -ENOMEM;
> +
> +	dev->rx_cpu_rmap_auto = true;
> +	return 0;
> +}
> +EXPORT_SYMBOL(netif_enable_cpu_rmap);

here you can depend on dead code elimination:

int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
{
	if (!IS_ENABLED(CONFIG_RFS_ACCEL))
		return 0;

	...
}

> +#endif
> +
> +void netif_napi_set_irq(struct napi_struct *napi, int irq)
> +{
> +#ifdef CONFIG_RFS_ACCEL
> +	int rc;
> +#endif
> +	napi->irq = irq;
> +
> +#ifdef CONFIG_RFS_ACCEL
> +	if (napi->dev->rx_cpu_rmap && napi->dev->rx_cpu_rmap_auto) {
> +		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
> +		if (rc) {
> +			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
> +				    rc);
> +			netif_disable_cpu_rmap(napi->dev);
> +		}
> +	}
> +#endif

Declare rc inside the if to avoid the extra ifdef on variable decl

> +}
> +EXPORT_SYMBOL(netif_napi_set_irq);
> +
>  static void napi_restore_config(struct napi_struct *n)
>  {
>  	n->defer_hard_irqs = n->config->defer_hard_irqs;
> @@ -11421,6 +11461,10 @@ void free_netdev(struct net_device *dev)
>  	/* Flush device addresses */
>  	dev_addr_flush(dev);
>  
> +#ifdef CONFIG_RFS_ACCEL
> +	if (dev->rx_cpu_rmap && dev->rx_cpu_rmap_auto)

don't check dev->rx_cpu_rmap, dev->rx_cpu_rmap_auto is enough

> +		netif_disable_cpu_rmap(dev);
> +#endif
>  	list_for_each_entry_safe(p, n, &dev->napi_list, dev_list)
>  		netif_napi_del(p);
>  

IRQs are often allocated in ndo_open and freed in ndo_stop, so
you need to catch netif_napi_del or napi_disable and remove
the IRQ from the map.

Similarly netif_napi_set_irq() may get called with -1 to clear
the IRQ number, which you currently treat at a real IRQ id, AFAICT.
-- 
pw-bot: cr
