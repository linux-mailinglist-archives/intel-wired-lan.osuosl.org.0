Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 143E551710D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 15:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACB97401DD;
	Mon,  2 May 2022 13:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mvvLUE_-gwGG; Mon,  2 May 2022 13:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8772E40286;
	Mon,  2 May 2022 13:57:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 301091BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 May 2022 22:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11BC6829B1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 May 2022 22:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpuokaC3hA_Z for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 May 2022 22:55:08 +0000 (UTC)
X-Greylist: delayed 00:06:54 by SQLgrey-1.8.0
Received: from angie.orcam.me.uk (angie.orcam.me.uk [IPv6:2001:4190:8020::34])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCE46828DA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 May 2022 22:55:07 +0000 (UTC)
Received: by angie.orcam.me.uk (Postfix, from userid 500)
 id B5CF392009E; Mon,  2 May 2022 00:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by angie.orcam.me.uk (Postfix) with ESMTP id A6C2392009D;
 Sun,  1 May 2022 23:48:09 +0100 (BST)
Date: Sun, 1 May 2022 23:48:09 +0100 (BST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Niklas Schnelle <schnelle@linux.ibm.com>
In-Reply-To: <20220429135108.2781579-36-schnelle@linux.ibm.com>
Message-ID: <alpine.DEB.2.21.2205012324130.9383@angie.orcam.me.uk>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-36-schnelle@linux.ibm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 02 May 2022 13:57:17 +0000
Subject: Re: [Intel-wired-lan] [RFC v2 21/39] net: add HAS_IOPORT
 dependencies
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:CAN NETWORK DRIVERS" <linux-can@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "open list:AX.25 NETWORK LAYER" <linux-hams@vger.kernel.org>,
 linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Apr 2022, Niklas Schnelle wrote:

> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add HAS_IOPORT as dependency for
> those drivers using them. It also turns out that with HAS_IOPORT handled
> explicitly HAMRADIO does not need the !S390 dependency and successfully
> builds the bpqether driver.
[...]
> diff --git a/drivers/net/fddi/Kconfig b/drivers/net/fddi/Kconfig
> index 846bf41c2717..fa3f1e0fe143 100644
> --- a/drivers/net/fddi/Kconfig
> +++ b/drivers/net/fddi/Kconfig
> @@ -29,7 +29,7 @@ config DEFZA
>  
>  config DEFXX
>  	tristate "Digital DEFTA/DEFEA/DEFPA adapter support"
> -	depends on FDDI && (PCI || EISA || TC)
> +	depends on FDDI && (PCI || EISA || TC) && HAS_IOPORT
>  	help
>  	  This is support for the DIGITAL series of TURBOchannel (DEFTA),
>  	  EISA (DEFEA) and PCI (DEFPA) controllers which can connect you

 NAK, this has to be sorted out differently (and I think we discussed it 
before).

 The driver works just fine with MMIO where available, so if `inb'/`outb' 
do get removed, then only parts that rely on port I/O need to be disabled.  
In fact there's already such provision there in drivers/net/fddi/defxx.c 
for TURBOchannel systems (CONFIG_TC), which have no port I/O space either:

#if defined(CONFIG_EISA) || defined(CONFIG_PCI)
#define dfx_use_mmio bp->mmio
#else
#define dfx_use_mmio true
#endif

so I guess it's just the conditional that will have to be changed to:

#ifdef CONFIG_HAS_IOPORT

replacing the current explicit bus dependency list.  The compiler will 
then optimise away all the port I/O stuff (though I suspect dummy function 
declarations may be required for `inb'/`outb', etc.).

 I can verify a suitable change with a TURBOchannel configuration once the 
MIPS part has been sorted.

  Maciej
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
