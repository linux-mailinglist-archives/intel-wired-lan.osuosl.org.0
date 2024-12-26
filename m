Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3A79FCB54
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2024 15:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AADA405BB;
	Thu, 26 Dec 2024 14:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PyAtr7YG35ky; Thu, 26 Dec 2024 14:09:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D61405AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735222179;
	bh=kNbPgneaX7GZilz8mvKDzcGBDi52SBp2xJS4zJPPs40=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6z+jvNw15iq28GwSirheyWiCol3qWFh0udiNZ/bku4ry1CAxdyVjFMzQA2pBtAeDn
	 JJv04i/eFxkSjvDmTbAoPt3HXIFV/LcyUOgdN8Z7aewHplA19ss0JldstPbqWjbBZf
	 gW7BCsBG/ZR6axjY37VuUOa3a47yFja70Bf3lQN8yGuJKsHu+7t3U6iead8DPkx9Fi
	 0rP0WP92chLgd8jGvHElcOIJPxzmXcOUk2aEoU88yrYdF37t4yBz0XmpmfI6h4HNGm
	 2pIkkaxifdg8XxTwVckipQhKlbzzZdN+y3V2a9Uaz1NEOAqgSFVxdS8EHGlo7z5uYb
	 ZvpseeIz8omFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8D61405AA;
	Thu, 26 Dec 2024 14:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CD121F15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 14:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6C8C605DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 14:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WRzhI3ZqFwIw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2024 14:09:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E8CF160591
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8CF160591
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8CF160591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 14:09:35 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tQoYG-007HlI-1k;
 Thu, 26 Dec 2024 14:09:24 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu, 26 Dec 2024 14:09:23 +0000
Message-ID: <20241226140923.85717-1-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=kNbPgneaX7GZilz8mvKDzcGBDi52SBp2xJS4zJPPs40=; b=Pxtdpr2w3Q9gLjAg
 XMUhvi61B3+tWBJP2JP9QY2v0qkBDIjZjCxYv1RkAktWjtwn3y/05DYyawCdegr9gtIp/WH8kmlbl
 qu2pBR9T6QHM8EzZMKY3J4oFJEBXFGliZHnCG2GzMgvvP03lfFKCMrfoaL1Vs4aB9VRcjCMbpeqZP
 WpmRD5TCpXsNj9BLExuywX9iGgiAy/dDbttXsj4h93MUk8JgFygvL/Xs9GEUCEp0lkjA3kuAm5JQ4
 gOBZNMEoQZVyzIlYkrFnv2JrJnOclwyBmf9OFGcePg1rX/yFeOjW2C7Hsmv7PvKNBkSA41nqnPSEU
 znT+qyMr2ww/SjSLdQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=Pxtdpr2w
Subject: [Intel-wired-lan] [RFC net-next] ixgbevf: Remove unused
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

