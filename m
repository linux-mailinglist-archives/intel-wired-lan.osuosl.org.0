Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD09279422
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 00:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEAED20394;
	Fri, 25 Sep 2020 22:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UtisrZY4STXe; Fri, 25 Sep 2020 22:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 48A052E1B2;
	Fri, 25 Sep 2020 22:25:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EE251BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6B4DF86D10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QNQ6OQHYpaY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 22:25:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B82D86BF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:06 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k8so4617467pfk.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 15:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Mrq3VP2bPocjekpz5Xx7n5QuvdN17XgV4nUw//qoU4=;
 b=j3r2rBy/kaYoqdZbjECMJ4P+DQrlfXYgPfmjRzeqNX3579K6IM1wm9pyOfwlllBQKV
 6vFFB2jk24XsJgNPCLvWxNONtcTGPe64uJJXkQkhxO9APEsjm7fx2qUbUig055Asz5QL
 3TS//mrwnKgS0hdvXEC0+D6sujghn9wZImN+RIEoNFZmSDI2FyAL8kBpsXbqvknoKbA0
 f6v4qTv6VhbD0aKOwXmJYgbU8XWhE5Dqo5L6O4pI0MiOlG8mM81rJoA6E6yd/qk+5Kvi
 at6zW9hpOOeflpow7jUAfveg92X6nbO0JwPyoudE9QHBUvUw/oQrdehnXokkPm8TG0PT
 3m4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Mrq3VP2bPocjekpz5Xx7n5QuvdN17XgV4nUw//qoU4=;
 b=R+n6mrnB95478ktpqy6ZW+RHET1Xq/wgYmanS8jzME1bz1Gx5SaRlGzil9wO82vtCA
 qDUZk5E/nSahFUs48y48zcWiqnAVFINMnNBzDaW73TW3Z0D1UtoDhbQv04UGeYKjurSG
 xhfDvOtsoqkZUN9THZNQbl9QUVYeLqDbCXWGJG/8Ax9ZIuc2s+nl5qoCb5BUGAKxk6+a
 9neQoHQCimiHg8YT1+O/YgzZ6uroTxjAHOlEtjMwWcAAHC/TIwGQG10o/fhvtM9ohh+9
 VgCZLm7pOsx8hJlxV2izCIiWQANS3JctWDCJP3uN1/Apep4en0LEi9UeGhzO4khuy0oL
 DqBA==
X-Gm-Message-State: AOAM533B6lNIGSpr6X0yroGMIOS8GETs8sqZmZ9vA0kNMcE8EErWS4i7
 cZFXJ4aOtcX2oYR4lFpCEzM=
X-Google-Smtp-Source: ABdhPJwfBf1wcWe2H44snno1JwZVSD70Z5QREJE1D6MFX8mKl1WPVTeVtX5+b5MP81ibn7opbEVwbw==
X-Received: by 2002:aa7:9ac9:0:b029:13e:d13d:a133 with SMTP id
 x9-20020aa79ac90000b029013ed13da133mr1201792pfp.27.1601072705897; 
 Fri, 25 Sep 2020 15:25:05 -0700 (PDT)
Received: from jesse-ThinkPad-T570.lan (50-39-107-76.bvtn.or.frontiernet.net.
 [50.39.107.76])
 by smtp.gmail.com with ESMTPSA id q15sm169343pje.29.2020.09.25.15.25.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 15:25:05 -0700 (PDT)
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Sep 2020 15:24:43 -0700
Message-Id: <20200925222445.74531-8-jesse.brandeburg@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
References: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 7/9] drivers/net/ethernet:
 remove incorrectly formatted doc
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

As part of the W=1 series for ethernet, these drivers were
discovered to be using kdoc style comments but were not actually
doing kdoc. The kernel uses kdoc style when documenting code, not
doxygen or other styles.

