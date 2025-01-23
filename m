Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6930DA1AB13
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 21:18:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 164E184BD2;
	Thu, 23 Jan 2025 20:18:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id us_S6F9HQS4w; Thu, 23 Jan 2025 20:18:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29B5384BD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737663512;
	bh=tDn8AmTSVB0kH3UfB4hskAhSERNxv7X8QRfonq5cAbM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L2Z8SPNfRcuQYAoTq/PQa1PZoXLgcpcaYLMP4VAcAU+BeIjtB88VtUoaW3KhY2KGU
	 pxscEwS1eARhozGQkGvJTLPIB1rflRBifOYGyGPCGNiqlnnIj1Szqy9hW7ip6ic7jx
	 rRwgCzfyddV8N1z+D6fT/mfbf95BGiEKOJNCpGZHbXqxCO/kjYpReloMLlRDdiqq/U
	 T/fbDHOaWLk8NC1H5nVEy62Bm5VSRbR8LQr39KGNmzWg/Vh0V1hwq9ElP5glfQ+nbb
	 i1gpvKRiUawS9qrrrxVj4oj0639UWLszQDQIHmPg+yIkBMrD2v1tlyUt/0io057+Jc
	 PFPUM0RiV7jTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29B5384BD5;
	Thu, 23 Jan 2025 20:18:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2274F959
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FB52412B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0svNl6VVrKE4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 20:18:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1034; helo=mail-pj1-x1034.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC3624129B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC3624129B
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC3624129B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:18:28 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-2ee9a780de4so1929799a91.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 12:18:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737663508; x=1738268308;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tDn8AmTSVB0kH3UfB4hskAhSERNxv7X8QRfonq5cAbM=;
 b=HWmN5vXctInKX/fCIBxMNusf5XrVLUlsmLT8MwWn4HdkzcJ4SqUqMaRx5xVzdmT9SV
 CaFsMBQSXR2k/Q/NUjHHJgPdvTIUc8tVpC2PgeKz5AygJ3NZCXgr6GJ2XmwEisVbg/Z+
 R9vRhUwmFtWxScNCuRARcpAd+0nUIQ9FxYtxkXUlbv0sm3OmVsvbcK1ts40gi6sC0Qwq
 bd1dScpWcKIZ/HRNTtd2U23NfQWdEjfBuwHYBxJmotm+GtooFn+43Hj3yyB5EcVz4T5o
 Ed2JxmgTZ9rvZBQawNw7cbXLzDsCqzkaaGv9XHO8qwDImZvxDJ26Q5drZ7ZEdT5bl6bd
 Ey0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCW9Bafp2em4UGEh2K8+SeCTvd8uDilZNxMiXHU7cNWRp06tdO5TQzMFGoLJTVdHxRawnd+Ivr5OGc1ZB3pDRxo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxojix2nJ3g2HKDjmXLgC2CnK5dmK0EmuQevcrH1gSr9URpo1rs
 va5cx9j6Xglk1e+khqa6Hk05HsKozXPhV6O0V9ZSjD6D9b5h+8/RSiuFvHrhXkw=
X-Gm-Gg: ASbGncuFPIDmeTvz5T5CAKYcDk86ObPRn3GzxK0bzRMd2uM7HgSMhR8M6WNtGoeraEV
 niTMvDKfvSSBC6pLoXxfZpvkncJqckgy29RfdQOMRCvPZJntOBBHmuOtMAwdk0qBe0JfTqoNOoy
 CZydtxm62ljrwU49q2D83y329ge1HptuIij270Cgt32n0C6AXgPvxOELPcMs2EzYpUQjkrIlkYU
 tJ3+P2259AQKLDoxl03TGxTyHmiJelncZZxNmKGQI3rYB8278QwRo8Yqw99JlZWeJ3jIPvwugwL
 OfEOATLgLETtfXjpCtFtUnKAVUH01YqdIuNaM7JAmwgYGZ8=
X-Google-Smtp-Source: AGHT+IGG8mMT9xy63Q1Tci1v3aOjMG8ehE5VqEMdDOPs0ky+kTnInX/xnpgJBsYfjpMA0MHFjXNz7g==
X-Received: by 2002:a17:90b:534c:b0:2ee:e317:69ab with SMTP id
 98e67ed59e1d1-2f782b01fafmr47985914a91.0.1737663508027; 
 Thu, 23 Jan 2025 12:18:28 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f7ffa6a725sm143267a91.21.2025.01.23.12.18.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 12:18:27 -0800 (PST)
Date: Thu, 23 Jan 2025 12:18:24 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 shayd@nvidia.com, akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <Z5KkEF-2NiX4SuB_@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
 <20250118003335.155379-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250118003335.155379-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1737663508; x=1738268308; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tDn8AmTSVB0kH3UfB4hskAhSERNxv7X8QRfonq5cAbM=;
 b=OIdPIAxS7yPHBMrn3r9dZR9UEjyPEbvPYQSTVlW1nd+1yCC4cIdXBCAMPSNxamHmOP
 GQsS8L66oHu6pxklEDGjcE98ZMrGJZ48D/oVUR0RupaMc3Zx4Wc5k3x4G78ib4m77Oxb
 at5zKty5g3eRiyGDsg+rXXm3ec2hfeu1EWyCk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=OIdPIAxS
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/5] net: napi: add CPU
 affinity to napi_config
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

