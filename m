Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 190B472A526
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 23:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A420260B74;
	Fri,  9 Jun 2023 21:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A420260B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686345296;
	bh=Vvmjxu900c2cURg2ZQjhvsKljxaGL6XhW8XdkCQ7jks=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XYq38aZjh57aE8YyVFxO8ZKJWcYGRGiVl4n0fhtU15yCu4YcnI0z0hWoYIxa5Obvh
	 6m2pJWoTWM3ymcg4GCU89NWUhxWtKdCHPn/j/sYNyM7la7aed7aCfcxGLj3rT+61GW
	 Cs/qNq3txzWw941V7D+eJudgxPLjXxZ1tamoJb3KCx8H03m9ZMwyTc9bcGbGNk3VY+
	 /mH6k1sGLcr5zOTO549qH6AUwazEoaxNO/dJUjZnh2emToME1gY5GqJ2i+/sj+kH+n
	 WjPwRnzet+/rJ1unOYkJoS+3XcnzUSyxr1ASboJo1KZ8jsQMoiuZ+t6TecotGo51DX
	 sVcfnJKzEhQ1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDWjh5FDm0hm; Fri,  9 Jun 2023 21:14:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8421060A99;
	Fri,  9 Jun 2023 21:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8421060A99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3AC51BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C339B425A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C339B425A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Jvh5a6oAjrQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 21:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99E6342582
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99E6342582
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="356583161"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="356583161"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="823194625"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="823194625"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:47 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 14:16:16 -0700
Message-Id: <20230609211626.621968-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686345288; x=1717881288;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HE1En9fMHWA5auIXkIDZPWVLYsvZa/ipTFl2OoW6SDQ=;
 b=ikoGcz4vF60zxRXNHMntpK71JhOIeKdDEx0Ytt42dIsr7Jms9pV88dR5
 DZAV4m/Y7NpDBjXKb62XhNu9gFrME58aT8kx60g2WIyKEJSrifWUVVL1L
 BSb2xLJSS/U3PXdaws3jd8yX8RBNIhqEK16xlVSU/08GiCE3zIOOTrOlu
 scId8gMf15YRvIW19m+JeK7vl26M+Pm1Fo6Goxth+OMkyC4xCg5DrNXq0
 hXKHk5kjsmHIwSgR8Jr4/1RdmoTXFEExB/wTCTNQeMdebyvVrFA1iq3E7
 us0IqoZw2NrgqDopkXsg4s4CVlkaWXYgNj/O4j/bJKZf9e3GniK4ncpI/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ikoGcz4v
Subject: [Intel-wired-lan] [PATCH iwl-next v4 00/10] Implement support for
 SRIOV + LAG
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
Cc: simon.horman@corigine.com, daniel.machon@microchip.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement support for SRIOV VF's on interfaces that are in an
aggregate interface.

The first interface added into the aggregate will be flagged as
the primary interface, and this primary interface will be
responsible for managing the VF's resources.  VF's created on the
primary are the only VFs that will be supported on the aggregate.
Only Active-Backup mode will be supported and only aggregates whose
primary interface is in switchdev mode will be supported.

Additional restrictions on what interfaces can be added to the aggregate
and still support SRIOV VFs are:
- interfaces have to all be on the same physical NIC
- all interfaces have to have the same QoS settings
- interfaces have to have the FW LLDP agent disabled
- only the primary interface is to be put into switchdev mode
- no more than two interfaces in the aggregate

Changes since v1:
Fix typo in commit message
Fix typos in warning messages
Fix typo in function header
Use correct bitwise operator instead of boolean

Changes since v2:
Rebase on current next-queue
Fix typos in commits
Fix typos in function headers
use %u for unsigned values in debug message
Refactor common code in node moves to subfunction

Changes since v3:
Fix typos in warning messages
move refactor of common code to earlier patch
expand use of refactored code
move prototype and func call into patch that defines func

Dave Ertman (9):
  ice: Add driver support for firmware changes for LAG
  ice: changes to the interface with the HW and FW for SRIOV_VF+LAG
  ice: implement lag netdev event handler
  ice: process events created by lag netdev event handler
  ice: Flesh out implementation of support for SRIOV on bonded interface
  ice: support non-standard teardown of bond interface
  ice: enforce interface eligibility and add messaging for SRIOV LAG
  ice: enforce no DCB config changing when in bond
  ice: update reset path for SRIOV LAG support

Jacob Keller (1):
  ice: Correctly initialize queue context values

 drivers/net/ethernet/intel/ice/ice.h          |    5 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   53 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   56 +
 drivers/net/ethernet/intel/ice/ice_common.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   50 +
 drivers/net/ethernet/intel/ice/ice_lag.c      | 1812 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lag.h      |   34 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |    2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   26 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |   37 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   21 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   88 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   29 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |    2 +
 16 files changed, 2092 insertions(+), 130 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
