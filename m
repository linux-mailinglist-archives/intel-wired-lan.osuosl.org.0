Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 051EC63BB74
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 09:25:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 486AC41677;
	Tue, 29 Nov 2022 08:25:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 486AC41677
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669710312;
	bh=Fzn1y4OUp31aWNqQ5gx02tgjkWdxfrJb7aQgO+ksgTc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B2JCeGG0h6fwbJ2cobW4S7VX/kJ33ymr8KYvtqQGp0wpnDbJBl7pht/kPpE9x1E9b
	 4z7yHtNHdXh+HoskkS5PH3B9EM46MG8FqYEA0DrEjGVKOfY2WKprNr3lQcYObC593m
	 0ehWmNFcAVZFGUFQQe1lPHBILjBv7MqmlBQCc2eQw15zJ2eMI/MY4ue4dWggwvArg9
	 AHzNnWKgUTzbtnRKFVb2Oalhb5ugiQXCCIrSBE2taFubhXYal5gzcWHo2bePxsIZd+
	 ELtDhumd2Q+6aUX64fBQD4TyQcaUtbHE6XnJcQOmESd94Ne0dj7FXnkR8RcoVsLEsS
	 LYeVwRbAEO7Ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBtapwrTaygs; Tue, 29 Nov 2022 08:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17E3041522;
	Tue, 29 Nov 2022 08:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17E3041522
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 050001BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2A978145F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A978145F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boJePhfZU4zu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 08:25:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 569F58145C
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 569F58145C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 08:25:01 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id vp12so30631271ejc.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:25:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Gzwrz5/bgJ69VQ8DIOQyNt2ySo14PkY0Tc1TJ/9BxtU=;
 b=KD73RbxPjmMpHkh6FfQ2Yn8lGQTGtQm8muO/mZwbc1UUyYkMWgBdnIczHDi6R0p7SW
 i7aWPbN2/X/nuN1SAgpbGMeV4h+zvhnW3xag0HoZW7oHrfwRehqCIGoG53CFtNgmv/4W
 267hGAn91I8dL0xEoLfEfNf9/xndmmw978YIEqHCqauPmiuCcVrNaUChqcK4AkgzdRnC
 obC62iryLYmEWFTguF6ld7QXY2msVhEGhczBGXAlx2dRUM9a2WssSZiqpVijoii73KXQ
 YyKoDIBNPYEvxPzZJ7urXxb0QCQOH54jtDbJFVWw9O+Fk6IbXDNxYcu9JZFuccGcmrTX
 gmCg==
X-Gm-Message-State: ANoB5pm7166HLl4895KKC2uTUkvneU9paz21YIoF9Kf9/UFoTZT7eb2s
 i0pOLX/+ShynKvjVZw6d27D+PQ==
X-Google-Smtp-Source: AA0mqf5U6UpqaqLYePD0J8IkftyUluGt51ht3yzDWcsXRz6dM4R3R53yD09NYzQvvlp1i1fCn6EMtQ==
X-Received: by 2002:a17:906:2645:b0:781:d0c1:4434 with SMTP id
 i5-20020a170906264500b00781d0c14434mr46698718ejc.756.1669710300002; 
 Tue, 29 Nov 2022 00:25:00 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 sa21-20020a1709076d1500b007aec1b39478sm5874240ejc.188.2022.11.29.00.24.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 00:24:59 -0800 (PST)
Date: Tue, 29 Nov 2022 09:24:58 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4XB2iBqceQfFZem@nanopsycho>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-2-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129000550.3833570-2-mailhol.vincent@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Gzwrz5/bgJ69VQ8DIOQyNt2ySo14PkY0Tc1TJ/9BxtU=;
 b=C3d56JtyuNmf974ceEZSavZ1C/FjLRkloGMeX8+h55kDGiXpMMFI1DD4u3feCh4QEE
 cHA8xuvglY036UQI7H2YQDycFuUAB+Ib26AaNO9jH79I+9iDbRng+Ef7bpZRqFL7xNvT
 SY8/h8Tq9x1BtXmeT4cenlPJaDiZZKqt7rUqubucGzlpVqsEFbubxrWdx8hjJGh9HFKI
 VWWvLBBFn5NGDr4OxwMmW2GFst9UcAyIQNWpvHjljD1grLS1hBIkQpasnV1Ykn1nRN8G
 mHEkyjZbboo827d2YV+/hiHg/UYb6Oq2UWQS3y69VPrqAzY4s2/UVC3JbUtvZ/MrgXD+
 NTPQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=C3d56Jty
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/4] net: devlink: let the
 core report the driver name instead of the drivers
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

Tue, Nov 29, 2022 at 01:05:47AM CET, mailhol.vincent@wanadoo.fr wrote:
>The driver name is available in device_driver::name. Right now,
>drivers still have to report this piece of information themselves in
>their devlink_ops::info_get callback function.
>
>In order to factorize code, make devlink_nl_info_fill() add the driver
>name attribute.
>
>nla_put() does not check if an attribute already exists and
>unconditionally reserves new space [1]. To avoid attribute
>duplication, clean-up all the drivers which are currently reporting
>the driver name in their callback.

This para with the link below should be removed, no need for it.

Otherwise, code looks fine.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
