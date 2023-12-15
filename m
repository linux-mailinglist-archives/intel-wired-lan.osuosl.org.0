Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3B18154A4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Dec 2023 00:50:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3888C6FA80;
	Fri, 15 Dec 2023 23:50:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3888C6FA80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702684234;
	bh=oLp5cZGcPQm+cJluzcWfMDPoeVj76ZgVOpGR9VnJ1zc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PBevgn09GSwBoWkNkMLThzogWX4s2rBt6O1Ptu+mabHXxt5GiLjNIJeu3otfREOy7
	 Gmlxy1eD2RQJ+odrsGFDyBobL/ySfq++dX4m3D2GpeYkY9/6HVJAwjTvjUleDGmUKS
	 1hWW2olsYwfqqfH0OHhmbtx5XzAl6Eb4oa/D1eLxyBBHdr/cjxrPW9gkbURIRjzgah
	 ymTNHAmrf1cXDBDkW3vURq0HwuVRYuEej+AaaDr1RsYas+u7S2wldDeq18O+o26ScJ
	 CidGDdLDkEeBe1BVUKh9LA6uJeuccSnMxgNVzd4DM3t8lGQV7cKhBddEdXxQB+JCkX
	 Sb27JDXOmqp7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RnYlJ7jqd185; Fri, 15 Dec 2023 23:50:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2717B6FA43;
	Fri, 15 Dec 2023 23:50:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2717B6FA43
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FFAD1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 23:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37A7A6FA7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 23:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37A7A6FA7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htfANGZeTJ_D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 23:50:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78E426FA43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 23:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78E426FA43
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="398128497"
X-IronPort-AV: E=Sophos;i="6.04,280,1695711600"; d="scan'208";a="398128497"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 15:50:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="845280881"
X-IronPort-AV: E=Sophos;i="6.04,280,1695711600"; d="scan'208";a="845280881"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by fmsmga004.fm.intel.com with ESMTP; 15 Dec 2023 15:50:25 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Dec 2023 15:48:07 -0800
Message-Id: <20231215234807.1094344-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702684227; x=1734220227;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jeuw+gV3HerAJEKsYkEcIEaLL5vpGvorWy07Lc9qDCo=;
 b=XRX7a2+4nzdgyrNlRHz5d0e6XjWkAtSjrd/xXJFLzy20uCFO0zQhYGli
 llVQ+FLtsgF6e3kbdC72kJ7WX70TyKZynD2eiaj0GiKx3yL+6PF6Jfxnq
 EoF3s75Zbm0DV8Eq7jW8lt5FaqRpB5TvTs7MRc46P/AgFOiXCe8itfgGP
 Hp8v8sLyXbVHN6JK0Li1oVN9JnlfcoLdk8mSrS/7h115yTluzbBFbXoPK
 C0Ok1ItrhI+Y0Zt5xaxlKF0bljn8sk1wIqsyE3iMR5BJp6qHVS6aN4bRm
 QchyNPs4ainlUISjVg8L3fkATzIZ2RGbNdBWyxqHYX+wevJFe/gxXt2dc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XRX7a2+4
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid compiler introduced
 padding in virtchnl2_rss_key struct
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, przemyslaw.kitszel@intel.com,
 larysa.zaremba@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Size of the virtchnl2_rss_key struct should be 7 bytes but the
compiler introduces a padding byte for the structure alignment.
This results in idpf sending an additional byte of memory to the device
control plane than the expected buffer size. As the control plane
enforces virtchnl message size checks to validate the message,
set RSS key message fails resulting in the driver load failure.

Remove implicit compiler padding by using "__packed" structure
attribute for the virtchnl2_rss_key struct.

Also there is no need to use __DECLARE_FLEX_ARRAY macro for the
'key_flex' struct field. So drop it.

Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 07e72c72d15..8dc83788972 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -1104,9 +1104,9 @@ struct virtchnl2_rss_key {
 	__le32 vport_id;
 	__le16 key_len;
 	u8 pad;
-	__DECLARE_FLEX_ARRAY(u8, key_flex);
-};
-VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_rss_key);
+	u8 key_flex[];
+} __packed;
+VIRTCHNL2_CHECK_STRUCT_LEN(7, virtchnl2_rss_key);
 
 /**
  * struct virtchnl2_queue_chunk - chunk of contiguous queues
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
