Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 398C9A381BA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A78F360D88;
	Mon, 17 Feb 2025 11:31:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EJ-FrThUVQdQ; Mon, 17 Feb 2025 11:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1443960D9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739791897;
	bh=fgl1FMMF39J553DH0zGtOZJgZzZjk2b79cKwl3uaRjM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hsa/4h0/ljUN14O88+Gi5w35sMpXuo28Odwhse8Xsd6oGAZEMg9VtTS4TRNIvffdv
	 CaJF69+HIbsXvpTjQCnvoRN5IrBCbh2V99gyUKNA0377ASaVIDOgWUGcNaloBu3eX1
	 IpYugHCxuO2VUPKC7863AdoUDE9iHMadtlmoNvIVF88Bxb3jDWbt9sF6xUZscEzsdM
	 UgLCO6Xs+aD2pRKiiJxL69RE159oLbGAHIonvbUUdafr9r4ZUHB6Ojwsqmx1slcM+p
	 iUjmprUrIlEW6OT5iYiovnRUdy/fq657vO8num+4ZMVfi5L+rX4CCKI4Wy6sUPHStI
	 Wq69t0Xm7RCKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1443960D9C;
	Mon, 17 Feb 2025 11:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EA22DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EACDB4061E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id skiW6nu1kDhy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:31:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00CC4404C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00CC4404C4
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00CC4404C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:32 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 17 Feb 2025 12:31:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-igb_irq-v2-3-4cb502049ac2@linutronix.de>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1036; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=FN5nzazODH8aG0JG9be7ppb8sj14zK7rOLmT/meFlbE=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnsx4PufkwRmlz+ht+1rekjU4bU1xmjG5NQOvel
 YirMIH1BeOJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7MeDwAKCRDBk9HyqkZz
 gjufEACpCNcjX084537zxJtaUdqOdfdoYC+0nGVlpH0xdABtRGgwte/PaXmxgsbQim7QwTizr7y
 8d1Xo0cZADwNR6QjXMix8LGlMSh4nD3VamFCHuMVrBI/rSO/S3DgRZWkrwNr6xzIMuPno61lmnm
 D9mrlY9Ph4oh1fk5OUb64Oqfo7xvR2DQQfR6xTazsdXGSeXYa2TWropzi0F4Mq8zLd/0peVCC0v
 Uwy8/4dXon9AcbHrzS56kXdwmFW93YobxpjeHxBV/ocFkw7VQ9ze0gCwfPrMKEjZQdcBj+ChOQ0
 iObUIub+H8tc08wrfLpUUhpS2mWmBre8VBmL35MZE+tXBeL7x/V0Az57aC0et1Wg7jIyu2XiFub
 kIe9580VVOFUpNjeWKzGCBMNFRVbCiv751SKpy0z4VnvugM0Pd0Xi8pQsxhtSbnwxk4Ns5e7dPQ
 abYEt+ayr2f+zbsb+6laTNBV2+itw8KZYvy5go5j+v1yrrWpYmlH9SejP9kEK0z4qoGC53fUuEa
 GjbIYTXwIvu4xmJnUYsosGnDc3U8wkb4VnMNvvhYehU3ntR3n4dKGl87uwbmcXMQ9BnmVGzpbQK
 qHRZzTFqxiujfToRtf9/cgaepQvegre7iXYH9rrQTdTtBEIcz+lBSPNFWQ4k/dwzWqjnNwwmyxI
 K8fnNRrkSBYmJ0Q==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739791891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fgl1FMMF39J553DH0zGtOZJgZzZjk2b79cKwl3uaRjM=;
 b=xTQP0jOT3FAFIUVFRYY0tov/5nPsqyVAP65LfWtYzb+3+arWVY5Aq4924ApXm5oCfupZ8c
 30tkhWVg1Q0VUnodVG0ZfazuvL6UzXlfVqqgneg8eg9DAOLkUsHSdF8EPPeqvSe/L/y9KK
 d+gkrt0iyGg5z62ftRDFoYl01yBjKBDFWK/WW23yBtmph8XbE6Nd3Nicz6J0s/riHmLwXe
 4ZwP6x1u4BdJwNIBnE4RnhuOgYpUJLATehCEynF3KWx5TydhwPRkf/zb8qVgdPc/vJGksI
 b42L0CFeghYdS6IohxRfIr/PVmLr1T/q8nnHfxOW4MzZ9NN5EKFnq4mtlGqzzg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739791891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fgl1FMMF39J553DH0zGtOZJgZzZjk2b79cKwl3uaRjM=;
 b=rzDO0377lbDyzgm2gQraeTTuKmRETs1/tY2jbveowCFSFLFGIAxLXh8XkPuKsFs+MelHe1
 p5DfIHpK2q4YGKCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=xTQP0jOT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=rzDO0377
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: Add support for
 persistent NAPI config
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

Use netif_napi_add_config() to assign persistent per-NAPI config.

This is useful for preserving NAPI settings when changing queue counts or
for user space programs using SO_INCOMING_NAPI_ID.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 6870803a42455aa1d31f39beb027cf282064388f..054376d648da883f35d1dee5f879487b8adfd540 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1197,7 +1197,8 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 		return -ENOMEM;
 
 	/* initialize NAPI */
-	netif_napi_add(adapter->netdev, &q_vector->napi, igb_poll);
+	netif_napi_add_config(adapter->netdev, &q_vector->napi, igb_poll,
+			      v_idx);
 
 	/* tie q_vector and adapter together */
 	adapter->q_vector[v_idx] = q_vector;

-- 
2.39.5

