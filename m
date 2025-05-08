Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C763AB033C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 20:51:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 106A0607CB;
	Thu,  8 May 2025 18:51:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aQm0rqVJdzKx; Thu,  8 May 2025 18:51:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 250F660873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746730307;
	bh=vSt7dog7oUunJAeN40KJKnGVp0Q6MJPDz8+H7jRO5kA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i5IFF2Fz5UZlwgI8hy+5FGk9GlIU9xNsx9QiHxVn24B0USbBcKHPId6qRfmFmWVer
	 3KqFnvkdfhufZUp79WB9ViI9ucqOfoujxM2B0eEEHod3j53iPfs8ZBGXpDCmXgZlMH
	 b/ZyO9wuYn5FZJAOD+csbb1+sgSbod4s/nYT6Z9AQFB7rsMGeXITq3+4mcZvitoibv
	 TGSWAXQJhtmHh2OZ4na9L8waYGL0YOaXEnJyCOV6dCjpiB2/mr1kXQZ8m9KA91Z0ZM
	 saOcXDJAbyl/PXH1pPP2NSqC5Dzxi1+w7yBc6BzLtY5JoiSRC7hfGQ4H/c/p19kMYh
	 CHas8tTCOWifg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 250F660873;
	Thu,  8 May 2025 18:51:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87E031A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 18:51:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78D1580EC3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 18:51:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2wSu1OWHXOaH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 18:51:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80FBE80E70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80FBE80E70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80FBE80E70
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 18:51:44 +0000 (UTC)
X-CSE-ConnectionGUID: LJDoXdvgTISBXCflm3gzww==
X-CSE-MsgGUID: zJ4muqswSXehcnzbn7EVBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52347340"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="52347340"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 11:51:44 -0700
X-CSE-ConnectionGUID: wOnEvQiaQaWmw2RaUmXskQ==
X-CSE-MsgGUID: hyVbqnEaSmurri8NKVJlTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="136095187"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa009.jf.intel.com with ESMTP; 08 May 2025 11:51:43 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, decot@google.com, willemb@google.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, madhu.chittim@intel.com,
 Aleksandr.Loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, joshua.a.hay@intel.com, ahmed.zaki@intel.com
Date: Thu,  8 May 2025 11:47:15 -0700
Message-Id: <20250508184715.7631-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746730305; x=1778266305;
 h=from:to:cc:subject:date:message-id;
 bh=0P1kq5V6Zl3XktHtUGDpPFQfVJIbRRJmT3vCTi9aT3Q=;
 b=CDaCOs7+Ne7D1QLpkrOZ7xtlb6EPg+HKNyOqB2RF5SZeIyjba7ai5hM1
 oHrSdZEImtmIgH6Kew2JHhXzQJL5GdHaAJom1CJWpdsqB6GJsz1y0rYw/
 okGBrcCzrEbIeDOR7JKpH3OnDTpze8+JM8cM21kfEj2c1VGiIZhlWAuxY
 AXuIyvKUYsnFQniXecV88UOjdSYLoeKrbyLocElCMGX6qDQgGFEm5jka8
 f8FJLG5swTHvjJBRrxroX05TZzBYm+EAnRDlnd7C54NuhkNWrvVpvgVzs
 Wfa1tkamiY5kWgf7V5eCwVm2eZbzDdtKBz+nKJGruS2PfxtbdCeVuahw7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CDaCOs7+
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid mailbox timeout
 delays during reset
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

Mailbox operations are not possible while the driver is in reset.
Operations that require MBX exchange with the control plane will result
in long delays if executed while a reset is in progress:

ethtool -L <inf> combined 8& echo 1 > /sys/class/net/<inf>/device/reset
idpf 0000:83:00.0: HW reset detected
idpf 0000:83:00.0: Device HW Reset initiated
idpf 0000:83:00.0: Transaction timed-out (op:504 cookie:be00 vc_op:504 salt:be timeout:2000ms)
idpf 0000:83:00.0: Transaction timed-out (op:508 cookie:bf00 vc_op:508 salt:bf timeout:2000ms)
idpf 0000:83:00.0: Transaction timed-out (op:512 cookie:c000 vc_op:512 salt:c0 timeout:2000ms)
idpf 0000:83:00.0: Transaction timed-out (op:510 cookie:c100 vc_op:510 salt:c1 timeout:2000ms)
idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c200 vc_op:509 salt:c2 timeout:60000ms)
idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c300 vc_op:509 salt:c3 timeout:60000ms)
idpf 0000:83:00.0: Transaction timed-out (op:505 cookie:c400 vc_op:505 salt:c4 timeout:60000ms)
idpf 0000:83:00.0: Failed to configure queues for vport 0, -62

Disable mailbox communication in case of a reset, unless it's done during
a driver load, where the virtchnl operations are needed to configure the
device.

Fixes: 8077c727561aa ("idpf: add controlq init and reset checks")
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c     | 18 +++++++++++++-----
 .../net/ethernet/intel/idpf/idpf_virtchnl.c    |  2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h    |  1 +
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 3a033ce19cda..2ed801398971 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1816,11 +1816,19 @@ void idpf_vc_event_task(struct work_struct *work)
 	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
 		return;
 
-	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags) ||
-	    test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
-		set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
-		idpf_init_hard_reset(adapter);
-	}
+	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
+		goto func_reset;
+
+	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
+		goto drv_load;
+
+	return;
+
+func_reset:
+	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+drv_load:
+	set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+	idpf_init_hard_reset(adapter);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3d2413b8684f..5d2ca007f682 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -376,7 +376,7 @@ static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
  * All waiting threads will be woken-up and their transaction aborted. Further
  * operations on that object will fail.
  */
-static void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
+void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
 {
 	int i;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 83da5d8da56b..23271cf0a216 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -66,5 +66,6 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport);
 int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
 int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
 int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
+void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);
 
 #endif /* _IDPF_VIRTCHNL_H_ */
-- 
2.17.2

