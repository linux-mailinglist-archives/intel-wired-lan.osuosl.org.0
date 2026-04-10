Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOWWJJmr2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5884C3D3932
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50A4A60B8B;
	Fri, 10 Apr 2026 07:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mj2ypqOzB-Ac; Fri, 10 Apr 2026 07:49:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67A4960B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807376;
	bh=ZAuzYMcFaSAKnKPc86I3mepkCNQp2LDHGxT9J17Irq0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wWpcQhWHR5vDIXidZPP4I9DovKRAu3/+MQAsfEAy5Q4yY8EQ3dX1AgXqQS8uku+of
	 PACPwTRnIhqx9RgTKkpN7Bb6WGePtoBd4GxWIJNUTaDLvlL+2OfxStNZcQbw8fmQ3p
	 9OjFQNq4zSPDFg2wNB0VZyl/9PGt7gDbgPjCk1LR/G+lrxF+pMhecSrNjoFr/+Yk5A
	 l8PnLDMpK9drgEP2MJsPezlPMzbsz/KTjzXrBxr7DJN9w4w2lLxUCO7UXHh+u6KvOm
	 ewKoLvPWxW27k3/R+Fu0ukN6dSLMNYDNmMpsL8h7JEBb566xCBkQC9xge5LNZttxj2
	 jMEN/TZOtNGhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67A4960B53;
	Fri, 10 Apr 2026 07:49:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C92C1F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A73481A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q9DmDhYqyTdD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E7F3816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E7F3816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E7F3816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:32 +0000 (UTC)
X-CSE-ConnectionGUID: Mmi8M05rTZGm025Y+orb4Q==
X-CSE-MsgGUID: qBUpbn0wSsWP01gGuAXn9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007931"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007931"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:32 -0700
X-CSE-ConnectionGUID: IWi7wY0FTW6hVjjbQHDDbg==
X-CSE-MsgGUID: X7frBN/QSRaZvfiy19Qa2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941880"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:31 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 10 Apr 2026 09:49:16 +0200
Message-ID: <20260410074921.1254213-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807372; x=1807343372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k4iVYr4cQFswdWaUcb7d4oIndXtfp8j3uUYioC/j5M4=;
 b=GKFOwnTSWlZ93lMW8DPiHtwHtGPEE6uLe5Z5LZqJAAZGUcIUlZ+DjUXp
 pdovqi7mm1wfDc3vYTMDf88hcSHNbgcCnUlBgnFL4jBUShqiM3Z6iIbM3
 +nyBGZUtEbWZInYgT63NwC2M0etmF/H8+Odw2IW+eaNvey1mLDfzRk2Qe
 l3qmNO84IaV+Cc+j8kPhQ5OjyXyzJDp/JgPNcxEBKqDmPmardskTqKt7G
 4LCBTnojnd+aEpo7kTIbBpEZEFNyHmH+GPLBRaVZpWykufhNtHhjWOFnQ
 4kSP2ligcL9b4kBE0bGriRL9UIA6uUChZly+IRP+PkvRz4lpr368tCwo2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GKFOwnTS
Subject: [Intel-wired-lan] [PATCH iwl-next 5/10] ice: improve Add/Update VSI
 error messages in ice_vsi_init()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5884C3D3932
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The error messages emitted when Add VSI or Update VSI Admin
Queue commands fail are missing the VSI index and the last AQ
error code. Add both to match the pattern used elsewhere in
the driver for AQ-command failures, which helps narrow down
firmware issues without requiring debug logs.

Signed-off-by: Eric Joyner <eric.joyner@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 689c602..0e79d66 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1320,14 +1320,18 @@ static int ice_vsi_init(struct ice_vsi *vsi, u32 vsi_flags)
 	if (vsi_flags & ICE_VSI_FLAG_INIT) {
 		ret = ice_add_vsi(hw, vsi->idx, ctxt, NULL);
 		if (ret) {
-			dev_err(dev, "Add VSI failed, err %d\n", ret);
+			dev_err(dev, "Add VSI %d failed, err %d aq_err %s\n",
+				vsi->idx, ret,
+				libie_aq_str(hw->adminq.sq_last_status));
 			ret = -EIO;
 			goto out;
 		}
 	} else {
 		ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 		if (ret) {
-			dev_err(dev, "Update VSI failed, err %d\n", ret);
+			dev_err(dev, "Update VSI %d failed, err %d aq_err %s\n",
+				vsi->idx, ret,
+				libie_aq_str(hw->adminq.sq_last_status));
 			ret = -EIO;
 			goto out;
 		}
-- 
2.52.0

