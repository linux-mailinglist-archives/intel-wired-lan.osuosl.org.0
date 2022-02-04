Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDFA4A9D3D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 17:59:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96FF14030D;
	Fri,  4 Feb 2022 16:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OmtbxVu5ntXu; Fri,  4 Feb 2022 16:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95E6E40343;
	Fri,  4 Feb 2022 16:59:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37C5A1C1162
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 16:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23FC58144F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 16:59:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CkNhcTn2K6na for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 16:59:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7221F81448
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 16:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643993939;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=cnjW8yKbEyG0FqNYK6ZIIplhyg3mHtVTjDUJ3agdcfQ=;
 b=BDmUfxB07pA9nzD5OObpaSDIFpGZChjAip77oQLpFHFKiwRFDMimoyN69pVASZFE8ogzBz
 zyyzuiczMK7bp00BdW6SAZfCyZ21zWyNU4wV12dTaAH7g7XGCXNVv6Lo1hCozoq8am0YsM
 MV7A+WXP30oqpKWddjI42pdVHY6xDhU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-244-yB7x48wRPSGm60yek7yULw-1; Fri, 04 Feb 2022 11:58:53 -0500
X-MC-Unique: yB7x48wRPSGm60yek7yULw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2842F51081;
 Fri,  4 Feb 2022 16:58:52 +0000 (UTC)
Received: from jtoppins.rdu.csb (unknown [10.22.16.103])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E4FB2753FC;
 Fri,  4 Feb 2022 16:58:50 +0000 (UTC)
From: Jonathan Toppins <jtoppins@redhat.com>
To: intel-wired-lan@lists.osuosl.org,
	lihong.yang@intel.com
Date: Fri,  4 Feb 2022 11:58:46 -0500
Message-Id: <c095aac80cac3fc103f13170a976def3aa4d0f78.1643993926.git.jtoppins@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-wired-lan] [RFC] ice: use msleep instead of mdelay
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
Cc: Jocelyn Falempe <jfalempe@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use msleep for long delays instead of spinning in the driver.

Suggested-by: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jonathan Toppins <jtoppins@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 408d15a5b0e3..50987d513faf 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1107,7 +1107,7 @@ int ice_check_reset(struct ice_hw *hw)
 			GLGEN_RSTCTL_GRSTDEL_S) + 10;
 
 	for (cnt = 0; cnt < grst_timeout; cnt++) {
-		mdelay(100);
+		msleep(100);
 		reg = rd32(hw, GLGEN_RSTAT);
 		if (!(reg & GLGEN_RSTAT_DEVSTATE_M))
 			break;
@@ -3196,7 +3196,7 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 			if (!status)
 				break;
 
-			mdelay(100);
+			msleep(100);
 		}
 
 		if (status)
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
