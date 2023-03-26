Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A93006C9622
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 17:27:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D46C410C7;
	Sun, 26 Mar 2023 15:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D46C410C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679844423;
	bh=/ZpJNm9jhq/CmgHzLcM6n9eLGa2bGKkyN8WU0kkoRtA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sPdmt5ywCnVkJVsd7JK3NXuZ+QKjkZRTqjxC0iP+NdKcORo2Drud7HWML/d1lIInb
	 NGrHeYou+Kr2iZoY/HBgD4YoB+a6jjVQKY+CeGjm8LxTp7K3FQJdQP+dEC0UKv1pJE
	 T+uC85kIuspmMZbEBKRw1qkOcoseqsewa1ETU+njz8BNaT84JCwRPe/r8fDKqRMLI9
	 NliDYWeUT2Y+XrSuOhCIFy09iYqcGDaHkuUG7QD3QWYGdiZ98lTMzR3k/K1nelzwC6
	 jylW6rHkqBDClNf3Y9Gkr4Kwb6TkTnftLqhOlsavXjFWJ9ZTDnHsOlXkYIfbPg4Heg
	 gENzswr01ZIrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vml5vJ-u4UEn; Sun, 26 Mar 2023 15:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F56C410C6;
	Sun, 26 Mar 2023 15:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F56C410C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A3211BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FCAD60E78
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FCAD60E78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84IPou-nh1q3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 15:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4ADB760DE5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4ADB760DE5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402697688"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="402697688"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 08:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="794033874"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="794033874"
Received: from jsanche3-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.37.83])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 08:26:53 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 26 Mar 2023 09:26:34 -0600
Message-Id: <20230326152636.2168751-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679844415; x=1711380415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iz0IBL641JGQbReaUEUbrpNEwLO1T2YPKaeHvr1DrgE=;
 b=XzG9O3n/7CQ/jgvIUGIPelF70GY0EyGzB4UkBkg/+XEnOghc7602CQUu
 rvEt9DG+hpRbRZs+GMR08PW7iqDCJi8bA3l4/pGhIwZbNsg1VEMzYBpDx
 6NMYA6n147D83OVO0iftyrz74L3OUERxRgKPkcHtgnwM23B/+wYpsbsDB
 x640vUkpi+dVUSPfRJI7DzVjXPIFSkKpsyJFc5J4lz2XFKxRK9ybqXcUM
 6YZkaTeKDGKdpPKAoMeyPpS+SF/YQnWI7IGbau/vkS+I+aKSkRJvVFtAK
 +hKdwv0QjLubJIgnKHcEeGZXOBlVZfOZdxZNRou63cecVVGCaqUSbfgCx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XzG9O3n/
Subject: [Intel-wired-lan] [PATCH net 0/2] iavf: fix racing in VLANs and
 refactor states
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

This patchset mainly fixes a racing issue in the iavf where the number of
VLANs in the vlan_filter_list might be more than the PF limit. To fix that,
we get rid of the cvlans and svlans bitmaps and keep all the required info 
in the list.

The second patch adds two new states that are needed so that we keep the 
VLAN info while the interface goes DOWN:
    -- DISABLE    (notify PF, but keep the filter in the list)
    -- INACTIVE   (dev is DOWN, filter is removed from PF)

Finally, the current code keeps each state in a separate bit field, which
is error prone. The first patch refactors that by replacing all bits with
a single enum. The changes are minimal where each bit change is replaced
with the new state value.

Ahmed Zaki (2):
  iavf: refactor VLAN filter states
  iavf: remove active_cvlans and active_svlans bitmaps

 drivers/net/ethernet/intel/iavf/iavf.h        | 20 +++---
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 44 +++++-------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 68 ++++++++++---------
 3 files changed, 66 insertions(+), 66 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
