Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B5481223
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Dec 2021 12:46:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C09B4027F;
	Wed, 29 Dec 2021 11:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4vfnvTE6RrRU; Wed, 29 Dec 2021 11:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 830EB4019C;
	Wed, 29 Dec 2021 11:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 300C11BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 11:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11A938269C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 11:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ibm.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G-u1rVU6Ch7L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Dec 2021 11:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4A8882690
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 11:46:07 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1BT8Pn7i011761; 
 Wed, 29 Dec 2021 11:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=i5NP9XctF1wJk5OjQUo+Vc9uVmlIqZSnBT0u09LTmOk=;
 b=bFPRLC+jl+efdix4uwpI/mccWCcWO/G1P+1Qbs1rTtCAz+rovwnnR8pPTU6lF0Xc0joV
 YXPBuRb7BHXzyjRg7LITTk2SnNio9SeVldUJyNRqyoNhK4M9oyDLsc8IgyEZJiRqRm5A
 iHUmkTc7uG3NhK6BlA+KFy7MBz/iVluQaCQBkvCSyAyJcdcbD85ipXooRay1nJfQKYhr
 pBhuhwTvWtOhRjZ8iX5rVE8/8svHYNhhRkTQSfMP/PoiugU551FyKdeVPLCMOig/L1Pb
 f+O+aj84GXG4UtoEonKAgWOYfXmY61i73T8/AZi6WWLQ0MnyNiHoz+SQfgz7xDZNEMLG PQ== 
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.70])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3d7rpyt5s9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Dec 2021 11:45:51 +0000
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
 by ppma01fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 1BTBg94u031832;
 Wed, 29 Dec 2021 11:45:48 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma01fra.de.ibm.com with ESMTP id 3d5tx9cy34-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Dec 2021 11:45:48 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 1BTBbEnS47841776
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 Dec 2021 11:37:14 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1CC32AE055;
 Wed, 29 Dec 2021 11:45:45 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DA088AE053;
 Wed, 29 Dec 2021 11:45:38 +0000 (GMT)
Received: from sig-9-145-13-177.uk.ibm.com (unknown [9.145.13.177])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 29 Dec 2021 11:45:38 +0000 (GMT)
Message-ID: <8c59271de66dfa230142186d593f3501b8c789b1.camel@linux.ibm.com>
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Ettore Chimenti <ek5.chimenti@gmail.com>
Date: Wed, 29 Dec 2021 12:45:38 +0100
In-Reply-To: <20211228181107.2d476028@coco.lan>
References: <20211227164317.4146918-1-schnelle@linux.ibm.com>
 <20211227164317.4146918-2-schnelle@linux.ibm.com>
 <YcrJAwsKIxxX18pW@kroah.com> <20211228101435.3a55b983@coco.lan>
 <b1475f6aecb752a858941f44a957b2183cd68405.camel@linux.ibm.com>
 <20211228135425.0a69168c@coco.lan>
 <4b630b7b87bd983291f628c42a1394fc0d2d86bd.camel@linux.ibm.com>
 <20211228181107.2d476028@coco.lan>
X-Mailer: Evolution 3.28.5 (3.28.5-18.el8) 
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fDpUVSRh2Ka7hPzyqZG9djJVno3Sdwgn
X-Proofpoint-ORIG-GUID: fDpUVSRh2Ka7hPzyqZG9djJVno3Sdwgn
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-29_04,2021-12-29_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=999 spamscore=0 phishscore=0 adultscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112290062
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
 Jaroslav Kysela <perex@perex.cz>, linux-ide@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Guo Ren <guoren@kernel.org>,
 linux-i2c@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Jiri Slaby <jirislaby@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
 Hannes Reinecke <hare@suse.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 intel-wired-lan@lists.osuosl.org, linux-scsi@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Sathya Prakash <sathya.prakash@broadcom.com>, linux-csky@vger.kernel.org,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Nilesh Javali <njavali@marvell.com>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-serial@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 Jakub Kicinski <kuba@kernel.org>, MPT-FusionLinux.pdl@broadcom.com,
 "James E.J.
 Bottomley" <jejb@linux.ibm.com>, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, linux-input@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, linux-watchdog@vger.kernel.org,
 Jouni Malinen <j@w1.fi>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-wireless@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, "David S. Miller" <davem@davemloft.net>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Forest Bond <forest@alittletooquiet.net>,
 netdev@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-12-28 at 18:12 +0100, Mauro Carvalho Chehab wrote:
