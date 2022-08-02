Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C7587BCE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 13:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3ABE405D0;
	Tue,  2 Aug 2022 11:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3ABE405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659441159;
	bh=jxgyLzYFTIrDHx3VzCGoUgbxur8XP8z5XeG5XU83Uy0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0AFHd9CPsmlokMJ/yHmsX+K2W4PuhYrsJAWLTxbkGLMrMNbOseYYwKifGj+0MY5rI
	 mAugBoVOHQlf4l1surcH6UKLBgRITN8Bh0FOFAsqlyzVJ77fzJWMMtYtGut9+s/YQI
	 TgZDcC9swN1u0rC4JoEAjgUsDNat51M9YmU3CPjfUvUBzKjwMGlQya0LqDvmmSNbD/
	 vqHOMRgF4i2MnidsBnE/sLjov0MIkVxFI73VHF4Rd57PI0SDYzodQpqG0ttTb9yr8q
	 ScV019x39NTRZLQOlSfwfTh/frEGtx9orqzaL47ustBx0lujCAqtijLp4W6xUc7ZHZ
	 m4ugCs+eEpBBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85ZAM9JZ-Ywj; Tue,  2 Aug 2022 11:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E15F1401C9;
	Tue,  2 Aug 2022 11:52:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E15F1401C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADF211BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94612405C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94612405C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxOUlbmXNqdS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 11:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6CD0401C9
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6CD0401C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="289401279"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="289401279"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 04:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="728807626"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 04:52:29 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 13:51:40 +0200
Message-Id: <20220802115142.65176-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659441151; x=1690977151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qUFnl17N6vr42UK8aBdofZpU0qkaNBGFU6K7ZQZnpt8=;
 b=GBK30eWU68B5RKTrfy1P7cyZtsDRW60LDX54LfLL2sL+oa4v/X6LLK7a
 w2YlODLujpirR6UzMftbGzRXfWdnkn3yI1Igo3g2gnesK2FKuCPIvGEC1
 POp/Xs27e/cFtZ/DDXgIK8Ckz41baK3YpEjOLmsC8KRXTlhc5XVhhhTlq
 bpBUOfsRaneVqIYR65sFdM8iND1rmYt2NS/wj29hCBILiejFmujtjhEwa
 vLkk+AE4TEY5rfFtqi/1kGDzFTf0UzYXoylDFu0vECLUdqw5CkiKhEHaE
 976Hk0VNP0rWJiENJHvxZ7wI2ksbrcZZ9ICZ1yBmJtZgkVGAKGuC8SKIZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GBK30eWU
Subject: [Intel-wired-lan] [PATCH net v2 0/2] iavf: Fix close path on
 shutdown and remove in iavf driver.
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

Fix a deadlock introduced by commit
974578017fc1f ("iavf: Add waiting so the port is initialized in remove")
due to race condition between iavf_shutdown and iavf_remove, where
iavf_remove stucks forever in while loop since iavf_shutdown already
set __IAVF_REMOVE adapter state.

---
 v2: Fixed author
---

SlawomirX Laba (2):
  iavf: Fix shutdown pci callback to match the remove one
  iavf: Fix race condition between iavf_shutdown and iavf_remove

 drivers/net/ethernet/intel/iavf/iavf_main.c | 59 ++++++++-------------
 1 file changed, 22 insertions(+), 37 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
