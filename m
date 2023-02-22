Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2215D69F9C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2C30417BC;
	Wed, 22 Feb 2023 17:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2C30417BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086196;
	bh=2QFUNpy6PBgPsxLds3qhAPDBwerNfd46WxC4IjiRJ28=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IzT7e5rnBqSy2uac3BBFT4DgYGtzEFZRBoZ/oSHiAZZFEoE2S4jmGaPI2nrvG+mE8
	 doC2DcXmFkJNnKHtcUDI/Fwr1xAPqA/safGodWM20m+boqCl5krOeLX0k6NlF4r0tk
	 REiBWwxuLFVk+zFwv6ubwfieA/wWO9ZZAe55vfkPDQwAuKZcChPd68JcBxM9o+OVzy
	 dCVpp8HPpucUQ6HPRQywxFeJgoXoFPUCNs5WTgGg7A2+VCMmjdU7dYxDY5CSs/y8pj
	 uMAIeaC/CDPTuHr/G2Gxr0HxPVPwy9KK0m9HRasrXCxPQF7pvQK1sHzCFbLe+eimWU
	 KngnLffcJOzaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sGmXDU_scO2I; Wed, 22 Feb 2023 17:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85F434173E;
	Wed, 22 Feb 2023 17:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85F434173E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BB521BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF42041739
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF42041739
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWEyBjSWqrak for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3818A41733
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3818A41733
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466661"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466661"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980072"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980072"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:18 -0800
Message-Id: <20230222170920.1629293-13-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H9IbOwK2A6dH9hsf8rL/HG2GDzrwbps0oqiDwnhYwqA=;
 b=Bmf4jOhLxQr6HQqhBM37KBhmNYQSAOFEOIkvrY+rbIg5mQRZwLAm4Ljt
 KmGFkMVNV5g4XZ4HJ3IpFcIYuCm6UNNdursMyzF+I/lRCFxwF8Wm9tivn
 JIpoMkKsrlKltsSMiyHHGx+gx6pMcZ5WQ2HLKoJ8Be7n5NERkUqTw3Oxc
 lgZjDbhtGiEh/ji9t/kEf9qqnMXIW50uXy4XAhXU/a0rJKmV6BevPCS+o
 XT1TpuHA9m1dTQwRRxzkJKEFGByNGcng0Q6ygauPwwSXWmxm2Z8aHiqCM
 QfueakR551mSk7dkfBUoKbFDytb8qfUVRYxMHQ1GjV/THmYX7lN2+LqJT
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bmf4jOhL
Subject: [Intel-wired-lan] [intel-next PATCH 12/14] ice: print message if
 ice_mbx_vf_state_handler returns an error
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If ice_mbx_vf_state_handler() returns an error, the ice_is_malicious_vf()
function just exits without printing anything.

Instead, use dev_warn_ratelimited to print a warning that we were unable to
check the status for this VF. The _ratelimited variant is used to avoid
potentially spamming the log if this function is failing consistently for
every single mailbox message.

Also we can drop the "goto" as it simply skips over a report_malvf check.
That variable should always be false if ice_mbx_vf_state_handler returns
non-zero.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 5ae923ea979c..f0daeda236de 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1805,7 +1805,8 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	status = ice_mbx_vf_state_handler(&pf->hw, mbxdata, &vf->mbx_info,
 					  &report_malvf);
 	if (status)
-		goto out_put_vf;
+		dev_warn_ratelimited(dev, "Unable to check status of mailbox overflow for VF %u MAC %pM, status %d\n",
+				     vf->vf_id, vf->dev_lan_addr, status);
 
 	if (report_malvf) {
 		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
