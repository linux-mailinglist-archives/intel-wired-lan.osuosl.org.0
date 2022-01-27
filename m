Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E63A949E4BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 15:36:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6767E41C6E;
	Thu, 27 Jan 2022 14:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtlTh5rdW8m6; Thu, 27 Jan 2022 14:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7394841C5D;
	Thu, 27 Jan 2022 14:36:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 49D561BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 14:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 333A441C69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 14:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BiMp5-zx_QO0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 14:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70F6741C5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 14:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643294196; x=1674830196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xeKEzEacBweKYPZvdVQjUEGxmZtF1OXx/0Fda5M1E7w=;
 b=E0pZ3cVfx/eZ5mKL6QQTLi1a0q6S2gkWLaqrykqBWr683QTaIX5XiM8r
 Au/PpDtChJQK6yAERYgXL44Qz0tEvmw2Sdo6eYb0VWsE2xtu3jmSIxzg7
 bsYch0X8kGfWDnlAJ47R12IAVmshzGbPLzpuPF0Lqu6HMbzqr46rFMWjD
 144i0dE7oMmzcsGu/2f6ar5XTAOELBDDOwf6wxyoorovRqtxpQ+QL8IMJ
 Lsi9uL4XpSkgyp9KKNvWAibAmmbPnpuJn+5B++E33QNW0rdYi8Oj/QHfz
 U7Zv+QjZAcNELs12VtVjXsSSjK3W0vxBS7qhKRMGgpwWgsLHoOr2sQM8w Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333221540"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="333221540"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 06:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="563796749"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 06:17:13 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 15:16:16 +0100
Message-Id: <20220127141616.27908-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] iavf: Fix return values
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
 v3: Change iavf_poll_virtchnl_msg to int
---
Mateusz Palczewski (2):
  iavf-linux: stop leaking iavf_status as "errno" values
  iavf: Fix incorrect use of assigning iavf_status to int

 drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 172 ++++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 178 ++++++++----------
 3 files changed, 224 insertions(+), 131 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
