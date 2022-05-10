Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A169521314
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 13:03:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9256F81DA3;
	Tue, 10 May 2022 11:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLiVD2wjlDUd; Tue, 10 May 2022 11:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FED181D5C;
	Tue, 10 May 2022 11:03:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB2BD1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 11:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97F45405E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 11:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHuDrzY3Yan7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 May 2022 11:03:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDD9740364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 11:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652180630; x=1683716630;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=byqp+p2mZoUmc4qf2uZ0Di85FDcMODArClMimwaYW7A=;
 b=m7LKcL5SFCaDErLyfFftRIIOeVK2y3Fk1YphF7IgA+StOpbK5alukk4i
 q6blDAstnddi68x2Nk34ucCOK9bQnDPVADK5qfU414looxTbOkCL2DYxR
 qPsKcIyji2nWp7lZwa8NbLhWR8isbY6OCB8M0BPU2OGZs/jnbQiC3Egst
 L208ckM1hrXZ88vhFDJ9DswVbhumeOHCVnTFaIPhxrZb16SPX5K7CVnRh
 McqjhPKiRB8f72Z9nsQG4qJHwBLMICX4KmM4hMSwqcaDyL2vWiXKB2qmV
 cfOeyel5d+jPb1iztePqiquF1e0byGKhAZmDVgOZb8lJbropbNLhZSqOK g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="294569446"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="294569446"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 04:03:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="565594715"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by orsmga007.jf.intel.com with ESMTP; 10 May 2022 04:03:47 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 May 2022 13:03:43 +0200
Message-Id: <20220510110343.5665-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix PTP TX timestamp offset
 calculation
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
Content-Type: multipart/mixed; boundary="===============3795407077595066873=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3795407077595066873==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

The offset was being incorrectly calculated for E822 - that led to
collisions in choosing TX timestamp register location when more than
one port was trying to use timestamping mechanism.

In E822 one quad is being logically split between ports, so quad 0 is
having trackers for ports 0-3, quad 1 ports 4-7 etc. Each port should
have separate memory location for tracking timestamps. Due to error for
example ports 1 and 2 had been assigned to quad 0 with same offset (0),
while port 1 should have offset 0 and 1 offset 16.

Fix it by correctly calculating quad offset.

Fixes: 3a7496234d17 ("ice: implement basic E822 PTP support")
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 662947c..ef9344e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2271,7 +2271,7 @@ static int
 ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 {
 	tx->quad = port / ICE_PORTS_PER_QUAD;
-	tx->quad_offset = tx->quad * INDEX_PER_PORT;
+	tx->quad_offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT;
 	tx->len = INDEX_PER_PORT;
 
 	return ice_ptp_alloc_tx_tracker(tx);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index afd048d..9c34cdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -49,6 +49,36 @@ struct ice_perout_channel {
  * To allow multiple ports to access the shared register block independently,
  * the blocks are split up so that indexes are assigned to each port based on
  * hardware logical port number.
+ *
+ * The timestamp blocks are handled differently for E810- and E822-based
+ * devices. In E810 devices, each port has its own block of timestamps, while in
+ * E822 there is a need to logically break the block of registers into smaller
+ * chunks based on the port number to avoid collisions.
+ *
+ * Example for port 5 in E810:
+ *  +--------+--------+--------+--------+--------+--------+--------+--------+
+ *  |register|register|register|register|register|register|register|register|
+ *  | block  | block  | block  | block  | block  | block  | block  | block  |
+ *  |  for   |  for   |  for   |  for   |  for   |  for   |  for   |  for   |
+ *  | port 0 | port 1 | port 2 | port 3 | port 4 | port 5 | port 6 | port 7 |
+ *  +--------+--------+--------+--------+--------+--------+--------+--------+
+ *                                               ▲▲
+ *                                               |└--  quad offset is always 0
+ *                                               └--- quad number
+ *
+ * Example for port 5 in E822:
+ * +-----------------------------+-----------------------------+
+ * |  register block for quad 0  |  register block for quad 1  |
+ * |+------+------+------+------+|+------+------+------+------+|
+ * ||port 0|port 1|port 2|port 3|||port 0|port 1|port 2|port 3||
+ * |+------+------+------+------+|+------+------+------+------+|
+ * +-----------------------------+-------▲---------------------+
+ *                                ▲      |
+ *                                |      └-- quad offset*
+ *                                └--- quad number
+ *
+ *   * PHY port 5 is port 1 in quad 1
+ *
  */
 
 /**
-- 
2.9.5

base-commit: 5d171c65e5c52a1bfdcb347c921dd0f24ca0b91d

--===============3795407077595066873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3795407077595066873==--
