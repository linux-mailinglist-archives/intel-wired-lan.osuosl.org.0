Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACEE571424
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 10:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DD0940C0C;
	Tue, 12 Jul 2022 08:14:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DD0940C0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657613674;
	bh=cFEaxMZwrtN7/NBPt3Z+J8WMi2xATkSHl6lMALCjNoA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gN0ld1hUV9Eqk0RP+R21culmEDeWYFP19cmRxR4AjtSYEXsBACHr4ndxS2fxz1REI
	 5Vh1+49bJcjLbA384iWb9K0qwTLA6yPPN1Uj3dlZ2L2mZKjkplp0dGB69fFHheYNZw
	 MoC4PrmYEitTa2q9EO0XfiDnikKVtdBuT/s1avzQcjQTItfQmx1FQzD7Duslkj0fB6
	 JF9nWGhxYo0IoAqIDOHup3IGwn2Q5BJ3EtptTt6ueFC0vHsNEvTbDfJ5vI2OGJVTE1
	 HWYZMxQDlU/AUHAM8+TPcQu3DTkc8F368LIW7NGriwMts7yvn7I7g2vd6a0znEevuG
	 PNEGxGxf1RHmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spgReo8SZPNM; Tue, 12 Jul 2022 08:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55D2840A6E;
	Tue, 12 Jul 2022 08:14:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55D2840A6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 530911BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 08:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BB3842243
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 08:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BB3842243
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rj2tchBsrrq9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 08:14:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 408E840260
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 408E840260
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 08:14:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="265284142"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="265284142"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 01:14:10 -0700
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="627806294"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 01:14:09 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Jul 2022 10:13:54 +0200
Message-Id: <20220712081357.336350-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657613665; x=1689149665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U6xecE71aafAXYigf2md9RwfqK/ZQt6JnXuzxYmbVCU=;
 b=NTNNJpRaArwg42PuV/AE5xS14E1QGjmQN93P45JJAzOmeTLlhpDrZm4B
 EOtPTEuAX8zWTORWeA2PqbXbhfaEmMwRE/UoP1owLr+lPHtkbK3kwQwn+
 +f93a8qZFxVpi9/SqkjufL7uQMTopquQxq7apW5mHHlPJGxS368PJKavH
 +SztOuPqqxHxGLUwpmJHZyrvDpD1RnZs/8ze/XTgphsQgzLmm22d+2+CC
 ymoKADbTgRaVBJSlyzlN8FVCleePzW0iGaXdBBdYXVCLLRHWN0jjilGy3
 MAZskb675ytcmGUwtpSCMginorGbudvvr88Ex5op3SKhOQ7tTVb1t9AHC
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NTNNJpRa
Subject: [Intel-wired-lan] [PATCH net-next v5 0/3] ice: Support 5 layer tx
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

v4:
- Rebased patch

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


 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 202 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 ++++++++--
 drivers/net/ethernet/intel/ice/ice_sched.c    |  35 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 8 files changed, 360 insertions(+), 38 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
