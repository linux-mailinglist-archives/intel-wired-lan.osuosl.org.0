Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E006F63BB86
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 09:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16FB941516;
	Tue, 29 Nov 2022 08:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16FB941516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669710455;
	bh=VH7C7TEuQBoBqFw92S8ChCLsl1PXzixR+PMbI4HwdJA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=poh9GpuNU1qKA0E8v4vW4JIcoBedYVRAhWa3mWZ3Z9CpcH8+xQek49vG+gi0rUJQS
	 pMVGlZze00YGjaASzYExGFetVv0pA62+jYc6EoqVLXQw9/rUAQJI910drE6gwxzB2P
	 Tb2mEJdW4OacLyqgIrQelf0qz2h95z0Eh0uFzklEsrnpzyIvcc09/qbViU/cmcY+zg
	 83OkIOUdVoOn6naHqzFugwFhxwF0FhMxNBnyJ9Fxdm6dT/+0UdR1V3UUM2Yali3K72
	 vzljZBGxHkFck8iHsIZPDiblA7f6Tq1iBQwXOzhFUYbtIKWa81kx4cZ98CnLkpk3UM
	 jpiGEwPk3SAGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBE1aZ4FCwsh; Tue, 29 Nov 2022 08:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3FDB408E1;
	Tue, 29 Nov 2022 08:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3FDB408E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 091711BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4482402D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4482402D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3yhJStYvWPJq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 08:27:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1347440132
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1347440132
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:27:27 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id ud5so31927299ejc.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:27:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4v7Xp4UFwcIIZYZ0RgIN5pAk6f0FzEGlZBS1d7BjE8M=;
 b=e3WyOw6OtWHG12buIikyydJk2vjwnIYdNnIxCcK0g5jvpTtZBu7IdlrB6+d8zkC4Qe
 nxKp0430V5BgLaQNaTKj+eddUPqh+drmcpWib7r8DYB9HXyrPIkal0rtiTSbsWZrQbK3
 G/4FgffTPcX8LqMLzqVNAmymDJTJBzKNcvcXFJD4dQJ4b8dvITQE87VF6kB8HHDEdNHi
 9q48y6CzXxkAHxOTBZ2RwkVqmnkB7XGKh8XwKCpzTC5/5ak9bECfi3tYfyyIqEg8h6sd
 LQuDQgoxW6nxpclO/MSHjM4gMU93OVybW8jnXcBcLgPIS3PiBChzLSfOuWSNiy/2gaAY
 Zjng==
X-Gm-Message-State: ANoB5pnZ/1XaboNKaZCVVzW9DvhOBnP8CIQFg8CJBE8IP5/FBktb00yx
 vmeFhGkU6dsPJDn8RalIcJnv2A==
X-Google-Smtp-Source: AA0mqf4klzozGLk8G6ChytpzpBsUMkgVkxU4/gqOvr33nL+FktypM4IdS/dR44D+c0D+dCGAFz/q1A==
X-Received: by 2002:a17:906:5a84:b0:7ae:65e4:7204 with SMTP id
 l4-20020a1709065a8400b007ae65e47204mr45496813ejq.579.1669710445675; 
 Tue, 29 Nov 2022 00:27:25 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 kz1-20020a17090777c100b0078de26f66b9sm5851248ejc.114.2022.11.29.00.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 00:27:25 -0800 (PST)
Date: Tue, 29 Nov 2022 09:27:24 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4XCbMooeWxsovHT@nanopsycho>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-5-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129000550.3833570-5-mailhol.vincent@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4v7Xp4UFwcIIZYZ0RgIN5pAk6f0FzEGlZBS1d7BjE8M=;
 b=tRgxpeUumhzLWsC9NVTgDCLb6XS0lv/rpMqGNhMDpPr2Rq/mAUvJvDgqyVE9rVTHr3
 PLUKB44JXwQ7XIg0oDXwmJ2BDHkmwhB4pzfCWYwM3SrWaYo8wgndawp+QpWpQviZ5Z7+
 T+q8PhrZYvCH84GnWsBe3i67Jv+D/wyYe9rBax2Wl1B80SP5M0CIIfbzBPPKG/EBm2pf
 eiEqZ+FEiD7eaqNOT/0oL2A0jJsp39JaFVijnYra2HosHEXTsYyW6Fz9IOeCc5AmZinv
 rKdJDpSTIqIETiN/h9e/7lmGL6x18E2SIG2b0qPdnsH0pML71bpStt2ATvHcno7vkt8r
 t9RQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=tRgxpeUu
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 4/4] net: devlink:
 clean-up empty devlink_ops::info_get()
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

Tue, Nov 29, 2022 at 01:05:50AM CET, mailhol.vincent@wanadoo.fr wrote:
>devlink_ops::info_get() is now optional and devlink will continue to
>report information even if that callback gets removed.
>
>Remove all the empty devlink_ops::info_get() callbacks from the
>drivers.
>
>Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
