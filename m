Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B119EA44F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 02:29:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78588404D4;
	Tue, 10 Dec 2024 01:29:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3ZWQDG8_gmA; Tue, 10 Dec 2024 01:29:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 052A9402FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733794149;
	bh=/vvZ8mNgQOqv9Mg4Vnx4KEpPxGZz8wEUG/03GLTx8B8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=weshmS9qLN0LDOMkDoonwoyKetJGAESlq4hqoq1oR1Qe6IBz5LZ+Bet5G1G9Gaav8
	 ySYw4TTsNqT5Xn1fc1ycXFJ0uVsBsUwkPUI82hAsxyhE1YegOJ3He2mcf+MtnMiscw
	 PQDx2sWmKD5ekgjS6ybhU2isLAsjjonAsYjkFpqLSy5whrL+TM33nas+bcFucD1Ql3
	 w4UeDA1XynJVxoB3LxTeUcMMcyU7j0fIEJyZ+suD2wjWC8tTAiJmYQIizhVQ9J0BVK
	 9Z1+mq6pIj1nHgM/ECMNgighPJkZM62ioUVFANzMtDSXMIGugGVjBWIhlrESXxkmyj
	 Iq0INefBYk9PA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 052A9402FD;
	Tue, 10 Dec 2024 01:29:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C6548E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 01:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD852402FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 01:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ar_Y6cF1PSTp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 01:29:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 225E0402F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 225E0402F7
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 225E0402F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 01:29:04 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-724f0f6300aso5910405b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Dec 2024 17:29:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733794144; x=1734398944;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/vvZ8mNgQOqv9Mg4Vnx4KEpPxGZz8wEUG/03GLTx8B8=;
 b=KBpB7w8BcA+anGtK2Mcir24dowmXfUMv+52ysgmfV+WK09kFvjhrI8Xl9XqY8gG5K5
 OIgAqIjZaymZ98QI3gNdCsTVSmuyff6tqbqJyTz1d8Xihv0ZE7RCwICoayeUs0WHTh/5
 Zu1rNGosTlLEs44+zhC8xy2zxuPhhjXrH141VoNrKjhzc9e5PW8lTbKTQUldGvc0ly5g
 shRpYJMBDQzvXEgZzMizYD5cDkBniP+bkTdXtpYYFKXpDO8Xb3f3B29DP9SwDwcmzr4R
 A5zoUmRsK7g4a+CbBBNM2fEBcncHgvmlRJ/fwCiRw2qxjbr238h1dXVZDqdiCrTLuaU2
 imQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXChbuUmNL47yrs3hCfs17lj9Z4km6SOFk8zUtyljomI0gDz3OdmVBF+8MCI8F7iPL35eGQxjw4pPeg/Ffh/TE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyGLAd+HbhDTqdIjq0g+RWfkfzlB1EYj/pSLnvWEbQoyl9L52KA
 ggZQ0UXzLicDoBnpfhGJM74POevvu7WinOhqU6wQ4hJB5m48Et3AOXi2shq3Gpg=
X-Gm-Gg: ASbGncudkOLr6ZIy3Ku5HLW4FloOvDMD2qxJonnjQlRXXmkgSg+bwIUxyvJZPqirtKs
 Bs0muKoXkV5U/gIS2O7ZwwMiuEBaqwFzVA1tqxQsDNmCdBEJl15WnZM0LdliTdNsAqnG+m2VD0R
 x1DKOWbecLWFA9AeQPt1EKd3WmVkKOaC7HXPBhOCl7oPFE9vmHpSZWiFoubG0cD2Bz4njo6f9NO
 iXxvXC6jzxNjAjivB0rhdREzF4CXdsT3v7nzaOcTrgZ6zICR04NkJZ7MYVpSww+B/f+X5eVhVCJ
 shvIqrUv6Zim0G3PB3h9
X-Google-Smtp-Source: AGHT+IHTGRJJLmGpS+B3n881CxEm2xxSY0XzWxa48OEmh9li0OpcPMXPe2nCWR3JJ+xzAK5w8NWXJg==
X-Received: by 2002:a05:6a00:1815:b0:71e:6b8:2f4a with SMTP id
 d2e1a72fcca58-7273cb144f0mr4187888b3a.12.1733794144041; 
 Mon, 09 Dec 2024 17:29:04 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-725ce38be8dsm5093689b3a.149.2024.12.09.17.29.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2024 17:29:03 -0800 (PST)
Date: Mon, 9 Dec 2024 17:29:00 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <Z1eZXKe58ncARD2N@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
 <20241210002626.366878-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210002626.366878-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1733794144; x=1734398944; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/vvZ8mNgQOqv9Mg4Vnx4KEpPxGZz8wEUG/03GLTx8B8=;
 b=USgk4LURsJZsen+mMWl1ZrU8PPfmWhbz+3HtNhw+6McSAGZXJh31KL6TC+3NpyZ7MY
 yVf9NrVQm36Ui8yzMbTt9bw7kR7wzwe4mDtuVSEtbc7GAfciWkj2UluJ7NJzJTE7PkX+
 i1MgVRd2lc7hxd+XNdV/BQlsnDo8yRO4A00KY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=USgk4LUR
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next 2/6] net: napi: add CPU
 affinity to napi->config
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

