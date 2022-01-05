Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56B6485789
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 18:43:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2BD24055F;
	Wed,  5 Jan 2022 17:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOe6rSHqbxvL; Wed,  5 Jan 2022 17:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5675640383;
	Wed,  5 Jan 2022 17:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C84361BF59F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 17:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF23C40383
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 17:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hr2WhWXtfz2n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 17:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16B8740126
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 17:42:35 +0000 (UTC)
Received: from fraeml707-chm.china.huawei.com (unknown [172.18.147.226])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4JTcDP1FRwz67w73;
 Thu,  6 Jan 2022 01:39:17 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml707-chm.china.huawei.com (10.206.15.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 5 Jan 2022 18:42:31 +0100
Received: from [10.47.27.56] (10.47.27.56) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Wed, 5 Jan
 2022 17:42:28 +0000
From: John Garry <john.garry@huawei.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>, Bjorn Helgaas
 <helgaas@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, "Arnd
 Bergmann" <arnd@arndb.de>
References: <20211229160317.GA1681139@bhelgaas>
 <e0877e91d7d50299ea5a3ffcee2cf1016458ce10.camel@linux.ibm.com>
Message-ID: <3f39d8a2-2e57-a671-2926-eb4f2bf20c76@huawei.com>
Date: Wed, 5 Jan 2022 17:42:16 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <e0877e91d7d50299ea5a3ffcee2cf1016458ce10.camel@linux.ibm.com>
Content-Language: en-US
X-Originating-IP: [10.47.27.56]
X-ClientProxiedBy: lhreml736-chm.china.huawei.com (10.201.108.87) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 05 Jan 2022 17:43:30 +0000
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
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Ettore Chimenti <ek5.chimenti@gmail.com>, linux-ide@vger.kernel.org,
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
 linux-serial@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com, Jakub
 Kicinski <kuba@kernel.org>, MPT-FusionLinux.pdl@broadcom.com,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-watchdog@vger.kernel.org, Jouni Malinen <j@w1.fi>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 Kalle Valo <kvalo@kernel.org>, linux-input@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-gpio@vger.kernel.org, Ian
 Abbott <abbotti@mev.co.uk>, Mark Brown <broonie@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Wim Van
 Sebroeck <wim@linux-watchdog.org>, megaraidlinux.pdl@broadcom.com, Teddy
 Wang <teddy.wang@siliconmotion.com>, linux-hwmon@vger.kernel.org,
 Arnd Bergmann <arnd@kernel.org>, Karsten Keil <isdn@linux-pingi.de>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>, "Martin
 K. Petersen" <martin.petersen@oracle.com>, Nick Hu <nickhu@andestech.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-wireless@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, "David S. Miller" <davem@davemloft.net>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, Palmer
 Dabbelt <palmer@dabbelt.com>, Forest Bond <forest@alittletooquiet.net>,
 netdev@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 29/12/2021 16:55, Niklas Schnelle wrote:
> On Wed, 2021-12-29 at 10:03 -0600, Bjorn Helgaas wrote:
>> On Wed, Dec 29, 2021 at 01:12:07PM +0100, Mauro Carvalho Chehab wrote:
>>> Em Wed, 29 Dec 2021 12:45:38 +0100
>>> Niklas Schnelle<schnelle@linux.ibm.com>  escreveu:
>>>> ...
>>>> I do think we agree that once done correctly there is value in
>>>> such an option independent of HAS_IOPORT only gating inb() etc uses.
>> I'm not sure I'm convinced about this.  For s390, you could do this
>> patch series, where you don't define inb() at all, and you add new
>> dependencies to prevent compile errors.  Or you could define inb() to
>> return ~0, which is what happens on other platforms when the device is
>> not present.
>>
>>> Personally, I don't see much value on a Kconfig var for legacy PCI I/O
>>> space. From maintenance PoV, bots won't be triggered if someone use
>>> HAS_IOPORT instead of the PCI specific one - or vice-versa. So, we
>>> could end having a mix of both at the wrong places, in long term.
>>>
>>> Also, assuming that PCIe hardware will some day abandon support for
>>> "legacy" PCI I/O space, I guess some runtime logic would be needed,
>>> in order to work with both kinds of PCIe controllers. So, having a
>>> Kconfig option won't help much, IMO.
>>>
>>> So, my personal preference would be to have just one Kconfig var, but
>>> I'm ok if the PCI maintainers decide otherwise.
>> I don't really like the "LEGACY_PCI" Kconfig option.  "Legacy" just
>> means something old and out of favor; it doesn't say*what*  that
>> something is.
>>
>> I think you're specifically interested in I/O port space usage, and it
>> seems that you want all PCI drivers that*only*  use I/O port space to
>> depend on LEGACY_PCI?  Drivers that can use either I/O or memory
>> space or both would not depend on LEGACY_PCI?  This seems a little
>> murky and error-prone.
> I'd like to hear Arnd's opinion on this but you're the PCI maintainer
> so of course your buy-in would be quite important for such an option.
> 

Hi Niklas,

I can't see the value in the LEGACY_PCI config - however I don't really 
understand Arnd's original intention.

It was written that it would allow us to control "whether we have any 
pre-PCIe devices or those PCIe drivers that need PIO accessors other 
than ioport_map()/pci_iomap()".

However I just don't see why CONFIG_PCI=y and CONFIG_HAS_IOPORT=y aren't 
always the gating factor here. Arnd?

Thanks,
John
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
