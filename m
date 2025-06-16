Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D2ADB944
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:03:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C41D808D2;
	Mon, 16 Jun 2025 19:03:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0bHb-n2oQKH4; Mon, 16 Jun 2025 19:03:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBBC580976
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750100580;
	bh=j6SdJlpMKR6Nxf7kz9r7ZFBNTTR2txl1/0jhPmecthI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qjrPvRBHT5fRa2kQQq+wlEiSjUPwuNKrPHbmdkqEt0WY165rlmZ6SdNFRMoGs/CfB
	 aKZSic/rEG64E6GxtMJRjGMi2TXLRIPLjeaW7dA6k+QhbFZhtMVEN/pjX3+QrdJkiK
	 49JQMy6PS04N1qjNDQDS1Q+Zth5t6IGSkhyzgbBHcS312Wf7lsPI3+wrvscuvJEfyp
	 igrTRgD6gYMSg7DZfLf4ngoqFDw3Nm6O+R6VPGGkI4Myr7zFLlBIG+MeYheJSjAr+s
	 g8/gJ9cjy+Z5gMYJl1QIY3U/5CuNF+MUoJtexGxCBOUXWLSWanumbZ9Md8WFVWcprW
	 QvHER1dWbeo7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBBC580976;
	Mon, 16 Jun 2025 19:02:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3184CCA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1709980890
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BpDUeQ5W0i_u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:02:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6463C8084A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6463C8084A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6463C8084A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:56 +0000 (UTC)
X-CSE-ConnectionGUID: jib4cqrkRcSZpotxpy4HOw==
X-CSE-MsgGUID: 9i1dOW2ATs+4cAD1QGrWzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52122665"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52122665"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
X-CSE-ConnectionGUID: HygsQyIpSNyhKMEcrfUFbQ==
X-CSE-MsgGUID: +WjY09e3Tl6hrs4SdInPOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153513095"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Jun 2025 13:03:15 +0200
Message-ID: <20250616110323.788970-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750100577; x=1781636577;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wZrsfiLbZMfJSLKnmEOMoXu8X695XH+bKVamASUdmdY=;
 b=AsfnbwFuhPGJdDpIQlzVjlO65C/7Y5wMtvlZRO+LQvEvbs0uxixp9lF0
 2Z1HXral2MVZXWZbjzGqg7Uo4w4VbEG1TN7U/hxnMF90YYJ3xLhpZPpoB
 LqI+I1SJ0+HcWHaQJCxNyE3leqf5kzqsM1BH/2fiFE6AXhIroKkDrrBrm
 kvgWPfz1F5q+ENiWtOkE2k6ciUcryBDAUKlzrzb/BxPGsUoXZ+H5TBMJm
 7SOtN/6zx7tYJZCGRMIgBiDFnu9lKVJke1J7t0yc40C/c/auaRoXP6R3H
 VYYt/CdBw3vcwsAx3RRuGZ0TyQNPplGslrPglf+qOTqiPiuWwqd40C6X0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AsfnbwFu
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/8] ice: implement SRIOV VF
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

v4:
- use helper functions for main VSI
- config eswitch for active port
- move eswitch config funciton to earlier

v3:
- Change event processing order to keep state variables correct
- add check for non-NULL event PF pointer when moving queues
- reconfigure eswitch default netdev based on failover target

v2:
- add fix for situation where VF reset is called outside of bonding
  event

Dave Ertman (8):
  ice: Remove casts on void pointers in LAG
  ice: replace u8 elements with bool where
  ice: Add driver specific prefix to LAG
  ice: move LAG function in code to prepare for
  ice: Cleanup variable initialization in LAG
  ice: cleanup capabilities evaluation
  ice: breakout common LAG code into helpers
  ice: Implement support for SRIOV VFs across

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      | 983 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lag.h      |  23 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  23 +-
 9 files changed, 841 insertions(+), 244 deletions(-)

-- 
2.49.0

