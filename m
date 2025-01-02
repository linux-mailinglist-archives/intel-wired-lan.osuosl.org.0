Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4679FFCEB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6B2E60723;
	Thu,  2 Jan 2025 17:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AyAdOdq81GYa; Thu,  2 Jan 2025 17:40:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DBB96078F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839614;
	bh=kNbPgneaX7GZilz8mvKDzcGBDi52SBp2xJS4zJPPs40=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=umj9+Z9bSncfzgRACXr4fvMIh8TH7k7eWysfc7wu47nkdh/ERhkG6Uyi3sVL29tPI
	 FAg0IdmPT1dwAYYfuv3C9r/Iww9z8vPvoPKzoSHZ0uSffWGqYI95HndP8lnXF+11Lw
	 Nm+3gSt9WbvQ5rVvDnP9ZxpKgjRAKrj7u6BV3wsTWCNiWZWFzkluvFFjKs9ai4KXT2
	 u4vD9hQ3LvwYusHxzZBm2ezlkKWX3p0pupQul6uUnjPqdh4Y5JQGzLCm5/SQXhxVs6
	 YIN1HJWibS1L5sHbX8MUD1e24GlzPF+juSYFjh7Ox0Prh4loDD6iTY6I7IA5M+wSPi
	 X6HlkiOzvGeYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DBB96078F;
	Thu,  2 Jan 2025 17:40:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 06B48F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D84E140522
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:40:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uj9_nwb_5MJg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:40:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CEE1040527
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEE1040527
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEE1040527
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:40:10 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTPAx-007ty0-28;
 Thu, 02 Jan 2025 17:40:03 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu,  2 Jan 2025 17:40:02 +0000
Message-ID: <20250102174002.200538-1-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=kNbPgneaX7GZilz8mvKDzcGBDi52SBp2xJS4zJPPs40=; b=UGBNNMY5S2N65FfU
 VuLFvGVF9UjUbk9MztliPzB4Wtoij4RwOQpPAByMJPyFrKngzigb9sFVmL1M3oSb7s/CzhOxgoCzz
 BWMxHlK2W1xqbI2Bv2fz66oEXLLd3kGa1aRoVFP76Z6SVEw61ZNFAxMIiYxr4/w6FUdjWe2iup4jH
 fMMYaGTk13QstT/IW3gBbK0so0Wz5H/ZcwG6bRFq7GQ309UF+p/NqFyV5cQdRRwrmRGCl5Bgahb57
 7cPX27akYtIeDNb13grTcSOcLfwLiF/qWNNaKcuThdZHDreKQjTImoSRp8seWdCN5mT1HPZURmDUK
 dpEQbGrkwDt7PIQGzQ==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=UGBNNMY5
Subject: [Intel-wired-lan] [PATCH net-next] ixgbevf: Remove unused
 ixgbevf_hv_mbx_ops
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The const struct ixgbevf_hv_mbx_ops was added in 2016 as part of
commit c6d45171d706 ("ixgbevf: Support Windows hosts (Hyper-V)")

but has remained unused.

The functions it references are still referenced elsewhere.

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h |  1 -
 drivers/net/ethernet/intel/ixgbevf/mbx.c     | 12 ------------
 2 files changed, 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 130cb868774c..a43cb500274e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -439,7 +439,6 @@ extern const struct ixgbevf_info ixgbevf_82599_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X540_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X550_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X550EM_x_vf_hv_info;
-extern const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops;
 
 /* needed by ethtool.c */
 extern const char ixgbevf_driver_name[];
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.c b/drivers/net/ethernet/intel/ixgbevf/mbx.c
index a55dd978f7ca..24d0237e7a99 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.c
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.c
@@ -505,15 +505,3 @@ const struct ixgbe_mbx_operations ixgbevf_mbx_ops_legacy = {
 	.check_for_ack	= ixgbevf_check_for_ack_vf,
 	.check_for_rst	= ixgbevf_check_for_rst_vf,
 };
-
-/* Mailbox operations when running on Hyper-V.
- * On Hyper-V, PF/VF communication is not through the
- * hardware mailbox; this communication is through
- * a software mediated path.
- * Most mail box operations are noop while running on
- * Hyper-V.
- */
-const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops = {
-	.init_params	= ixgbevf_init_mbx_params_vf,
-	.check_for_rst	= ixgbevf_check_for_rst_vf,
-};
-- 
2.47.1

