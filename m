Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BC027D99E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86A0B87174;
	Tue, 29 Sep 2020 21:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U8Www14B2qXL; Tue, 29 Sep 2020 21:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDFD687113;
	Tue, 29 Sep 2020 21:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 177E31BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BDF18682B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffJMcMykQiBJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1989F8683A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:04 +0000 (UTC)
Message-Id: <20200929203501.384359804@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=fic2oF38maLPjPgIPYA9CNGhq9WYNsn4UUVLjOIQ4Yc=;
 b=DsOiiyLnllJKv8DXD1ITRdFwttZavH4BitIxzxhOTLKbM3lFF+1Uy1bhGv2oWrUg038FUI
 IpkF7hWFGSKqKyu3vlZfdCWRAsxpfcuPQivMhcDL29MWeXAr99TUc5J+jZ0OnwchOglAfT
 HEeU6CwQwamjWVo4nxnsJdNpCTXW6ysfCLORlvzVb0lShFeBhRg9kyQHHAQA554LEALUsO
 yawJTzO61XnnOGqrXdnKma8Pg9IrJcWeWcgFg7NI9YtvHYMMSeC0ZhjKYyl3B4pNpDc3vP
 JXYT9WRa47XoB1N5GFk9s4eFPHwj1TvJhQdB3sbArhGNNueV/S3EmNAMQevysQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=fic2oF38maLPjPgIPYA9CNGhq9WYNsn4UUVLjOIQ4Yc=;
 b=aTr/bQVceg0LVg317+omnTdQBuqT2WpvaGqxz6OuJWvQIe93iXRiXC9t4tZxlEDWJDn0LI
 yCuQHq64Gj46/3CQ==
Date: Tue, 29 Sep 2020 22:25:28 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 19/36] net: vxge: Remove in_interrupt()
 conditionals
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
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christian Benvenuti <benve@cisco.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>, Amitkumar Karwar <amitkarwar@gmail.com>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

vxge_os_dma_malloc() and vxge_os_dma_malloc_async() are both called from
callchains which use GFP_KERNEL allocations unconditionally or have other
requirements to be called from fully preemptible task context..

vxge_os_dma_malloc():
  1)  __vxge_hw_blockpool_create() <- GFP_KERNEL
	
  2)  __vxge_hw_mempool_grow() <- vzalloc()
        __vxge_hw_blockpool_malloc()

vxge_os_dma_malloc_async():
  1  __vxge_hw_mempool_grow() <- vzalloc()
      __vxge_hw_blockpool_malloc()
	__vxge_hw_blockpool_blocks_add()

  2)  vxge_hw_vpath_open()	<- vzalloc()
	__vxge_hw_blockpool_block_allocate()

That means neither of these functions needs a conditional allocation mode.

Remove the in_interrupt() conditional and use GFP_KERNEL.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>


---
 drivers/net/ethernet/neterion/vxge/vxge-config.c |    9 +--------
 drivers/net/ethernet/neterion/vxge/vxge-config.h |    7 +------
 2 files changed, 2 insertions(+), 14 deletions(-)

--- a/drivers/net/ethernet/neterion/vxge/vxge-config.c
+++ b/drivers/net/ethernet/neterion/vxge/vxge-config.c
@@ -2303,16 +2303,9 @@ static void vxge_hw_blockpool_block_add(
 static inline void
 vxge_os_dma_malloc_async(struct pci_dev *pdev, void *devh, unsigned long size)
 {
-	gfp_t flags;
 	void *vaddr;
 
-	if (in_interrupt())
-		flags = GFP_ATOMIC | GFP_DMA;
-	else
-		flags = GFP_KERNEL | GFP_DMA;
-
-	vaddr = kmalloc((size), flags);
-
+	vaddr = kmalloc(size, GFP_KERNEL | GFP_DMA);
 	vxge_hw_blockpool_block_add(devh, vaddr, size, pdev, pdev);
 }
 
--- a/drivers/net/ethernet/neterion/vxge/vxge-config.h
+++ b/drivers/net/ethernet/neterion/vxge/vxge-config.h
@@ -1899,18 +1899,13 @@ static inline void *vxge_os_dma_malloc(s
 			struct pci_dev **p_dmah,
 			struct pci_dev **p_dma_acch)
 {
-	gfp_t flags;
 	void *vaddr;
 	unsigned long misaligned = 0;
 	int realloc_flag = 0;
 	*p_dma_acch = *p_dmah = NULL;
 
-	if (in_interrupt())
-		flags = GFP_ATOMIC | GFP_DMA;
-	else
-		flags = GFP_KERNEL | GFP_DMA;
 realloc:
-	vaddr = kmalloc((size), flags);
+	vaddr = kmalloc(size, GFP_KERNEL | GFP_DMA);
 	if (vaddr == NULL)
 		return vaddr;
 	misaligned = (unsigned long)VXGE_ALIGN((unsigned long)vaddr,


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
