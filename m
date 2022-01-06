Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5044868EC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jan 2022 18:42:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E941401DD;
	Thu,  6 Jan 2022 17:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSHIEEqfohX7; Thu,  6 Jan 2022 17:42:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8223401CC;
	Thu,  6 Jan 2022 17:42:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5FF51BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 17:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0EC080B12
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 17:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SFoFmUNgL1c5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jan 2022 17:41:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C173881CDC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 17:41:23 +0000 (UTC)
Received: from fraeml714-chm.china.huawei.com (unknown [172.18.147.226])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4JVD6c3dG6z67wb3;
 Fri,  7 Jan 2022 01:36:24 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml714-chm.china.huawei.com (10.206.15.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 18:41:19 +0100
Received: from [10.47.27.56] (10.47.27.56) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Thu, 6 Jan
 2022 17:41:15 +0000
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20220105194748.GA215560@bhelgaas>
From: John Garry <john.garry@huawei.com>
Message-ID: <74bf4fde-3972-1c36-ca04-58089da0d82b@huawei.com>
Date: Thu, 6 Jan 2022 17:41:00 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20220105194748.GA215560@bhelgaas>
Content-Language: en-US
X-Originating-IP: [10.47.27.56]
X-ClientProxiedBy: lhreml736-chm.china.huawei.com (10.201.108.87) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 06 Jan 2022 17:42:48 +0000
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
 Linus Walleij <linus.walleij@linaro.org>, Wim Van
 Sebroeck <wim@linux-watchdog.org>, Ettore Chimenti <ek5.chimenti@gmail.com>,
 linux-ide@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <guoren@kernel.org>, linux-i2c@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arch@vger.kernel.org, Hannes Reinecke <hare@suse.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, linux-scsi@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, Damien Le
 Moal <damien.lemoal@opensource.wdc.com>, Sathya
 Prakash <sathya.prakash@broadcom.com>, linux-csky@vger.kernel.org,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Nilesh Javali <njavali@marvell.com>, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com, Jakub
 Kicinski <kuba@kernel.org>, MPT-FusionLinux.pdl@broadcom.com,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Niklas Schnelle <schnelle@linux.ibm.com>, Jouni Malinen <j@w1.fi>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 Kalle Valo <kvalo@kernel.org>, linux-input@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-gpio@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>, Mark Brown <broonie@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, Paul
 Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, megaraidlinux.pdl@broadcom.com,
 Teddy Wang <teddy.wang@siliconmotion.com>, linux-hwmon@vger.kernel.org,
 Arnd Bergmann <arnd@kernel.org>, Karsten Keil <isdn@linux-pingi.de>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>, "Martin
 K. Petersen" <martin.petersen@oracle.com>, Nick Hu <nickhu@andestech.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-wireless@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, "David S. Miller" <davem@davemloft.net>, H
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Forest Bond <forest@alittletooquiet.net>,
 netdev@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05/01/2022 19:47, Bjorn Helgaas wrote:
>>>>>   ok if the PCI maintainers decide otherwise.
>>>> I don't really like the "LEGACY_PCI" Kconfig option.  "Legacy" just
>>>> means something old and out of favor; it doesn't say*what*  that
>>>> something is.
>>>>
>>>> I think you're specifically interested in I/O port space usage, and it
>>>> seems that you want all PCI drivers that*only*  use I/O port space to
>>>> depend on LEGACY_PCI?  Drivers that can use either I/O or memory
>>>> space or both would not depend on LEGACY_PCI?  This seems a little
>>>> murky and error-prone.
>>> I'd like to hear Arnd's opinion on this but you're the PCI maintainer
>>> so of course your buy-in would be quite important for such an option.
> I'd like to hear Arnd's opinion, too.  If we do add LEGACY_PCI, I
> think we need a clear guide for when to use it, e.g., "a PCI driver
> that uses inb() must depend on LEGACY_PCI" or whatever it is.
> 
> I must be missing something because I don't see what we gain from
> this.  We have PCI drivers, e.g., megaraid [1], for devices that have
> either MEM or I/O BARs.  I think we want to build drivers like that on
> any arch that supports PCI.
> 
> If the arch doesn't support I/O port space, devices that only have I/O
> BARs won't work, of course, and hopefully the PCI core and driver can
> figure that out and gracefully fail the probe.
> 
> But that same driver should still work with devices that have MEM
> BARs.  If inb() isn't always present, I guess we could litter these
> drivers with #ifdefs, but that would be pretty ugly. 

There were some ifdefs added to the 8250 drivers in Arnd's original 
patch [0], but it does not seem included here.

Niklas, what happened to the 8250 and the other driver changes?

[0] 
https://lore.kernel.org/lkml/CAK8P3a0MNbx-iuzW_-=0ab6-TTZzwV-PT_6gAC1Gp5PgYyHcrA@mail.gmail.com/

> IMO inb() should
> be present but do something innocuous like return ~0, as it would if
> I/O port space is supported but there's no device at that address.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/scsi/megaraid.c?id=v5.15#n4210
> 

That driver would prob not be used on systems which does not support 
PIO, and so could have a HAS_IOPORT dependency. But it is not strictly 
necessary.

Anyway, it would be good to have an idea of how much ifdeffery is 
required in drivers.

Thanks,
John
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
