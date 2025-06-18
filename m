Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 495F5ADF95D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 165ED40BE1;
	Wed, 18 Jun 2025 22:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ni1oWY31NCns; Wed, 18 Jun 2025 22:25:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9713E40BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285514;
	bh=1NHYr8aGUptu0TzmzatOG0bb2JNF80ghiV4Z/5NbEAQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b/wEJwfqyQ/aTAhnBynfCxbY9lyHRPVE1u5yc1hc+5x6q1rIMSZNEDO5Osf8IDVPy
	 VBMu6JwTWjfrl6xoHee5xudD/gQehe9pFeC6Nxde/fn8+2KqX0KTXKTAjXRcKhLmZe
	 OM1fdKEk8ltlLu+tEnzvrFQ9fIiGOK5Y2mMYXMJg3d9M22WeFfRuvk7y9PnmQJs7e+
	 A9NBWXhannXuwTrWA8QPr7uJBg6yCHgf39fqGkGlO0tioDbCn8ak4O9b7e5NwH1ppc
	 gv8crZIZImUEun1oV5C9K8ooVT8lABad1JWS8FM4nkx21ax/4kbvnaY+aFNcc+fJSz
	 yh6UaHbt4jfjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9713E40BDA;
	Wed, 18 Jun 2025 22:25:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 25057151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F7EA40611
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0siOQve9RL3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB82740776
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB82740776
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB82740776
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: /6xM6PH8Q+i0GddqtSnwDw==
X-CSE-MsgGUID: Dq8fzEEWQUGwqG4tnEHkhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447747"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447747"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: aWr4bGGJQZC/O/irigi/bg==
X-CSE-MsgGUID: 6u20SeATScKTjJtyswVBuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870021"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:41 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-6-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285507; x=1781821507;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=zUZHmZmw6lY/vlzhJ9yLe5OVqlfvZktLRz2vwpEcRl4=;
 b=IlIzCFiM1BEvou9eJPd6ZJvnUD2KuogmGMrPKIgzDonkjZthsCU/eTUL
 09H9+tYcOTkQFN+oD3Nlx1vR/3pQh9abGSxjjmUPfvHa96ilFkAmThunM
 VGm5yoU/5B8W77zIOo/Dvae9rA8JvreqH0UA2eYEGcJGMxR8X1+VrMziz
 r8EjGGyKepMlklwnhhTnLl6bIWwTNiB9rOeafz1KPBJP+qZjX4LsHGsW8
 o0K0mawzRIA9L4d+fR7taLWEVQDIVr7D9G/cijmP8Bs3UTk9co8L9bjOd
 vVVwgGZA0vs0KWD9c3GDxrzxSRV/PB3e36cq+/yQiAR1iUV9OPRt36TZY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IlIzCFiM
Subject: [Intel-wired-lan] [PATCH iwl-next 6/8] ice: use pci_iov_vf_id() to
 get VF ID
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

The ice_sriov_set_msix_vec_count() obtains the VF device ID in a strange
way by iterating over the possible VF IDs and calling
pci_iov_virtfn_devfn to calculate the device and function combos and
compare them to the pdev->devfn.

This is unnecessary. The pci_iov_vf_id() helper already exists which does
the reverse calculation of pci_iov_virtfn_devfn(), which is much simpler
and avoids the loop construction. Use this instead.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 8d77c387357bbba27fbcec4bb2019274d2a2eb99..4c0955be2ad20c3902cf891a66f857585fcab98b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -952,17 +952,11 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (msix_vec_count < ICE_MIN_INTR_PER_VF)
 		return -EINVAL;
 
-	/* Transition of PCI VF function number to function_id */
-	for (id = 0; id < pci_num_vf(pdev); id++) {
-		if (vf_dev->devfn == pci_iov_virtfn_devfn(pdev, id))
-			break;
-	}
-
-	if (id == pci_num_vf(pdev))
-		return -ENOENT;
+	id = pci_iov_vf_id(vf_dev);
+	if (id < 0)
+		return id;
 
 	vf = ice_get_vf_by_id(pf, id);
-
 	if (!vf)
 		return -ENOENT;
 

-- 
2.48.1.397.gec9d649cc640

