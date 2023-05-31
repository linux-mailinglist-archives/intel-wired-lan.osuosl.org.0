Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE91771800B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 14:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26D0C40487;
	Wed, 31 May 2023 12:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26D0C40487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685536665;
	bh=NLJPJJaWO3N8eazPhI3Vlhz8aCRdGKIvbBR4HSkjNeo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Tk1Al65yDxE+oLNilZZ8KDYQwlLMm5UgzZtlPcpdwPh3LzxMsns/tDqtTUBSbLrMi
	 1Sq+kQCTufvUQfjgXHjTcETQbnShLHEBwGcKuHGGDO9PjJFGzkY+JvFIfcO/ce1xqo
	 iR2HFbJbJBDkuDV3PO4oqCUn5yXpXR6795LFNfcAMY2/cN69JAxP8qwjoV+5vd3fIn
	 IQYQvC4irDGFlYQYYW64RwcX8awjr9iVd2Wf59lQqfzQYV/OTliQmGX1P7OZtNQEls
	 NEfKvbSkBSpt+BISIKjq2hLe+KZ6eVVTaSNv6RGI9NdUPv/VSXqX+qsf1gP4SlP+fh
	 fCNp7scYnB4mQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PLCZbIS3mKs7; Wed, 31 May 2023 12:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BE944027F;
	Wed, 31 May 2023 12:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BE944027F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E283E1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B93474151F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B93474151F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qnbAG0p-sFrH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 12:37:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93696409F4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93696409F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:37:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="339816783"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="339816783"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 05:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="710050849"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="710050849"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 31 May 2023 05:36:53 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.255.201.128])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F0E3735FDB;
 Wed, 31 May 2023 13:36:50 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 May 2023 14:36:42 +0200
Message-Id: <20230531123642.20246-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685536657; x=1717072657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/7ki4PH7pJfXAJYIjAt2oWlh0KK1EwLb+t3e8AEDub8=;
 b=jgCnFpH7mnMmiBx20mipEYut16eVp953gTDMmchwPo9yPJiInC5lfBH4
 xPs7eQcNzDGLAX4xmUv6Tkv5irmUs6UpVrf5Znut0rcyHwuheQeByoPlf
 6cW3V2lLTFq5OzA3xXKuYdSWLCTjozIFMZumsBFLXMjjF/uB6aGAxSHcs
 JAsYhRm1HEcQ33raDwk017H80O8+TI4dMW7Ch0qAUTfodq9uvy9ZG6oCn
 eI5FwfAp78T7rMaZX26HR92E2Pfe6kOUrvOpTat/HRL8kwnd6CuRPMT4r
 fKSi1zMugZtz3Xj4hAFRDxc2atGSPJJny5ZUhXsO+egbdtYnkERIrRl3B
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jgCnFpH7
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: clean up freeing SR-IOV
 VFs
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
Cc: Simon Horman <simon.horman@corigine.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The check for existing VFs was redundant since very
inception of SR-IOV sysfs interface in the kernel,
see commit 1789382a72a5 ("PCI: SRIOV control and status via sysfs").

v2: sending to proper IWL address

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 2ea6d24977a6..1f66914c7a20 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -905,14 +905,13 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
  */
 static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
 {
-	int pre_existing_vfs = pci_num_vf(pf->pdev);
 	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
-	if (pre_existing_vfs && pre_existing_vfs != num_vfs)
+	if (!num_vfs) {
 		ice_free_vfs(pf);
-	else if (pre_existing_vfs && pre_existing_vfs == num_vfs)
 		return 0;
+	}
 
 	if (num_vfs > pf->vfs.num_supported) {
 		dev_err(dev, "Can't enable %d VFs, max VFs supported is %d\n",
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
