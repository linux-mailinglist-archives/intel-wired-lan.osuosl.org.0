Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7265F8FD4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Oct 2022 00:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55E6760E2B;
	Sun,  9 Oct 2022 22:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55E6760E2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665353737;
	bh=58F7YXalPKIkVZRGxcQ/NPtNGBd/zPC64wn1Tt0nM4A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pE08D18GjZPfLsKFvwp+vbu8EFQbCmkrq3b0wvCiVx5Ob9PkeGF0W9txeO7H0TQJW
	 3F+5lDzcEe5/9AyEhP2DB7h+FLTIozBlFczn0hPwRWpnAlhCyZLWUB0gyp7ebPum+O
	 EJk6Y+JPKY8oiUjt/WtJkJ5vXubjwlQC27nAHBgtP0pLhgTTaGon0ED7SumL12jc1w
	 QfU7h4w3rsyVsZA3kRoofuGkdvsLVl8hA4bhZDlyUwHBds5AsxKt6SzBxwn9yoY7MH
	 D51qmyYpTLMaDraTTOMc0/KGwrYKkBQpW/PPREYcbFoxbYv65wx1Zth1Y6oFl8Xcag
	 PNwG/kJfC7WeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vh4m8ciQMc94; Sun,  9 Oct 2022 22:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B4E060A46;
	Sun,  9 Oct 2022 22:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B4E060A46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDAEE1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A35FD40923
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A35FD40923
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FiLkwrXjURrT for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Oct 2022 22:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B03934089A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B03934089A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:15:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id ED55A60DBB;
 Sun,  9 Oct 2022 22:15:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A240C433B5;
 Sun,  9 Oct 2022 22:15:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Oct 2022 18:13:44 -0400
Message-Id: <20221009221453.1216158-6-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221009221453.1216158-1-sashal@kernel.org>
References: <20221009221453.1216158-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1665353728;
 bh=86sBV2qtfryQCC0tnr7qDvXObYavIWhzE4hrzmMFdMM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A/UZCNnF++BicchiJUL7Mg/yuFtptunGN5NQ3bu97r4tc6ne2bPF9xqQnX6Qcjc+A
 /WRiq1CBstZP00tJTz9IfLabsUhALBesytZB4R1urermdLCgjNCfBl1+2Yc+pYeTce
 DU0TJXMavjnZi6B0I9GRyK94d0R31NnbErwxlWd8EFQg8RhrgFjwmjI4r/vaFFz9LK
 W83U1qch1lu4Z//5FyF9qojufIw/4DBs+znpBRaJM4tQ7w5rnqk51SeX3TYqAsYUAu
 Qg0sIkCOtvM1EHn16xVxAexKfCqJxxTwgv+A9jfApIpugfaATj9VgBMtqd35jltXK5
 lLC+FautghoTQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A/UZCNnF
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.19 06/73] ice: set tx_tstamps
 when creating new Tx rings via ethtool
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 edumazet@google.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

[ Upstream commit b3b173745c8cab1e24d6821488b60abed3acb24d ]

When the user changes the number of queues via ethtool, the driver
allocates new rings. This allocation did not initialize tx_tstamps. This
results in the tx_tstamps field being zero (due to kcalloc allocation), and
would result in a NULL pointer dereference when attempting a transmit
timestamp on the new ring.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 4efa5e5846e0..4dfdec11ddc1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2826,6 +2826,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		tx_rings[i].count = new_tx_cnt;
 		tx_rings[i].desc = NULL;
 		tx_rings[i].tx_buf = NULL;
+		tx_rings[i].tx_tstamps = &pf->ptp.port.tx;
 		err = ice_setup_tx_ring(&tx_rings[i]);
 		if (err) {
 			while (i--)
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
