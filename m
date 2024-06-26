Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B6A917D30
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 12:04:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC88F80AC7;
	Wed, 26 Jun 2024 10:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrAieYYbVSXE; Wed, 26 Jun 2024 10:04:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1340C80AD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719396266;
	bh=8QqVE+Gv5FhBvkU/fXcWacCn2rAAwntVLyLJyKvj0HU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lGbSU+mjFEunozdFu/01AWulbLQgcBkV9s6N9JEMrSEJ6DkuLS7Q1zBxaeuOTGO7X
	 HbgX/Mw29G3PJrPibCK/8bw9QIYd1JzCvFBHTKhsUW6oa2nCRZiR3xfWwg7R5gQkPJ
	 +F13aS1koXFazSUOvVgk6rViN74Vbxr9jpRkUBEAen5+fNzkte1jvKu/9C4QxAXY8r
	 UkGR84d5HgkKpZIEUYS8s+mLlibXxjid5Ej/8lPS92Y2Ra6N8nnL5LBDnCaV8jfIpA
	 7CZxNL6Cmrgeuy3gJQlv/RS/A8Ia8s8qZr4FoPA0sa/mo3hA5fPY9309s4wMAsJjZt
	 ku2TTI4CeGJRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1340C80AD6;
	Wed, 26 Jun 2024 10:04:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83A871BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F99580AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RQMZKUtcZQxJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 10:04:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B62B180AB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62B180AB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B62B180AB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:22 +0000 (UTC)
X-CSE-ConnectionGUID: q/htN7mLQgKRlpu9z3XmgA==
X-CSE-MsgGUID: RZQGKWo0QtO9RH0CrgRZ+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="27145086"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="27145086"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:04:22 -0700
X-CSE-ConnectionGUID: DS3510ETSKOPSRupHyzOVA==
X-CSE-MsgGUID: PsNyLdluQAmLNKnm9WKPsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="67162091"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa002.fm.intel.com with ESMTP; 26 Jun 2024 03:04:21 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 12:03:03 +0200
Message-ID: <20240626100307.64365-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396263; x=1750932263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3HBoWOKl6SbY13vd0tm05QnlOYhyCgkxJmDDKHhVy5E=;
 b=PgiE2cnHalRVSfzqw8wJeDeZ7oTRpUHsV8r/CBe9W5iufSlPeRLD6N7E
 x4Dyqf7JTjwYQ31UuVgsvDNeAahU8BYC0NVybEK1vCFwE9FZfxAAkRj98
 yHKIQwDLtziuaKWc0xbW4fjNztLHgcERE1ZMPEPotFhJ7DAP/10xJoMxH
 jqceoZmGvk2DEKLrrS/QyQnvmF0vQE6LvRU8i0jICaoomrQ9opMshS3sP
 8MO47HLf1AT1qho0zFJGVlOkzFyZ4Z0HAeG0/76FTmiG9fpDAEzB0w/lv
 KEcAhNvaXpOpSy3ynqBZ/wfdD6FBSr3jLV/GhR7+SNxXz3WZQiZxJ0RL1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PgiE2cnH
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/4] Replace auxbus with
 ice_adapter in the PTP support code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series replaces multiple aux buses and devices used in
the PTP support code with struct ice_adapter holding the necessary
shared data

Patches 1,2 add convenience wrappers
Patch 3 does the main refactoring
Patch 4 finalizes the refactoring

Sergey Temerkhanov (4):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
 drivers/net/ethernet/intel/ice/ice_adapter.h |  21 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 338 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 111 insertions(+), 310 deletions(-)

-- 
2.43.0

