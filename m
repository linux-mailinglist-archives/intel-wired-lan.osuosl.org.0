Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E3E27A5EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17ADD20022;
	Mon, 28 Sep 2020 03:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id stfRtE9TPqX3; Mon, 28 Sep 2020 03:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04F9020378;
	Mon, 28 Sep 2020 03:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1BA81BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A2A8A85BD3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lQ-+8pl9R0nS for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2A06485BDF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:10 +0000 (UTC)
Message-Id: <20200927194919.957684395@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Mc6L47zeY6NXS/LK+WC9HK8dBe7kl4mL9XLjSKFGFOo=;
 b=azm5MurixBvEkxXI1BAPUZX7+Ve7OMTY7FLtoppSNx6WRHJMjteq7S5iDX6SmhHa0QA/pD
 iGVGcrC9eFyQ7B0bpJFUZiQ8S0UfyN6GHQI/IYDkdV0+t29MPsBwB+eHXJ74eOHcQiaDjp
 XZ0BB5DEMeCtKu9ppd3wV4ccQepEiXjBQHcSK6EGtWM0eaPnm8KpG7ySIpz53XfiO5krfa
 IPWqrIjVYPCbSe4jApnDszMEH1/+BjV710yf6YlWaPuVl255OSm8ddvYF/9Ri+aspQPbmU
 +Qdd4MMXx4NTYb6OUZR3W+wx7c+1QBk+0rEnA2HoM9SvkzCHbvlnlmoKCM66YQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Mc6L47zeY6NXS/LK+WC9HK8dBe7kl4mL9XLjSKFGFOo=;
 b=a+jMmkMXi3eUzeOJ7s+/QPTmm6iFZNmJ3xdMgXLIR4bYxEuqOQkRU9sLO+naUrqgCnVnZD
 unLS32NNTH2+sqAA==
Date: Sun, 27 Sep 2020 21:48:48 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 02/35] net: caif: Remove unused caif SPI
 driver
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
 Heiner Kallweit <hkallweit1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
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
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

While chasing in_interrupt() (ab)use in drivers it turned out that the
caif_spi driver has never been in use since the driver was merged 10 years
ago. There never was any matching code which provides a platform device.

The driver has not seen any update (asided of treewide changes and
cleanups) since 8 years and the maintainers vanished from the planet.

So analysing the potential contexts and the (in)correctness of
in_interrupt() usage is just a pointless exercise.

Remove the cruft.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-doc@vger.kernel.org
---
 Documentation/networking/caif/index.rst       |    1 
 Documentation/networking/caif/spi_porting.rst |  229 ------
 drivers/net/caif/Kconfig                      |   19 
 drivers/net/caif/Makefile                     |    4 
 drivers/net/caif/caif_spi.c                   |  874 --------------------------
 drivers/net/caif/caif_spi_slave.c             |  254 -------
 include/net/caif/caif_spi.h                   |  155 ----
 7 files changed, 1536 deletions(-)

--- a/Documentation/networking/caif/index.rst
+++ b/Documentation/networking/caif/index.rst
@@ -10,4 +10,3 @@ CAIF
 
    linux_caif
    caif
-   spi_porting
--- a/Documentation/networking/caif/spi_porting.rst
+++ /dev/null
@@ -1,229 +0,0 @@
-.. SPDX-License-Identifier: GPL-2.0
-
-================
-CAIF SPI porting
-================
-
-CAIF SPI basics
-===============
-
-Running CAIF over SPI needs some extra setup, owing to the nature of SPI.
-Two extra GPIOs have been added in order to negotiate the transfers
-between the master and the slave. The minimum requirement for running
-CAIF over SPI is a SPI slave chip and two GPIOs (more details below).
-Please note that running as a slave implies that you need to keep up
-with the master clock. An overrun or underrun event is fatal.
-
-CAIF SPI framework
-==================
-
-To make porting as easy as possible, the CAIF SPI has been divided in
-two parts. The first part (called the interface part) deals with all
-generic functionality such as length framing, SPI frame negotiation
-and SPI frame delivery and transmission. The other part is the CAIF
-SPI slave device part, which is the module that you have to write if
-you want to run SPI CAIF on a new hardware. This part takes care of
-the physical hardware, both with regard to SPI and to GPIOs.
-
-- Implementing a CAIF SPI device:
-
-	- Functionality provided by the CAIF SPI slave device:
-
-	In order to implement a SPI device you will, as a minimum,
-	need to implement the following
-	functions:
-
-	::
-
-	    int (*init_xfer) (struct cfspi_xfer * xfer, struct cfspi_dev *dev):
-
-	This function is called by the CAIF SPI interface to give
-	you a chance to set up your hardware to be ready to receive
-	a stream of data from the master. The xfer structure contains
-	both physical and logical addresses, as well as the total length
-	of the transfer in both directions.The dev parameter can be used
-	to map to different CAIF SPI slave devices.
-
-	::
-
-	    void (*sig_xfer) (bool xfer, struct cfspi_dev *dev):
-
-	This function is called by the CAIF SPI interface when the output
-	(SPI_INT) GPIO needs to change state. The boolean value of the xfer
-	variable indicates whether the GPIO should be asserted (HIGH) or
-	deasserted (LOW). The dev parameter can be used to map to different CAIF
-	SPI slave devices.
-
-	- Functionality provided by the CAIF SPI interface:
-
-	::
-
-	    void (*ss_cb) (bool assert, struct cfspi_ifc *ifc);
-
-	This function is called by the CAIF SPI slave device in order to
-	signal a change of state of the input GPIO (SS) to the interface.
-	Only active edges are mandatory to be reported.
-	This function can be called from IRQ context (recommended in order
-	not to introduce latency). The ifc parameter should be the pointer
-	returned from the platform probe function in the SPI device structure.
-
-	::
-
-	    void (*xfer_done_cb) (struct cfspi_ifc *ifc);
-
-	This function is called by the CAIF SPI slave device in order to
-	report that a transfer is completed. This function should only be
-	called once both the transmission and the reception are completed.
-	This function can be called from IRQ context (recommended in order
-	not to introduce latency). The ifc parameter should be the pointer
-	returned from the platform probe function in the SPI device structure.
-
-	- Connecting the bits and pieces:
-
-		- Filling in the SPI slave device structure:
-
-		  Connect the necessary callback functions.
-
-		  Indicate clock speed (used to calculate toggle delays).
-
-		  Chose a suitable name (helps debugging if you use several CAIF
-		  SPI slave devices).
-
-		  Assign your private data (can be used to map to your
-		  structure).
-
-		- Filling in the SPI slave platform device structure:
-
-		  Add name of driver to connect to ("cfspi_sspi").
-
-		  Assign the SPI slave device structure as platform data.
-
-Padding
-=======
-
-In order to optimize throughput, a number of SPI padding options are provided.
-Padding can be enabled independently for uplink and downlink transfers.
-Padding can be enabled for the head, the tail and for the total frame size.
-The padding needs to be correctly configured on both sides of the link.
-The padding can be changed via module parameters in cfspi_sspi.c or via
-the sysfs directory of the cfspi_sspi driver (before device registration).
-
-- CAIF SPI device template::
-
-    /*
-    *	Copyright (C) ST-Ericsson AB 2010
-    *	Author: Daniel Martensson / Daniel.Martensson@stericsson.com
-    *	License terms: GNU General Public License (GPL), version 2.
-    *
-    */
-
-    #include <linux/init.h>
-    #include <linux/module.h>
-    #include <linux/device.h>
-    #include <linux/wait.h>
-    #include <linux/interrupt.h>
-    #include <linux/dma-mapping.h>
-    #include <net/caif/caif_spi.h>
-
-    MODULE_LICENSE("GPL");
-
-    struct sspi_struct {
-	    struct cfspi_dev sdev;
-	    struct cfspi_xfer *xfer;
-    };
-
-    static struct sspi_struct slave;
-    static struct platform_device slave_device;
-
-    static irqreturn_t sspi_irq(int irq, void *arg)
-    {
-	    /* You only need to trigger on an edge to the active state of the
-	    * SS signal. Once a edge is detected, the ss_cb() function should be
-	    * called with the parameter assert set to true. It is OK
-	    * (and even advised) to call the ss_cb() function in IRQ context in
-	    * order not to add any delay. */
-
-	    return IRQ_HANDLED;
-    }
-
-    static void sspi_complete(void *context)
-    {
-	    /* Normally the DMA or the SPI framework will call you back
-	    * in something similar to this. The only thing you need to
-	    * do is to call the xfer_done_cb() function, providing the pointer
-	    * to the CAIF SPI interface. It is OK to call this function
-	    * from IRQ context. */
-    }
-
-    static int sspi_init_xfer(struct cfspi_xfer *xfer, struct cfspi_dev *dev)
-    {
-	    /* Store transfer info. For a normal implementation you should
-	    * set up your DMA here and make sure that you are ready to
-	    * receive the data from the master SPI. */
-
-	    struct sspi_struct *sspi = (struct sspi_struct *)dev->priv;
-
-	    sspi->xfer = xfer;
-
-	    return 0;
-    }
-
-    void sspi_sig_xfer(bool xfer, struct cfspi_dev *dev)
-    {
-	    /* If xfer is true then you should assert the SPI_INT to indicate to
-	    * the master that you are ready to receive the data from the master
-	    * SPI. If xfer is false then you should de-assert SPI_INT to indicate
-	    * that the transfer is done.
-	    */
-
-	    struct sspi_struct *sspi = (struct sspi_struct *)dev->priv;
-    }
-
-    static void sspi_release(struct device *dev)
-    {
-	    /*
-	    * Here you should release your SPI device resources.
-	    */
-    }
-
-    static int __init sspi_init(void)
-    {
-	    /* Here you should initialize your SPI device by providing the
-	    * necessary functions, clock speed, name and private data. Once
-	    * done, you can register your device with the
-	    * platform_device_register() function. This function will return
-	    * with the CAIF SPI interface initialized. This is probably also
-	    * the place where you should set up your GPIOs, interrupts and SPI
-	    * resources. */
-
-	    int res = 0;
-
-	    /* Initialize slave device. */
-	    slave.sdev.init_xfer = sspi_init_xfer;
-	    slave.sdev.sig_xfer = sspi_sig_xfer;
-	    slave.sdev.clk_mhz = 13;
-	    slave.sdev.priv = &slave;
-	    slave.sdev.name = "spi_sspi";
-	    slave_device.dev.release = sspi_release;
-
-	    /* Initialize platform device. */
-	    slave_device.name = "cfspi_sspi";
-	    slave_device.dev.platform_data = &slave.sdev;
-
-	    /* Register platform device. */
-	    res = platform_device_register(&slave_device);
-	    if (res) {
-		    printk(KERN_WARNING "sspi_init: failed to register dev.\n");
-		    return -ENODEV;
-	    }
-
-	    return res;
-    }
-
-    static void __exit sspi_exit(void)
-    {
-	    platform_device_del(&slave_device);
-    }
-
-    module_init(sspi_init);
-    module_exit(sspi_exit);
--- a/drivers/net/caif/Kconfig
+++ b/drivers/net/caif/Kconfig
@@ -20,25 +20,6 @@ config CAIF_TTY
 	  identified as N_CAIF. When this ldisc is opened from user space
 	  it will redirect the TTY's traffic into the CAIF stack.
 