Fixed Warnings:
drivers/net/ethernet/amazon/ena/ena_com.c:613: warning: Function parameter or member 'ena_dev' not described in 'ena_com_set_llq'
drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1540: warning: Cannot understand  * @brief Set VLAN filter table
drivers/net/ethernet/xilinx/ll_temac_main.c:114: warning: Function parameter or member 'lp' not described in 'temac_indirect_busywait'
drivers/net/ethernet/xilinx/ll_temac_main.c:129: warning: Function parameter or member 'lp' not described in 'temac_indirect_in32'
drivers/net/ethernet/xilinx/ll_temac_main.c:129: warning: Function parameter or member 'reg' not described in 'temac_indirect_in32'
drivers/net/ethernet/xilinx/ll_temac_main.c:147: warning: Function parameter or member 'lp' not described in 'temac_indirect_in32_locked'
drivers/net/ethernet/xilinx/ll_temac_main.c:147: warning: Function parameter or member 'reg' not described in 'temac_indirect_in32_locked'
drivers/net/ethernet/xilinx/ll_temac_main.c:172: warning: Function parameter or member 'lp' not described in 'temac_indirect_out32'
drivers/net/ethernet/xilinx/ll_temac_main.c:172: warning: Function parameter or member 'reg' not described in 'temac_indirect_out32'
drivers/net/ethernet/xilinx/ll_temac_main.c:172: warning: Function parameter or member 'value' not described in 'temac_indirect_out32'
drivers/net/ethernet/xilinx/ll_temac_main.c:188: warning: Function parameter or member 'lp' not described in 'temac_indirect_out32_locked'
drivers/net/ethernet/xilinx/ll_temac_main.c:188: warning: Function parameter or member 'reg' not described in 'temac_indirect_out32_locked'
drivers/net/ethernet/xilinx/ll_temac_main.c:188: warning: Function parameter or member 'value' not described in 'temac_indirect_out32_locked'
drivers/net/ethernet/xilinx/ll_temac_main.c:212: warning: Function parameter or member 'lp' not described in 'temac_dma_in32_be'
drivers/net/ethernet/xilinx/ll_temac_main.c:212: warning: Function parameter or member 'reg' not described in 'temac_dma_in32_be'
drivers/net/ethernet/xilinx/ll_temac_main.c:228: warning: Function parameter or member 'lp' not described in 'temac_dma_out32_be'
drivers/net/ethernet/xilinx/ll_temac_main.c:228: warning: Function parameter or member 'reg' not described in 'temac_dma_out32_be'
drivers/net/ethernet/xilinx/ll_temac_main.c:228: warning: Function parameter or member 'value' not described in 'temac_dma_out32_be'
drivers/net/ethernet/xilinx/ll_temac_main.c:247: warning: Function parameter or member 'lp' not described in 'temac_dma_dcr_in'
drivers/net/ethernet/xilinx/ll_temac_main.c:247: warning: Function parameter or member 'reg' not described in 'temac_dma_dcr_in'
drivers/net/ethernet/xilinx/ll_temac_main.c:255: warning: Function parameter or member 'lp' not described in 'temac_dma_dcr_out'
drivers/net/ethernet/xilinx/ll_temac_main.c:255: warning: Function parameter or member 'reg' not described in 'temac_dma_dcr_out'
drivers/net/ethernet/xilinx/ll_temac_main.c:255: warning: Function parameter or member 'value' not described in 'temac_dma_dcr_out'
drivers/net/ethernet/xilinx/ll_temac_main.c:265: warning: Function parameter or member 'lp' not described in 'temac_dcr_setup'
drivers/net/ethernet/xilinx/ll_temac_main.c:265: warning: Function parameter or member 'op' not described in 'temac_dcr_setup'
drivers/net/ethernet/xilinx/ll_temac_main.c:265: warning: Function parameter or member 'np' not described in 'temac_dcr_setup'
drivers/net/ethernet/xilinx/ll_temac_main.c:300: warning: Function parameter or member 'ndev' not described in 'temac_dma_bd_release'
drivers/net/ethernet/xilinx/ll_temac_main.c:330: warning: Function parameter or member 'ndev' not described in 'temac_dma_bd_init'
drivers/net/ethernet/xilinx/ll_temac_main.c:600: warning: Function parameter or member 'ndev' not described in 'temac_setoptions'
drivers/net/ethernet/xilinx/ll_temac_main.c:600: warning: Function parameter or member 'options' not described in 'temac_setoptions'

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v3: added warning detail
v2: first non-rfc version
---
 drivers/net/ethernet/amazon/ena/ena_com.c     |  2 +-
 .../aquantia/atlantic/hw_atl/hw_atl_b0.c      |  2 +-
 drivers/net/ethernet/xilinx/ll_temac_main.c   | 26 +++++++++----------
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_com.c b/drivers/net/ethernet/amazon/ena/ena_com.c
index 34434c6b6000..5f8769aa469d 100644
--- a/drivers/net/ethernet/amazon/ena/ena_com.c
+++ b/drivers/net/ethernet/amazon/ena/ena_com.c
@@ -579,7 +579,7 @@ static int ena_com_wait_and_process_admin_cq_polling(struct ena_comp_ctx *comp_c
 	return ret;
 }
 
