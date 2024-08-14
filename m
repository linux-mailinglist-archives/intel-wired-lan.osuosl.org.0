Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 327A39522ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 21:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B91B81D70;
	Wed, 14 Aug 2024 19:56:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3F5JTDZKDtTv; Wed, 14 Aug 2024 19:56:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8602A81D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723665383;
	bh=H0xdlZg6K12+fxUIphblat7UzLep6W5Dq9UJD8tbG2E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5ui/3PuZ9f3WS0mG+q6d9fQFnK6fbchrSxoqIFoYOTGX9pjtwLso34jM+dbk4ROi4
	 Xk7UtpISKWr4cF6uLMQIdf7/jIs7yvwE/RmlZv7kmM4ZtXHAGz58aJCFh5lwic0sxd
	 5+SB6E4dtVSBUBtiP7fFFxbJmAfqLW1nz7P9vZUklQWjw/yEB6LSC4PrA68oiB6h2m
	 mzOy+RKAL2lSw82J4A8ROoGd4z0Wn4xVyeSGqW0r080X44+0TiI47ZCrlh9xuBXhJc
	 7doXvXfKbIwqH8If8P960ERuf/7/ZcAhylvt8Y1i8xM5j8mDWp6Cp89XuBJwvgRlRj
	 WiJ4srkP7fjHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8602A81D65;
	Wed, 14 Aug 2024 19:56:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB751BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36593608C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iLmv_LPUjxkh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 19:56:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2013B60598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2013B60598
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2013B60598
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:20 +0000 (UTC)
X-CSE-ConnectionGUID: mFAtQL0pS0yC3hSDkGEjqw==
X-CSE-MsgGUID: c/WDbOdkTnmowO5wzEwHeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="33292494"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="33292494"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 12:56:20 -0700
X-CSE-ConnectionGUID: E9NPFh9gT5SmfwhlxNAywA==
X-CSE-MsgGUID: 7iNoreR3TlmD+rvG2U1q8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="59869696"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa008.jf.intel.com with ESMTP; 14 Aug 2024 12:56:20 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Aug 2024 21:54:29 +0200
Message-ID: <20240814195434.72928-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723665381; x=1755201381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aECfMSpTudw67XI81fDh7hFBWPgL1yuEKnnS7XVgk9A=;
 b=DkX/ht54AsXLKKKcEAkESSKZAxQJhrOJD1jqyvbgClqZXc6YMOA72zQW
 DyGbaY0KQA63jr2/qvVOPXP3yCxCGazVjU0VgUl/gdoXTBFfOb3yBDsK3
 uLUlZtmxC1prYKkQ0rHp+vDzeU8yzTHIjd7dd4dBWsNBGYphpej8AmiPP
 0Iot77qag5G6ZPiQ/eUSDJC8sH20lmUR45XC/0zT6Sm2lpI1mc7POeNh5
 ZLobUj1HlDITiU5n6ezkyQz/Vb6/b8Db0a++1UzGOYrDSifgAMilor4yg
 Uwvr9DapkNCKPcC8bI9HzkIoWqUhk9IA+Gt2pRMTfZJ1gC1fnoKG7aSv6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DkX/ht54
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] Replace auxbus with
 ice_adapter in the PTP support code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series replaces multiple aux buses and devices used in the PTP support
code with struct ice_adapter holding the necessary shared data

Patches 1,2 add convenience wrappers
Patch 3 does the main refactoring
Patch 4 finalizes the refactoring

Previous discussion: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240715/042744.html

v1->v2: Code rearrangement between patches
v2->v3: Patch cleanup
v3->v4: E825C support in ice_adapter
v4->v5: Rebased on top of the latest changes

Sergey Temerkhanov (5):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Initial support for E825C hardware in ice_adapter
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |  22 +-
 drivers/net/ethernet/intel/ice/ice_adapter.h |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 340 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 129 insertions(+), 311 deletions(-)

-- 
2.43.0

