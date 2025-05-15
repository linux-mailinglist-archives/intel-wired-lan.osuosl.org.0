Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 810F4AB844D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 12:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1311440E52;
	Thu, 15 May 2025 10:50:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xAsSb0OIVd2O; Thu, 15 May 2025 10:50:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EB60410E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747306234;
	bh=SGWKRqZrjABH3ht5LZ70wqn7acwnmlNKSRe1goRJOi0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yLYHW5d4Bvo/TkyVoGmEs52UQJ1KkPTif1oWZXBeEjsChU75sDjwQ/WS82BiiDvk4
	 FUA7fEtvH6iD4P9jfF8nRN7ge9za/3//rr7kuaN8fZU4e+vlZQRG4P3bltNuU+bdpH
	 y4cFSUa2gUGFZz1Ue/zFtCiYa6jpVZEPK5eRbGrqW7fRwe13tXuqL+3T8A1B0ueuhP
	 1ByCdC0OqYTGE/jqgS41vtVJnQ4tnRDAmiS+CsiGx8+eFNU8Z5TFDY/mmyQzfMrCrP
	 5Kv+ow9mnZvE0VQt0dnycur09Sx0tv9NESKcAVseHgMFBOdgdMlL/ULFvzJaH5Xzaw
	 S/Ea3ZfvKkfZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EB60410E4;
	Thu, 15 May 2025 10:50:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7566F13D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67236405F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lxBTW845G2hm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 10:50:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A39440607
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A39440607
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A39440607
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:31 +0000 (UTC)
X-CSE-ConnectionGUID: cHIvBOrJS0+tjMP1CPF7pA==
X-CSE-MsgGUID: TYij/+cMQ+KICItL99wSGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="66786953"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="66786953"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 03:50:31 -0700
X-CSE-ConnectionGUID: U7fOgo58RUihgvs8WWe3cA==
X-CSE-MsgGUID: iNttbOASQ3ew1RFbVsKVag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="138873879"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa007.jf.intel.com with ESMTP; 15 May 2025 03:50:29 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, kuba@kernel.org, dawid.osuchowski@linux.intel.com,
 pmenzel@molgen.mpg.de,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Thu, 15 May 2025 12:50:08 +0200
Message-ID: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747306231; x=1778842231;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=44yPQ2Ewq7rCnqRQFn0AxLyqSxd/bLzf7YEzRJQQrCw=;
 b=FXernOtFemVAMl33K6Svkd3xxhVW0t+e/rH7gI0t5NhANZbuwwYKB+zq
 4wOQ7NPZalX2A0g+ZAo69E+t5/p9Cbc8EKJJmQvUKdVJ8a7xxOOl0ux8m
 bDiTYPXzyuNZjWTlQUZ3NQS22h/HdsmamgiYeah8u73z9UYFDPjTRdtLo
 NDBow1xg0rDVeFC4CAabRmCdQIqbGoEhqXafJetrSbT1qxm34HvMkxYip
 tt7AarMpG0961KFoB8Zobcnp2j2o5ECPvmf4JGk5m3Nk+BdVM1qqEBEte
 tP+sFlxVUCOMwHGPSkzCtCo/Ey8w5HC5iWGNlTGIQVdUYTJJT/PCEl2ZN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FXernOtF
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/2] Add link_down_events
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

The counter increments only on actual physical link-down events visible
to the PHY. It does not increment when the user performs a software-only
interface down/up (e.g. ip link set dev down).
The counter does increment in cases where the interface is reinitialized
in a way that causes a real link drop — such as eg. when attaching
an XDP program, reconfiguring channels, or toggling certain priv-flags.

The values are exposed via ethtool using the get_link_ext_stats() interface.

Example output:
#ethtool --include-statistics <ethX>
Settings for <ethX>:
        [...]
        Link Down Events: 2

Martyna Szapar-Mudlaw (2):
  ice: add link_down_events statistic
  ixgbe: add link_down_events statistic

v4->v3:
only cover letter edits
v3 -> v2:
ixgbe patch: rebased on latest ixgbe changes; added statistic for E610
no changes to ice driver patch 
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

