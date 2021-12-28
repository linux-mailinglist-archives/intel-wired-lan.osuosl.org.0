Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19153480B86
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Dec 2021 17:44:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 111AC60B0A;
	Tue, 28 Dec 2021 16:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dLVRI5Iqra9s; Tue, 28 Dec 2021 16:44:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4CB3605AD;
	Tue, 28 Dec 2021 16:44:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1709E1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 09:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 034184034D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 09:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8a-DYTtl3BB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Dec 2021 09:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0CDF440348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 09:15:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 29CC6B80DB5;
 Tue, 28 Dec 2021 09:15:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36527C36AE7;
 Tue, 28 Dec 2021 09:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640682932;
 bh=GhkQipbGlKDnWFYSWHR8QJ9jDw3XiA0zWUSH0TczCbE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dYWghGQbT+zkKYVLv1Zhab/gyFy9VpZvbxpbFRNzp3Lo5J6P/Q+Wf9wZJ3oL1Y4nF
 96QRZWFgrpKChm6T6ENMeuTcDkoRMS//XW4vNdMJB4gLdNcNmX96GZTLdULruuieLb
 emRGzvA33ANfq1HyCg7yWlEMSY81FT51jd/pZeMOMTkwWI2S8tmDueYyTyJr7hwGcG
 yL5P+Au50kwMpsldooh4cVnB+oQkMDs7kWcv4culv3nNyxGHHdqsdStKVVXhf5e3AJ
 K3RgIP6/xYabneVHyG9NqbWuq3dYLRaZSL3QAii2RDYrapQzGorXDljBWHF9TwGY4F
 k139XXS0mA/xw==
Date: Tue, 28 Dec 2021 10:15:16 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20211228101435.3a55b983@coco.lan>
In-Reply-To: <YcrJAwsKIxxX18pW@kroah.com>
References: <20211227164317.4146918-1-schnelle@linux.ibm.com>
 <20211227164317.4146918-2-schnelle@linux.ibm.com>
 <YcrJAwsKIxxX18pW@kroah.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Dec 2021 16:44:24 +0000
Subject: Re: [Intel-wired-lan] [RFC 01/32] Kconfig: introduce and depend on
 LEGACY_PCI
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
Cc: linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
 Jaroslav Kysela <perex@perex.cz>, linux-ide@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Guo Ren <guoren@kernel.org>,
 linux-i2c@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Jiri Slaby <jirislaby@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
 Hannes Reinecke <hare@suse.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, linux-scsi@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Sathya Prakash <sathya.prakash@broadcom.com>, linux-csky@vger.kernel.org,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Nilesh Javali <njavali@marvell.com>, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 Jakub Kicinski <kuba@kernel.org>, MPT-FusionLinux.pdl@broadcom.com,
 "James E.J.
 Bottomley" <jejb@linux.ibm.com>, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, linux-input@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, linux-watchdog@vger.kernel.org,
 Niklas Schnelle <schnelle@linux.ibm.com>, Jouni Malinen <j@w1.fi>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 Kalle Valo <kvalo@kernel.org>, John Garry <john.garry@huawei.com>,
 linux-spi@vger.kernel.org, linux-gpio@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>, Mark Brown <broonie@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 megaraidlinux.pdl@broadcom.com, Teddy Wang <teddy.wang@siliconmotion.com>,
 linux-hwmon@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nick Hu <nickhu@andestech.com>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 netdev@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-wireless@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 "David S. Miller" <davem@davemloft.net>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Forest Bond <forest@alittletooquiet.net>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Em Tue, 28 Dec 2021 09:21:23 +0100
Greg Kroah-Hartman <gregkh@linuxfoundation.org> escreveu:

> On Mon, Dec 27, 2021 at 05:42:46PM +0100, Niklas Schnelle wrote:
> > --- a/drivers/pci/Kconfig
> > +++ b/drivers/pci/Kconfig
> > @@ -23,6 +23,17 @@ menuconfig PCI
> >  
> >  if PCI
> >  
> > +config LEGACY_PCI
> > +	bool "Enable support for legacy PCI devices"
> > +	depends on HAVE_PCI
> > +	help
> > +	   This option enables support for legacy PCI devices. This includes
> > +	   PCI devices attached directly or via a bridge on a PCI Express bus.
> > +	   It also includes compatibility features on PCI Express devices which
> > +	   make use of legacy I/O spaces.  

This Kconfig doesn't seem what it is needed there, as this should be an 
arch-dependent feature, and not something that the poor user should be
aware if a given architecture supports it or not. Also, the above will keep
causing warnings or errors with randconfigs.

Also, the "depends on HAVE_CPI" is bogus, as PCI already depends on 
HAVE_PCI:

	menuconfig PCI
	bool "PCI support"
	depends on HAVE_PCI
	help
	  This option enables support for the PCI local bus, including
	  support for PCI-X and the foundations for PCI Express support.
	  Say 'Y' here unless you know what you are doing.

So, instead, I would expect that a new HAVE_xxx option would be
added at arch/*/Kconfig, like:

	config X86
		...
		select HAVE_PCI_DIRECT_IO

It would also make sense to document it at Documentation/features/.

> 
> All you really care about is the "legacy" I/O spaces here, this isn't
> tied to PCI specifically at all, right?
> 
> So why not just have a OLD_STYLE_IO config option or something like
> that, to show that it's the i/o functions we care about here, not PCI at
> all?
> 
> And maybe not call it "old" or "legacy" as time constantly goes forward,
> just describe it as it is, "DIRECT_IO"?

Agreed. HAVE_PCI_DIRECT_IO (or something similar) seems a more appropriate
name for it.

Thanks,
Mauro
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
