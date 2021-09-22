Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 362DE41489B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 14:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C691083192;
	Wed, 22 Sep 2021 12:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oE8-GBDGIViq; Wed, 22 Sep 2021 12:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D36F98329D;
	Wed, 22 Sep 2021 12:15:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 598701BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 12:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FF0D40139
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 12:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q5eLnazHScsa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 12:15:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24F44400FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 12:15:51 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id t8so6191654wrq.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 05:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Pa+fl9Rsega8suhbx2cwWWJOokOEYcTuSXNs1BTWnJU=;
 b=cJ/kSg2kCbV/XSyL2FhCOA/bzv02g/NCMYSAF6UpI9bCXs0COpTXzSiBWtyi2D4fVp
 NwZ4fZpXSbOyRTPVbHPUFRDvZin9TNrPa+wI1n5IbPcERRXoVQ6F6AQ72ymmaiP5Ai2r
 +wkKQFgbcUxTP+ODLR+vqUuciFIJYm+6gNl4GP4wTnt+yCrlCHtJdypBNOjRoFZU283d
 mvJANPj+dAZ1qauLVbTyhKzighKwgFIZclr3S+pJgnea3OJ02f2b2Iz32gslIrBorvKS
 Z2Se8zpwT0QiFRaHQzBGz2a3uQ0VG/6uDNlUygJT5sHEwffe+tQl9+X86Zfhg87idCue
 3b7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Pa+fl9Rsega8suhbx2cwWWJOokOEYcTuSXNs1BTWnJU=;
 b=qVvdVo6NPf+iBwY/CWD47l0WHMf8GQ/oCgrohaTX/RdCV3E4ELEtNVKte+9AxayUZE
 3FkoYnHoGWdvxchdIJVAni2UMvNwEn8YbJdCg8lvwdLwWN9HLWOHIFthmmL6qDzv2cLl
 2pSF8gLK9tvAXnbAbI4m7Kcskpym8ZpHkJtWVK6pLkUqlDF10kzz3xUa0xXvmxlSPy1G
 pT3aVr1EmO6uo055OoP+11E1zfw27fg9AfNCrDYFaswFPDu1p6YM6+Gd4pacFVubZofl
 eObnE1yMmVufgLkTjU3WI20WJdy2CFoGHUjJXQaGCc+yTDaBMFYhKNdKVyDe/BsJAZ19
 a7cw==
X-Gm-Message-State: AOAM533v3k7o8npvHxOMPALlb7saJ0BMQGq//K6Z6mr8s6EhV84oibc3
 82F3c5ezEnhB7/7Po2mGPS1x5A==
X-Google-Smtp-Source: ABdhPJzCZMzjCAO3TxbrSgQDj+5uKJEPtELabH+RXmVdZfiHM6v4eHIkMHhrowjuyXTI3sw5YUsdig==
X-Received: by 2002:a05:600c:35d0:: with SMTP id
 r16mr9995852wmq.26.1632312949996; 
 Wed, 22 Sep 2021 05:15:49 -0700 (PDT)
Received: from localhost ([85.163.43.78])
 by smtp.gmail.com with ESMTPSA id n68sm5849702wmn.13.2021.09.22.05.15.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 05:15:49 -0700 (PDT)
Date: Wed, 22 Sep 2021 14:15:48 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YUsedPzvmA9u3msV@nanopsycho>
References: <311a6c7e74ad612474446890a12c9d310b9507ed.1632300324.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <311a6c7e74ad612474446890a12c9d310b9507ed.1632300324.git.leonro@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] devlink: Make
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
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Intel Corporation <linuxwwan@intel.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Manish Chopra <manishc@marvell.com>, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Sep 22, 2021 at 10:58:03AM CEST, leon@kernel.org wrote:
>From: Leon Romanovsky <leonro@nvidia.com>
>
>devlink_register() can't fail and always returns success, but all drivers
>are obligated to check returned status anyway. This adds a lot of boilerplate
>code to handle impossible flow.
>
>Make devlink_register() void and simplify the drivers that use that
>API call.
>
>Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
