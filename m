Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0A769F9BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A457417CC;
	Wed, 22 Feb 2023 17:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A457417CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086176;
	bh=MP/XilvzlgFs9lVL+0GwmclU/cpY6b0C4QKG6C3NbbQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2zrThqVFfdPvkFdtR+xMaHp+TQtDcFbduR6RP/L7fIu5oknkJ52G5/JR2hbf/lLqU
	 RzjilsN5yV1eXlk4jsYT9/28Mfp+Th2D65+ELB+fu9fVnrxa0Tnc5QjL36zPNRrqxf
	 Ra6DY2gPfrNimq1mH4XjCvzD5LwIVSVmhxB8vlWVQpBT94XNT7KCelJouy14Wr+Wm8
	 p1y1FL9BQPpFhbvZF9MEysHIWDdWbDe2D2cby+VfSycfaFQJpWrG3UmLdGf1aW/aiO
	 4Fb1aj1vzkFZQYqKTRswY7tAJHrMxV1lcnc1pSk0b7KBWc3EykZ9HnKiZ2nXRlFS5J
	 9RG6fwUp7k7yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDUmOS_gDtjx; Wed, 22 Feb 2023 17:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BFB841724;
	Wed, 22 Feb 2023 17:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BFB841724
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FF4E1BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBCE161159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBCE161159
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t8dPbz3gNSDd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE6C060B4D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE6C060B4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466654"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466654"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980056"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980056"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:13 -0800
Message-Id: <20230222170920.1629293-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4QIxqSGuH+AOVBe100xb2MBqLkExOStIWszv9kSEMRw=;
 b=TDUy2GQmfrtyLCKq/sthAAy9enxnxvpQjmK3LhYuaXo8pfuEZIZE6ux9
 cZN2t/OFPJjFIoZgQRgipdXc2NszeFX5WcKyqXJbvfM+XE8XzUJvsQ0Jd
 FRi16aqmz+XGidAMEUIa8uM9LGEp5NPQeRjjljqAIAHf4NSR1Fa6KURzZ
 tSIXwIET3Y3CU3Snu+MKQDjJUlOph3jP3U+l+Y0AkfC3F0nqRgbFj8VUO
 VAIYfcNUk5rzY/tJu6RxMDX/05XdebsjgRcfmsjYRleEvqC4Qo9qTI0k+
 hVnksDlsQTc4/pgyA0dt6nFr2hJFrgCnv8BmRpEC2dhrtCguHmp2HFUuw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TDUy2GQm
Subject: [Intel-wired-lan] [intel-next PATCH 07/14] ice: initialize mailbox
 snapshot earlier in PF init
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

Now that we no longer depend on the number of VFs being allocated, we can
move the ice_mbx_init_snapshot function earlier. This will be required by
Scalable IOV as we will not be calling ice_sriov_configure for Scalable
VFs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   | 1 +
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 2 --
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h | 4 ++++
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 567694bf098b..615a731d7afe 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3891,6 +3891,7 @@ static int ice_init_pf(struct ice_pf *pf)
 
 	mutex_init(&pf->vfs.table_lock);
 	hash_init(pf->vfs.table);
+	ice_mbx_init_snapshot(&pf->hw);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 71ce3998dd75..6764e677a345 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1023,8 +1023,6 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 		return -EBUSY;
 	}
 
-	ice_mbx_init_snapshot(&pf->hw);
-
 	err = ice_pci_sriov_ena(pf, num_vfs);
 	if (err)
 		return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index 41250519bc56..44bc030d17e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -43,5 +43,9 @@ ice_conv_link_speed_to_virtchnl(bool __always_unused adv_link_support,
 	return 0;
 }
 
+static inline void ice_mbx_init_snapshot(struct ice_hw *hw)
+{
+}
+
 #endif /* CONFIG_PCI_IOV */
 #endif /* _ICE_VF_MBX_H_ */
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
