Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 766A0CE78B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 17:34:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27180816A2;
	Mon, 29 Dec 2025 16:34:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LCJCvne7xu6z; Mon, 29 Dec 2025 16:34:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A986816F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767026073;
	bh=9C1/cTvzelGXIl6AhXGYtwc3/HdmmdNp3xxicapM9Js=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JBKjNhYHAR4sYpysiKSu9imBorqo9fsR3/m69ZJWcPRqBpB01QgT9v81r+Fyp7Um3
	 np++wj8emdXcYNjzC1hzK+xmGMf/IIzFWELaBNft+IUH2lFj60+EgNpFPDUKjFM1uF
	 V5G1Ir61hWuHdT2PUpzcQzInSQ+1LglIzPMWsBOhgJFRJau5kfw7xKV3RS/I6vjHdX
	 ctNm3MqBAkrFpsrx9/gEAxqHZKzKXg+iBtdbMKEbY/e1FS8nAggl/uQsZUUVvpyihF
	 HGJFZO0UYADt4Cxay6cVKUrmTXEc6Z8rcGq0j3cS3aq2A2lakvLzeCZ4/sqoTpKGwk
	 KGCVsVQmxUkUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A986816F5;
	Mon, 29 Dec 2025 16:34:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75A31B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 16:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BE72816D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 16:34:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYqZK1PUZOqQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 16:34:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 62244816A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62244816A2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62244816A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 16:34:30 +0000 (UTC)
X-CSE-ConnectionGUID: JioLf5OxRYynxu7MP0ZQLw==
X-CSE-MsgGUID: TU0yamaYSEShxfurdMc01g==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68666811"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68666811"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 08:34:29 -0800
X-CSE-ConnectionGUID: 1RWmbpAxQG+p4mC7zGJLQg==
X-CSE-MsgGUID: iU9H+8uYRvSMbL9IWC0U+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200669523"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by orviesa009.jf.intel.com with ESMTP; 29 Dec 2025 08:34:29 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Paul Greenwalt <paul.greenwalt@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 29 Dec 2025 03:52:34 -0500
Message-ID: <20251229085234.372277-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767026070; x=1798562070;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/MEkS44JmZxfKA1MQ52eLGA7AIXofKCvlk6KqTLnHAY=;
 b=hKWq+HN8NdV028NEzivFFNUoyEuMnkbbgZS6Dju2dnU8QfUTwuC5TTv+
 zT1+MKVJf7t1q38jDR6qP41uV+7n2Yx89ch+uI0/QyKbDs9e0IU4nfa2/
 5U56UI/KcLeDSK8q8RJLlsaedkQcXeGxbzRgw+QleCPVzGFghYMSHsVeA
 yF/Yv+GmX0A5qULV71bl198pSxfyQl4uu4X17nPfiVA4gXKqEEqmImrsY
 +fu1z13gQINQIuBhcqZ6SDDi0lKFl9S6qAXHJdAcNhF/a39tKMfT+mzw+
 PunNMmmOmnpaHUZ7FSPq1sydYCQ+FWtxD67xquGxXIEvwBhilUrWDGBBX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hKWq+HN8
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix devlink reload call
 trace
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

Commit 4da71a77fc3b ("ice: read internal temperature sensor") introduced
internal temperature sensor reading via HWMON. ice_hwmon_init() was added
to ice_init_feature() and ice_hwmon_exit() was added to ice_remove(). As a
result if devlink reload is used to reinit the device and then the driver
is removed, a call trace can occur.

BUG: unable to handle page fault for address: ffffffffc0fd4b5d
Call Trace:
 string+0x48/0xe0
 vsnprintf+0x1f9/0x650
 sprintf+0x62/0x80
 name_show+0x1f/0x30
 dev_attr_show+0x19/0x60

The call trace repeats approximately every 10 minutes when system
monitoring tools (e.g., sadc) attempt to read the orphaned hwmon sysfs
attributes that reference freed module memory.

The sequence is:
1. Driver load, ice_hwmon_init() gets called from ice_init_feature()
2. Devlink reload down, flow does not call ice_remove()
3. Devlink reload up, ice_hwmon_init() gets called from
   ice_init_feature() resulting in a second instance
4. Driver unload, ice_hwmon_exit() called from ice_remove() leaving the
   first hwmon instance orphaned with dangling pointer

Fix this by moving ice_hwmon_exit() from ice_remove() to
ice_deinit_features() to ensure proper cleanup symmetry with
ice_hwmon_init().

Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 71b85bf7b033..c7991fb80a86 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4836,6 +4836,7 @@ static void ice_deinit_features(struct ice_pf *pf)
 		ice_dpll_deinit(pf);
 	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
 		xa_destroy(&pf->eswitch.reprs);
+	ice_hwmon_exit(pf);
 }
 
 static void ice_init_wakeup(struct ice_pf *pf)
@@ -5439,8 +5440,6 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_free_vfs(pf);
 	}
 
-	ice_hwmon_exit(pf);
-
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 
-- 
2.52.0

