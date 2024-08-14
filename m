Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99CD9521C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 20:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90BE640C19;
	Wed, 14 Aug 2024 18:01:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n2srlspjDkVF; Wed, 14 Aug 2024 18:01:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D7F740C1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723658509;
	bh=iKG1BA6nZA/+iN2W0nGROx4tq6HJetKTMlW3JVQELg0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XxbP+g2uGVjmfFT1nCI/vS1QBEBoZqtT5ZXTODbNrwt3LCiP85T1UcIfz9mbutm+G
	 VjjeUxVfl2wGmRgncKgBeYsjsy6Yw7fJo3bigvpWLZXnaUec9kKKd47gxMZ26dkbLM
	 RZMYiNKRaq9CJlFbsk4xnlJmZOt3LmdTU3IgI0MEyhM+Y0PMpn2gpZX93sX8cURoME
	 ct1OiVnv3vaudE35SrtUEqkkusuIEvPTDbVRA9/GOTOin7ZKRxzVUHOziVicQXlVyo
	 IsVsQWjzmwhiFzZtJSiisary6gCBmfz3SmYbymEpMvyQ31wEi5TzhBpD5/64r6bKzS
	 A0Hw31vcZA9Dg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D7F740C1D;
	Wed, 14 Aug 2024 18:01:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D25B1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 18:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69FB9401BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 18:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXohnOH8bDf2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 18:01:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2248D401D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2248D401D4
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2248D401D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 18:01:45 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-3718706cf8aso63256f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 11:01:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723658504; x=1724263304;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iKG1BA6nZA/+iN2W0nGROx4tq6HJetKTMlW3JVQELg0=;
 b=IEvCY2+6iIbujSDizHpdDCA7nTAedRG6YpsZ/Ysn2vF6QMn92pkpQ/aHMzaAxZnux0
 8ltFwiIZftCfr9XSND7f9WutEsVXnWo/lPs84JxwSGpmjpPr19nVVh94rSbNlpih6nlo
 h+PcPzhMSXIrPRDfpsLV6PChtqbk05YrqS7taMFM7uSPtuSMTuqbU4FYne9sTgE/OoXQ
 WteGvwfmpU8ANU3GDAc6pEdm0NpkuUTO9E8e2xpr8cK5JFY+DegCTkgVGecmEJyD4XrI
 K+piTiS0X003dINfHo1BlDn+HA0qFZrD7h2qVYyWRRhDr1Xq3znPjSpaebDDII3lWjD+
 dUDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUXp9ew4RiBjib++pXyJW2a1hCVVDjwThYFAmmHFwikWkUZv+b9BawoSL1t+dgl6B8jmdRkfN4EG8Lvn6plxBB/eqyX9pAuoA8J0ScC6ca52w==
X-Gm-Message-State: AOJu0Yw23NPEvctzSlpMYln1JD5C5isAS1eDaCYrkQ3ileoVEQG1XNsz
 NbSo3ae2Svi4BaaSoCb6uPvEZhxr3HRDwe4pVWygd/y7VfT8dvKNriX1gVgqRww=
X-Google-Smtp-Source: AGHT+IGCmSIjhxSRM6zFrHvolmN2wXREY83zZw95/jXyk6UpHYC0uXJzFqUFz4BGJeihuJswIDQe0w==
X-Received: by 2002:a5d:59a5:0:b0:36b:357a:bfee with SMTP id
 ffacd0b85a97d-37177749bc7mr2760473f8f.1.1723658503541; 
 Wed, 14 Aug 2024 11:01:43 -0700 (PDT)
Received: from LQ3V64L9R2 ([80.208.222.2]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3718479c332sm548792f8f.87.2024.08.14.11.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 11:01:43 -0700 (PDT)
Date: Wed, 14 Aug 2024 19:01:40 +0100
From: Joe Damato <jdamato@fastly.com>
To: Shay Drori <shayd@nvidia.com>
Message-ID: <ZrzxBAWwA7EuRB24@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Shay Drori <shayd@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
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
 <20240814080915.005cb9ac@kernel.org> <ZrzLEZs01KVkvBjw@LQ3V64L9R2>
 <701eb84c-8d26-4945-8af3-55a70e05b09c@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <701eb84c-8d26-4945-8af3-55a70e05b09c@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723658504; x=1724263304; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iKG1BA6nZA/+iN2W0nGROx4tq6HJetKTMlW3JVQELg0=;
 b=Qthf4uYZK18T1WX+C8XHUX/NVNpu/6zYi5OHJEiACaXGn3GdSO2F0z/9RzU3eBXNRO
 O4pQQcRfxzrnRUrVnGQGYptG9wu3kneRdiptJuZe28FCLv+srj+JRPDg5ODh8OXHOzb3
 QmnB+8ui/b4cD9NGM7hDL8pi7xwcxhHu5KxVE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Qthf4uYZ
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
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Shailend Chand <shailend@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 14, 2024 at 07:03:35PM +0300, Shay Drori wrote:
> 
> 
> On 14/08/2024 18:19, Joe Damato wrote:
> > On Wed, Aug 14, 2024 at 08:09:15AM -0700, Jakub Kicinski wrote:
> > > On Wed, 14 Aug 2024 13:12:08 +0100 Joe Damato wrote:
> > > > Actually... how about a slightly different approach, which caches
> > > > the affinity mask in the core?
> > > 
> > > I was gonna say :)
> > > 
> > > >    0. Extend napi struct to have a struct cpumask * field
> > > > 
> > > >    1. extend netif_napi_set_irq to:
> > > >      a. store the IRQ number in the napi struct (as you suggested)
> > > >      b. call irq_get_effective_affinity_mask to store the mask in the
> > > >         napi struct
> > > >      c. set up generic affinity_notify.notify and
> > > >         affinity_notify.release callbacks to update the in core mask
> > > >         when it changes
> > > 
> > > This part I'm not an export on.
> 
> several net drivers (mlx5, mlx4, ice, ena and more) are using a feature
> called ARFS (rmap)[1], and this feature is using the affinity notifier
> mechanism.
> Also, affinity notifier infra is supporting only a single notifier per
> IRQ.
> 
> Hence, your suggestion (1.c) will break the ARFS feature.
> 
> [1] see irq_cpu_rmap_add()

Thanks for taking a look and your reply.

I did notice ARFS use by some drivers and figured that might be why
the notifiers were being used in some cases.

I guess the question comes down to whether adding a call to
irq_get_effective_affinity_mask in the hot path is a bad idea.

If it is, then the only option is to have the drivers pass in their
IRQ affinity masks, as Stanislav suggested, to avoid adding that
call to the hot path.

If not, then the IRQ from napi_struct can be used and the affinity
mask can be generated on every napi poll. i40e/gve/iavf would need
calls to netif_napi_set_irq to set the IRQ mapping, which seems to
be straightforward.

In both cases: the IRQ notifier stuff would be left as is so that it
wouldn't break ARFS.

I suspect that the preferred solution would be to avoid adding that
call to the hot path, right?
