Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FAB6434EA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:54:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82D6381A95;
	Mon,  5 Dec 2022 19:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82D6381A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670270045;
	bh=KyZfMS7cGkSS30MjQ7slXSAJrIJL4WE1+Yxidbk/j3o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JN4Zr/z/2U7vRK1hclsuh7U/TttndKOVR+/dBaEPXm0kizvHcDYbeJf1n75oySGHR
	 PPrRnUsy37jiD+HpzVjzo9aKVetnjY5AMv66yFAeIUZMi3KesAjiftFh2pHczJKXHC
	 Lb9oB7HbRXi1q/mzJLb5uBDkTx2lU4zmBvQLsZG8IPfLr2ArZdcfCAXO6M8s0W7Y0c
	 c27pu5U/RJuDlTVSWig7yPRHrk/mVaV1H6FJnL3g3szyi9FA/Z9mxxXEEYCuiJYXKc
	 mjlpFvWFb7JgtYs0fetKsLCdFEtPEQAo72pZ4TS/nIKHGUV+KQcHsOHLLhTpBZZb6S
	 B4T6xUKmA3HkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8lJXBErVeEq; Mon,  5 Dec 2022 19:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 954E8818CA;
	Mon,  5 Dec 2022 19:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 954E8818CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E94E1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0D6F818C2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0D6F818C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P_4KOnUVRNrd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7E08818EC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7E08818EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592405"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592405"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379330"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379330"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:04 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:53 -0800
Message-Id: <20221205195253.2475492-16-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269986; x=1701805986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l8dczgf9siqqa5gbjbhy8wvP39yZO4UjIcDSi8baHU0=;
 b=Rj6ygm6Nx1r2Mv5AjG5+h6pA3IId67W4jSTSz8WM+30EHQKfId6uggeL
 zjy4rGNCEVTc3veTbmtyBhS/RPb9vUwSmkVPQoJLFzZ9q8gFWFzYCP5H8
 vsvMd8noLxq22IZJvQAbzLt7g6vKLxuNkXB7ewru0qC21wycsVKHYX+Wf
 jqlpxkdz7JvUnTW0fcQP43rysjNnb4jn4wZA0041tYi+LBX+Byfv1APjf
 FOtr1+u410Mn2BKvdYfSUhdxlHxVPecs7f7OfrDA5nMMPR6XOOrclvnhH
 BnxYf8/LwlHYgrcTunJXFBYkjvYsiLAONsoQAElnR9FSOsKYSFeWyLnbA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rj6ygm6N
Subject: [Intel-wired-lan] [PATCH net-next v3 15/15] ice: reschedule
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
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
No changes since v2.

 drivers/net/ethernet/intel/ice/ice_ptp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b1cc1f45e419..bd6fe25321bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1245,8 +1245,13 @@ static void ice_ptp_wait_for_offsets(struct kthread_work *work)
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
