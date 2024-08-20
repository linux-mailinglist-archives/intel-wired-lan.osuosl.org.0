Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAA995810C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 10:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1679D608A1;
	Tue, 20 Aug 2024 08:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NDmIszlJ-gFD; Tue, 20 Aug 2024 08:33:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E3476088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724142790;
	bh=XNQ9tyNfl4ljX/BPGLUOjjoGD0Ou+TIYM+qPExssLvc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5AHW3oNEkEHYoDrEheMfrj4Hw289TraCE0Z/1Q1PoDZdoG4cKl5VxPBapbP3X29Tz
	 gC5oNcRXAX80DTsSBceo/swWPIOIo5ODjBVVeWtN5Iy/26Wb5JqOjWsSqkOAdk+jWt
	 wmoSU02wFf2B7b0fkUqcnuxZ6e/eLGZFcHQoPObUpWOEzvRaPXP9ke1LCozEfMoOiJ
	 wZu6ekwLR3tfohY3TETGfUy1E4ZSZdxxYphqp2MlaVflBwXFG8RlFl4s7/abf/4efS
	 8UwPrHizJhSAzP1nrmbg3mcFDn/5C8JUwrSYJN4dVtLg9euDqFQKiRmOIZUFh80G3T
	 gAEPccM88m/7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E3476088D;
	Tue, 20 Aug 2024 08:33:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A5F41BF341
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 08:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26E6F408E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 08:33:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eZ7X5BK5VNhJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 08:33:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F980408C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F980408C8
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F980408C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 08:33:06 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-a7a8caef11fso615442366b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 01:33:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724142784; x=1724747584;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XNQ9tyNfl4ljX/BPGLUOjjoGD0Ou+TIYM+qPExssLvc=;
 b=pRCKRPcoElji+lV8gVatO3/ChmEMO+ocRQc4gVGTF9Rc47MhREkTnsLmk/MrSkmcNw
 onlVSgqyQ7Olm0N7IxW55xUF1cEUzHcBFGrT8wT2NpJ+eGBRqL3p1DWW2mFLSKwWj/4w
 MBLXtb/3n859rHYQ0EUh8aQKLMwCYvRAjakW16Ylcm1KuZ190kYsamWAAInCHjyvIx0O
 ih0IFex+z8IP6EbtgyKss6HMyii9K7IHwoevsA/KuzKq6j+ybDRICPGplqU/B54sedSk
 Y0vpIU4wlsWVJYc2RJG1+B1jkgm3eMhwsq9o84j09kR89K3h0Zly2dmrLsc9nzjcKNA+
 Vgbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWSRw567YPpsxJhfoOl+CAWiTD+5m5IDZ4Y+jAhf0z+FEXqMMDHLmbalyCDdvGwOErcSAYn9thX0tdJKYww7Vz9Ax3GkAsGcSIDgVDBxBOksg==
X-Gm-Message-State: AOJu0YzYU8TOzhOd6JAXAOnF+v3GqKiro6370yYs5sqAg8L05z+avRKj
 MDBw76u43Nl9vV+PpX30gQt92IWiy2krAb5vZU7a9g2YnqfRKNzpHxcUvKq7HuE=
X-Google-Smtp-Source: AGHT+IHdCu1gJlayHwi4drLhhfQxyfMUzMC+JYbFPtj9dlU1JF6GxmGI/OuqVO5LTmVnsfb9hkmppA==
X-Received: by 2002:a17:907:97cf:b0:a6f:59dc:4ece with SMTP id
 a640c23a62f3a-a83928a4023mr845774466b.2.1724142783295; 
 Tue, 20 Aug 2024 01:33:03 -0700 (PDT)
