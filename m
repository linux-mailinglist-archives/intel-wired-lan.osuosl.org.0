Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB84748596C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 20:48:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6176D6FB98;
	Wed,  5 Jan 2022 19:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFFWF-57QrHA; Wed,  5 Jan 2022 19:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42C3060BA3;
	Wed,  5 Jan 2022 19:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6378C1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 19:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 567D082778
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 19:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zONWGy2S3V95 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 19:47:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EEB381570
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 19:47:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 27F5261859;
 Wed,  5 Jan 2022 19:47:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F8F0C36AE0;
 Wed,  5 Jan 2022 19:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641412069;
 bh=t/Luv/nk2DzaSNkJU//u39w5XVRhppoSx5pKsM3k/v4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=VUv9O2qdqKxA+jG4CFc2u3LsBBtVCfotavPXFO/fA1pTVEWrxgynepfFoNwDmpPe3
 gm6mzSwrf0Mu9v8LI0ep1L8d0gF07n+txTEieNZIGWxOqW9SiL4CAOcvJbfSVMhQ+3
 AXwKESLwYk/C/VLxQ9B09ONeiabtURx+gn19Ju8IEKSa/0hYllteATy6HWhv5F/Jtp
 78FWTCTutn0mw70OCHpRgC8L6tBrcnnp3ILK1zuW9o6rgJRHSCKyS7qdLXCdCEZ3Sf
 pZgJlDurZwMThwqJkqgUgnGVT16YwqrnJM1KhaMG1e1LQ7K8PhR9cgiSRWv4dC4Mip
 cFT1uhvBqjObQ==
Date: Wed, 5 Jan 2022 13:47:48 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: John Garry <john.garry@huawei.com>
Message-ID: <20220105194748.GA215560@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f39d8a2-2e57-a671-2926-eb4f2bf20c76@huawei.com>
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
Cc: linux-fbdev@vger.kernel.org, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Ettore Chimenti <ek5.chimenti@gmail.com>, linux-ide@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
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
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Niklas Schnelle <schnelle@linux.ibm.com>, Jouni Malinen <j@w1.fi>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 Kalle Valo <kvalo@kernel.org>, linux-input@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-gpio@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>, Mark Brown <broonie@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, megaraidlinux.pdl@broadcom.com,
 Teddy Wang <teddy.wang@siliconmotion.com>, linux-hwmon@vger.kernel.org,
 Arnd Bergmann <arnd@kernel.org>, Karsten Keil <isdn@linux-pingi.de>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nick Hu <nickhu@andestech.com>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-wireless@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 "David S. Miller" <davem@davemloft.net>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Forest Bond <forest@alittletooquiet.net>,
 netdev@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 05, 2022 at 05:42:16PM +0000, John Garry wrote:
> On 29/12/2021 16:55, Niklas Schnelle wrote:
> > On Wed, 2021-12-29 at 10:03 -0600, Bjorn Helgaas wrote:
> > > On Wed, Dec 29, 2021 at 01:12:07PM +0100, Mauro Carvalho Chehab wrote:
> > > > Em Wed, 29 Dec 2021 12:45:38 +0100
> > > > Niklas Schnelle<schnelle@linux.ibm.com>  escreveu:
> > > > > ...
> > > > > I do think we agree that once done correctly there is value in
> > > > > such an option independent of HAS_IOPORT only gating inb() etc uses.
> > > I'm not sure I'm convinced about this.  For s390, you could do this
> > > patch series, where you don't define inb() at all, and you add new
> > > dependencies to prevent compile errors.  Or you could define inb() to
> > > return ~0, which is what happens on other platforms when the device is
> > > not present.
> > > 
> > > > Personally, I don't see much value on a Kconfig var for legacy PCI I/O
> > > > space. From maintenance PoV, bots won't be triggered if someone use
> > > > HAS_IOPORT instead of the PCI specific one - or vice-versa. So, we
> > > > could end having a mix of both at the wrong places, in long term.
> > > > 
> > > > Also, assuming that PCIe hardware will some day abandon support for
> > > > "legacy" PCI I/O space, I guess some runtime logic would be needed,
> > > > in order to work with both kinds of PCIe controllers. So, having a
> > > > Kconfig option won't help much, IMO.
> > > > 
> > > > So, my personal preference would be to have just one Kconfig var, but
> > > > I'm ok if the PCI maintainers decide otherwise.
> > > I don't really like the "LEGACY_PCI" Kconfig option.  "Legacy" just
> > > means something old and out of favor; it doesn't say*what*  that
> > > something is.
> > > 
> > > I think you're specifically interested in I/O port space usage, and it
> > > seems that you want all PCI drivers that *only* use I/O port space to
> > > depend on LEGACY_PCI?  Drivers that can use either I/O or memory
> > > space or both would not depend on LEGACY_PCI?  This seems a little
> > > murky and error-prone.
> > I'd like to hear Arnd's opinion on this but you're the PCI maintainer
> > so of course your buy-in would be quite important for such an option.

I'd like to hear Arnd's opinion, too.  If we do add LEGACY_PCI, I
think we need a clear guide for when to use it, e.g., "a PCI driver
that uses inb() must depend on LEGACY_PCI" or whatever it is.

I must be missing something because I don't see what we gain from
this.  We have PCI drivers, e.g., megaraid [1], for devices that have
either MEM or I/O BARs.  I think we want to build drivers like that on
any arch that supports PCI.

If the arch doesn't support I/O port space, devices that only have I/O
BARs won't work, of course, and hopefully the PCI core and driver can
figure that out and gracefully fail the probe.

But that same driver should still work with devices that have MEM
BARs.  If inb() isn't always present, I guess we could litter these
drivers with #ifdefs, but that would be pretty ugly.  IMO inb() should
be present but do something innocuous like return ~0, as it would if
I/O port space is supported but there's no device at that address.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/scsi/megaraid.c?id=v5.15#n4210

> I can't see the value in the LEGACY_PCI config - however I don't really
> understand Arnd's original intention.
> 
> It was written that it would allow us to control "whether we have any
> pre-PCIe devices or those PCIe drivers that need PIO accessors other than
> ioport_map()/pci_iomap()".
> 
> However I just don't see why CONFIG_PCI=y and CONFIG_HAS_IOPORT=y aren't
> always the gating factor here. Arnd?
> 
> Thanks,
> John
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
