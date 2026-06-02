Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMgEI6kgHmrmhQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 862B16267CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D7B581449;
	Tue,  2 Jun 2026 00:15:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CmeQmXPwcg4M; Tue,  2 Jun 2026 00:15:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9D2A81443
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780359333;
	bh=lO1C0eCCQsGSeGazMnF+gG7WeDdAi9w5mRp6hHnO/kA=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kcq/+NMZAz9U+ygGiLMH8qbwp1v+RpUnjc2EjXW6+ulHvbedh+7+nyVKqcJpeJqOl
	 6qE3cZVrsiUwR2UKT6y23FwcaHgJy1zkQeJx0B0vaZQR+e2ReMFQTu3w6qaw9401lH
	 MaiJ3q0riYySyRAM4u/rGfRPoQEop7NG37FpXNmxWNgbh2OHw0W3VCJrTSlRtm3TC+
	 IaFFoqO2603DX9RRVLYR111Du1HpYAx5yrL682I9t3fCxyBE7/HaF/qe07IHRQLL/I
	 eRus0QnDHgt9wnH5egdACNk76SBcaAakBRv859tVOt3nVoq4bVCqnRHmPXAzkC95/t
	 rrc6yuEWdwoqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9D2A81443;
	Tue,  2 Jun 2026 00:15:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 560DDF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BCAC40C22
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FhAObayEv7ZN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 00:15:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5605F40C17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5605F40C17
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5605F40C17
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:30 +0000 (UTC)
X-CSE-ConnectionGUID: yySpRKApQmSiaubitnyeDQ==
X-CSE-MsgGUID: YgCO7uYITYeCdJG6bXPajA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84755418"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="84755418"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:30 -0700
X-CSE-ConnectionGUID: s8U0i5LzQTi1651U6eO9EA==
X-CSE-MsgGUID: 1wUnmV7rTfenHFQmfRxnzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267598712"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:30 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 01 Jun 2026 17:14:17 -0700
Message-Id: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/5XRzW7DIAwH8FepOI8JHL6y095j2iGASenapAop6
 1Tl3UfSS5Qdoh0tzO9v2Q+ScIiYyNvhQQbMMcW+KwV/ORB3bLoWafSlJsBAMckkPX1Rd8amu11
 pTpE2bTtg24z9QLveY6K1tRKMdA6tIEW5DhjifUn4IPH7TDu8j+Tz+ZJu9oRunAPm3mNMBfpZh
 smw/Hjmcr6bm4EyamsuHLNeIrr32I14fnX9ZUnL1dqr9r1q9lRgPIgavA5bT/zTE8UzNijktdY
 Q/swn157Y92Tx0HGwUjptkW89tfb275ZV8TjzdYMGOAi79fTaM/ueLl4F2pumDjY42Hpm5YHa9
 8y8P2/RC8aY8GLtTdP0CwYuNobKAgAA
X-Change-ID: 20260505-jk-cleanup-vsi-aggregator-nodes-9bb5285cceb4
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=2714;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=Np9Oy0eEY1O7hnRLPuE1Qosu3zQBNrGSuIkeRzjtgG0=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiw5hdm3l/xcHHHG93BymYrfxn0/LVzqFi+N3K0a/3k9H
 8fXihc9HaUsDGJcDLJiiiwKDiErrxtPCNN64ywHM4eVCWQIAxenAEyk1YXhv8flHonmjgKFwBXc
 q2bOf2hvdPOxeL1v6qzg87uTxBV52Bj+yu3+knAo+OqmwtvbVlxnWxbgcHhyWUqHr07Vv5tWMyX
 3cAEA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780359331; x=1811895331;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=Np9Oy0eEY1O7hnRLPuE1Qosu3zQBNrGSuIkeRzjtgG0=;
 b=fc/xpXr2Tbbj6d2LmG0+HIW/PeDRHL3eg1tXOQetWKoNX4usfxXsNvm5
 1y1+OAmXwZmBam4tXS6GCh/vAAMF56u/n3nMfqShvvQ+R692msJv/oAa9
 aOpmagCqj/T8zFNKz0KoRVevsALiqr+NiKI6kllzAGwSfOAeAsD31HBiz
 dfkCUOa4bm+L1WncYgivQW7+OxLP+sxAINRErl/XCopw3zQZlroHyO/z9
 yvUG9fb8RJoT7hR5ySsRyPkXx37TtTJBzmaPqly8t3zBPQW+j8vvOMxTQ
 CuiKf6NQ174X8mamxpp6PA+rdigOLAkIzGLeJJFYA0/JnzBL80WMbF/Gq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fc/xpXr2
Subject: [Intel-wired-lan] [PATCH iwl-next 0/6] ice: refactor aggregator
 node logic
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.925];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 862B16267CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ice hardware uses aggregator nodes to track VSIs in the device
scheduler tree. The existing logic used by the ice driver results in a
two-layered tracking approach where the VSI has an ice_agg_node structure
that wraps the ice_sched_agg_info structure.

This logic is done outside of the scheduler code, and results in the driver
having two sources of "truth" for the aggregator nodes. If the two places
become out of sync it could lead to imbalances in the scheduler tree, or
failure to use the device resources as effectively.

In addition, the tracking logic requires each struct ice_pf to contain two
arrays, pf_agg_node and vf_agg_node, which track the ice_agg_node
structures. This wastes about a kilobyte of memory (~5% of the total PF
structure size).

Almost all of the information required is already stored in the
ice_sched_agg_info structure, so duplicating this information is redundant
and unnecessary.

This series refactors the logic in ice_sched.c, converting from a linked
list to an xarray, implements a new ice_cfg_vsi_agg() function to replace
the ice_cfg_agg() function. The new logic better integrates with what the
driver actually wants to do.

The result is that aggregator node information is tracked in only one
place, preventing the possibility that it gets out of sync.

Note: this depends on a bug fix that was spotted by sashiko during early
development of this series:

  https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com/

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
---
Jacob Keller (6):
      ice: convert hw->agg_list from linked list to xarray
      ice: count number of VSIS in agg_vsi_list
      ice: extract function to allocate aggregator info structure
      ice: remove ice_agg_node wrapper structure
      ice: remove unused aggregator node functions
      ice: refactor ice_sched_cfg_agg to take agg_info pointer

 drivers/net/ethernet/intel/ice/ice.h        |  23 +--
 drivers/net/ethernet/intel/ice/ice_sched.h  |  13 +-
 drivers/net/ethernet/intel/ice/ice_type.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_common.c |   4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    | 114 ++---------
 drivers/net/ethernet/intel/ice/ice_main.c   |   7 -
 drivers/net/ethernet/intel/ice/ice_sched.c  | 290 +++++++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  22 +--
 8 files changed, 218 insertions(+), 257 deletions(-)
---
base-commit: f2047b9d846f79959cbb1fba812b967a86a3f024
change-id: 20260505-jk-cleanup-vsi-aggregator-nodes-9bb5285cceb4

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

