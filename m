Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F33BAE1879
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 12:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE7660E47;
	Fri, 20 Jun 2025 10:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yk1uZoLSy1UM; Fri, 20 Jun 2025 10:03:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0599460F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750413805;
	bh=xzzUusK5hC3SsdydHoBsqLaQmOotgrPWb4D2P74O4RQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NCpvOLrvgugKh2YhEpKfPM+Fb3zt2xE0jZycd7xKLfSDbuAnKNTtZKXUve8oCRPDP
	 6e25MLl3VIJT2KWbOwqgsC4IGXdYGhFg2oOs7aB7w3MZ6NVic07Hqy5ZaUWJyDZJvL
	 8HER1lQ3VJ9Rkvz5AbBoBHYeOWajfMlc7tMr5+x1PTQIN8mGJup4kDqfrce82ImArw
	 mrykiJh0FBtndnVcclLXfu83Z0dokb6PvQD5fGARNRaVUDcuJBfPQ5QfydzxQ1h8fN
	 LdRFb7KDtHtyjLUZ51Y3FN6VeGVFm9VAulGA0Dfb/YhTKVivYbJy0IWxQlZcGfFvKe
	 fzGPMEXyPKx5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0599460F0C;
	Fri, 20 Jun 2025 10:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B0579E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD73240DF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:03:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8tIruc42-oUM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 10:03:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C1F740DDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C1F740DDC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C1F740DDC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:03:22 +0000 (UTC)
X-CSE-ConnectionGUID: AYcQX6evRFq82gl0r1ALVQ==
X-CSE-MsgGUID: aUPDuamySmSLmXVznWpKKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52817073"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="52817073"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 03:03:21 -0700
X-CSE-ConnectionGUID: 5ah90r50SzKx18OqVXdLVA==
X-CSE-MsgGUID: Vy074tasSTmFIH9DVwZZtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="181744778"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa001.fm.intel.com with ESMTP; 20 Jun 2025 03:03:16 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Brett Creeley <bcreeley@amd.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Jun 2025 18:02:49 +0800
Message-Id: <20250620100251.2791202-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750413803; x=1781949803;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a6RQOtRl7tToqDq2ykyZySv8IKJOLXNE4RWsM7IKe8c=;
 b=QMUZUdPix3UWLGmPcZB+z+X7lfny4k0YL7cBDCWlCsIj1JYpIq01ctSg
 Olr/D5xFm88zwZpwIaz1nGRmG/JqViQ88uLJX4US3kx+EuknJsXocb01w
 yV7bRK91Elj4hzMciqOTxN4QCZVtLg4XHb3uN5Z0a9nu7svsq2oS+Y3UJ
 +JjPPoPO7RnxFZhB3XlOgv6OCL9GSoqBV/jBDskmxpyk7eT+nBFlH81iD
 xymhfoRXo/cOlXn3afAp0Vfd2gAdgSteBa7UmLWv74dxgi5tEz9aWcUxt
 UKhtiu2mCOfUD050AVRtxJEJH3vhzxzxsqUwLQJIYSmPspy09GMMkeg03
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QMUZUdPi
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v3 0/2] igc: Add Default Queue Support
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

This patch set introduces the support to configure "Default Queue" during runtime
by using ethtool's Network Flow Classification (NFC) wildcard rule approach.

v3:
  - separate macros relocation code that not related to wildcard rule to another patch (Brett)

V2: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250619153738.2788568-1-yoong.siang.song@intel.com/
  - use Ethtool wildcard rule instead of extra uAPI (Jakub Kicinski & Jacob Keller)
  - combine MRQC register definitions into a single location (Kurt Kanzenbach)
  - use FIELD_PREP (Kurt Kanzenbach)
  - use RCT rule (Wojciech Drewek)
  - no need brackets for single line code (Wojciech Drewek)
  - use imperative mood in commit message (Marcin Szycik)
  - ensure igc_ prefix in function name (Marcin Szycik)

V1: https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20240730012212.775814-1-yoong.siang.song@intel.com/

Song Yoong Siang (2):
  igc: Relocate RSS field definitions to igc_defines.h
  igc: Add wildcard rule support to ethtool NFC using Default Queue

 drivers/net/ethernet/intel/igc/igc.h         | 15 ++++++-------
 drivers/net/ethernet/intel/igc/igc_defines.h |  4 ++++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    | 22 ++++++++++++++++++++
 4 files changed, 52 insertions(+), 7 deletions(-)

-- 
2.34.1