On Fri, Jan 17, 2025 at 05:33:32PM -0700, Ahmed Zaki wrote:
> A common task for most drivers is to remember the user-set CPU affinity
> to its IRQs. On each netdev reset, the driver should re-assign the
> user's settings to the IRQs.
> 
> Add CPU affinity mask to napi_config. To delegate the CPU affinity
> management to the core, drivers must:
>  1 - set the new netdev flag "irq_affinity_auto":
>                                        netif_enable_irq_affinity(netdev)
>  2 - create the napi with persistent config:
>                                        netif_napi_add_config()
>  3 - bind an IRQ to the napi instance: netif_napi_set_irq()
> 
> the core will then make sure to use re-assign affinity to the napi's
> IRQ.
> 
> The default IRQ mask is set to one cpu starting from the closest NUMA.

Maybe the above is helpful to add to
Documentation/networking/napi.rst ?

> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  include/linux/netdevice.h | 14 ++++++++++-
>  net/core/dev.c            | 51 +++++++++++++++++++++++++++++----------
>  2 files changed, 51 insertions(+), 14 deletions(-)
> 
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 98259f19c627..d576e5c91c43 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -351,6 +351,7 @@ struct napi_config {
>  	u64 gro_flush_timeout;
>  	u64 irq_suspend_timeout;
>  	u32 defer_hard_irqs;
> +	cpumask_t affinity_mask;
>  	unsigned int napi_id;
>  };
>  
> @@ -393,8 +394,8 @@ struct napi_struct {
>  	struct list_head	dev_list;
>  	struct hlist_node	napi_hash_node;
>  	int			irq;
> -#ifdef CONFIG_RFS_ACCEL
>  	struct irq_affinity_notify notify;
> +#ifdef CONFIG_RFS_ACCEL
>  	int			napi_rmap_idx;
>  #endif
>  	int			index;
> @@ -1991,6 +1992,11 @@ enum netdev_reg_state {
>   *
>   *	@threaded:	napi threaded mode is enabled
>   *
> + *	@irq_affinity_auto: driver wants the core to manage the IRQ affinity.
> + *			    Set by netif_enable_irq_affinity(), then driver must
> + *			    create persistent napi by netif_napi_add_config()
> + *			    and finally bind napi to IRQ (netif_napi_set_irq).
> + *
>   *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
>   *	                   Set by calling netif_enable_cpu_rmap().
>   *
> @@ -2401,6 +2407,7 @@ struct net_device {
>  	struct lock_class_key	*qdisc_tx_busylock;
>  	bool			proto_down;
>  	bool			threaded;
> +	bool			irq_affinity_auto;
>  	bool			rx_cpu_rmap_auto;
>  
>  	/* priv_flags_slow, ungrouped to save space */
> @@ -2653,6 +2660,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
>  	dev->ml_priv_type = type;
>  }
>  
> +static inline void netif_enable_irq_affinity(struct net_device *dev)
> +{
> +	dev->irq_affinity_auto = true;
> +}

I'll have to look at the patches which use the above function, but
the first thing that came to mind when I saw this was does the above
need a WRITE_ONCE ?

The reads below seem to be protected by a lock; I haven't yet looked
at the other patches so maybe the write is also protected by
netdev->lock ?

>  /*
>   * Net namespace inlines
>   */
> diff --git a/net/core/dev.c b/net/core/dev.c
> index dbb63005bc2b..bc82c7f621b3 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c

[...]

>  
> +#ifdef CONFIG_RFS_ACCEL
>  static void netif_napi_affinity_release(struct kref *ref)
>  {
>  	struct napi_struct *napi =
> @@ -6901,7 +6908,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
>  	if (!rmap)
>  		return -EINVAL;
>  
> -	napi->notify.notify = netif_irq_cpu_rmap_notify;
> +	napi->notify.notify = netif_napi_irq_notify;

Same question as previous patch: does it make sense to only set the
callbacks below when all other operations have succeeded?

>  	napi->notify.release = netif_napi_affinity_release;
>  	cpu_rmap_get(rmap);
>  	rc = cpu_rmap_add(rmap, napi);

[...]

> @@ -6976,23 +6987,28 @@ void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
>  {
>  	int rc;
>  
> -	if (!napi->dev->rx_cpu_rmap_auto)
> -		goto out;
> -
> -	/* Remove existing rmap entries */
> -	if (napi->irq != irq && napi->irq > 0)
> +	/* Remove existing resources */
> +	if ((napi->dev->rx_cpu_rmap_auto || napi->dev->irq_affinity_auto) &&
> +	    napi->irq > 0 && napi->irq != irq)
>  		irq_set_affinity_notifier(napi->irq, NULL);
>  
> -	if (irq > 0) {
> +	if (irq > 0 && napi->dev->rx_cpu_rmap_auto) {
>  		rc = napi_irq_cpu_rmap_add(napi, irq);
>  		if (rc) {
>  			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
>  				    rc);
>  			netif_disable_cpu_rmap(napi->dev);
>  		}
> +	} else if (irq > 0 && napi->config && napi->dev->irq_affinity_auto) {
> +		napi->notify.notify = netif_napi_irq_notify;
> +		napi->notify.release = netif_napi_affinity_release;
> +
> +		rc = irq_set_affinity_notifier(irq, &napi->notify);
> +		if (rc)
> +			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
> +				    rc);

I see now that my comments on the previous patch are stale after
this patch is applied. I wonder if the "irq > 0" part can be pulled
out to simplify the branches here?
