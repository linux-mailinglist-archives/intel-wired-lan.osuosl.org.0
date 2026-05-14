Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLuiOKr+BWrFdwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 18:56:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C42D544F9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 18:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7A008283D;
	Thu, 14 May 2026 16:56:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlpWDJsZu3sB; Thu, 14 May 2026 16:56:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 622B582861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778777767;
	bh=tiakYppZVea5Yttxl4LJznMfa5RmzBiH7EQwmDTXBs0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PvmuUErDEUcsWvNS45ZvHv6/R6Ys5dkl7PlGZ6gArQQhLKVv8SK6orur/8Fk3NyXR
	 F2fi6yJAoZjVXlT0GgaUp2wcjiM4d2Qc/dtH0QmuXHmt1gSj4y25ZAuVjmQfDRFfAn
	 0wsH4wbWKOvIIgT7j4T/xrNdxji/gu8AbtLU/OI0mDslvmf5fimNDG+5NTN8FxTduc
	 C3nm3em5m1pJB7smjKNBj3RNeMJMzaQTCEcy/6LniGN8VE4FZ11KNUKCHxL7guZvj7
	 db4KKC7cmS/40pcjD0MSIV62SLlWDqjK+jqtUKML4HXplvOMoXKsAeHzbu441EeOMd
	 eYYvQvCcpGfzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 622B582861;
	Thu, 14 May 2026 16:56:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B590937D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B54040771
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:56:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SlVyeIfjorWG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 16:56:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E62124076D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E62124076D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E62124076D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:56:04 +0000 (UTC)
X-CSE-ConnectionGUID: EMQoqti+Q++Y7/RD45m/Tw==
X-CSE-MsgGUID: EoWlUESNR8iveohl3g7frQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="79844624"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79844624"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 09:56:04 -0700
X-CSE-ConnectionGUID: 4aFh++A5RgKwHikKC+LKNw==
X-CSE-MsgGUID: gKOUc+owRy2SP9DGAgxAtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="243409539"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 09:56:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 14 May 2026 09:55:21 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yWM0Q6CMBAEf4Xss5e0gBr9FeMD0CseajG9KhjCv
 1v1cbI7s0A5CiuOxYLIL1EZQwa7KdBdmtAzicuM0pQ7s7U1DVfyMtNdVCX0NDfkWFMc3+QqfzC
 +2lvbMrL/iJyfv/YJMt0ocML5P+izHbhL3zLW9QNmiZbmhgAAAA==
X-Change-ID: 20260514-jk-fix-missing-xa-destroy-d3f90f3711be
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Michal Wilczynski <michal.wilczynski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=2316;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=h0vIxQW1o/CHC8BrmUxr0KArHGEjC6lk0b9gPDhmLU4=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhizWf9O/M2Q0P81JuPldRO1jfv8Ewxzuf82vIlwnyC33i
 53GmyDcUcrCIMbFICumyKLgELLyuvGEMK03znIwc1iZQIYwcHEKwESOqjH8r3a6e4lLZclMt4Z3
 WSZOjtp/G6q8FJX3mxtkLf5evXrdGkaGHx9TQ/pXXFj6x/up4NHlug0cZZ4ib+0vtUVIpGm3/LF
 mAAA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778777765; x=1810313765;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=h0vIxQW1o/CHC8BrmUxr0KArHGEjC6lk0b9gPDhmLU4=;
 b=iEOHmK+j6lDowGZ97fBox+s+SNqEUBLy6m4SacGpLnUF+SfVgcZrjTRP
 0b+zOxWQD1o4l+xvs+PkKbnRSxDsbvwoT4tHD9ImCq/uhJKZvQlCCD4Iu
 6MVYBomFKzLXkDYzhxMYvL8Q9M2wt3yroeQaYB6aZKyzuF6tDeAXypGEN
 XF2V4MlN7yc27z/p3tttbmF8BOx0sh4xvmViJ6VRbSNktVjdkaZIZGBDB
 c0iv3END09bsiuY7dUjCYIDFrRcucBh0+HtW1LV0SeFUMVJ+0WzfvzAjI
 RUCOT/2a4oMuEMe9sPf+8c9/u/gidHq/U0llSXLC+QaIx8kZcsKLsKF6d
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iEOHmK+j
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: add missing xa_destroy for
 sched_node_ids
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
X-Rspamd-Queue-Id: 3C42D544F9F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:michal.wilczynski@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Commit 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
added a sched_node_ids xarray to the port info structure, but never called
xa_destroy on it.

Since xarrays can allocate internal memory, this can result in a memory
leak even if every element in the xarray has been removed.

Add a call to xa_destroy the structure during ice_deinit_hw(), and one to
the unrolling cleanup path during errors in ice_init_hw(). While here,
remove the overly verbose comment explaining the nature of the
sched_node_ids xarray.

This was caught by Sashiko during development of unrelated code.

Fixes: 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index b617a6bff891..38d0d7e59494 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1051,14 +1051,13 @@ int ice_init_hw(struct ice_hw *hw)
 
 	hw->evb_veb = true;
 
-	/* init xarray for identifying scheduling nodes uniquely */
 	xa_init_flags(&hw->port_info->sched_node_ids, XA_FLAGS_ALLOC);
 
 	/* Query the allocated resources for Tx scheduler */
 	status = ice_sched_query_res_alloc(hw);
 	if (status) {
 		ice_debug(hw, ICE_DBG_SCHED, "Failed to get scheduler allocated resources\n");
-		goto err_unroll_alloc;
+		goto err_unroll_xarray;
 	}
 	ice_sched_get_psm_clk_freq(hw);
 
@@ -1146,6 +1145,8 @@ int ice_init_hw(struct ice_hw *hw)
 	ice_cleanup_fltr_mgmt_struct(hw);
 err_unroll_sched:
 	ice_sched_cleanup_all(hw);
+err_unroll_xarray:
+	xa_destroy(&hw->port_info->sched_node_ids);
 err_unroll_alloc:
 	devm_kfree(ice_hw_to_dev(hw), hw->port_info);
 err_unroll_cqinit:
@@ -1186,6 +1187,8 @@ void ice_deinit_hw(struct ice_hw *hw)
 
 	/* Clear VSI contexts if not already cleared */
 	ice_clear_all_vsi_ctx(hw);
+
+	xa_destroy(&hw->port_info->sched_node_ids);
 }
 
 /**

---
base-commit: c78bdba7b9666020c0832150a4fc4c0aebc7c6ac
change-id: 20260514-jk-fix-missing-xa-destroy-d3f90f3711be

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

