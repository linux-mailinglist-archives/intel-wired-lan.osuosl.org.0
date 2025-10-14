Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B28A6BDA180
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 16:42:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 604946118F;
	Tue, 14 Oct 2025 14:42:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wHRcEvbsgQL8; Tue, 14 Oct 2025 14:42:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1739611E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760452955;
	bh=D6bAafERG+fepJnWRYOaG67SYNdbU+VQzyW1LFu9SJM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a9CtOLA4pcsP+qYBHVn7IVqo7fBs5GBw+7HRAmVuuDtHRUMW/4s12QsY8vPVFnNFn
	 3JZc1hgn4rLAWIckbLRt10/rZevSCCHMFlpbdh8n7Vw0N3igxPR0Xp7r1/8DU1NXwq
	 7mzRD+ofNV+sFSwyJ1zERUGlX6B40GY2x09LpGaRu1inKiCA/Y2pX/Je+nZ9yNKCwY
	 ZCXI75bGm9GrE2tRJOEGX0sg0A0Cork4oxZiwpuIU4jYNPPPR5u7sFCs8/lvMjmeZn
	 4WEZJBbXlkOy0pGtuTik2nxvaK/n6sYCprAVGym00CLwYVIWLWdgPwM2TNc8JcIvkw
	 qMEEAhA/9gaLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1739611E2;
	Tue, 14 Oct 2025 14:42:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F05A294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 14:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37DE741601
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 14:42:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0_eqJ9FfyOGc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 14:42:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0DD17415EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DD17415EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DD17415EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 14:42:32 +0000 (UTC)
X-CSE-ConnectionGUID: CNF/fAhxTM+PyQacXZQG6Q==
X-CSE-MsgGUID: /Vtgc5y4QYWiqaOoQzl1Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73955278"
X-IronPort-AV: E=Sophos;i="6.19,228,1754982000"; d="scan'208";a="73955278"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 07:42:32 -0700
X-CSE-ConnectionGUID: wWn2mO3GSOijVT8WbioiBg==
X-CSE-MsgGUID: cOXsQb0VQJG4x/V+mZo4TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,228,1754982000"; d="scan'208";a="212519417"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa002.jf.intel.com with ESMTP; 14 Oct 2025 07:42:30 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Guenter Roeck <linux@roeck-us.net>
Date: Tue, 14 Oct 2025 16:11:10 +0200
Message-ID: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760452953; x=1791988953;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c6+EocnD4w4+0yuKJRBmHOTb815TgNmuf/l/5ZifKkU=;
 b=cxy93TA/AP4ErWW/LljIoqu08tH8YuRXGmIEdh5EbKZvCiJW6q3X8iGa
 USdg9LVQi2yehEegt/EiU9C41Fk1kL0GGKJ4lFEZV+6lSGpsSXZMVGYSs
 0IFg0IRmR0OalSCHJfX6TueUKNAIcpXPQEipNsZCpHxFxPFJOzTkq5ZHR
 KeXN2tX2i0VyfiZJ8f8WFkg7r9/3mVn+HYx48XKYQLJWBvNsL9I3ufhBv
 NRUYI3xmwE0s/Z2cOJ4B/tOfVAm48vFh0LgONWV2Vp7pnm1Do0OnzT5aT
 bIkTp1zEQYLSIJD/Ks/IyeKBSuycSh7+gRTfQ9AY/Fwf464UIO27igCvF
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cxy93TA/
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
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

Building the ixgbe without CONFIG_DEBUG_FS leads to a build error. Fix
that by guarding fwlog code.

Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
Reported-by: Guenter Roeck <linux@roeck-us.net>
Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058@roeck-us.net/
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index c2f8189a0738..c5d76222df18 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3921,6 +3921,7 @@ static int ixgbe_read_pba_string_e610(struct ixgbe_hw *hw, u8 *pba_num,
 	return err;
 }
 
+#ifdef CONFIG_DEBUG_FS
 static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
 			    u16 size)
 {
@@ -3952,6 +3953,7 @@ void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
 
 	libie_fwlog_deinit(&hw->fwlog);
 }
+#endif /* CONFIG_DEBUG_FS */
 
 static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.init_hw			= ixgbe_init_hw_generic,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 11916b979d28..5317798b3263 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -96,7 +96,15 @@ int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
 			 bool last_command, u8 command_flags);
 int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
 			     u8 *response_flags);
+#ifdef CONFIG_DEBUG_FS
 int ixgbe_fwlog_init(struct ixgbe_hw *hw);
 void ixgbe_fwlog_deinit(struct ixgbe_hw *hw);
+#else
+static inline int ixgbe_fwlog_init(struct ixgbe_hw *hw)
+{
+	return -EOPNOTSUPP;
+}
+static inline void ixgbe_fwlog_deinit(struct ixgbe_hw *hw) {}
+#endif /* CONFIG_DEBUG_FS */
 
 #endif /* _IXGBE_E610_H_ */
-- 
2.49.0

