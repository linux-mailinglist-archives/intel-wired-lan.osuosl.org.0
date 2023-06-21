Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5AF737E14
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A5544181A;
	Wed, 21 Jun 2023 09:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A5544181A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338721;
	bh=lbVvx1IiWXKAmm7CE89ja4BG+cWl6nxq/qpS650NKsg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xyOas3bHXSsPb5esHODz8G5cHo+LyUvBZRpcTqROMUNwSlOxw6c0iipR3jnKGmnAo
	 wAtuqLZdDmFYj1HnOkO8B0GJFWOKOx5kFLEWb5QCladdHD5qlh+lzWFClX/3XejwED
	 +rP4YDUHllV2YxcwnFd3cgGM9j20y+bL4CBJUMB67TR3FaLHBbtO+4vPbvj3YL8Kki
	 QU19hoBkrzrUWw8vgLJz+C6ppznZ0xRtMbPbD9/ff7Z8zNLK3hgBkz4JL73LWfIfks
	 NBA2UC1WtK1YpFZTvlpvuFBuyI99YB6SShY4T4v9eXxHZncxaG+8Jmd+2KpxwT82GC
	 kPxvXvmzBQ2QQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9-wab-k6lkz; Wed, 21 Jun 2023 09:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0ED37417FE;
	Wed, 21 Jun 2023 09:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ED37417FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A89F71BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8244783280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8244783280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84tq4dtscmED for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC13283276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC13283276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613686"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613686"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:49 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570857"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570857"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:47 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:04 +0000
Message-Id: <20230621091112.44945-8-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338709; x=1718874709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0SKLGKxWQMims7AJYT0r+CaMkK3rCfFgFvHgnlsBYCc=;
 b=nEpNkyNt7pBNtV9azmeSwWT5dhAyR/NOBc99sFaIE88fhWcH+LVZbJlw
 WdoVnSbKqtjtEuKpQSM/ZAgqXUEj4eLnobL7xAUDyljjxCoQpFjNt7kv/
 hZ2RVX6LIrhRNULW7/Ad6Y+oj4UeGqFy69hT4EQyat10+V2eKUfw1ft0Y
 SZLxNwoUVCPG+qFdJ66EHIHKhlxSfIqHn+gXCi4h+OjZxS5pEVmcj02Ir
 Pu3j+QPVA5bjvSGMo3sV95ZGIioTGbptDey5zdIrWjY7es4HpQ69yL0wC
 TuDvVd7LSnPX2KHx8pkc7Q9IXhGkPYZ35LcwGZggJ03QmJpdFEdW+/5gj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nEpNkyNt
Subject: [Intel-wired-lan] [PATCH iwl-next V2 07/15] ice: do not notify VF
 link state during migration
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF driver will notify VF link state when replaying virtual channel
commands GET_VF_RESOURCE and ENABLE_QUEUES.

Block PF driver to send message to VF if it is migrating.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 6c99ad7ac2e0..0a10ea0b3b6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -233,6 +233,9 @@ void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 	struct virtchnl_pf_event pfe = { 0 };
 	struct ice_hw *hw = &vf->pf->hw;
 
+	if (test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states))
+		return;
+
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
