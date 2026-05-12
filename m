Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8D95JIw0A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 007FE521FCA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D03940BDE;
	Tue, 12 May 2026 14:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9TLGDAX6A4l8; Tue, 12 May 2026 14:09:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42FA140AFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594952;
	bh=HByD7dRECT5FF6NNttPS3zeqlyEPWN1C+xuDMutMHpU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uSLOjc8Tf2OIfCaa1QLnsSsT8MJEUppXWSGD0IKK5H+TJaFnPezkRHv/Ob2cqpMzM
	 sKiDFZRsajrhQxu9hGjdjNX/4MnUInVnaaF9d5S3Twe6npX9mHkGQ34AnCDGriXnWH
	 bhcgxDZKW6vhkOVMDVyk8nWAUi7GxVTDGK9r9ljq6uyB4pLrniC08cCIf4/uy0lmqC
	 8uKSPcg/dJWeu4WgjNCZ3I/1gJLsqgwpXc5oaNi8n11yoRTZ+A70k6wnWKq4Bmaks3
	 KpRmxX6ieQfycm+c40eX5uJHd5ZorwXWDdyxYSGex8hmzsiyGECdjIum+eCujBEwYh
	 hVtZKVS6cf8LQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42FA140AFB;
	Tue, 12 May 2026 14:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D75015F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AE9C60DAD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnd6JXbYbGeP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7BAD60DA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7BAD60DA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7BAD60DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:08 +0000 (UTC)
X-CSE-ConnectionGUID: BcBNqifuS9O3xrfneClwcA==
X-CSE-MsgGUID: j4dXagSjRYCcStXdH5CWqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929651"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929651"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:07 -0700
X-CSE-ConnectionGUID: pjX5sqaGQS2N5koXoX3fVg==
X-CSE-MsgGUID: Aas4KuVwRAiDUOj5bV3lxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892466"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:06 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Tue, 12 May 2026 16:08:56 +0200
Message-ID: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594948; x=1810130948;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1QbhqWzNyRHVTuQ47MMCc6rfzXEtjyZgMK5EqjaYeKA=;
 b=BsVr/nzBq3Ao4yI03hQfb6LTYrX8k7KcStOIQ37X0iEg6/kvThKIYwjU
 TjiPl/OINAYM5ISzv1Oowyb4B5mkGAzdAnszIoiuUDbzRNo+ahHjUAYUd
 ThP/KllHFEY0qgIxmf2q4B5yoapmPYbCiDNHdj3hD+jAmJLGjSCL3CUtx
 y1gxBBTmYDY/izhOBnW4YtvSLiK5e4789p1ZGmMxa27ozyjjUTSiRjJKL
 9Ey4jKPgdu3fHw4b5yY5zRvCxn0Z1PJySR5wgDft0+aybvRukw810kHSZ
 jUEXauHhVmjsfxHG+0gb1U8z8b6Pt9IXX6/eNFkH5oQ5xpp0RsjH7D+gi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BsVr/nzB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/8] ixgbe: small cleanups and
 improvements
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
X-Rspamd-Queue-Id: 007FE521FCA
X-Rspamd-Server: lfdr
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Eight independent cleanups and improvements for the ixgbe driver,
grouped by theme:

Naming / type hygiene (patches 1-2):
  Patch 1 renames ixgbe_q_vector::numa_node to ::node.  The field name
  shadows the struct device numa_node accessor, causing a sparse warning.
  The rename aligns with other Intel drivers (ice, igc).

  Patch 2 changes local error-code variables from u32 to int in six
  functions across ixgbe_main.c, ixgbe_phy.c and ixgbe_x550.c.  Storing
  a signed errno in an unsigned type works by accident for truthiness
  checks but breaks exact comparisons and proper propagation.

Bug fix (patch 3):
  Patch 3 rejects duplicate FDIR perfect-filter rules before programming
  hardware.  The same 5-tuple with a different sw_idx would silently
  consume a second scarce FDIR slot and confuse rule deletion.
  Returns -EEXIST to userspace on duplicate rather than -EINVAL.

