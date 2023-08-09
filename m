Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19D577612D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 15:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 859A84148B;
	Wed,  9 Aug 2023 13:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 859A84148B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691588152;
	bh=/R0hKe+2yH95ien0Ohnc64n+4lCP9nAg/jkwmCCdO1E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OMuc8yncV/92xfSLURuL62UtzWlYD/11G2qJ8u0NUhfck91rub7y8hWUJQas+2tcM
	 CwjSBTx86f++d+UUV36NIlYjP4WBKekTVSeELmZQJX6BOXylkjYEeBz/kF6bk/xRQP
	 sNJz7v2Zajmn9aXLGsWKqs4KKphvqetsZPLpSE3ty3VU5dd7nbqkSt0WSNv3cEPKVE
	 878+BqQ7IRPh7Xvrr1W0R8Nq2wq5AYtKX68l3zC57RDnrVd+2b/dxHzekqrSU0PTF0
	 ZE6pCAUvW+p9/aruGTAOdA1MqAjmJgV+ktdDIY357TMOijc196HO+EPCir2ooSi6Cj
	 dyr78nH5eo7cQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kC7T03u5zbg1; Wed,  9 Aug 2023 13:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73A7C40CBE;
	Wed,  9 Aug 2023 13:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73A7C40CBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E6201BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6220F82081
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6220F82081
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JF3yDBELj-xW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 13:35:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 728F38204D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 728F38204D
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="402086849"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="402086849"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 06:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725401496"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="725401496"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2023 06:35:22 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 15:39:06 +0200
Message-Id: <20230809133913.2652736-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691588145; x=1723124145;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zyd+9uRPT4UPIRbd4apMwGpuMLKPjrcilfpEZ1P16vg=;
 b=XYZqCXtpEs0Yh5hOd1Z10OEk/U1henGkmfnqX7AccR35/rbzU3djNo8L
 VJvL7m/sATXj8QUpgYALzd9DOsx/tPxOyrPwK8XVPFFFmFdqjoNPhPqwE
 AvoO75XG0x2ScsTPh8vcRQcFhHiU1Noj0d+JjYB1zmCEQeO5FNoOghWNq
 hWNdssFoiwo5Fj4VG2/N2Hoq0pJSA0cOXBWgTQC0IfgNb3CJZpm1n+x/G
 Ynky9pnxFBSq3ypeTL8tmaPltJWJiNFXmp2r2guFc+JUoTZ4K84V3iByX
 y+oSk13p4fMGxNqfgQ+otLHNi4cec17d2ManYd3RWzQm2GJ/Z0Gfvu2HI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XYZqCXtp
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/7] ice: staticization
 refactor
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

ice: refactor methods to make them static

This series of patches refactor some ice driver files
in order to make as many methods as possible static.
One additional patch introduced in v3 also refactors
one method that can be simplified thanks to being
static.

Also there's a minor cleanup of unused methods.

Jan Sokolowski (7):
  ice: remove unused methods
  ice: refactor ice_ddp to make functions static
  ice: refactor ice_lib to make functions static
  ice: refactor ice_vf_lib to make functions static
  ice: refactor ice_sched to make functions static
  ice: refactor ice_ptp_hw to make functions static
  ice: refactor ice_vsi_is_vlan_pruning_ena

 drivers/net/ethernet/intel/ice/ice_ddp.c      | 120 ++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  10 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |  82 ++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   5 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  25 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   4 -
 drivers/net/ethernet/intel/ice/ice_sched.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   4 -
 drivers/net/ethernet/intel/ice/ice_switch.c   |  48 --
 drivers/net/ethernet/intel/ice/ice_switch.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 468 +++++++++---------
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   2 -
 12 files changed, 331 insertions(+), 440 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
