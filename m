Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A12A27E67
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 23:43:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69829410A4;
	Tue,  4 Feb 2025 22:43:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OeLz9k5gKgTD; Tue,  4 Feb 2025 22:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7529A4109E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738709014;
	bh=zj+FrDqAZ6eREnqkCMCmvMCbAqmY9GTn137zHVuvgyU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J8qFKWQb4/48Ps6zOk0+LOJLQw+0SfEw/O19vhKnXfMnBarQFrj3xzSXTo4d6iIuR
	 MXyETBSP2fYKPViMqKoCq51yONL9PnDAj9/oVgZ9lzEJ+XE5z2Ix3psOWUxs4PSHKm
	 pUwPCCFsh6/uusqRnFaoWv/RgZRgLD9l0CaFD5HspxLuiqjWbOaIzSMWNMZsMlh0Zs
	 VQu+tlBim/6D9Q8AAlbEgCXLxEDMjYGnz5yKIAU6HReHBqaIG2ISeJAJQOmHiHiKrN
	 p9pXeGlXcgOOb19TemUJrYG8DpjciDBA1p9x02Ynp2EuwNKJH/5anJeKWaD14O/El8
	 d7l6YdUUhToGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7529A4109E;
	Tue,  4 Feb 2025 22:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E49C185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 527F681E8C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7AcTRG5DKNiB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 22:43:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C55680F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C55680F12
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C55680F12
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:43:30 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-2162c0f6a39so4746455ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Feb 2025 14:43:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738709010; x=1739313810;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zj+FrDqAZ6eREnqkCMCmvMCbAqmY9GTn137zHVuvgyU=;
 b=wDIpi0hF/qU33nWMdzy0qWUytGd8DBPnEbMqwoQQUvt0XzxHVl7JCFoYeQaxnRnKma
 LxWXrXGx3OE5tHCnxXpsPYIzwHVCbOuX8Q6ayhW2knuW+tkuXZbSpsbbuhEsoKFjh3N9
 3OK1IjEGaNdxFQb2Tza0L72pHGkdY+QMXf9VvTC82Yj6n97zNlTmQe0ScHt0xmVoj/QG
 u9xYtKh0L4JB/l9ezBxH/Rxmw0shQ3U8rdH5Fnn7FQFCJ1qWy4tZuYjtWInOM5131W/H
 vhkfVA4VRAlS1sJxPVugeyaYNEumXx9cyKdK3LhAy2rFlkG/hzrmsEb+mFuc1qMS2DCo
 pJSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1MTUfVDzXMx27VCsUU1Lp0s0VVPGq4GjiOjvH6qJQpOX0dNFjM+12qIoOOvKRvIsTnLF9eo4gEvDxmzc281U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4QLrd6IREMXXTWs0AnNcTSOge9mFfOnIg0VkpwcCvNe+QGl40
 qs6/vVoW2uXdEPzhDRoNGTZY0lVbxfmZ9JvTo8+q8Oc5QJ06LelR5wIfDiqSl04=
X-Gm-Gg: ASbGncs5s1Clwb828zr4Evgd+fcQ7Dp379lTWqGqk4DNMx44FOdcA7sclsVxMy6GS89
 4lU/TMbxrNshPfBhnfJdCIHVqoU5IzQGTz7fFziEBAbYDVVAtUlAHbC2Nd0mU/zSTBmPHmxqNPF
 e3gt512k9pfOUJUweOZHYrPN2B0nrK7eqqsh8N3KRW1OL+s1V8q3CBStjkqObT1+tVFDcyhsKMs
 rPwh7FS9EGxrc0NfZzugF6FfbhPM3u7Emcqk7ou+fmAvFhZVfzFgrWF3HPJCHyYbR9+lWeWDWLb
 B6BflXlRfAUnscVavuYqUADrQhSsSJmavudzY4zUGIrw28TeDLtPr5nnMw==
X-Google-Smtp-Source: AGHT+IHLvX1dDdiS2RfLnxL7zTZTGdoNfW2b0QcJx6cyMgrRNPER1Nn1XvyIVU1RrBXU5JhG4RklBw==
X-Received: by 2002:a05:6a20:d818:b0:1e1:ad90:dda6 with SMTP id
 adf61e73a8af0-1ede832f594mr1163714637.20.1738709009758; 
 Tue, 04 Feb 2025 14:43:29 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72fe631bfdasm11286156b3a.16.2025.02.04.14.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2025 14:43:29 -0800 (PST)
Date: Tue, 4 Feb 2025 14:43:26 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 shayd@nvidia.com, akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <Z6KYDs0os_DizhMa@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
 <20250204220622.156061-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204220622.156061-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1738709010; x=1739313810; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zj+FrDqAZ6eREnqkCMCmvMCbAqmY9GTn137zHVuvgyU=;
 b=rtW+f6xGlmsBHV4te5i1cOB5c4aTI4JIvlnEfgKMF0q2OB6Nkh1FJRKKyA+K79jw5F
 Z2cBz+23I/Lsj09vShNPreQ2N58j0j7yg4mXHedJQXHAn1MMMI3RyxgrcKzl7zt8mRmW
 XWRNkJtTJDo3wM05fpBTe6sfRlYIv64zuTbHU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=rtW+f6xG
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/5] net: napi: add CPU
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

On Tue, Feb 04, 2025 at 03:06:19PM -0700, Ahmed Zaki wrote:
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

Not sure, but maybe the above should be documented somewhere like
Documentation/networking/napi.rst or similar?

Maybe that's too nit-picky, though, since the per-NAPI config stuff
never made it into the docs (I'll propose a patch to fix that).

> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  include/linux/netdevice.h | 14 +++++++--
>  net/core/dev.c            | 62 +++++++++++++++++++++++++++++++--------
>  2 files changed, 61 insertions(+), 15 deletions(-)

[...]
 
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 33e84477c9c2..4cde7ac31e74 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c

[...]

> @@ -6968,17 +6983,28 @@ void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
>  {
>  	int rc;
>  
> -	/* Remove existing rmap entries */
> -	if (napi->dev->rx_cpu_rmap_auto &&
> +	/* Remove existing resources */
> +	if ((napi->dev->rx_cpu_rmap_auto || napi->dev->irq_affinity_auto) &&
>  	    napi->irq != irq && napi->irq > 0)
>  		irq_set_affinity_notifier(napi->irq, NULL);
>  
>  	napi->irq = irq;
> -	if (irq > 0) {
> +	if (irq < 0)
> +		return;
> +
> +	if (napi->dev->rx_cpu_rmap_auto) {
>  		rc = napi_irq_cpu_rmap_add(napi, irq);
>  		if (rc)
>  			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
>  				    rc);
> +	} else if (napi->config && napi->dev->irq_affinity_auto) {
> +		napi->notify.notify = netif_napi_irq_notify;
> +		napi->notify.release = netif_napi_affinity_release;
> +
> +		rc = irq_set_affinity_notifier(irq, &napi->notify);
> +		if (rc)
> +			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
> +				    rc);
>  	}

Should there be a WARN_ON or WARN_ON_ONCE in here somewhere if the
driver calls netif_napi_set_irq_locked but did not link NAPI config
with a call to netif_napi_add_config?

It seems like in that case the driver is buggy and a warning might
be helpful.
