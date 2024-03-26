Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5265988C565
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:40:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9530B407F9;
	Tue, 26 Mar 2024 14:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RbQ7veJuNF0b; Tue, 26 Mar 2024 14:40:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBA004083D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711464040;
	bh=LcUjuUZcMtKLNC3jdwiYywI1vJoFmdq1GbFODxD3OSo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6OFJsSoB7yaO+ZolDamQcYa3GZAMfQSIfWhYb3sdZNf5I+9pPuAuR+T6c0gxRKU8Q
	 8JsVNqYrVE8P09OGP3AaOrpEhaqypWbF0BaetILuKyMm145Bo0eluZhWveQ/B4zRdn
	 XmMuUC+rZ+69mBZKYrAWSp5Mxi6Rxv3LQ7u2SSQskbg0SVbmMYFnYokQt9X5NZTm5c
	 l6OVY8kgZWlfyfqr3V6f+cG/Uts3WMoB5lUoR6x3ifz717+HRPlhfVlWBstsuSBIrA
	 yf1+IIOEVowyqbzLYBB0uK71wzN8mbzRvBxR2K2RA0vIPcfumn4Owa/HPkMdR/gUpt
	 0jIF/kFgTon9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBA004083D;
	Tue, 26 Mar 2024 14:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88E071BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75DE0414EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIUlEMRJHyK2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:40:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4EFA5414DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EFA5414DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EFA5414DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:37 +0000 (UTC)
X-CSE-ConnectionGUID: Nb+bSO6vSjiZExbZP98ECw==
X-CSE-MsgGUID: iIQoiG5mSk6/idH0LtQ87g==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="10296887"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10296887"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 07:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16412479"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 26 Mar 2024 07:40:23 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C4C322819E;
 Tue, 26 Mar 2024 14:40:21 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 10:30:42 -0400
Message-Id: <20240326143042.9240-7-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
References: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711464037; x=1743000037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ayp3w+xzqn0hd9fHMdrwa/nbYUX3VcDmHtiOLt5hPWs=;
 b=GU40hR2ffG+diaJ633t5eJ1BXilgnjHN3YrXj1LXpWjvIcvnkC6v//Nl
 Zg0MVjekWfxeuNoteSx/FbDlgTpqazm7BJXB7YT2ASWBkUxD+GRIiBjM8
 3nvZ0y7no0s6HPW7l2hQ1aiu2NSM6JI5GGros2Y6Os3QQf7XWjK2yLpEv
 scESdEdUOWHyo3gOr6QeS2edLc1Av/SnYnrObNqaeFmG3uh+sYAGw2Cfc
 y7O4qB1qMgMrDvvxslcmumXUSpo3dZvQ1vZTBzN6pTwunAawJeNkitXR1
 Fu9KGRSonIsaaB4uYvSTDxi4JKcqNTzXNsGNqmWIwehBZ4WLVcOkTz8va
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GU40hR2f
Subject: [Intel-wired-lan] [PATCH net-next v8 6/6] ice: Document
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, Jiri Pirko <jiri@nvidia.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Wilczynski <michal.wilczynski@intel.com>

New driver specific parameter 'tx_scheduling_layers' was introduced.
Describe parameter in the documentation.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Acked-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 Documentation/networking/devlink/ice.rst | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 7f30ebd5debb..830c04354222 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -21,6 +21,53 @@ Parameters
    * - ``enable_iwarp``
      - runtime
      - mutually exclusive with ``enable_roce``
+   * - ``tx_scheduling_layers``
+     - permanent
+     - The ice hardware uses hierarchical scheduling for Tx with a fixed
+       number of layers in the scheduling tree. Each of them are decision
+       points. Root node represents a port, while all the leaves represent
+       the queues. This way of configuring the Tx scheduler allows features
+       like DCB or devlink-rate (documented below) to configure how much
+       bandwidth is given to any given queue or group of queues, enabling
+       fine-grained control because scheduling parameters can be configured
+       at any given layer of the tree.
+
+       The default 9-layer tree topology was deemed best for most workloads,
+       as it gives an optimal ratio of performance to configurability. However,
+       for some specific cases, this 9-layer topology might not be desired.
+       One example would be sending traffic to queues that are not a multiple
+       of 8. Because the maximum radix is limited to 8 in 9-layer topology,
+       the 9th queue has a different parent than the rest, and it's given
+       more bandwidth credits. This causes a problem when the system is
+       sending traffic to 9 queues:
+
+       | tx_queue_0_packets: 24163396
+       | tx_queue_1_packets: 24164623
+       | tx_queue_2_packets: 24163188
+       | tx_queue_3_packets: 24163701
+       | tx_queue_4_packets: 24163683
+       | tx_queue_5_packets: 24164668
+       | tx_queue_6_packets: 23327200
+       | tx_queue_7_packets: 24163853
+       | tx_queue_8_packets: 91101417 < Too much traffic is sent from 9th
+
+       To address this need, you can switch to a 5-layer topology, which
+       changes the maximum topology radix to 512. With this enhancement,
+       the performance characteristic is equal as all queues can be assigned
+       to the same parent in the tree. The obvious drawback of this solution
+       is a lower configuration depth of the tree.
+
+       Use the ``tx_scheduling_layer`` parameter with the devlink command
+       to change the transmit scheduler topology. To use 5-layer topology,
+       use a value of 5. For example:
+       $ devlink dev param set pci/0000:16:00.0 name tx_scheduling_layers
+       value 5 cmode permanent
+       Use a value of 9 to set it back to the default value.
+
+       You must do PCI slot powercycle for the selected topology to take effect.
+
+       To verify that value has been set:
+       $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
 
 Info versions
 =============
-- 
2.38.1

