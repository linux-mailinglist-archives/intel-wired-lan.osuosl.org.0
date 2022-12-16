Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70164F21F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 21:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51ABF82224;
	Fri, 16 Dec 2022 20:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51ABF82224
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671221247;
	bh=L+c3EZjQQCRemkyRmt1wBIl0FStJZOV0NTf+Zsxqrc4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q7ogKynpzoPZXxQkEgi2nFzHL2XMjdmyQ96J4zZ0+VL3ktIQnlnZT1I7YOrfrWAtk
	 VFWUxahRO1PfYXs6PPWY9T+WBrbkGWtdPH5+4mg07aBOlIMwBBdP7Zsn/aIEAVZqrw
	 a/3WJ6NNEiaUBAIM86PhWCdOq6NGnW9b9sljorAx4ymX/HQfb1KAJ1RkENYv9pGh1t
	 LLSPRhK/hZz5M6pbQOBzqq6wVb2Ym4BA0+zhaeSRu/vihlmtIcOTtt/MuI4i3sxJVe
	 2IP/Sk4hcswkzxDTh1h+aG3tiOaYcC5BqtImYD3Wt70EowFEDr1y7i8+l1INr3ere0
	 tEnZRF5VUT52w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDWBumJUgG0U; Fri, 16 Dec 2022 20:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35BA18145E;
	Fri, 16 Dec 2022 20:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35BA18145E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2A8E1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF1AB41983
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF1AB41983
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8EtpblgBGJ5p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 20:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6EFA419CB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6EFA419CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="320932435"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="320932435"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 12:07:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="682385365"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="682385365"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 12:07:08 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 12:06:56 -0800
Message-Id: <20221216200658.59833-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221216200658.59833-1-jesse.brandeburg@intel.com>
References: <20221216200658.59833-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671221229; x=1702757229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RZkR+G3aDVTZredzS6gL/U572Lynn85soWzq3DAPZAA=;
 b=MGt90dW4IVnCqXE5/G2rcjwkGiXr21OH6kctC/W1+elMYdc3giy8ZMc1
 z3AYg+wyJv5HmHeXWUs7QQh9Guq7XSS/PUZjpA0edogYi2y1YWBD3it7L
 6Lsy8QLkhbaTlcPx/F7Efp1qFLPZ4gFhLKXPu1SFW9LsdS6O/pdJheF+U
 WspsSf8zmLYlvl89gTVFjZaafREfQNODcY3bTBB1AqyDG9uuM2r3tbtv5
 jYc1L36TVacZbZib+QjqlKAiEij9wQq4gbOCvTL7k+q/fuFZ5An0T+GuK
 XzBQJ8LS45rSI63sZIpb3Dz1EHnBcXzZ6VDQFENM5XDYm8HrqwpJU4rzf
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MGt90dW4
Subject: [Intel-wired-lan] [PATCH net-next v1 2/4] virtchnl: update header
 and increase header clarity
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We already have the SPDX header, so just leave a copyright notice with
an updated year and get rid of the boilerplate header (so 2002!).

In addition, update a couple of comments to clarify how the various
parts of the virtchannel header interaction work.

No functional changes.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 include/linux/avf/virtchnl.h | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index b1cfa84904b1..2e685aa37688 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1,21 +1,13 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/*******************************************************************************
- *
- * Intel Ethernet Controller XL710 Family Linux Virtual Function Driver
- * Copyright(c) 2013 - 2014 Intel Corporation.
- *
- * Contact Information:
- * e1000-devel Mailing List <e1000-devel@lists.sourceforge.net>
- * Intel Corporation, 5200 N.E. Elam Young Parkway, Hillsboro, OR 97124-6497
- *
- ******************************************************************************/
+/* Copyright (c) 2013-2022, Intel Corporation. */
 
 #ifndef _VIRTCHNL_H_
 #define _VIRTCHNL_H_
 
 /* Description:
- * This header file describes the VF-PF communication protocol used
- * by the drivers for all devices starting from our 40G product line
+ * This header file describes the Virtual Function (VF) - Physical Function
+ * (PF) communication protocol used by the drivers for all devices starting
+ * from our 40G product line
  *
  * Admin queue buffer usage:
  * desc->opcode is always aqc_opc_send_msg_to_pf
@@ -29,8 +21,8 @@
  * have a maximum of sixteen queues for all of its VSIs.
  *
  * The PF is required to return a status code in v_retval for all messages
- * except RESET_VF, which does not require any response. The return value
- * is of status_code type, defined in the shared type.h.
+ * except RESET_VF, which does not require any response. The returned value
+ * is of virtchnl_status_code type, defined here.
  *
  * In general, VF driver initialization should roughly follow the order of
  * these opcodes. The VF driver must first validate the API version of the
@@ -323,6 +315,9 @@ VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_rxq_info);
  * PF configures queues and returns status.
  * If the number of queues specified is greater than the number of queues
  * associated with the VSI, an error is returned and no queues are configured.
+ * NOTE: The VF is not required to configure all queues in a single request.
+ * It may send multiple messages. PF drivers must correctly handle all VF
+ * requests.
  */
 struct virtchnl_queue_pair_info {
 	/* NOTE: vsi_id and queue_id should be identical for both queues. */
@@ -360,8 +355,13 @@ struct virtchnl_vf_res_request {
  * VF uses this message to map vectors to queues.
  * The rxq_map and txq_map fields are bitmaps used to indicate which queues
  * are to be associated with the specified vector.
- * The "other" causes are always mapped to vector 0.
+ * The "other" causes are always mapped to vector 0. The VF may not request
+ * that vector 0 be used for traffic.
  * PF configures interrupt mapping and returns status.
+ * NOTE: due to hardware requirements, all active queues (both TX and RX)
+ * should be mapped to interrupts, even if the driver intends to operate
+ * only in polling mode. In this case the interrupt may be disabled, but
+ * the ITR timer will still run to trigger writebacks.
  */
 struct virtchnl_vector_map {
 	u16 vsi_id;
@@ -388,6 +388,9 @@ VIRTCHNL_CHECK_STRUCT_LEN(14, virtchnl_irq_map_info);
  * (Currently, we only support 16 queues per VF, but we make the field
  * u32 to allow for expansion.)
  * PF performs requested action and returns status.
+ * NOTE: The VF is not required to enable/disable all queues in a single
+ * request. It may send multiple messages.
+ * PF drivers must correctly handle all VF requests.
  */
 struct virtchnl_queue_select {
 	u16 vsi_id;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
