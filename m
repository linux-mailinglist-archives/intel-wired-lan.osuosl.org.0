Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A744472C0F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 13:13:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D05DC606C9;
	Mon, 13 Dec 2021 12:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LFGl77pIVSEa; Mon, 13 Dec 2021 12:13:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E1E606B6;
	Mon, 13 Dec 2021 12:13:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CBFE1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39EB14268D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bMpxHPkgkk9o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 12:13:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFAA442689
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639397615; x=1670933615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2PVTWZ+SuMMpT6KERuky6idluzJDnOpSx1a2XsfTHhE=;
 b=mP1H/DKlRTA1rwf65zkMn0NKHAb8riZVBoL1BJZABoSVTByiLYJByKN2
 RHpMPvjddjr4rlUqDCf78wpPPxz28u0xyXOT1SnHAWYU64n5XVYAUs7am
 D9NxWojfB90/oluLt3+byp54wmkjhcgu2kkTu6lUKCzStSEI07HWPXTSF
 hGGm+Ex7ybnzhZOGTB6HAP2MVRT0QikoRs+Oyv3ORnegMTsGAYCWJF24A
 yMpBM7Ez6kO/dV6VMjQaqDjRJw0KWGsYD8JBc8BbruFEsUviICaLkES0r
 0uiT7pDPZRln27HswwbVLAOnklo1ubRvjdPQG1I6mstFozkcB56Hzickd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238942913"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="238942913"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 04:13:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="754319188"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga005.fm.intel.com with ESMTP; 13 Dec 2021 04:13:33 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 13:12:48 +0100
Message-Id: <20211213121248.4137-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/2] i40e: Hw tc offload and
 hw tc offload settings
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch series created to change the behaviour of driver related to hw-tc-offload and changing ntuple setting.

Mateusz Palczewski (2):
  i40e: Disable hw-tc-offload feature on driver load
  i40e: Fix ntuple setting change

 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
