Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9619A98FC58
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 04:33:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F401840540;
	Fri,  4 Oct 2024 02:33:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8A4JDgmixTUd; Fri,  4 Oct 2024 02:33:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B39FA40267
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728009228;
	bh=9H4D+WZl8jML+ibwIYSpYRCghKODZjSTjCYZIURMulA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HJRAcYR9ZtxUSFvxZwFJNRVzFgHqxFjSIZuwcvheVTQhsl5So0HP5orkeaon3/TJj
	 B00Jf5Sw/RtQM35o7vY5Hl1sJFXRIulBiSj0+yOF07FtnJknayfWK6ivhdbUDt/8si
	 rOxEg5wBNS5x8ub3B0aoxvo8mU2VTZsfNDMFg7uAbaeyRnqyFHlWdUykmY/gzmDAe3
	 kXjWeaeh2fqfBGA0pyNZeC1beVVK9yvJob9NnfTuewH47wnAEsUtDxqdGSw5vyz8Wy
	 uoNAGwhwffTFPX53it3arfAZ6XaZwye/pkLxyem5Ny+GsiOkNrC+oxa031dqFSBi2j
	 UJdjnXUE6IAeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B39FA40267;
	Fri,  4 Oct 2024 02:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D29C1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 02:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0ADE06078E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 02:33:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mh-A1wrMYcBw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 02:33:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 14C146074C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14C146074C
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14C146074C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 02:33:44 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-20aff65aa37so13543255ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2024 19:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728009224; x=1728614024;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9H4D+WZl8jML+ibwIYSpYRCghKODZjSTjCYZIURMulA=;
 b=gcES78+5JNS+f863I1IfzSNo6PpHfQgNGyAYC/JEZdW19KbvEo5aVGmzpLUj8fVP6G
 hRjG2GqhcyYegQzyUc3MCY0GPXt2FPsoojU6LLJ92cfj/Z8gr0r6PypJItT4NFkEbspH
 mxoB/3/m44jWLHTu+7RWAT6RSAM7f3XJcWuUHQyvHkGCKA15PPgewkO2qYDY3EL5d9UZ
 ZmPrNArWUlRUoE4vYYsRmkOvi3kZqfPenyCDSKlzNhRulCMoDtSiiWJPdurO4th9hm68
 d1q3IJfUTgnw1xl/CQFzVjNsKNFF6/jlX9BE9VK9VcRAV9NyQ3gG6bSQ3IkNaNGYYIc6
 /LnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrBlAvkZRGR+0/rFyMUbHd/zWLgmfUw4RHsFyBpyquYDn+fAEdDrMMBOqdKoHC2u2S5yWZl9rvwaZxfFhn3rA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw2Hq9k51pnKwr2uTvouz0Q+DtJIWq7on+Zj+flyrFkHu5jD3Y6
 yNauC6g0ixtIb3vuvdas1bKaahE+FCu1x70fQ4K94WmJyzVm/DmObCSO1h0I2X8=
X-Google-Smtp-Source: AGHT+IEda9b9DeMXqjPne8SvGPfaIWpvZM2WaGMC+2rBD3ZG/loQ372RspkJp/s9zdDN5H7i2x/5ng==
X-Received: by 2002:a17:902:e849:b0:20b:a10c:9be3 with SMTP id
 d9443c01a7336-20bfdfe4834mr17933695ad.21.1728009224150; 
 Thu, 03 Oct 2024 19:33:44 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20beef8eb0csm15268325ad.165.2024.10.03.19.33.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2024 19:33:43 -0700 (PDT)
