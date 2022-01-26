Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3205949CD2D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 16:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B594A60F5C;
	Wed, 26 Jan 2022 15:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hFNGFUPObAlk; Wed, 26 Jan 2022 15:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1E5C60F53;
	Wed, 26 Jan 2022 15:00:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF9A31BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 15:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C98641661
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 15:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BevT3HUR9uMP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jan 2022 15:00:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4B3241654
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 15:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643209221; x=1674745221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=03FgxYiD6jEmRkr8fwMHzah/tdZLELE7LdK5Ee0PSsQ=;
 b=TUfn7ZOvs70MAwzs83t7cXnYFsfR78Y9MlaPV6N4LHjs2K/Tis44wNaP
 /E5coJwo8VPGg1PsHTTiAtZJRZMnHs6+sDORTINdOBSHVHxWFlZdF5Z/M
 H4JJnXAsVZJKkjq8mEOLl2g6Jv4zPuOIg+HUfIa/OQAZZdRhkKMGkiAdP
 DTyrotHWuAlOCLROlZ6xx3qf5m22Z1hu1tE2oKR8mJAeg6Elt2O+Dlau0
 mE1WQe29QM/BhLjatCB6Ae3BJeeksYUrQacHUB0C4G1dTsaSP9A6vuP5b
 3uHhwN8k84sVP1VIkH2yD+Vm/M82ri14KQ2wKB3gUjkiDpTk86HAbXJ/2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246782940"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246782940"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 07:00:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="479906568"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2022 07:00:19 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jan 2022 15:59:21 +0100
Message-Id: <20220126145921.26334-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] iavf: Fix return values
 in driver
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

Several functions in the iAVF core files take status values of the enum
iavf_status and convert them into integer values. This leads to
confusion as functions return both Linux errno values and status codes
intermixed.Fix this by introducing iavf_status_to_errno, a switch that explicitly
converts from the status codes into an appropriate error value.

---
 v2: Submit this with additional patch introducing iavf_status_to_errno function
---
Mateusz Palczewski (2):
  iavf-linux: stop leaking iavf_status as "errno" values
  iavf: Fix incorrect use of assigning iavf_status to int

 drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 160 +++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 178 ++++++++----------
 3 files changed, 218 insertions(+), 125 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
