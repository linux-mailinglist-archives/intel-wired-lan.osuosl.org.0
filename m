Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 534DEA3801E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 11:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFD8841288;
	Mon, 17 Feb 2025 10:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DeAsigQhbgH5; Mon, 17 Feb 2025 10:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E530441271
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739788114;
	bh=bjPjA1WG+PW4e6Ke7eSdYbX4Wce8XA1NCky3We2L/gA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0cQRdBszzJVWS4KDHHerIztQvojmqCqTR12rYiVxMob5LzjkuBqk76SQsBjVS7WbR
	 Go7bVWv1g/90v8hjFHNRV9y/iQUo3xl28BlzYlWDOUOJK0hSdLnfD2inrwCY4+FGnc
	 TuNygj6xK8hYssn03S+4yxuzAccLu7PIR+GhyyYQIx5XZ+EK2mIpeN0MA5mjQVMai0
	 0y1XRsO3RJ4ghBOYM8Ji6GtI9ud3w0tAHDnRg38zPPW8ug9ba6z2myPZ3CUszrEBrC
	 VwI+B0w6rpiXCzKH5yJZ3JTCXUYTHv1rB4sWvPoqDJVrqGfD8ooswvibrrp14vcEqY
	 dm8mV3VqmM4bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E530441271;
	Mon, 17 Feb 2025 10:28:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C33A72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 811B5821BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w9qakz7DwR4h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 10:28:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CCFD882197
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCFD882197
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CCFD882197
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:30 +0000 (UTC)
X-CSE-ConnectionGUID: 7kl4z+ftQ5SmrCaul+i+MQ==
X-CSE-MsgGUID: tbs0TqzXQ82E1oWk4gzqkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40168396"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="40168396"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 02:28:30 -0800
X-CSE-ConnectionGUID: vCeOmfrgTpydwcKwXMC62A==
X-CSE-MsgGUID: AkkyC4K9QqmCMrXVCg1/lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114598244"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa010.fm.intel.com with ESMTP; 17 Feb 2025 02:28:28 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 17 Feb 2025 11:27:43 +0100
Message-ID: <20250217102744.300357-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739788110; x=1771324110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eind2xzv457E4eHcksBryEozwBnJEEjhqhm0h6DsxyQ=;
 b=jLoLIXdNVg/2obuMJHDJef0CuLKOLy1LICuoj3iNpGpKc491BEBHCmJS
 miw2bhoMZQoFLTN6bRYKD9wswD8ruvKsbK+8vX5u25PkwAeZY+uu/XPdM
 mST91ISksGohIf6UzEA0mwdLGL7S0WGlZ6D+RR8Z8UgrvJDOZn48mFeeg
 H7WZayuiaInAykTlwgnv1Rb3tGwAkrveyVLpH+8Db61eQxFSmTIz0QweF
 6tW3U0FkgIHBiTzyDmYar0htks5/Cnm1Bcuyi057DE5j0Dv1MvyaohGfu
 Iy1/zaA+H5gBv3SuXBrwhAaDA1gguY7fWadjl7nLzQ/jZPOaYrA362sr1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jLoLIXdN
Subject: [Intel-wired-lan] [iwl-net 1/4] virtchnl: make proto and filter
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

Count can never be negative and valid. Change it to unsigned
to simplify handling virtchnl messages in drivers.

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

