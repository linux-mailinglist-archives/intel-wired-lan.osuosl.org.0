Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0742C615557
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:54:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 928AD813CD;
	Tue,  1 Nov 2022 22:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 928AD813CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343247;
	bh=mkQiuMvQpZlJT5lUfAcLHC5eKrS3FhHCfVVFqWl0EGQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HIxKggqc6AI1cdbs2Gtp0uOaxfMzvn1sFRSX7RGWuRGN+OpvkLqSXQoXAnzhDEXjm
	 HsOuGpgIsckF/uqOA3em63kVsEm+HbWzjxd4EKsz4Itaz7XUJ4S5UjicmEpR+O8IaY
	 DFi+553kZ35W/15tgNQraCOAvliQnRaPCBp3nA02lIT0IqNcwGFfZuTufnEqvIeW8T
	 bSU0Z2lr6Imt5hc45tyWnMMTEFRU2nfgvSlvGJkB/lj4cZgmoor3ZO02SHOb/AwwlU
	 kK3q0ngW74nXWlQx6C4wV7w8JTcNQ+LappK4LeXj0EeHMs0UxwR5qY2MJAilOZEdiF
	 uzZcMzQNqb4tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3XTXlflk_Ymz; Tue,  1 Nov 2022 22:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9665680DB9;
	Tue,  1 Nov 2022 22:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9665680DB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 482621BF95C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 293E540941
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 293E540941
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKW4F5MbCP3s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EE7040E47
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EE7040E47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348119"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348119"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324066"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324066"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:40 -0700
Message-Id: <20221101225240.421525-16-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343192; x=1698879192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aXX3y95DOEsbiVVkzaaPCGkNUmGMCo5kDUosplX1GZo=;
 b=MiDCtRzq/unh8C2K3pd8mzmTXXh1y+Q/MUVf0RNVX5qpwh473i2p8rTV
 Mj/4bhXjLlhNHVMSTbogs+ZBMw/PvGrdhQIa5nDYqCX98gEaWtqNpjtw7
 ub4cgOoQP+hC87v2ZG1ZCWSLR2K0FE83AaNxX8t4zTtHaDNCLOLZKIg1U
 Y6qlJI6x+toSXqIa1VS+ap/IvkciPuREBVCSkzOi/9X4b4BrdBXV3uvsR
 Lot30qWCIfbDPTTOsIK9qLG47dMzysiPW1md53uhsZX3si12X3ihwtMeb
 JpW8b7S/ggrB8refOTeJPwKN/yTtqM8RAblx/Ig6UxrAGJlKvQsUzrjdH
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MiDCtRzq
Subject: [Intel-wired-lan] [PATCH net-next 15/15] ice: reschedule
 ice_ptp_wait_for_offset_valid during reset
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the ice_ptp_wait_for_offest_valid function is scheduled to run while the
driver is resetting, it will exit without completing calibration. The work
function gets scheduled by ice_ptp_port_phy_restart which will be called as
part of the reset recovery process.

It is possible for the first execution to occur before the driver has
completely cleared its resetting flags. Ensure calibration completes by
rescheduling the task until reset is fully completed.

Reported-by: Siddaraju DH <siddaraju.dh@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9981a5f4b9bd..d15fa159d3ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1239,8 +1239,13 @@ static void ice_ptp_wait_for_offsets(struct kthread_work *work)
 	pf = ptp_port_to_pf(port);
 	hw = &pf->hw;
 
-	if (ice_is_reset_in_progress(pf->state))
+	if (ice_is_reset_in_progress(pf->state)) {
+		/* wait for device driver to complete reset */
+		kthread_queue_delayed_work(pf->ptp.kworker,
+					   &port->ov_work,
+					   msecs_to_jiffies(100));
 		return;
+	}
 
 	tx_err = ice_ptp_check_tx_fifo(port);
 	if (!tx_err)
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
