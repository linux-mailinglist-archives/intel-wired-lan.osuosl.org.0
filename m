Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 806AD90CED6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 15:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F70C60EE9;
	Tue, 18 Jun 2024 13:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HYeO5JpN1kKg; Tue, 18 Jun 2024 13:21:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D869613A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718716887;
	bh=cOGJa5EtlCqowDeagSvHsl1M/AXLjwGSMWkb7A/TPHw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bT80dGHgneNFcLoXgUkAINi8OnBTzGI+irmKQr9bp1j3S1WF7da7l/qk3a0NWglEn
	 Ow1hFjV5r3AHPQSQFyMCJqsJLruwKeTQy+DlKejsU5EOpwlQzf78mcWWUIkxQFDWfG
	 XwXf7rPGc3q7//mVwna49NU8YFXqU0MQsAEXttP/iWOynqui8z9zgnQJRsJJimhJUR
	 7vmCUrm6B3AYMCzrDWz7WH+dHRW25uWKLo2ZzZ3t5VTlmosQw6BvPj//VxZv6EnKFi
	 HBsGL6vRr0rlsnvAcuaDVZoIJ49wKHhWQT+honrkamFq9t2eUhtC9ArGUX4VBwbJgj
	 8f7sWlETy7Y9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D869613A9;
	Tue, 18 Jun 2024 13:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D9CB1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45D4E401AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R4rmXgnVRvq2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 13:21:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 473344012E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 473344012E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 473344012E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:21:24 +0000 (UTC)
X-CSE-ConnectionGUID: c2ME6HnIT0atwUyiXO37CA==
X-CSE-MsgGUID: ZzWTJZ7KQAq8q968Y5CqmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="41002050"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41002050"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:21:14 -0700
X-CSE-ConnectionGUID: A2te/nlgSiWgiljpCu8qjw==
X-CSE-MsgGUID: 9ZfXCtzbRT+gsPyXEmTY3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41500950"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 18 Jun 2024 06:21:12 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 18 Jun 2024 15:21:11 +0200
Message-Id: <20240618132111.3193963-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718716884; x=1750252884;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wy7j2R85Pbh6Ocvt3qLCd/PJ4DM68J2wxPkzjTBaZ3E=;
 b=luCTMmq3zggm8DBfqgvd49iJgKpsaocKos+eL0SC2QsEATfU/pCwJAyz
 fAWPbyjVP6ZhenKfm0pV6GzbAjEdqXKMmbwXZsnqYIeBspTNEvvBcWeBF
 0msAkV7a8EZGSBYvZkGq/VWAusrodP1mzoG0cdVMc9JbFKg2yJSe9AsYb
 gZpMu7nOmkgDjGYFgebjya2Zjggk8OKQmczlpQBXCOeDbJirWmKY2+cXu
 wH5fjuL6DABHpS3OaYGwsu6gQXMfxwB7CNJNjiHemUWsS15yCDDnxPwye
 NiJ5aatYlFxOKF5cSkGR9WwfmqnBbv4o3ulsuubgTvXM5NgsdNA7NOjek
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=luCTMmq3
Subject: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: netdev@vger.kernel.org, Kelvin Kang <kelvin.kang@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bug affects users only at the time when they try to update NVM, and
only F/W versions that generate errors while nvmupdate. For example, X710DA2
with 0x8000ECB7 F/W is affected, but there are probably more...

Command for reproduction is just NVM update:
 ./nvmupdate64

In the log instead of:
 i40e_nvmupd_exec_aq err I40E_ERR_ADMIN_QUEUE_ERROR aq_err I40E_AQ_RC_ENOMEM)
appears:
 i40e_nvmupd_exec_aq err -EIO aq_err I40E_AQ_RC_ENOMEM

But the problematic code did silently convert EIO into EAGAIN which forced
nvmupdate to ignore EAGAIN error and retry the same operation until timeout.
That's why NVM update takes 20+ minutes to finish with the fail in the end.

After commit 230f3d53a547 ("i40e: remove i40e_status"), which should only
replace F/W specific error codes with Linux kernel generic, all EIO errors
suddenly started to be converted into EAGAIN which leads nvmupdate to retry
until it timeouts and sometimes fails after more than 20 minutes in the
middle of NVM update, so NVM becomes corrupted.

Remove wrong EIO to EGAIN conversion and pass all errors as is.

Fixes: 230f3d53a547 ("i40e: remove i40e_status")
Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3->v4 commit message update
v2->v3 commit messege typos
v1->v2 commit message update
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index ee86d2c..55b5bb8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
 		-EFBIG,      /* I40E_AQ_RC_EFBIG */
 	};
 
-	/* aq_rc is invalid if AQ timed out */
-	if (aq_ret == -EIO)
-		return -EAGAIN;
-
 	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
 		return -ERANGE;
 
-- 
2.25.1

