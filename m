Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 960EEA1AB19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 21:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3792984BD9;
	Thu, 23 Jan 2025 20:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5cjLjfjqRIh0; Thu, 23 Jan 2025 20:20:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EA3B84BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737663641;
	bh=KB1t1DSHYe/kIJpeHgsnuq5QN3rT3/xSpDRas/TVl9Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O5/4Ja+anLsDqyqnGdu9tLIHnbFdS7j5Yl9xbvGRiCy8NIjYpEK10zUk2RpeKPb8L
	 1N99rZA21eUvB9eQX0UCbbhFnq/8QP7xE77ezHoTixqn9TtY1yPul7dKjdJIgsNQON
	 j/FBCf3ctE+GQcFZg3rEWQXkcF+s0iGH+f6Vd5cVNu4LViTnMiLgIbwj5JmJduxRES
	 Tl/XlrpGhHMDKAuhIb867Zly4iP9amJZ7f5aHGkbflmJJ2Y4Lm/cGc92Lzn9DfcVWU
	 uuDUEUWd0sDc7iyjP5kKTaywRL8z5brJSgw8Fl6nE33sehi3H8RMhxjMog1tR29oeB
	 KW+qdXX2a0uCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EA3B84BDE;
	Thu, 23 Jan 2025 20:20:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E5EC94A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C47741E2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:20:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UToL21GHVyYv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 20:20:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1032; helo=mail-pj1-x1032.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 140A64199C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140A64199C
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 140A64199C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:20:38 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 98e67ed59e1d1-2f441791e40so2028604a91.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 12:20:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737663638; x=1738268438;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KB1t1DSHYe/kIJpeHgsnuq5QN3rT3/xSpDRas/TVl9Q=;
 b=kKIHmLERmVFsbU2jsqeh2e3KHRvz9EK8h8zuPr4K/zXh3pf18Ytp+vIgyx0g/9NePn
 HgNsGU5acSPdKpaaJ5lQxWt9taow78OGgT6WYzazGNMcDLvTTF1Sft2rK+lO/dwbgAL8
 jtDs9941td7mSAO3eRw2gLUEORD9mK3ybh0CArbNoS4NRqZel69JI12ZvveFNq44Tm83
 ETFIVRBvM8ak3uSO6dP/SFb3R0/Gp1+1Vh+qvQIU11ovkprR9utTimAPjA+Z8T5kizDJ
 ODbyUM4/OoW/+A19SR4Cgm8x7yG/dCs5iQ3IArA57oTDvJoJxVtJO1Q81bhBVZ68w8rq
 z6yg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWKiclEIzT4KOdQjdOQ7DxTQ1H4hdvSiChmbaRArSvj/QPqZvpHVVWlQxUqSMcbxShnR7OW2xAA2nvq8EEzuc8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwGtjvHW0jEVOGmXaKDbijU7hsABxFVAXTrrtEYlqzkJSbB4IPV
 1UPX/DZMwe6nO3rP96/kSaQgwVdKkjdl65qLu9zsBf3+GhkbCqhGVq8PFFyY5EM=
X-Gm-Gg: ASbGncsSToeeQaPu83dpTp01QBdhdffCtcjjJVuiTjMfSaCidDiIJI42iYE5F6sDMCR
 3eEf+8MUWMehhndTt0HPTKr+NEcxTnHER+ZlJ8U1ADCM8yD/5fbzCdbRs7KcQBpQFB9ah7KpbdY
 cmtlSEWj4CN6Gms4rPCQpExJEJMhYNZ1xPCD8BjASPHyhcG4ZXH4VvQycxEYJAGN/M0jwxrYTCx
 h1IZc6lqlzOm3LBTJay45ccPttaoIxclNfqU6tEhU+a8dzD1WqqRfIsR6uaIfut0csVCHqWcLa+
 YT505wbIA00Ka4norjWkTkRNNuRJjifXZO46h9ODhShDbik=
X-Google-Smtp-Source: AGHT+IGWiW4fruTXQaig8VlUH68P+LvfxTOjfstapyawpwKg0R4SlaMZKhcLWLkqA4bHRKxUrinKdg==
X-Received: by 2002:a17:90b:540b:b0:2ee:ba0c:1726 with SMTP id
 98e67ed59e1d1-2f782d9a1c9mr34516067a91.34.1737663638298; 
 Thu, 23 Jan 2025 12:20:38 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f7ffa6b315sm127868a91.26.2025.01.23.12.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 12:20:37 -0800 (PST)
Date: Thu, 23 Jan 2025 12:20:34 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 shayd@nvidia.com, akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, David Arinzon <darinzon@amazon.com>
Message-ID: <Z5KkkldrWpw8wayS@LQ3V64L9R2>
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
 <Z5KYWAshgRL2GbX2@LQ3V64L9R2>
 <414c773d-5b7b-44b8-82a7-da49168ee791@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <414c773d-5b7b-44b8-82a7-da49168ee791@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1737663638; x=1738268438; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KB1t1DSHYe/kIJpeHgsnuq5QN3rT3/xSpDRas/TVl9Q=;
 b=TdfLRJ2tJ+kSUb1kYy/8Q3C7SycjCD9mAQnK1Xab8lgJJQ0jq/mS/fMcBFgfkeUbVG
 BiXCwO5a/BqU6BfnIqoaDTVpecS8J1zFOSdq1O7LLJrRrFtloGgHtpvGF3qMiffUdEwR
 Z8ZoQgGbL+d/1hjdmARqYM3fs8spAvOF/uF/E=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=TdfLRJ2t
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

