Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FD463BB7E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 09:26:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B963440A12;
	Tue, 29 Nov 2022 08:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B963440A12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669710405;
	bh=OHK6/TxWUB4Ica2JGc4k/NyRYZCm5nDCMJ9dp2EDBzk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=52S41nBziW0bts4/rzFvkBuMZKWgVprfnOJndh2JDrHbKF26I/J2oOG3EQhtVgE+4
	 Ds7ZK5x4dEsPSKoOWkPceHt+y9a/gfMN+5hPGVSdW0dJZdVyXSKzU/YFsSXEoDuRF/
	 F2ZSHrEiG++E7eK6gh7iylIe9G9/8nWjNXRzxuN9BmaH5SKJ2xasVS9LT+2rGleFm1
	 nHnJofr9gS4I5+LBxCtZWrCZVKxyK1sp1W4KOxyoHBDggTdJNDxXAGj95Z8aBErQGK
	 6QThxk7xl87Gx2+vnHwIFtU24GWiWq3U5F27lolQwNb/+Tf/lgprMCX3hISEIM6E67
	 6/nZy3UYiMQmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdOSjfVIkxwH; Tue, 29 Nov 2022 08:26:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8164402D0;
	Tue, 29 Nov 2022 08:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8164402D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 524461BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38119408E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38119408E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sxfObTvWTaCV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 08:26:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12E05408CE
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12E05408CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:26:38 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id x2so18764602edd.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:26:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pgrzkkklPcAQYmyQMmCpEE1o3a9ohgeq3WVDc+0vm08=;
 b=8I8dDoC6ZstF8Af9XVmN0xVwGKAqLVzdCGsLTsnMgPWe8BtDGBX/y3jkHUD20/bebG
 xCtAzhEcyW+C5uqjdWEeaHMDTnB85HILpvhafzbuhb7PRlWb2nE97EvXTcWU+K9YZgm/
 O40UsoXzL6j949ZYjJ1/h1cMq17yWZ5OlVaKK0+TlMf007engZeJjugJUD+WzHLRy5c5
 2c5jpXMvn/dupDVEQN+bnPqPEIKa7CoFcb+hwD1b+JXD0rGQaRSjyJB21yn/WFlnvD1/
 yiz+X33wduoLMpiuAmTiIBwx81f8Bb/VZdk0HFHF3cNI1UJeqG9dPui++TvV2Py9EFf3
 ypqg==
X-Gm-Message-State: ANoB5pkHdFWcIfvjZcDpgSz2ikvsW+QzSRYyKFmXyiQCxK6By1Wpsc7k
 CaAnxaHOQFOq9i3bIABzWIEzFA==
X-Google-Smtp-Source: AA0mqf6AhCTZUtOfuGYDhXfqaKP0HI3CcryljG1Et3fvW7wqzGVxjYaxttb++c6crBKvAOdrZVKVcw==
X-Received: by 2002:a05:6402:1f14:b0:461:c7ef:b09e with SMTP id
 b20-20020a0564021f1400b00461c7efb09emr37432404edb.58.1669710397245; 
 Tue, 29 Nov 2022 00:26:37 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 r9-20020a50aac9000000b00461c6e8453dsm6017247edc.23.2022.11.29.00.26.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 00:26:36 -0800 (PST)
Date: Tue, 29 Nov 2022 09:26:35 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4XCO21nYeJZKUh5@nanopsycho>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-4-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129000550.3833570-4-mailhol.vincent@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pgrzkkklPcAQYmyQMmCpEE1o3a9ohgeq3WVDc+0vm08=;
 b=XiAjLYS5j4RwLKJGZxfsDINusHr9CRwW/Y3flS/dZFlY4O60OTBiKSUQjxvGIX+3Rg
 dWAJ1ca2t+K0d+bi0hYAhKvXStoidmphxQ0TDLO6BSnIL0/DN3PnlJFDIMFRt3mXIa4g
 ZMPEl75jJykR9z7KbG5TQ2wepgiS9FlevG8+O0tg70kUd7KYg2ugRDQg84wgWnAptk9T
 NHGqa/dI8nJ2hDhtgvRxfieYv/2wyABK91GuDzW2R+fCWgqEG0yJvCUyqY3kdcbZmt0P
 gS7yCTuTDX6ORTNxuGB1qv1ErmB0M7sxgSP6i5oaQm/rCTvkHAkTwlvZFSa7282d1MRL
 RrTA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=XiAjLYS5
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/4] net: devlink: make
 the devlink_ops::info_get() callback optional
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, drivers@pensando.io,
 Linu Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko <vadfed@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Arnaud Ebalard <arno@natisbad.org>, Jiri Pirko <jiri@mellanox.com>,
 Jiri Pirko <jiri@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Vadim Pasternak <vadimp@mellanox.com>, linux-kernel@vger.kernel.org,
 Geetha sowjanya <gakula@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>, linux-crypto@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jerin Jacob <jerinj@marvell.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Nov 29, 2022 at 01:05:49AM CET, mailhol.vincent@wanadoo.fr wrote:
>Some drivers only reported the driver name in their
>devlink_ops::info_get() callback. Now that the core provides this
>information, the callback became empty. For such drivers, just
>removing the callback would prevent the core from executing
>devlink_nl_info_fill() meaning that "devlink dev info" would not
>return anything.
>
>Make the callback function optional by executing
>devlink_nl_info_fill() even if devlink_ops::info_get() is NULL.
>
>N.B.: the drivers with devlink support which previously did not
>implement devlink_ops::info_get() will now also be able to report
>the driver name.
>
>Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
