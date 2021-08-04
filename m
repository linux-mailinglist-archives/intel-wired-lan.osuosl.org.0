Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 565383E040C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 17:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B706A608D7;
	Wed,  4 Aug 2021 15:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lON_sjtdNsOS; Wed,  4 Aug 2021 15:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3FCF606F5;
	Wed,  4 Aug 2021 15:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 249D61BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 15:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D9394023A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 15:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oy1dmJE4K_X1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 15:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43D7C40169
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 15:21:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC15060F0F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 15:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628090482;
 bh=ResC44EGJwfafk1EP1TTehAscV+PxNhFSYCS7gE+NbQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o+YAX3nM7ZsbINM78zsss9kmETucTr8eDJ9XhnmF7IP3KkvYQ3LrpWozYDakmvuqB
 S3yXsaByYojvDBAEfD7SKPIP+AuODwWjLhiTquQFwiOYruaq+Aj16RfopXAKd/j3yl
 RXJXhPIV3Is/ghDJpWSSwzmKI+TGdMME/TRcZ0n4xX/H3NHR930cx13Cv6BCSqEYcw
 +RiNUYvXiT6ChCAgwC2XvaSnGKXemw3kK1vZIaIY4Td6Lwk8kP7TEapAuLnWfphqcC
 6JxTuPdxgDJFPMbZFGzPWN9rtKMofElwX6pQKmmJR81MfSWbtCsJFt9oVLYPr/Vuc5
 9251zhWAfSnvA==
Received: by mail-wm1-f50.google.com with SMTP id n11so1438256wmd.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Aug 2021 08:21:22 -0700 (PDT)
X-Gm-Message-State: AOAM531EU7Re4HSobDxjXmQzLzTHaVcAQ5TMlA33cGrZ0rKbj7mZb5eV
 zmvY6oEYwl/wfE7O8BTqjhXAtW/UycwtIoj6fpU=
X-Google-Smtp-Source: ABdhPJyhsDZiH6C0oIXqOf2mYVpZRorsqoPP39EpX0oNA364INwgFOyHPCUYK+yr5luDHjm6eIbPPD+iF8pKEjFkMH0=
X-Received: by 2002:a05:600c:3b08:: with SMTP id
 m8mr10383643wms.84.1628090481196; 
 Wed, 04 Aug 2021 08:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210804121318.337276-1-arnd@kernel.org>
 <20210804142814.GB1645@hoboy.vegasvil.org>
In-Reply-To: <20210804142814.GB1645@hoboy.vegasvil.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 4 Aug 2021 17:21:05 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1EBwd+DvqnQSHL03zqaoRz_bhxj6TGw2ivpWLDT7jorw@mail.gmail.com>
Message-ID: <CAK8P3a1EBwd+DvqnQSHL03zqaoRz_bhxj6TGw2ivpWLDT7jorw@mail.gmail.com>
To: Richard Cochran <richardcochran@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ethernet: fix
 PTP_1588_CLOCK dependencies
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
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Leon Romanovsky <leon@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@netronome.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ido Schimmel <idosch@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Jiri Pirko <jiri@nvidia.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, Networking <netdev@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Tariq Toukan <tariqt@nvidia.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Martin Habets <habetsm.xilinx@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 4, 2021 at 4:28 PM Richard Cochran <richardcochran@gmail.com> wrote:
> > @@ -87,8 +87,8 @@ config E1000E_HWTS
> >  config IGB
> >       tristate "Intel(R) 82575/82576 PCI-Express Gigabit Ethernet support"
> >       depends on PCI
> > -     imply PTP_1588_CLOCK
> > -     select I2C
> > +     depends on PTP_1588_CLOCK_OPTIONAL
> > +     depends on I2C
>
> This little i2c bit sneaks in, but I guess you considered any possible
> trouble with it?

Good catch!

I did need this with v2, as it was causing a circular dependency against
(IIRC) CONFIG_MLXSW_I2C, but I'm fairly sure it's not needed any
more after everything else uses 'depends on' now.

I'm happy to resend a v4 without that change, as it doesn't belong in here,
or we just leave it because it is correct after all, depending on what the Intel
ethernet people prefer.

> Acked-by: Richard Cochran <richardcochran@gmail.com>

Thanks,

      Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
