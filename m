Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 763645A7F3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 15:50:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E665A610C4;
	Wed, 31 Aug 2022 13:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E665A610C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661953837;
	bh=sT7WGo8NGR3a3cnZV5Br0Nynp7RmKOIbVqzOEFlUR+U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oOfPcxsSqfT8L98ZdPZhEa7VwgYhMPJ6pgqWgEbzrnjfPljNAqXubxN/XONUSv6hz
	 SaL6MjhoIfAF3IUNLGSyS2V5B5W8xxB9J/1dvGSUGyj10LGmqmo2uupUa6v1z+Sdu1
	 Hw3naRL3hS4Sl4rTbDSS3WeBQncQGgNpbjW+4glF+AI1Y4CtqKnYKhGtfdB+PVFUJB
	 dO3y8fFXvbS6cu4WkKUykBMeGF3nYABW+rLuOZUbPHEGJ0+IF0UsSO8B1ZkowtZbss
	 wMwc2fUj4H78zsyc00uHUgc1XZ7lnR4Mom/2y8C+I11JAodXQoEBTrPBhMQjS8KJWF
	 r1pLYHdIU4DIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ZgnLR_K98t1; Wed, 31 Aug 2022 13:50:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5900610C9;
	Wed, 31 Aug 2022 13:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5900610C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEA841BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 13:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4966610C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 13:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4966610C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6O8jPvn-Wl1J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 13:50:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3273F610C4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3273F610C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 13:50:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="293025430"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="293025430"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 06:50:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="787867003"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 31 Aug 2022 06:50:28 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Aug 2022 15:49:15 +0200
Message-Id: <20220831134915.7053-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661953830; x=1693489830;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pfSC7BeIhEIzrIJMcIjiC3TAsb0t7iiByQDvE1XrrQc=;
 b=XJAXKbmuD4HnqpLf5q/xNcjhm51ZM4iCG+j42NNtBVkSMrpAncgy3CxX
 fXbNlAM8Z8Vm2a2uSwOiBHM97boKzHRdG7aiZ6Fc9fpt6qLunauSyRnvw
 zMxEZCisZWdR9Xv1kmzdApf5uAan0OAhWpiiv4TcquIR/j8VGsMuzJAMp
 pw6yHYX4unNXgxfDZyegywfPU0TbI1PRBJYKE0l6j+HJLc7d+wQUJl1C4
 Xv+P62sCqAlTMM8yTT+HpDNkgmNhnsdb8q9ymA3vGMNZRb9V2hj1m2VOw
 zS8vblt+ilEBz4a9nJqhxLUQhD0UHNyDZs2Fiu8zGSASf5Q5vMrCru9yH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XJAXKbmu
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix cached head and tail
 value for iavf_get_tx_pending
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
Cc: Brett Creeley <brett.creeley@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

The underlying hardware may or may not allow reading of the head or tail
registers and it really makes no difference if we use the software
cached values. So, always used the software cached values.

Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung logic moved to service_task from tx_timeout")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 06d18797d25a..4c3f3f419110 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -114,8 +114,11 @@ u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw)
 {
 	u32 head, tail;
 
+	/* underlying hardware might not allow access and/or always return
+	 * 0 for the head/tail registers so just use the cached values
+	 */
 	head = ring->next_to_clean;
-	tail = readl(ring->tail);
+	tail = ring->next_to_use;
 
 	if (head != tail)
 		return (head < tail) ?
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
