Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C79DAAA2DD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 01:05:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F064440590;
	Mon,  5 May 2025 23:05:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jto8QYL2DWAC; Mon,  5 May 2025 23:05:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7470C4059F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746486339;
	bh=nMLQfky+hwSyimc8RpXBv6JZuMWa5pT9JdMMbVs3pp8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XEgzUeFGUu0bzsQaAsB/iDrn+Zi/6yfEGba7WIijuLClvxT1jigh5f+WkKZ4dfomb
	 h9SRg5AiEOLug3EquD1rveR5FnTQJAq2Pp1fLFK9TR81Im98mefabiox1jRlFAyLcu
	 IAvLhak8lnWrJhat8h1w+Hu+EFwnvyKfZZ4ZkZfJwE6Lt0FbTnUXQv2nCqWKVXV58k
	 E2QUoKIB7EJObndbzmM1XLFwIBubTxD/mRPF+fmKgW/tNifrbr+Dwb3Icy6XPkKzVD
	 0U19dByfY0McZZKghgyu5EYjrGy8FW9gasrODPK5zaBOBvPyqNa9ck/21dq9ZBDoPf
	 Q6HMdO/TRdJIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7470C4059F;
	Mon,  5 May 2025 23:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C58F3D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 23:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B409E608B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 23:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KU9KgoDaWbQ9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 23:05:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 204E0605D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 204E0605D2
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 204E0605D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 23:05:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2C1105C5B15;
 Mon,  5 May 2025 23:03:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A595C4CEEE;
 Mon,  5 May 2025 23:05:34 +0000 (UTC)
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
Date: Mon,  5 May 2025 18:56:06 -0400
Message-Id: <20250505225634.2688578-266-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505225634.2688578-1-sashal@kernel.org>
References: <20250505225634.2688578-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.89
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746486336;
 bh=vR9UdQFD1o/mCj7FtwHmH7swjhDzZpe9g0jGy7hXCWU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ccgp1oNumI6wO05JNkLvYj874GJgHlAf/pwB2zJLElEG14GO0P4w30nUO6zapLbj0
 Ak3L0vNntqoMrgmoMvCwlWqMBzmHhAOFrIBnS3QFgCVNg6lnY4vD2J8Jun5wKxB/pH
 OIc/XRWfx02f402kbrJGerqroRvzO+5tea/rUv/miw6rWxUJEE0AHDuelWGNfUcV3d
 ZFnPcKVl56mgGn4awkbk7w5rYZQlB7esHNTmaWz/MtQ9V91LAQgDVQKGuvZ0CLH+/p
 Yv80HNOdC9oCSodkUyjmS64q9nsz8DuhHOQ+kKknaiH5prPIYrOQbmnOP49Ag6LuUz
 aWYaAa88vX4Bg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ccgp1oNu
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.6 266/294] ice: count combined
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
index 39b5f24be7e4f..dd58b2372dc0c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3329,8 +3329,7 @@ static u32 ice_get_combined_cnt(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, q_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
-		if (q_vector->rx.rx_ring && q_vector->tx.tx_ring)
-			combined++;
+		combined += min(q_vector->num_ring_tx, q_vector->num_ring_rx);
 	}
 
 	return combined;
-- 
2.39.5

