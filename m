Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E0C89672D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 09:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8866060D96;
	Wed,  3 Apr 2024 07:50:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rt1kdR91fErp; Wed,  3 Apr 2024 07:50:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE6F460D87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712130641;
	bh=LcUjuUZcMtKLNC3jdwiYywI1vJoFmdq1GbFODxD3OSo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3vWQsyAPHrYXNQMamzd/B+1QAIemmpZkkicaDUtmlKl0hSCQSeNCy597zX+Xu5wex
	 XNnuuSc0natvm+A0EdzPRrlauReTjjytSazSfzyt11EeuLMwldPwvUWyjKU3lbaiWB
	 NAnAI8NdM5UcMxvKP4/S1Y0DLAoFB9I6v4OgZ2dGFmgaX4lVwzpHr5BjvPI7Lqxrv2
	 oUsmBdprMuP1aL5kj27H7S3x1pzk7g9GHRtNDDkMJAWgjdRDSFGSYNHstvSUxSuW9Z
	 TAdC9ELYig5JbEuXbm9iPCxOUmXYNiZJXARYZSLBY/NMgVKLYQUixqX1L6VGU88Kgv
	 XJ/OhJSTD7R3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE6F460D87;
	Wed,  3 Apr 2024 07:50:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1802C1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA79A60D74
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nIYvhjNl21Fb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 07:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E1AE960D7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1AE960D7B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1AE960D7B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:36 +0000 (UTC)
X-CSE-ConnectionGUID: EIoZMIJ1Rw2y6tFy3OwyGQ==
X-CSE-MsgGUID: N0VrIHKFRfeV24WW1omY2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="10311935"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="10311935"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 00:50:36 -0700
X-CSE-ConnectionGUID: LDqx5cFcRvm6jfBxxSepYQ==
X-CSE-MsgGUID: cJ3mVfk0T9aRBbtHxQHizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="55790938"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 03 Apr 2024 00:50:32 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C035E369F7;
 Wed,  3 Apr 2024 08:50:30 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 03:41:12 -0400
Message-Id: <20240403074112.7758-7-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
References: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712130636; x=1743666636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ayp3w+xzqn0hd9fHMdrwa/nbYUX3VcDmHtiOLt5hPWs=;
 b=dMckBxje6SRfrr+nCJ6rqcYVFU05zMwjLhc9dOT42oWlxWj+Eb1F/WOj
 tiIEa4FJmXlJkg4mmQ0sz3/GKvgTo3kE7DaC5IS3wfEVldpcwZOJrkc2p
 uNBx6aAFUwH1Ni1CXEMKlsRP7VRXUfH19t2G1qNaGFETxUXGkiIykIGku
 A8MLp7q/KMaOdkvzrYnfS5Ac7rjmaeSOTiX/is/nX09cP1lBy999A5XzC
 d3SJqdeURDklCxwr2kafus2svJYP6Yo0PyixK2KLRcEOewOx/4SoSPQLO
 0aIC0GPwrk1nLa7Uq9LknSt4Bi830Jwo9Y7wcOfMo+miPhOjFn1SqCfkB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dMckBxje
Subject: [Intel-wired-lan] [PATCH net-next v9 6/6] ice: Document
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

