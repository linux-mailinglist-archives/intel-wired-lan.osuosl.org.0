Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 999AE731DB7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 18:28:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BFC583F7A;
	Thu, 15 Jun 2023 16:28:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BFC583F7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686846482;
	bh=8+kSGN3CPmAW84b+KjJ8wC3/MleFoa6TTagujUtLfYQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=c91cCe48fpebrFlwsYyi+70Wb1Vkfkj9nzkPKXIYzdY/QVp0b16UFPoPhWOUqiSH3
	 0yAdoq43W65cpPDJEEhMF3xuepmGxCT+QBlppNaSfRkE1MYllOQ7Tohn6mhKo0T7Av
	 orHb0NrYiyzmw0kFbsJBb3ApH03ihNYqmtPUxtTKvSpLlQIOTdud+HIIXEiUNxFmWm
	 rpDzB63KutE/EjVPELH9EVAGvgtiTWeNKE/1dZHDD5yoFmkLiccgf7h4aQw6hNJU7E
	 MLZSa5mls4k15a1dwD0QRrxCztAiFLI537lNk4s5cpIfKpfwVjQWmKMPSjTB6cfhmy
	 ZvuVkl7HemPzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6VOJ7XV4RZo; Thu, 15 Jun 2023 16:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E554383F1E;
	Thu, 15 Jun 2023 16:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E554383F1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97AB31BF23B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68B1241952
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68B1241952
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9HBFGtd7NATI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 16:27:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 227CE400DD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 227CE400DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="445336149"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="445336149"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712513709"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="712513709"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:52 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 09:29:22 -0700
Message-Id: <20230615162932.762756-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686846474; x=1718382474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G6UNyjJF8WTUj7mm8NgppQ6B/oOSfmBpY6MsN3vpZEo=;
 b=SxcMVqJYKN/xr59lHF17gGSHIa82WOLOQZK322lNEim8jRM7o2zz+Sod
 +8BH/WHYAx/XFoLBbHH1bE+xCFXqRrNbkxgkRSzNWk08EeDrvT2BbAyEE
 cVlwxLLujMjHv50WLXNQfMDo0RYpUPsrJikW2QInm9KtxomwSHpJPA2+U
 rlO6I+Ieqhn5jfs3wHWrX1I4DDz9zWX9HUVt98DoYhJ2L+WGvnXsWRs2j
 YpMosmbV2o5jSL4+pJl6sSGY4e/34oPw5CQBk4AijOZCuChmEXmNT1Wnc
 bZHZz81a2X0BmbMDdGINMPH4XxPhgLNcWdVXCSun/pXHvwkpmhDH98KU4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SxcMVqJY
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
