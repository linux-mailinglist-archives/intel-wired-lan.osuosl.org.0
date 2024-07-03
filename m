Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 593B0925CCD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 13:22:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 488BA417DC;
	Wed,  3 Jul 2024 11:22:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aOTBRTEMxhmA; Wed,  3 Jul 2024 11:22:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 719B941520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720005772;
	bh=8qvLE4AUcy77Cg/IFUb7TWKjw1MDnKqPZtaHgk7cFSg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oMB4I4KQfK9jjrtutloqp+Hw0EQ9SWoreKQhLVvVdjsD6f0VFQJoi6HTFETmtCFks
	 IMgbiiR3OJMgh0FdLmnpgk6s9h5OJ+ogefwCnCIySdQT3AJdNV05RtaCGOukU0ZBIJ
	 UppXWwGBs+fPNKdia9qmUQwv0cs2ELnSQprmi5/UfZFO/ELJmJB1l7c3GhOiAcbxzA
	 38d+GiZTccumYrlkyAsuAKyjd2Krlw2QYFu4nudducDXbdVib8Nmdlv+BpRpnKVOji
	 0DUN4OBbVIjh/S+A5h24WoMqhj+cwmc/HrfLUfeqNxXvIQSWLmfnyh64MHMzpfCYzf
	 0pVGDElx9oWzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 719B941520;
	Wed,  3 Jul 2024 11:22:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF1BD1BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 11:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D897984593
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 11:22:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BY7CfIuJrPLP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 11:22:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E0F0981F5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0F0981F5E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0F0981F5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 11:22:49 +0000 (UTC)
X-CSE-ConnectionGUID: iMlHP0NSS++b1B6zydqToQ==
X-CSE-MsgGUID: rm4AYg7cQYCMU/E3pU4URQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="34677718"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="34677718"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 04:22:49 -0700
X-CSE-ConnectionGUID: 66knfgVrSI+1kcF4qBi4KQ==
X-CSE-MsgGUID: yx3fKCKkQP+B96I0y8AgIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="51413172"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 03 Jul 2024 04:22:48 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9B1B728184;
 Wed,  3 Jul 2024 12:22:46 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jul 2024 13:25:02 +0200
Message-ID: <20240703112502.28021-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720005770; x=1751541770;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oCaSs8xj4V/C3pXNHjSf7MiY39U9r7UoJZNsu5aUWOs=;
 b=ccWzO00TCc9Ru+LwoFjupCF7bK55hHNpkl+iBFBcMsRDYiLZROulX7WP
 FH0+sjMvk/Lzm1bF6fYuNWMbUpy4Z9vB7k/RrBem3jZy421mbI1GaZX9C
 pE59qpk5AJtzzn0lveEgNqaE38slz/oWjLyroOqCld7/1Fz04AqJqQNnf
 gdFCL0bDBBBFfu90ipyqwDphWJ3T+//qpHScI7nCq14fNXkYPh9q8vMyT
 o0PlW8HNJ8AlK8qcSxB5M4fRjVYG+oEfCqrBpf0jMsa3W+E/qHSjvYxip
 fakvZ7gHa8sUFkJFp3ll0bEg/jeaiCwim36FqzQq6xgPFxT7h840K1tYm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ccWzO00T
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Fix field vector array data
 type
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Correct the datatype of fv_idx array in struct ice_sw_recipe to be u8
instead of u16. This array contents are used solely to be later passed
to lkup_indx in struct ice_aqc_recipe_content, which is u8.

Fixes: 6d82b8eda4c7 ("ice: Optimize switch recipe creation")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
Targeting next, as the commit to be fixed is on dev-queue.
Tony, please squash this with commit 6d82b8eda4c7 ("ice: Optimize switch recipe creation")
---
 drivers/net/ethernet/intel/ice/ice_switch.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 3e4af531b875..671d7a5f359f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -226,7 +226,7 @@ struct ice_sw_recipe {
 	 */
 	struct ice_fv_word ext_words[ICE_MAX_CHAIN_WORDS];
 	u16 word_masks[ICE_MAX_CHAIN_WORDS];
-	u16 fv_idx[ICE_MAX_CHAIN_WORDS];
+	u8 fv_idx[ICE_MAX_CHAIN_WORDS];
 	u16 fv_mask[ICE_MAX_CHAIN_WORDS];
 
 	/* Bit map specifying the IDs associated with this group of recipe */
-- 
2.45.0

