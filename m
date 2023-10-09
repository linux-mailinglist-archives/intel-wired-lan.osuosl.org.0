Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4337BD668
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 11:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9A4A8204F;
	Mon,  9 Oct 2023 09:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A4A8204F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696842663;
	bh=HozWLjuOSHSiS+AHb+LGnl6QGlqiIfJl741tNbJam80=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ilKGAppi8e2p/QtR5css4jpSTutXugffOE16t9AfFjLFf9Z47l0yRrK3R77K51oK
	 HTi/pM4j8sB+U+shVR2aune9WCiEWe3rSN0pqiy2QX1RlBJ1DmU9+khGp9fuiZnpLe
	 in8V9MKzgRyHSWxtYXIPkzgfLCLWSuV73xeuAWN6b0epRBIQq5aAkWSjBFOni8ctmo
	 Nq4wRncQfu4ckCtCwiTJbtSitT80/XoYl3kCkSwMjbdMfSi3y3mCB2HbzcT0Bzg2ee
	 O9DfJ9THsro3zH0MgZ+jpn8bQ4L9VJ92ieNZQ8f1PrTJG2awyoMI4tzTouH81hJt50
	 Ooz9qnTrH31uA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bSVzx3lf-RQn; Mon,  9 Oct 2023 09:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7BBD82044;
	Mon,  9 Oct 2023 09:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7BBD82044
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F046B1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 09:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8CC260D77
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 09:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8CC260D77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zmntlntb6joq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 09:10:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08E8A60D6C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 09:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08E8A60D6C
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="382978419"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="382978419"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:10:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="843635726"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="843635726"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2023 02:10:42 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 78A99365AF;
 Mon,  9 Oct 2023 10:10:41 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Oct 2023 05:07:11 -0400
Message-Id: <20231009090711.136777-6-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231009090711.136777-1-mateusz.polchlopek@intel.com>
References: <20231009090711.136777-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696842644; x=1728378644;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MIzLj7diT5phwSZEZVebNUI1yGDI70THPkUVrj2bkxA=;
 b=dKzLqPg6T9UjLT7VHGKEHhVTUIGs1ry0coqcdXtQl5pOzsZ076p9F3tk
 DPzwltdQll4Rd4nqTaSYSq2Cr68jx7QIkexq/w42lBbW2pITuqKGiTDUf
 2NsWfmlFGgohnmIbXvvKDGvjR9MdcEaYEbYrEADgvatXhryx4OfndWcEz
 mW2BHa6eW16xyKYs9nkG81vSU4klb+XuftNuSXkRijtiPCsXi+z0Y/+nO
 xL4sXDq4NjHgtuvbGnlP5twcfK9fzyeKuMVxZtXmD1tIMz4qMYMtMoClE
 7g2lxwxK9gNfN+VwqmH1DXI2+nESU2qi98s9Ja5VBuK/zjZ8lZhHg7Kye
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dKzLqPg6
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ice: Document
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
index 2f60e34ab926..dde765313b82 100644
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
+     - The ice hardware uses hierarchical scheduling for Tx with a fixed
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
+       value 5 cmode permanent
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
