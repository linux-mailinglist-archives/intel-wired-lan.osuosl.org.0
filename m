Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58613CD8A53
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 10:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B73A809C6;
	Tue, 23 Dec 2025 09:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Gs9RahJZycV; Tue, 23 Dec 2025 09:50:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BB8E809EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766483447;
	bh=8jenyJz24ApL+uG+p1K5YLH7jCoXuAb8xphn0z+deCc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q8l/2RinseaPIrzNWYQ0j/a3jC9PVzAXxmA0v7WjNNZlA84EtjlqIFEtm92/FBkuR
	 LbYeBVN/Yfb6SF17DqmQKvd9GZiRymIhpGcQ6tGk/eOylUpRA7wvrVMD+Vq+Y7TVs8
	 6q+Ayll/1bUyCr/VpAGDocGZiBkhY/RFwkm/4hPrAnjFETF7fPxcvxbAbVBFJ988AL
	 FPuTqIGycxtPVAfUMQvdQ9uy7hPpyEwqkHbSAqr0GroNLq1MQycw3xbNC3kqFga3OH
	 nRsSCcgPkYx7hySK7GdmTAR5kVpJCGYK4iWkmYF6kG9bp3zT3laT/fV18nxppuIjWW
	 qxz5ikSM0UR0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BB8E809EE;
	Tue, 23 Dec 2025 09:50:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E2612119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4E784067D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KU1RQ4fVvrij for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 09:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D6C6040698
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6C6040698
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6C6040698
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:44 +0000 (UTC)
X-CSE-ConnectionGUID: 6CtBy0IuQMWm6Xr2GFaWfQ==
X-CSE-MsgGUID: TIzY4VSBRaW7m3t1Lqm4Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68226486"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68226486"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:50:45 -0800
X-CSE-ConnectionGUID: SIt4DE2YSzW4lS6rEwiRkw==
X-CSE-MsgGUID: 5gIfN4xBSCOQ+TJvTNAtYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199504666"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:50:44 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue, 23 Dec 2025 11:50:32 +0200
Message-Id: <20251223095032.1379862-3-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
References: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766483445; x=1798019445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m8i6zhNhjaxnsiCMwhc3lZl56e4sAWaHTk4n6/zQn90=;
 b=etdqK8HoxBF4uCuSGa6p+u2mP3fLO4493ZF9mFxYleSQuEFfpRum67k7
 YNnZgGjfnuqYvyj8AAYWlTAoV9S86bsP/1p8NK5wWxxJFCUkNLawoTw/G
 us6te9TZkZzeXmN/9CVfpVhlqpXrLbSnBFVM9Gj50mlYRMd5kmvQxjLKn
 xGXwrTChsWbzfzYZs/QvTsh8kk4r/K/DxHsmqZTCl/wQ5MrFASkJiP2Yp
 yS1NbMJf3jgAz9z2tgDV0shfGlxn0sav/6iIkA32yY2/XF8RfE19sp6np
 FeuoC4MDsAbemkb4Wq9XzDV8GNO2uD7VuG7uVDGkMG+mzV+0Ty0DOmqpH
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=etdqK8Ho
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] e1000e: clear DPG_EN after
 reset to avoid autonomous power-gating
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Panther Lake systems introduced an autonomous power gating feature for
the integrated Gigabit Ethernet in shutdown state (S5) state. As part of
it, the reset value of DPG_EN bit was changed to 1. Clear this bit after
performing hardware reset to avoid errors such as Tx/Rx hangs, or packet
loss/corruption.

Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index eead80bba6f4..dbf240c8b483 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4932,6 +4932,15 @@ static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
 	reg |= E1000_KABGTXD_BGSQLBIAS;
 	ew32(KABGTXD, reg);
 
+       /* The reset value of DPG_EN bit was changed to 1
+	* clear it to avoid unexpected autonomous power-gating
+	*/
+       if (hw->mac.type >= e1000_pch_ptp) {
+		reg = er32(CTRL_EXT);
+		reg &= ~E1000_CTRL_EXT;
+		ew32(CTRL_EXT, reg);
+	}
+
 	return 0;
 }
 
-- 
2.34.1

