Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 762B598FB0F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 01:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3191E60F77;
	Thu,  3 Oct 2024 23:53:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6lTo892IOn-S; Thu,  3 Oct 2024 23:53:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74BE66100E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727999601;
	bh=to5UESfoGJJK2TcGhffLq8Xvshlbs/BIWcOtCWTyRfU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mcgXpAuVd9HZPQWaSHjBM5p+/GjGAZEv4lVsdo3d7LbcGEez+1eMQ/hnuTBZGMpqV
	 8XnQwEbOSt1LPBlEsucZGwOc6Yku+QVqU/eomHsSTKvGqmpvnN1i0/Kos8QohLV2U+
	 7Due/rGEZmSOwuHJ4aRGjwkUu+y95aIQhiAe8Xs1IlVcVKTg4iaqVZe03tGrgh9H08
	 tJ5GGbTOZzohq+8CA4pR1dTT2xhfv34yVZZgFokCmsNgbUJtNMVQ6/aOBvVXBmN72n
	 /mkdF1ZF94DhXysicPuIwt2vsUj2zjs0dneEXgcbpQpAKMFAx/gBd5ZW2BKFWVwpVF
	 dBR5kIUl5P58A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74BE66100E;
	Thu,  3 Oct 2024 23:53:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63FC21BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5046D40BFB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HlUeJ-fP8K8w for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 23:53:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A790406D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A790406D2
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A790406D2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:53:18 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-7198cb6bb02so1186331b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2024 16:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727999597; x=1728604397;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=to5UESfoGJJK2TcGhffLq8Xvshlbs/BIWcOtCWTyRfU=;
 b=D6tFJAUi8iVf6NAgLtJsyWwGMqAfWSKMSp/GeYBBMzlqmMhnitkK0zr+qLtqDUWegg
 +NB+3QQ+CZxArJIErDRha3eXNrwWBt5jA99v8b6t5yaMlfgESyThq6enqpBcso0S/RzP
 NY+zSVds8miHTiKEgo1WQRZBMvRp/jh13XXyh5V2ZqbOo4dPkWabcsHmC+7x61WwCbyl
 oIMjMtd4zRuKF22UCrBtuU9kOuHrTQNj56W4FYouv8Z465h97FLyU8/kJmgvjcpxFOBg
 ysdEKXkzecKhV+4/2QlZI9/EyIcsZl3f93fbf2irY652DPei3KSXoSASb+cMeKvVYM84
 u/vQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtm4sObQRy+ewH9xtEmhHMAb7eMz0ay3QXrBw+F7kW3vgt657O1jTXRmcR6sfczg2p3iIelQXJzJp42YsBkd0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YynCpSQFeLGhLcmwPWCVXFa+Zk6C2ZZGp4tOxgCkrt9TPf7iOjW
 Njcg3noFKJZvDVVUjepRlMQ8PjmDz50Xc5r1wrwYOG5PQO/45WPyPdOES+f0dtM=
X-Google-Smtp-Source: AGHT+IHFFJEXCsS7CL3SCEq6Zn2fPKDty4P7fGrgnhTy1s2+ZG4Kz84QJLtn4fcPKjIeGqhkJ9NQCw==
X-Received: by 2002:aa7:8e0e:0:b0:717:9897:1405 with SMTP id
 d2e1a72fcca58-71de2439b2dmr1040349b3a.17.1727999597631; 
 Thu, 03 Oct 2024 16:53:17 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71dd9df57ddsm1970234b3a.184.2024.10.03.16.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2024 16:53:17 -0700 (PDT)
Date: Thu, 3 Oct 2024 16:53:13 -0700
From: Joe Damato <jdamato@fastly.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
Message-ID: <Zv8uaQ4WIprQCBzv@LQ3V64L9R2>
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
 <Zv8o4eliTO60odQe@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zv8o4eliTO60odQe@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727999597; x=1728604397; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=to5UESfoGJJK2TcGhffLq8Xvshlbs/BIWcOtCWTyRfU=;
 b=xNOelld+qdFJ6RDqOuo3N0fNkKdZIYlrgn+qb5PEWHUYtuKuostzMyFd91cxEejGBB
 d++Sbkvtqr+1cizCQ0JMkrnLuCfKO6SZtONg/vhdfyxiKLwspQBCiRICla5QMRxdn3BB
 gw8fuR6OEGYSOrcW+bMCS7tL1A7k0PtWqwYiw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=xNOelld+
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 mkarsten@uwaterloo.ca, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 bjorn@rivosinc.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Daniel Jurgens <danielj@nvidia.com>,
 Breno Leitao <leitao@debian.org>, Mina Almasry <almasrymina@google.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, willemdebruijn.kernel@gmail.com,
 Donald Hunter <donald.hunter@gmail.com>, amritha.nambiar@intel.com,
 Jonathan Corbet <corbet@lwn.net>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, sdf@fomichev.me,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Michael Chan <michael.chan@broadcom.com>, skhawaja@google.com,
 Kory Maincent <kory.maincent@bootlin.com>, Leon Romanovsky <leon@kernel.org>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, sridhar.samudrala@intel.com,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 03, 2024 at 04:29:37PM -0700, Stanislav Fomichev wrote:
> On 10/01, Joe Damato wrote:

[...]
 
> >   2. This revision seems to work (see below for a full walk through). Is
> >      this the behavior we want? Am I missing some use case or some
> >      behavioral thing other folks need?
> 
> The walk through looks good!

Thanks for taking a look.

> >   3. Re a previous point made by Stanislav regarding "taking over a NAPI
> >      ID" when the channel count changes: mlx5 seems to call napi_disable
> >      followed by netif_napi_del for the old queues and then calls
> >      napi_enable for the new ones. In this RFC, the NAPI ID generation
> >      is deferred to napi_enable. This means we won't end up with two of
> >      the same NAPI IDs added to the hash at the same time (I am pretty
> >      sure).
> 
> 
> [..]
> 
> >      Can we assume all drivers will napi_disable the old queues before
> >      napi_enable the new ones? If yes, we might not need to worry about
> >      a NAPI ID takeover function.
> 
> With the explicit driver opt-in via netif_napi_add_config, this
> shouldn't matter? When somebody gets to converting the drivers that
> don't follow this common pattern they'll have to solve the takeover
> part :-)

That is true; that's a good point. I'll let the RFC hang out on the
list for another day or two just to give Jakub time to catch up on
his mails ;) but if you all agree... this might be ready to be
resent as a PATCH instead of an RFC.
