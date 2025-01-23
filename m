Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1903A1AA52
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 20:28:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 853976FB52;
	Thu, 23 Jan 2025 19:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJEaJJLZi3yh; Thu, 23 Jan 2025 19:28:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B88B96FB53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737660511;
	bh=MKSMGBTjadOJ4VDIZc+QO+zb8RTG8n/S2QkYxKJfkO8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TqVeUgw1jKC2t0GR6HKlj9D4ccdPNtUMjPhWLiLl8gQrv1uNnNOUyr3VE1jjME8JR
	 TmSajeXXWWAB7FMMAg0/fXeOQUMPLHjXXNfL+GUduWhv99O6AvKxJxIqOlsEP54N5L
	 hpJ9btF6oMb5uwCL0b94nYQajQUjpPD9ThyEbe8ilfD4pao8evgrW1SJ43XDGJbq50
	 9pZZ6q1Wbu5RX71wHaYgF62mSW0cZjl27qeShDp7UX3WL5SsCuvSxR6t9MBJ7jII7I
	 TwBVRitLWLwnhLwyg6Ay0U6FyMpIAY0gzbILVIOXd8msrKyu3OFWdqDE4w+vjtFBhy
	 uYBlYvaazAplg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B88B96FB53;
	Thu, 23 Jan 2025 19:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 98630B88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 760C241A09
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2hM73C7Yci48 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 19:28:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102e; helo=mail-pj1-x102e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 566D941A0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 566D941A0E
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 566D941A0E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:28:28 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 98e67ed59e1d1-2ef6c56032eso1870746a91.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 11:28:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737660507; x=1738265307;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MKSMGBTjadOJ4VDIZc+QO+zb8RTG8n/S2QkYxKJfkO8=;
 b=PzEW4xBaWVzC8amtYwTbkqDCKqUkC3cGx8vZUk9ONEGsqLXstqxPvNIO+nPLZ/sSLJ
 KIYhyiJwc04zf539Ow0Oyn9sqmiJ+2EHkjumEO4rY6ExWcLdugQHyIaTdDLwR8REAqmh
 imCfC66C1iB1GzWbW9uohVGobNc6069HfOLuCrX4BDEh4ryxlMPb9OKcIh/atuc6B4ik
 z8tfHo4MuDfvudp+fv92fQHDn23jsxlM+SzHKG1g2Hf8TCoGJjQ369VwJwIHhCcKm213
 wvFs2b3kpidw0P8T2mAY892aTC4faYy5Q8ePlEzRc7hOtkULKiNC0NF0ZGg3r7JurZdI
 Tkhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUb1aOHZrHJejArCRGNQtGRIUZXdqaNpHA1Z/tTCz0MqX9DxgmhfK/5PD4AIx7Rjoa05sJPeI9g/uKxhDuLfEw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwGvBoU+kozETVoR+jFD4dtVtUU0x3pR3hyMa3Ep+24C6/tVMDM
 H0f0a3FtsjnStcuIk8ZbXeWeQn1H+2z3mP5KOpNujpB4ZaHyJ8Ua70ZnU6fb/A8=
X-Gm-Gg: ASbGncuSxMi/sbf5Un0gkVPiVZZoHEiaFtocmolIyH4WPZ0DWViO/kSbMhgf3gs0ZXV
 Lx2HGK6ax/OLYvJCWO0sShhC4SQ48f4kRWLgNjxJFc8BNgZ1nNDrFOPiJml4TUeAXH4r+porU1N
 YewqjNVopt4XtVgNA+FQnQ1uZTTOdHm9wMpsdPqxSB+IhSD0Pus68o17H3QJz+paqpIAxcUbE4p
 E95btWcc3OctTBi/iaOG6i+l18Bbu6Jw1SMNKKeJRFjfV7aAZc/4jgkG/c/XR2qzs8f+R6TvHPm
 6U4FQHyVla5xS+C5NlMPRfbGANrb2ah+BbPgc9zg+0QDsMc=
X-Google-Smtp-Source: AGHT+IEubu9AdSDBuPgbBe6xyKegk7df8UxI964eqYegV8p/KlH2pZuqJ+bfRr+mhcSVHCdBhdXr0Q==
X-Received: by 2002:a05:6a00:9296:b0:72d:4d77:ccc with SMTP id
 d2e1a72fcca58-72daf94857emr35659747b3a.6.1737660507547; 
 Thu, 23 Jan 2025 11:28:27 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72f8a6b7262sm311632b3a.71.2025.01.23.11.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 11:28:27 -0800 (PST)
