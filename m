Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B4857B8A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 16:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D29082662;
	Wed, 20 Jul 2022 14:40:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D29082662
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658328022;
	bh=IMQO75/rdAECJewaiDiMgRRQT2K04b+NerU9ndVt/ss=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MzznNlJUrxqiIJvweDMG7aKEMORINu/SXSI/kJLXId8sVamxE2WTqoaVK/eStQ/VQ
	 gQp5kcOSh0M/xzlbAzuELzdlMIhvHq0jjByuBb2a4/dExWhPus06rS+xxRRNwHfRc/
	 nCJGIExVz+O2kWBB0NtRdeeI9m02r9r3AsslYOutwiPLWNCRBFWw9HdDUNwtr+mAIc
	 Uv9DqU7Ysdlq+zXWNdnM5B5ksstSBYRh4UYDOiLgpTbPZbZdASXkjnq6b/tB9zHAYz
	 NTyNB74yEyZwhwvWSfiiboGOX0CLRirq9KYQ10kg5RsqUXkpAB6T00HaO3MTB04gRQ
	 Dr8kKXvBd/mKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gnqjmk1OcxRO; Wed, 20 Jul 2022 14:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73B96823F6;
	Wed, 20 Jul 2022 14:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73B96823F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A2AE1BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 14:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1436182662
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 14:40:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1436182662
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-zct5c8V2PK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 14:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09D1823E3
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E09D1823E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 14:40:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267194051"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="267194051"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 07:40:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="656298993"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 07:40:12 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Jul 2022 16:40:00 +0200
Message-Id: <20220720144004.14250-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658328014; x=1689864014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FybweuPpygZNVJA1eC0jsOyXFg/NI0GM/noizJdHHEM=;
 b=TwZJDUTYzez9HQU/cLp7slb8kf9GwahSLoJLG7w2YfLQ1nKvsSXBS4eX
 /broq6tSOfFAZZTCsIHFjZmEqrv2WR8PdwCG0NP1XxScmzhnmzvq/L7cq
 34jVCswYqz+IilVv0uoKYFHU99i8giMSV7CGM0xPJ2CKnaGzNgSyIprcp
 Cy1/DrLCjMttE2UEEl5wAAjCNEy1+mRMr4Pg8cOXrx6YFphBLhQa8bBdo
 m2Oy8OQrS9J4Xg33+R4v+Wpb4PLLO5h/2HeNUtEFtUf2MS8v7Ms9QWveH
 0nPuKO55wpN64GV8JeQXDDKadsk364k0ZtVSromdo8NC18GeYCckghlAu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TwZJDUTY
Subject: [Intel-wired-lan] [PATCH net-next v6 0/4] ice: Support 5 layer tx
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

Michal Wilczynski (1):
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
- Changed commit message to clarify that parameter change is not yet upstream


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

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  31 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 159 ++++++++++++++
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
 13 files changed, 539 insertions(+), 43 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
