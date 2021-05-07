Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0ED376C28
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 May 2021 00:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDF9E404C3;
	Fri,  7 May 2021 22:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xoTJDUQBR6F4; Fri,  7 May 2021 22:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D73F040421;
	Fri,  7 May 2021 22:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6E91BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 765D540421
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D5dvQUBvXZ-V for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 22:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFB6C40342
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:11:01 +0000 (UTC)
IronPort-SDR: uP4/cmpMY3klcMnd8zAEPxXqW5nycIwA4HhJvAtgovC49SVkrm7LD+WJ9l7xwUU+vi99+FLckw
 FJABjORszlEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="195711982"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="195711982"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 15:11:01 -0700
IronPort-SDR: KP3Y6K+lXaURmouXSzGXDCty9PknQOThpnxH8PfFTMzD8l0A6nULt7GgglHpcux4TVG68uLEAa
 tz4/VnD7+tTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="407582222"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by orsmga002.jf.intel.com with ESMTP; 07 May 2021 15:11:00 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 May 2021 15:09:10 -0700
Message-Id: <20210507220911.116361-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] virtchnl: Remove unused
 VIRTCHNL_VF_OFFLOAD_RSVD define
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

Remove unused define that is currently marked as reserved. This will
open up space for a new feature if/when it's introduced. Also, there is
no reason to keep unused defines around.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 include/linux/avf/virtchnl.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 565deea6ffe8..591e04fa41cc 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -240,7 +240,6 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
  */
 #define VIRTCHNL_VF_OFFLOAD_L2			0x00000001
 #define VIRTCHNL_VF_OFFLOAD_IWARP		0x00000002
-#define VIRTCHNL_VF_OFFLOAD_RSVD		0x00000004
 #define VIRTCHNL_VF_OFFLOAD_RSS_AQ		0x00000008
 #define VIRTCHNL_VF_OFFLOAD_RSS_REG		0x00000010
 #define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		0x00000020
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
