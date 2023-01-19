Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9276672DF9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6934440C3D;
	Thu, 19 Jan 2023 01:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6934440C3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091077;
	bh=/EKJ/9uF4XSBbUz1i8ECYbX+vdksSeEkvwf4Z7Cju4E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m9tjk4NXujQ80fKUEbjWZWjc5qwIsCW5+3xuxrDRPm2iMHkMjkwRZvRjeoepVBOec
	 567k3N0VuZ6GSOErFT8snKFRgQx8ZeZHJ64F3VvLQgsQsAdL46gdQgH9lwGuhxeGi6
	 7t/JU6VNXH3FaujNAxfrNsZNcEO9qXRaUhb8HiE9dUxZUVonWOOoaYqrq3lbP3VKjY
	 aAU3sN00QN39mKrQoAKLZynzbQpBkC1GUWHLJkzLviAW3pB2UVIndg60ZbkyMBMiBw
	 6MT7bU+KHmjdm9ovdzHbDsXl1c887qyNkAe8yjSLyOIa2L1eWhfhyZypuBbwGbOTx9
	 /i6qsqfzWCvjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgMryRLdroFQ; Thu, 19 Jan 2023 01:17:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B9D8400D3;
	Thu, 19 Jan 2023 01:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B9D8400D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A44041BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A50A41923
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A50A41923
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVXPlJw-GRUH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F9DF4192C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F9DF4192C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840732"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840732"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881892"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881892"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:52 -0800
Message-Id: <20230119011653.311675-13-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xQUCEdCSAvDYefOKMF8D2jbi3YeTdAS5SmgSUSyYY78=;
 b=I9hiHIIaBA4II0+UEt/VJtF+DaA914imexJ2Jlb9Ea7jvdevqwzzULhs
 +jGxx+F8SuVfwIILdr8vZ6OpHahwzuHLX4Ji2VmbFNftfqJCDvBZ/3621
 wZDXPjV+joUsOYGE7g2L9ATY/+CTUICresaSdZgwz9qm3CKZOCYL/N3Iz
 KXxiuiVp9HmLczRxl+Ps7L4SFEdyleUESngNRVB45x8+de1QD4lfNe2GT
 TyYlvy+I0ZZ2XZVIpysBVelPlorpv1DhFWB6bFeLTWh4V+w7MUCsQ2ml8
 KmMc5r9B9dowLdf0vV1EDnrSXgEMyM5yPBwKJIv6Kh6k9acA5L4ZH/O/I
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I9hiHIIa
Subject: [Intel-wired-lan] [PATCH net-next v2 12/13] ice: introduce
 .irq_close VF operation
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Scalable IOV implementation will require notifying the VDCM driver when
an IRQ must be closed. This allows the VDCM to handle releasing stale IRQ
context values and properly reconfigure.

To handle this, introduce a new optional .irq_close callback to the VF
operations structure. This will be implemented by Scalable IOV to handle
the shutdown of the IRQ context.

Since the SR-IOV implementation does not need this, we must check that its
non-NULL before calling it.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1.

 drivers/net/ethernet/intel/ice/ice_sriov.c  | 1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 1 +
 3 files changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 4d8930b83b35..356ac76ef90f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -807,6 +807,7 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.trigger_reset_register = ice_sriov_trigger_reset_register,
 	.poll_reset_status = ice_sriov_poll_reset_status,
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
+	.irq_close = NULL,
 	.create_vsi = ice_sriov_create_vsi,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2ea801ebb2ac..d16c2ea83873 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -237,6 +237,10 @@ static void ice_vf_clear_counters(struct ice_vf *vf)
  */
 static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 {
+	/* Close any IRQ mapping now */
+	if (vf->vf_ops->irq_close)
+		vf->vf_ops->irq_close(vf);
+
 	ice_vf_clear_counters(vf);
 	vf->vf_ops->clear_reset_trigger(vf);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 5bb75edb6cef..b4e6480f30a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -61,6 +61,7 @@ struct ice_vf_ops {
 	void (*trigger_reset_register)(struct ice_vf *vf, bool is_vflr);
 	bool (*poll_reset_status)(struct ice_vf *vf);
 	void (*clear_reset_trigger)(struct ice_vf *vf);
+	void (*irq_close)(struct ice_vf *vf);
 	int (*create_vsi)(struct ice_vf *vf);
 	void (*post_vsi_rebuild)(struct ice_vf *vf);
 };
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
