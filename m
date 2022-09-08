Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F00B25B1AAC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Sep 2022 12:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D307E41B6D;
	Thu,  8 Sep 2022 10:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D307E41B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662634497;
	bh=IIa401lYZo6rSuENA09tCoYTOQOyhJ6UMJaepVMiFXI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rxlwVqamNzHy6eMRHMb6pvnX0/GWGkfmQ/IG9SuT/W2Fkp4+Db6vJFrMUBAMoHcQZ
	 hAV4YMz2UE3gBc2KZkvQBbL0bpDshyfAEDW/wVbU1Tn7/Q8NxXgwBe0SNZrffVdfVT
	 shJQwCmMLMKe/Twie5teswk8cgm848ncRaGd062zOpRcaKiOLRV7/0qab5bwJ5vKDd
	 fPTgm3CzOPzP0BoNPV/q/jgR2In1P53hn7acBf0qJlBGJG9HtisgDp18GSG9JV/ZN+
	 kqHVhjQXzSchqEXVlq9C/PFS4efccc0oZ2hsFqD4aZ0yqSA/2WoCnLAW1pwv2BTXgA
	 uLO2nci61Ph4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mq0Klrtuw2Uy; Thu,  8 Sep 2022 10:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F17141A3D;
	Thu,  8 Sep 2022 10:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F17141A3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D6301BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC2438407B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC2438407B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCF_ScXwXjY6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Sep 2022 10:54:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22D3F83EF2
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22D3F83EF2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="323329280"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="323329280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:54:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="645033264"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:54:37 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Sep 2022 12:54:22 +0200
Message-Id: <20220908105427.183225-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662634490; x=1694170490;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TlEfkHULFZcLOYoyvESSmwcNVOYlg0aHlmSnSm0VFi4=;
 b=P6yJPqyQiMGDvWaT0/v7zMTLqKJtMTsKVMS/vNLjxllXPkDVJ1AEy/TY
 h6zzf0fHecmIuBgi5S0LKICb6E0006FMGo99rS1UZmZ0blz/wTnqCWOON
 ke7BtzAbtCv/KDrSrwRCiHr2XiEqvxDYW6t+CTv7OysmgGwuRqGnymRT4
 GUly9/FVB7aviXfWPvaXsaSm3yad24ZcYAKihgXPuKOjEMsFBksU8IFr6
 TGduej0dO3dJnpj9cPT8dBPSuuUCZjFzP4ngscRgY06CZLn79sIkW5eWF
 1NTq72bF1G8eSWeOAReivRS8pvsdh6aiXcKz33HWJX/8x95PCRJfGFza0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P6yJPqyQ
Subject: [Intel-wired-lan] [PATCH net-next v9 0/5] ice: Support 5 layer tx
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

For performance reasons there is a need to have support for selectable
tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.

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
