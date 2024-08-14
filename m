Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E379951E6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 17:19:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C470F402AF;
	Wed, 14 Aug 2024 15:19:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xqywSRnA__5j; Wed, 14 Aug 2024 15:19:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5061402B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723648794;
	bh=gTi7bYjYTGMEWGbyKlWoq2Paz7kIbeWFkJUp3rdie2E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uX9R8QBNbZTqR1tYzlHdCLIN7ttSFVMO+zpG1HwknVqQLPFhV4zJE+ZUJKzlUdv/G
	 DMQSGaeBRILBPbEun4j6k8uDSlyO3rlU1iMZeaCgaTXBUZGyb3AfNrmfghCCBCQJLR
	 JFqlw2VsmyKUhQl8i4sofPCRIw8z5/8xIQjEkCxGpktD0o1n2/lFKR2SXIV9vX+lCQ
	 hvhgNF4TeRhctIVFxwdrr6rW9MXYhj+ZUPsZD+COEG9olJYDTTIjEQu92dIShnG82B
	 Yo9YzQ7/0EMAfi5+3bN+F9kECxnsZVWWsUA4scMuYeEZZrPehkZMC+HUQ28sgB2IT3
	 ffHM7mCF8dndw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5061402B5;
	Wed, 14 Aug 2024 15:19:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C22E1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 089FF40068
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:19:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkmncyFFaZTF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 15:19:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F7D140097
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F7D140097
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F7D140097
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:19:50 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-a7a8caef11fso1635666b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 08:19:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723648788; x=1724253588;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gTi7bYjYTGMEWGbyKlWoq2Paz7kIbeWFkJUp3rdie2E=;
 b=TlB5OPqxMjoBs0z6sUQn7npSzBfaEGMI6zGKOSaOLhTtgH0nzbth9ZZ6WamwGzGVOX
 DPq16EVdxSaLo/TYUl6BjPtkQE5JR4VLY7SNA+MFnzC3QXQQPfzilldBsoJmPVQ173qk
 bUXiQyboRzY6oTeE5zJRJPu7mmDdnJAfuz/DMjc7EJKp3ghe1T/h9aqlC+MSoJc8xbJ0
 j+g9BbHS/ODfBJzxwO4hYVgyNmEp6oG+oDHcg+NctLpbH5hRLK9sC/yAUqoo7uxCRI4F
 JZ41Po99Dg2A0bBM1H7MiXZoGVS0fUMqqekPouKly0Y68RqXainclJPeXBQPmJilkdkE
 8+wQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXiWVJyZwk7koH2teTA+Pxhza0Uy03r/o15ArIse8DW50T74ONmNYsGb3lFsYG6yzK1nJD2HbqqDIsM6/nYuWmPYrwsARpo5tYUv7dcjjcCHg==
X-Gm-Message-State: AOJu0Yzrn0IRcyNHAxmdA5lJta5sFh4hkKDuKzPUIlx6vAN2vSncz03z
 znCMOpsKx2v9ZsWzuWHQxGInrq1tsDznvfwOBLtEJq1KSPlPC+q6nnjYjbDjEyw=
X-Google-Smtp-Source: AGHT+IFvDOsbuKJOT0XL/TM+iXA5EFj0BhRg1ts5WGvw7A2g2cgRk9L2pdTDRxwV8rDbcUIbgQvSeA==
X-Received: by 2002:a17:907:d5a4:b0:a72:40b4:c845 with SMTP id
 a640c23a62f3a-a8367006615mr221312666b.51.1723648788188; 
 Wed, 14 Aug 2024 08:19:48 -0700 (PDT)
Received: from LQ3V64L9R2 ([80.208.222.2]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a80f414e127sm183820466b.150.2024.08.14.08.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 08:19:47 -0700 (PDT)
Date: Wed, 14 Aug 2024 16:19:45 +0100
From: Joe Damato <jdamato@fastly.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZrzLEZs01KVkvBjw@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeroen de Borst <jeroendb@google.com>,
 Jiri Pirko <jiri@resnulli.us>, Leon Romanovsky <leon@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Shailend Chand <shailend@google.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Willem de Bruijn <willemb@google.com>,
 Yishai Hadas <yishaih@nvidia.com>,
 Ziwei Xiao <ziweixiao@google.com>
References: <20240812145633.52911-1-jdamato@fastly.com>
 <20240813171710.599d3f01@kernel.org>
 <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
 <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
 <20240814080915.005cb9ac@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240814080915.005cb9ac@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723648788; x=1724253588; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gTi7bYjYTGMEWGbyKlWoq2Paz7kIbeWFkJUp3rdie2E=;
 b=sJSDWt7yN/2RgHfH3ItiAegdCsP2PyUyWif1uxlVtKsJHhv6UGubGkB60cRW+FknIr
 hh06hdsB55Jp4daKUN3qMdrhzHZXasF8qnlnsMsr7tt0jdeBz3SoFVBKR5Fe8KowKNLO
 JzP8++fLWIl8RPL55aIZOeyZtl/DJWH7OivhA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=sJSDWt7y
Subject: Re: [Intel-wired-lan] [RFC net-next 0/6] Cleanup IRQ affinity
 checks in several drivers
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ziwei Xiao <ziweixiao@google.com>, Jeroen de Borst <jeroendb@google.com>,
 Leon Romanovsky <leon@kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Shailend Chand <shailend@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 14, 2024 at 08:09:15AM -0700, Jakub Kicinski wrote:
> On Wed, 14 Aug 2024 13:12:08 +0100 Joe Damato wrote:
> > Actually... how about a slightly different approach, which caches
> > the affinity mask in the core?
> 
> I was gonna say :)
> 
> >   0. Extend napi struct to have a struct cpumask * field
> > 
> >   1. extend netif_napi_set_irq to:
> >     a. store the IRQ number in the napi struct (as you suggested)
> >     b. call irq_get_effective_affinity_mask to store the mask in the
> >        napi struct
> >     c. set up generic affinity_notify.notify and
> >        affinity_notify.release callbacks to update the in core mask
> >        when it changes
> 
> This part I'm not an export on.
> 
> >   2. add napi_affinity_no_change which now takes a napi_struct
> > 
> >   3. cleanup all 5 drivers:
> >     a. add calls to netif_napi_set_irq for all 5 (I think no RTNL
> >        is needed, so I think this would be straight forward?)
> >     b. remove all affinity_mask caching code in 4 of 5 drivers
> >     c. update all 5 drivers to call napi_affinity_no_change in poll
> > 
> > Then ... anyone who adds support for netif_napi_set_irq to their
> > driver in the future gets automatic support in-core for
> > caching/updating of the mask? And in the future netdev-genl could
> > dump the mask since its in-core?
> > 
> > I'll mess around with that locally to see how it looks, but let me
> > know if that sounds like a better overall approach.

I ended up going with the approach laid out above; moving the IRQ
affinity mask updating code into the core (which adds that ability
to gve/mlx4/mlx5... it seems mlx4/5 cached but didn't have notifiers
setup to update the cached copy?) and adding calls to
netif_napi_set_irq in i40e/iavf and deleting their custom notifier
code.

It's almost ready for rfcv2; I think this approach is probably
better ?

> Could we even handle this directly as part of __napi_poll(),
> once the driver gives core all of the relevant pieces of information ?

I had been thinking the same thing, too, but it seems like at least
one driver (mlx5) counts the number of affinity changes to export as
a stat, so moving all of this to core would break that.

So, I may avoid attempting that for this series.

I'm still messing around with this but will send an rfcv2 in a bit.
