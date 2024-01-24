Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD46A83B3FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 22:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D7AE41A35;
	Wed, 24 Jan 2024 21:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D7AE41A35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706132045;
	bh=qCWMhUQe7FJHakfg26BtSoQIR7uvxiBWwedgbg7siIc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=a6aZmQz2Pq2QB/XNHSHRgw3/X5nZ1xBfSHYIdYbzlVfLCX4/HWk4LrzJDa1Ulx5p1
	 TWaQ5DmmxMYVcAvjFfqmhYtKxaExtUP5qDl591Djt2P83YZVztMowhSxewENZcqU19
	 lOeXMdgy2X1G1hGPaIZTLwQkYjBZKs0vyk0Rn3sQ8xbQP6XLRKtq4ybgCzwETdABOP
	 YnDImq5ea68/aEB3XrxibcTil1dpZ81UH+ZpeyfPzhVLl2hJfZ5v/HGsXooR6TSaVK
	 j2egCciWMcw5mjude+K1UzPEzQuGYBUUzf+xvzTAYmtyVGFI+DoYY4CzD8mIX3nSHU
	 VwHgljr8nLjRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZhWmKp2WuV-0; Wed, 24 Jan 2024 21:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20B064035D;
	Wed, 24 Jan 2024 21:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20B064035D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 925BC1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E3B760D90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E3B760D90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCBqrzWxLV-F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 21:33:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CC1160D6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CC1160D6B
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8745624"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="8745624"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 13:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="909788261"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="909788261"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2024 13:33:55 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.246.2.62])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8CECE9A4A7;
 Wed, 24 Jan 2024 15:21:44 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jan 2024 16:21:39 +0100
Message-Id: <20240124152141.15077-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706132037; x=1737668037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T8WFi+eefvdlThLpuTaze6aHfWAP2ZG/E8hfjmZUbmg=;
 b=ahgqdn05vUbHoCRkXq5WoNPLapnV9I65ycyCfqt4jd1ybYgxT0O3Gjn6
 +tzFT0WBuUJBFG5mj9sAMepmCVsFLDOnmgsTnzxTuwjfD7SfxH0WlYP5L
 RfUyTdSmlvHUtojJdlHDXyuDj8bcLMueDEofEVkYqz1P7C490Pg5PLZEy
 VDkwy+QgK/aMpGYKl+pUgH3How3w431zKvh0owYhPsXUyY1g6Ba6j16H7
 eofT4LnUTIeGuyMREW/pDqKwXiPJnbprVmfgEXR2tpqvd1saLXByMso02
 +RgQdYZ04xpM9OJgHwBUkIGaz0JceI8mNp2v20+/KNd8N3sH7KxvLvDJz
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ahgqdn05
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/2] ice: Support flow
 director ether type filters
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
Cc: netdev@vger.kernel.org, Lukasz Plachno <lukasz.plachno@intel.com>,
 brett.creeley@amd.com, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool allows creating rules with type=ether, add support for such
filters in ice driver.
Patch 1 allows extending ice_fdir_comp_rules() with handling additional
type of filters.

v4: added warning explaining that masks other than broadcast and unicast
    are not supported, added check for empty filters
v3: fixed possible use of uninitialized variable "perfect_filter"
v2: fixed compilation warning by moving default: case between commits
Jakub Buchocki (1):
  ice: Implement 'flow-type ether' rules

Lukasz Plachno (1):
  ice: Remove unnecessary argument from ice_fdir_comp_rules()

 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 140 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 112 ++++++++------
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  11 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 217 insertions(+), 47 deletions(-)

-- 
2.34.1

