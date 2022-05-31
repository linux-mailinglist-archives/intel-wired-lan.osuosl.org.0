Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEC65391C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:22:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2E9D41C41;
	Tue, 31 May 2022 13:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRIx4EQmv3FD; Tue, 31 May 2022 13:21:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85CF641C42;
	Tue, 31 May 2022 13:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93D1D1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8108B6058F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ldvRIdqmpdAm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 13:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E8FD60DDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654003311; x=1685539311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f3WSCGjaVE8FSPuvbC2wXDS5i643gNeEhlvg3MgFHEc=;
 b=IO/i021eCTLpsbpL9BGXw+W6mzNwwy0hxDmj9mtlNJvUaxk8NoYyHHuW
 kJAv8dWrc6xf1oI+hHY5gWsS5ThLjfhbt8JM8MYy5MSmWQWztuU5SxDdA
 LwUn330tDvuqb03IZuL+91+qZMf+6yG32WrrAew/WlZ5VCVYUbbvrYqSW
 evhWO0KgHgkHAZKPRxI4CK2avD/0vl6D22Px7203mzxO9bsRu4FRwcHju
 u0Kf3B7Tru7tl8gQqBx9gzD3kKBBqIvaXPqkZvzJMNL4iSz+LGNvNNxA7
 x1pQbB4yTmwEjAwtMc5B9ky/fUmiTb7mvX2dFERmdkC5qc9ooQ0A1eI04 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="275255336"
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="275255336"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 06:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="633035750"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 31 May 2022 06:21:48 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 May 2022 15:18:18 +0200
Message-Id: <20220531131818.3411-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 0/2] ice: Fix memory corruption in
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

Przemyslaw Patynowski (2):
  ice: Add error handling for queue config fail
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
