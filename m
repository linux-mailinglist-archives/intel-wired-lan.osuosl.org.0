Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B8375A17B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 00:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAFB8404B4;
	Wed, 19 Jul 2023 22:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAFB8404B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689804766;
	bh=KDKcSfTGcbgbYOfS3Nc6nfbgQmbh+VeYKlZIn76V1bA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1wxOoSF06Jr1h7SGS6h8ssoHV6GxCegpQ/iIUhXiYgsDKFxwara4WaDTbXZ8ii5vF
	 u/qYJEnH6ECr5skOH9vVnwqVgR2mdcWH0aF4opVCN5qQSFQc1HhmLCG9My7eC1HNvE
	 aAeq/EVidAcqjnd6/ndS1xVPqX49nAWJleo5lmS9QwhxkJPDr9vIjsE4QBQE6kV7K7
	 fJTg777d1sbT7JMsGqmC8GNCiGXx+lNiu89ykvd8xswppatUWQMGE0dlV44W4CUHU1
	 BAofhjkCfKlApenJ/KiZCRGY+zM8BNU2T0d9LgxMqJMOIYQhg0LizTsZZ6BMomlLXG
	 n2wvWj3TuzLuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ococedzGNVKn; Wed, 19 Jul 2023 22:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D271404AB;
	Wed, 19 Jul 2023 22:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D271404AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83D991BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 592E7820A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 592E7820A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFr_HuJIXHLv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 22:12:39 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 22:12:39 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79D0082035
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79D0082035
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365460315"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="365460315"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701411245"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701411245"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 19 Jul 2023 15:05:25 -0700
Message-ID: <20230719220525.3153469-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230719220525.3153469-1-jacob.e.keller@intel.com>
References: <20230719220525.3153469-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689804759; x=1721340759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6RKGZ8IHmKDlqJHKKMPQq0wPSdpyx6ghctHTtvYA1uE=;
 b=i7F8ULBBUfFpAxKHjcZ8PczZYbtqpF+dSyiMqGFJGD5PWIxp3ArwYiFx
 BKz5TCWfX8nMprhMWu3C0CbtKz2DQryHbuo3g9G+HWDrwLY+UqRWsgx3g
 woB2P5RAKcs4z5AJNYKhyOgWJestR8H8XjMMrRm+c1+VxhwZ07n1o0Gki
 WB6bRG5sGrGMkbeiBxv0yTWdzj/mi4ERPUbSBU/g5Jqg6GiVdQiinsoi/
 MO17myKNPVFxnxKpUYfJGjqpmBRdVbRpTx9J/D4islctvCs7qbpHhlFUt
 DPqjwDR9GyDQRQMHHXIeEXtQvJtjJbNLyIwxQC6NTf8gfsyvPJd0Z7zYd
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i7F8ULBB
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: Initialize source timer
 before driving sync for single-PHY commands
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice hardware has a synchronization mechanism used to drive the
simultaneous application of commands on both PHY ports and the source timer
in the MAC.

When issuing a sync via ice_ptp_exec_tmr_cmd(), the hardware will
simultaneously apply the commands programmed for the main timer and each
PHY port.

If the driver has previously programmed the main timer, it may still have
leftover configuration and could accidentally re-apply that command. We do
use ice_ptp_clean_cmd() to cleanup after executing a timer command.
However, it is good practice to also initialize the main timer in all cases
where we are calling ice_ptp_exec_tmr_cmd().

In order to avoid any side effects, introduce a new ICE_PTP_NOP command
which simply leaves the cmd_val bits set to 0, indicating no command is
requested. This is important because we want to ensure that the timer index
value is still set ensuring that the full timer command will be executed on
the proper timer in the hardware. It is not expected to ever need
ICE_PTP_NOP for PHY port commands. However for completeness, the value is
checked anyways.

Use this new command to initialize the main timer command in
ice_sync_phy_timer_e822 and ice_start_phy_timer_e822, both functions which
operate only on a single PHY port at a time.

This makes it clear that these flows do not affect the main timer, and
ensure that we do not rely on the behavior of previous executions clearing
the main command via ice_ptp_clean_cmd().

Signed-off-by: Siddaraju DH <siddaraju.dh@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
I chose not to target net here since I don't think this is strictly fixing a
known issue or report. We already call ice_ptp_clean_cmd() to clear the old
timer commands so I think there isn't a strict bug being fixed. However I
think its still good practice to ensure that we initialize the main timer
anyways.

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 168e72de06d7..474bb4b2c839 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -131,6 +131,8 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	case ICE_PTP_READ_TIME:
 		cmd_val |= GLTSYN_CMD_READ_TIME;
 		break;
+	case ICE_PTP_NOP:
+		break;
 	}
 
 	wr32(hw, GLTSYN_CMD, cmd_val);
@@ -1275,6 +1277,8 @@ ice_ptp_one_port_cmd(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd)
 	case ICE_PTP_ADJ_TIME_AT_TIME:
 		cmd_val |= PHY_CMD_ADJ_TIME_AT_TIME;
 		break;
+	case ICE_PTP_NOP:
+		break;
 	}
 
 	/* Tx case */
@@ -2267,6 +2271,9 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		goto err_unlock;
 
+	/* Do not perform any action on the main timer */
+	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
+
 	/* Issue the sync to activate the time adjustment */
 	ice_ptp_exec_tmr_cmd(hw);
 	ice_ptp_clean_cmd(hw);
@@ -2389,6 +2396,9 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
+	/* Do not perform any action on the main timer */
+	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
+
 	ice_ptp_exec_tmr_cmd(hw);
 
 	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
@@ -2875,6 +2885,8 @@ static int ice_ptp_port_cmd_e810(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	case ICE_PTP_ADJ_TIME_AT_TIME:
 		cmd_val = GLTSYN_CMD_ADJ_INIT_TIME;
 		break;
+	case ICE_PTP_NOP:
+		return 0;
 	}
 
 	/* Read, modify, write */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ba4ab96073e0..28e0afb06d54 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -10,6 +10,7 @@ enum ice_ptp_tmr_cmd {
 	ICE_PTP_ADJ_TIME,
 	ICE_PTP_ADJ_TIME_AT_TIME,
 	ICE_PTP_READ_TIME,
+	ICE_PTP_NOP,
 };
 
 enum ice_ptp_serdes {
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