-config CAIF_SPI_SLAVE
-	tristate "CAIF SPI transport driver for slave interface"
-	depends on CAIF && HAS_DMA
-	default n
-	help
-	  The CAIF Link layer SPI Protocol driver for Slave SPI interface.
-	  This driver implements a platform driver to accommodate for a
-	  platform specific SPI device. A sample CAIF SPI Platform device is
-	  provided in <file:Documentation/networking/caif/spi_porting.rst>.
-
-config CAIF_SPI_SYNC
-	bool "Next command and length in start of frame"
-	depends on CAIF_SPI_SLAVE
-	default n
-	help
-	  Putting the next command and length in the start of the frame can
-	  help to synchronize to the next transfer in case of over or under-runs.
-	  This option also needs to be enabled on the modem.
-
 config CAIF_HSI
 	tristate "CAIF HSI transport driver"
 	depends on CAIF
--- a/drivers/net/caif/Makefile
+++ b/drivers/net/caif/Makefile
@@ -4,10 +4,6 @@ ccflags-$(CONFIG_CAIF_DEBUG) := -DDEBUG
 # Serial interface
 obj-$(CONFIG_CAIF_TTY) += caif_serial.o
 
-# SPI slave physical interfaces module
-cfspi_slave-objs := caif_spi.o caif_spi_slave.o
-obj-$(CONFIG_CAIF_SPI_SLAVE) += cfspi_slave.o
-
 # HSI interface
 obj-$(CONFIG_CAIF_HSI) += caif_hsi.o
 
