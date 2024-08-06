Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BFF94996F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51C554017A;
	Tue,  6 Aug 2024 20:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HDmIpgACGA5N; Tue,  6 Aug 2024 20:46:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C11F940394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977205;
	bh=xr4vgrYWTKV7TCYEQuum8yK1xQzoH8PIhDhr7uGLLfM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7aK+DDgTcMXaYfOnxs6WiaMO/7vGZRPsNx338qiTe+XYGtsC+aR4KjT9vtUyKt3nk
	 xIQP3sgPuRQPknEPgokMPel/a6lcjeg5EZDW7StZJCg+1ePulDw+cbagnckKEnEkLX
	 4lq+2w50kQ2MVl29nUsQ2HMiZw3M8DeL1n6bO8igvES1fllWUY5V9wvCcoXeL5Zxd3
	 N/U0sFvL3B8VrRdOLZkgsC7h/ESjinvN8d8o0iRAgF0ySo6/kgF/caZ1xbkVRB6a+I
	 JUfyOlkpiDBQwkztuiNdD9ovuNaQltkhkbKyrTLjEIdTlBkcI4qqd9xm0puAaG+nFQ
	 igRBZUiKW78JA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C11F940394;
	Tue,  6 Aug 2024 20:46:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 334F21BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B94E40283
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WKTbcznnJyPi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3379640373
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3379640373
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3379640373
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
X-CSE-ConnectionGUID: FG7wMUEOSvWwS9aJXsFMyQ==
X-CSE-MsgGUID: PoDw/IsaQiamn2k1FK8oGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835912"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835912"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
X-CSE-ConnectionGUID: pPyK8NGKQJqD9u/GfJHIhg==
X-CSE-MsgGUID: yu+Jt3GASbSHjbAcS1hokQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331577"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:21 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-1-b5ada29ce703@intel.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722977199; x=1754513199;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=AitXSyJMQSTLZHdqQ5Dt08Q+t/W+KOcCSiKZ34YSZuE=;
 b=n2mdCEkn8wFcpJPQ1hHm+++fUIlT064OjnPPIHKNDS8Ud368o66d4uWO
 pgzJFcZRoiPr7baRr+Bi3Cp70KeXiKDknErNoSaqIX003QA0EAkQAIIx3
 BX/FEPqO00D3psyDhTpAtRArg/oLHQWzJYEkrZaCSlg3obJejWn9W4bGi
 msHDofumpWv6bJoQFbqjMGlalWX18QBVY8pck07LTKr7UOeaSCQOpJuMQ
 gzHKO2S4BzPW0Ubwbp2inJe2DS8CtSF+GDQXutbGEFaaZ3nf3sVl4Pd2z
 mvNxHWVcFSTHu60PU9gTkXaL/MM0gQZ7ANudVyYBFEoY2f8ofh/7kCFsR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n2mdCEkn
Subject: [Intel-wired-lan] [PATCH iwl-next 1/7] ice: implement and use
 rd32_poll_timeout for ice_sq_done timeout
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacek Wierzbicki <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_sq_done function is used to check the control queue head register
and determine whether or not the control queue processing is done. This
function is called in a loop checking against jiffies for a specified
timeout.

The pattern of reading a register in a loop until a condition is true or a
timeout is reached is a relatively common pattern. In fact, the kernel
provides a read_poll_timeout function implementing this behavior in
<linux/iopoll.h>

Use of read_poll_timeout is preferred over directly coding these loops.
However, using it in the ice driver is a bit more difficult because of the
rd32 wrapper. Implement a rd32_poll_timeout wrapper based on
read_poll_timeout.

Refactor ice_sq_done to use rd32_poll_timeout, replacing the loop calling
ice_sq_done in ice_sq_send_cmd. This simplifies the logic down to a single
ice_sq_done() call.

