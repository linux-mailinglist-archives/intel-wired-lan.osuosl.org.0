Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4EEA880FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4074140C6A;
	Mon, 14 Apr 2025 13:01:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xpqfF7j-jx1F; Mon, 14 Apr 2025 13:00:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABE0C40571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744635659;
	bh=vklPSac8blOVS1jBR9KYBTDUwgGJOJl3MOR25EEMv6w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bx1xZ9BjZyr7MRQgaOUxs+Yi142A8JuVWghWvLCUWNekVwOUiinDhuwhFQUfvpRuf
	 y02AQQDvJ+6ciJcZj80wLvdXjzjLYJaUhfQm1tAc7Ng3zqnLuRGHG7IIrqbY+x2dtg
	 E0UgOnshOqXq233ffWI9pSWqx4cv56vToiIEJbPcWTPfU0PVUEniai7taTGePZY8Nq
	 8Oh9Ew3VvTaxLzUW0rkQ+eeliplhvN4J/Fl9Qvcd2SVhaumO8HrcOWdHqdmCWYOfHi
	 RjfV4dz68KE4lOWayHF+moa0ijLgNIvPSkfTbmEws8HGDPZmqdD9f+sRG2AqPIkUfS
	 CgXK6M2Fm/3UQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABE0C40571;
	Mon, 14 Apr 2025 13:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B43D250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 516A640571
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:00:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x1vLxTVTu7Ys for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:00:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A00AE407FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A00AE407FF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A00AE407FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:00:57 +0000 (UTC)
X-CSE-ConnectionGUID: VByE6IO2R++RDKxhupWPxA==
X-CSE-MsgGUID: a1Aa0NP9Q5CZM4I19yXRPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57468658"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57468658"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:00:56 -0700
X-CSE-ConnectionGUID: 4Y6frGfARFKnR03FsSV5Nw==
X-CSE-MsgGUID: gn3Q8UEoTHesO8TcNV/tUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134966814"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa005.jf.intel.com with ESMTP; 14 Apr 2025 06:00:55 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 14 Apr 2025 15:00:06 +0200
Message-ID: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744635657; x=1776171657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jynLSUFv14kvafwgTIampPYuFvfpvKX+LRxo1UjOTfQ=;
 b=mQu36l85IYd09CIWLUoIw16JJT6lLcDnj5ou38gOI59rsSLWq37HidHU
 DIj+NJhJ3hBENC333tPYanDIgu5lcFVRG9vUj1NeHg8tKpmKR8wfDz+YV
 xtCe8G6zO81N2Yo9aRvLh/zLB1pxQMg7zdtHbV1cveQ31MXZR25dVtQVo
 2ktxdiKgKKwpgXpNhYoy5NeseSyNt3ZlgsnZmF2ZBANkQV8cSKWnHe8rc
 mGbjXth0FAWrX8AtyFzgctWzLOQFHI7Guhrg5SgHkRXIb314rWCha8DvA
 RGSndPoHGN07nLQe3Fex5lDzP8MLYlI6Ojbw6Tyyk7DkjhDpUCf2xV5mz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mQu36l85
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] Add link_down_events
 counters to ixgbe and ice drivers
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

This series introduces link_down_events counters to the ixgbe and ice drivers.
The counters are incremented each time the link transitions from up to down,
allowing better diagnosis of link stability issues such as port flapping or
unexpected link drops.

The values are exposed via ethtool using the get_link_ext_stats() interface.

Martyna Szapar-Mudlaw (2):
  ice: add link_down_events statistic
  ixgbe: add link_down_events statistic

v2 -> v1:
used ethtool get_link_ext_stats() interface to expose counters

 drivers/net/ethernet/intel/ice/ice.h             |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c        |  3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h         |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  9 +++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  2 ++
 6 files changed, 26 insertions(+)

-- 
2.47.0

