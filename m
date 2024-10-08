Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A799565B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2024 20:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 151E7405CB;
	Tue,  8 Oct 2024 18:22:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id teZHMrAaAYtJ; Tue,  8 Oct 2024 18:22:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C25D9405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728411773;
	bh=mfgCpS5PaaDvZjkTJaE/xBzcbJqmdBm8+yyCnyw3De8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/BXVLw5gzoS9tKeDkjL3t8Ij/qkTcsnmcCXHecLfnv8kPHj1IruE51nAzUWDJPnZ
	 OePUHH4lgPl6iQXZy1qK04sedXwiLijaSTDD08exFf7MeXdMBJY3vDrLb9UoOhx7tx
	 SuwZ+wcdwOLZk0O5DiRWKJFLLRagtECSLAy99N0McVaJvG4SOGzmrcTLyeu33YpQHF
	 VU5KILljhHN/k8zFulIQnmANbQxDAF8Pt8PkusAZ9y1G8vBUiCzpHKekb96r24d6wg
	 DtZHwQAV6QrLp/1sis9ndQor+tBOL59uZy8LmpBszh2+QtFChu+0Qa7GAo69iG+Ofs
	 hTYHQqG9tDnEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C25D9405D0;
	Tue,  8 Oct 2024 18:22:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1BE61BF373
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 18:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCCE880F76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 18:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HalDIR3wkn2D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 18:22:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7571380F6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7571380F6F
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7571380F6F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 18:22:50 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-20b8be13cb1so63888745ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2024 11:22:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728411770; x=1729016570;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mfgCpS5PaaDvZjkTJaE/xBzcbJqmdBm8+yyCnyw3De8=;
 b=aO3asa4qEsctFGvmTiOi2wy5rcs0grpP0iS0KVm9BqI9nyenmjhl6+tkiEm3IuYYhz
 D9g5zWK8aH2vyyDQubFKi8EhGBCEPZW4zt9TQyy5eqC4DBbrPZ+zk2hR96ZLF649ZhOM
 iNFelKy8xr1etFl0f8a8AImcZGrryxBb4tP24ULC+Fxp6TJW9dh0TyxCx7ODdN7jv+tU
 6QdRq9btRo+QfvLZl6vTC19pX1O92/oPZaeNRJLAFxUMRhXjb42ZbJQnkaaVqpxibJ+3
 v9J/U5oau2lvD/X47FD/k+/A6ux6ibR8/2Y9RWgJtBNi79dZkDKirSfVyYpluu//cVKJ
 3cSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUTvjQOtEoDLHT4jNO0lOzdnyIG35xGuzfcrXiedBbHnbAqFvsKPNT5JTyh0H3bt5O0dL+6Cmq8iMhVBdN87dk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyikAMQQnIuDYO/rrVcNODjer9oBGPfqN7ojs6aQcp2p1OKKP6K
 FjMNMGegIXztix25oyYmsjIRsTbv7knyJLKLx06ARJdR1JZHw+YH6SupqTounfU=
X-Google-Smtp-Source: AGHT+IGLwKH5D8GmqT91lF+IEqFV1bkPlXaOCwMdX6WQyBYQ2vbuWPbJ2h7utnI4zy5Lzw/E/iDnDg==
X-Received: by 2002:a17:902:ea0f:b0:20b:a431:8f17 with SMTP id
 d9443c01a7336-20bff1c4055mr294243605ad.58.1728411769685; 
 Tue, 08 Oct 2024 11:22:49 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c1395a408sm58422345ad.193.2024.10.08.11.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2024 11:22:49 -0700 (PDT)
Date: Tue, 8 Oct 2024 11:22:45 -0700
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Message-ID: <ZwV4dUxPZIVG366J@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org,
 mkarsten@uwaterloo.ca, skhawaja@google.com, sdf@fomichev.me,
 bjorn@rivosinc.com, amritha.nambiar@intel.com,
 sridhar.samudrala@intel.com, willemdebruijn.kernel@gmail.com,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 David Ahern <dsahern@kernel.org>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Breno Leitao <leitao@debian.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
References: <20241001235302.57609-1-jdamato@fastly.com>
 <20241001235302.57609-4-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001235302.57609-4-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728411770; x=1729016570; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mfgCpS5PaaDvZjkTJaE/xBzcbJqmdBm8+yyCnyw3De8=;
 b=jTUJWyHYi26/p9zBYFsdfMuck3VTHHUJs/ex7Q2zt2ntaQ8oJCYHKfiwX+QLB2hVzX
 4k6pQI2bnpm+K8mLbYugw2ZuBh7QNjmrapMji8B55L1H5TXFZ0lyPghnbGRYgaj9nfRs
 aCkMVZP3CfIoZUtn+S5cwBKP6m+7j5QJlAPes=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=jTUJWyHY
Subject: Re: [Intel-wired-lan] [RFC net-next v4 3/9] net: napi: Make
 gro_flush_timeout per-NAPI
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 mkarsten@uwaterloo.ca, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 bjorn@rivosinc.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Breno Leitao <leitao@debian.org>,
 willemdebruijn.kernel@gmail.com, amritha.nambiar@intel.com,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, sdf@fomichev.me,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Johannes Berg <johannes.berg@intel.com>, skhawaja@google.com,
 Kory Maincent <kory.maincent@bootlin.com>, sridhar.samudrala@intel.com,
 David Ahern <dsahern@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 01, 2024 at 11:52:34PM +0000, Joe Damato wrote:

[...]

> Note that idpf has embedded napi_struct in its internals and has
> established some series of asserts that involve the size of napi
> structure. Since this change increases the napi_struct size from 400 to
> 416 (according to pahole on my system), I've increased the assertion in
> idpf by 16 bytes. No attention whatsoever was paid to the cacheline
> placement of idpf internals as a result of this change.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  .../networking/net_cachelines/net_device.rst  |  2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  2 +-
>  include/linux/netdevice.h                     |  3 +-
>  net/core/dev.c                                | 12 +++---
>  net/core/dev.h                                | 40 +++++++++++++++++++
>  net/core/net-sysfs.c                          |  2 +-
>  6 files changed, 51 insertions(+), 10 deletions(-)

[...]

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index f0537826f840..fcdf73486d46 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -438,7 +438,7 @@ struct idpf_q_vector {
>  	__cacheline_group_end_aligned(cold);
>  };
>  libeth_cacheline_set_assert(struct idpf_q_vector, 112,
> -			    424 + 2 * sizeof(struct dim),
> +			    440 + 2 * sizeof(struct dim),
>  			    8 + sizeof(cpumask_var_t));
>  
>  struct idpf_rx_queue_stats {

Now that idpf was fixed separately [1], this will be removed in the
v5.

[1]: https://lore.kernel.org/netdev/20241004105407.73585-1-jdamato@fastly.com/
