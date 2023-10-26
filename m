Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 715D67D8339
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 14:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 258FB83D80;
	Thu, 26 Oct 2023 12:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 258FB83D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698325123;
	bh=a2cNxCSvoEe3++YD67s4u2iTjSkgkpWHZWY32WdXTZA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jC3A6Afy2P8YLnhuJrgsdVKgxUVPLXJ9xpJe8MX/sRv0TOm4grSz5TzkY+mr/6Bgx
	 S+ejXXW2PSjs2cLveLJMJ0BF4YMxUCKMy6hJvXXTUIPq3oFgiO4m3MujoLOzqLo6MB
	 QMIs256XInvQhq3qcmb/0YoCW3NgMsoACt51la1OUHps6HZWBDjTvflAqIv34M+fUq
	 egeRfO6v6+Xdv4A6Z71fFFAJtE5BMTSkNr0+OrUTJwKDuUz8W8IpbsSDRkAoCTSKs5
	 degRr2cdb5CHGAOfNNgT0r62eUbt7wee9n2sIfOfsdjSSfP+XvXXUE42We7/21eAmr
	 BVnCZxhc2XNgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1sUBtFvDh8VR; Thu, 26 Oct 2023 12:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAA7B83D70;
	Thu, 26 Oct 2023 12:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAA7B83D70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DB971BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1143242C78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1143242C78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QkHy8dLBDr4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 12:58:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2921D42C6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2921D42C6D
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="366880641"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="366880641"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:58:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="824987217"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="824987217"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 26 Oct 2023 05:58:25 -0700
Received: from pkitszel-desk.intel.com (abenbenx-mobl.ger.corp.intel.com
 [10.255.195.50])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7383141E55;
 Thu, 26 Oct 2023 13:58:23 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 26 Oct 2023 14:58:13 +0200
Message-Id: <20231026125814.35826-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
References: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698325110; x=1729861110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i+YSUXZQLNgIjAhE0wfb/Hl6cz4W3AXR/GbTZVYiXUs=;
 b=Obz42CI261Jecr2dxYt+E8bDIe2Dh6f98VQBrhbFChDU861KrKOxT6sJ
 6i36YFeiVVz9geOUSdKo2lFAzBTEqsn5BAD/XdTkCLS//+TqjbSgabFo4
 iJY7MrRHFXvs/Ae+3fjleFpoAU4t77NWzoKo2u2WtjnzHuyZi6pZGieHi
 d22k4E9sZBtetN8TbSsHvCuJsPCgxpfq63pXW2VjxmuQdyx1i17P2btaC
 iCw1C4hV7XRzNiGrXtHUNM5CSSbjlHTnF4tStvCy77F5uz5LJ2TVmTrRr
 FncHnA/FOrNh6dQvbNffD4ZpipfRdCg32TC3dj5W+Li3uY695Q34czOqQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Obz42CI2
Subject: [Intel-wired-lan] [linux-firmware 2/3] ice: update ice DDP comms
 package to 1.3.45.0
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Priya Limaye <priya.limaye@intel.com>, Shekhar Deb <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changelog since 1.3.40.0:
- Updated the Protocol IDs that are being set when receiving MAC_IPV6;
  type packets that have a VLAN or MPLS header present;
- Flexi MD4 and Flexi MD5 in RXDID22 of Flex descriptor is being used to
  describe rule id matched in the Switch;
- Parser is updated to set abort flag for malicious SCTP packets;
- Fixed an issue in which all packets with SCTP header were not received;
- other fixes.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 WHENCE                                        |   2 +-
 ...ms-1.3.40.0.pkg => ice_comms-1.3.45.0.pkg} | Bin 725428 -> 733736 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename intel/ice/ddp-comms/{ice_comms-1.3.40.0.pkg => ice_comms-1.3.45.0.pkg} (89%)

diff --git a/WHENCE b/WHENCE
index 1d3ef9a50910..d5d49d710b97 100644
--- a/WHENCE
+++ b/WHENCE
@@ -5941,7 +5941,7 @@ File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
 
-File: intel/ice/ddp-comms/ice_comms-1.3.40.0.pkg
+File: intel/ice/ddp-comms/ice_comms-1.3.45.0.pkg
 File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.10.0.pkg
 
 License: Redistributable. See LICENSE.ice_enhanced for details
diff --git a/intel/ice/ddp-comms/ice_comms-1.3.40.0.pkg b/intel/ice/ddp-comms/ice_comms-1.3.45.0.pkg
similarity index 89%
rename from intel/ice/ddp-comms/ice_comms-1.3.40.0.pkg
rename to intel/ice/ddp-comms/ice_comms-1.3.45.0.pkg
index 702aef9a01eda003fcc38e707f6fc0deae46ec85..a88235f3f09312a8a4995891964c3e386142aa49 100644
GIT binary patch
delta 14521
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
ZN+6U3<-cd$Tf<hwL1rOB_pwE2{~J$EA(#LF

delta 8992
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
EKS9Q$MgRZ+

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
