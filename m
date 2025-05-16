Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D30C3AB9F0F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 16:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14591612BB;
	Fri, 16 May 2025 14:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GUtrWHR2blyj; Fri, 16 May 2025 14:58:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 896D760E22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747407509;
	bh=3jo41adgpEUPAIfSKTKGP0NiUCfvFxK9TBZdY4EYSJA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JrhaXv6i3ZFkRQbvjcHH+QR3EV0hNUvIgwHvFUWwH35/UetG4p/pg4rnXRtXqkF+Q
	 z0PHmigb7YOPJRJPaHrcPiTmasSB5ZJIcb1h4ynO26wXEpuZgoZjLtBHxNj/JneNvG
	 F7LLvWf4hMjJoed7ydSENj9gloF5DTEO7rUrp8Fwm6rhT2AHBMcR+K+9QxPJINEB0N
	 5QcrTgh7JyLyGUGrpjtOQCHmsUnqzYY0NWvXUFtYh7zuMV2Ss0RHnxU9OvM+NQthXW
	 9u2pANDCagupCy1BCsGLxbzHoujRpdi1tUctnpXHs+cQMX/QZpCcaGWlAo/D+L8ndj
	 X7P85otTqPXcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 896D760E22;
	Fri, 16 May 2025 14:58:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3607B185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23D494151A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhK6dSUlr7-v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 14:58:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6A8F341147
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A8F341147
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A8F341147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:27 +0000 (UTC)
X-CSE-ConnectionGUID: TrjfmmAaQvCBWM1DVin99Q==
X-CSE-MsgGUID: 2QS83Z7ETayhByWQWIDHQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49308572"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="49308572"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:58:27 -0700
X-CSE-ConnectionGUID: ZOgHh65ARVyw8bMVM1dJww==
X-CSE-MsgGUID: z3+WKfZxS567wMNU8fXCDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="142717904"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 16 May 2025 07:58:21 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7139E34326;
 Fri, 16 May 2025 15:58:19 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Fri, 16 May 2025 16:57:59 +0200
Message-ID: <20250516145814.5422-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250516145814.5422-1-larysa.zaremba@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747407507; x=1778943507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WKgsyOUGz1C6sRGSqDQP6WDZrgidJ/+9Ev7RtodCw7w=;
 b=KMRu7tAtcJPUj2vq0oTnE3R2Quh6N3gSeXvKLGGLTTN0/NghsZg1lZ4u
 Lxw0Nqc7kac1LucvtIikQffrGLnzN5/m9C1Y5fJScpe3UutUPTUrYXB9L
 3u1VeYwXcnzzzPqa8UgUiy+BSSsYFLmDJEdSNL3VmZ3SztY7lkSVPdk7O
 9e6w5+2b4kp2H11mG7SJHesa6d3aAEJXSqiE+xKIX+Z4q6WTm8cdCiTtT
 Cs/1F+oyyXy9RJhgARfPewCaS014brIfDCt6J1TIGkJlcooq2J8dj91nV
 TxnJ/mKMTRepvLGm8qC0heYsUkGsbV5O3fDTARDFlKGjU3NaqqkjzCy7J
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KMRu7tAt
Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/15] virtchnl: introduce
 control plane version fields
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Victor Raj <victor.raj@intel.com>

In the virtchnl header file, add the Control Plane software version fields.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 include/linux/intel/virtchnl2.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/intel/virtchnl2.h b/include/linux/intel/virtchnl2.h
index af0f975060c9..c6db143371bb 100644
--- a/include/linux/intel/virtchnl2.h
+++ b/include/linux/intel/virtchnl2.h
@@ -502,7 +502,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
  *			    sent per transmit packet without needing to be
  *			    linearized.
  * @pad: Padding.
- * @reserved: Reserved.
+ * @cp_ver_major: Control Plane major version number.
+ * @cp_ver_minor: Control Plane minor version number.
  * @device_type: See enum virtchl2_device_type.
  * @min_sso_packet_len: Min packet length supported by device for single
  *			segment offload.
@@ -551,7 +552,8 @@ struct virtchnl2_get_capabilities {
 	__le16 max_tx_hdr_size;
 	u8 max_sg_bufs_per_tx_pkt;
 	u8 pad[3];
-	u8 reserved[4];
+	__le16 cp_ver_major;
+	__le16 cp_ver_minor;
 	__le32 device_type;
 	u8 min_sso_packet_len;
 	u8 max_hdr_buf_per_lso;
-- 
2.47.0

