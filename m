Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0258AB426
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 19:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0642B407B9;
	Fri, 19 Apr 2024 17:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrJbVM3QtHSE; Fri, 19 Apr 2024 17:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06C304078D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713546527;
	bh=3E0asoQ7+0yry01yDmgXXC5ARs66Y9pIaKuTrOHElj0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TdAjLRP456BfX7HylWIytCrD3dbrTQk40hWD2TarDd1XY2HJp8bRTj6fX86kZeqiN
	 3J/hNNw/CMeZeFBPHhqZabmTceHkvNw/hJvfKI32RHVDFA5rUMnNO59kPCxiTraWRf
	 DBwnUGd8wPM1GF4HaQSv9lp7ulQwnYhAS+5kMNpCci2GMrk3+iLAwhjY1YbymwjIQm
	 R112bgv3nETv3uXexsndPatPOzxXgCJtQAhwPI/XA7dJyKb6seXR2L9uTb5F3CzFaQ
	 HxHDMy/rVkkoXnS5omMRnKym5V9HIoOmhNrqCoSaYse0NbpOxBGU0t6UWpAKdiCkMA
	 4GNM4zACDIbPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06C304078D;
	Fri, 19 Apr 2024 17:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 937421BF314
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C0A540596
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JTS8JTBj8Bss for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 17:08:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 01EAA40237
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01EAA40237
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01EAA40237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 17:08:42 +0000 (UTC)
X-CSE-ConnectionGUID: v85oKgIhQ1C2ujs0FUnZHw==
X-CSE-MsgGUID: W3xcFTa7R068uZxUQGXGRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="26674281"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="26674281"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:08:42 -0700
X-CSE-ConnectionGUID: E5NBiPFlQxONdFc/Y4dRUg==
X-CSE-MsgGUID: CCQlko+pSUSBYdl9YZXOHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="27847158"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa005.fm.intel.com with ESMTP; 19 Apr 2024 10:08:39 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 19:13:32 +0200
Message-ID: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713546523; x=1745082523;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s4on6KqscIj+i61ZkHKc2rTAqi75W5FdAmg0f9wcHmM=;
 b=kO20SppUB8KixFlt95NuscuV3HA/WYidYAAALVZnKkXwOWCvaIEWVxIc
 nqNiDbxhZuetEGVr6r76fFaT1eBsTK+Y5yoSgyS+THXdB5w6TBUiJGgC3
 NJXfdxlXXtTfedmOcYgvl7wv/QIGcQUXF2TFEriv5fwLjS1djcUYFDgo5
 SLmKlg9+uEM5MtmGaAqVpdJLECHrNbNQsmnE+RlBKk3LTb9h840Ocwg8r
 qx2B5IoSAa9uW9FpyW+iVMcS8/dKq9V7veKSE97f9sK9kJg44nJfk+vZ/
 YuByfZEZVUhYEfsPScuXW0QWrhIVIfixRV6F/1n/QHkkTaeXLzmqtHHhc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kO20SppU
Subject: [Intel-wired-lan] [iwl-next v1 0/4] ice: prepare representor for SF
 support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This is a series to prepare port representor for supporting also
subfunctions. We need correct devlink locking and the possibility to
update parent VSI after port representor is created.

Refactor how devlink lock is taken to suite the subfunction use case.

VSI configuration needs to be done after port representor is created.
Port representor needs only allocated VSI. It doesn't need to be
configured before.

VSI needs to be reconfigured when update function is called.

The code for this patchset was split from (too big) patchset [1].

[1] https://lore.kernel.org/netdev/20240213072724.77275-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (4):
  ice: store representor ID in bridge port
  ice: move devlink locking outside the port creation
  ice: move VSI configuration outside repr setup
  ice: update representor when VSI is ready

 .../net/ethernet/intel/ice/devlink/devlink.c  |  2 -
 .../ethernet/intel/ice/devlink/devlink_port.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 83 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 14 +++-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  4 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_repr.c     | 16 ++--
 drivers/net/ethernet/intel/ice/ice_repr.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  2 +-
 9 files changed, 88 insertions(+), 39 deletions(-)

-- 
2.42.0

