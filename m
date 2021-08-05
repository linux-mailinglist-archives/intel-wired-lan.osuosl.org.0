Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7C03E0FF7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Aug 2021 10:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 982DA608B7;
	Thu,  5 Aug 2021 08:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fIB8MOArk7Ic; Thu,  5 Aug 2021 08:11:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2E2A606FA;
	Thu,  5 Aug 2021 08:11:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6D01BF853
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 08:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBA0840259
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 08:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmqxmyKnmXJJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 08:11:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36F6E4022A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 08:11:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CDA9B610FD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 08:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628151110;
 bh=UDVn/n+b4ifejuAldecYtpvLiHWebHyZJ2ot8Xm7zJM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b0bBXsXf0pUJWq2yllF1qZMuHrpPG6LxjhBUeAXyLYJku3Z6bBbvtPXEfZzdzAY/1
 /3YLTx8JEPhzLoUwkA7bWclJaxsmLuIymRpiuTqfpoXMvKPl3biKRKD2lWLFd6WeDf
 k5W2c6SUTDZB8SBm2mO+YoeD7VaRpvGBFsCKhbhADb/EkGnNC1eIb5vdTOmJpYPDI6
 HUT7D1p3WilK3XMdUX0GTesFeeU96OW+WuEUGz5YQC099XO3dRC1PNVGeqM8K/ardt
 5+2K6ni6aRV6MPBEZ3bfov5VvVNfNqndnt41eLT7yX/bE96MvHJBivgiTiIPHs26x1
 lNqBUVsEAr/pg==
Received: by mail-wr1-f47.google.com with SMTP id h13so5345696wrp.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Aug 2021 01:11:50 -0700 (PDT)
X-Gm-Message-State: AOAM533Pj+kuOUprk7ukub9HIBpSdr5Ekuyp9cCZ1Edlis1gxwa9jrCh
 SFT3y8y3SOPwrj1XNEzt+jF2raQxCFtBbehmiUI=
X-Google-Smtp-Source: ABdhPJygsRjjgl2ODlzfwGyOxtVwMsKnmyPUzAx8U1eXjyLXcuOHPt8tpnA6IimrkOf9W8kenBTfPfIKmG6jzhpGARQ=
X-Received: by 2002:adf:e107:: with SMTP id t7mr3674023wrz.165.1628151109296; 
 Thu, 05 Aug 2021 01:11:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210804121318.337276-1-arnd@kernel.org>
 <CO1PR11MB5089A77D5388203C4AA2F9E4D6F19@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB5089A77D5388203C4AA2F9E4D6F19@CO1PR11MB5089.namprd11.prod.outlook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 5 Aug 2021 10:11:33 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2ZTmtkU9StyWMG=TwODxqAVEN_AFyGdyerr9C5vUMaVA@mail.gmail.com>
Message-ID: <CAK8P3a2ZTmtkU9StyWMG=TwODxqAVEN_AFyGdyerr9C5vUMaVA@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Leon Romanovsky <leon@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@netronome.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 Salil Mehta <salil.mehta@huawei.com>, Shannon Nelson <snelson@pensando.io>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Tariq Toukan <tariqt@nvidia.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Martin Habets <habetsm.xilinx@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 4, 2021 at 10:52 PM Keller, Jacob E
<jacob.e.keller@intel.com> wrote:

> > diff --git a/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
> > b/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
> > index af84f72bf08e..4e18b64dceb9 100644
> > --- a/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
> > +++ b/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
> > @@ -6,6 +6,7 @@
> >  config PCH_GBE
> >       tristate "OKI SEMICONDUCTOR IOH(ML7223/ML7831) GbE"
> >       depends on PCI && (X86_32 || COMPILE_TEST)
> > +     depends on PTP_1588_CLOCK
> >       select MII
> >       select PTP_1588_CLOCK_PCH
> >       select NET_PTP_CLASSIFY
>
> I did notice this one driver which now directly depends on PTP_1558_CLOCK, but I
> suspect that's because it actually doesn't work if you disable PTP?

Yes, it's the 'select PTP_1588_CLOCK_PCH' and 'select NET_PTP_CLASSIFY'
that actually need it.

      Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
