Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392E3887487
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 22:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBFA341951;
	Fri, 22 Mar 2024 21:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HaFIyUC8ZT5r; Fri, 22 Mar 2024 21:44:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B9E941931
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711143892;
	bh=1LaIkIe1SiGRNQtCDH56vgMiK7V9arstwdxhw1xdSKk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=INcKLgKxbXKMr2zrSR1JpYRMkQLiBYfh1V76G93vv2kWwX/fNXNBPHPszenk3/FHn
	 yRw04MumodCJPhnQJcOCtZr/WtQxAhZR/zzXooaYFXV4Ke5tLD7VYsWwWtsQhgBRsY
	 NlEFLkqc/Rp+xB7XsH5+PLJjL+phgdFnZHsFXX+mut9BIH8mqi3bEiR1TRqNQEjY1H
	 MVPtzvCHbNXE9js9U+dwIShEiFUhasFjMgZdOstITpV90ifY2I1CpONxDpUzpZ2rKx
	 unbUFhlXisLQNxCri0FsIg8TxP96g6FEiSno6zuc/tSjy579zUBwzX/u6crbs6K8Ao
	 3htt9RZ7rXJfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B9E941931;
	Fri, 22 Mar 2024 21:44:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B09331BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 980EB41931
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ylpjkJDv-bMp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD6A7408CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD6A7408CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD6A7408CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="28689862"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="28689862"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="19733209"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:44:49 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 22 Mar 2024 14:44:44 -0700
Message-ID: <20240322214445.1653263-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
In-Reply-To: <20240322214445.1653263-1-jacob.e.keller@intel.com>
References: <20240322214445.1653263-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711143890; x=1742679890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XJ9y38e1QrFOLzGdg1sxYVyQk5xdXY8BUGYL6P5vNhk=;
 b=jY6XWCk2hput5xSxODxwOhFchC3N/RvK55+3bagFS/muNSEogAJ3ONUI
 IlvkI9wU8FpegMEmBSy+dtpf9xfGL1v1WogDNR9u36ZK1L/EOpVh+h57H
 xMFXj8/EsB2wEr4ZJTPlASDcvPIi5TLTOCxJVqwGOIvCfdQuz0mR+c+XG
 J14bpNluXkuu4KnfNCKlqy0bfqytc5f1CWkvAdXp3xh8m/IMgHBbrqtpi
 6cnSiLZf5JTnfOcMrkXBk7sQl6ThpnZxX7IpkGcv+G0LZIN4+H6wnuRL0
 l6ldobr9JMfs8OjWU4NqLSzM1Zj3knU73iYSImPGCDiIuq7Ab2SMz8Qlp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jY6XWCk2
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: set vf->num_msix in
 ice_initialize_vf_entry()
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit fe1c5ca2fe76 ("ice: implement num_msix field per VF") updated the
driver to allow for per-VF MSI-X configuration. The initial defaults were
set in ice_create_vf_entries(). This logic is better placed in
ice_initialize_vf_entry(). Indeed, that function already sets
vf->num_vf_qs, as well as initializes the allow list via calling
ice_vc_set_default_allowlist().

Move this logic into ice_initialize_vf_entry(). This makes the code clear,
and ensures that these VF fields will be initialized properly for both
SR-IOV VFs and the upcoming Scalable IOV VFs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 5 -----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 ++++-
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 65e1986af777..5e9521876617 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -831,11 +831,6 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		pci_dev_get(vfdev);
 
-		/* set default number of MSI-X */
-		vf->num_msix = pf->vfs.num_msix_per;
-		vf->num_vf_qs = pf->vfs.num_qps_per;
-		ice_vc_set_default_allowlist(vf);
-
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 21d26e19338a..c51e2482cad2 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -992,10 +992,13 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
 
 	/* assign default capabilities */
 	vf->spoofchk = true;
-	vf->num_vf_qs = vfs->num_qps_per;
 	ice_vc_set_default_allowlist(vf);
 	ice_virtchnl_set_dflt_ops(vf);
 
+	/* set default number of MSI-X */
+	vf->num_msix = vfs->num_msix_per;
+	vf->num_vf_qs = vfs->num_qps_per;
+
 	/* ctrl_vsi_idx will be set to a valid value only when iAVF
 	 * creates its first fdir rule.
 	 */
-- 
2.44.0.53.g0f9d4d28b7e6

