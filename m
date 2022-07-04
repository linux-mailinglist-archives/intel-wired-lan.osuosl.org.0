Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F4356559C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 14:41:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB3C54157E;
	Mon,  4 Jul 2022 12:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB3C54157E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656938488;
	bh=yVZi2eHPuKPZkdxsT8Cavz97up21qTjYZIy1xOdsTKo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=U3FLX3uyog3hi9fu4SjCCOPyX30jiVAZppye6+uL6MXWs8KKOaPmU2OShY2c1HpWS
	 /9BvQqWCrBikNsbPDORdXIMgcZwaZnD7UD21KJK19wQWjpuEta7d36GMVH6SjqNcee
	 zwuYkOI868h+7cpN+RD9bHhfYiemMvj8j4pGcz1BbkeRkq3loSaRht761VkvkkkY7V
	 0O1nJDOXcNewfvQTJbMG/FNjghPxXAP61QwkFXdBDFycKhZIuFsz1SOakqjiBqjpmI
	 HtZLW2bYJB9Eyik7Nx3+CVhqXVRbtcvDccgmrneiTGBbh99ax3swIfelBRScoT8eUM
	 aw5caIMaFjKNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnud6BHk1WKk; Mon,  4 Jul 2022 12:41:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC53A4157A;
	Mon,  4 Jul 2022 12:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC53A4157A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BF291BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 64FC04049F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64FC04049F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFAZufebkyCp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 12:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C12E5401A2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C12E5401A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:41:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="344798277"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="344798277"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:41:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="619280090"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga008.jf.intel.com with ESMTP; 04 Jul 2022 05:41:19 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 14:41:04 +0200
Message-Id: <20220704124104.1338941-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656938481; x=1688474481;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/o01ut57kxL/C2D2De4NA4cp/k93etxqD0v4R+5KVSs=;
 b=A1mHk7Q8D23QfSd/rTHk1lprCMLdmy3Lq6XdwcZjN5C71hXbVk3wvO8I
 6shwj11WiykSGTmaHVa3ADVqV69rULIiWAhqkds3YZgxFtKC49cEbhE1p
 FnKRyki2bMxdoW/D2s99gsbmfnCoYD+GDv/nKBzb0B5IdKnuK7kO7wx+C
 dDjNbUrXfWhfFVvj+KLauI6XBB37QzHPKFY3N2CHNRqH+KQmtSPtFPSR7
 0Hs1p50WCGYKhLKp1gTITNbP3/yiyg2yr6vPiUDWXnIRDAJpfvryAP071
 WptMhZxadjejUTSF6dg1TIXl0Y4gPwsL6zxE0+XhVth9f60/TWu7I0CZ1
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A1mHk7Q8
Subject: [Intel-wired-lan] [PATCH net v1 0/2] iavf: Fix close path on
 shutdown and remove in iavfr driver.
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Slawomir Laba <slawomirx.laba@intel.com>

iavf_shutdown was implementing an incomplete version
of iavf_remove. It misses several calls to the kernel like
iavf_free_misc_irq, iavf_reset_interrupt_capability, iounmap
that might break the system on reboot or hibernation.

Fix a deadlock introduced by commit 974578017fc1
("iavf: Add waiting so the port is initialized in remove")
due to race condition between iavf_shutdown and iavf_remove, where
iavf_remove stucks forever in while loop since iavf_shutdown already
set __IAVF_REMOVE adapter state.

SlawomirX Laba (2):
  iavf: Fix shutdown pci callback to match the remove one
  iavf: Fix race condition between iavf_shutdown and iavf_remove

 drivers/net/ethernet/intel/iavf/iavf_main.c | 58 ++++++++-------------
 1 file changed, 21 insertions(+), 37 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
