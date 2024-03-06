Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4611E872CFF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 03:50:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80422414C0;
	Wed,  6 Mar 2024 02:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SnxzQzPo2y1n; Wed,  6 Mar 2024 02:50:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F9FB410E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709693441;
	bh=pg5hu3whTgo9/wwylJeF7SqYwpOveMaEFYP5BrQk4Ec=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5CwtqutJk4q7eHdcQ/o6kaBFXgFrAIasZp8NzNJ/QwXNj5KJgmF5vda1tnxtfibnr
	 38FdvDJchyXug/95fRnGZyI6ykPc8sArksldOy5JYbSjLe2TrqobcdVBpCy/Uk2bcF
	 WvTpBwZ21f4sYmWuWsPk4YNr+NM12kX90kQGl6yR8MkgX4USA63EZNRhAFxxfAQA2n
	 xQJzG7oKNh+mewddybJ0AAUgus4i70egVa8Opq6kk6BzKyljaXW6nxaxm8xrPr0dFF
	 t8A4KkrDQzSdlATWa0sZvbP2Rsfmu/D6A4ngojqmrFoUU4P24D6wPXgMrJ1I7d2i0B
	 E36MUh93BWwYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F9FB410E6;
	Wed,  6 Mar 2024 02:50:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0E6A1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 02:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAA9660A45
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 02:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RN7aoEC9vgJz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 02:50:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5C8B60A38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5C8B60A38
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5C8B60A38
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 02:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="21741375"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="21741375"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14088531"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:50:29 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Mar 2024 18:50:20 -0800
Message-Id: <20240306025023.800029-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709693438; x=1741229438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4QiwYzyIDPh9dLyrpI5WBB5yIvFVCJxZeRDGkfcvOyM=;
 b=cTUFxC9CohIY5S4BU3mdGL0qlSbEO6rQNyeUcT8ZQbEdOTjSJmHyqnN1
 ZXw/Wzmwts2cwyunluSc5hSBSDwbjqb+4CxUcw7eEbur/tURcDDpTTcEB
 bJhRRJcNnDOEg/TuEYja94wnd6pSYBgjVvEr2q9vR3yFSslJLlnp+2KfR
 7mbE1bue9kBdWC6w0tOjONJfQMts8eQiJ4A9r2QEwgpM4lp96ZHN0XqJ1
 jeQlI7Rt6670c9jfwKvIh4VW0Xh8sJzfDd4lP6EJ9VrRaZXA6HTByc7uB
 xQzF/HVI2GvAlMpsOgz4BxKkz2ZyVp4oMArIQ2aSONpJaP+AO/7wtB2Hj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cTUFxC9C
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] net: intel: cleanup power
 ops
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
Cc: netdev@vger.kernel.org, horms@kernel.org, pmenzel@molgen.mpg.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do a quick refactor of igb to clean up some unnecessary declarations,
noticed while doing the real work of 2/2.

Follow that with a change of all the Intel drivers to use the current
power management declaration APIs, to avoid complication and maintenance
issues with CONFIG_PM=<m|y|n>. This is as per [1]

Mostly compile-tested only, the ice driver currently has a bug in it
that causes a panic that is being fixed via -net.

Changes in v2:
- ice driver simple changes added which go with this series
- igb compilation issues of the patch when standalone with CONFIG_PM=n
  fixed by adding missing ifdef, which is then cleaned up in 2/2

original v1:
Link: https://lore.kernel.org/netdev/20240210220109.3179408-1-jesse.brandeburg@intel.com/

[1] https://lore.kernel.org/netdev/20211207002102.26414-1-paul@crapouillou.net/

Jesse Brandeburg (2):
  igb: simplify pci ops declaration
  net: intel: implement modern PM ops declarations

 drivers/net/ethernet/intel/e100.c             |  8 +--
 drivers/net/ethernet/intel/e1000/e1000_main.c | 14 ++---
 drivers/net/ethernet/intel/e1000e/netdev.c    | 22 +++----
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 ++--
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +--
 drivers/net/ethernet/intel/ice/ice_main.c     | 12 ++--
 drivers/net/ethernet/intel/igb/igb_main.c     | 59 ++++++++-----------
 drivers/net/ethernet/intel/igbvf/netdev.c     |  6 +-
 drivers/net/ethernet/intel/igc/igc_main.c     | 24 +++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 +--
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  8 +--
 12 files changed, 78 insertions(+), 111 deletions(-)


base-commit: 60d06425e04558be21634a719b5c60c9bd862c34
-- 
2.39.3