On Thu, Jan 23, 2025 at 01:13:10PM -0700, Ahmed Zaki wrote:
> 
> 
> On 2025-01-23 12:28 p.m., Joe Damato wrote:
> > On Fri, Jan 17, 2025 at 05:33:31PM -0700, Ahmed Zaki wrote:
> > > Add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting ARFS should
> > > set the flag via netif_enable_cpu_rmap() and core will allocate and manage
> > > the ARFS rmap. Freeing the rmap is also done by core when the netdev is
> > > freed.
> > > 
> > > For better IRQ affinity management, move the IRQ rmap notifier inside the
> > > napi_struct. Consequently, add new notify.notify and notify.release
> > > functions: netif_irq_cpu_rmap_notify() and netif_napi_affinity_release().
> > > 
> > > Acked-by: David Arinzon <darinzon@amazon.com>
> > > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > 
> > [...]
> > 
> > > diff --git a/net/core/dev.c b/net/core/dev.c
> > > index fe5f5855593d..dbb63005bc2b 100644
> > > --- a/net/core/dev.c
> > > +++ b/net/core/dev.c
> > > @@ -6862,6 +6862,141 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
> > >   }
> > >   EXPORT_SYMBOL(netif_queue_set_napi);
> > > +#ifdef CONFIG_RFS_ACCEL
> > > +static void
> > > +netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
> > > +			  const cpumask_t *mask)
> > > +{
> > > +	struct napi_struct *napi =
> > > +		container_of(notify, struct napi_struct, notify);
> > > +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> > > +	int err;
> > 
> > I wonder if this generates a warning with some compilers? err is
> > defined not used if !napi->dev->rx_cpu_rmap_auto ? Not sure.
> > 
> > > +	if (napi->dev->rx_cpu_rmap_auto) {
> > > +		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
> > > +		if (err)
> > > +			pr_warn("%s: RMAP update failed (%d)\n",
> > > +				__func__, err);
> > > +	}
> > > +}
> > > +
> > > +static void netif_napi_affinity_release(struct kref *ref)
> > > +{
> > > +	struct napi_struct *napi =
> > > +		container_of(ref, struct napi_struct, notify.kref);
> > > +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> > > +
> > > +	if (!napi->dev->rx_cpu_rmap_auto)
> > > +		return;
> > > +	rmap->obj[napi->napi_rmap_idx] = NULL;
> > > +	napi->napi_rmap_idx = -1;
> > > +	cpu_rmap_put(rmap);
> > > +}
> > > +
> > > +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
> > > +{
> > > +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> > > +	int rc;
> > > +
> > > +	if (!rmap)
> > > +		return -EINVAL;
> > > +
> > > +	napi->notify.notify = netif_irq_cpu_rmap_notify;
> > > +	napi->notify.release = netif_napi_affinity_release;
> > 
> > Maybe the callbacks should only be set at the end after everything
> > else is successful, just before the return 0 ?
> > 
> 
> I believe this is needed before irq_set_affinity_notifier(), OW we could
> have some racing. I can move it there if you like.
> 
> > > +	cpu_rmap_get(rmap);
> > > +	rc = cpu_rmap_add(rmap, napi);
> > > +	if (rc < 0)
> > > +		goto err_add;
> > > +
> > > +	napi->napi_rmap_idx = rc;
> > > +	rc = irq_set_affinity_notifier(irq, &napi->notify);
> > > +	if (rc)
> > > +		goto err_set;
> > > +
> > > +	return 0;
> > > +
> > > +err_set:
> > > +	rmap->obj[napi->napi_rmap_idx] = NULL;
> > > +	napi->napi_rmap_idx = -1;
> > > +err_add:
> > > +	cpu_rmap_put(rmap);
> > > +	return rc;
> > > +}
> > 
> > [...]
> > 
> > > +void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
> > > +{
> > > +	int rc;
> > > +
> > > +	if (!napi->dev->rx_cpu_rmap_auto)
> > > +		goto out;
> > 
> > Maybe the above if statement could be extended to be something like:
> > 
> > if (!napi->dev->rx_cpu_rmap_auto || napi->irq < 0)
> >    goto out;
> > 
> > then you can omit the irq > 0 checks in the code below, potentially?
> 
> I am afraid I don't get this, the checks below one is for the new irq (could
> be valid or -1) and one for the existing (nap->irq).

Ah yes, my mistake; I misread the other half of the if statement
below. My apologies.

> > 
> > > +	/* Remove existing rmap entries */
> > > +	if (napi->irq != irq && napi->irq > 0)
> > > +		irq_set_affinity_notifier(napi->irq, NULL);
> > > +
> > > +	if (irq > 0) {
> > > +		rc = napi_irq_cpu_rmap_add(napi, irq);
> > > +		if (rc) {
> > > +			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
> > > +				    rc);
> > > +			netif_disable_cpu_rmap(napi->dev);
> > > +		}
> > > +	}
> > > +
> > > +out:
> > > +	napi->irq = irq;
> > > +}
> > > +EXPORT_SYMBOL(netif_napi_set_irq_locked);
> > > +
> 
> Thanks.
> 
