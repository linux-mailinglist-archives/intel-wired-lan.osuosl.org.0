Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 158F8BF060B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Oct 2025 12:04:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 327B041920;
	Mon, 20 Oct 2025 10:04:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A0Q5uK2dPOWO; Mon, 20 Oct 2025 10:04:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89C4C4190E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760954658;
	bh=kVZcx3OBIpM+n414F2PpYXsZ5tm1CJRoKynOpuJSFE4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X8HN8ZijRVYrUdhz7RLXfaMHKjHu+tqTnyiwkSIgk798ZwMfQ+drC4pehIA2kGwlu
	 D4Voa9VBYlg9SbQprdgBYliRSsHPBxVIX5AthTpMsDTv6ABEHOexS41fnl9M2p0WFB
	 hTTbgxh3TgGxJgBelcvB64mchaXNORCG45nQoV2mISeDUe21zT4VTFRqM7Tf73RGqH
	 GDZlqKlvz8U5RFqPlmCk5kv4p0QQ45NvWk/Lbc7SzO3NSHVuDdwOySmK9gMnU8Jcrv
	 X+w+hrVawXXAXP/s4wqeZariSa5xwEOke+uKhRC5mPt5R7/BWxCiSu7LyrGmc+rfFr
	 dLaq3DzCVhjNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89C4C4190E;
	Mon, 20 Oct 2025 10:04:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 979DE1CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DCAF418D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:04:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGH3-XjTYjxm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Oct 2025 10:04:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C1C05418B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1C05418B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1C05418B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:04:16 +0000 (UTC)
X-CSE-ConnectionGUID: ti6jAjTQTYG9sT3QrqnsGQ==
X-CSE-MsgGUID: LDTm6O1fQLe5qDyQ/h2aPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11587"; a="62976115"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="62976115"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:04:16 -0700
X-CSE-ConnectionGUID: AIRKNdgyS9Ky68AKUzdH6g==
X-CSE-MsgGUID: grlaK72RQVW7I3b2gwIHIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="188390664"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa005.jf.intel.com with ESMTP; 20 Oct 2025 03:04:15 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Oct 2025 12:02:16 +0200
Message-Id: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760954657; x=1792490657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9J53g8OkOar041dBgVIu5tJM5irhNs/KlVbqvUfq4f4=;
 b=dWAXtEf3y4xPmKwiKkdYOeK7+eGXxVRvckSWPTBKaVS2vS26hUUVLw++
 LKrHEBCfuEiZCPBYbeIUmSU0Qml1QyX1nd66Z0CaDt+0IqCJYThPzgbZB
 x0CYXjMGmd/T3SjJIXvgHNR6YQgpTI8b8Q8JcX73Vgb5V3kJu5+sn9azI
 8e/Uw4yYkgrGwhgHTDJwnl7H6UqZvfmi9ReEXTLiM+Szp+RajY52/Mq3v
 KFYD+Jrc675UUtbi1eSjx16P69wq6MBdtcgUgdAhZVSMQkKJHs08iblEp
 BblZKrAwvXN+FxBMDgsFaYGqGoB0j5dkpTAWdOR9TdqB+paCUvz5hJVlL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dWAXtEf3
Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix PTP cleanup on driver
 removal in error path
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 vadim.fedorenko@linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve the cleanup on releasing PTP resources in error path.
The error case might happen either at the driver probe and PTP
feature initialization or on PTP restart (errors in reset handling, NVM
update etc). In both cases, calls to PF PTP cleanup (ice_ptp_cleanup_pf
function) and 'ps_lock' mutex deinitialization were missed.
Additionally, ptp clock was not unregistered in the latter case.

Keep PTP state as 'uninitialized' on init to distinguish between error
scenarios and to avoid resource release duplication at driver removal.

The consequence of missing ice_ptp_cleanup_pf call is the following call
trace dumped when ice_adapter object is freed (port list is not empty,
as it is required at this stage):

[  T93022] ------------[ cut here ]------------
[  T93022] WARNING: CPU: 10 PID: 93022 at
ice/ice_adapter.c:67 ice_adapter_put+0xef/0x100 [ice]
...
[  T93022] RIP: 0010:ice_adapter_put+0xef/0x100 [ice]
...
[  T93022] Call Trace:
[  T93022]  <TASK>
[  T93022]  ? ice_adapter_put+0xef/0x100 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
[  T93022]  ? __warn.cold+0xb0/0x10e
[  T93022]  ? ice_adapter_put+0xef/0x100 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
[  T93022]  ? report_bug+0xd8/0x150
[  T93022]  ? handle_bug+0xe9/0x110
[  T93022]  ? exc_invalid_op+0x17/0x70
[  T93022]  ? asm_exc_invalid_op+0x1a/0x20
[  T93022]  ? ice_adapter_put+0xef/0x100 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
[  T93022]  pci_device_remove+0x42/0xb0
[  T93022]  device_release_driver_internal+0x19f/0x200
[  T93022]  driver_detach+0x48/0x90
[  T93022]  bus_remove_driver+0x70/0xf0
[  T93022]  pci_unregister_driver+0x42/0xb0
[  T93022]  ice_module_exit+0x10/0xdb0 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
...
[  T93022] ---[ end trace 0000000000000000 ]---
[  T93022] ice: module unloaded

Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of auxdev")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2:
 - rebased
 - complete full cleanup if failure in PTP intialization path (no need
   to do a cleanup on PTP release then) and added a comment with clarification
   why keeping PTP_UNINIT state on failure at init
 - setting ptp->clock to NULL explicitly in error path
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index fb0f6365a6d6..13b73f835f06 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3246,7 +3246,7 @@ void ice_ptp_init(struct ice_pf *pf)
 
 	err = ice_ptp_init_port(pf, &ptp->port);
 	if (err)
-		goto err_exit;
+		goto err_clean_pf;
 
 	/* Start the PHY timestamping block */
 	ice_ptp_reset_phy_timestamping(pf);
@@ -3263,13 +3263,19 @@ void ice_ptp_init(struct ice_pf *pf)
 	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
 	return;
 
+err_clean_pf:
+	mutex_destroy(&ptp->port.ps_lock);
+	ice_ptp_cleanup_pf(pf);
 err_exit:
 	/* If we registered a PTP clock, release it */
 	if (pf->ptp.clock) {
 		ptp_clock_unregister(ptp->clock);
 		pf->ptp.clock = NULL;
 	}
-	ptp->state = ICE_PTP_ERROR;
+	/* Keep ICE_PTP_UNINIT state to avoid ambiguity at driver unload
+	 * and to avoid duplicated resources release.
+	 */
+	ptp->state = ICE_PTP_UNINIT;
 	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
 }
 
@@ -3282,9 +3288,19 @@ void ice_ptp_init(struct ice_pf *pf)
  */
 void ice_ptp_release(struct ice_pf *pf)
 {
-	if (pf->ptp.state != ICE_PTP_READY)
+	if (pf->ptp.state == ICE_PTP_UNINIT)
 		return;
 
+	if (pf->ptp.state != ICE_PTP_READY) {
+		ice_ptp_cleanup_pf(pf);
+		mutex_destroy(&pf->ptp.port.ps_lock);
+		if (pf->ptp.clock) {
+			ptp_clock_unregister(pf->ptp.clock);
+			pf->ptp.clock = NULL;
+		}
+		return;
+	}
+
 	pf->ptp.state = ICE_PTP_UNINIT;
 
 	/* Disable timestamping for both Tx and Rx */

base-commit: 978b03527a6c24f908b24c51da32daca02f0fec8
-- 
2.39.3

