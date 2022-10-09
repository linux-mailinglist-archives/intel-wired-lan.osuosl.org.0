Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B26D5F8F68
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Oct 2022 00:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F603403F7;
	Sun,  9 Oct 2022 22:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F603403F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665353303;
	bh=N1LJqrAfy2HBcv+BzB+Hyh1/N2xyh6b5DFwASYu7psk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ksppfww1BRD1N4ACWOL22jTEq5ofSx56N3a3lrm6ZfbA9zuQpX25TTUpbGAbyySsO
	 9N41iCDad8+ACvAMqtjGkaIkpHJYPut5otoBQ7gW1uGX/YGnPSbyjUhlqlvdZpB6LL
	 RaK7SBuF1vXXR2/NPyi1oanBIs0yO6kM32com5Acd+Fmv/nccw2x/RGaunahcDR7Nh
	 HZ3wblQqxHW+ZhOI7rOCoifqbiWn5j6dlrtLXyDncLMLBIfZLiu/nvWM5u4p5RGYQR
	 5yiQYUzEvraB1451opIHbZQMZ8tMS1yIOXmGTs57CAVYZMFtSx69aMn/kJCBMjjwLn
	 yNLMc1ShFyE7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGXc70tcaVHu; Sun,  9 Oct 2022 22:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A873403D6;
	Sun,  9 Oct 2022 22:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A873403D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46B0A1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CD0682BE5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CD0682BE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r1GBDbKAVzhw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Oct 2022 22:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B26882BC4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B26882BC4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:08:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4276560CBA;
 Sun,  9 Oct 2022 22:08:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77D81C433C1;
 Sun,  9 Oct 2022 22:08:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Oct 2022 18:06:44 -0400
Message-Id: <20221009220754.1214186-7-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221009220754.1214186-1-sashal@kernel.org>
References: <20221009220754.1214186-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1665353294;
 bh=Xkhp6qFYAJNu1xrHgYYTR3y2exUAugmzcx115MDESBY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QP8+pUWmgelOTE0ABp0o0bZ0DckZswlyeWcy0ps3cJmNxE1L7RH2x71kzuCCF0Fw3
 fe/YhY62kyrNdkpNR32JQxL0yUZf5KUKBkEvJsqN9ppJolqHJk/p7NhiRxjjoyJnT9
 koWNcHnP6QzT+jo3ephNBGagOFqXw1HAi+mUrdddikR9DAUabPuj03aM3MJF0OBrE5
 SJzseCWABY2/MbIyaP9xmzbHYROdaUFY7fm9hc6sFOCw4le59jGIh5FV0rnw6jl7k5
 80JrmYR3jgdCdsBj8Xn395+n0kJZS0SiqoEoz8GxgDy0LMlZAf/agpZz1MXyQxnsN4
 xX/WG3L98lkiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QP8+pUWm
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.0 07/77] ice: set tx_tstamps
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
index a6fff8ebaf9d..bbf6a300078e 100644
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
