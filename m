Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF84F63D5DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 13:44:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39E4D813DA;
	Wed, 30 Nov 2022 12:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39E4D813DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669812247;
	bh=3J8stYspx9hqXrgjLH7i2fb+0TUmBcvQ9ehI/calPfs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iNQHLvgIl60ATbMEGdOu0xGTlZ+IM6MPmBZ2eJH/jfvJH0Y6g6WL+bFs6r5eqQCvk
	 FCFbJvLnkizmnTfVSWabxtQxMCdgHfjsoL8u9LKe1yCN4ToWA5+HtUAlCzit3rwZES
	 MAW/eJa8VVR+p1/atlQdJa0L8ylr8K1wr5zuXGan4qG0032rEgbMu/7xg51wOU7waJ
	 XUDoqfcY0YVLlPOfRq0rWspSN76IMK66ZfeLFE+WvjNe6vnZ6p5+OcnPGqGXWbZ7tC
	 c/X6a0Fgm39gldobMRuSQ1bm9pUWpfBCkKTAC3abCptahQFIRnbXfQ82aOAQ3oTo7d
	 8IYxcpgdEu/lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9qG3_YKrZZA6; Wed, 30 Nov 2022 12:44:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B6ED813B8;
	Wed, 30 Nov 2022 12:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B6ED813B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1661BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42C1B40377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42C1B40377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPScyhjy8zNU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 12:44:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9124340121
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9124340121
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:44:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="316538076"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="316538076"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 04:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="594649698"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="594649698"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga003.jf.intel.com with ESMTP; 30 Nov 2022 04:43:59 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Nov 2022 13:46:47 +0100
Message-Id: <20221130124651.3246167-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669812241; x=1701348241;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kL3IOtKde4/O4okUjqE4Oxa2Aq88+Fw4Ts2uvHHG560=;
 b=EYDZKJ6iry1cY79JrJ0GG/J3EiSNLbcqk/rVTmV5/AHhXOh6VmyBkxR1
 KY2KnzAvG1KagFWQX/+OYwqoc6pqGTT8JkJFBvtJi0Al0dyVgH6094SBT
 +muFp72jop/ddNh8orBNAuFY/A/ZranCtUciKj5g9Zzx2VnS0bsJyAylP
 JaLOjItD/ntvMPkWnKMsWZysX84mWNV2bVVpW3+cvNjRukpG1uD8gFE38
 /aQWoDV/eBF617IWSt6H3VEMu3VYoez9G6sj13F2b86jXNF1unUBIrtgX
 VQ/IMpIHX5NT3pzAP1x3dKwm+M4Ci32kd/THTelwwnFD+l3cwuQH4NoZG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EYDZKJ6i
Subject: [Intel-wired-lan] [PATCH net-next v2 0/4] i40e_status removal series
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

This series contains a refactoring that removes i40e_status
values from i40e driver, and replaces them with standard
kernel error values.

Jan Sokolowski (4):
  i40e: Remove unused i40e status codes
  i40e: Remove string printing for i40e_status
  i40e: use int for i40e_status
  i40e: remove i40e_status

---
v2: Previous version didn't include cover letter, and had
a problem where one patch was erroneously not sent to
intel-wired-lan mailing list.
---

 drivers/net/ethernet/intel/i40e/i40e.h        |    6 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  117 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |    3 +-
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  |   22 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 1066 +++++++----------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |   80 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |   28 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   16 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   16 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |   18 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.h   |    4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   65 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |   75 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |   46 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  148 +--
 .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |   34 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  448 ++++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  292 ++---
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |    1 -
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  265 ++--
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_status.h |   78 --
 drivers/net/ethernet/intel/i40e/i40e_type.h   |    1 -
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  271 ++---
 26 files changed, 1442 insertions(+), 1684 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_status.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
