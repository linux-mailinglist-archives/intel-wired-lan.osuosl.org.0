Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0369063BB79
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 09:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99A3D408CE;
	Tue, 29 Nov 2022 08:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99A3D408CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669710357;
	bh=oG7it5VFQa+CgkPghOrRTq9F7SFaqV5FDvVWs2cPlhs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w1qpl2Yz7h+WexkIQOo1FLh6y6UP7bnRsZS/eXIBmzt7gPgQbFi5kBRNLGMyncYpM
	 iUrZNMu2hpYhX+7BUVcqYu2hS1WoTHuDmMKmq4noVhnrqBVxbcvu7eRDwlE1JK+ECV
	 ODdJCwGigC6ayZxu5D3eaRwm3MedelOt3nMBZQ5WUjQcLdKwTeNDP9AVh7c6CO9QEe
	 6ni1Qeh9iuF2eWgvZHkIEmfwc4wMtoeNYZ1purImOoO+jXsq/uAEXt93pmn8jYcdff
	 XJUmYjaI21t33CNVQGMkCx3AEEbutkBu3rw213FQVIY5ToQArAPpsp/caqigIRYeTK
	 yBuYfi5odvNeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgu8VpWBQX25; Tue, 29 Nov 2022 08:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C70F408E1;
	Tue, 29 Nov 2022 08:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C70F408E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA0AD1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2D43402D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2D43402D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_gd9j6U5Ekx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 08:25:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E244540132
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E244540132
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:25:49 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id r26so16638465edc.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:25:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rZUenHtKPq2dIPRKUI4YkE7MjW2g3QtOJmpKI+2Qn3o=;
 b=7N1duM1F1xMj5JyyITjH+lzdbkZOjjg3iAfZbMeRUXLBM74NwEwhN7CgXRwdQd9PhR
 NEZHKa1GhH3PSRKJ2uwtR92sFN0iHTraWb2Ldq1EqyTYfJytv5etFXzDWHT1+CDs7qTF
 6UEo+ULvV7K79IqRQsjpeplOnNLWre/FDdF389jLgA5wTbczA1KA5oiggfDNvRMb1juu
 eZOglWz+h8gljQ5oUcfzwoB+aTWYHNJwDW4Df/iENuA/5PoqLoCHqdikPKeMvbrpzoGG
 V5r/wOg4lkI6aIck0Mgy9OnM8LOOv01CMtJDoxGJzCHpgSATF337dCBkWyN8lCFZxvc/
 h1TA==
X-Gm-Message-State: ANoB5plDGF7TJuWLroWG/f7vEwlsqTWtfTHOxwvm8mg056QHtPidedSk
 FPce4FCiN7PxutzoOyVYTl70DA==
X-Google-Smtp-Source: AA0mqf7oggbm0ZvKv+OkUU5+fbdLpbPP1G+n+KZSETJmKURydZSHzYM/yx9a/+JnxN4LXSIHKdvoZQ==
X-Received: by 2002:a05:6402:2421:b0:461:524f:a8f4 with SMTP id
 t33-20020a056402242100b00461524fa8f4mr50312403eda.260.1669710347875; 
 Tue, 29 Nov 2022 00:25:47 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 u23-20020a056402065700b0046778ce5fdfsm5962890edx.10.2022.11.29.00.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 00:25:47 -0800 (PST)
Date: Tue, 29 Nov 2022 09:25:46 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4XCCl6F+N2w+ngn@nanopsycho>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rZUenHtKPq2dIPRKUI4YkE7MjW2g3QtOJmpKI+2Qn3o=;
 b=gGK456z2WRLaCXHOwMFdHGvfFgJhaWZsmslL7bufWhOQ0Q3qvX2aDgMOi2ja03RCnm
 NdGvjr2n7dxWMSrxhGxBdIDl2jZOfrD+2k5vRWjBh5RgWepcfx9WRx+rVxCdxMmtSCqd
 RP5hOThgGUF9OdBm1kFhEu9uyjFMq+6Q85Jk+ZycXXoZpEz8zRoxJtLtFqJ8+ncqgmhm
 4wc2jc5c5JUviaUDl6qOKs8yb5XJn9HImWIJkxqXQPGYXgq9hGuxNfpbERnf/C8bffkT
 ML/3rEOdCUgRGrRo5SkoyK/r5egDu0LQAvOSnhyiAZR2pCv3GOE3KrvNcIuwQQNDcWF6
 6mOw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=gGK456z2
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/4] net: devlink: remove
 devlink_info_driver_name_put()
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

Tue, Nov 29, 2022 at 01:05:48AM CET, mailhol.vincent@wanadoo.fr wrote:
>Now that the core sets the driver name attribute, drivers are not
>supposed to call devlink_info_driver_name_put() anymore. Remove it.
>
>Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>

I agree with Jacob that this could be easily squashed to the previous
patch. One way or another:

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
