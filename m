Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1679F5B1AB5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Sep 2022 12:55:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 776884159C;
	Thu,  8 Sep 2022 10:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 776884159C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662634518;
	bh=mhBCHMmf31LRrKGtLr37U0j8wFSBPn/COr16dhVPHMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nJjbi22X8uMFMdG1pgVWJrD4jNzsP4tFMB5/Ln1cnOzQy5zlsNo0Bnfsl6hUrZ6sD
	 2i4YfdoPe/C2WFn8JAelwPGla8Z3mfbfR15JZG9z3czxE6SWXDGI1AajHnp3z15+Ug
	 H/DuWw9rfrNd8rcz1lp7wyHpAGRxe4M/XpC/v4xpgWblONwO+ZUb00zFghCZ6v+OVI
	 4wv5qz26gpRWZpwRPfmPBr8+6288253U/8Nd7NrbTzBsgTWNBi6SNf8FzXj6Gw1e79
	 q4a9qvtYnjUjq4B3JtnSqVOyBWqXiJ9aWNr3R6nolNeLFpF/Lxy2jkmrjWMzkpnYzO
	 +6KDF5Ar9/PUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vUSqW4AjrwmF; Thu,  8 Sep 2022 10:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72BFD41597;
	Thu,  8 Sep 2022 10:55:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72BFD41597
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 599DB1BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FAB641B6C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FAB641B6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90lsUTJd0IBG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Sep 2022 10:54:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DB7441A3D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DB7441A3D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="323329366"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="323329366"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:54:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="645033416"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:54:53 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Sep 2022 12:54:27 +0200
Message-Id: <20220908105427.183225-6-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220908105427.183225-1-michal.wilczynski@intel.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662634494; x=1694170494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3AgEutGj0/EYplKaMtsa+SOoY2RlKf+4UyoA134y0ZI=;
 b=iGkUGf9+4oZ/WBjcXW1XGGewGSmAU8aEWjre2Yg/nxXkgfmjdJw1Bc0k
 dAUdfeKFAh+W+MMZcz5aw8pe3zYS9LQYaPSnTZpylsym/aoI0Mu9Z7+Qm
 oDMjhcpWqNKJ/BCPBTtaUwwwlz3AxCV6xXnZLJTYreTw+s1EpQxUVg4vI
 Xq34wekeRjuJN+7HKSkN6DPjhgqiBHUEJGoJTaRFBkTZ6rM3nm9GBSwu1
 sm3FYGOWDgFanql+LzWuD/LWH29xrWpwuZChvNkboXNCnMm4U5fdvfbQQ
 4tYvphWi4i9hz0A+BuXFHs3krlVEqpp8y8kV7/Tzu68YHLfKbjdyhZfy9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iGkUGf9+
Subject: [Intel-wired-lan] [PATCH net-next v9 5/5] ice: Document txbalancing
 parameter
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

New driver specific parameter 'txbalancing' was introduced.
Describe parameter in the documentation.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 Documentation/networking/devlink/ice.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 0c89ceb8986d..6c6f2aef2e84 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -7,6 +7,23 @@ ice devlink support
 This document describes the devlink features implemented by the ``ice``
 device driver.
 
+Parameters
+=============
+
+.. list-table:: Driver-specific parameters implemented
+   :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``txbalancing``
+     - Boolean
+     - permanent
+     - This parameter gives user flexibility to choose the 5-layer
+       transmit scheduler topology which helps to smooth out the transmit
+       performance.
+
 Info versions
 =============
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
