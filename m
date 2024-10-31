Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3EE9B7E31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 16:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12FB44075E;
	Thu, 31 Oct 2024 15:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7bt49pKidQW; Thu, 31 Oct 2024 15:20:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CEE406D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730388013;
	bh=D+JzzSIiPGywZYW5xJjZ7l4pHe4nwYPpujReFhOM2yI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jWlM42KsgEobMVgj50nV7ViMPch7o4RWEsy5uwaR0ycc2YektbLrA2TUS1tfWMDgi
	 L/XzvDghYU69tuKw/iE+UR7y/zNex7AcSW71Y5J/Y60B1RHPVqDU+12xH4wtlcpq0v
	 4l2yktTS/rYe/LYvh9fMFgeYIoMorxL44shgJ1Q3W3AXOf0GVxc1NWBeNRGvrQm3SF
	 HUwriBPBPnKIydlul2NTGtvt7yLWt4x4G5iqlS5hxL31MWsuIxGZD6YDeEYZvsKW0m
	 X+7ogFUTw28WxE2qF/X8FdAutqb+0VetFFp5puq5jOidYZVjzljKcDLpTCUp8/Xz4l
	 /h3a6br485RFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68CEE406D0;
	Thu, 31 Oct 2024 15:20:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D4102494E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B740760900
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xDyCE1EIw_9c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 06:00:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 41784607BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41784607BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41784607BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:12 +0000 (UTC)
X-CSE-ConnectionGUID: 2Hs22gt6Ruq69kmWFeDJEQ==
X-CSE-MsgGUID: xBb/Kah4RuuQvlid4TLbaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30272906"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30272906"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 23:00:12 -0700
X-CSE-ConnectionGUID: YqNJV/gIQHGTsYnEu87VVA==
X-CSE-MsgGUID: 00NZNcEzT0GsQOhYHf1nvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82183625"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 30 Oct 2024 23:00:10 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	sridhar.samudrala@intel.com
Date: Thu, 31 Oct 2024 07:00:06 +0100
Message-ID: <20241031060009.38979-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 31 Oct 2024 15:20:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730354413; x=1761890413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l54SrFupOxwBcHNocWD3ESgVfm2sMM89Vj9IEhZ0Iy8=;
 b=Qa2iTsoxxuolvbkZNDcfDXKxlbJrM00kKmXBII9cicBQZwMQeJ3DN0wI
 USb87Xvx1WKHjbCr+xpDbJPmqNUbDtBCF9kVmId4oqlFdG1leytlwdwZ+
 TXdPlQnwQk9VsK4dhjQtEOVlXjiomtD2bRSmfZCUAnohWcowBUdIpSmWz
 1BUyMDPOrQJ6x0Wlqeai/ubF9gQ2oJRWGfrvnfIaWCtNr0iPL3zIcle8d
 dicKSVBrJ/UXkVGF/PTaBujPG+GyoUzq/8kWhDiGBTBibwsNfAM99boVp
 bExkzRwAklGwNVbo+J2rnXHoFmrpDngYfP283Rx8iwafwLDkNHaljf9U9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qa2iTsox
Subject: [Intel-wired-lan] [iwl-next v1 0/3] ice: multiqueue on subfunction
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This patch is adding support for multiqueue on subfunction device.
mostly reuse pf code. Use max_io_eqs parameter as the max rx/tx queues
value.

Also add statistic as part of this changes.

Michal Swiatkowski (3):
  ice: support max_io_eqs for subfunction
  ice: ethtool support for SF
  ice: allow changing SF VSI queues number

 drivers/net/ethernet/intel/ice/devlink/port.c | 37 +++++++++++
 drivers/net/ethernet/intel/ice/ice.h          |  2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 65 +++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lib.c      | 63 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   |  1 +
 5 files changed, 128 insertions(+), 40 deletions(-)

-- 
2.42.0

