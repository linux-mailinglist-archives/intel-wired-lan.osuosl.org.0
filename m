Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC897BB5EE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:06:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C962442857;
	Fri,  6 Oct 2023 11:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C962442857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696590370;
	bh=Vrk+gwHU3RJV9dRbNPbLGue1acUC94h3S2pNUM6s4Ek=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tnfr7m9WY+9kj7QaURY7wtaW+rWAZnaY6Ied90qW65CvyWS024mwoO6x6NKNJhQ4X
	 vp0XDSumZaFFzwR6YTsZ/LPI6ZGagY9CE/07QfQ2zAVCCYao//eG8LB+L8xVz4SYfs
	 nfy8Ye9d73us1eU/8lXGzxNbbg2Ppwuja6DtkBOtke005KGChtJFrlbvBYSFS6tK3K
	 5W+ALipt0E7wG9Yj1NZKAPMUyR/dsoFJAa6n/D+Q81F+MYnGwAat0Hyssu02Udmrus
	 g0d/L/aFG6XQaTC5T0/7tvBP2o1l0YqN63T5fpFcmtIbZ28wL/d5SH+F4T2RHY8bKB
	 yBzmMiGmedbJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJ8JfhSfFHKY; Fri,  6 Oct 2023 11:06:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5132841F06;
	Fri,  6 Oct 2023 11:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5132841F06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 136751BF38B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B88F641DAB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B88F641DAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AeVQsdvyLW5g for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:05:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBE3A418FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBE3A418FE
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="2332748"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="2332748"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895844432"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895844432"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 06 Oct 2023 04:04:14 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EC73736345;
 Fri,  6 Oct 2023 12:05:44 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Oct 2023 07:02:12 -0400
Message-Id: <20231006110212.96305-6-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231006110212.96305-1-mateusz.polchlopek@intel.com>
References: <20231006110212.96305-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696590348; x=1728126348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b1ZFwZorx5Q6/aXcIfmXrHZm47jo8kxB6IGrZ9z+pJs=;
 b=j7ww8Nta/0YrD2pYhmjfhmT1TS6ohHNG6S+bm6voEQWrwWBom+zNtAhf
 nwDOS46+bJxtdTvz0b1uHHxx01al8fSEIrMHuFMhO+NpGn2WXu4aaPcQJ
 k61hyrP/SGC4FJt0RHs/QxnsgE+mrawk6t7vVhNFZRoEVJS0n2BObRXom
 xz6/MUEuTrAp+d5mtOBMrw3gHMDKJa/DV2iUwKXXYohGZdKOz7dOhohEA
 2jjK45Tl4zAKzF9mvaKoQKEfD3I0uRautgOQ4IlBIpvkskuSSwF984k/P
 pEQWqpXAp/Xwz+ZDfV+jCIdzI5O9o2RTW7k5sxryz94HOStVJHXFLi5uF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j7ww8Nta
Subject: [Intel-wired-lan] [PATCH iwl-net v2 5/5] ice: Document
 tx_scheduling_layers parameter
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Wilczynski <michal.wilczynski@intel.com>

New driver specific parameter 'tx_scheduling_layers' was introduced.
Describe parameter in the documentation.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 Documentation/networking/devlink/ice.rst | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 2f60e34ab926..328a728d197b 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -22,6 +22,56 @@ Parameters
      - runtime
      - mutually exclusive with ``enable_roce``
 
+.. list-table:: Driver-specific parameters implemented
+   :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``tx_scheduling_layers``
+     - u8
+     - permanent
+       The ice hardware uses hierarchical scheduling for Tx with a fixed
+       number of layers in the scheduling tree. Root node is representing a
+       port, while all the leaves represents the queues. This way of
+       configuring Tx scheduler allows features like DCB or devlink-rate
+       (documented below) for fine-grained configuration how much BW is given
+       to any given queue or group of queues, as scheduling parameters can be
+       configured at any given layer of the tree. By default 9-layer tree
+       topology was deemed best for most workloads, as it gives optimal
+       performance to configurability ratio. However for some specific cases,
+       this might not be the case. A great example would be sending traffic to
+       queues that is not a multiple of 8. Since in 9-layer topology maximum
+       number of children is limited to 8, the 9th queue has a different parent
+       than the rest, and it's given more BW credits. This causes a problem
+       when the system is sending traffic to 9 queues:
+
+       | tx_queue_0_packets: 24163396
+       | tx_queue_1_packets: 24164623
+       | tx_queue_2_packets: 24163188
+       | tx_queue_3_packets: 24163701
+       | tx_queue_4_packets: 24163683
+       | tx_queue_5_packets: 24164668
+       | tx_queue_6_packets: 23327200
+       | tx_queue_7_packets: 24163853
+       | tx_queue_8_packets: 91101417 < Too much traffic is sent to 9th
+
+       Sometimes this might be a big concern, so the idea is to empower the
+       user to switch to 5-layer topology, enabling performance gains but
+       sacrificing configurability for features like DCB and devlink-rate.
+
+       This parameter gives user flexibility to choose the 5-layer transmit
+       scheduler topology. After switching parameter reboot is required for
+       the feature to start working.
+
+       User could choose 9 (the default) or 5 as a value of parameter, e.g.:
+       $ devlink dev param set pci/0000:16:00.0 name tx_scheduling_layers
+         value 5 cmode permanent
+
+       And verify that value has been set:
+       $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
+
 Info versions
 =============
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
