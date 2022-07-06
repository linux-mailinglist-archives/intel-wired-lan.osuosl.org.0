Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 219D6568A36
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jul 2022 15:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D1C3408A6;
	Wed,  6 Jul 2022 13:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D1C3408A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657115704;
	bh=6DpqlGBS1BNOxmItKvmrc+IcmKpkvLI9gOykzVylecI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cxxEfUOS/n85bOHUpVQDjboDXdu2RkVA+H/FmdsuaHb3rkhZA6NdEau/4xIAtdcXN
	 kSft2BYCBXC2Zls0vGpWNm8ox6lJGK2yQP28OqVOFXXAHzdfpEB1CvK7ySVmztvXQh
	 RPdq9X0bfU6LldrMCbzuAWdauj7CdFtK3v4UVivoSw41PnLVbwiFxArOTRhJ/ptJkE
	 ZsbX1QpXrglZI7B8lN+c7hYSIBRJnQlvmGRuyfl7xc2RYUXb49tC5eIjq4IfF+k69C
	 vd2dxEvmguYEDN+uKSNvCkN9RYyyVpR8KSCJq3L+PS18810LkIRCZtP+8qiOVbL1Ll
	 7KVD/rNTv94gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id awjuzo5kfsSE; Wed,  6 Jul 2022 13:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB253408BC;
	Wed,  6 Jul 2022 13:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB253408BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 312AC1BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 13:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0375460FF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 13:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0375460FF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mYqz5TJvX6V for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jul 2022 13:54:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4221660FF2
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4221660FF2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 13:54:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="282502961"
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="282502961"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 06:54:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="735573286"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2022 06:54:55 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Jul 2022 15:54:35 +0200
Message-Id: <20220706135437.1695672-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657115696; x=1688651696;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YpaKi6LijJZxaFYCFyKF+JH/HzCeHS+yC3fJnuhFabE=;
 b=LDxaV5e7ERdGKeeCswmz7V7MyQyqD4gaVCpH5ddoVBCWYzmoGnPhp82y
 NWJ6darV4CEgm9OhxmOhPo0NnESzrmG6M87wr66s1+I1JguvYKTRy3kmj
 izzQv6bKxPdcS2YQFz6ZGrx52K0gFqbye6IgDxfsdCYvyszs7hxB1kM6E
 0tanFZ/athF7X2QlbXcUNKZCwCQgbVerPNVpatrx2F2ACjynt26JHCFml
 GjtlF0j4HY7+wF9pxGqBI39V16Lmizsuqth9coiTQLcyjKxCeo84lAFCy
 rRXN9qiQXa5LNFEJwhfwA0vIGYwHhpMmleC4xxsB3t1WfUKY2bCLtnhsq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LDxaV5e7
Subject: [Intel-wired-lan] [PATCH net v1 0/2] Fix close path on shutdown and
 remove in iavf driver.
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

iavf_shutdown was implementing an incomplete version
of iavf_remove. It misses several calls to the kernel like
iavf_free_misc_irq, iavf_reset_interrupt_capability, iounmap
that might break the system on reboot or hibernation.

Fix a deadlock introduced by commit
974578017fc1f ("iavf: Add waiting so the port is initialized in remove")
due to race condition between iavf_shutdown and iavf_remove, where
iavf_remove stucks forever in while loop since iavf_shutdown already
set __IAVF_REMOVE adapter state.

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
