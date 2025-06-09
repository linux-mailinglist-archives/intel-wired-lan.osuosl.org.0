Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D8CAD2877
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB63F61549;
	Mon,  9 Jun 2025 21:11:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8IpYDrHvywKE; Mon,  9 Jun 2025 21:11:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D40F6153C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503472;
	bh=U1EN+J8O+bYVXeqgWriXs2CS71JUc9AGwb7iTjfLBT0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AaXHBG3UyNC98ii/ibMM6zNbBBjw+RepxhesZey40N5N+XoGoEr8YJmF1HnDzmiEG
	 WyVYHlkoRROuInABhzC+cd9j134kOxp9KZq0x42YUo6wypPFKcxa5Fc0LL75qUnPvo
	 iJV8wQJ2gxT2vhfOV4BazRzzxyTMXmGt8s22F7RJ5ZQEWUry5qV73wvZKK13QWIOaC
	 fCiNLMW/da6FeSqc+ASpg+86ms3+UUrv+vv1GsJWDZmBPq6HzYE1fmKCRRrv5f1vns
	 mVvds23UQOEkW8cB0hLF2fSNrpOgjkpCyJt0/qx+j6JfEzkW/kGb/u0IogumC8BTxi
	 ocgWYlWmBZPfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D40F6153C;
	Mon,  9 Jun 2025 21:11:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D5261A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F29F41DBC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jboKRKIx-dzl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A98441D97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A98441D97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A98441D97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:09 +0000 (UTC)
X-CSE-ConnectionGUID: ZNwRZ74xQAaD0kUvWOqWEQ==
X-CSE-MsgGUID: rzRUjh5cToi/yArWKQdqmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703101"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703101"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
X-CSE-ConnectionGUID: aMKgD319RhG2/P/dK5qgSw==
X-CSE-MsgGUID: NJLe+N7WQOGoGVuqRMbHxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540431"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Jun 2025 15:11:32 +0200
Message-ID: <20250609131141.758051-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503469; x=1781039469;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mG0bk79r4jm/kEgGHSOUArFcsv8Wz+gC4tBCPHM0nqw=;
 b=nA93YalRTrtEytpy7QEum5Bs72wGi9gydwV9fgfXhjZ5LdU//NL024Vc
 RqqY6GstcXBWd88axhl8ya0k5QVIF3m4Vc4DvoUNwzrf60rOMFkruf+jf
 8EaeEIR+940o1/bzeQpsimYV0TVk2coy1NP2F/4bznxADc9JvT35C8BOG
 rYPfzWk1yEqK8j24n8P3t7Da6KFjC+/wAG/bF5bK1kyOHRKtmIK7OsAGE
 XvJ+4PThoPA0WS1Ue/dAEzg8DfhH107QpSFwZ23ZArffAmKdJavNIXWle
 EdTpXDhmsEfNXd6i/pDGqnztfG5dsniD26eXK39hpQAtE9SoAf1qKEGqS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nA93YalR
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/8] ice: implement SRIOV VF
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

v3:
- Change event processing order to keep state variables correct
- add check for non-NULL event PF pointer when moving queues
- reconfigure eswitch default netdev based on failover target

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
 drivers/net/ethernet/intel/ice/ice_lag.c      | 972 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lag.h      |  23 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  23 +-
 9 files changed, 830 insertions(+), 244 deletions(-)

-- 
2.49.0

