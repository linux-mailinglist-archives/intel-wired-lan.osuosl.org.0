Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFTzIXe/BmqMnQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 08:38:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F12654A0E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 08:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CEBF83F86;
	Fri, 15 May 2026 06:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NY6PZNfVx18I; Fri, 15 May 2026 06:38:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6807083F82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778827123;
	bh=x399OXqkwCooDH/fLuDk/NUxzPVHTIDRacmD8IFW9TM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AheD3Q0XhpVGvsGd6QnV19tGp8oY7tKs/whf9g3W3RK4An/c9yzK7r1kqDM34HZ5U
	 qtH08jqWd37NVEdUSMgGPhhNYIcQ907JB2i/wd3GkeZD9MfXpz8chknrGb59W1CM+d
	 hyDg+WUjUgig3q0qAlsbYR9I32W5i+gaxKZsSwzclQPujp7AzMe+hbIUXu1W7Cv2Fc
	 BwkW0JFPkobTc2YODAbsY7RU8sJPBUssfCQ1T1OoUWDRtH93lV2HGC83mTi+OZaQW5
	 WAMTpLsX21t8EDBpeSNzT6jpJzc2tOR5xvt58DzXG9vmR0YkoRGFlxdVYdFk+msX+1
	 qx4eiKwoSdKDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6807083F82;
	Fri, 15 May 2026 06:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AE11836F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 06:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F7F0414C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 06:38:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMMOHFakYxLT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 06:38:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D2CF7414BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2CF7414BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2CF7414BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 06:38:39 +0000 (UTC)
X-CSE-ConnectionGUID: 8AnNmcdhQZu6lq9zuWOR4w==
X-CSE-MsgGUID: S+c0wsWNTLmxz5mqYZuFjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="79739207"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79739207"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 23:38:40 -0700
X-CSE-ConnectionGUID: BCaaXBjpSv+vlqQA5jAoqw==
X-CSE-MsgGUID: InN7nmB0TDmXGB2PF3FIuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="237622616"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 14 May 2026 23:38:38 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 15 May 2026 08:38:36 +0200
Message-ID: <20260515063836.3300442-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778827121; x=1810363121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JKYVh2slMKWfZx1z40HWA1wTlerYTQUEo0TT717YH0k=;
 b=lJe4T8JVcVe1twi9SFGwIrjyiZPVv9y9OZbKBJGnbWetfojEwr9I1zhY
 qrqMgw8kOP4hR19W+7hsU7ydJ2BUM2wnph/6FlaRkACW5RfxjCXtdnztM
 lE9wOaAx33oJ4bKqxqUXN4jEUG2J3Xyl4nvOEIvaU3PxBXk+UGPuNWnqd
 N5xHKbI2CmfDSm9lWahuGoT86+i5LTiPxc7PCeGU2TlYfsnD4dLERg+l9
 Qjeeod4ehmPaHEOjB2vL8RwW0KHZwDyIuR1lAD4EFeQ9FGTM9eBYQ9kh1
 l1jWQsaDO48/lYPQeOEqPQT7Nfk82KPWA1miU7F3rP9pcNaD2ybc5GnCi
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lJe4T8JV
Subject: [Intel-wired-lan] [PATCH iwl-next] iavf: convert crit_section to
 DECLARE_BITMAP
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
X-Rspamd-Queue-Id: 6F12654A0E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

struct iavf_adapter::crit_section is a bit-lock container indexed
by values from enum iavf_critical_section_t (__IAVF_IN_REMOVE_TASK).
It is manipulated exclusively through the kernel atomic bitops API:
set_bit(), clear_bit(), test_bit(), test_and_set_bit().

It is declared as a bare 'unsigned long' and every call site passes
'&adapter->crit_section'. That is functionally correct -- the bit
index is a compile-time enum value well below BITS_PER_LONG so
BIT_WORD(nr) is always 0 and only the singleton word is ever
touched -- but it relies on layout coincidence rather than on the
documented contract of the bitops API, which is defined in terms of
'unsigned long *' arrays.

