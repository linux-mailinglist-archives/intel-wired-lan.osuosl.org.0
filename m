Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E1A6C4B5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 14:12:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E8D841D62;
	Wed, 22 Mar 2023 13:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E8D841D62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679490767;
	bh=BNBIWcy/KxUqs2kfT7A5biUHvww5iZxL2p2Gbdv3v+0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gOYa0H+of7yo0HgXxN58YKKnHZ2xenX+eLGBSliXwPixgicp8ptAPnCtCv8blhrKJ
	 lgLsHayQ/qcghFuZVgU155D64EFx5kLV6wnesZ7Z2XThXgZVE3XkuI1bHI+hxM0WGC
	 74vDypflELCXANhS/vP0wRLvGuwFfTwC3D4fqg+IeuLAgQu04QIK4FF1pLBGSUGqHJ
	 Km9ixz8ukIko5yfHoCqv9f42a1dvtY4lGfqoMIcCCWeEQ54z2PW3XzSmWRMz4/g37C
	 p5A68A8UpyWt27kyvf240l7wctn+Iiaaaq9jfkM9PhT9nL1QgeMqQ4qx8K5Q+Q3UHo
	 pJ09Q5vY5Sexg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BEUpltcGsAOk; Wed, 22 Mar 2023 13:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4126419C3;
	Wed, 22 Mar 2023 13:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4126419C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 342BA1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08F61419C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08F61419C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrwWubfe4xgc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 13:12:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07F9E4194E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07F9E4194E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340743694"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340743694"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714394648"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="714394648"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:38 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 14:12:22 +0100
Message-Id: <20230322131227.244687-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679490760; x=1711026760;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xV4ISycTlO8VBiix2fHIGkqXmGFNf6XbxaJcnYPuexI=;
 b=EuK+zTp1pdv7FASLsufUwhvzH9hEGe3pxW5XSzNFI2xs1gbsbyb7dOD1
 QH6HcUFTrPALyhQjH9YZmc9V99m39yd5XkN+fmCw6nfHTBSeOY6jLN1TY
 qPwGZIC8pCPz/b0pfgBAjLkCvunJfY0hQlAFo6RwwBCeQbRSGbbcPb67o
 LkfLLs/is60QdBRMXSG3pCFrbBgG69xQBpaljSgJSfGYg/FzUQgNVs4un
 25UYdMj9yO8PNl4LHnZuJaI6jkZveX+rV2vfRgpadL0p6+gnBc7wl9AS1
 die3P4l7KQyPlEaUXGuPmOwYl8HOGquwyhAVYPVEEgom071w+d7y7n/UA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EuK+zTp1
Subject: [Intel-wired-lan] [PATCH net-next v11 0/5] ice: Support 5 layer tx
 scheduler topology
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

This is a re-send of series that was previously accepted and merged to
the tree, but testing discovered problems with this series so it was
later dropped. This version fixes the bug found by validation.

For performance reasons there is a need to have support for selectable
tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.

v11: 
- added check for return value of ice_init_ddp_config call
- moved code related to patch 1 from patch 3
- removed unnecessary casts
- added a newline
- added additional info about network layers in transmit scheduler

v10: Fixed incorrect call to ice_fill_dflt_direct_cmd_desc that caused
     the bug found by validation.

v9: Nothing changed, this is a re-send per validation request

Lukasz Czapnik (1):
  ice: Add txbalancing devlink param
v6: Added this commit
v7: Fixed nitpicks, checkpatch issue, changed functions to static

Michal Wilczynski (2):
  ice: Enable switching default tx scheduler topology
v2:
- Moved definitions of scheduling layers to other commit
v3:
- Removed wrong tags
- Added blank line
- Indented a comment
- Moved parts of code to separate commit
- Removed unnecessary initializations
- Change from unnecessary devm_kmemdup to kmemdup
v5:
- Changed freeing to kfree
- Changed commit message to clarify that parameter change is not yet
  upstream

  ice: Document txbalancing parameter
v7: Added this commit

Raj Victor (2):
  ice: Support 5 layer topology
v2:
- Added example of performance decrease in commit message
- Reworded commit message for imperative mood
- Removed unnecessary tags
- Refactored duplicated function call
- Fixed RCT
- Fixed unnecessary call to devm_kfree
- Defined constants
v3:
- Changed title
- Changes in commit description, added versions of DDP
  and firmware, also added test methodology
- Removed unnecessary defines
- Added a newline for define separation
- Did s/tx/Tx in comments
- Removed newline between error check
v8:
- Removed msleep's in the loops

  ice: Adjust the VSI/Aggregator layers
v3:
- Added this commit
- Removed unnecessary 'else'

 Documentation/networking/devlink/ice.rst      |  20 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  31 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   6 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 201 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   7 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 163 +++++++++++++-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   2 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 106 +++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  34 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 14 files changed, 541 insertions(+), 41 deletions(-)

-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
