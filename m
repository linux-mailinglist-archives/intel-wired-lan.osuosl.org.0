Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66150940378
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 03:23:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45AD440AE1;
	Tue, 30 Jul 2024 01:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3aMnAZWhCQu; Tue, 30 Jul 2024 01:23:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBF6C40AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722302612;
	bh=PeGLCCQspviziAsiOuW5wJbkDlx1kZKVbTyUcBvQDPg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZWu9Z/fNPYNPfLABX2WfIQg/d5RliS6wvU8UCQVeTEdVf3bPS4lBdw69wCBmjMj4y
	 4eB/FSkaAUhZ/B4SEkYRcKuQDBrRUevVhsTK39vQPAS3E32mBEv0Ni63PzFV5V7U2q
	 f+kIabtYc2Lsj8XY47siGXkcnUtfEdYEx4pPwBFBnCENfKPYEngnt/Sv+tjFzrU1IY
	 cPeIoyQhZEgAPoNB601iRsq20M2ZzPLYvpxUnlQheWHYHeWt9QnaioZEOdDmJVoSFn
	 JTGO4yT3rA0P3OTIyFCT7zDnlP18LioUeQ7uDDGIlrjGBRlJWmZokMcDR4Ja8mVUaR
	 OV50r3fjeN1nw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBF6C40AD1;
	Tue, 30 Jul 2024 01:23:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 138AD1BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E91C940488
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fIBIZc_r_JVd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 01:23:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6C59B40A87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C59B40A87
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C59B40A87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:23:26 +0000 (UTC)
X-CSE-ConnectionGUID: 5t1VbW0sTXmMjUE88WlKcg==
X-CSE-MsgGUID: eCo5EYPBTZKG9X8WHoP5cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20242224"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="20242224"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 18:23:24 -0700
X-CSE-ConnectionGUID: 0uIlYRFsSrK/857cNPi7PQ==
X-CSE-MsgGUID: PJ4+QiIAR5yiZnKSn997OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="54079262"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa010.jf.intel.com with ESMTP; 29 Jul 2024 18:23:18 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Sasha Neftin <sasha.neftin@intel.com>
Date: Tue, 30 Jul 2024 09:22:47 +0800
Message-Id: <20240730012247.775856-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722302606; x=1753838606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ddB0kFBn3W+5wYXdYlUfRy4LUhqB6abeQG+R6RSOGtg=;
 b=GovU+FihohxhILIWc1Xk8bn7YPYcNl4rCe1Yi6pmJytHDVWmwrEeI2Jk
 lkSs/pIoTUiyIWFHh94jI0LdKhHCOg0xd8SwyuJLTMSEStcJp2jfmnltu
 TRqQLL60ftoHCHWQHU1+DQJVCIPnmq5D7tLFX4Y72fuJ5yioBxcbXL1Sh
 WpXUlUrJGPpLM5PHRL6GORWRBhBLL41IZ/+Cwg19kHeTl24uU73ptiHIG
 SsX5Z8bibxA7ncw91QOxqUKFDrgq0Wuo4YHJ9aVDvU7mDr1XlcxJFvUGk
 70ZCjJdiHDUusfzWjlAHb2SydSTy/+n3Axcee51sPp+xtmO7uAE6y7X5u
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GovU+Fih
Subject: [Intel-wired-lan] [PATCH iwl-next,v1 1/3] igc: Add documentation
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>

This commit adds the documentation file for the Intel Ethernet Network
Controller I225 and I226 driver. The documentation includes:
 - Identifying Your Adapter
 - Command Line Parameters
 - Additional Configurations
 - Support
 - Trademarks

The file provides detailed information on how to identify the adapter, use
command line parameters, configure additional features, and obtain support.

Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 .../device_drivers/ethernet/index.rst         |  1 +
 .../device_drivers/ethernet/intel/igc.rst     | 82 +++++++++++++++++++
 2 files changed, 83 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/igc.rst

diff --git a/Documentation/networking/device_drivers/ethernet/index.rst b/Documentation/networking/device_drivers/ethernet/index.rst
index 6932d8c043c2..2b1dbb984f98 100644
--- a/Documentation/networking/device_drivers/ethernet/index.rst
+++ b/Documentation/networking/device_drivers/ethernet/index.rst
@@ -35,6 +35,7 @@ Contents:
    intel/idpf
    intel/igb
    intel/igbvf
+   intel/igc
    intel/ixgbe
    intel/ixgbevf
    intel/i40e
diff --git a/Documentation/networking/device_drivers/ethernet/intel/igc.rst b/Documentation/networking/device_drivers/ethernet/intel/igc.rst
new file mode 100644
index 000000000000..08b2cfacc7c0
--- /dev/null
+++ b/Documentation/networking/device_drivers/ethernet/intel/igc.rst
@@ -0,0 +1,82 @@
+.. SPDX-License-Identifier: GPL-2.0+
+
+========================================================================
+Linux Base Driver for Intel(R) Ethernet Network Controller I225 and I226
+========================================================================
+
+Intel igc Linux driver.
+Copyright(c) 1999-2024 Intel Corporation.
+
+
+Contents
+========
+- Identifying Your Adapter
+- Command Line Parameters
+- Additional Configurations
+- Support
+- Trademarks
+
+
+Identifying Your Adapter
+========================
+For information on how to identify your adapter, and for the latest Intel
+network drivers, refer to the Intel Support website:
+https://www.intel.com/support
+
+
+Command Line Parameters
+========================
+If the driver is built as a module, the following optional parameters are used
+by entering them on the command line with the modprobe command using this
+syntax::
+
+    modprobe igc [<option>=<VAL1>]
+
+NOTE: A descriptor describes a data buffer and attributes related to the data
+buffer. This information is accessed by the hardware.
+
+Debug
+-----
+:Valid Range: 0-16 (0=none,...,16=all)
+:Default Value: 0
+
+This parameter adjusts the level debug messages displayed in the system logs.
+
+
+Additional Features and Configurations
+======================================
+Time-Sensitive Networking
+-------------------------
+Selected models of Intel(R) Ethernet Controller I225 and Intel(R) Ethernet
+Controller I226 support Time-Sensitive Networking features. For more details
+about the features and supported models, please refer to:
+https://www.intel.com/content/www/us/en/support/articles/000096004/ethernet-products/gigabit-ethernet-controllers-up-to-2-5gbe.html
+
+For instructions about configuring Time-Sensitive Networking features on Linux,
+please refer to:
+https://tsn.readthedocs.io/
+
+ethtool
+-------
+The driver utilizes the ethtool interface for driver configuration and
+diagnostics, as well as displaying statistical information. The latest ethtool
+version is required for this functionality. Download it at:
+https://www.kernel.org/pub/software/network/ethtool/
+
+
+Support
+=======
+For general information, go to the Intel support website at:
+https://www.intel.com/support/
+
+If an issue is identified with the released source code on a supported kernel
+with a supported adapter, email the specific information related to the issue
+to intel-wired-lan@lists.osuosl.org
+
+
+Trademarks
+==========
+Intel is a trademark or registered trademark of Intel Corporation or its
+subsidiaries in the United States and/or other countries.
+
+* Other names and brands may be claimed as the property of others.
-- 
2.34.1

