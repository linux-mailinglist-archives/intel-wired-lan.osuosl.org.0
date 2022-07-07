Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8528656A345
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 15:16:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26EF961216;
	Thu,  7 Jul 2022 13:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26EF961216
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657199804;
	bh=xRDiFgeKYjTtOmHjoIRcMeu5uU9mTLIipN16xsd6OpA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BSbTkN6Y4Iv3IOhV1gtV6+d61r+Xn7axOjMSCgA6F5tn4+Xx7bDUExKfaKgPv+oDq
	 hlcs+K/dSQnvVjUON1kfFh5VVC/490IELn47QGuR8kdDEWnnYN8kVJjHIu/iUq90+C
	 4wahR7BPjxDuBwwnlYlNaBswBjI//EKvti9YvOlw3FD/L4zZhRT9TKAZY3n3AF9qsl
	 F1n6oB/ukvaSBLtyrijg9G9Y00p8G1hPPgh3YTV4BmcZR82f1JCKbWNtxmMXangaQs
	 QIe3FiTmxRO3sbwjuMZXkd93OX7SYeQb7FWhqujvz02KX8VaMtRbLN5tnHGIHt+DgJ
	 EqEFsaUZx+Ekw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uJWQQGq8V5oQ; Thu,  7 Jul 2022 13:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C703861210;
	Thu,  7 Jul 2022 13:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C703861210
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC29F1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B61E341A66
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B61E341A66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcBzC65fi0HX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 13:16:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE1A041A5F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE1A041A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="285147994"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="285147994"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 06:16:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651131628"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 06:16:08 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 15:15:50 +0200
Message-Id: <1657199751-256188-3-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657199769; x=1688735769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Jix2OmQcc7RaURIcs58qO4L1kqDZh1pMCBQIeUgodpg=;
 b=h83pLV9jgX6IzZR6ynhqnDyH8lK2o7WKOYFryYgckBidOT7JHsBp6KGz
 Eemsiy2GjooMgR3R5iLZCUh16DTlWAzn7KuBSRMTJE6QzU0tCcvlhIcaE
 Quh9SycViAZMqYoesMtWMBxD/7gvZDWaFNzZBrtp+oXuddLavaVz8Z1BZ
 n6NC5bDiwcE9DJl/8nIV/uYZLhWLtrUoTB0dGQcN9C5w9rq0mcWXfSFTh
 QlEoDS3hZOIfWBxaeUzQR9uZhYkRPCTahEenE06Sqe6oz0gKZ22rNKh3i
 tnU1+KYhNieL3+nYc21wk2zy6HmqROMbLmKkUvwtf48AS9BxiiJvw/r2B
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h83pLV9j
Subject: [Intel-wired-lan] [PATCH net v1 2/3] ice: Ignore ERR_ALREADY_EXISTS
 when setting promisc mode
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
This fix is needed because the driver could set promiscuous mode
when it still has not cleared properly.
Promiscuous mode could be set only once, so setting it second
time will be rejected.

Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Tested-by: Igor Raits <igor@gooddata.com>
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8a60052..0aa4871 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4428,7 +4428,7 @@ static u8 ice_determine_promisc_mask(struct ice_fltr_info *fi)
 		else
 			status = ice_set_vsi_promisc(hw, vsi_handle,
 						     promisc_mask, vlan_id);
-		if (status)
+		if (status && status != -EEXIST)
 			break;
 	}
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
