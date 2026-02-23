Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIFZBa1knGkoFgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 15:31:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05590178044
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 15:31:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7D3640822;
	Mon, 23 Feb 2026 14:30:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uekfjnSEMQ7Z; Mon, 23 Feb 2026 14:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62C5B4083C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771857056;
	bh=GXTr5LSS9KHqo0lu7bIMNJ/WMdAd7khGdmVGvSGzPcM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Pb7Qo5am2oAesKwYhJCn4+Arp+7n5KTLJU+FEDjsh0WMH3RDSgs438EZk1YouoCY8
	 wHH7NNgB6P0ZH6NHuDYTnDV+WqTn2XDzcNMAErEC87hEXcGEKqiUF+5hL/rL9eXRdC
	 B8sHt8buqYpKOrY9eZ92ACm4yu8E55sMGGou66ewL9VMoPU/t/9WtDMrgi0F6tkOoF
	 LunsricEX0yKdtXE0Av9bmaLfoE34+eF3zLoDBkjTtQISsmHPtLH38jfCe8/ZCZcOp
	 Wp+rgG1yLdGZ83jTWC/VNrXZ09yjMXSzi4FG6oR/Z3VT1M09s7fSXMQ2Y+vuCG2mOv
	 TXlc47Z02oeaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62C5B4083C;
	Mon, 23 Feb 2026 14:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BE25E249
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 14:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3CF4400A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 14:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KPT35e59rNkn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 14:30:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C406840029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C406840029
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C406840029
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 14:30:53 +0000 (UTC)
X-CSE-ConnectionGUID: 8GbaZ+DQSTCWi+eqH8en7w==
X-CSE-MsgGUID: y8Y19hAVSrSDNTpsVySMjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72061137"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72061137"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 06:30:52 -0800
X-CSE-ConnectionGUID: 5L0wxdfrRy+XNyQYOtxE8g==
X-CSE-MsgGUID: vvogyipbQ1S3Nu6ppaGaRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="220574764"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by orviesa005.jf.intel.com with ESMTP; 23 Feb 2026 06:30:50 -0800
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Mon, 23 Feb 2026 15:31:55 +0100
Message-ID: <20260223143214.241797-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771857054; x=1803393054;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OJi9lpGzM89oH9Z8nNCPiZuO5Ihla7QNdmtPLvDfI14=;
 b=c/jY77n2WfpQ3ScIgGi2vwFs3QP/pGPJ3vEOiC+FNN016TVC18JgTwcq
 0ToSMJripgY0oyVGZkN7+KVtan1R3ZrsZupSxmC1EKCVsuFrPXbvnYDd3
 c5sWh76AOLs2fhXjfhwBoe/2I8jbWfCFRTqgwb6q6r4/L1op0PVN7yeMd
 gScCvHW2esvHpGNRwV/SdN79bfheIyE/+OtDQnDi6KZ9NCjAGEtqDQZyS
 YinZSXQjtOQ6KSgZ9+bhgfYoQ7hPI6jGZTk0pY6RWfXwBepb7Yr0fpnHI
 KNS2CiAmafP3+MTVGGhKe4b2SkBWXiboFynEkOtF3JaTUjFTI+22EV33l
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c/jY77n2
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.983];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 05590178044
X-Rspamd-Action: no action

ice_dpll.c: In function ‘ice_dpll_init’:
ice_dpll.c:3588:59: error: ‘%u’ directive output may be truncated
writing between 1 and 10 bytes into a region of size 4
[-Werror=format-truncation=] snprintf(pin_name, sizeof(pin_name),
"rclk%u", i);

Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin discovery")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 73a4e28ed75f..f101fdb3e9cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -3532,7 +3532,7 @@ static int
 ice_dpll_init_fwnode_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 			  int start_idx)
 {
-	char pin_name[8];
+	char pin_name[16];
 	int i, ret;
 
 	pf->dplls.wq = create_singlethread_workqueue("ice_dpll_wq");

base-commit: af960c69349a922fac3b4fbdb42e118a35c8700f
-- 
2.43.0

