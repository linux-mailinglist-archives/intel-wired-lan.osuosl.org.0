Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA26C76B3C2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E956408E1;
	Tue,  1 Aug 2023 11:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E956408E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890570;
	bh=Jcl/plLkkUlztM8lQLKq1GzQMtRUnO5HIOKL2IghTNY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cn4Hqw8n8JAEYnLOM4pszgUs6N9PdtEP66chxu1a4wgTNF8Lu4Fv70IT3OIw+kzFm
	 VkQwg3jbFrThIPl9IqGT9dgex7zO5Bo3B/SwvcalA9Zf64UgSNSQ8JMwEXlcFU4x2S
	 DcKB2NYQ5/7gkrcKcNmM5UiA4/H8olhO9se7cQAEqc0TQfboFroYG6LRP1G2Ioo+G4
	 46JNM2Q/rEET+4rPHtZoSrMZeHedeMy/tth8OzGA9CR5X+zDFLjlNrhYdaH7JrElLx
	 +BofiQrlE5SjAaLiawMiNFLsAt5ahJ07Tq2MopAoZVnOnOaseavPXw6rnydZkm+xlm
	 DeVLnV1Hf6F0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKFUp_9Es-YV; Tue,  1 Aug 2023 11:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4927040194;
	Tue,  1 Aug 2023 11:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4927040194
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4592B1BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 553A54014B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 553A54014B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6-vKxVn1T2W for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:49:21 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2F6E40194
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2F6E40194
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433112508"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433112508"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902528637"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902528637"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 04:49:19 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:53:03 +0200
Message-Id: <20230801115309.697331-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890561; x=1722426561;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/AokW+GZNa4KKOXx0Irzlxc2zAL0HmewCyB2z+1xXl4=;
 b=PTBuJDdNS1jc4++YMP+mSrswf0on/iHnFE01FDTDLo5vlpOSPVo6wRHK
 FjpJzNE21fNloStxvLOBagxAlHi0Vs4wlsiTiM3SPEkngwz22PGh8CokI
 9CjvlG4AYgOu/ylR6Fis4VIH99XQQX8Lxzjb7Ic5yf6MfFJ9X/x7oV7CG
 u4C0vgwULbMgGM2VWN3G/oC5eSugeYmNuhBo8AR/2s9X/C/MxARNu0s8C
 stP5DgPUDRlq4bwKH4XZfpLcROmeg28LpSp7kgRwc8BxEPoJ+20kAGJmp
 Beo2DlrgPnFkzCLmnGTXelW58gjHjq5SauI9KIfQhkgYPezenFQf5Pboe
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PTBuJDdN
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/6] ice: staticization
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

Also there's a minor cleanup of unused methods.

Jan Sokolowski (6):
  ice: remove unused methods
  ice: refactor ice_ddp to make functions static
  ice: refactor ice_lib to make functions static
  ice: refactor ice_vf_lib to make functions static
  ice: refactor ice_sched to make functions static
  ice: refactor ice_ptp_hw to make functions static

 drivers/net/ethernet/intel/ice/ice_ddp.c      | 117 ++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  10 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |  85 ++--
 drivers/net/ethernet/intel/ice/ice_lib.h      |   5 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  25 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   4 -
 drivers/net/ethernet/intel/ice/ice_sched.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   4 -
 drivers/net/ethernet/intel/ice/ice_switch.c   |  48 --
 drivers/net/ethernet/intel/ice/ice_switch.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 468 +++++++++---------
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   2 -
 12 files changed, 332 insertions(+), 439 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
