Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E06898FF7C3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 00:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4BA8417C5;
	Thu,  6 Jun 2024 22:47:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MUuNHd-kR5wh; Thu,  6 Jun 2024 22:47:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52B3E417BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717714035;
	bh=cPuXyVPZo80pQvVVx/RDC5LRsxnOzcfaUicEDZkMAHI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FhwT2I9QWH2adahEUBLvjPUqsEYzihjVZRZKJsLwpUZb4Bd/TNc4qG1olocK2m88V
	 /MrIGi3xf1TAuTBtDHNlwWXGEbG2bDmBumU7dFL7uspadbyYZWWuqED+knM+Ex+Par
	 BuUR4fVbLbk8EFCSvjUsoXQlVRDi7BuXoMGhe/OWO7Ll7wVWHYW0kThJnFUZr+iWKb
	 gI8DAt43QEB4nwWgt+B6+L2GTSAQdntr8WS39Qa3LdOclyx0rScuTlXupmyniy2Ijj
	 mzhHvLZrlYvsEdQIIdYR9adhouC349nqEZscz3ooVYepXnQhh4fthyPMvRs98qQ2kp
	 Pb5wrndILQI1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52B3E417BE;
	Thu,  6 Jun 2024 22:47:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9B791BF94D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0015849CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GWUIm_tGCUrc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DF0FC84987
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF0FC84987
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF0FC84987
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:11 +0000 (UTC)
X-CSE-ConnectionGUID: Kf+5qAZRScuFjQcMlYLH0A==
X-CSE-MsgGUID: r5dugQkeQeKzaQVzAEeEqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14224000"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14224000"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
X-CSE-ConnectionGUID: AurUIcNYSpKQ7zv19yUecw==
X-CSE-MsgGUID: 8K2lguCcRRy+i/NhYCnctw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38243830"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 15:46:54 -0700
Message-ID: <20240606224701.359706-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717714032; x=1749250032;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vS8D+WXC50cCAKUj8LONKm5qZ2IdHVeVgNTaI2pagTc=;
 b=VwZmd3OlueZKUh6UsuE0CE74TvANMok2CTBM2WL3Iou4yES3CehNqpjt
 l0I1XZrRtw4k7e8lkiooj3CmrmIGEpo+ncaf0Mq+LF+snyqrqfbiFObvf
 WcAfnVUWH6dBbamjcZhUUjrbkFpn5o8FBu00SgIoYDFQsgha/6ROBGLLU
 g8eOnZCdh/g7nO+FVV9eDqnhJ+usGe/58Pd3ehtZkuumOzt6xMrunxpGZ
 ZRxCg/6R6+GofArBtfe6HTuHfl7Nbx79eXwGSxHH1vKHB5fVSO5EfKr3V
 PtjE7+J235UO6ykUcC925SCkXiUx3qSkKD5wcs2lT1hkoLkCrivM7jaGN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VwZmd3Ol
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add standard stats
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
Cc: linux-doc@vger.kernel.org, corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The main point of this series is to implement the standard stats for the
ice driver, but also add a related documentation fix and finish the
series off with a cleanup that removes a bunch of code.

Changelog:
v2: address review comments on 1/5 (Jakub) regarding backticks,
    fix email address for one reviewer in commit message
    pick up some reviewed-bys from the list
v1: https://lore.kernel.org/netdev/20240604221327.299184-1-jesse.brandeburg@intel.com/

Jesse Brandeburg (5):
  net: docs: add missing features that can have stats
  ice: implement ethtool standard stats
  ice: add tracking of good transmit timestamps
  ice: implement transmit hardware timestamp statistics
  ice: refactor to use helpers

 Documentation/networking/statistics.rst       |   4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 138 ++++++++++++++----
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   8 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   9 ++
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 9 files changed, 132 insertions(+), 47 deletions(-)


base-commit: 95cd03f32a1680f693b291da920ab5d3f9d8c5c1
-- 
2.43.0

