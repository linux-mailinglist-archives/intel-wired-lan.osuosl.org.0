Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEA298E797
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 02:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C36D661182;
	Thu,  3 Oct 2024 00:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lau9zfnDrpXo; Thu,  3 Oct 2024 00:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3CD661122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727914484;
	bh=8wBdJ3WFbfwYmm+vxD7XirERg4il0OoeMXBi3815Q3I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OAOfTAGjNQtH4D8gLsD+56SyPs2ROAz05XhcN8kIlG6cmVMI8YAEhRqJga7qt2uwD
	 5sHK/wX1N+tkUTvsS1s6R7L4ytx7EN+pS2WcaZAMm+g/uegnqfhnLYWXeR3j2BypJ3
	 l3OFuhR3qMSzYuoD+akz9UgzFkJofEYkhmAoJJ2hyRdUrMBD1Aty+q31vtMytSK+f7
	 b0vRjDS8IEl8fWEsiimGLglf/ygx1LqD/dOLHp59hRBllf459WlHIvVYb4lk6h/s+R
	 4uBokgmMn9qx9Z+HGOqtz6T+uRF+Bd+Y8RRaGOF6evnbo2+SEyGeiMONWMZn4x5uly
	 BlqDyjJzb4NRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3CD661122;
	Thu,  3 Oct 2024 00:14:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE57C1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 00:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABB2B402D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 00:14:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rNnI9ElCroSp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 00:14:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 40701402C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40701402C3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 40701402C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 00:14:40 +0000 (UTC)
X-CSE-ConnectionGUID: XJ5GlkWqTxGu72mzTJTN4Q==
X-CSE-MsgGUID: aG8aZxhfT8ywZa7ZIJR1uA==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30893411"
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; d="scan'208";a="30893411"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 17:14:40 -0700
X-CSE-ConnectionGUID: 6r6NeTnwQHCvAPGbrjN2og==
X-CSE-MsgGUID: uYDMMWQqQVKTXovHezryHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; d="scan'208";a="78594571"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 02 Oct 2024 17:14:38 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.128])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CF50612668;
 Thu,  3 Oct 2024 01:14:36 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  3 Oct 2024 02:10:30 +0200
Message-ID: <20241003001433.11211-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727914481; x=1759450481;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DneuTuUYLBE0k951t0HkLFw6jjz7ut0bTKct6HGfE3U=;
 b=J17lEPOYOrBf3Y2zVpJU9GpXLpYy6tl35+IvfC/YNVylwl6L6kpXbOMe
 84JEiUfR8IcXqQOTD82Jj9sePULfTEAoNnLvQXTXw9fBgDRsA88uQnmXj
 ke8cvqm3UHeIqmbiaW5/QhhKfEmhkC/Mdi4ULLidYCls7EWvQWwEPImUh
 amA1L8OungodJeKwvQosRnB451I8qDRI3Z87PXuZ6FwaZxyD2FXgu6/91
 yi9x7lWslaQsIlaECHzw4ivpFdcd7t/5yaw/DwSDgeGqmUCcWjfxDVwAe
 JIHsHpBK/d2n7o6YVyv5siVWIyzEr/TaHa16vJY38d8sqBHBPGCURQGo8
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J17lEPOY
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] Refactor sending DDP +
 E830 support
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series refactors sending DDP segments in accordance to computing
"last" bit of AQ request (1st patch), then adds support for extended
format ("valid" + "last" bits in a new "flags" field) of DDP that was
changed to support Multi-Segment DDP packages needed by E830.

v1:
adjusted authorship, rebase, minor kdoc fix
https://lore.kernel.org/intel-wired-lan/20240911110926.25384-4-przemyslaw.kitszel@intel.com

Przemek Kitszel (2):
  ice: refactor "last" segment of DDP pkg
  ice: support optional flags in signature segment header

 drivers/net/ethernet/intel/ice/ice_ddp.h |   5 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c | 292 ++++++++++++-----------
 2 files changed, 160 insertions(+), 137 deletions(-)


base-commit: f2589ad16e14b7102f1411e3385a2abf07076406
-- 
2.46.0

