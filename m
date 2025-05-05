Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F55BAAA21E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 00:55:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D648540886;
	Mon,  5 May 2025 22:55:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ly1DHvAp2byH; Mon,  5 May 2025 22:55:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 443104086A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746485715;
	bh=5rsPTj80lRYm1ZMCUdx5ihX1wS6VnDDpOMF0aCwgGJk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I4RabTE6HTKnAbXHoWS3vRhEuoda+IZEvN6+UUuXgx2KU+mNj23lpVmsbFVPWvJ2G
	 sTHxaSKh73Fs9qGoG9NZcxovbHpL73c3qpQn5cVpFLV7k2TCzL2hcl94NJ273M7FIE
	 PX2YiYP0H1vTEBTKvTURHnAj3WuSbdfcyuWplFYbeIDuNMsMdKWORAwzjMBrx96B0Z
	 /6Cqx1lwcbSkm8FBq1nhVcqoNe4Qdo30jwObNYQitSdip1vv8gm7GjTCcoc4YThqeX
	 yQf1gWd1bUmlAqIMSUm0/qRv9ua5ltqsI1y5vV5Kl6El6kjaGPCMwySNMrzVxgYoAd
	 1sItHbxKl3vhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 443104086A;
	Mon,  5 May 2025 22:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CA81D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BBAD40876
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:55:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fI_ZIbevcX-L for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 22:55:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 817CC40875
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 817CC40875
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 817CC40875
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:55:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8983B44C06;
 Mon,  5 May 2025 22:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93558C4CEEF;
 Mon,  5 May 2025 22:55:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Mon,  5 May 2025 18:38:34 -0400
Message-Id: <20250505223922.2682012-438-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505223922.2682012-1-sashal@kernel.org>
References: <20250505223922.2682012-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.26
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746485712;
 bh=iqiwDHIIKO7VHXaGeOt334f35nJ0OWz57iOP+tsOaL8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OPs1twL5DDzcc27XKeLdpYwwUGxyYUd4zpfiduz+NJVxh3506l8cMWxBGWQhypBra
 4J06Lzr7ztRVHMiUZAOnWe1uwJsGCdddrkIrbFCBLPHP46kaVOl/TnxhVycFfp+wsD
 cXLjurg6hR3XC+wbKeCRaOfg4ASdEFzxzajSWzJu8SCSrmTSMc35ifxVwkCT3QLArU
 thx8UUXHSlPkPftoP+Zgkty5apGtu/IjIXVg6E+f4w0UOla1UAF69HShvwggqqY21Q
 xFdUd80VjvEL3cf2Ge/ZNNeYR32aA9IwD/aB4VUe+EU5qHd/tuMwQEc7bUvCB+gn5R
 VQqEY8YZetFGQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OPs1twL5
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.12 438/486] ice: count combined
 queues using Rx/Tx count
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

[ Upstream commit c3a392bdd31adc474f1009ee85c13fdd01fe800d ]

Previous implementation assumes that there is 1:1 matching between
vectors and queues. It isn't always true.

Get minimum value from Rx/Tx queues to determine combined queues number.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7d1feeb317be3..2a2acbeb57221 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3817,8 +3817,7 @@ static u32 ice_get_combined_cnt(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, q_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
-		if (q_vector->rx.rx_ring && q_vector->tx.tx_ring)
-			combined++;
+		combined += min(q_vector->num_ring_tx, q_vector->num_ring_rx);
 	}
 
 	return combined;
-- 
2.39.5