Date: Thu, 3 Oct 2024 19:33:39 -0700
From: Joe Damato <jdamato@fastly.com>
To: Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org,
 mkarsten@uwaterloo.ca, skhawaja@google.com, sdf@fomichev.me,
 bjorn@rivosinc.com, amritha.nambiar@intel.com,
 sridhar.samudrala@intel.com, willemdebruijn.kernel@gmail.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Breno Leitao <leitao@debian.org>, Daniel Jurgens <danielj@nvidia.com>,
 David Ahern <dsahern@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Donald Hunter <donald.hunter@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Leon Romanovsky <leon@kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 Mina Almasry <almasrymina@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>
Message-ID: <Zv9UA1DkmJQkW_sG@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org,
 mkarsten@uwaterloo.ca, skhawaja@google.com, sdf@fomichev.me,
 bjorn@rivosinc.com, amritha.nambiar@intel.com,
 sridhar.samudrala@intel.com, willemdebruijn.kernel@gmail.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Breno Leitao <leitao@debian.org>,
 Daniel Jurgens <danielj@nvidia.com>,
 David Ahern <dsahern@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Donald Hunter <donald.hunter@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>,
 Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Leon Romanovsky <leon@kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 Mina Almasry <almasrymina@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>
References: <20241001235302.57609-1-jdamato@fastly.com>
 <Zv8o4eliTO60odQe@mini-arch> <Zv8uaQ4WIprQCBzv@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zv8uaQ4WIprQCBzv@LQ3V64L9R2>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728009224; x=1728614024; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=9H4D+WZl8jML+ibwIYSpYRCghKODZjSTjCYZIURMulA=;
 b=lS2eY69CcMWhILpQp9Do2HN/K26gwmnzNA3n9XT/UaM64zgLnrMvqxbUFFUYGYnxrJ
 BL8g9zRyY57L+UtBjnXP9kv9yhf1aLj1MLmkLNsX4D5L4e5juFPd5vA9OBhuk2Wrbrdr
 ERZ6hiABJ68BQ2GOiiIRtdXqOQ04fftnSq3m8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=lS2eY69C
Subject: Re: [Intel-wired-lan] [RFC net-next v4 0/9] Add support for
 per-NAPI config via netlink
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 03, 2024 at 04:53:13PM -0700, Joe Damato wrote:
> On Thu, Oct 03, 2024 at 04:29:37PM -0700, Stanislav Fomichev wrote:
> > On 10/01, Joe Damato wrote:
> 
> [...]
>  
> > >   2. This revision seems to work (see below for a full walk through). Is
> > >      this the behavior we want? Am I missing some use case or some
> > >      behavioral thing other folks need?
> > 
> > The walk through looks good!
> 
> Thanks for taking a look.
> 
> > >   3. Re a previous point made by Stanislav regarding "taking over a NAPI
> > >      ID" when the channel count changes: mlx5 seems to call napi_disable
> > >      followed by netif_napi_del for the old queues and then calls
> > >      napi_enable for the new ones. In this RFC, the NAPI ID generation
> > >      is deferred to napi_enable. This means we won't end up with two of
> > >      the same NAPI IDs added to the hash at the same time (I am pretty
> > >      sure).
> > 
> > 
> > [..]
> > 
> > >      Can we assume all drivers will napi_disable the old queues before
> > >      napi_enable the new ones? If yes, we might not need to worry about
> > >      a NAPI ID takeover function.
> > 
> > With the explicit driver opt-in via netif_napi_add_config, this
> > shouldn't matter? When somebody gets to converting the drivers that
> > don't follow this common pattern they'll have to solve the takeover
> > part :-)
> 
> That is true; that's a good point.

Actually, sorry, that isn't strictly true. NAPI ID generation is
moved for everything to napi_enable; they just are (or are not)
persisted depending on whether the driver opted in to add_config or
not.

So, the change does affect all drivers. NAPI IDs won't be generated
and added to the hash until napi_enable and they will be removed
from the hash in napi_disable... even if you didn't opt-in to having
storage.

Opt-ing in to storage via netif_napi_add_config just means that your
NAPI IDs (and other settings) will be persistent.

Sorry about my confusion when replying earlier.