Date: Thu, 23 Jan 2025 11:28:24 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 shayd@nvidia.com, akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, David Arinzon <darinzon@amazon.com>
Message-ID: <Z5KYWAshgRL2GbX2@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com,
 David Arinzon <darinzon@amazon.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
 <20250118003335.155379-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250118003335.155379-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1737660507; x=1738265307; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MKSMGBTjadOJ4VDIZc+QO+zb8RTG8n/S2QkYxKJfkO8=;
 b=rSokXNQTKJXdQuUAirNiGavNnrrwFj2DJBRtAm1r3ovpAyPg/44XXEl8/7J31h1zgo
 sGSJIKNFQcNH5V15NKvN8/2YFEpPAtK8s/X/YVOzXID/p55T9uUslwb8XguKbm2F8fjM
 RA6+9L5BLByJKtfGqFXZphCM7kJ11qhrQOlRs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=rSokXNQT
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/5] net: move ARFS rmap
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

On Fri, Jan 17, 2025 at 05:33:31PM -0700, Ahmed Zaki wrote:
> Add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting ARFS should
> set the flag via netif_enable_cpu_rmap() and core will allocate and manage
> the ARFS rmap. Freeing the rmap is also done by core when the netdev is
> freed.
> 
> For better IRQ affinity management, move the IRQ rmap notifier inside the
> napi_struct. Consequently, add new notify.notify and notify.release
> functions: netif_irq_cpu_rmap_notify() and netif_napi_affinity_release().
> 
> Acked-by: David Arinzon <darinzon@amazon.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

[...]

> diff --git a/net/core/dev.c b/net/core/dev.c
> index fe5f5855593d..dbb63005bc2b 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -6862,6 +6862,141 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
>  }
>  EXPORT_SYMBOL(netif_queue_set_napi);
>  
> +#ifdef CONFIG_RFS_ACCEL
> +static void
> +netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
> +			  const cpumask_t *mask)
> +{
> +	struct napi_struct *napi =
> +		container_of(notify, struct napi_struct, notify);
> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> +	int err;

I wonder if this generates a warning with some compilers? err is
defined not used if !napi->dev->rx_cpu_rmap_auto ? Not sure.

> +	if (napi->dev->rx_cpu_rmap_auto) {
> +		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
> +		if (err)
> +			pr_warn("%s: RMAP update failed (%d)\n",
> +				__func__, err);
> +	}
> +}
> +
> +static void netif_napi_affinity_release(struct kref *ref)
> +{
> +	struct napi_struct *napi =
> +		container_of(ref, struct napi_struct, notify.kref);
> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> +
> +	if (!napi->dev->rx_cpu_rmap_auto)
> +		return;
> +	rmap->obj[napi->napi_rmap_idx] = NULL;
> +	napi->napi_rmap_idx = -1;
> +	cpu_rmap_put(rmap);
> +}
> +
> +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
> +{
> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> +	int rc;
> +
> +	if (!rmap)
> +		return -EINVAL;
> +
> +	napi->notify.notify = netif_irq_cpu_rmap_notify;
> +	napi->notify.release = netif_napi_affinity_release;

Maybe the callbacks should only be set at the end after everything
else is successful, just before the return 0 ?

> +	cpu_rmap_get(rmap);
> +	rc = cpu_rmap_add(rmap, napi);
> +	if (rc < 0)
> +		goto err_add;
> +
> +	napi->napi_rmap_idx = rc;
> +	rc = irq_set_affinity_notifier(irq, &napi->notify);
> +	if (rc)
> +		goto err_set;
> +
> +	return 0;
> +
> +err_set:
> +	rmap->obj[napi->napi_rmap_idx] = NULL;
> +	napi->napi_rmap_idx = -1;
> +err_add:
> +	cpu_rmap_put(rmap);
> +	return rc;
> +}

[...]

> +void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
> +{
> +	int rc;
> +
> +	if (!napi->dev->rx_cpu_rmap_auto)
> +		goto out;

Maybe the above if statement could be extended to be something like:

if (!napi->dev->rx_cpu_rmap_auto || napi->irq < 0)
  goto out;

then you can omit the irq > 0 checks in the code below, potentially?

> +	/* Remove existing rmap entries */
> +	if (napi->irq != irq && napi->irq > 0)
> +		irq_set_affinity_notifier(napi->irq, NULL);
> +
> +	if (irq > 0) {
> +		rc = napi_irq_cpu_rmap_add(napi, irq);
> +		if (rc) {
> +			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
> +				    rc);
> +			netif_disable_cpu_rmap(napi->dev);
> +		}
> +	}
> +
> +out:
> +	napi->irq = irq;
> +}
> +EXPORT_SYMBOL(netif_napi_set_irq_locked);
> +