On Mon, Dec 09, 2024 at 05:26:22PM -0700, Ahmed Zaki wrote:
> A common task for most drivers is to remember the user's CPU affinity to
> its IRQs. On each netdev reset, the driver must then re-assign the
> user's setting to the IRQs.
> 
> Add CPU affinity mask to napi->config. To delegate the CPU affinity
> management to the core, drivers must:
>  1 - add a persistent napi config:     netif_napi_add_config()
>  2 - bind an IRQ to the napi instance: netif_napi_set_irq()
> 
> the core will then make sure to use re-assign affinity to the napi's
> IRQ.
> 
> The default mask set to all IRQs is all online CPUs.
> 
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---

[...]

> diff --git a/net/core/dev.c b/net/core/dev.c
> index 6ef9eb401fb2..778ba27d2b83 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -6699,11 +6699,35 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
>  }
>  EXPORT_SYMBOL(netif_queue_set_napi);
>  
> +static void
> +netif_napi_affinity_notify(struct irq_affinity_notify *notify,
> +			   const cpumask_t *mask)
> +{
> +	struct napi_struct *napi =
> +		container_of(notify, struct napi_struct, affinity_notify);
> +
> +	if (napi->config)
> +		cpumask_copy(&napi->config->affinity_mask, mask);
> +}
> +
> +static void
> +netif_napi_affinity_release(struct kref __always_unused *ref)
> +{
> +}
> +
>  static void napi_restore_config(struct napi_struct *n)
>  {
>  	n->defer_hard_irqs = n->config->defer_hard_irqs;
>  	n->gro_flush_timeout = n->config->gro_flush_timeout;
>  	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
> +
> +	if (n->irq > 0 && n->irq_flags & NAPIF_F_IRQ_AFFINITY) {
> +		n->affinity_notify.notify = netif_napi_affinity_notify;
> +		n->affinity_notify.release = netif_napi_affinity_release;
> +		irq_set_affinity_notifier(n->irq, &n->affinity_notify);
> +		irq_set_affinity(n->irq, &n->config->affinity_mask);
> +	}
> +
>  	/* a NAPI ID might be stored in the config, if so use it. if not, use
>  	 * napi_hash_add to generate one for us. It will be saved to the config
>  	 * in napi_disable.
> @@ -6720,6 +6744,8 @@ static void napi_save_config(struct napi_struct *n)
>  	n->config->gro_flush_timeout = n->gro_flush_timeout;
>  	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
>  	n->config->napi_id = n->napi_id;
> +	if (n->irq > 0 && n->irq_flags & NAPIF_F_IRQ_AFFINITY)
> +		irq_set_affinity_notifier(n->irq, NULL);

My understanding when I attempted this was that using generic IRQ
notifiers breaks ARFS [1], because IRQ notifiers only support a
single notifier and so drivers with ARFS can't _also_ set their own
notifiers for that.

Two ideas were proposed in the thread I mentioned:
  1. Have multiple notifiers per IRQ so that having a generic core
     based notifier wouldn't break ARFS.
  2. Jakub mentioned calling cpu_rmap_update from the core so that a
     generic solution wouldn't be blocked.

I don't know anything about option 1, so I looked at option 2.

At the time when I read the code, it seemed that cpu_rmap_update
required some state be passed in (struct irq_glue), so in that case,
the only way to call cpu_rmap_update from the core would be to
maintain some state about ARFS in the core, too, so that drivers
which support ARFS won't be broken by this change.

At that time there was no persistent per-NAPI config, but since
there is now, there might be a way to solve this.

Just guessing here, but maybe one way to solve this would be to move
ARFS into the core by:
  - Adding a new bit in addition to NAPIF_F_IRQ_AFFINITY... I don't
    know NAPIF_F_ARFS_AFFINITY or something? so that drivers
    could express that they support ARFS.
  - Remove the driver calls to irq_cpu_rmap_add and make sure to
    pass the new bit in for drivers that support ARFS (in your
    changeset, I believe that would be at least ice, mlx4, and
    bnxt... possibly more?).
  - In the generic core code, if the ARFS bit is set then you pass
    in the state needed for ARFS to work, otherwise do what the
    proposed code is doing now.

But, that's just a guess. Maybe there's a better way.

In any case, the proposed change as-is, I think, breaks ARFS in the
same way my proposed change did, so I think any further iterations
on this might need to also include something to avoid breaking ARFS.

FWIW, I was trying to solve a slightly different problem which was
removing a repeated check in driver napi poll functions to determine
if the IRQ affinity had changed.

But with the persistent NAPI state, it might be possible to solve
all of these problems in one go since they are all related?

[1]: https://lore.kernel.org/lkml/701eb84c-8d26-4945-8af3-55a70e05b09c@nvidia.com/
