Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FE76825C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 08:47:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD8544011F;
	Tue, 31 Jan 2023 07:47:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD8544011F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675151230;
	bh=xlvVATkSN4Pphlf3ui3jf1Q4eFN+0KnATOwO6PElo/A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ifJ0/1QvGY4QO4yWgMIPquJNIrz6dZ2o5uauJOPRgsT9PL7L7URFGdDgvIaUQyGN7
	 uzIe/5oglD5RPpyk6dHjDZ5OTWZm05U4LZKvzplVPi8ptXZkN+/cBax7Z+IIxn0y13
	 0Hw47aZwXLHKAlk8a+EBGgzLQxoQ/1yphL5CtLgj8Z/jPGcObVqmZamNA+K5vqCHcK
	 LOYagOoQ0LWKYwo8OJIX7F4h1lOJ9dSiF28Fe55qm2W2yq+uHXXDRq7h1cwPMFpMCC
	 qn9HkmWLBWnHvZFneISkCa9u4ZtM4RfEwrXuQuY35AYUJFS7AbZbRCEcBpBjCObxE3
	 UYpMblmwyPQcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dL7yjaJ-4XR; Tue, 31 Jan 2023 07:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B24EC40132;
	Tue, 31 Jan 2023 07:47:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B24EC40132
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9B301BF34D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C09DC813C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:47:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C09DC813C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpS1lqmzyD7o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 07:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C9B081353
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C9B081353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:47:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329883569"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="329883569"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:46:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="664404941"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="664404941"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga002.jf.intel.com with ESMTP; 30 Jan 2023 23:46:48 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 08:49:51 +0100
Message-Id: <20230131074951.2664690-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230131074951.2664690-1-jan.sokolowski@intel.com>
References: <20230131074951.2664690-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675151223; x=1706687223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v8p3EQpdHDpnHq8P/u1F8SnM2oJ+CRhKvfku258chG8=;
 b=YBxlN8Uyaj+vIJfIKL8G6n51XkFfbzqvZlt1iGvCnl5/rLQV6b7neFDz
 D41M9qWchHB50Zi457l+oOuKw6foI1yS3Hpe2oAU9vzusneqQtyThe5R+
 0AEBeClnQLB/p4O37irMVYUcCKruV01116f9vneSJSwUpQiQwI3NB+g3a
 SakHP/RSRnUdmlmsBDjTsT7gvS065kh7yPdACKzRpGKMMevJbDGU8ZPVQ
 EdSUCDrPOoWmUBuSKeprWj1VV6E1iByPUgW44hfmZmcL1Wb6WZdhXNfAR
 jJ7VcZts2UbEfNu8p7RtgYE0I7+ZbD9C2EnLdX8RhPZccHJatj53eMPrA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YBxlN8Uy
Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] i40e: Only MACs from host
 must be preserved
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Only MACs assigned from host must be preserved after VF reset/reload.
Added vm MAC list to filter vm MAC request from others then
vm MACs do not preserved by host during VF reset/reload.
This list is used to filter the MAC addresses list restored after reset.
Without this patch host automatically restore all the MAC addresses
after VF reset/reload.

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
v4: Moved some functions to earlier patch to fix compilation errors
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index f6b5d61cc9a7..b9ebfd724f54 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1085,6 +1085,25 @@ static void i40e_del_vmmac_from_list(struct i40e_vf *vf, const u8 *macaddr)
 	}
 }
 
+/**
+ * i40e_free_vmmac_list
+ * @vf: pointer to the VF info
+ *
+ * remove whole list of MAC addresses for VM
+ **/
+static void i40e_free_vmmac_list(struct i40e_vf *vf)
+{
+	struct i40e_vm_mac *entry, *tmp;
+
+	if (list_empty(&vf->vm_mac_list))
+		return;
+
+	list_for_each_entry_safe(entry, tmp, &vf->vm_mac_list, list) {
+		list_del(&entry->list);
+		kfree(entry);
+	}
+}
+
 /**
  * i40e_free_vf_res
  * @vf: pointer to the VF info
@@ -1160,6 +1179,9 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
 		wr32(hw, reg_idx, reg);
 		i40e_flush(hw);
 	}
+
+	i40e_free_vmmac_list(vf);
+
 	/* reset some of the state variables keeping track of the resources */
 	vf->num_queue_pairs = 0;
 	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
