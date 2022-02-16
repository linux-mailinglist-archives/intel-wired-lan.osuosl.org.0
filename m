Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B88204B7C68
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:32:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60C3660B6E;
	Wed, 16 Feb 2022 01:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhcGVJP64FUC; Wed, 16 Feb 2022 01:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48F9160B72;
	Wed, 16 Feb 2022 01:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A59E01BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E38F64160B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwZPzd-tWfFe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 373E94160A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975098; x=1676511098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fyTwlqnOtYjlVn774bYjznElc77kpSRBO01Lpgcp6rY=;
 b=Zi9dGV6I/4Ty19BQ5NcU0q909rW83OGwjx0ecx+TYme5k+yWZezHTPk2
 dkkZ81/YmOR99oM3bRWLQByE/8jUl1+mhly7NRFhadudPwplEfgF9yaVw
 QgAISt6HsbLTOXKQVcbrhji9pZBfe7yqKe1Zc/Dg1HhBuhX67aJezVWyk
 JGxSTEoTktk05Kt6A9P07LyudxQyzciapcccpFot2SkbNVG13QQ+ITL3q
 /BJ0FkCeaWZXiOzIxf06+XmW2gTc5FSp0ugvD45rvdL/ewWzNNr0LFgcI
 f3fIlC1omhAvz8qXEsYHw6LnRuPifnbnmSQhmiNf8n2stylH4dUQL3FCb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237903430"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237903430"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="588077352"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Feb 2022 17:31:22 -0800
Message-Id: <20220216013127.3263153-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216013127.3263153-1-jacob.e.keller@intel.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 06/11] ice: remove checks in
 ice_vc_send_msg_to_vf
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

The ice_vc_send_msg_to_vf function is used by the PF to send a response
to a VF. This function has overzealous checks to ensure its not passed a
NULL VF pointer and to ensure that the passed in struct ice_vf has a
valid vf_id sub-member.

These checks have existed since commit 1071a8358a28 ("ice: Implement
virtchnl commands for AVF support") and function as simple sanity
checks.

We are planning to refactor the ice driver to use a hash table along
with appropriate locks in a future refactor. This change will modify how
the ice_validate_vf_id function works. Instead of a simple >= check to
ensure the VF ID is between some range, it will check the hash table to
see if the specified VF ID is actually in the table. This requires that
the function properly lock the table to prevent race conditions.

The checks may seem ok at first glance, but they don't really provide
much benefit.

In order for ice_vc_send_msg_to_vf to have these checks fail, the
callers must either (1) pass NULL as the VF, (2) construct an invalid VF
pointer manually, or (3) be using a VF pointer which becomes invalid
after they obtain it properly using ice_get_vf_by_id.

For (1), a cursory glance over callers of ice_vc_send_msg_to_vf can show
that in most cases the functions already operate assuming their VF
pointer is valid, such as by derferencing vf->pf or other members.

They obtain the VF pointer by accessing the VF array using the VF ID,
which can never produce a NULL value (since its a simple address
operation on the array it will not be NULL.

The sole exception for (1) is that ice_vc_process_vf_msg will forward a
NULL VF pointer to this function as part of its goto error handler
logic. This requires some minor cleanup to simply exit immediately when
an invalid VF ID is detected (Rather than use the same error flow as
the rest of the function).

For (2), it is unexpected for a flow to construct a VF pointer manually
instead of accessing the VF array. Defending against this is likely to
just hide bad programming.

For (3), it is definitely true that VF pointers could become invalid,
for example if a thread is processing a VF message while the VF gets
removed. However, the correct solution is not to add additional checks
like this which do not guarantee to prevent the race. Instead we plan to
solve the root of the problem by preventing the possibility entirely.

This solution will require the change to a hash table with proper
locking and reference counts of the VF structures. When this is done,
ice_validate_vf_id will require locking of the hash table. This will be
problematic because all of the callers of ice_vc_send_msg_to_vf will
already have to take the lock to obtain the VF pointer anyways. With a
mutex, this leads to a double lock that could hang the kernel thread.

Avoid this by removing the checks which don't provide much value, so
that we can safely add the necessary protections properly.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 7ab4e7d4cfb7..6351af58f74e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2206,13 +2206,7 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 	struct ice_pf *pf;
 	int aq_ret;
 
-	if (!vf)
-		return -EINVAL;
-
 	pf = vf->pf;
-	if (ice_validate_vf_id(pf, vf->vf_id))
-		return -EINVAL;
-
 	dev = ice_pf_to_dev(pf);
 
 	/* single place to detect unsuccessful return values */
@@ -5724,8 +5718,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 
 	dev = ice_pf_to_dev(pf);
 	if (ice_validate_vf_id(pf, vf_id)) {
-		err = -EINVAL;
-		goto error_handler;
+		dev_err(dev, "Unable to locate VF for message from VF ID %d, opcode %d, len %d\n",
+			vf_id, v_opcode, msglen);
+		return;
 	}
 
 	vf = &pf->vf[vf_id];
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