Static analyzers that model the same contract flag every such call
site with ARRAY_VS_SINGLETON because the address of a scalar is
passed where an array pointer is expected.

Convert the field to a proper bitmap using DECLARE_BITMAP() sized by
a new sentinel __IAVF_CRIT_SECTION_NBITS at the end of the enum. The
underlying storage is unchanged (a single unsigned long word on every
architecture Linux supports), so there is no functional or ABI change;
the type simply becomes 'unsigned long[1]' which matches what the
bitops API expects and silences the analyzer warnings permanently.

Drop the leading '&' at every call site, since arrays decay to
pointers.

No functional change intended.

Suggested-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  3 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 ++++++++--------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 050f824..ba9ad63 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -213,6 +213,7 @@ enum iavf_state_t {
 
 enum iavf_critical_section_t {
 	__IAVF_IN_REMOVE_TASK,	/* device being removed */
+	__IAVF_CRIT_SECTION_NBITS	/* must be last */
 };
 
 #define IAVF_CLOUD_FIELD_OMAC		0x01
@@ -389,7 +390,7 @@ struct iavf_adapter {
 
 	enum iavf_state_t state;
 	enum iavf_state_t last_state;
-	unsigned long crit_section;
+	DECLARE_BITMAP(crit_section, __IAVF_CRIT_SECTION_NBITS);
 
 	struct delayed_work watchdog_task;
 	bool link_up;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d2914c5..b3332ca 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -264,7 +264,7 @@ void iavf_free_virt_mem(struct iavf_hw *hw, struct iavf_virt_mem *mem)
  **/
 void iavf_schedule_reset(struct iavf_adapter *adapter, u64 flags)
 {
-	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section) &&
+	if (!test_bit(__IAVF_IN_REMOVE_TASK, adapter->crit_section) &&
 	    !(adapter->flags &
 	    (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED))) {
 		adapter->flags |= flags;
@@ -1355,7 +1355,7 @@ void iavf_down(struct iavf_adapter *adapter)
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		return;
 
-	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
+	if (!test_bit(__IAVF_IN_REMOVE_TASK, adapter->crit_section)) {
 		/* cancel any current operation */
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		/* Schedule operations to close down the HW. Don't wait
@@ -1960,7 +1960,7 @@ static void iavf_finish_config(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
 	    adapter->netdev->reg_state == NETREG_REGISTERED &&
-	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
+	    !test_bit(__IAVF_IN_REMOVE_TASK, adapter->crit_section)) {
 		netdev_update_features(adapter->netdev);
 		adapter->flags &= ~IAVF_FLAG_SETUP_NETDEV_FEATURES;
 	}
@@ -2016,7 +2016,7 @@ static void iavf_finish_config(struct work_struct *work)
  **/
 void iavf_schedule_finish_config(struct iavf_adapter *adapter)
 {
-	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+	if (!test_bit(__IAVF_IN_REMOVE_TASK, adapter->crit_section))
 		queue_work(adapter->wq, &adapter->finish_config);
 }
 
@@ -2870,7 +2870,7 @@ static int iavf_watchdog_step(struct iavf_adapter *adapter)
 		return 1;
 	case __IAVF_INIT_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+			     adapter->crit_section)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
 			 * as it can loop forever
@@ -2889,7 +2889,7 @@ static int iavf_watchdog_step(struct iavf_adapter *adapter)
 		return 1000;
 	case __IAVF_COMM_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+			     adapter->crit_section)) {
 			/* Set state to __IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
 			 * doesn't bring the state back to __IAVF_COMM_FAILED.
@@ -3771,7 +3771,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 		}
 	}
 exit:
-	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+	if (test_bit(__IAVF_IN_REMOVE_TASK, adapter->crit_section))
 		return 0;
 
 	netif_set_real_num_rx_queues(netdev, total_qps);
@@ -5513,7 +5513,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	adapter = iavf_pdev_to_adapter(pdev);
 	hw = &adapter->hw;
 
-	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, adapter->crit_section))
 		return;
 
 	/* Wait until port initialization is complete.
-- 
2.52.0

