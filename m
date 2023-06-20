Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AA6737762
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 00:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B758661392;
	Tue, 20 Jun 2023 22:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B758661392
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687299692;
	bh=LvxoOC6pmTg8h6cfEGKJFO866MYyS1oBZ+fu+L2WXpc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zM5/7Eoysg0mpX6dZoGkc4kfEhcbeDLk8Y1KApAjngnEAlEvFWmTrBFc4l/AijPl0
	 hzDmhu+3LV9PeLZ/dHzLzAxPfzgL++X3Hw35E+Zp4DQe6iJm0txOGvoMOj/qQcBuij
	 ibbv1kyEI/XWofp/xpyntckZaLw6pvFJuXlVNajZPlBcp7hIzczCaxNf+qAOw5v8rq
	 EMzNAORhjek59poBlidNQ3g4szgnAsV10U65fD0M+hMdyJCQnceiDuwQvrn8ux18nF
	 uetPPxZW43txAOyKjBp12gunlsqVNlX+Uk+1EHe8RPIaJOB/Hm9N3HgQc9/3f+N0g4
	 Iuslgpz9GQEMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ro52lBJmFPGx; Tue, 20 Jun 2023 22:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6258A60AD0;
	Tue, 20 Jun 2023 22:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6258A60AD0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76A311BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 22:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5726B41793
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 22:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5726B41793
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pw-2V7y5d3jx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 22:21:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEA1D4037E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEA1D4037E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 22:21:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="358869090"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="358869090"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 15:17:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="858744946"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="858744946"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 15:17:16 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 15:18:44 -0700
Message-Id: <20230620221854.848606-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687299684; x=1718835684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y/bkpUWpe2v3pbY6MM8FcxrxticWewloNX2YnOTTYNc=;
 b=Ml/GEIIQKoJ18k7EK4GEA4/h+DcOb8vevuT2HbAZ3jDQ8QHCJFEaw4/w
 ic5IQd7HLAtTk45wOJnELzCz3Rzh/kBwMCJ5bxcgm2/AbPC0Q9sBxGWRs
 saJGbZboz4hNeJT4TDRnIsE20dyXT78ZQ+1dXogxqD/hWk8Soi7PkN6TY
 l6okLwWWaBPpPjZ6EDH+AV8gReqh5YghbRJTifHF1G5yAbIEqj1cy2nWU
 ioF9e6jtkvgzU+w1hwbV6fzmzuZBec+OuqXXCInihClecv3+msnVwdanT
 erYDYbGOnJjWlrYcZG3ikrMhpG5rg3muXz6vdwWaphogAn18ereIIDXYU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ml/GEIIQ
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/10] Implement support for
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
 drivers/net/ethernet/intel/ice/ice_lag.c      | 1839 ++++++++++++++++-
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
 16 files changed, 2124 insertions(+), 135 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
