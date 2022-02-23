Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D31544C0616
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DF8E6006A;
	Wed, 23 Feb 2022 00:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 581GA5JeOdZL; Wed, 23 Feb 2022 00:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C5B0600B4;
	Wed, 23 Feb 2022 00:28:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27F421BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD9F6408F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFJQI0hqZEXO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4362A40912
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576045; x=1677112045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EolnHHwCwUQyRIbYwQP5B69XrsPDD/3FTkXbS1HQfa8=;
 b=ZR12Urxo8IJz6yf4PSNVZ9owYJ/QLFrpCHjaL1++PAUUrza0AjkGdYo3
 4WO33PNKeu71lcUM8PkqoWE6GE2LVgAjvWFov7w/aYoPRvr5mo/to4KY5
 EWQ3ZSRleKsDO/OCX23SfUD+8sE/rgQL85h/QwmDSd+yVos0baosy9kCN
 zw+Xrd6fZcK1xnwPfpDhQitX5N3WxApw0YSDGbT6MVGEeHaVSXBF3B9Eb
 Md1BTfsc98h3KCaUyCg8NCg1S9EK9JML7MKBvLYCorMN4bHIVl1qMzhGg
 gZ6oJansS77X9z76LlFQ/5cO3ovofNqCuBsUNGP/JaxOVmJkyw07kBEqm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235836"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235836"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728033"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:00 -0800
Message-Id: <20220223002712.2771809-14-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 13/25] ice: fix incorrect dev_dbg
 print mistaking 'i' for vf->vf_id
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If we fail to clear the malicious VF indication after a VF reset, the
dev_dbg message which is printed uses the local variable 'i' when it
meant to use vf->vf_id. Fix this.

Fixes: 0891c89674e8 ("ice: warn about potentially malicious VFs")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 2f74fcf51c2c..91d106528b66 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1381,7 +1381,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	/* if the VF has been reset allow it to come up again */
 	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
 				ICE_MAX_SRIOV_VFS, vf->vf_id))
-		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n", i);
+		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
+			vf->vf_id);
 
 	return true;
 }
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
