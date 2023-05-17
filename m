Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3D57075B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 00:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4A39841B8;
	Wed, 17 May 2023 22:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4A39841B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684364340;
	bh=tSwxfHg8AkvgY/E0KfTs5igNGxtFkONoPFy2A8Bx+Pk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YIH5ypgUo0c8k4TwP0BSHQeAp+2V1uPRigTMVqjwWqNrQVfRvH6cPSa3sA24RDDOu
	 jDLj0fQO4Rqs0TFVJ06xjKHuFDamqVfYfCX4e4vTmXpk//HB+OU8m/tNN9KiaL7hOm
	 hoiAm1rEniAimKpz+zF3+UMjscYujxoUjzgxWc7Wn675xCYSaqJO4cyWVGTG0k9XaF
	 75qiCy3qywadlEE5gdALeS4OvYBGd1UB2bzG4R7t0hzrfihoBgih0lVB30HjNwcnJB
	 UZ0bAEC4bhP4iHy2C+a74FA70+YAtTUm56lCLt/Lu/z9w+vm4Ne098KZ8hM6U764od
	 xAyNG/EnYKsKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aohp_yfAGa2t; Wed, 17 May 2023 22:58:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F72B8200A;
	Wed, 17 May 2023 22:58:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F72B8200A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1895D1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E23B442A45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E23B442A45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yhKDvJKcY8Ti for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 22:58:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C47440145
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C47440145
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355078633"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355078633"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="876201320"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="876201320"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:49 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 16:00:18 -0700
Message-Id: <20230517230028.321350-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684364332; x=1715900332;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LXnf1voCu6ioO/BHn8L+wma0kOtBovm6dRBx/wBRe2s=;
 b=aFoolhq7ysV/0EsakMZwS1Dz25vsht6zpwWFPDMtvPp+XPzAGcdKWnR9
 3x5kehigUCSpk5F50FHClYOlz0AEY4WozH86WwcMgIZCnosvm0qKcnjt6
 EqUTq+p098wX8tghpgGmaImxMU4OwUrnm3FTRr3aixbAmDk1KywcMz69G
 jBhGCOOdMLDzEADZ+L4DgWficqC2TsWYE+wGp0T48+pbg2xbnrqiRqC6c
 xHW7ASy/ViKNJT5axN6AkU3f0jKx/oWU9JOz/OXCbdLNirn6vaQDqwNM2
 +ujMoPNPD+DPa4UzD/0odWRq+H/bavMGl2ihUyojzK/wN3JELqTYtMAb+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aFoolhq7
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/10] ice: Implement support
 for SRIOV + LAG
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
Only Active-Backup mode is supported and only aggregates whose
primary interface is in switchdev mode will be supported.

Additional restrictions on what interfaces can be added to the aggregate
and still support SRIOV VFs are:
- interfaces must all be on the same physical NIC
- all interfaces must have the same QoS settings
- interfaces must have the FW LLDP agent disabled
- only the primary interface is to be put into switchdev mode
- no more than two interfaces in the aggregate

Changes since v1:
change first patch title
added cover letter

Changes since v2:
fixed attrib for one patch
typos and header format
broke dflt VSI fltr code to a functino for re-use

Changes since v3:
made ice_lag_find_hw_by_lport a static function
fixed a cpu_to_le16 issue
during VF queue recfg, skip unconfigured queues instead of stopping
correctly locate resources to reclaim nodes on UNREGISTER event

Chaqnges since v4:
Remove pf_rule boolean form ice_lag struct
Refactor creation/remove of default VSI filter into function
Correctly reclaim sched nodes on driver unload
added err message when failing filter creation in reset path
return a u16 for queue count
eliminate unused variables
typos in comments
Adjust some patch content to avoid "defined by not used" from
  defining things before being used
Rebased on latest upstream

Changes since v5:
checkpatch hit one-line if block that changes to multi-line on later
  patch
rebase on dev-queue and remove 1st patch that was accepted individually

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
 drivers/net/ethernet/intel/ice/ice_common.c   |   57 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   50 +
 drivers/net/ethernet/intel/ice/ice_lag.c      | 1912 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lag.h      |   34 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |    2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   26 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |   37 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   21 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   89 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   29 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |    2 +
 16 files changed, 2193 insertions(+), 131 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