> Em Tue, 28 Dec 2021 16:06:44 +0100
> Niklas Schnelle <schnelle@linux.ibm.com> escreveu:
> 
> (on a side note: the c/c list of this patch is too long. I would try to
> avoid using a too long list, as otherwise this e-mail may end being rejected
> by mail servers)
> 
> > On Tue, 2021-12-28 at 13:54 +0100, Mauro Carvalho Chehab wrote:
> > >  
> > ---8<---
> > >     
> > > > > > All you really care about is the "legacy" I/O spaces here, this isn't
> > > > > > tied to PCI specifically at all, right?
> > > > > > 
> > > > > > So why not just have a OLD_STYLE_IO config option or something like
> > > > > > that, to show that it's the i/o functions we care about here, not PCI at
> > > > > > all?
> > > > > > 
> > > > > > And maybe not call it "old" or "legacy" as time constantly goes forward,
> > > > > > just describe it as it is, "DIRECT_IO"?    
> > > > > 
> > > > > Agreed. HAVE_PCI_DIRECT_IO (or something similar) seems a more appropriate
> > > > > name for it.
> > > > > 
> > > > > Thanks,
> > > > > Mauro    
> > > > 
> > > > Hmm, I might be missing something here but that sounds a lot like the
> > > > HAS_IOPORT option added in patch 02.
> > > > 
> > > > We add both LEGACY_PCI and HAS_IOPORT to differentiate between two
> > > > cases. HAS_IOPORT is for PC-style devices that are not on a PCI card
> > > > while LEGACY_PCI is for PCI drivers that require port I/O.   
> > > 
> > > I didn't look at the other patches on this series, but why it is needed
> > > to deal with them on a separate way? Won't "PCI" and "HAS_IOPORT" be enough? 
> > > 
> > > I mean, are there any architecture where HAVE_PCI=y and HAS_IOPORT=y
> > > where LEGACY_PCI shall be "n"?  
> > 
> > In the current patch set LEGACY_PCI is not currently selected by
> > architectures, though of course it could be if we know that an
> > architecture requires it. We should probably also set it in any
> > defconfig that has devices depending on it so as not to break these.
> > 
> > Other than that it would be set during kernel configuration if one
> > wants/needs support for legacy PCI devices. For testing I ran with
> > HAVE_PCI=y, HAS_IOPORT=y and LEGACY_PCI=n on both my local Ryzen 3990X
> > based workstation and Raspberry Pi 4 (DT). I guess at the moment it
> > would make most sense for special configs such as those tailored for
> > vitualization guets but in the end that would be something for
> > distributions to decide.
> 
> IMO, it makes sense to have a "default y" there, as on systems that
> support I/O space, disabling it will just randomly disable some drivers
> that could be required by some hardware. I won't doubt that some of 
> those could be ported from using inb/outb to use, instead, readb/writeb.

Makes sense, if these get more legacy over time we can always change
the default. This would also mean we don't need to change defconfigs
that include legacy PCI devices.

> 
> > Arnd described the options here:
> > https://lore.kernel.org/lkml/CAK8P3a3HHeP+Gw_k2P7Qtig0OmErf0HN30G22+qHic_uZTh11Q@mail.gmail.com/
> 
> Based on Arnd's description, LEGACY_PCI should depend on HAS_IOPORT.
> This is missing on patch 1. You should probably reorder your patch
> series to first create HAS_IOPORT and then add LEGACY_PCI with
> depends on, as otherwise it may cause randconfig build issues
> at robots and/or git bisect.
> 
> I would also suggest to first introduce such change and then send
> a per-subsystem LEGACY_PCI patch, as it would be a lot easier for
> maintainers to review.

Playing around with the reordering I think it might make sense to
introduce HAS_IOPORT in patch 01, then LEGACY_PCI in patch 02 and then
add dependencies for both on a per subsystem basis. I think it would be
overkill to have two series of per subsystem patches.

> 
> > >   
> > > > This
> > > > includes pre-PCIe devices as well as PCIe devices which require
> > > > features like I/O spaces. The "legacy" naming is comes from the PCIe
> > > > spec which in section 2.1.1.2 says "PCI Express supports I/O Space for
> > > > compatibility with legacy devices which require their use. Future
> > > > revisions of this specification may deprecate the use of I/O Space."  
> > > 
> > > I would still avoid calling it LEGACY_PCI, as this sounds too generic.
> > > 
> > > I didn't read the PCI/PCIe specs, but I suspect that are a lot more
> > > features that were/will be deprecated on PCI specs as time goes by.
> > > 
> > > So, I would, instead, use something like PCI_LEGACY_IO_SPACE or 
> > > HAVE_PCI_LEGACY_IO_SPACE, in order to let it clear what "legacy"
> > > means.  
> > 
> > Hmm, I'd like to hear Bjorn's opinion on this. Personally I feel like
> > LEGACY_PCI is pretty clear since most devices are either pre-PCIe
> > devices or a compatibility feature allowing drivers for a pre-PCIe
> > device to work with a PCIe device.
> 
> That's the main point: it is *not* disabling pre-PCIe devices or
> even legacy PCI drivers. It just disables a random set of drivers just
> because they use inb/outb instead of readb/writeb. It keeps several pure 
> PCI drivers selected, and disables some PCIe for no real reason.

That is not intentional. The dependencies are certainly not perfect yet
which is one of the reasons this is still an RFC. I hope getting these
right will be a lot easier if we do both LEGACY_PCI and HAS_IOPORT
dependency selection on a per subsystem basis.

> 
> Just to give one example, this symbol:
> 
> > diff --git a/drivers/media/cec/platform/Kconfig b/drivers/media/cec/platform/Kconfig
> > index b672d3142eb7..5e92ece5b104 100644
> > --- a/drivers/media/cec/platform/Kconfig
> > +++ b/drivers/media/cec/platform/Kconfig
> > @@ -100,7 +100,7 @@ config CEC_TEGRA
> >  config CEC_SECO
> >  	tristate "SECO Boards HDMI CEC driver"
> >  	depends on (X86 || IA64) || COMPILE_TEST
> > -	depends on PCI && DMI
> > +	depends on LEGACY_PCI && DMI
> >  	select CEC_CORE
> >  	select CEC_NOTIFIER
> >  	help
> 
> Disables HDMI CEC support on some Intel motherboards.
> Any distro meant to run on generic hardware should keep it selected.

As far as I can see this one actually uses a hardcoded I/O port numbers
and googling it looks like it's an on-board device on the UDOO x86
board. I guess that should indeed just be
"depends on PCI && DMI && HAS_IOPORT".

> 
> I can see some value of a "PCI_LEGACY" option to disable all
> non-PCIe drivers, but this is not the case here.
> 
> Thanks,
> Mauro

Ok, I think we definitely need to work on getting the dependencies
right. I do think we agree that once done correctly there is value in
such an option independent of HAS_IOPORT only gating inb() etc uses.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
