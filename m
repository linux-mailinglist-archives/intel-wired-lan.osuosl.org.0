Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE396737444
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 20:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 000DE822DA;
	Tue, 20 Jun 2023 18:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 000DE822DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687285963;
	bh=+hjNcM7ThElIstUd9GhMDysvqrXJb2chvb0GMM/4EUM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jf3d1D4s5d4OAvAInhgb6hc720I+roS2DNNvGP1ptr+BOaBORtdwQObidkh3Fe3YY
	 6G96K2ERoXS/tDSJR2DimuuoMel0YtS81f1eM9qxX+OTw76dImwfIQFPwu15PrGw4s
	 zJHEtuI2COpNS6k9YUK+2W6P0FuB6bEN6BhWo0LV2mERRbkSy9XWQHj0U9gWWkCCZp
	 NxuBflD0lGuEi5CqIi+V7444XL4pKeaMvP7mcVIwGgq/OYC2/Zii2SJSrvcb9UkbUd
	 A9UegD3jhxL+vRwbT+7ShfPliKLdU828beOqVD28F9D72+UvfMg9zdOiBen+4hZBLu
	 KjlRt0/o6bXfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p13R0uaxcz9b; Tue, 20 Jun 2023 18:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4ED482144;
	Tue, 20 Jun 2023 18:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4ED482144
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5C411BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A93A160F14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A93A160F14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFpaQEUpDjol for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 18:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93C4360AC9
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93C4360AC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="425907894"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="425907894"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="784204376"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="784204376"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:32:33 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 11:34:04 -0700
Message-Id: <20230620183414.848016-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687285955; x=1718821955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/2RUvnVW4euNOUYWTQs6Tw9KUDeZCDqcSfjaSHVqi90=;
 b=HMVh71DHYS4svAImHLI4xxxNi9k0EzZfCqzvKbVpFLpIemciuXQUeCZi
 5X4rhYGkdQBVrLbNPaS9MkMUgOZ+EvwBnfgOl7dIN8WWSHkhLy2An2+PZ
 lrYsGrbGF/jPmJU+9/xeJZMyMAUv0bSh8LPBjTidyWNcvln4deLPz6Lma
 EXK0lTDnVib7Z7LeJYHXLoSicphh/L4TJDftsg//Xp/YLip/ftGeVjoxQ
 YFtvHpvB3Agg8mtp4VA5xuhzlKWCGOPYc6cvDr/+aOFMC6nKkiXDrs75C
 pCL01cfFOoXEbucmFUaUjoeC5cZbpT3/pKHLA5HD2z5EkS24Y/iPvftfN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HMVh71DH
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/10] Implement support for
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
Cc: netdev@vger.kernel.org, bcreeley@amd.com, daniel.machon@microchip.com,
 simon.horman@corigine.com
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

Changes since v4:
Change module_init to use goto unwind approach
Change function name to be more descriptive
chagen variable to be more scope specific
Make sure non-feature specific functions are still performed
Free correct memory
Fix typos in warning messages
added check for invalid TEID in queue cfg

Changes since v5:
use PF from lag stuct in function
remove extra blank line

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
 drivers/net/ethernet/intel/ice/ice_lag.c      | 1840 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lag.h      |   34 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |    2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   36 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |   37 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   21 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   88 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   29 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |    2 +
 16 files changed, 2125 insertions(+), 135 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
