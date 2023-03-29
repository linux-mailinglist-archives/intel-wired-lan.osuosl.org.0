Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0866CF0FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 19:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DAA96154E;
	Wed, 29 Mar 2023 17:23:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DAA96154E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680110634;
	bh=dg8ta1uE2L5Bi/q5bvAY58cslI80J4p6ZFLWoez5dag=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPzVGG/bkIDmBjE2dPeXRxQr5sYfDcxPFn+vvRxfsLr4a8/uBnM0VeS5rWFShAeVZ
	 mDiD4QH9nzfsusWqpuDDqDS982+6fij3bu81vU+9dxG/2lbal3MEgnAspnqDmhmAUV
	 fcxw8M2QahqizLTAwZtPT54HZeOnOEwoAYhN4oTfnoN+l04yyD54vSZyR5uAiB3avr
	 eX2xqlwofP+Sk3ZkAgJrp3NXK9ielG6bd5cghncx/wGVe8zb10Jxucg2nYS4dQCaDT
	 mqvUZmKYAPhJhU78C6hPdBJj//qs+YVQpWathLPehBF58UPdXSEtyyPDKnrB2TK8vu
	 auqBTHgVSShsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VBPP4G8gzguQ; Wed, 29 Mar 2023 17:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AB6760C24;
	Wed, 29 Mar 2023 17:23:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AB6760C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7099A1BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 17:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49F7E41C88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 17:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49F7E41C88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id windwmJ9C2Nq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 17:23:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CEC84000B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CEC84000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 17:23:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="339670220"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="339670220"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 10:23:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748855529"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748855529"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 10:23:45 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Mar 2023 10:22:56 -0700
Message-Id: <20230329172256.41933-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230329172256.41933-1-anthony.l.nguyen@intel.com>
References: <20230329172256.41933-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680110626; x=1711646626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sp9gj3Dkpqtvy8eOqrwRYLa69QAUsnMwS3RK/vBFyEo=;
 b=HkBUQQWGW0ES/fDyEYFKkv3fotXfk79+2NoEaHp0AcjID1GZPB7jiIzz
 bfGansrEHFvTyyCD8iyc49upIdt6pqsa3fVWw9INsptS1Z71nvAVRdQOl
 72z8woqWhRyeyw3ic+/5hxRjLCrrQngwVRA1Zs0nZFWMCrD6EIEpn9D4c
 yktiGOxHwE7DMt7Dbvo9AmvR0dKHNmQSg00GneovvPCaGo3OIMGmjq3jF
 /uMwO2FveIj8N/7gI2vbHXar3e6uCVs6ui2lf9JGZ/DArRUY7fmqj2cVm
 YyvGuYXL4J/kuzSoNZ/0H7poW3tfweh2BSIl8MjpbXN8ISx7fhsUSbK61
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HkBUQQWG
Subject: [Intel-wired-lan] [PATCH net-next 2/2] Documentation/eth/intel:
 Remove references to SourceForge
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

The out-of-tree driver is hosted on SourceForge, as this does not apply
to the kernel driver remove references to it. Also do some minor
formatting changes around this section.

Suggested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../networking/device_drivers/ethernet/intel/e100.rst      | 2 --
 .../networking/device_drivers/ethernet/intel/e1000.rst     | 7 +------
 .../networking/device_drivers/ethernet/intel/e1000e.rst    | 5 -----
 .../networking/device_drivers/ethernet/intel/fm10k.rst     | 5 -----
 .../networking/device_drivers/ethernet/intel/i40e.rst      | 5 -----
 .../networking/device_drivers/ethernet/intel/iavf.rst      | 5 -----
 .../networking/device_drivers/ethernet/intel/ice.rst       | 3 ---
 .../networking/device_drivers/ethernet/intel/igb.rst       | 5 -----
 .../networking/device_drivers/ethernet/intel/igbvf.rst     | 5 -----
 .../networking/device_drivers/ethernet/intel/ixgbe.rst     | 5 -----
 .../networking/device_drivers/ethernet/intel/ixgbevf.rst   | 5 -----
 11 files changed, 1 insertion(+), 51 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/e100.rst b/Documentation/networking/device_drivers/ethernet/intel/e100.rst
index 4f613949782c..5dee1b53e977 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e100.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e100.rst
@@ -180,8 +180,6 @@ Support
 For general information, go to the Intel support website at:
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-http://sourceforge.net/projects/e1000
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/e1000.rst b/Documentation/networking/device_drivers/ethernet/intel/e1000.rst
index 7b15b8c72be0..52a7fb9ce8d9 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e1000.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e1000.rst
@@ -451,12 +451,7 @@ Support
 =======
 
 For general information, go to the Intel support website at:
-
-    http://support.intel.com
-
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-    http://sourceforge.net/projects/e1000
+http://support.intel.com
 
 If an issue is identified with the released source code on the supported
 kernel with a supported adapter, email the specific information related
diff --git a/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst b/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
index 7a9cbfa9e0f3..d8f810afdd49 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
@@ -371,13 +371,8 @@ NOTE: Wake on LAN is only supported on port A for the following devices:
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst b/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst
index 9d9c2ec2152e..396a2c8c3db1 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/fm10k.rst
@@ -130,13 +130,8 @@ the Intel Ethernet Controller XL710.
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/i40e.rst b/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
index 5b13fe0fec82..4fbaa1a2d674 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
@@ -759,13 +759,8 @@ enabled when setting up DCB on your switch.
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/iavf.rst b/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
index 079847666125..eb926c3bd4cd 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
@@ -319,13 +319,8 @@ This is caused by the way the Linux kernel reports this stressed condition.
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://support.intel.com
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on the supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 246bf6455f64..69695e5511f4 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -1026,9 +1026,6 @@ Support
 For general information, go to the Intel support website at:
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/igb.rst b/Documentation/networking/device_drivers/ethernet/intel/igb.rst
index ee149bdb42b9..fbd590b6a0d6 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/igb.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/igb.rst
@@ -201,13 +201,8 @@ NOTE: This feature is exclusive to i210 models.
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst b/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst
index 78ceb3cdbfdb..11a9017f3069 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/igbvf.rst
@@ -53,13 +53,8 @@ https://www.kernel.org/pub/software/network/ethtool/
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
index 8d4f7ede2ff8..1e5f16993f69 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
@@ -545,13 +545,8 @@ on the Intel Ethernet Controller XL710.
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst
index 9201c74e4c36..08dc0d368a48 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbevf.rst
@@ -55,13 +55,8 @@ VLANs: There is a limit of a total of 64 shared VLANs to 1 or more VFs.
 Support
 =======
 For general information, go to the Intel support website at:
-
 https://www.intel.com/support/
 
-or the Intel Wired Networking project hosted by Sourceforge at:
-
-https://sourceforge.net/projects/e1000
-
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
 to intel-wired-lan@lists.osuosl.org.
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
