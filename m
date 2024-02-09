Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C95984F335
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 11:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 083C5410B8;
	Fri,  9 Feb 2024 10:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVCRdPdE2Vo4; Fri,  9 Feb 2024 10:20:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C55340920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707474030;
	bh=nldVF8jQQVaHmJA1MeFVF5q99vwqynfNQjWSm8juqUI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mcTOB03M1pB3I3/w7yJ66uHJW/JKphysOpmYnk05phRrFcdRK1VoOfKy91kfT+48D
	 X07HYUKYn6lGmHSEkpyIMrzLt5VkAFCbVHXSkSQNCVu/p4CuWBTslV27FlQOqswZx3
	 NeCWNRWm0CFxWSlVJQucpbf1sOtYVnt11teBAJXY/8ayrOAxSFWs5OOAHUKEE12GIQ
	 pC7PGqvgfTAhXjFEwh/lCFRbYPdyfl6Ett+o9oSC7VJkImAV0LjfNrIIFQ2IWvkCAn
	 QOJjPrIk3iPMe7rKaIGkfD7dlLnhBwETJnfeq6/TXfMJL6cAWocosH4Ej+wsXh2gBN
	 6Tjc3IksNEgtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C55340920;
	Fri,  9 Feb 2024 10:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7CE81BF271
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 10:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 920C2410A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 10:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPLhBO5oYLav for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 10:20:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lukasz.plachno@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E781D408AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E781D408AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E781D408AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 10:20:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4382832"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="4382832"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:18:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="32691982"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 09 Feb 2024 02:18:52 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.246.2.62])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6C57A135F7;
 Fri,  9 Feb 2024 10:18:50 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Feb 2024 11:18:21 +0100
Message-Id: <20240209101823.27922-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707474028; x=1739010028;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bBXElQ2HQOxUha8SyXngK5NdzP2wNE/NKkEVS8NKh1c=;
 b=fzGWYePnfnD+HL4v/I9cyx+Gg4CB0W9bPCQtbmVV+fgNSFJCQ6yp+AkB
 RGLilzvQagejwZC23eC/04iyaFX4RfgiG34r2GekAriwvaNiN95MhEX3Z
 Ngfhi+sOOZySrGf5TGjhdJzyY2OKXMeXp4RhfWwW3VkJw4mfLVj82q4Jv
 yIzr6rAPA4ZXRdBVB2SifmQFU3b7gcsDnJEdSVcaKPwzptvWCsWIlbPlm
 rIdojnZELoalUtke4WFPjsO38a1awKhAAFP1+0D5apu9W3I6rJXLMkShX
 xTs/mW1WZyx8W8+VFCFGsfs7x0lnIKrWfe/RVpqrgLzSygYVUtuf8JORR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fzGWYePn
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/2] ice: Support flow
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, Lukasz Plachno <lukasz.plachno@intel.com>,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool allows creating rules with type=ether, add support for such
filters in ice driver.
Patch 1 allows extending ice_fdir_comp_rules() with handling additional
type of filters.

v6: removed ice_fdir_eth and reused ethhdr, removed 0 initialization
    of static const array
v5: added missing documentation for parameter introduced in V4,
    extended commit message for patch adding flow-type ether rules support
v4: added warning explaining that masks other than broadcast and unicast
    are not supported, added check for empty filters
v3: fixed possible use of uninitialized variable "perfect_filter"
v2: fixed compilation warning by moving default: case between commits
Jakub Buchocki (1):
  ice: Implement 'flow-type ether' rules

Lukasz Plachno (1):
  ice: Remove unnecessary argument from ice_fdir_comp_rules()

 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 130 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 112 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 201 insertions(+), 47 deletions(-)

-- 
2.34.1

