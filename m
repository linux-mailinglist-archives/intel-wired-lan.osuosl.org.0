Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1599A4BC115
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 21:18:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72B8F81297;
	Fri, 18 Feb 2022 20:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vDeOhzHG-vAj; Fri, 18 Feb 2022 20:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E92981285;
	Fri, 18 Feb 2022 20:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A36E31BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D4F081002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5iaa9ALcjh8z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 20:18:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9D3880F48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645215525; x=1676751525;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cbRi7q0mFjMOJrEVFLrZ0MNYlKj+81tdg24OHAPa5zU=;
 b=lWLCUEB7Uw6WqFNku/vSVwdFN9+K+OapB3bmf31pnJ1GL8vxkGKN73UA
 fHJqpJA8EJuHg2DZtAQSfPklTnw1TrJ4SI74VCsVTIIMdXZrySs9BBLW0
 rxpbPfy7BcZ3Wdj0fwUlHMs8W8SjV2tfOESS1RNRa06pGdyXV1xe1rAfV
 Jzsq5eFaeDLuDAlPV+f5RZSLNOmeOlblctb9DZOzY5i/YycY/UgvDQzWF
 lyMti+MCH6R6vqhBcr2nTLuvZcba3aGOzrR5MVyF/rhz2T6BkKeKoI0Ai
 W7bcQLSNzO1ZG/gyOwYskRE1YzUSROvI5V+dZJS1O1N2Atmkemif/BfzF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="250964858"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="250964858"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:18:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="546449387"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:15:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 18 Feb 2022 12:15:38 -0800
Message-Id: <20220218201538.818568-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fixup! ice: convert VF storage to hash
 table with krefs and RCU
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

Add a missing ice_put_vf in ice_vf_lan_overflow_event, since otherwise
we'll leak the VF structure here.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Noticed another missing ice_put_vf() in ice_vf_lan_overflow_event. Tony, can
you squash this into the mentioned commit?

 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 537cdc7a1653..0541db39964e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2340,6 +2340,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 		return;
 
 	ice_vc_reset_vf(vf);
+	ice_put_vf(vf);
 }
 
 /**

base-commit: 477606a501d0705cb1bb86fe7aa86f553861ae7f
prerequisite-patch-id: 52d10a04856713e454419d1fab93a8eb8fc8b46b
prerequisite-patch-id: 5e147a8595d06a154c4d4bd96a00123b9d7aeff3
prerequisite-patch-id: 219a2374784bc332860587188fff3b52875bf75b
prerequisite-patch-id: 9c0a3c2a0f103f375d154874cb2f6c05460fce4f
prerequisite-patch-id: 0d93364319183aa07095f318faa1ab04818a0122
prerequisite-patch-id: f6646bb747160540b8aad64bc8bf6eec2f8a0751
prerequisite-patch-id: 30b94ac0dc91fa628dac13700d71b1dbcb466207
prerequisite-patch-id: 7d2e698ae3bc185dfb1d622219774cb3eaf2747b
prerequisite-patch-id: c323612611a89bb6c6fd39c16c2cbec947eac0be
prerequisite-patch-id: 9c0e97be6504c4ebb3ad317cf7a58983369f852d
prerequisite-patch-id: 9d8a69cab472a9920a226840cf9ba0e664b2d48a
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
