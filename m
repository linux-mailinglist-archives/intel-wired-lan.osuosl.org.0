Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 092D46CF0F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 19:23:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A3E561558;
	Wed, 29 Mar 2023 17:23:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A3E561558
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680110629;
	bh=AjA0UFuXgOCMpfr+ttcOW0icQHMbByyYC2y3B4EVtGw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dVxlWHnTilnoGGBG9Gi7iMHOeGAT77oJlR5BKG16PbB0+wE/HWi/FXEbodfhku5Mw
	 RqqmV7YoC7oO4P2QptGhiaUjUd+jbp/+JnXadWMGHBb35kCN1eaQsnmB52EnRlySMA
	 xYO3APnudi0z6FElgVcXOXlMraidcC6f8nlwW+hCSUy9Nh4D/H6KfDl+SRlXt6Qlg6
	 LVsswHokVi24+EC21OtcZQTcAnf17L4XWcssEyK528uzFzRuy4G2lpy9gyHJ8Yiyxj
	 yRXDhsT2L3iY5Pt7bOBGVYIEup8LY1qZIx6b7480YEi9i26KoxxZYh9Yaat43QvoPA
	 BLSSMITMB4AkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JjSNjIo2obwd; Wed, 29 Mar 2023 17:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B500614D1;
	Wed, 29 Mar 2023 17:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B500614D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD0FF1BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 17:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2CD441C88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 17:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2CD441C88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsbMZ64a2ell for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 17:23:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BFE14000B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BFE14000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 17:23:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="339670204"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="339670204"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 10:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748855521"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748855521"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 10:23:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Mar 2023 10:22:55 -0700
Message-Id: <20230329172256.41933-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230329172256.41933-1-anthony.l.nguyen@intel.com>
References: <20230329172256.41933-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680110621; x=1711646621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R/ssDChJFeElkuFAdv0HOzsNHaITs0Wd/hQ8EL6X4I4=;
 b=LYHrUgoqQbQmMYnfyA3isq33adrqd7D1m0x3VxItGVhiEJP10YEYJDys
 N9ciAxlcP1TnLKE2mVqdtB/po8sRFCahQ4edfzcTa6r72MJui9mkpFwzp
 O1a0A/V/jOBEwHr9mDTP1YCUikA2CS7b6ehJlvkfWA05ByR9SX69iAGZv
 ycYd53z4RUsFjIXZm9Onb2LDP7fzGQtXpgqQX4BQhEJLKHVIg0LCntBlu
 xsUH9IL1ZkNs0/87Cbi7b567WgZUIsWjfomPXRgj7yMjTVNLUV4QLwGdj
 osCzquRPS0fby79jpjgDxvlWgOawi17EU3G2Ny5nSRpv8BOucjcfzG06k
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LYHrUgoq
Subject: [Intel-wired-lan] [PATCH net-next 1/2] Documentation/eth/intel:
 Update address for driver support
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update the email address for support to use Intel Wired LAN, the mailing
list used for kernel development.

Suggested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 Documentation/networking/device_drivers/ethernet/intel/e100.rst | 2 +-
 .../networking/device_drivers/ethernet/intel/e1000.rst          | 2 +-
 .../networking/device_drivers/ethernet/intel/e1000e.rst         | 2 +-
 .../networking/device_drivers/ethernet/intel/fm10k.rst          | 2 +-
 Documentation/networking/device_drivers/ethernet/intel/i40e.rst | 2 +-
 Documentation/networking/device_drivers/ethernet/intel/iavf.rst | 2 +-
 Documentation/networking/device_drivers/ethernet/intel/ice.rst  | 2 +-
 Documentation/networking/device_drivers/ethernet/intel/igb.rst  | 2 +-
 .../networking/device_drivers/ethernet/intel/igbvf.rst          | 2 +-
 .../networking/device_drivers/ethernet/intel/ixgbe.rst          | 2 +-
 .../networking/device_drivers/ethernet/intel/ixgbevf.rst        | 2 +-
 11 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/e100.rst b/Documentation/networking/device_drivers/ethernet/intel/e100.rst
index 371b7e5c3293..4f613949782c 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e100.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e100.rst
@@ -184,4 +184,4 @@ or the Intel Wired Networking project hosted by Sourceforge at:
 http://sourceforge.net/projects/e1000
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/e1000.rst b/Documentation/networking/device_drivers/ethernet/intel/e1000.rst
index 4aaae0f7d6ba..7b15b8c72be0 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e1000.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e1000.rst
@@ -460,4 +460,4 @@ or the Intel Wired Networking project hosted by Sourceforge at:
 
 If an issue is identified with the released source code on the supported
 kernel with a supported adapter, email the specific information related
-to the issue to e1000-devel@lists.sf.net
+to the issue to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst b/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
index f49cd370e7bf..7a9cbfa9e0f3 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
@@ -380,4 +380,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst b/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst
index 9258ef6f515c..9d9c2ec2152e 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst
@@ -139,4 +139,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/i40e.rst b/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
index c495c4e16b3b..5b13fe0fec82 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
@@ -768,4 +768,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/iavf.rst b/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
index 151af0a8da9c..079847666125 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
@@ -328,4 +328,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on the supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 2b6dc7880d7b..246bf6455f64 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -1031,7 +1031,7 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
 
 
 Trademarks
diff --git a/Documentation/networking/device_drivers/ethernet/intel/igb.rst b/Documentation/networking/device_drivers/ethernet/intel/igb.rst
index d46289e182cf..ee149bdb42b9 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/igb.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/igb.rst
@@ -210,4 +210,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst b/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst
index 40fa210c5e14..78ceb3cdbfdb 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst
@@ -62,4 +62,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
index 0a233b17c664..8d4f7ede2ff8 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
@@ -554,4 +554,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst
index 76bbde736f21..9201c74e4c36 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst
@@ -64,4 +64,4 @@ https://sourceforge.net/projects/e1000
 
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to e1000-devel@lists.sf.net.
+to intel-wired-lan@lists.osuosl.org.
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
