Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A8153B69A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 12:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC69B60F34;
	Thu,  2 Jun 2022 10:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wgz0K1EGvp7F; Thu,  2 Jun 2022 10:08:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3C4560EF7;
	Thu,  2 Jun 2022 10:08:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B93581BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 10:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A27BD415D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 10:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTM8KQGmg_PN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 10:08:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60948415D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 10:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654164532; x=1685700532;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sYFbAefouUrlQRAkev4Ky8SuLKC615DYF88Nsi8dAcI=;
 b=jblR/qRskFjL2gRoV483hMgv7SQ3mB562FGlalhBdd8CpY85hv+mT5Dd
 Crb6qsJroXg0+Hjc3c0MD2VvqukAit2ZPGTPB9XkMpsJ4srCYHxoUFSI2
 c9lRXHWhWWpGFpCCSNbBp4qizUltDC9Lkqlzqe6nj5l2SRmHl/t4zQvme
 lGFNOu1erMH1GySg8eIl86WsUfYehgVKTKapcih59hBra26dOFoe4WwAj
 teGrNdCBf7idxC8BlL+n4vOej4LNV4VbOwcmRX7bo/LoNyPpZCi9qOSp3
 C21mNv3tAXFrFozG+gaj92wyemcEqDkVaBJavf6HRGV/SBK6oNKOkaqTA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="275976720"
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="275976720"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 03:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="824185718"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2022 03:08:50 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Jun 2022 12:08:45 +0200
Message-Id: <20220602100845.2443-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 0/2] ice: Fix memory corruption in
 VF driver
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

Disable VF queues, when VF requests reset. Add error handling for
VIRTCHNL_OP_CONFIG_VSI_QUEUES handler. Without this patch VF driver
could experience memory corruption, which lead to crash:
BUG: unable to handle kernel paging request at 00001b9780003237
---
v2: Edit commit msg to have additional informations, add missing
fixes tag

Przemyslaw Patynowski (2):
  ice: Fix queue config fail handling
  ice: Fix memory corruption in VF driver

 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  5 ++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
 2 files changed, 31 insertions(+), 27 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
