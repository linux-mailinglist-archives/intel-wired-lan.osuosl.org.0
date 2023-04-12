Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BBB6DECA4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 09:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3255861167;
	Wed, 12 Apr 2023 07:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3255861167
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681285042;
	bh=FO2KN37xkcmH9tuWjG5gPngnlOKaFMJW0RWjLTxxJjo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qHAF+49/bWw9XeDXdHMMifB9JKrvPLgzk+9e5cbM5o9HXsCne5JMyEu3yckKE0Orv
	 D8SQXSjm0nPVp3S5aC/M+OKDSvJLfRe0Qlu5QhTek6rfZubx4XmxVUwIf/FCeTM6+i
	 5RdaHDIiOF4p+HMqJqjvCk7/LSHrkfxm0W4TJpyKeBKRixRvthjetgog+xIfF4ppZc
	 XYL1LYF/F4ABeT8I6nUyYoRPkduBtJFvr3plLdzgfKIDAN6d/TtiCnksWmL78mw1pz
	 OsUgLqg+kia0va+8b9dqH5PXVHWyTMcfika8jmHdO+rrlA9yNlPLE5pt6Lnr8EyVCc
	 1O9cB/14DcHvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yt1FHEbSJMmR; Wed, 12 Apr 2023 07:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 230D2610BD;
	Wed, 12 Apr 2023 07:37:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 230D2610BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB8A1BF386
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 07:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A68740A0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 07:37:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A68740A0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGgyQWnB_ymt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 07:37:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C318940192
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C318940192
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 07:37:13 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 12 Apr 2023 09:36:11 +0200
Message-Id: <20230412073611.62942-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1681285027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RQkxQvPTvjTB5S3EwtvOfTBwQl24EI140WoGiNkBG+s=;
 b=MW09NHjE0b5w53V52ZrAJ5VkN49spPATMCnsc9qgjoW4EDKZV805iagnvPySEwT1zsCx9l
 NTIAZ5xeuhBOe/RU+HaBHfVgsouZkF+DG1tZUBFswIusbtpFqaPFe+SIeJeSQA1X/pp0fP
 yEBhn2xL8UqzJkcc+hyqx6P1sdFiSgx/O+XzgbjCMSFG3CjNG6eNP96r7l5Q2aKtRdZ/rt
 hjUHgIO+aejtST9qclya1ArAvq3CAkk8t8zQ6uw/e3WTaWAg97/Aopzb5x5SJyatHqi6XA
 buWas5/KGc7KBbuP2QfvFnMOBO45DdPPPYK5MKZ25M9HXtGPBD3UKuSY3og/lA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1681285027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RQkxQvPTvjTB5S3EwtvOfTBwQl24EI140WoGiNkBG+s=;
 b=mFYbNfdzkk6Rb44H39Ue7RlLrMKpMhP3u3YBPCpGTpb6t7kJ7yKFaaL/GavogRvXU+DL/F
 T62zChYo5S4uKADQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=MW09NHjE; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=mFYbNfdz
Subject: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Ong Boon Leong <boon.leong.ong@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

High XDP load triggers the netdev watchdog:

|NETDEV WATCHDOG: enp3s0 (igc): transmit queue 2 timed out

The reason is the Tx queue transmission start (txq->trans_start) is not updated
in XDP code path. Therefore, add it for all XDP transmission functions.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba49728be919..e71e85e3bcc2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2384,6 +2384,8 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
 	nq = txring_txq(ring);
 
 	__netif_tx_lock(nq, cpu);
+	/* Avoid transmit queue timeout since we share it with the slow path */
+	txq_trans_cond_update(nq);
 	res = igc_xdp_init_tx_descriptor(ring, xdpf);
 	__netif_tx_unlock(nq);
 	return res;
@@ -2786,6 +2788,9 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 
 	__netif_tx_lock(nq, cpu);
 
+	/* Avoid transmit queue timeout since we share it with the slow path */
+	txq_trans_cond_update(nq);
+
 	budget = igc_desc_unused(ring);
 
 	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
@@ -6311,6 +6316,9 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 
 	__netif_tx_lock(nq, cpu);
 
+	/* Avoid transmit queue timeout since we share it with the slow path */
+	txq_trans_cond_update(nq);
+
 	drops = 0;
 	for (i = 0; i < num_frames; i++) {
 		int err;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
