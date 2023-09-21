Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 910317A950A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 16:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3233E82133;
	Thu, 21 Sep 2023 14:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3233E82133
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695305167;
	bh=AkL5grqIfqJuOityQBTzBBwAqKUsHzcz5EeKpYFpEho=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dHT7Uf7lm99er3aFt+S3oWicrFutx4hUN7YgJ8Er3Zz4xZ3haZLLm9LCnRu/FLLkO
	 iras81AYoYoVeUFRvDd2CbqNKU+rgjTZ+yIsjQR8O2E/DxtjBxKYTCxSTLPmU+ujxI
	 f3leCLH8QZGlP/SFgfF6qNEyGcR3fKS0GSq/xDd6Xad3qyeoAS39Rv6J8vjfeMN7Ci
	 VKvn0xDZWZIMuhjw9Jfxu5tqvzoOPZEoAp/IeuEeoqndTGsZvSuwi3dACTI0LQqQge
	 LV9KWEKQa+6zA7Vqm75ViOmsFikSzRwGEPW7JxxDPiTkLD4BJuTWdsZptflQHKAdQv
	 fcB8Qc2/8qK/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AkjglRGzOZF6; Thu, 21 Sep 2023 14:06:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D44C82177;
	Thu, 21 Sep 2023 14:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D44C82177
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4911C1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 14:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2154F82133
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 14:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2154F82133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXE3SfL1Goer for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 14:06:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E5328820F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 14:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5328820F1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="383278145"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="383278145"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:54:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="890377513"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="890377513"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2023 06:54:05 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5E830284C9;
 Thu, 21 Sep 2023 14:54:54 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 21 Sep 2023 15:51:38 +0200
Message-Id: <20230921135140.1134153-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695305160; x=1726841160;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IHstn1eCvB1+dZ/JDbHZp06bG5jNeGjcEDmKLrsRWKU=;
 b=ZuyTJ7zPZOgLY+I0/nAO6aP992V0+FxEhLxgpbFn1uN4bEFL5PzAfIvY
 eDVHgQ0UCb0XdR+cvOyw3opiKmKrL8l9Wx0QqMqpPhbbE1tKodAIPgtea
 WR86X/x2DAwd7apU+WKO8X9Jp/ywNOUIMDwj5S/XtXwc2bRTC6lyOhc52
 fTrfRbgmu/JRcizKiy7ozFL021JdjUAEGG46WtBTo4Rg/bOApe1BTEjmq
 4CYDqkJg31o5d4vFA7WSyCecrUN75KTKQxQ8YET1AzHW1S4R+vy7G+qhc
 qusY2Ds4dN0KLHWcj9f3+2e0JCEIidUWxVOxCfdfYZ8kwWKxaKGU01YkP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZuyTJ7zP
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ethtool: Add link mode maps
 for forced speeds
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
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org
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
v1->v2:
Fixed formatting, typo, moved declaration of iterator to loop line.

Paul Greenwalt (1):
  ethtool: Add forced speed to supported link modes maps

Pawel Chmielewski (1):
  ice: Refactor finding advertised link speed

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 201 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  24 +--
 include/linux/ethtool.h                       |  20 ++
 net/ethtool/ioctl.c                           |  15 ++
 6 files changed, 178 insertions(+), 85 deletions(-)

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
