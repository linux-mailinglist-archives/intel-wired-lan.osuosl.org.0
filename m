Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CF6951513
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 09:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A664A80B4E;
	Wed, 14 Aug 2024 07:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AVrjHMdyDiaw; Wed, 14 Aug 2024 07:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBBFD80ADC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723619695;
	bh=snr1RwI8r35tpJfYm30yYMDnFOSDHF5r97Sqomh+D38=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zyZlBG7nviz+VBi31PJ6lwuia66Kz0rRwTKbe6WakiTsLoDz1iFI/C4XBBldxJXa0
	 QKEa03JtuCwPHSeyrRJ9Pi1nqPyfD6yt/CjAtTtp1vxeg+SWTYm1BrlZTqCqDX6EwS
	 /MO/V8/828iJBavZRWnDHLu0uFHxmcNWRMxcU6MeY6gfCh1G7K5Y/n2ehAwX3PhIDs
	 wB8aXu7hlJuFTEQNXXcFv9G/yxWmCNB0OTDq46YZIoZd8I55P4ZUz4ff1q5sNvOtbS
	 fVbkikVVg9QexXrmbRWRmdvBlMwipggoQ9OBe0664ZJxDT0Y25UIdxGak3zu3nVN0Z
	 OcUHgnmc2PZ9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBBFD80ADC;
	Wed, 14 Aug 2024 07:14:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6DC41BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 07:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B309D80AC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 07:14:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vvF5UdoTGsDi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 07:14:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::429; helo=mail-wr1-x429.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4CD6580ABF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CD6580ABF
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CD6580ABF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 07:14:52 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-3684e8220f9so312468f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 00:14:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723619690; x=1724224490;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=snr1RwI8r35tpJfYm30yYMDnFOSDHF5r97Sqomh+D38=;
 b=upe8chfX89F2XCpFmzb8uh/hYJAcP0zcn7PoxYRb84rPAiOj4qjnvqvFeNvYi3y8Hg
 MO4nre/4CIPG8ufkXJEyeYeqrU0uP8ToLyH+C8dfXZHT/oQS373KXpRO5us/Ns7na7Xp
 dyVAB7rR9QE9PYpLBfK2rdRXcw5zd/FyfaBTwcDh9XY9kFMhw+Z1lvDmLNjeAF7mq3e1
 WK4dhJtPZRTlO6MaAvXH2mchH9hfNZURpBFFOI9n7vmGCdOEgBJpYaT9v4U9ZkKipDvF
 9Lcunpie1E9aVMfuQ8yVSZ+wGAJmWLN7+2QPxZTXZBATyvA4LHQ4v3BjH2YlOoPD0078
 KO2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKTzXj3N+D7kAEMe1jfdxhZ5i58qWkPYR6AJPS1F77r3yto+7B/A29YDDkgMAUkmYXSaaGYdacYlWi0zPe3Xg16CNy7zF8fMptbwiDwDmR/A==
X-Gm-Message-State: AOJu0YwePTLtMZgwqNgfv6jQPC1ZPYKZdMnuey/7LNjIf/aHNBmdUEum
 B0rcj6QMrnf7HL5yefR1efxXwtPhy5o3ii67cyAOMMIQq2+657FPg0SKEFoCA/I=
X-Google-Smtp-Source: AGHT+IGthAjObIOxhvEgDlsiHPqABWqYE1bIWj6p19KBBIYNbbJG8nCXI6l4Kn6mJsSbPxQNarJNzg==
X-Received: by 2002:adf:fb4c:0:b0:35f:314a:229c with SMTP id
 ffacd0b85a97d-371796915bemr790558f8f.28.1723619690346; 
 Wed, 14 Aug 2024 00:14:50 -0700 (PDT)
Received: from LQ3V64L9R2.home ([2a02:c7c:f016:fc00:7516:6986:2fe8:5b8f])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36e4cfee676sm12111994f8f.49.2024.08.14.00.14.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 00:14:50 -0700 (PDT)
Date: Wed, 14 Aug 2024 08:14:48 +0100
From: Joe Damato <jdamato@fastly.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813171710.599d3f01@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723619690; x=1724224490; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=snr1RwI8r35tpJfYm30yYMDnFOSDHF5r97Sqomh+D38=;
 b=X0PL4kFEu0p1lr3aNqRciX/gEOVyvc7C3eoAb9XAgLLl9e6wK0p2MVZlC6h0MV9+9P
 e9Q6QcAfpNkeY6k9Uzon6Api/aR+h/BOmKYXkhfIJct9e9N471XXchaG4Vm9P/ETG1aI
 1wAeOMiur7/FEbGN1XJ4/JByvRp1AagGjNvYc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=X0PL4kFE
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

On Tue, Aug 13, 2024 at 05:17:10PM -0700, Jakub Kicinski wrote:
> On Mon, 12 Aug 2024 14:56:21 +0000 Joe Damato wrote:
> > Several drivers make a check in their napi poll functions to determine
> > if the CPU affinity of the IRQ has changed. If it has, the napi poll
> > function returns a value less than the budget to force polling mode to
> > be disabled, so that it can be rescheduled on the correct CPU next time
> > the softirq is raised.
> 
> Any reason not to use the irq number already stored in napi_struct ?

Thanks for taking a look.

IIUC, that's possible if i40e, iavf, and gve are updated to call
netif_napi_set_irq first, which I could certainly do.

But as Stanislav points out, I would be adding a call to
irq_get_effective_affinity_mask in the hot path where one did not
exist before for 4 of 5 drivers.

In that case, it might make more sense to introduce:

  bool napi_affinity_no_change(const struct cpumask *aff_mask)

instead and the drivers which have a cached mask can pass it in and
gve can be updated later to cache it.

Not sure how crucial avoiding the irq_get_effective_affinity_mask
call is; I would guess maybe some driver owners would object to
adding a new call in the hot path where one didn't exist before.

What do you think?
