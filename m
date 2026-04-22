Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKoUCLLA6Gm9PwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:36:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF25446050
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C461A4264C;
	Wed, 22 Apr 2026 12:35:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3nF33sas3xpA; Wed, 22 Apr 2026 12:35:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC45642657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776861354;
	bh=BIa6lWfCk/wv5XroWoUbfz1ORMPEZN2Zcr1yAmkuUTs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NAmJmWr2c2US6E5ZCmFMl+MnAk1yY4MJ0QE8JaYh5qjinFLnCStTEWqZloOPZ1JWM
	 jI3aPDQj1IK6hvexxmXANVpwL4ED/SRAM8VHpbkz1WXaxiNwux+NQlnS8F87djEc+3
	 9BSBENVfx+lwHJAPqRM/sTo7ZaQxiabl0iioGvsh/+qJC+O81MGSKGG5AdcHFBvQLg
	 mT9S7jmR9m4h1blQpcHblI2wnAfciT+Z+tXGX4lcnb/dhsHyRdyyfG+z5EhuW53x3V
	 TcLHa+XfcuCAvhTmvJGu+My6TYIZojnEL+Pkbc+drR5DG8HKDNtQAFcXLkZE3QfAF0
	 iKaWXtkZyHusA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC45642657;
	Wed, 22 Apr 2026 12:35:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F31A8183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF73584221
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:35:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ifMo4K_qI_Lb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 12:35:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2FB7A84219
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FB7A84219
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FB7A84219
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:35:48 +0000 (UTC)
X-CSE-ConnectionGUID: n4Yxv2xUTqO/1yRj0Odj4A==
X-CSE-MsgGUID: mLMI56M4R8WDjsb0kqV4XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77826151"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="77826151"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:35:48 -0700
X-CSE-ConnectionGUID: xUojld6nRtKRTMQ5LXjtZA==
X-CSE-MsgGUID: t98CEG3SR5yuPoqjPZs11g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="229167424"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa007.fm.intel.com with ESMTP; 22 Apr 2026 05:35:46 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Apr 2026 14:31:42 +0200
Message-Id: <20260422123144.485930-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776861349; x=1808397349;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Rx8FzAFlkPbSNLE1tihtAPpSgQCtHK0fEk6lBOaH3I=;
 b=Ea2fniLxkkb2XlKIXg0s/D0v737h7gp/nt1sqtxhj+M97MOTffnLaQNX
 vevKnA/4itILAUjo+LF4OYg7wetpDVY3s9JJ56ntPmSeo1SCQe4M7sIc1
 gBT08yN6JIsiVRy0g9Te0uQjSD9dA7l8G3raYoQbSMroPrdYvTIospMfB
 AKYzPwKeQYSsXYN7+f9rjke8QguX9Qwtc1hDHs/Bivw6mORmwKybtIS0x
 oDvLP9FfaWWZyDFhemTrJNUfMxScMoUNb7m3PDWeJ4Jm5ClYC80UhUW+9
 z3JhnbsaWL59gd+dmAochnzyk6Qx+0vSv1WRYAnNcK8TVNkXehtZTeCMa
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ea2fniLx
Subject: [Intel-wired-lan] [PATCH 0/2] ice: ptp: fix E825 timer
 synchronization and locking
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.892];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7FF25446050
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These two fixes address E825 PTP synchronization issues in
ice_ptp_hw.c.

The first patch serializes PHY timer start against concurrent PTP
command paths by holding the global PTP semaphore while programming
TIMETUS registers and issuing INIT_INCVAL.

The second patch fixes semaphore access for E825 2xNAC configurations by
making ice_ptp_lock() and ice_ptp_unlock() use the primary NAC register
block, matching the rest of the primary-only PTP register access path.

Together, the series closes two locking gaps in E825 timer control: one
during PHY timer initialization and one in 2xNAC semaphore selection.

Grzegorz Nitka (2):
  ice: ptp: serialize E825 PHY timer start with PTP lock
  ice: ptp: use primary NAC semaphore on E825

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 24 +++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)


base-commit: 3662329d3f304a421e0230ee3913dab021ec3a3d
-- 
2.39.3

