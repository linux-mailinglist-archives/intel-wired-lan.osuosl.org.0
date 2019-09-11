Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5F4AF3F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 03:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E0E885F4D;
	Wed, 11 Sep 2019 01:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RiwzRNs8-VDQ; Wed, 11 Sep 2019 01:30:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3CBF85F49;
	Wed, 11 Sep 2019 01:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4171BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B4F185F46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3KNhDsacTJF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 01:30:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8B7385F35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:30:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 18:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,491,1559545200"; d="scan'208";a="184343710"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.81.181])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2019 18:30:30 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Sep 2019 20:30:10 -0500
Message-Id: <20190911013012.710-16-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190911013012.710-1-shiraz.saleem@intel.com>
References: <20190911013012.710-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC rdma-next 15/17] RDMA/irdma: Update
 MAINTAINERS file
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add maintainer entry for irdma driver.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 MAINTAINERS | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 43604d6..f91b183 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8307,7 +8307,15 @@ L:	linux-pm@vger.kernel.org
 S:	Supported
 F:	drivers/cpufreq/intel_pstate.c
 
-INTEL RDMA RNIC DRIVER
+INTEL ETHERNET RDMA DRIVER
+M:	Mustafa Ismail <mustafa.ismail@intel.com>
+M:	Shiraz Saleem <shiraz.saleem@intel.com>
+L:	linux-rdma@vger.kernel.org
+S:	Supported
+F:	drivers/infiniband/hw/irdma/
+F:	include/uapi/rdma/irdma-abi.h
+
+INTEL X722 RDMA RNIC DRIVER
 M:	Faisal Latif <faisal.latif@intel.com>
 M:	Shiraz Saleem <shiraz.saleem@intel.com>
 L:	linux-rdma@vger.kernel.org
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
