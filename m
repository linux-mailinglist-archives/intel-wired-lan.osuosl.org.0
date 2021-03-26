Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB9634AECB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 19:52:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D65184CCF;
	Fri, 26 Mar 2021 18:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UVCIOJN0qasb; Fri, 26 Mar 2021 18:52:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92E2684CB2;
	Fri, 26 Mar 2021 18:52:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A30011BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90BA34027D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mIg-8-b9V8Pw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 18:52:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 041BC4026E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:14 +0000 (UTC)
IronPort-SDR: hxoj49+QlI8RJQVwJCeUeKdIYsTxZBwSnCL+t7WI5QSKF9lvzRYEnfnvjF5CES60W35HSczUEj
 om+CJn2rCsdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255196425"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="255196425"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 11:52:14 -0700
IronPort-SDR: LkCPdWhBEj2tZrSUzIxCn5Rlk5fmdjig5BlV0WncHL6a4nodMBXdo19RgPSnuWo3yN/zTeXvSx
 pkZFd2Cfoccw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="436979839"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2021 11:52:13 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Mar 2021 19:43:43 +0100
Message-Id: <20210326184343.133396-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
References: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse warning: missing
 error code 'err'
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set proper return values inside error checking if-statements.

Previously following warning was produced when compiling against sparse.
i40e_main.c:15162 i40e_init_recovery_mode() warn: missing error code 'err'

Fixes: 4ff0ee1af0169 ("i40e: Introduce recovery mode support")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2e9c22c..73d0c01 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15157,12 +15157,16 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 	 * in order to register the netdev
 	 */
 	v_idx = i40e_vsi_mem_alloc(pf, I40E_VSI_MAIN);
-	if (v_idx < 0)
+	if (v_idx < 0) {
+		err = v_idx;
 		goto err_switch_setup;
+	}
 	pf->lan_vsi = v_idx;
 	vsi = pf->vsi[v_idx];
-	if (!vsi)
+	if (!vsi) {
+		err = -EFAULT;
 		goto err_switch_setup;
+	}
 	vsi->alloc_queue_pairs = 1;
 	err = i40e_config_netdev(vsi);
 	if (err)

base-commit: ca4303103f33952646218db4e0869e6f6aa1c840
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
