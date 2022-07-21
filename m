Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E96C857CDF3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 16:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71612812EB;
	Thu, 21 Jul 2022 14:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71612812EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658414633;
	bh=9AtIgymte11/VeWRLn+0UeJsDP8nsz52CaX4nXrMiCY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YkClTHREv8PYitfmODDUcmv6bLh5uGRxiIlrRnH2EqMc7LSQGI+H9hwNod+GJuAxp
	 LCGYUrLaiaA56JNwQonwinEyZ6/By06CxM0rSNeqvmCIUipSCpqW87iQrRRQf/tDsA
	 pjo/K9eiogRuVwzM2xCdhdP0cjcCDRYQKwQ6ch3/1JQiFKFKmxr6xRNwfD6buNCWvG
	 RUBXnVtNXozUM9U3+O2UDo4/aBgGXjD+jBn+GRmIUHxHEIxBlcZ1M9sW1pFsNusW3X
	 uNzBgAFkzzGe4Jv/cAqcTFUnpfYVaiM0kH+4SXlsFWPJEk2sXA2rFcXrIw6W8pPjcv
	 Q4tsgubj5gRbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiwmdxGwUodD; Thu, 21 Jul 2022 14:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6625F812D9;
	Thu, 21 Jul 2022 14:43:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6625F812D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A1621BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F411460B94
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F411460B94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUHKlewbtqzR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 14:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 294A4600C9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 294A4600C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:43:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267462720"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="267462720"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 07:43:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="573766469"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 07:43:34 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Jul 2022 16:43:19 +0200
Message-Id: <20220721144324.141416-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658414626; x=1689950626;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rUF4C+vCVPU4Asv7csfayG6CfZbZusnkrPCwVCsHcT0=;
 b=NrmsWOFPinfwOq+QiiiEp4s2fwvw8K3MKvIWrAiCCo0u/IgzMI2CgFlz
 hbqI1C+fNLvkOQXOciaCc2XUnl7xrCgR9fEA0pbeSBJubDS+7UncwaWVT
 RaIh3A+WM4VBfHKo7WDMPl49CC5K3cosCnYtrnBVk7J4aDlzy4QSH+3gL
 Albc+6JFVYAEFDAldXVXqS7U0gLKdPUjtXbVPRrVGVmienxT7UHQhcxIq
 fek7yPaPHDp24zWWH/BKzpBR7HphDa569SBO5ZcztxMnp9ePQ9r7JOR98
 c+aj8624fVEhOA4tkPNVAAXsF22z/JEAhHB2zEHQHzmVRW/P85WOLmo8G
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NrmsWOFP
Subject: [Intel-wired-lan] [PATCH net-next v7 0/5] ice: Support 5 layer tx
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

  ice: Adjust the VSI/Aggregator layers
v3:
- Added this commit
- Removed unnecessary 'else'

 Documentation/networking/devlink/ice.rst      |  17 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  31 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 161 ++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 202 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 ++++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  35 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 14 files changed, 558 insertions(+), 43 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
