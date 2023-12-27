Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BF881F0F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 18:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A787E60F26;
	Wed, 27 Dec 2023 17:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A787E60F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703698725;
	bh=3S35mn/l4nHGrIojcLiHKXfHufV6jyU++VNbHJUtPzE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LuRv2N6Md2kj28tLKHS3ePjHKL1BxYDtLAHGi8EI97RrlrNhvBvFARtat4CorH+wm
	 /qZD/QDI9zBrasarlgGB63nJoBkEIYLQ8OXiaPkjya1C+n8YkToCTTb1UehZPir2FS
	 pf3fEm9dvA1NW+QCTgK8yedhk7D9wYOFXxlVPMe1nEhoKZjTEgj7qz9v0GhxhN14rt
	 SMBjWhuXYYfSo/0/+Qvhobwgi/QvxHlZTWzPhO1YSLeggGwL/Gh/SBmMGnFdhjzhCf
	 mHSavejUpqDhsyvbjU0sXZrN8R4teS4OW4bw1c3482kK3TOIWLNdWA3jUZgInR4W9k
	 vHhkG64KuUI6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0H7Yjr9lNBO; Wed, 27 Dec 2023 17:38:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D7846058C;
	Wed, 27 Dec 2023 17:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D7846058C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D51BA1BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 17:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B347B4026E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 17:38:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B347B4026E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjkIkSQbpcjQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 17:38:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5519F401CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 17:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5519F401CA
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="460796849"
X-IronPort-AV: E=Sophos;i="6.04,309,1695711600"; d="scan'208";a="460796849"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 09:38:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="1025436969"
X-IronPort-AV: E=Sophos;i="6.04,309,1695711600"; d="scan'208";a="1025436969"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmsmga006.fm.intel.com with ESMTP; 27 Dec 2023 09:38:28 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Dec 2023 09:37:57 -0800
Message-ID: <20231227173757.1743001-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703698718; x=1735234718;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cRmJW9tNyoDafmN+5jZx2+c5vjjg3wdbbiSEthAjQS8=;
 b=NVVoGYM+zZEU9DMtxCKnQXu4uDAL1sS8WSFRzDkYbhbDj6hW1T1Brikv
 94RM2eLXEO0zq3R9ZXKPx4W9J9MR2F8WYVucvlNkWkNk0lwkeTYsInYUQ
 QUyFsjdIbUtA3V6qCbWQVljnLapgRKquMzsHbOUusQAINmjcG++Cft0UX
 WGohH11vuRMwI174C6wKOv61UkMR6mOSFNI0k3IaUNnSqsw+VPKfI35sG
 mh876yTNc7Dcl0KJs7mXWka8eIU3Yah2gIQc8d2gaqsxUqAI5XfKH4qJz
 +s+dzUjEQJi/CVP6xOsfEOvBsaijls+wuZnPnna2DF5jV6U25zHIEzAj1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NVVoGYM+
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid compiler padding in
 virtchnl2_ptype struct
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
Cc: netdev@vger.kernel.org, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Config option in arm random config file is causing the compiler
to add padding. Avoid it by using "__packed" structure attribute
for virtchnl2_ptype struct.

Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 8dc83788972..dd750e6dcd0 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -978,7 +978,7 @@ struct virtchnl2_ptype {
 	u8 proto_id_count;
 	__le16 pad;
 	__le16 proto_id[];
-};
+} __packed;
 VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
 
 /**
-- 
2.43.0

