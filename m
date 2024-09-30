Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF9D98A197
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B11CE60659;
	Mon, 30 Sep 2024 12:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6rgjpGJhmiEC; Mon, 30 Sep 2024 12:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E17A36065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698235;
	bh=pUjg8DqCNDz9SuRro+wsi8wjqKeMwMTIuJY2bUyycxE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vHpQ+4SIKJQQAA4LZps+Arx7uJSBpDSmDv6lbaSnRAZKCVc1PC+StuLuairJEu2vw
	 1sguxbBMyyhg5A5FdHJjh8MqlXMUbqvVCfpshOd4/NDk+Dp7PYp66Ll4L8BkVJ8gN5
	 5xgKjZjIQ1gvN2M1JQgEiAw6FwoFZz1yx+3Yte7S4l9qN9gdv1paUZn4DERCHqgR3j
	 RVuYZNQA1FV5lWKIloR7DWqUTXFfgmMim53J7mgwpCXH/R5YqdpWggqkAIHFfBf6N4
	 3tw/mIARBAsmQztvvyGgJehBsP489hr4qbttmVrOwYqXSW4+neT12oIBJgQloblsgJ
	 CzbN2/VijpExg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E17A36065C;
	Mon, 30 Sep 2024 12:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E48A31BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2A43402E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gm71NEuxH1zS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:10:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EBE0A4028E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBE0A4028E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBE0A4028E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:33 +0000 (UTC)
X-CSE-ConnectionGUID: 7Vw2vZydR6uBzIxVDvOiGg==
X-CSE-MsgGUID: RfLtGYRoSDG7Ap8C1g+NmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26736080"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26736080"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:10:33 -0700
X-CSE-ConnectionGUID: u/dZoYUsQcWDgW32izf7IQ==
X-CSE-MsgGUID: axkbeQUSTyqgiCHVUo+dXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78037007"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa005.jf.intel.com with ESMTP; 30 Sep 2024 05:10:32 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:08:38 +0200
Message-ID: <20240930121022.671217-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698234; x=1759234234;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EVp5Bjy7cfQCWkfP5W+N65KqXWcsmRo+GTh5Jlgf0j4=;
 b=FrBxq51UKBwf6eB/qvnLnySRvJ3FJLA23yb0xni2t/DXXSZvLRcnPScn
 AdnrzCwxF3QXdJpBWCS1BqkPlytMM2gl4aNLj3K0xRUjx+mz5YgPwmv3r
 pOMVnFvOfUtTY0Ga1BxkjQUjfvjP7zBOiVTlshU4AK4hwMMMRkoMlBjF8
 HuH6voQ15IpWXnYfKaYKN1xitrNRm1bHvr3VjhKdcxob5eB2eEeqb9McT
 5NC14rNow6nPp5lDig3yyIMHkDe2EQ2D9SZmaSo5dqLUnNQDjsbiEFQW/
 QtbevDX52ZiHwSGkf6wKWjRcvjU4o3YApnzHw0GSE8C0GhybWOWz9CuB/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FrBxq51U
Subject: [Intel-wired-lan] [PATCH iwl-net 0/5] Fix E825 initialization
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825 products have incorrect initialization procedure, which may lead to
initialization failures and register values.

Fix E825 products initialization by adding correct sync delay, checking the
PHY
revision only for current PHY and adding proper destination device when
reading
port/quad.

In addition, E825 uses PF ID for indexing per PF registers and as a primary
PHY
lane number, which is incorrect.

Jacob Keller (1):
  ice: Remove unnecessary offset calculation for PF scoped registers

Karol Kolacinski (4):
  ice: Fix E825 initialization
  ice: Fix quad registers read on E825
  ice: Fix ETH56G FC-FEC Rx offset value
  ice: Add correct PHY lane assignment

 drivers/net/ethernet/intel/ice/ice_common.c   |  42 ++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  33 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   5 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  77 +---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 335 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  40 +--
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
 10 files changed, 261 insertions(+), 287 deletions(-)


base-commit: b93cdc8f443a8d1641f6cbd72349f7f877db314e
-- 
2.46.1

