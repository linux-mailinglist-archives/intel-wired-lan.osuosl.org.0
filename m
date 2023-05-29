Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D811714884
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 13:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE8C3612A0;
	Mon, 29 May 2023 11:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE8C3612A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685359884;
	bh=YlGWYsOV1qNXinnFQO6RQNPTASfEFZyo0ezvIElTJQc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HemLSoqeDVO/0QWLD9UtHgcsdwTaJVerZUilTQ3Byot5KsNa0ccH26ro8bBGea7NU
	 HtedaUgBkP9JLL4EdANQYEeh2FAkBcnExx1p3jJyRK/D67idy1+Kchjsn/NaFBmKnr
	 7PyYswTrhx4tlNn1z4lS2ATbbv2r+OYYNV6CJgXFCk2Tj/Yb8YkSiCwOoXucMFaUTU
	 nzZTZ9DRBGqPECWGAgTRkbeRMux3Q4qbyl34V4nWNsLH8bjk64Omg6qIeYMWRoFzMh
	 EfIDOul7OFatQb8Du5T5uiGBGLzU7u8KB9+XOwtqXjo+xjS8CS4XqNFHWvPHhaZtLw
	 rBVrzGYaWkIOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jmqQ2W88pJe3; Mon, 29 May 2023 11:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99D9E6111F;
	Mon, 29 May 2023 11:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99D9E6111F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F8231BF593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 372EE6118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 372EE6118D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDS9t5Ap7JOm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 May 2023 11:31:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E31AF6111F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E31AF6111F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441041625"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441041625"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880358643"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880358643"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 29 May 2023 04:31:14 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 May 2023 07:25:54 -0400
Message-Id: <20230529112558.893997-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685359876; x=1716895876;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PfvWJOh7LkGvJzCN1v3YRZdW2MsI/7e/YbCxw/YvDvU=;
 b=TS6PBmtW9as6qgQHIpqKgWiSCxqOXBwEVda+QXlq9qVKFnE+oFLviOX1
 H80RGL60VIzcqxoz8Hyiqrnnwqp9HJ1/55FjIMGr0fPZ6XVh3CYyhqx2N
 Tfo/9d6uGAsnZsndhtn78yXmylf/lxvNqvjOFVg4BATZ24W1kMBiEV71u
 JpkHRhSJE01MR7NGNUKmkAdoOkgAka1i9COcP5fogASjkNLgnpUCs0ycG
 9zmZhdgf20o9plj0wB9zuCKZa5fRtgECwkrCLuwCjOBRHAXLBlQc5Si5g
 tOHrKjyvZEW1NV/mvRFOsG08NZzcY2QDumQzAkpFqC3LhGBhL8xh8vgXq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TS6PBmtW
Subject: [Intel-wired-lan] [PATCH iwl-net v9 0/4] iavf: fix reset task
 deadlock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dawid Wesierski <dawidx.wesierski@intel.com>

Changing the way we handle resets so that the callback operating under the RTNL lock will wait for the reset to
finish, the rtnl_lock sensitive functions in reset flow will schedule the netdev update for later.
This will eliminate circular dependency with the critical lock.

Marcin Szycik (4):
  iavf: Wait for reset in callbacks which trigger it
  iavf: Don't lock rtnl_lock twice in reset
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"

 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 118 +++++++++++++-----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
 4 files changed, 105 insertions(+), 48 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
