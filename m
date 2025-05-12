Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50049AB32B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 11:05:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5332140B65;
	Mon, 12 May 2025 09:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ul-OamqPWOBE; Mon, 12 May 2025 09:05:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B42C44076A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747040746;
	bh=fPqfAVskpZydSnVuvLO75ak/jGAb5s2e7AllmBR7aGw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IshjZgl3tE01rVe4RhKKRSr2zSQ46dqgImii+tltvIjz86jSWrYpj2mCj7R0r0GNs
	 4hY3NK0njDF2dPKvYkm+4a9H0uUiNVBhvG6FIWbvpOaeWYac6Zl8o4qycYe4h9FqOJ
	 Ii5sfc1xoakks5h0q4vRMe49gdD35IUdDy2d+3YtpaNEWyibmHGDAC4d9UFej9nrId
	 D1WyTPZ08zcJKJD5owlBFjH7ZVAl6Xm3A7i7AdgEWyf+z3ayU5OkWb3TMKz9t3R0ig
	 mDNqmJtTtnNezXAIla78WMiWoT4i1Yye5Iwj3tkkdPWvPLHPZvbQ8s+jrN3Ayltga/
	 sAvFSf2wiZdng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B42C44076A;
	Mon, 12 May 2025 09:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E98C617D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6D3240F83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cKK3JVHT0CIG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 09:05:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EBFC40BE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EBFC40BE2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EBFC40BE2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:05:44 +0000 (UTC)
X-CSE-ConnectionGUID: kv3BtDZtQoaM+Qul/KMV/g==
X-CSE-MsgGUID: CpF4BdPJRRuU45kaya9tcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59459672"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="59459672"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 02:05:43 -0700
X-CSE-ConnectionGUID: maDKF4W8SKyHhmEMlwsXYw==
X-CSE-MsgGUID: AhRbfURUQQCBbIqcM0kLJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="142262965"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa004.jf.intel.com with ESMTP; 12 May 2025 02:05:42 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 12 May 2025 11:05:14 +0200
Message-ID: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747040744; x=1778576744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=37USgan+qVadVMyB7rdtZtBl3URORBaWw8tpk4INn0g=;
 b=dvUB3DFJ/y7AUwg+6esJ+Flz9ZpdJqAyKwLOOkGSx7fnpkOkW5rQVXnM
 scM9SGLFF2PI08Dr7cjAQc1R+ttZjez39aak0eaWoE3TtH4QSY0hzRhex
 id0iZ2AEYxg4uFym55HkVEuP4WrC6TarVVeocrqEFAepxXzSLnAv11Md8
 Ds7VV/fik5hhXlNM/xg7CoDHRbEtKxuT4m+O4bpJchcK49Zp/1GCBdRz1
 O+xCxwr6xtJDaK52enl7EDRjng6JRp22dTKs5J+86OlQNmcCetZSdPed6
 pDtVc05kF0KLFqCllCk0loGGuEEDzWu4LqeDKw0I8nN6kLpRHkou5hYcX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dvUB3DFJ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Add link_down_events
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

v3 -> v2:
ixgbe patch: rebased on latest ixgbe changes; added statistic for E610
no changes to ice driver patch
v2 -> v1:
used ethtool get_link_ext_stats() interface to expose counters

 drivers/net/ethernet/intel/ice/ice.h             |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c        |  3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h         |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 10 ++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  2 ++
 6 files changed, 27 insertions(+)

-- 
2.47.0

