Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8F49B68F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 17:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44F668136D;
	Wed, 30 Oct 2024 16:15:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ajo7uyo4nIIg; Wed, 30 Oct 2024 16:15:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B8B181373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730304908;
	bh=0XXDir8f+Ye+PjdydaZ7Dgj1EdDs9coVsC/0Mxj1Js8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sbYeMmftaU4beV1GPvpb1QExfE0i7MPGF3JlEnze/AdivoBorVntVPV0yAEAF/Ibq
	 /rEF55qENOM0xx9ULnLCrabXqDPYb4qCSQLAUdlFCVqepDNDgH8vFsrP5GQX2PkcB7
	 wGUN7P4wbjMp+lG71HGiWg7Wae3P1zyr54n18PODWoi3NcIVcDgxM1IUTp46Syq89O
	 1FzF5sCvNppXad8AiE5EDlKKs0awI1ncUcHXUZI1mX/7YP1mcfBXqNrC/HyV+ZDcy/
	 +JFu4dbXQAmQohad+snu4wYhs7PSVpAICeB7Rc0Ds9fQzhNAOHW2Io00Fjp1IwWOre
	 7U9Las0To+KTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B8B181373;
	Wed, 30 Oct 2024 16:15:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72F4D5E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5908A60A87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CLH2VYRhQylG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 16:13:52 +0000 (UTC)
X-Greylist: delayed 400 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 30 Oct 2024 16:13:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3307660A81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3307660A81
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.11.55.87;
 helo=james.theweblords.de; envelope-from=pegro@friiks.de; receiver=<UNKNOWN> 
Received: from james.theweblords.de (james.theweblords.de [217.11.55.87])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3307660A81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:13:51 +0000 (UTC)
Received: (qmail 17590 invoked by uid 210); 30 Oct 2024 16:07:09 -0000
X-Qmail-Scanner-Diagnostics: from 129.233.181.227
 (petronios@theweblords.de@129.233.181.227) by james (envelope-from
 <pegro@friiks.de>, uid 201) with qmail-scanner-2.10st 
 (mhr: 1.0. spamassassin: 4.0.0. perlscan: 2.10st.  
 Clear:RC:1(129.233.181.227):. 
 Processed in 0.073649 secs); 30 Oct 2024 16:07:09 -0000
Received: from unknown (HELO james.theweblords.de)
 (petronios@theweblords.de@129.233.181.227)
 by james.theweblords.de with ESMTPA; 30 Oct 2024 16:07:09 -0000
From: pegro@friiks.de
To: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org,
	=?UTF-8?q?Peter=20Gro=C3=9Fe?= <pegro@friiks.de>
Date: Wed, 30 Oct 2024 17:06:43 +0100
Message-Id: <20241030160643.9950-1-pegro@friiks.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 30 Oct 2024 16:15:07 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=friiks.de
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix handling changed priv
 flags
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

From: Peter Große <pegro@friiks.de>

After assembling the new private flags on a PF, the operation to determine
the changed flags uses the wrong bitmaps. Instead of xor-ing orig_flags with
new_flags, it uses the still unchanged pf->flags, thus changed_flags is always 0.

Fix it by using the corrent bitmaps.

The issue was discovered while debugging why disabling source pruning
stopped working with release 6.7. Although the new flags will be copied to
pf->flags later on in that function, source pruning requires a reset of the PF,
which was skipped due to this bug.

Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and hw_features fields in i40e_pf")
Signed-off-by: Peter Große <pegro@friiks.de>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index c841779713f6..016c0ae6b36f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5306,7 +5306,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	}
 
 flags_complete:
-	bitmap_xor(changed_flags, pf->flags, orig_flags, I40E_PF_FLAGS_NBITS);
+	bitmap_xor(changed_flags, new_flags, orig_flags, I40E_PF_FLAGS_NBITS);
 
 	if (test_bit(I40E_FLAG_FW_LLDP_DIS, changed_flags))
 		reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;
-- 
2.34.1

