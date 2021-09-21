Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5839412EF8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 09:02:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 665D5401AE;
	Tue, 21 Sep 2021 07:02:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxIl6ZBNSmQ8; Tue, 21 Sep 2021 07:02:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4384040114;
	Tue, 21 Sep 2021 07:02:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7A241BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 07:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3E10404EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 07:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tFt35UGdZgA0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 07:02:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D996E40482
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 07:02:27 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id t8so36153983wrq.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 00:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fusWwRhGhDwMDvQIF2rL+xIXyvzxwvV+7P1DjBX2OMs=;
 b=17ypAGfGNToM0JSjgeiOeGU851YZP0qvqVdPT5/wmSGdUXJ3vAdN4BAOh9A7cDHB5a
 AnweVmVoZRkGEn+GBVrYIQJd5My/8znNb84Dvybfp4W0w9vScptNps5QF4U38ECx8tco
 2CUiLk/agsteCVIQEkd6qe8/ZujmvYC530UJdreb3wyzUMUX856xFPlfx76NWSoFwnG1
 TJ/Ec8u3HAEpAo2vhZp3kkGaHNZllUxLafsuh5no2ljfi6wB0kQS2njBg3M1W6AX7AaO
 aSE5wCot9OdHYI6j7SWUcVGhTfLuNKk3qPN4/rl2YtlAcak1FryT5nuJWc9hr7UMCrut
 ETNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fusWwRhGhDwMDvQIF2rL+xIXyvzxwvV+7P1DjBX2OMs=;
 b=hfAb3bPlULNYqzyXjlHywR6cgbqYyJPP6OD2iEdqHaiOYp1sH4Nu9RKW7j3gXWCFJT
 tli2d5l3K8E9wJxaGwV4sgcAd7dttDkXgeKYtx0rf6ptDU1k4dApMTaA1bBmjqC8cnMr
 6cRCEs+TMnTzA0DzqLch2E3ovfh5FWQZCwCSFRQ+h6tQ7QDepBN6YJArKvSMHG9yAWz+
 Cdcy4tK9pm5Psc+CP4711MApAe0Qi3YoyA2CjBDvqSWGPp65kIOj+7V6W1YHFq26U3OH
 3ybpAxe2ZOlAFJIsidAA7NRoA3dDWF8xyUauhlymTXNw6ovX+QXWrJWCfzlgme2DvoAn
 ALvg==
X-Gm-Message-State: AOAM532hGPEJ3Zmev+CVh1zvmVHZsuE9f/WzEDvQ56KPqm4HPhJ6isyo
 RbVS5oFK4jsypWdIkqRlgpwTXA==
X-Google-Smtp-Source: ABdhPJz0OlMS4q0UvEdCzO4nXU7/PwGZ8ozvQmNUB80OlTlbJwb+ceMDZjLzoyimOSm5UKvaW2UlrA==
X-Received: by 2002:a5d:6c6d:: with SMTP id r13mr17856595wrz.439.1632207745235; 
 Tue, 21 Sep 2021 00:02:25 -0700 (PDT)
Received: from localhost ([86.61.181.4])
 by smtp.gmail.com with ESMTPSA id r25sm19674308wrc.26.2021.09.21.00.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 00:02:24 -0700 (PDT)
Date: Tue, 21 Sep 2021 09:02:23 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YUmDf3KdLS/4FwoT@nanopsycho>
References: <2e089a45e03db31bf451d768fc588c02a2f781e8.1632148852.git.leonro@nvidia.com>
 <20210920133915.59ddfeef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920133915.59ddfeef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: Make
 devlink_register to be void
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
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Sep 20, 2021 at 10:39:15PM CEST, kuba@kernel.org wrote:
>On Mon, 20 Sep 2021 17:41:44 +0300 Leon Romanovsky wrote:
>> From: Leon Romanovsky <leonro@nvidia.com>
>> 
>> devlink_register() can't fail and always returns success, but all drivers
>> are obligated to check returned status anyway. This adds a lot of boilerplate
>> code to handle impossible flow.
>> 
>> Make devlink_register() void and simplify the drivers that use that
>> API call.
>
>Unlike unused functions bringing back error handling may be
>non-trivial. I'd rather you deferred such cleanups until you're 
>ready to post your full rework and therefore give us some confidence 
>the revert will not be needed.

Well, that was the original reason why I made it to return int, so the
drivers are prepared. But truth is that given the time this is on and
the need to return int never really materialized, I tend to ack with the
cleanup.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