Received: from LQ3V64L9R2.home ([2a02:c7c:f016:fc00:3906:31c:255a:bf09])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a83aeb6eb4dsm435559766b.35.2024.08.20.01.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2024 01:33:03 -0700 (PDT)
Date: Tue, 20 Aug 2024 09:33:01 +0100
From: Joe Damato <jdamato@fastly.com>
To: Shay Drori <shayd@nvidia.com>
Message-ID: <ZsRUvcOKLnTw16wD@LQ3V64L9R2.home>
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
 Ziwei Xiao <ziweixiao@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20240813171710.599d3f01@kernel.org>
 <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
 <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
 <20240814080915.005cb9ac@kernel.org> <ZrzLEZs01KVkvBjw@LQ3V64L9R2>
 <701eb84c-8d26-4945-8af3-55a70e05b09c@nvidia.com>
 <ZrzxBAWwA7EuRB24@LQ3V64L9R2> <20240814172046.7753a62c@kernel.org>
 <Zr3XA-VIE_pAu_k0@LQ3V64L9R2>
 <fe5c6b4b-6c78-402b-b454-837e3760c668@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe5c6b4b-6c78-402b-b454-837e3760c668@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1724142784; x=1724747584; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XNQ9tyNfl4ljX/BPGLUOjjoGD0Ou+TIYM+qPExssLvc=;
 b=bxXBID7KvVMhIuBzCscqf9DRbL1Ui2/4AYP8xfsSifOpcUW0rD57OiReDQ9aHMPH3n
 ERyVzuct82O0b5TcBxiCKfSad6QdhhKyKaLuBmQ9mtH0W5qLdzuuh2aoKVMxqRUDlAt3
 WzUktNsl5OJEA/kB+hrHPsAuG22tRxbszctCw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=bxXBID7K
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
 Thomas Gleixner <tglx@linutronix.de>, Willem de Bruijn <willemb@google.com>,
 Yishai Hadas <yishaih@nvidia.com>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 20, 2024 at 09:40:31AM +0300, Shay Drori wrote:
> 
> 
> On 15/08/2024 13:22, Joe Damato wrote:
> > External email: Use caution opening links or attachments
> > 
> > 
> > On Wed, Aug 14, 2024 at 05:20:46PM -0700, Jakub Kicinski wrote:
> > > On Wed, 14 Aug 2024 19:01:40 +0100 Joe Damato wrote:
> > > > If it is, then the only option is to have the drivers pass in their
> > > > IRQ affinity masks, as Stanislav suggested, to avoid adding that
> > > > call to the hot path.
> > > > 
> > > > If not, then the IRQ from napi_struct can be used and the affinity
> > > > mask can be generated on every napi poll. i40e/gve/iavf would need
> > > > calls to netif_napi_set_irq to set the IRQ mapping, which seems to
> > > > be straightforward.
> > > 
> > > It's a bit sad to have the generic solution blocked.
> > > cpu_rmap_update() is exported. Maybe we can call it from our notifier?
> > > rmap lives in struct net_device
> > 
> > I agree on the sadness. I will take a look today.
> > 
> > I guess if we were being really ambitious, we'd try to move ARFS
> > stuff into the core (as RSS was moved into the core).
> 
> 
> Sorry for the late reply. Maybe we can modify affinity notifier infra to
> support more than a single notifier per IRQ.
> @Thomas, do you know why only a single notifier per IRQ is supported?

Sorry for the delayed response as well on my side; I've been in
between lots of different kernel RFCs :)

Jakub: the issue seems to be that the internals in lib/cpu_rmap.c
are needed to call cpu_rmap_update. It's probably possible to expose
them somehow so that a generic IRQ notifier could call
cpu_rmap_update, as you mentioned, but some rewiring is going to be
needed, I think.

I had a couple ideas for rewiring stuff, but I haven't had time to
context switch back on to this work as I've been busy with a few
other things (the IRQ suspension stuff and another mlx5 thing I have
yet to send upstream).

I hope to take another look at it this week, but I welcome any
suggestions from Shay/Thomas in the meantime.

- Joe