--- a/drivers/net/caif/caif_spi.c
+++ /dev/null
@@ -1,874 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) ST-Ericsson AB 2010
- * Author:  Daniel Martensson
- */
-
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/device.h>
-#include <linux/platform_device.h>
-#include <linux/string.h>
-#include <linux/workqueue.h>
-#include <linux/completion.h>
-#include <linux/list.h>
-#include <linux/interrupt.h>
-#include <linux/dma-mapping.h>
-#include <linux/delay.h>
-#include <linux/sched.h>
-#include <linux/debugfs.h>
-#include <linux/if_arp.h>
-#include <net/caif/caif_layer.h>
-#include <net/caif/caif_spi.h>
-
-#ifndef CONFIG_CAIF_SPI_SYNC
-#define FLAVOR "Flavour: Vanilla.\n"
-#else
-#define FLAVOR "Flavour: Master CMD&LEN at start.\n"
-#endif /* CONFIG_CAIF_SPI_SYNC */
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Daniel Martensson");
-MODULE_DESCRIPTION("CAIF SPI driver");
-
-/* Returns the number of padding bytes for alignment. */
-#define PAD_POW2(x, pow) ((((x)&((pow)-1))==0) ? 0 : (((pow)-((x)&((pow)-1)))))
-
-static bool spi_loop;
-module_param(spi_loop, bool, 0444);
-MODULE_PARM_DESC(spi_loop, "SPI running in loopback mode.");
-
-/* SPI frame alignment. */
-module_param(spi_frm_align, int, 0444);
-MODULE_PARM_DESC(spi_frm_align, "SPI frame alignment.");
-
-/*
- * SPI padding options.
- * Warning: must be a base of 2 (& operation used) and can not be zero !
- */
-module_param(spi_up_head_align, int, 0444);
-MODULE_PARM_DESC(spi_up_head_align, "SPI uplink head alignment.");
-
-module_param(spi_up_tail_align, int, 0444);
-MODULE_PARM_DESC(spi_up_tail_align, "SPI uplink tail alignment.");
-
-module_param(spi_down_head_align, int, 0444);
-MODULE_PARM_DESC(spi_down_head_align, "SPI downlink head alignment.");
-
-module_param(spi_down_tail_align, int, 0444);
-MODULE_PARM_DESC(spi_down_tail_align, "SPI downlink tail alignment.");
-
-#ifdef CONFIG_ARM
-#define BYTE_HEX_FMT "%02X"
-#else
-#define BYTE_HEX_FMT "%02hhX"
-#endif
-
-#define SPI_MAX_PAYLOAD_SIZE 4096
-/*
- * Threshold values for the SPI packet queue. Flowcontrol will be asserted
- * when the number of packets exceeds HIGH_WATER_MARK. It will not be
- * deasserted before the number of packets drops below LOW_WATER_MARK.
- */
-#define LOW_WATER_MARK   100
-#define HIGH_WATER_MARK  (LOW_WATER_MARK*5)
-
-#ifndef CONFIG_HAS_DMA
-
-/*
- * We sometimes use UML for debugging, but it cannot handle
- * dma_alloc_coherent so we have to wrap it.
- */
-static inline void *dma_alloc(struct cfspi *cfspi, dma_addr_t *daddr)
-{
-	return kmalloc(SPI_DMA_BUF_LEN, GFP_KERNEL);
-}
-
-static inline void dma_free(struct cfspi *cfspi, void *cpu_addr,
-		dma_addr_t handle)
-{
-	kfree(cpu_addr);
-}
-
-#else
-
-static inline void *dma_alloc(struct cfspi *cfspi, dma_addr_t *daddr)
-{
-	return dma_alloc_coherent(&cfspi->pdev->dev, SPI_DMA_BUF_LEN, daddr,
-				GFP_KERNEL);
-}
-
-static inline void dma_free(struct cfspi *cfspi, void *cpu_addr,
-		dma_addr_t handle)
-{
-	dma_free_coherent(&cfspi->pdev->dev, SPI_DMA_BUF_LEN, cpu_addr, handle);
-}
-#endif	/* CONFIG_HAS_DMA */
-
-#ifdef CONFIG_DEBUG_FS
-
-#define DEBUGFS_BUF_SIZE	4096
-
-static struct dentry *dbgfs_root;
-
-static inline void driver_debugfs_create(void)
-{
-	dbgfs_root = debugfs_create_dir(cfspi_spi_driver.driver.name, NULL);
-}
-
-static inline void driver_debugfs_remove(void)
-{
-	debugfs_remove(dbgfs_root);
-}
-
-static inline void dev_debugfs_rem(struct cfspi *cfspi)
-{
-	debugfs_remove(cfspi->dbgfs_frame);
-	debugfs_remove(cfspi->dbgfs_state);
-	debugfs_remove(cfspi->dbgfs_dir);
-}
-
-static ssize_t dbgfs_state(struct file *file, char __user *user_buf,
-			   size_t count, loff_t *ppos)
-{
-	char *buf;
-	int len = 0;
-	ssize_t size;
-	struct cfspi *cfspi = file->private_data;
-
-	buf = kzalloc(DEBUGFS_BUF_SIZE, GFP_KERNEL);
-	if (!buf)
-		return 0;
-
-	/* Print out debug information. */
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "CAIF SPI debug information:\n");
-
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len), FLAVOR);
-
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "STATE: %d\n", cfspi->dbg_state);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Previous CMD: 0x%x\n", cfspi->pcmd);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Current CMD: 0x%x\n", cfspi->cmd);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Previous TX len: %d\n", cfspi->tx_ppck_len);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Previous RX len: %d\n", cfspi->rx_ppck_len);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Current TX len: %d\n", cfspi->tx_cpck_len);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Current RX len: %d\n", cfspi->rx_cpck_len);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Next TX len: %d\n", cfspi->tx_npck_len);
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Next RX len: %d\n", cfspi->rx_npck_len);
-
-	if (len > DEBUGFS_BUF_SIZE)
-		len = DEBUGFS_BUF_SIZE;
-
-	size = simple_read_from_buffer(user_buf, count, ppos, buf, len);
-	kfree(buf);
-
-	return size;
-}
-
-static ssize_t print_frame(char *buf, size_t size, char *frm,
-			   size_t count, size_t cut)
-{
-	int len = 0;
-	int i;
-	for (i = 0; i < count; i++) {
-		len += scnprintf((buf + len), (size - len),
-					"[0x" BYTE_HEX_FMT "]",
-					frm[i]);
-		if ((i == cut) && (count > (cut * 2))) {
-			/* Fast forward. */
-			i = count - cut;
-			len += scnprintf((buf + len), (size - len),
-					 "--- %zu bytes skipped ---\n",
-					 count - (cut * 2));
-		}
-
-		if ((!(i % 10)) && i) {
-			len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-					 "\n");
-		}
-	}
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len), "\n");
-	return len;
-}
-
-static ssize_t dbgfs_frame(struct file *file, char __user *user_buf,
-			   size_t count, loff_t *ppos)
-{
-	char *buf;
-	int len = 0;
-	ssize_t size;
-	struct cfspi *cfspi;
-
-	cfspi = file->private_data;
-	buf = kzalloc(DEBUGFS_BUF_SIZE, GFP_KERNEL);
-	if (!buf)
-		return 0;
-
-	/* Print out debug information. */
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Current frame:\n");
-
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Tx data (Len: %d):\n", cfspi->tx_cpck_len);
-
-	len += print_frame((buf + len), (DEBUGFS_BUF_SIZE - len),
-			   cfspi->xfer.va_tx[0],
-			   (cfspi->tx_cpck_len + SPI_CMD_SZ), 100);
-
-	len += scnprintf((buf + len), (DEBUGFS_BUF_SIZE - len),
-			 "Rx data (Len: %d):\n", cfspi->rx_cpck_len);
-
-	len += print_frame((buf + len), (DEBUGFS_BUF_SIZE - len),
-			   cfspi->xfer.va_rx,
-			   (cfspi->rx_cpck_len + SPI_CMD_SZ), 100);
-
-	size = simple_read_from_buffer(user_buf, count, ppos, buf, len);
-	kfree(buf);
-
-	return size;
-}
-
-static const struct file_operations dbgfs_state_fops = {
-	.open = simple_open,
-	.read = dbgfs_state,
-	.owner = THIS_MODULE
-};
-
-static const struct file_operations dbgfs_frame_fops = {
-	.open = simple_open,
-	.read = dbgfs_frame,
-	.owner = THIS_MODULE
-};
-
-static inline void dev_debugfs_add(struct cfspi *cfspi)
-{
-	cfspi->dbgfs_dir = debugfs_create_dir(cfspi->pdev->name, dbgfs_root);
-	cfspi->dbgfs_state = debugfs_create_file("state", 0444,
-						 cfspi->dbgfs_dir, cfspi,
-						 &dbgfs_state_fops);
-	cfspi->dbgfs_frame = debugfs_create_file("frame", 0444,
-						 cfspi->dbgfs_dir, cfspi,
-						 &dbgfs_frame_fops);
-}
-
-inline void cfspi_dbg_state(struct cfspi *cfspi, int state)
-{
-	cfspi->dbg_state = state;
-};
-#else
-
-static inline void driver_debugfs_create(void)
-{
-}
-
-static inline void driver_debugfs_remove(void)
-{
-}
-
-static inline void dev_debugfs_add(struct cfspi *cfspi)
-{
-}
-
-static inline void dev_debugfs_rem(struct cfspi *cfspi)
-{
-}
-
-inline void cfspi_dbg_state(struct cfspi *cfspi, int state)
-{
-}
-#endif				/* CONFIG_DEBUG_FS */
-
-static LIST_HEAD(cfspi_list);
-static spinlock_t cfspi_list_lock;
-
-/* SPI uplink head alignment. */
-static ssize_t up_head_align_show(struct device_driver *driver, char *buf)
-{
-	return sprintf(buf, "%d\n", spi_up_head_align);
-}
-
-static DRIVER_ATTR_RO(up_head_align);
-
-/* SPI uplink tail alignment. */
-static ssize_t up_tail_align_show(struct device_driver *driver, char *buf)
-{
-	return sprintf(buf, "%d\n", spi_up_tail_align);
-}
-
-static DRIVER_ATTR_RO(up_tail_align);
-
-/* SPI downlink head alignment. */
-static ssize_t down_head_align_show(struct device_driver *driver, char *buf)
-{
-	return sprintf(buf, "%d\n", spi_down_head_align);
-}
-
-static DRIVER_ATTR_RO(down_head_align);
-
-/* SPI downlink tail alignment. */
-static ssize_t down_tail_align_show(struct device_driver *driver, char *buf)
-{
-	return sprintf(buf, "%d\n", spi_down_tail_align);
-}
-
-static DRIVER_ATTR_RO(down_tail_align);
-
-/* SPI frame alignment. */
-static ssize_t frame_align_show(struct device_driver *driver, char *buf)
-{
-	return sprintf(buf, "%d\n", spi_frm_align);
-}
-
-static DRIVER_ATTR_RO(frame_align);
-
-int cfspi_xmitfrm(struct cfspi *cfspi, u8 *buf, size_t len)
-{
-	u8 *dst = buf;
-	caif_assert(buf);
-
-	if (cfspi->slave && !cfspi->slave_talked)
-		cfspi->slave_talked = true;
-
-	do {
-		struct sk_buff *skb;
-		struct caif_payload_info *info;
-		int spad = 0;
-		int epad;
-
-		skb = skb_dequeue(&cfspi->chead);
-		if (!skb)
-			break;
-
-		/*
-		 * Calculate length of frame including SPI padding.
-		 * The payload position is found in the control buffer.
-		 */
-		info = (struct caif_payload_info *)&skb->cb;
-
-		/*
-		 * Compute head offset i.e. number of bytes to add to
-		 * get the start of the payload aligned.
-		 */
-		if (spi_up_head_align > 1) {
-			spad = 1 + PAD_POW2((info->hdr_len + 1), spi_up_head_align);
-			*dst = (u8)(spad - 1);
-			dst += spad;
-		}
-
-		/* Copy in CAIF frame. */
-		skb_copy_bits(skb, 0, dst, skb->len);
-		dst += skb->len;
-		cfspi->ndev->stats.tx_packets++;
-		cfspi->ndev->stats.tx_bytes += skb->len;
-
-		/*
-		 * Compute tail offset i.e. number of bytes to add to
-		 * get the complete CAIF frame aligned.
-		 */
-		epad = PAD_POW2((skb->len + spad), spi_up_tail_align);
-		dst += epad;
-
-		dev_kfree_skb(skb);
-
-	} while ((dst - buf) < len);
-
-	return dst - buf;
-}
-
-int cfspi_xmitlen(struct cfspi *cfspi)
-{
-	struct sk_buff *skb = NULL;
-	int frm_len = 0;
-	int pkts = 0;
-
-	/*
-	 * Decommit previously committed frames.
-	 * skb_queue_splice_tail(&cfspi->chead,&cfspi->qhead)
-	 */
-	while (skb_peek(&cfspi->chead)) {
-		skb = skb_dequeue_tail(&cfspi->chead);
-		skb_queue_head(&cfspi->qhead, skb);
-	}
-
-	do {
-		struct caif_payload_info *info = NULL;
-		int spad = 0;
-		int epad = 0;
-
-		skb = skb_dequeue(&cfspi->qhead);
-		if (!skb)
-			break;
-
-		/*
-		 * Calculate length of frame including SPI padding.
-		 * The payload position is found in the control buffer.
-		 */
-		info = (struct caif_payload_info *)&skb->cb;
-
-		/*
-		 * Compute head offset i.e. number of bytes to add to
-		 * get the start of the payload aligned.
-		 */
-		if (spi_up_head_align > 1)
-			spad = 1 + PAD_POW2((info->hdr_len + 1), spi_up_head_align);
-
-		/*
-		 * Compute tail offset i.e. number of bytes to add to
-		 * get the complete CAIF frame aligned.
-		 */
-		epad = PAD_POW2((skb->len + spad), spi_up_tail_align);
-
-		if ((skb->len + spad + epad + frm_len) <= CAIF_MAX_SPI_FRAME) {
-			skb_queue_tail(&cfspi->chead, skb);
-			pkts++;
-			frm_len += skb->len + spad + epad;
-		} else {
-			/* Put back packet. */
-			skb_queue_head(&cfspi->qhead, skb);
-			break;
-		}
-	} while (pkts <= CAIF_MAX_SPI_PKTS);
-
-	/*
-	 * Send flow on if previously sent flow off
-	 * and now go below the low water mark
-	 */
-	if (cfspi->flow_off_sent && cfspi->qhead.qlen < cfspi->qd_low_mark &&
-		cfspi->cfdev.flowctrl) {
-		cfspi->flow_off_sent = 0;
-		cfspi->cfdev.flowctrl(cfspi->ndev, 1);
-	}
-
-	return frm_len;
-}
-
-static void cfspi_ss_cb(bool assert, struct cfspi_ifc *ifc)
-{
-	struct cfspi *cfspi = (struct cfspi *)ifc->priv;
-
-	/*
-	 * The slave device is the master on the link. Interrupts before the
-	 * slave has transmitted are considered spurious.
-	 */
-	if (cfspi->slave && !cfspi->slave_talked) {
-		printk(KERN_WARNING "CFSPI: Spurious SS interrupt.\n");
-		return;
-	}
-
-	if (!in_interrupt())
-		spin_lock(&cfspi->lock);
-	if (assert) {
-		set_bit(SPI_SS_ON, &cfspi->state);
-		set_bit(SPI_XFER, &cfspi->state);
-	} else {
-		set_bit(SPI_SS_OFF, &cfspi->state);
-	}
-	if (!in_interrupt())
-		spin_unlock(&cfspi->lock);
-
-	/* Wake up the xfer thread. */
-	if (assert)
-		wake_up_interruptible(&cfspi->wait);
-}
-
-static void cfspi_xfer_done_cb(struct cfspi_ifc *ifc)
-{
-	struct cfspi *cfspi = (struct cfspi *)ifc->priv;
-
-	/* Transfer done, complete work queue */
-	complete(&cfspi->comp);
-}
-
-static netdev_tx_t cfspi_xmit(struct sk_buff *skb, struct net_device *dev)
-{
-	struct cfspi *cfspi = NULL;
-	unsigned long flags;
-	if (!dev)
-		return -EINVAL;
-
-	cfspi = netdev_priv(dev);
-
-	skb_queue_tail(&cfspi->qhead, skb);
-
-	spin_lock_irqsave(&cfspi->lock, flags);
-	if (!test_and_set_bit(SPI_XFER, &cfspi->state)) {
-		/* Wake up xfer thread. */
-		wake_up_interruptible(&cfspi->wait);
-	}
-	spin_unlock_irqrestore(&cfspi->lock, flags);
-
-	/* Send flow off if number of bytes is above high water mark */
-	if (!cfspi->flow_off_sent &&
-		cfspi->qhead.qlen > cfspi->qd_high_mark &&
-		cfspi->cfdev.flowctrl) {
-		cfspi->flow_off_sent = 1;
-		cfspi->cfdev.flowctrl(cfspi->ndev, 0);
-	}
-
-	return NETDEV_TX_OK;
-}
-
-int cfspi_rxfrm(struct cfspi *cfspi, u8 *buf, size_t len)
-{
-	u8 *src = buf;
-
-	caif_assert(buf != NULL);
-
-	do {
-		int res;
-		struct sk_buff *skb = NULL;
-		int spad = 0;
-		int epad = 0;
-		int pkt_len = 0;
-
-		/*
-		 * Compute head offset i.e. number of bytes added to
-		 * get the start of the payload aligned.
-		 */
-		if (spi_down_head_align > 1) {
-			spad = 1 + *src;
-			src += spad;
-		}
-
-		/* Read length of CAIF frame (little endian). */
-		pkt_len = *src;
-		pkt_len |= ((*(src+1)) << 8) & 0xFF00;
-		pkt_len += 2;	/* Add FCS fields. */
-
-		/* Get a suitable caif packet and copy in data. */
-
-		skb = netdev_alloc_skb(cfspi->ndev, pkt_len + 1);
-		caif_assert(skb != NULL);
-
-		skb_put_data(skb, src, pkt_len);
-		src += pkt_len;
-
-		skb->protocol = htons(ETH_P_CAIF);
-		skb_reset_mac_header(skb);
-
-		/*
-		 * Push received packet up the stack.
-		 */
-		if (!spi_loop)
-			res = netif_rx_ni(skb);
-		else
-			res = cfspi_xmit(skb, cfspi->ndev);
-
-		if (!res) {
-			cfspi->ndev->stats.rx_packets++;
-			cfspi->ndev->stats.rx_bytes += pkt_len;
-		} else
-			cfspi->ndev->stats.rx_dropped++;
-
-		/*
-		 * Compute tail offset i.e. number of bytes added to
-		 * get the complete CAIF frame aligned.
-		 */
-		epad = PAD_POW2((pkt_len + spad), spi_down_tail_align);
-		src += epad;
-	} while ((src - buf) < len);
-
-	return src - buf;
-}
-
-static int cfspi_open(struct net_device *dev)
-{
-	netif_wake_queue(dev);
-	return 0;
-}
-
-static int cfspi_close(struct net_device *dev)
-{
-	netif_stop_queue(dev);
-	return 0;
-}
-
-static int cfspi_init(struct net_device *dev)
-{
-	int res = 0;
-	struct cfspi *cfspi = netdev_priv(dev);
-
-	/* Set flow info. */
-	cfspi->flow_off_sent = 0;
-	cfspi->qd_low_mark = LOW_WATER_MARK;
-	cfspi->qd_high_mark = HIGH_WATER_MARK;
-
-	/* Set slave info. */
-	if (!strncmp(cfspi_spi_driver.driver.name, "cfspi_sspi", 10)) {
-		cfspi->slave = true;
-		cfspi->slave_talked = false;
-	} else {
-		cfspi->slave = false;
-		cfspi->slave_talked = false;
-	}
-
-	/* Allocate DMA buffers. */
-	cfspi->xfer.va_tx[0] = dma_alloc(cfspi, &cfspi->xfer.pa_tx[0]);
-	if (!cfspi->xfer.va_tx[0]) {
-		res = -ENODEV;
-		goto err_dma_alloc_tx_0;
-	}
-
-	cfspi->xfer.va_rx = dma_alloc(cfspi, &cfspi->xfer.pa_rx);
-
-	if (!cfspi->xfer.va_rx) {
-		res = -ENODEV;
-		goto err_dma_alloc_rx;
-	}
-
-	/* Initialize the work queue. */
-	INIT_WORK(&cfspi->work, cfspi_xfer);
-
-	/* Initialize spin locks. */
-	spin_lock_init(&cfspi->lock);
-
-	/* Initialize flow control state. */
-	cfspi->flow_stop = false;
-
-	/* Initialize wait queue. */
-	init_waitqueue_head(&cfspi->wait);
-
-	/* Create work thread. */
-	cfspi->wq = create_singlethread_workqueue(dev->name);
-	if (!cfspi->wq) {
-		printk(KERN_WARNING "CFSPI: failed to create work queue.\n");
-		res = -ENODEV;
-		goto err_create_wq;
-	}
-
-	/* Initialize work queue. */
-	init_completion(&cfspi->comp);
-
-	/* Create debugfs entries. */
-	dev_debugfs_add(cfspi);
-
-	/* Set up the ifc. */
-	cfspi->ifc.ss_cb = cfspi_ss_cb;
-	cfspi->ifc.xfer_done_cb = cfspi_xfer_done_cb;
-	cfspi->ifc.priv = cfspi;
-
-	/* Add CAIF SPI device to list. */
-	spin_lock(&cfspi_list_lock);
-	list_add_tail(&cfspi->list, &cfspi_list);
-	spin_unlock(&cfspi_list_lock);
-
-	/* Schedule the work queue. */
-	queue_work(cfspi->wq, &cfspi->work);
-
-	return 0;
-
- err_create_wq:
-	dma_free(cfspi, cfspi->xfer.va_rx, cfspi->xfer.pa_rx);
- err_dma_alloc_rx:
-	dma_free(cfspi, cfspi->xfer.va_tx[0], cfspi->xfer.pa_tx[0]);
- err_dma_alloc_tx_0:
-	return res;
-}
-
-static void cfspi_uninit(struct net_device *dev)
-{
-	struct cfspi *cfspi = netdev_priv(dev);
-
-	/* Remove from list. */
-	spin_lock(&cfspi_list_lock);
-	list_del(&cfspi->list);
-	spin_unlock(&cfspi_list_lock);
-
-	cfspi->ndev = NULL;
-	/* Free DMA buffers. */
-	dma_free(cfspi, cfspi->xfer.va_rx, cfspi->xfer.pa_rx);
-	dma_free(cfspi, cfspi->xfer.va_tx[0], cfspi->xfer.pa_tx[0]);
-	set_bit(SPI_TERMINATE, &cfspi->state);
-	wake_up_interruptible(&cfspi->wait);
-	destroy_workqueue(cfspi->wq);
-	/* Destroy debugfs directory and files. */
-	dev_debugfs_rem(cfspi);
-	return;
-}
-
-static const struct net_device_ops cfspi_ops = {
-	.ndo_open = cfspi_open,
-	.ndo_stop = cfspi_close,
-	.ndo_init = cfspi_init,
-	.ndo_uninit = cfspi_uninit,
-	.ndo_start_xmit = cfspi_xmit
-};
-
-static void cfspi_setup(struct net_device *dev)
-{
-	struct cfspi *cfspi = netdev_priv(dev);
-	dev->features = 0;
-	dev->netdev_ops = &cfspi_ops;
-	dev->type = ARPHRD_CAIF;
-	dev->flags = IFF_NOARP | IFF_POINTOPOINT;
-	dev->priv_flags |= IFF_NO_QUEUE;
-	dev->mtu = SPI_MAX_PAYLOAD_SIZE;
-	dev->needs_free_netdev = true;
-	skb_queue_head_init(&cfspi->qhead);
-	skb_queue_head_init(&cfspi->chead);
-	cfspi->cfdev.link_select = CAIF_LINK_HIGH_BANDW;
-	cfspi->cfdev.use_frag = false;
-	cfspi->cfdev.use_stx = false;
-	cfspi->cfdev.use_fcs = false;
-	cfspi->ndev = dev;
-}
-
-int cfspi_spi_probe(struct platform_device *pdev)
-{
-	struct cfspi *cfspi = NULL;
-	struct net_device *ndev;
-	struct cfspi_dev *dev;
-	int res;
-	dev = (struct cfspi_dev *)pdev->dev.platform_data;
-
-	if (!dev)
-		return -ENODEV;
-
-	ndev = alloc_netdev(sizeof(struct cfspi), "cfspi%d",
-			    NET_NAME_UNKNOWN, cfspi_setup);
-	if (!ndev)
-		return -ENOMEM;
-
-	cfspi = netdev_priv(ndev);
-	netif_stop_queue(ndev);
-	cfspi->ndev = ndev;
-	cfspi->pdev = pdev;
-
-	/* Assign the SPI device. */
-	cfspi->dev = dev;
-	/* Assign the device ifc to this SPI interface. */
-	dev->ifc = &cfspi->ifc;
-
-	/* Register network device. */
-	res = register_netdev(ndev);
-	if (res) {
-		printk(KERN_ERR "CFSPI: Reg. error: %d.\n", res);
-		goto err_net_reg;
-	}
-	return res;
-
- err_net_reg:
-	free_netdev(ndev);
-
-	return res;
-}
-
-int cfspi_spi_remove(struct platform_device *pdev)
-{
-	/* Everything is done in cfspi_uninit(). */
-	return 0;
-}
-
-static void __exit cfspi_exit_module(void)
-{
-	struct list_head *list_node;
-	struct list_head *n;
-	struct cfspi *cfspi = NULL;
-
-	list_for_each_safe(list_node, n, &cfspi_list) {
-		cfspi = list_entry(list_node, struct cfspi, list);
-		unregister_netdev(cfspi->ndev);
-	}
-
-	/* Destroy sysfs files. */
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_up_head_align);
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_up_tail_align);
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_down_head_align);
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_down_tail_align);
-	driver_remove_file(&cfspi_spi_driver.driver, &driver_attr_frame_align);
-	/* Unregister platform driver. */
-	platform_driver_unregister(&cfspi_spi_driver);
-	/* Destroy debugfs root directory. */
-	driver_debugfs_remove();
-}
-
-static int __init cfspi_init_module(void)
-{
-	int result;
-
-	/* Initialize spin lock. */
-	spin_lock_init(&cfspi_list_lock);
-
-	/* Register platform driver. */
-	result = platform_driver_register(&cfspi_spi_driver);
-	if (result) {
-		printk(KERN_ERR "Could not register platform SPI driver.\n");
-		goto err_dev_register;
-	}
-
-	/* Create sysfs files. */
-	result =
-	    driver_create_file(&cfspi_spi_driver.driver,
-			       &driver_attr_up_head_align);
-	if (result) {
-		printk(KERN_ERR "Sysfs creation failed 1.\n");
-		goto err_create_up_head_align;
-	}
-
-	result =
-	    driver_create_file(&cfspi_spi_driver.driver,
-			       &driver_attr_up_tail_align);
-	if (result) {
-		printk(KERN_ERR "Sysfs creation failed 2.\n");
-		goto err_create_up_tail_align;
-	}
-
-	result =
-	    driver_create_file(&cfspi_spi_driver.driver,
-			       &driver_attr_down_head_align);
-	if (result) {
-		printk(KERN_ERR "Sysfs creation failed 3.\n");
-		goto err_create_down_head_align;
-	}
-
-	result =
-	    driver_create_file(&cfspi_spi_driver.driver,
-			       &driver_attr_down_tail_align);
-	if (result) {
-		printk(KERN_ERR "Sysfs creation failed 4.\n");
-		goto err_create_down_tail_align;
-	}
-
-	result =
-	    driver_create_file(&cfspi_spi_driver.driver,
-			       &driver_attr_frame_align);
-	if (result) {
-		printk(KERN_ERR "Sysfs creation failed 5.\n");
-		goto err_create_frame_align;
-	}
-	driver_debugfs_create();
-	return result;
-
- err_create_frame_align:
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_down_tail_align);
- err_create_down_tail_align:
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_down_head_align);
- err_create_down_head_align:
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_up_tail_align);
- err_create_up_tail_align:
-	driver_remove_file(&cfspi_spi_driver.driver,
-			   &driver_attr_up_head_align);
- err_create_up_head_align:
-	platform_driver_unregister(&cfspi_spi_driver);
- err_dev_register:
-	return result;
-}
-
-module_init(cfspi_init_module);
-module_exit(cfspi_exit_module);
--- a/drivers/net/caif/caif_spi_slave.c
+++ /dev/null
@@ -1,254 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) ST-Ericsson AB 2010
- * Author:  Daniel Martensson
- */
-#include <linux/module.h>
-#include <linux/device.h>
-#include <linux/platform_device.h>
-#include <linux/string.h>
-#include <linux/semaphore.h>
-#include <linux/workqueue.h>
-#include <linux/completion.h>
-#include <linux/list.h>
-#include <linux/interrupt.h>
-#include <linux/dma-mapping.h>
-#include <linux/delay.h>
-#include <linux/sched.h>
-#include <linux/debugfs.h>
-#include <net/caif/caif_spi.h>
-
-#ifndef CONFIG_CAIF_SPI_SYNC
-#define SPI_DATA_POS 0
-static inline int forward_to_spi_cmd(struct cfspi *cfspi)
-{
-	return cfspi->rx_cpck_len;
-}
-#else
-#define SPI_DATA_POS SPI_CMD_SZ
-static inline int forward_to_spi_cmd(struct cfspi *cfspi)
-{
-	return 0;
-}
-#endif
-
-int spi_frm_align = 2;
-
-/*
- * SPI padding options.
- * Warning: must be a base of 2 (& operation used) and can not be zero !
- */
-int spi_up_head_align   = 1 << 1;
-int spi_up_tail_align   = 1 << 0;
-int spi_down_head_align = 1 << 2;
-int spi_down_tail_align = 1 << 1;
-
-#ifdef CONFIG_DEBUG_FS
-static inline void debugfs_store_prev(struct cfspi *cfspi)
-{
-	/* Store previous command for debugging reasons.*/
-	cfspi->pcmd = cfspi->cmd;
-	/* Store previous transfer. */
-	cfspi->tx_ppck_len = cfspi->tx_cpck_len;
-	cfspi->rx_ppck_len = cfspi->rx_cpck_len;
-}
-#else
-static inline void debugfs_store_prev(struct cfspi *cfspi)
-{
-}
-#endif
-
-void cfspi_xfer(struct work_struct *work)
-{
-	struct cfspi *cfspi;
-	u8 *ptr = NULL;
-	unsigned long flags;
-	int ret;
-	cfspi = container_of(work, struct cfspi, work);
-
-	/* Initialize state. */
-	cfspi->cmd = SPI_CMD_EOT;
-
-	for (;;) {
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_WAITING);
-
-		/* Wait for master talk or transmit event. */
-		wait_event_interruptible(cfspi->wait,
-				 test_bit(SPI_XFER, &cfspi->state) ||
-				 test_bit(SPI_TERMINATE, &cfspi->state));
-
-		if (test_bit(SPI_TERMINATE, &cfspi->state))
-			return;
-
-#if CFSPI_DBG_PREFILL
-		/* Prefill buffers for easier debugging. */
-		memset(cfspi->xfer.va_tx, 0xFF, SPI_DMA_BUF_LEN);
-		memset(cfspi->xfer.va_rx, 0xFF, SPI_DMA_BUF_LEN);
-#endif	/* CFSPI_DBG_PREFILL */
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_AWAKE);
-
-	/* Check whether we have a committed frame. */
-		if (cfspi->tx_cpck_len) {
-			int len;
-
-			cfspi_dbg_state(cfspi, CFSPI_STATE_FETCH_PKT);
-
-			/* Copy committed SPI frames after the SPI indication. */
-			ptr = (u8 *) cfspi->xfer.va_tx;
-			ptr += SPI_IND_SZ;
-			len = cfspi_xmitfrm(cfspi, ptr, cfspi->tx_cpck_len);
-			WARN_ON(len != cfspi->tx_cpck_len);
-	}
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_GET_NEXT);
-
-		/* Get length of next frame to commit. */
-		cfspi->tx_npck_len = cfspi_xmitlen(cfspi);
-
-		WARN_ON(cfspi->tx_npck_len > SPI_DMA_BUF_LEN);
-
-		/*
-		 * Add indication and length at the beginning of the frame,
-		 * using little endian.
-		 */
-		ptr = (u8 *) cfspi->xfer.va_tx;
-		*ptr++ = SPI_CMD_IND;
-		*ptr++ = (SPI_CMD_IND  & 0xFF00) >> 8;
-		*ptr++ = cfspi->tx_npck_len & 0x00FF;
-		*ptr++ = (cfspi->tx_npck_len & 0xFF00) >> 8;
-
-		/* Calculate length of DMAs. */
-		cfspi->xfer.tx_dma_len = cfspi->tx_cpck_len + SPI_IND_SZ;
-		cfspi->xfer.rx_dma_len = cfspi->rx_cpck_len + SPI_CMD_SZ;
-
-		/* Add SPI TX frame alignment padding, if necessary. */
-		if (cfspi->tx_cpck_len &&
-			(cfspi->xfer.tx_dma_len % spi_frm_align)) {
-
-			cfspi->xfer.tx_dma_len += spi_frm_align -
-			    (cfspi->xfer.tx_dma_len % spi_frm_align);
-		}
-
-		/* Add SPI RX frame alignment padding, if necessary. */
-		if (cfspi->rx_cpck_len &&
-			(cfspi->xfer.rx_dma_len % spi_frm_align)) {
-
-			cfspi->xfer.rx_dma_len += spi_frm_align -
-			    (cfspi->xfer.rx_dma_len % spi_frm_align);
-		}
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_INIT_XFER);
-
-		/* Start transfer. */
-		ret = cfspi->dev->init_xfer(&cfspi->xfer, cfspi->dev);
-		WARN_ON(ret);
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_WAIT_ACTIVE);
-
-		/*
-		 * TODO: We might be able to make an assumption if this is the
-		 * first loop. Make sure that minimum toggle time is respected.
-		 */
-		udelay(MIN_TRANSITION_TIME_USEC);
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_SIG_ACTIVE);
-
-		/* Signal that we are ready to receive data. */
-		cfspi->dev->sig_xfer(true, cfspi->dev);
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_WAIT_XFER_DONE);
-
-		/* Wait for transfer completion. */
-		wait_for_completion(&cfspi->comp);
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_XFER_DONE);
-
-		if (cfspi->cmd == SPI_CMD_EOT) {
-			/*
-			 * Clear the master talk bit. A xfer is always at
-			 *  least two bursts.
-			 */
-			clear_bit(SPI_SS_ON, &cfspi->state);
-		}
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_WAIT_INACTIVE);
-
-		/* Make sure that the minimum toggle time is respected. */
-		if (SPI_XFER_TIME_USEC(cfspi->xfer.tx_dma_len,
-					cfspi->dev->clk_mhz) <
-			MIN_TRANSITION_TIME_USEC) {
-
-			udelay(MIN_TRANSITION_TIME_USEC -
-				SPI_XFER_TIME_USEC
-				(cfspi->xfer.tx_dma_len, cfspi->dev->clk_mhz));
-		}
-
-		cfspi_dbg_state(cfspi, CFSPI_STATE_SIG_INACTIVE);
-
-		/* De-assert transfer signal. */
-		cfspi->dev->sig_xfer(false, cfspi->dev);
-
-		/* Check whether we received a CAIF packet. */
-		if (cfspi->rx_cpck_len) {
-			int len;
-
-			cfspi_dbg_state(cfspi, CFSPI_STATE_DELIVER_PKT);
-
-			/* Parse SPI frame. */
-			ptr = ((u8 *)(cfspi->xfer.va_rx + SPI_DATA_POS));
-
-			len = cfspi_rxfrm(cfspi, ptr, cfspi->rx_cpck_len);
-			WARN_ON(len != cfspi->rx_cpck_len);
-		}
-
-		/* Check the next SPI command and length. */
-		ptr = (u8 *) cfspi->xfer.va_rx;
-
-		ptr += forward_to_spi_cmd(cfspi);
-
-		cfspi->cmd = *ptr++;
-		cfspi->cmd |= ((*ptr++) << 8) & 0xFF00;
-		cfspi->rx_npck_len = *ptr++;
-		cfspi->rx_npck_len |= ((*ptr++) << 8) & 0xFF00;
-
-		WARN_ON(cfspi->rx_npck_len > SPI_DMA_BUF_LEN);
-		WARN_ON(cfspi->cmd > SPI_CMD_EOT);
-
-		debugfs_store_prev(cfspi);
-
-		/* Check whether the master issued an EOT command. */
-		if (cfspi->cmd == SPI_CMD_EOT) {
-			/* Reset state. */
-			cfspi->tx_cpck_len = 0;
-			cfspi->rx_cpck_len = 0;
-		} else {
-			/* Update state. */
-			cfspi->tx_cpck_len = cfspi->tx_npck_len;
-			cfspi->rx_cpck_len = cfspi->rx_npck_len;
-		}
-
-		/*
-		 * Check whether we need to clear the xfer bit.
-		 * Spin lock needed for packet insertion.
-		 * Test and clear of different bits
-		 * are not supported.
-		 */
-		spin_lock_irqsave(&cfspi->lock, flags);
-		if (cfspi->cmd == SPI_CMD_EOT && !cfspi_xmitlen(cfspi)
-			&& !test_bit(SPI_SS_ON, &cfspi->state))
-			clear_bit(SPI_XFER, &cfspi->state);
-
-		spin_unlock_irqrestore(&cfspi->lock, flags);
-	}
-}
-
-struct platform_driver cfspi_spi_driver = {
-	.probe = cfspi_spi_probe,
-	.remove = cfspi_spi_remove,
-	.driver = {
-		   .name = "cfspi_sspi",
-		   .owner = THIS_MODULE,
-		   },
-};
--- a/include/net/caif/caif_spi.h
+++ /dev/null
@@ -1,155 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) ST-Ericsson AB 2010
- * Author:	Daniel Martensson / Daniel.Martensson@stericsson.com
- */
-
-#ifndef CAIF_SPI_H_
-#define CAIF_SPI_H_
-
-#include <net/caif/caif_device.h>
-
-#define SPI_CMD_WR			0x00
-#define SPI_CMD_RD			0x01
-#define SPI_CMD_EOT			0x02
-#define SPI_CMD_IND			0x04
-
-#define SPI_DMA_BUF_LEN			8192
-
-#define WL_SZ				2	/* 16 bits. */
-#define SPI_CMD_SZ			4	/* 32 bits. */
-#define SPI_IND_SZ			4	/* 32 bits. */
-
-#define SPI_XFER			0
-#define SPI_SS_ON			1
-#define SPI_SS_OFF			2
-#define SPI_TERMINATE			3
-
-/* Minimum time between different levels is 50 microseconds. */
-#define MIN_TRANSITION_TIME_USEC	50
-
-/* Defines for calculating duration of SPI transfers for a particular
- * number of bytes.
- */
-#define SPI_MASTER_CLK_MHZ		13
-#define SPI_XFER_TIME_USEC(bytes, clk) (((bytes) * 8) / clk)
-
-/* Normally this should be aligned on the modem in order to benefit from full
- * duplex transfers. However a size of 8188 provokes errors when running with
- * the modem. These errors occur when packet sizes approaches 4 kB of data.
- */
-#define CAIF_MAX_SPI_FRAME 4092
-
-/* Maximum number of uplink CAIF frames that can reside in the same SPI frame.
- * This number should correspond with the modem setting. The application side
- * CAIF accepts any number of embedded downlink CAIF frames.
- */
-#define CAIF_MAX_SPI_PKTS 9
-
-/* Decides if SPI buffers should be prefilled with 0xFF pattern for easier
- * debugging. Both TX and RX buffers will be filled before the transfer.
- */
-#define CFSPI_DBG_PREFILL		0
-
-/* Structure describing a SPI transfer. */
-struct cfspi_xfer {
-	u16 tx_dma_len;
-	u16 rx_dma_len;
-	void *va_tx[2];
-	dma_addr_t pa_tx[2];
-	void *va_rx;
-	dma_addr_t pa_rx;
-};
-
-/* Structure implemented by the SPI interface. */
-struct cfspi_ifc {
-	void (*ss_cb) (bool assert, struct cfspi_ifc *ifc);
-	void (*xfer_done_cb) (struct cfspi_ifc *ifc);
-	void *priv;
-};
-
-/* Structure implemented by SPI clients. */
-struct cfspi_dev {
-	int (*init_xfer) (struct cfspi_xfer *xfer, struct cfspi_dev *dev);
-	void (*sig_xfer) (bool xfer, struct cfspi_dev *dev);
-	struct cfspi_ifc *ifc;
-	char *name;
-	u32 clk_mhz;
-	void *priv;
-};
-
-/* Enumeration describing the CAIF SPI state. */
-enum cfspi_state {
-	CFSPI_STATE_WAITING = 0,
-	CFSPI_STATE_AWAKE,
-	CFSPI_STATE_FETCH_PKT,
-	CFSPI_STATE_GET_NEXT,
-	CFSPI_STATE_INIT_XFER,
-	CFSPI_STATE_WAIT_ACTIVE,
-	CFSPI_STATE_SIG_ACTIVE,
-	CFSPI_STATE_WAIT_XFER_DONE,
-	CFSPI_STATE_XFER_DONE,
-	CFSPI_STATE_WAIT_INACTIVE,
-	CFSPI_STATE_SIG_INACTIVE,
-	CFSPI_STATE_DELIVER_PKT,
-	CFSPI_STATE_MAX,
-};
-
-/* Structure implemented by SPI physical interfaces. */
-struct cfspi {
-	struct caif_dev_common cfdev;
-	struct net_device *ndev;
-	struct platform_device *pdev;
-	struct sk_buff_head qhead;
-	struct sk_buff_head chead;
-	u16 cmd;
-	u16 tx_cpck_len;
-	u16 tx_npck_len;
-	u16 rx_cpck_len;
-	u16 rx_npck_len;
-	struct cfspi_ifc ifc;
-	struct cfspi_xfer xfer;
-	struct cfspi_dev *dev;
-	unsigned long state;
-	struct work_struct work;
-	struct workqueue_struct *wq;
-	struct list_head list;
-	int    flow_off_sent;
-	u32 qd_low_mark;
-	u32 qd_high_mark;
-	struct completion comp;
-	wait_queue_head_t wait;
-	spinlock_t lock;
-	bool flow_stop;
-	bool slave;
-	bool slave_talked;
-#ifdef CONFIG_DEBUG_FS
-	enum cfspi_state dbg_state;
-	u16 pcmd;
-	u16 tx_ppck_len;
-	u16 rx_ppck_len;
-	struct dentry *dbgfs_dir;
-	struct dentry *dbgfs_state;
-	struct dentry *dbgfs_frame;
-#endif				/* CONFIG_DEBUG_FS */
-};
-
-extern int spi_frm_align;
-extern int spi_up_head_align;
-extern int spi_up_tail_align;
-extern int spi_down_head_align;
-extern int spi_down_tail_align;
-extern struct platform_driver cfspi_spi_driver;
-
-void cfspi_dbg_state(struct cfspi *cfspi, int state);
-int cfspi_xmitfrm(struct cfspi *cfspi, u8 *buf, size_t len);
-int cfspi_xmitlen(struct cfspi *cfspi);
-int cfspi_rxfrm(struct cfspi *cfspi, u8 *buf, size_t len);
-int cfspi_spi_remove(struct platform_device *pdev);
-int cfspi_spi_probe(struct platform_device *pdev);
-int cfspi_xmitfrm(struct cfspi *cfspi, u8 *buf, size_t len);
-int cfspi_xmitlen(struct cfspi *cfspi);
-int cfspi_rxfrm(struct cfspi *cfspi, u8 *buf, size_t len);
-void cfspi_xfer(struct work_struct *work);
-
-#endif				/* CAIF_SPI_H_ */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