The implementation of rd32_poll_timeout uses microseconds for its timeout
value, so update the CQ timeout macros used to be specified in microseconds
units as well instead of using HZ for jiffies.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h    |  4 +++
 drivers/net/ethernet/intel/ice/ice_controlq.c | 38 +++++++++++++--------------
 3 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 1d54b1cdb1c5..e5b6691436f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -43,7 +43,7 @@ enum ice_ctl_q {
 };
 
 /* Control Queue timeout settings - max delay 1s */
-#define ICE_CTL_Q_SQ_CMD_TIMEOUT	HZ    /* Wait max 1s */
+#define ICE_CTL_Q_SQ_CMD_TIMEOUT	USEC_PER_SEC
 #define ICE_CTL_Q_ADMIN_INIT_TIMEOUT	10    /* Count 10 times */
 #define ICE_CTL_Q_ADMIN_INIT_MSEC	100   /* Check every 100msec */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index a2562f04267f..9882e6f3b26d 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -12,6 +12,7 @@
 #include <linux/ethtool.h>
 #include <linux/etherdevice.h>
 #include <linux/if_ether.h>
+#include <linux/iopoll.h>
 #include <linux/pci_ids.h>
 #ifndef CONFIG_64BIT
 #include <linux/io-64-nonatomic-lo-hi.h>
@@ -23,6 +24,9 @@
 #define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
 #define rd64(a, reg)		readq((a)->hw_addr + (reg))
 
+#define rd32_poll_timeout(a, addr, val, cond, delay_us, timeout_us) \
+	read_poll_timeout(rd32, val, cond, delay_us, timeout_us, false, a, addr)
+
 #define ice_flush(a)		rd32((a), GLGEN_STAT)
 #define ICE_M(m, s)		((m ## U) << (s))
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index ffaa6511c455..1b1b68a99bb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -933,19 +933,29 @@ static void ice_debug_cq(struct ice_hw *hw, void *desc, void *buf, u16 buf_len)
 }
 
 /**
- * ice_sq_done - check if FW has processed the Admin Send Queue (ATQ)
+ * ice_sq_done - poll until the last send on a control queue has completed
  * @hw: pointer to the HW struct
  * @cq: pointer to the specific Control queue
  *
- * Returns true if the firmware has processed all descriptors on the
- * admin send queue. Returns false if there are still requests pending.
+ * Use read_poll_timeout to poll the control queue head, checking until it
+ * matches next_to_use. According to the control queue designers, this has
+ * better timing reliability than the DD bit.
+ *
+ * Return: true if all the descriptors on the send side of a control queue
+ *         are finished processing, false otherwise.
  */
 static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	/* AQ designers suggest use of head for better
-	 * timing reliability than DD bit
+	u32 head;
+
+	/* Wait a short time before the initial check, to allow hardware time
+	 * for completion.
 	 */
-	return rd32(hw, cq->sq.head) == cq->sq.next_to_use;
+	udelay(5);
+
+	return !rd32_poll_timeout(hw, cq->sq.head,
+				  head, head == cq->sq.next_to_use,
+				  20, ICE_CTL_Q_SQ_CMD_TIMEOUT);
 }
 
 /**
@@ -969,7 +979,6 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	struct ice_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
 	struct ice_sq_cd *details;
-	unsigned long timeout;
 	int status = 0;
 	u16 retval = 0;
 	u32 val = 0;
@@ -1063,20 +1072,9 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
 	ice_flush(hw);
 
-	/* Wait a short time before initial ice_sq_done() check, to allow
-	 * hardware time for completion.
+	/* Wait for the command to complete. If it finishes within the
+	 * timeout, copy the descriptor back to temp.
 	 */
-	udelay(5);
-
-	timeout = jiffies + ICE_CTL_Q_SQ_CMD_TIMEOUT;
-	do {
-		if (ice_sq_done(hw, cq))
-			break;
-
-		usleep_range(100, 150);
-	} while (time_before(jiffies, timeout));
-
-	/* if ready, copy the desc back to temp */
 	if (ice_sq_done(hw, cq)) {
 		memcpy(desc, desc_on_ring, sizeof(*desc));
 		if (buf) {

-- 
2.46.0.124.g2dc1a81c8933

