Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDE8A438C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:09:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79AF040CFA;
	Tue, 25 Feb 2025 09:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4rjHPz9m8rM; Tue, 25 Feb 2025 09:09:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 481AB40CC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740474569;
	bh=fOE4UfCpCj8Hk3n0kRk4vD/RQSh03yyF8ewVBtTlfrg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XL9oJB3qIeziimHPDsmQraaYq6WsU1A05BwyQYty+gTatRXF9EnIFT8/XKTzTv8u5
	 4T8koPnmAArxI4IL/1l7/w8njaSAtZ2xF3OuL5y41W9Xi3OIiJojQE6ILhJ6DgdIlq
	 OU4Dp1k9f6qE9fJglvtV0aCxyzNuNjZvrQncqP5vrMIkX8kv85b/JbRHoi3hwaZKfe
	 x1mKPcI7Dg+Abnouz6qAiT7ZrRoBzNS0XaGJnlqso5TQa098kHnToLvSqsKraH5cXx
	 HrZQSQtO3I5l3s2ZsRUwd7pGIf1FB+lKp35XVmgLcfg4Tf1pd/g7MmrCg7gbLV6Dv0
	 hYM6RXGTfdWqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 481AB40CC0;
	Tue, 25 Feb 2025 09:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 484E62DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28D8C81DF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4OOFZ3oZUB1a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:09:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3374281DFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3374281DFC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3374281DFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:25 +0000 (UTC)
X-CSE-ConnectionGUID: bezveaLTQK6X7a7LvuNkOg==
X-CSE-MsgGUID: HcfJmtaTSpShELLzp2YAww==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58810328"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="58810328"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:09:24 -0800
X-CSE-ConnectionGUID: gelLJujlQuuSx/Sc7/D8jw==
X-CSE-MsgGUID: UrmrT27xSFOOVP0ct2c23A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121275617"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa003.jf.intel.com with ESMTP; 25 Feb 2025 01:09:23 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 25 Feb 2025 10:08:45 +0100
Message-ID: <20250225090847.513849-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474565; x=1772010565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nm9PO0xirdN+TRm0KZX+8xHVA8RL/ClQeLBsteWTTUQ=;
 b=RzQbsG80lu0R+ydIpvJt4Aj2NM4z0JE4apTsVkC7quaYCj4kgMgd32uw
 8t7IEdS0c19zQR4I7Z6ZHlDo9/WhqE/4rBRUUxqLqxw/9sWHk+NXbyQqQ
 n2ouOYSDuIsodkZ1jKUy16Z1A/Lw7yr5sqCkpFRXbel47nDpzz8Ciemoq
 /ldGv6a6ZVbzCD0h0XlWT0jLSuBm9Kp3kwb5hYBrccrxjIbWwu278bUjP
 6Bf0pvrrlcZX6TGju1alaZTkvyjDQuEpghz96hyB+bAvOJSDwoHx8bSWp
 iRwnCKSxcaiVPK3xsbIIs0NSlA13MGz4QD+MtZcp1YIr9hZSAZrQsbcxS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RzQbsG80
Subject: [Intel-wired-lan] [iwl-net v2 1/5] virtchnl: make proto and filter
 action count unsigned
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

From: Jan Glaza <jan.glaza@intel.com>

The count field in virtchnl_proto_hdrs and virtchnl_filter_action_set
should never be negative while still being valid. Changing it from
int to u32 ensures proper handling of values in virtchnl messages in
driverrs and prevents unintended behavior.
In its current signed form, a negative count does not trigger
an error in ice driver but instead results in it being treated as 0.
This can lead to unexpected outcomes when processing messages.
By using u32, any invalid values will correctly trigger -EINVAL,
making error detection more robust.

Fixes: 1f7ea1cd6a374 ("ice: Enable FDIR Configure for AVF")
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 include/linux/avf/virtchnl.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 4811b9a14604..cf0afa60e4a7 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1343,7 +1343,7 @@ struct virtchnl_proto_hdrs {
 	 * 2 - from the second inner layer
 	 * ....
 	 **/
-	int count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
+	u32 count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
 	union {
 		struct virtchnl_proto_hdr
 			proto_hdr[VIRTCHNL_MAX_NUM_PROTO_HDRS];
@@ -1395,7 +1395,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(36, virtchnl_filter_action);
 
 struct virtchnl_filter_action_set {
 	/* action number must be less then VIRTCHNL_MAX_NUM_ACTIONS */
-	int count;
+	u32 count;
 	struct virtchnl_filter_action actions[VIRTCHNL_MAX_NUM_ACTIONS];
 };
 
-- 
2.47.0

