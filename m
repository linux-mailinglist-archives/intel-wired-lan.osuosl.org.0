Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F30AA9D07
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 22:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 586DF40807;
	Mon,  5 May 2025 20:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BxDO2XDpCGnS; Mon,  5 May 2025 20:14:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B7C3405FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746476082;
	bh=cXBrNCrJ/nxEFnAiUgcKZGOxgOZ/CMUqHp9sp+2q/HU=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tFR/DaIPaYKfDzO8BRZzT195gPfn0yfEiaeg3Gd7051nCkVvoWpJQd7AVf9Xu+Ds3
	 xydmAvTxTafZhDr2mf5MgI1qNpfQThZ+VxDOH+yzOXqN0w/xk0KzJgPMGr+zRT83ff
	 CZF8UB1PCPkrv2HNI/pWu3Lh/yBJmoX3vPGMxzriAMkOjOyaWseJCfboK+3imcw4Xh
	 UIL+Hh4lNq2ycNykbixkS2PJ0xqm/yE386Fp0B9lhlpmrtIOPmzIXa1hdTcIF6YXgB
	 HomKPAFEiRBOkGuYcGOXs4SKHMHS7M3ivUfF4KIJtpj0eSqbnftd28tBZzCqK0k8ID
	 AtjAMQagnO1yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B7C3405FD;
	Mon,  5 May 2025 20:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B928112E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 20:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9772340781
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 20:14:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHuCwkP5FYdi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 20:14:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6E5E40786
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6E5E40786
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6E5E40786
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 20:14:39 +0000 (UTC)
X-CSE-ConnectionGUID: 5Xu1VlYbSVG+6IhbNWjxig==
X-CSE-MsgGUID: o8auSsANQI+3XAFaTovtNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="65635325"
X-IronPort-AV: E=Sophos;i="6.15,264,1739865600"; d="scan'208";a="65635325"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 13:14:39 -0700
X-CSE-ConnectionGUID: gJ7iz3zkTyu5ibLBsilZ/w==
X-CSE-MsgGUID: bXwDivo5S4OnSfMzr4B1kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,264,1739865600"; d="scan'208";a="158593552"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 13:14:39 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 05 May 2025 13:14:21 -0700
Message-Id: <20250505-jk-hash-ena-refactor-v2-0-c1f62aee1ffe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB0cGWgC/32Oyw6CMBREf4V07TV9AcWV/2FclHKRKhbTEsQQ/
 t2CGzaynEzOmZlIQG8xkFMyEY+DDbZzMfBDQkyj3Q3BVjETTnlKJRdwf0CjQwPoNHistek7D4U
 2DHmphE6RRPQVGzuu2gux7xYcjj25xqaxIQKfdW9ga7+vHhhQECYXKksLKcvybF2P7dF0z2XpB
 wu6AyvBqJa5SmXON/DyZuDbB8UfCY+SnCqJulI1o9lWMs/zF2w3j1xEAQAA
X-Change-ID: 20250423-jk-hash-ena-refactor-9ac1e2b83a5e
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Simon Horman <horms@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746476080; x=1778012080;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=mAmTw853O4UNXFX6YsFjv+tnx+KBU9pCsTdd3ISM8iM=;
 b=GyLGbCI7ETRm0/5iMXTPHXKYQpGvcgJAvmKo3rPaL2Ghh4GBTN8WYpBS
 j4ROwR5euficce+8tUqyjD8buxUhjxvPfIAm/gQ2/XYZIUI3m3CD1bLwM
 kYyzogobqL34P6u20S5CpAwcRPyVHs9LdZ3HkMGTico07Tnk/8zVoRbUD
 Y05OmBWwtZX8OvDimSPXniiHYZeHHsUd2+nFvRYQJEj64gdUwa5Jb0vAb
 Q8c93zbLjUcgNVSDgAL8aM1V7uwpSGhBlsTtYZCtl8BaeA97/E8ZLkBNv
 36/W9ld7Pd5GuO7YyWKAZBmcsKoGawmcvDJL8MS79x3aMFVJnBw0aYD+L
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GyLGbCI7
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] net: intel: cleanup RSS
 hash configuration bits
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

The virtchnl API does not define the RSS Hash configuration bits directly
in virtchnl.h, but instead implicitly relies on the hardware definitions
for X710 and X722 in the i40e driver.

This results in duplicating the same bit definitions across 3 drivers. The
actual virtchnl.h header makes no mention of this, and its very unclear
what the bits mean without deep knowledge of the way RSS configuration
works over virtchnl.

In addition, the use of the term 'hena' is confusing. It comes from the
I40E_PFQF_HENA registers, indicating which hash types are enabled.

Rename the 'hena' fields and related functions to use 'hashcfg' as a
shorthand for hash configuration.

We could define the enumeration of packet types in virtchnl.h. Indeed, this
is what the out-of-tree releases of virtchnl.h do. However, this is
somewhat confusing for i40e. The X710 and X722 hardware use these bits
directly with PF hardware registers. It looks confusing to use "VIRTCHNL_*"
names for such access.

Instead, we move these definitions to libie as part of new pctype.h header
file. This allows us to remove all duplicate definitions and have a single
place for Linux to define the bit meanings. The virtchnl.h header can point
to this enumeration to clarify where the values are defined.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v2:
- Convert kdoc comment in pctype.h to regular, since it feels too noisy to
  add a near-duplicate message for each enum value to the kdoc comment.
- Link to v1: https://lore.kernel.org/r/20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com

---
Jacob Keller (2):
      net: intel: rename 'hena' to 'hashcfg' for clarity
      net: intel: move RSS packet classifier types to libie

 drivers/net/ethernet/intel/i40e/i40e_txrx.h        | 43 ++++++------
 drivers/net/ethernet/intel/i40e/i40e_type.h        | 32 ---------
 drivers/net/ethernet/intel/iavf/iavf.h             | 10 +--
 drivers/net/ethernet/intel/iavf/iavf_txrx.h        | 40 ++++++-----
 drivers/net/ethernet/intel/iavf/iavf_type.h        | 32 ---------
 drivers/net/ethernet/intel/ice/ice_flow.h          | 68 ++++++------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h      |  4 +-
 include/linux/avf/virtchnl.h                       | 23 +++---
 include/linux/net/intel/libie/pctype.h             | 41 +++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     | 81 +++++++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_main.c        | 25 +++----
 drivers/net/ethernet/intel/i40e/i40e_txrx.c        | 25 +++----
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 46 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_main.c        | 17 ++---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c    | 33 ++++-----
 drivers/net/ethernet/intel/ice/ice_flow.c          | 45 ++++++------
 drivers/net/ethernet/intel/ice/ice_lib.c           |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c      | 44 ++++++------
 .../ethernet/intel/ice/ice_virtchnl_allowlist.c    |  2 +-
 19 files changed, 286 insertions(+), 327 deletions(-)
---
base-commit: 836b313a14a316290886dcc2ce7e78bf5ecc8658
change-id: 20250423-jk-hash-ena-refactor-9ac1e2b83a5e

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

