Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9556B3DDC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 12:33:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4163415F5;
	Fri, 10 Mar 2023 11:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4163415F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678448036;
	bh=P0JiwyI3ymLoQ82gCb+5O6Aa9L5eA6vRblyndhL1Af8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tiEnjyXzvVci9XL5oSopiTyd+umrzZedb8TN0Gtxbr0nWKzDnnRNSVLUW8vMDHTTR
	 VUAAGSoR3A/phxyTA8Sh+fLj8/RzRWS/L5wT1vENU5LvJL8Zxu6MHf/PV7PIjNacvg
	 /UF4ZcBoR2G22gBtsJaMfZrqowsLVmUYQ2+edPQg/rV5e968fP1qULHZl7e+ilbCfZ
	 b+REiiya7YckfoqK6qUarLlOUARFes0yTP1vRYYRfE7ZvHZlr57gy/rTjeZT50agGH
	 E19r35o3jY94Xmk/Wf+ygHziCbZPJ7T60Ypzc5GtkMGJyvuvZPCNigfVhBIqngKPBx
	 hEGXIfGYLVzUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wN_mNzd2OthQ; Fri, 10 Mar 2023 11:33:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9196241578;
	Fri, 10 Mar 2023 11:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9196241578
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70A741BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 11:33:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 456BB82026
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 11:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 456BB82026
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcSnjMMvxx1W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 11:33:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DC4982016
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DC4982016
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 11:33:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="336726904"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="336726904"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 03:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="707978046"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="707978046"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2023 03:33:47 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Mar 2023 12:33:44 +0100
Message-Id: <20230310113344.199393-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678448029; x=1709984029;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TQcOPItVYoFVPZX5KLhMGNxOfxtdlz9VG5bRTbkY/0s=;
 b=Hk1/3ppf5he7JKNBEepwyr+Vdfv9ox8S/Dqn6HX3Kn2+XMZqrZSUFox1
 SXZTmcAeOFvI+8bvY6DtKJe8ldhqJMcelKQW7ZL64LJm3cCbuZe2KpRmh
 5fn1p3YU+i/LDpQ5j1Bix66GA+4o4xsQTMXSDV+7oZNEPnbWbPP56jcHx
 soxM95AdHYf5WjD0INEwOElGB+pPT4aNOU3XsL8ixND95nS58Jri2GFIR
 gzYGCt5FAB8H4QY+KsKLBhF9r8YUfDTov6fxjE/MLT+HE3xaIpz+P/bp2
 fl+b9UPzIw/dXXQOUHkzNyVbOwGVt6v4HXWGJ2mkZH9pLsOKay0Q5LdtL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hk1/3ppf
Subject: [Intel-wired-lan] [PATCH net v2] ice: check if VF exists before
 mode check
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
Cc: Michal Swiatkowski <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

Setting trust on VF should return EINVAL when there is no VF. Move
checking for switchdev mode after checking if VF exists.

Fixes: c54d209c78b8a ("ice: Wait for VF to be reset/ready before configuration")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>

---
V1->V2: Added Fixes tag
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 96a64c25e2ef..0cc05e54a781 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1341,15 +1341,15 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 	struct ice_vf *vf;
 	int ret;
 
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf)
+		return -EINVAL;
+
 	if (ice_is_eswitch_mode_switchdev(pf)) {
 		dev_info(ice_pf_to_dev(pf), "Trusted VF is forbidden in switchdev mode\n");
 		return -EOPNOTSUPP;
 	}
 
-	vf = ice_get_vf_by_id(pf, vf_id);
-	if (!vf)
-		return -EINVAL;
-
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		goto out_put_vf;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
