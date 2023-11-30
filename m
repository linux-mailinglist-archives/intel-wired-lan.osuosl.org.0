Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6024C7FF790
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 17:58:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 920E684622;
	Thu, 30 Nov 2023 16:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 920E684622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701363518;
	bh=MRnqdTGaZzxt9xfyN6nxL+cQbWxk7CAZLJffkYAAvK0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7W1wL8N0Hdr1TbBXKDIECE90Butfu5/mIIVEGRZ/BDthQ94NvJmeDTDU1rB2tIEg+
	 N7VgqUO+kzPioGaMZosLanM9b4L2jaZGp8ziy9dojEOyINLkIghWfqFf584AXixgHh
	 w/RHKx9zqzz0WUoOhB4Ni3tIJAjf/kyZAqZZLQiMsXZvsb7hFJYbZEqbevi0eHp3lp
	 eka7qfXypYwmE/MBUNyLYvoxcAE0cxA+logeeFQueag1qkli4Wcuj2u9MVTT/E4csc
	 F7aOhnQ6rkDuNWNOkV8W9bF6eiwbgS3pqfd0tl3ucCuuUHeVx8iD0CZpuwXsl2R3eC
	 PX9e5PlgY4xSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z7ZAP4axBWy6; Thu, 30 Nov 2023 16:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59DF484615;
	Thu, 30 Nov 2023 16:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59DF484615
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B02F1BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62E5C84622
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62E5C84622
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-Mta-7s1Ykt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 16:58:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9673984615
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9673984615
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-644-eOaNy0UqPRuj58coU7AoJA-1; Thu,
 30 Nov 2023 11:58:24 -0500
X-MC-Unique: eOaNy0UqPRuj58coU7AoJA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A99938149BD;
 Thu, 30 Nov 2023 16:58:24 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.226.172])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7C87E1121307;
 Thu, 30 Nov 2023 16:58:22 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 30 Nov 2023 17:58:06 +0100
Message-ID: <20231130165806.135668-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1701363510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=47yY7iPs1dv0KQfmDWaKIoVimfKTuHUX6+HGkNeEXfE=;
 b=UI637E0Fo7CHDxVBkv5MlK1ppWMI/MmrHgGJXxnXcsdsfUGXuUEexXR66JwHwBg8RTcvD0
 vr9hdngPM6waXcKcp2hekGb/OwIFF8yvWZS5bXh0wKC6u8CZKJccg13pf6W2WNN8/TQstK
 0XO+5fZnC2KrHk6vkyWYLZ4XZvq4hGE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UI637E0F
Subject: [Intel-wired-lan] [PATCH net] ice: fix theoretical out-of-bounds
 access in ethtool link modes
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To map phy types reported by the hardware to ethtool link mode bits,
ice uses two lookup tables (phy_type_low_lkup, phy_type_high_lkup).
The "low" table has 64 elements to cover every possible bit the hardware
may report, but the "high" table has only 13. If the hardware reports a
higher bit in phy_types_high, the driver would access memory beyond the
lookup table's end.

Instead of iterating through all 64 bits of phy_types_{low,high}, use
the sizes of the respective lookup tables.

Fixes: 9136e1f1e5c3 ("ice: refactor PHY type to ethtool link mode")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a34083567e6f..bde9bc74f928 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1850,14 +1850,14 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 	linkmode_zero(ks->link_modes.supported);
 	linkmode_zero(ks->link_modes.advertising);
 
-	for (i = 0; i < BITS_PER_TYPE(u64); i++) {
+	for (i = 0; i < ARRAY_SIZE(phy_type_low_lkup); i++) {
 		if (phy_types_low & BIT_ULL(i))
 			ice_linkmode_set_bit(&phy_type_low_lkup[i], ks,
 					     req_speeds, advert_phy_type_lo,
 					     i);
 	}
 
-	for (i = 0; i < BITS_PER_TYPE(u64); i++) {
+	for (i = 0; i < ARRAY_SIZE(phy_type_high_lkup); i++) {
 		if (phy_types_high & BIT_ULL(i))
 			ice_linkmode_set_bit(&phy_type_high_lkup[i], ks,
 					     req_speeds, advert_phy_type_hi,
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
