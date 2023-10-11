Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B47C550E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 15:15:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 148C881AEF;
	Wed, 11 Oct 2023 13:15:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 148C881AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697030105;
	bh=y8On37l/aCn8Gup0VWkdn9sK716IpTmTY4sJUi41oqI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OW4JB3Yzkek6kRpJZfiTUYJmgO0nkenzMFzygPe/2X5Tzyr6Qk+Pk3Wt0U9BeL+cL
	 XmmuTGoDZAD8r60Gu3Jk/StBkq+4LGMevjYysgH2cdC9/zZcWktcsmyXXcS0WwEv6b
	 C/YHkrY5dEVh2CLYqRhtxuc6/m13FaVbbJ/FjVYNIbFCs0kafWKeYmuFI/7daK5MFZ
	 BSb6h1cCyRzcMWmOp6C3Nt4G9MVkE2h9tWXhi4/MhGa5XKef/s+0PgT2vuS4S7KWb6
	 YyveeZjJxO1zhK5Z1Vbfs2tlHTZ4JFQBorHPslwgvUvLY+ieoc0JIyhhxmbKgjuxpD
	 hCZAcMIq/2iYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BLuf_FEsmc79; Wed, 11 Oct 2023 13:15:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 075AE8149A;
	Wed, 11 Oct 2023 13:15:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 075AE8149A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E83631BF363
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 13:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B861060ABF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 13:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B861060ABF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGQgosA0bW0E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 13:14:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9CBE605B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 13:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9CBE605B5
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364021502"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364021502"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="703733879"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="703733879"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 11 Oct 2023 06:14:43 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2F1533497A;
 Wed, 11 Oct 2023 14:14:42 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 11 Oct 2023 15:13:46 +0200
Message-Id: <20231011131348.435353-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697030096; x=1728566096;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cOOcPKe0SjI006MvdpjWkc0xtpRtNoCUue6a2fyTCos=;
 b=EfzOGW+NWm6t+PJBe+azBUbkRX1gkNiqyJURqI1MfDAMnnXwKVGT5l0W
 Ydz4cFntAlnt6GIXhB4kZ6QzW1CnmmSPmRvNRd0arW1tHo/5E8MCAYw4Z
 YLDAMT/lK7M0qXUw8TT+eaAFK9C390CsJYkbYmsm/P+AC6M4WL/p2twN2
 BdeKGQdZPZxPmR08xzunbKbWlzB/DhhJ3KN4Ywk8HLSAPWHb/HK9IiBCO
 Ljuq5Xv+aBITVc8HjlItnjFm7STStk6YIs2svoT/pBr1nRT/eZxa5jxXI
 cdA7xwijqp1k29pS7ZjDLzMwYwHVeKbq2FO1DZ6va6zmA4UE9sm3YQ43C
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EfzOGW+N
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] ethtool: Add link mode
 maps for forced speeds
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com,
 Pawel Chmielewski <pawel.chmielewski@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The following patch set was initially a part of [1]. As the purpose of
the original series was to add the support of the new hardware to the
intel ice driver, the refactoring of advertised link modes mapping was
extracted to a new set.
The patch set adds a common mechanism for mapping Ethtool forced speeds
with Ethtool supported link modes, which can be used in drivers code.

[1] https://lore.kernel.org/netdev/20230823180633.2450617-1-pawel.chmielewski@intel.com

Changelog:
v3->v4:
Moved the macro for setting fields into the common header file

v2->v3:
Fixed whitespaces, added missing line at end of file

v1->v2:
Fixed formatting, typo, moved declaration of iterator to loop line.

Paul Greenwalt (1):
  ethtool: Add forced speed to supported link modes maps

Pawel Chmielewski (1):
  ice: Refactor finding advertised link speed

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 193 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  46 ++---
 include/linux/ethtool.h                       |  27 +++
 net/ethtool/ioctl.c                           |  13 ++
 6 files changed, 183 insertions(+), 99 deletions(-)

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
