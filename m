Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A242B50DA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 08:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DABE381314;
	Wed, 10 Sep 2025 06:01:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3m9N32Xb6VsU; Wed, 10 Sep 2025 06:01:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 633A383D39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757484077;
	bh=lH76Yg3uWukLke6WakACFJVOwI+W/8+ldpVOkEUMKT4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PSUAWiKDpNPxPTNEs3Uhhd4QArVBVb8rPT5eZnnAQtsHUqd+HwdlbTIP5nE1hoYak
	 D1SoGkQoXPjF+vEhGKPQjC7MIt19E6h9wnvK5jIYYhwYkTR3ABe5BbYZqKryzlzZrb
	 pykQLyxQ2OrDvNUj4oOSsE6VQzTCTo6dGBLJqpc6NknED9dBsFMiZEjg9Yf9R0DK7t
	 DC5y2rXiZpJc9z3VlMkMUFbTZM1kEL0orbFuN3LAjAgjsduQKxSe1gMw3SE9xN0CP3
	 6JnQYQevphsXXvHG17OkTW5EoIsrElYppiV5E8f5XiwrAYBnufvUjYopNdDuCYzmyG
	 qKo+WU0h6a9yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 633A383D39;
	Wed, 10 Sep 2025 06:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01599E1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 06:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E70EA40C9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 06:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fBuiaIDZbTsx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 06:01:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2BEB94045C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BEB94045C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BEB94045C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 06:01:13 +0000 (UTC)
X-CSE-ConnectionGUID: Z5nFr9RMTnSye0PCxuOTvQ==
X-CSE-MsgGUID: wEU1+8UpSIKgQLjHoykBPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="70474137"
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="70474137"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 23:01:14 -0700
X-CSE-ConnectionGUID: ZP8buqKkTbuXwhpefTcIuA==
X-CSE-MsgGUID: MFBcrFZKSbat0SbSseOGAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="204058044"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 09 Sep 2025 23:01:10 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed, 10 Sep 2025 06:01:08 +0000
Message-ID: <20250910060108.126427-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757484074; x=1789020074;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=grZ8xIw2oQRi1EBEOlVcofDCDFihthbxv3v/v65+s3w=;
 b=jy6xy7XYbqSjcscW1MNnV/T1cXPSxhNIs2zjA7xQ12m4q4JpwyEnPMIj
 ome9H1PjrHt7JdqyYiVUgJGqSJxJ6Qgz5lZndyEyk+DSEct3hspM4AHGy
 4cl/oNd2Wwokjj0MxDEV3JfW2F7PFEptFRW6sOG6DbYrB2+tUIIGp0XHS
 X6xr/OiGjIDMYHqQ1qzW0r60w5+e5HYVTGzx5yhfdDlftHEqFBEp2Iie7
 H+2R1jupPvpAHunx6sWo7d9P26DdJyulCgqOyIaeLnZht4wqLEUdg0Dcb
 TAGRDDjvPn0UA/RCyL47khq3NQjrgIJXr7ln49VQ/arx+sYK3ao3x4TAy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jy6xy7XY
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: fix proper type for
 error code in ixgbevf_resume()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable 'err' in ixgbevf_resume() is used to store the return value
of different functions, which return an int. Currently, 'err' is
declared as u32, which is semantically incorrect and misleading.

In the Linux kernel, u32 is typically reserved for fixed-width data
used in hardware interfaces or protocol structures. Using it for a
generic error code may confuse reviewers or developers into thinking
the value is hardware-related or size-constrained.

Replace u32 with int to reflect the actual usage and improve code
clarity and semantic correctness.

No functional change.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 535d0f7..28e2564 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4323,7 +4323,7 @@ static int ixgbevf_resume(struct device *dev_d)
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
-	u32 err;
+	int err;
 
 	adapter->hw.hw_addr = adapter->io_addr;
 	smp_mb__before_atomic();
-- 
2.49.0

