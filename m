Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 007BA72ED39
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 22:41:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C06881F2D;
	Tue, 13 Jun 2023 20:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C06881F2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686688876;
	bh=7nIGPeu8ZtPS28mUh6qYzmwi9tgIcFTHfKWr6vanxrQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6sCuSiSr1tpIjW6lpbrIKJr2gjPnixb4rnfrB8R+CZBvA0+DEbbLwBXi832xL477F
	 uOsNSq+Z7e/mj+++I/+0gCHYUTOsM3uxFi3ueYN5AMwLIUKjl0QyViCp5tp7FX/4Du
	 aMDCopXWxWB//WecZtQJ+Y2lGBBb2Bdl1nhKz6bk3ldRKxLVs4yUK+dm5vmOBGnZpW
	 S3uExnI6/PqRhqYJPMkFVyYrSnZuEyMBnf2uOhmVqlOZuWv49bAvibEGegybRb+FOW
	 P1HdeiL/4gPmeZSJHu/j3C5TvLpfCL64RWWkM0mfBsQye8QJ/bWQncPgPBUb00pKVX
	 SHKpxGnMLt2DQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4R1GVVnIGxb; Tue, 13 Jun 2023 20:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0BAB81F34;
	Tue, 13 Jun 2023 20:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0BAB81F34
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C52F91BF31A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 20:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92D2360E83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 20:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92D2360E83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkK4vjp272nP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 20:41:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFB0060B1B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFB0060B1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 20:41:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="348105447"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="348105447"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 13:40:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="781831986"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="781831986"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 13:40:58 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 13 Jun 2023 13:40:53 -0700
Message-ID: <20230613204053.3581328-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686688860; x=1718224860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2V/fPMSwXJhrcuCmNVAMs+rqj/DoUG0I24TmvnTF5Fo=;
 b=XOPSwXibiEjGBaHVq6dWuRyABCjcV2E61ASyVYZke2ikpar6znlOKSIs
 eAkm/vmCOquF0W70w+o3xb7k2l5DpVcPVOmGV+t/RJdTmtq2RXGjlULp+
 xUEQPwzjD6zHhgDy4HrxsqOC6ce/htiok8/QfG5sFDlvsl6+Sn/ib8Fm6
 ZlAwiZ4d6kfGKmeceBEF6Lvtab3IuWLEodbohbKLgYuHomj2xU4/cxUZZ
 b0Gnn5IxfuV6cW/nY+6ludUzqF168E/wQDmzquT3zQte2zF4Fnb15JeAp
 wWPyXw/l+pnQQPO3eizv8pwNx3jTBHSIiLJh7k7z0hNR9CP620CrAdRhA
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XOPSwXib
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: reduce initial wait for
 control queue messages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_sq_send_cmd() function is used to send messages to the control
queues used to communicate with firmware, virtual functions, and even some
hardware.

When sending a control queue message, the driver is designed to
synchronously wait for a response from the queue. Currently it waits
between checks for 100 to 150 microseconds.

Commit f86d6f9c49f6 ("ice: sleep, don't busy-wait, for
ICE_CTL_Q_SQ_CMD_TIMEOUT") did recently change the behavior from an
unnecessary delay into a sleep which is a significant improvement over the
old behavior of polling using udelay.

Because of the nature of PCIe transactions, the hardware won't be informed
about a new message until the write to the tail register posts. This is
only guaranteed to occur at the next register read. In ice_sq_send_cmd(),
this happens at the ice_sq_done() call. Because of this, the driver
essentially forces a minimum of one full wait time regardless of how fast
the response is.

For the hardware-based sideband queue, this is especially slow. It is
expected that the hardware will respond within 2 or 3 microseconds, an
order of magnitude faster than the 100-150 microsecond sleep.

Allow such fast completions to occur without delay by introducing a small 5
microsecond delay first before entering the sleeping timeout loop. Ensure
the tail write has been posted by using ice_flush(hw) first.

While at it, lets also remove the ICE_CTL_Q_SQ_CMD_USEC macro as it
obscures the sleep time in the inner loop. It was likely introduced to
avoid "magic numbers", but in practice sleep and delay values are easier to
read and understand when using actual numbers instead of a named constant.

This change should allow the fast hardware based control queue messages to
complete quickly without delay, while slower firmware queue response times
will sleep while waiting for the response.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

@Michal, do you think this initial 5 microsecond delay would have
significant impact on the use cases that you fixed in the mentioned commit?
I don't want to break those, but do want to make sure that the fast response
hardware queues don't wait unnecessarily. One alternative I considered was
only doing this delay if we are on the appropriate queue type. I'd
appreciate your thoughts.

 drivers/net/ethernet/intel/ice/ice_controlq.c | 9 +++++++--
 drivers/net/ethernet/intel/ice/ice_controlq.h | 1 -
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index d2faf1baad2f..385fd88831db 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -1056,14 +1056,19 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	if (cq->sq.next_to_use == cq->sq.count)
 		cq->sq.next_to_use = 0;
 	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
+	ice_flush(hw);
+
+	/* Wait a short time before initial ice_sq_done() check, to allow
+	 * hardware time for completion.
+	 */
+	udelay(5);
 
 	timeout = jiffies + ICE_CTL_Q_SQ_CMD_TIMEOUT;
 	do {
 		if (ice_sq_done(hw, cq))
 			break;
 
-		usleep_range(ICE_CTL_Q_SQ_CMD_USEC,
-			     ICE_CTL_Q_SQ_CMD_USEC * 3 / 2);
+		usleep_range(100, 150);
 	} while (time_before(jiffies, timeout));
 
 	/* if ready, copy the desc back to temp */
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 950b7f4a7a05..8f2fd1613a95 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -35,7 +35,6 @@ enum ice_ctl_q {
 
 /* Control Queue timeout settings - max delay 1s */
 #define ICE_CTL_Q_SQ_CMD_TIMEOUT	HZ    /* Wait max 1s */
-#define ICE_CTL_Q_SQ_CMD_USEC		100   /* Check every 100usec */
 #define ICE_CTL_Q_ADMIN_INIT_TIMEOUT	10    /* Count 10 times */
 #define ICE_CTL_Q_ADMIN_INIT_MSEC	100   /* Check every 100msec */
 
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
