Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34443ABE3D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 21:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B16EB610B0;
	Tue, 20 May 2025 19:39:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlg9uMaqgRha; Tue, 20 May 2025 19:39:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36947610A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747769998;
	bh=MqkUJIkoWoowzLR9KWy+F3kCAwRATwgemU29W5g2vXA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0zPPBBpNVKU+zpQg68K7ywaJalKCWWpgtJiqHUA1Cr14OETeosavke/WW4xcjB1F6
	 NXZZc7im9KbCIC8thDdRilf74OKVpUrPPuBIE26lRVZbAi4eBbOOQwIduIze/rz1p6
	 H9RDxlt9i7tS61yeV6dKPg9F7H9X1j0QHLR7UZ8Uxfqygq9RLQOK40cWPMDgWVMcgg
	 EUDBB+79b9dQsY3hiY7Dg1pIOXvTUvj095hLRDWoHkGmxkeRGXp9FknBTjF3OPgdZd
	 DS74XjSPtKpLLobZT8tbvKQPCRq750HDvD3SX1VAdGPX3Kkh3sQApiPljEVy8JaFdX
	 5uRfW/E4b/tRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36947610A1;
	Tue, 20 May 2025 19:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D78BCD4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BDDF240A83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IzGJeZIwHG_S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 19:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B32440A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B32440A6A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B32440A6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:54 +0000 (UTC)
X-CSE-ConnectionGUID: HntCVjvcS/ijwymjywerLw==
X-CSE-MsgGUID: 0wvjALFaTTWx1M/gc1gYGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="75123544"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75123544"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
X-CSE-ConnectionGUID: /NWrbBTnReiS+SZBZH5irA==
X-CSE-MsgGUID: 5/x1WY+HTaaZAlHRQTeQyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140198865"
Received: from dmert-vmdev.jf.intel.com ([10.165.17.51])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 May 2025 15:39:22 -0400
Message-ID: <20250520193930.3763888-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747769995; x=1779305995;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vvylt7KicIMw1CxdWXpQJuc9jFEfOkqRU5AF8rinTP0=;
 b=XIyPRKnH8mpz+PkJUUdnDyo0NgRXVT33v1rRcPdMFAba2Ncd1n5LeM8i
 H7t7Y6ojvMmY6oU24920ifq2LSTlAZMsYhrEUvNyNA+YNqiiB+b2kYOQU
 080DPXYWWXh4LxOanGqbrtBFtlNmG9B7qBl6gU/xNuRDQ1gdIidm5903n
 +w1EfjxXdlw+fcv4wrQOHFUErHeMUxVbyIOCk6fT/HsK/cpJZECpXxXbf
 XOk+K7WO5Wqk6pbZqSWT/u3+fKyB5PWI24eOmd1MrVA6Awr885aN+JJ30
 2Gn7s8rQd6GWRA0nhYnxnaQwwO7MS5ANnC0ARwNU8tj8zKCRFmJMtNthy
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XIyPRKnH
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/8] ice: implement SRIOV VF
 Active-Active LAG
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

This is a 8 patch series to implement support for SRIOV VFs over an
active-active link aggregate

Patch 1 cleans up void pointer casts
Patch 2 utilizes bool over u8 when appropriate
Patch 3 adds a driver prefix to a LAG define
Patch 4 pre-move a function to reduce delta in implementation patch
Patch 5 Cleanup variable initialization in declaration block
Patch 6 Cleanup capability parsing for LAG feature
Patch 7 Move duplicatde lag code into helper functions
Patch 8 is the implementation of the new functionality

v2:
- add fix for situation where VF reset is called outside of bonding
  event

Dave Ertman (8):
  ice: Remove casts on void pointers in LAG code
  ice: replace u8 elements with bool where
  ice: Add driver specific prefix to LAG defines
  ice: move LAG function in code to prepare for
  ice: Cleanup variable initialization in LAG code
  ice: cleanup capabilities evaluation
  ice: breakout common LAG code into helpers
  ice: Implement support for SRIOV VFs across Active/Active bonds

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      | 924 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lag.h      |  23 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  23 +-
 9 files changed, 804 insertions(+), 222 deletions(-)

-- 
2.49.0

