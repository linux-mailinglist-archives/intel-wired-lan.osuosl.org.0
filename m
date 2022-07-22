Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF38D57E2CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 16:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF05042365;
	Fri, 22 Jul 2022 14:11:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF05042365
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658499108;
	bh=RX87J3FTO2gxZgAaunCdUHFjObvgKDLgReXMYVKKlqM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lIJL0EBuNJkwr4VmXHFavxIAYk/Jwyompbv4JFvKYjQy9MRkAnEltd35JBzZiUYuX
	 urrvk13X3VTVuymKC2ZwllQnKUbcBV7DlYt9/RXiM0tsEiX6GzX5UJE+9wOm/n4PEP
	 ubNN5XX/OFRU+Omsbq7TQ0bmF04AtYzTl3ujcXfSaPBTzC8YLkq5IHSnwRKMU7nzk+
	 AMum1wqXOF1jedm5Q+sz7XgE94l1/oHIpyMNLzfqsIfPDXzuS4PuhiEKeJlt9vTZTC
	 GCjYJptoUPD0IwTjFzvsLWf/ilTrppix0/hUeUKZvuquepWl+DdHjYYyT13Fs2vbQM
	 jqGs/135o6cBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tN6zt273p96F; Fri, 22 Jul 2022 14:11:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 703EA42360;
	Fri, 22 Jul 2022 14:11:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 703EA42360
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71C2C1BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 14:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4834C42355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 14:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4834C42355
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANcX844bN8OG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 14:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 259BD4233B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 259BD4233B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 14:11:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="288490887"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="288490887"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 07:11:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="926058602"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 07:11:39 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Jul 2022 16:11:24 +0200
Message-Id: <20220722141129.229436-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658499101; x=1690035101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NTV1FhAdg5TNHh5AwLff+t4memQJn0/FaHutfHn8noE=;
 b=ZOln8nJy0cjHmyDIxMv+B1sSp2TrS/owA2V5Px3tQuteTb39VmM79NX2
 8uq6vpbBYeznR+lrhVSpE0plxLrI5fKumGr/3LI/biyaYfHociv5L7bXi
 QEYnLY592gNh3eFNGt5vs1oSz5wLXs7CKcrOkTTJkwj1STErNjANI2dA9
 Ezq1Y3Lgit+MMDqy38lYnCMoM7+m2y7SFHbh68RIe1TiBgGwnhZ1RumfA
 4gMb+Q5HWmCCjFuS5ou3/AS05e3fhnuud6xiyAZu6XlUtTww5cX+j5bDJ
 Z7v/glodWCp6o6U/oEbpAzWwaswMxZqwpBV75bJogHSF0sdzPh6x8Ax1V
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZOln8nJy
Subject: [Intel-wired-lan] [PATCH net-next v8 0/5] ice: Support 5 layer tx
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For performance reasons there is a need to have support for selectable
tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.

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


 Documentation/networking/devlink/ice.rst      |  17 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  31 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 161 ++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 200 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 ++++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  35 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 14 files changed, 556 insertions(+), 43 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
