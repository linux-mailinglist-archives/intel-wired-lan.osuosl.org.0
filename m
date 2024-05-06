Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1738BC9C2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 10:42:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0572C404E9;
	Mon,  6 May 2024 08:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Draa423NJA-4; Mon,  6 May 2024 08:42:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E99B340533
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714984926;
	bh=h+92MLjur7pU8HWDtQznUIe6SpJkQwyExh/rwxRn2wg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=O940QD+tGXqw9fXKtuweyhw2Rm6kpTQZF+4urxUvTRZizY0i8sDvuoLvvuXRYEOPj
	 z0V3b+hpYfP9P9kr8C8tEjmp564TFNIH92xyF9tg2Kb2bqkOH5HmPW6bODEQDcPDLP
	 kgh15zggzJdLc2r1eUx+lOHp9kAfZ1CNZ7Ih3D+fT7muPSI+xEFrXtNOVAuUhkfv9y
	 YDjeDogjtKsRqHJyNaX+yrbU2VbJw2hLZ7qL7LVSKtqr9O5wOx3w3c7OKoZPuJGC+Q
	 leqCQwo+7MQtvPY+kTHwmHma5TQj5VFsXe5C4Q/DOukj8OKpRiA9yjz6i1tFuYYSBN
	 qovPFC8unolhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E99B340533;
	Mon,  6 May 2024 08:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE261BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A41240492
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LmIYXyZAm8z4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 08:42:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F4A7403CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F4A7403CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F4A7403CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:03 +0000 (UTC)
X-CSE-ConnectionGUID: DqFanSddQdeGy+8cQe/20Q==
X-CSE-MsgGUID: EJJc4xSjSgSTu1y4jKsEmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14505074"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14505074"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:42:03 -0700
X-CSE-ConnectionGUID: j0V75Ua5RWaVwFj2/wfZLg==
X-CSE-MsgGUID: ADU2y4hgQPSAHL1KzP645Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28050115"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa009.fm.intel.com with ESMTP; 06 May 2024 01:41:59 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 May 2024 10:46:49 +0200
Message-ID: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714984924; x=1746520924;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VufGN84yFM1G4uypzEns0FUOmUjQkqvEB/lAaxOygas=;
 b=hbP9zJhmPIg68WLdrmC+DtUORGPJUcVd6i009ZkZrsh8ZWkzfhrJ55ln
 Jjf5aTVs0PsqKQsM/pNpamIOVYGhmwi8gtoHiWiyRFv/9yCkQt0OSbls+
 NZB3+sx0RTImNihmw+hyiL5Ib30576rfi1FH4j7OokYkdY4yGSrEpNsGp
 /I+rLTF4CcePLVG14JO96NM/V9SVXUaD+jI/vnULRHCtYglCtjxl7ddbA
 +rf9iJblrQBO9yWJwBZZhrSq+RJoF9sr5VbW/nKdTvEDbEdisoAvYgEgI
 5+rWpiUrC9d0JxVBtYKa/xRDZOOajsSQ9k0fcfGTJlbqmHkFwb59PK6jn
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hbP9zJhm
Subject: [Intel-wired-lan] [iwl-next v2 0/4] ice: prepare representor for SF
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

v1 --> v2 [2]:
 * add returns for kdoc in ice_eswitch_cfg_vsi

[1] https://lore.kernel.org/netdev/20240213072724.77275-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240419171336.11617-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (4):
  ice: store representor ID in bridge port
  ice: move devlink locking outside the port creation
  ice: move VSI configuration outside repr setup
  ice: update representor when VSI is ready

 .../net/ethernet/intel/ice/devlink/devlink.c  |  2 -
 .../ethernet/intel/ice/devlink/devlink_port.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 85 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 14 ++-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  4 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_repr.c     | 16 ++--
 drivers/net/ethernet/intel/ice/ice_repr.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  2 +-
 9 files changed, 90 insertions(+), 39 deletions(-)

-- 
2.42.0