Performance (patch 4):
  Patch 4 replaces the busy-wait udelay(1000) in the SECRX_RDY poll
  loop with usleep_range(10, 20) and raises the iteration count from
  40 to 4000.  Because usleep_range(min, max) is guaranteed to sleep
  at least 'min' us, 4000 * 10 us preserves the original 40 ms
  minimum-wait-before-timeout; worst-case grows to ~80 ms (acceptable
  since SECRX_RDY failing to assert is non-fatal and only logged).
  Typical stall on fast hardware drops from up to ~1 ms per iteration
  to ~10-20 us.

Code quality (patches 5-8):
  Patch 5 replaces ktime_to_ns(ktime_get_real()) with the direct
  ktime_get_real_ns() helper.

  Patch 6 factors the three-line autoneg-restart sequence duplicated in
  ixgbe_setup_phy_link_generic() and ixgbe_setup_phy_link_tnx() into a
  static helper ixgbe_restart_auto_neg().  The helper checks the return
  value of read_reg() and returns early on error to avoid writing
  uninitialized data to the PHY register.

  Patches 7-8 improve the adaptive-ITR algorithm in two steps:
    7/8: Limit ITR decrease in latency mode to at most
         IXGBE_ITR_ADAPTIVE_MIN_INC (2 us) per step so that ACK-driven
         workloads do not overdrive interrupt rate.  Uses max_t() to
         ensure the clamp never drives ITR below the algorithm's own
         computation.
    8/8: Add IXGBE_ITR_ADAPTIVE_MASK_USECS (= IXGBE_ITR_ADAPTIVE_LATENCY
         - 1) to replace the open-coded ~IXGBE_ITR_ADAPTIVE_LATENCY
         mask in ixgbe_set_itr() with the cleaner AND form.

---
Changes since v1:
  - Collected Reviewed-by: Simon Horman <horms@kernel.org> on
    patches 1, 4, 6, 7, 8.
  - Patch 4 (SECRX_RDY): tightened commit message wording for the
    worst-case bound to reflect that on a loaded system actual
    scheduler wakeup latency may exceed the nominal 4000 * 20 us =
    ~80 ms upper bound; clarified that the timeout is non-fatal (only
    a debug message is logged, return is unconditionally 0).  No code
    change.
  - Patch 3 (prevent duplicate FDIR perfect filter rules):
    * Dropped the e_warn() in ixgbe_match_ethtool_fdir_entry();
      -EEXIST returned to userspace is sufficient.
    * Reordered locals in ixgbe_add_ethtool_fdir_entry() for
      reverse-Christmas-tree (`int err = -EINVAL;` moved above
      `u8 queue;`).
    The same-sw_idx skip in ixgbe_match_ethtool_fdir_entry() is
    intentional and required: ixgbe_update_ethtool_fdir_entry() (the
    caller of the add path) deletes any existing rule at the same
    sw_idx and replaces it, implementing the standard ethtool
    "set rule at location N" overwrite semantic.  Rejecting matching
    sw_idx with -EEXIST would break idempotent re-application and the
    legitimate replace-at-same-location path.
  - Patches 2, 5: no review feedback received; no change.

Aleksandr Loktionov (1):
  ixgbe: use int instead of u32 for error code variables

Alexander Duyck (2):
  ixgbe: limit ITR decrease in latency mode to prevent ACK overdrive
  ixgbe: add IXGBE_ITR_ADAPTIVE_MASK_USECS constant

Jacob Keller (2):
  ixgbe: rename numa_node to node in struct ixgbe_q_vector
  ixgbe: use ktime_get_real_ns() in ixgbe_ptp_reset()

Jakub Chylkowski (1):
  ixgbe: extract ixgbe_restart_auto_neg() to avoid code duplication

Maciej Rabeda (1):
  ixgbe: increase SECRX_RDY polling frequency in
    ixgbe_disable_rx_buff_generic

Piotr Skajewski (1):
  ixgbe: prevent adding duplicate FDIR perfect filter rules

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  3 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  5 +--
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 27 +++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 19 ++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 42 +++++++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 12 +++---
 8 files changed, 77 insertions(+), 35 deletions(-)

-- 
2.52.0

