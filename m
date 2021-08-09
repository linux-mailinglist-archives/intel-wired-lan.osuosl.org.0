Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F12FC3E4217
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 11:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80343402BA;
	Mon,  9 Aug 2021 09:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lL2k5bqE8oIs; Mon,  9 Aug 2021 09:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88F44402A9;
	Mon,  9 Aug 2021 09:07:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C97A1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 09:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37F1440179
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 09:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=resnulli-us.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pV3wtcphGb6T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Aug 2021 09:07:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F865400F5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 09:07:33 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id k29so7609617wrd.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Aug 2021 02:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/ZPOlrNFMpNUTPbgUazrf5s5awBfvFWEx4XOmYGlmFM=;
 b=xuTbN9NL08Xcyq4YkCIGhzlEKVrVctUgSIIhVBnkaX8eBSEHaFOlZ6xhpHC8lMNFIe
 dwmLzw6HSzfSkmDyldkyO4cF/B4FSaQ+R0e3imf9Uqwu/s1kxF6cO7lgFBnp2CQiHQZb
 ptygmaW+KOYy2Vg86ysWX42PDO7BrZXZJ2slJRdSO2oCp1BIbrBre/fMom8tMKlqVz0H
 YgsuS74yevpikRF9h2yy5vlV8pLKC5hbNzRmJXeGnXWlCyldErZ0DwkZjzAc6HNz0Ks0
 do7m4j3JuvYi7N6B2LzEz8XuzVlzUZp+/3EnES80Duj6XTL4TcUfvLUOpI6PI0+bVEHc
 haRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/ZPOlrNFMpNUTPbgUazrf5s5awBfvFWEx4XOmYGlmFM=;
 b=TYw/lhJZzCklkZoUmJvTmU9ViYOL7uUsYIP0Tg4n6sswmXZBk24t6NN8NH21ZzfNNS
 CwjDN1j+bmDlF/KtrgWLPKDg7PI0lI1/gSKCF0IZIvBVn7SfEm+jIZ3VsYk37Jwx7ohi
 Bx03QM+zzmogO5pOqBpD+hEgV84ffJib5wl5ZKZ4c/5DI/Wa+Uzu5xmixQn1tC4nQtC9
 9pXTrjxe4FgTgniIu8lRjC2gagvC2q8JxQZfJR7lh1zkRtunUkMUXxnXc4IVawRz/lPM
 NMarBZR6spe2Ji9Cz0TpSxTmmLbTUHsAwmzoxXDb5lQiHKyi/mxhLfKJ/kRR9baaz7im
 uw0A==
X-Gm-Message-State: AOAM5327/RvOIPWsyBinEIijx+IFjAgC0fvWJNG1LLDEy5jooKMe/p6q
 cnsIBiN8u8InOC4iwSZ7j3r8uA==
X-Google-Smtp-Source: ABdhPJyLRv8OWaU2rJjJ7UBftQqOajWt7JIwvnGbG61bADURpPUKgdSk4u6IhZ36haGe/OcsoLIAnw==
X-Received: by 2002:a05:6000:1106:: with SMTP id
 z6mr24270092wrw.296.1628500051979; 
 Mon, 09 Aug 2021 02:07:31 -0700 (PDT)
Received: from localhost ([86.61.181.4])
 by smtp.gmail.com with ESMTPSA id v17sm18937438wrt.87.2021.08.09.02.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 02:07:31 -0700 (PDT)
Date: Mon, 9 Aug 2021 11:07:30 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YRDwUrOK1YHsK7CE@nanopsycho>
References: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: Set device as early
 as possible
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 Jerin Jacob <jerinj@marvell.com>, GR-everest-linux-l2@marvell.com,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 UNGLinuxDriver@microchip.com, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Manish Chopra <manishc@marvell.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 netdev@vger.kernel.org, Derek Chickles <dchickles@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sun, Aug 08, 2021 at 08:57:43PM CEST, leon@kernel.org wrote:
>From: Leon Romanovsky <leonro@nvidia.com>
>
>All kernel devlink implementations call to devlink_alloc() during
>initialization routine for specific device which is used later as
>a parent device for devlink_register().
>
>Such late device assignment causes to the situation which requires us to
>call to device_register() before setting other parameters, but that call
>opens devlink to the world and makes accessible for the netlink users.
>
>Any attempt to move devlink_register() to be the last call generates the
>following error due to access to the devlink->dev pointer.
>
>[    8.758862]  devlink_nl_param_fill+0x2e8/0xe50
>[    8.760305]  devlink_param_notify+0x6d/0x180
>[    8.760435]  __devlink_params_register+0x2f1/0x670
>[    8.760558]  devlink_params_register+0x1e/0x20
>
>The simple change of API to set devlink device in the devlink_alloc()
>instead of devlink_register() fixes all this above and ensures that
>prior to call to devlink_register() everything already set.
>
>Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