-/**
+/*
  * Set the LLQ configurations of the firmware
  *
  * The driver provides only the enabled feature values to the device,
diff --git a/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c b/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
index 8941ac4df9e3..9f1b15077e7d 100644
--- a/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
+++ b/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
@@ -1536,7 +1536,7 @@ static int hw_atl_b0_hw_fl2_clear(struct aq_hw_s *self,
 	return aq_hw_err_from_flags(self);
 }
 
-/**
+/*
  * @brief Set VLAN filter table
  * @details Configure VLAN filter table to accept (and assign the queue) traffic
  *  for the particular vlan ids.
diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index 9a15f14daa47..60c199fcb91e 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -106,7 +106,7 @@ static bool hard_acs_rdy_or_timeout(struct temac_local *lp, ktime_t timeout)
  */
 #define HARD_ACS_RDY_POLL_NS (20 * NSEC_PER_MSEC)
 
-/**
+/*
  * temac_indirect_busywait - Wait for current indirect register access
  * to complete.
  */
@@ -121,7 +121,7 @@ int temac_indirect_busywait(struct temac_local *lp)
 		return 0;
 }
 
-/**
+/*
  * temac_indirect_in32 - Indirect register read access.  This function
  * must be called without lp->indirect_lock being held.
  */
@@ -136,7 +136,7 @@ u32 temac_indirect_in32(struct temac_local *lp, int reg)
 	return val;
 }
 
-/**
+/*
  * temac_indirect_in32_locked - Indirect register read access.  This
  * function must be called with lp->indirect_lock being held.  Use
  * this together with spin_lock_irqsave/spin_lock_irqrestore to avoid
@@ -164,7 +164,7 @@ u32 temac_indirect_in32_locked(struct temac_local *lp, int reg)
 	return temac_ior(lp, XTE_LSW0_OFFSET);
 }
 
-/**
+/*
  * temac_indirect_out32 - Indirect register write access.  This function
  * must be called without lp->indirect_lock being held.
  */
@@ -177,7 +177,7 @@ void temac_indirect_out32(struct temac_local *lp, int reg, u32 value)
 	spin_unlock_irqrestore(lp->indirect_lock, flags);
 }
 
-/**
+/*
  * temac_indirect_out32_locked - Indirect register write access.  This
  * function must be called with lp->indirect_lock being held.  Use
  * this together with spin_lock_irqsave/spin_lock_irqrestore to avoid
@@ -202,7 +202,7 @@ void temac_indirect_out32_locked(struct temac_local *lp, int reg, u32 value)
 	WARN_ON(temac_indirect_busywait(lp));
 }
 
-/**
+/*
  * temac_dma_in32_* - Memory mapped DMA read, these function expects a
  * register input that is based on DCR word addresses which are then
  * converted to memory mapped byte addresses.  To be assigned to
@@ -218,7 +218,7 @@ static u32 temac_dma_in32_le(struct temac_local *lp, int reg)
 	return ioread32(lp->sdma_regs + (reg << 2));
 }
 
-/**
+/*
  * temac_dma_out32_* - Memory mapped DMA read, these function expects
  * a register input that is based on DCR word addresses which are then
  * converted to memory mapped byte addresses.  To be assigned to
@@ -240,7 +240,7 @@ static void temac_dma_out32_le(struct temac_local *lp, int reg, u32 value)
  */
 #ifdef CONFIG_PPC_DCR
 
-/**
+/*
  * temac_dma_dcr_in32 - DCR based DMA read
  */
 static u32 temac_dma_dcr_in(struct temac_local *lp, int reg)
@@ -248,7 +248,7 @@ static u32 temac_dma_dcr_in(struct temac_local *lp, int reg)
 	return dcr_read(lp->sdma_dcrs, reg);
 }
 
-/**
+/*
  * temac_dma_dcr_out32 - DCR based DMA write
  */
 static void temac_dma_dcr_out(struct temac_local *lp, int reg, u32 value)
@@ -256,7 +256,7 @@ static void temac_dma_dcr_out(struct temac_local *lp, int reg, u32 value)
 	dcr_write(lp->sdma_dcrs, reg, value);
 }
 
-/**
+/*
  * temac_dcr_setup - If the DMA is DCR based, then setup the address and
  * I/O  functions
  */
@@ -293,7 +293,7 @@ static int temac_dcr_setup(struct temac_local *lp, struct platform_device *op,
 
 #endif
 
-/**
+/*
  * temac_dma_bd_release - Release buffer descriptor rings
  */
 static void temac_dma_bd_release(struct net_device *ndev)
@@ -323,7 +323,7 @@ static void temac_dma_bd_release(struct net_device *ndev)
 				  lp->tx_bd_v, lp->tx_bd_p);
 }
 
-/**
+/*
  * temac_dma_bd_init - Setup buffer descriptor rings
  */
 static int temac_dma_bd_init(struct net_device *ndev)
@@ -593,7 +593,7 @@ static struct temac_option {
 	{}
 };
 
-/**
+/*
  * temac_setoptions
  */
 static u32 temac_setoptions(struct net_device *ndev, u32 options)
-- 
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
