Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC6D8A6F0E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 16:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23F194059E;
	Tue, 16 Apr 2024 14:54:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GB_GpbKyvHT4; Tue, 16 Apr 2024 14:54:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A29740382
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713279259;
	bh=Rr9KBvQSnHanURBdPq1EhkGUqn4hQ5r/7Bl1eYx5b+E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IdulBxqR3ziiqKJ1XzauM/DFNfx60bTSRKEraD/XlX0qOqBdYhbrFKKJpfCX1nO5Q
	 AJ+XtXgvur5LILBoJh9RsFt6lYV+qScvf9swoj8OtET+nhsn2DMtbWLwKbzL1SPFm5
	 elijR3+MGToOI4ZUvLHi3eUqf/M7fkG3l3OgTqwbBif1Z2z0eN5hSy9XEAW9e1sVZo
	 98IyF2GppMoytId8R8Uo0LpGUfJ85EBKOg3tn31O7T0rUMv4vEVNZr7Wb6KMcYV13n
	 CwYEWt2okpYlqpwmLdGaExJa0yzaJEOpb3rWPKW/6ucH/C+NIlkMs0yNie32WaWMYT
	 BJEb/DGGd6ndQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A29740382;
	Tue, 16 Apr 2024 14:54:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D14691BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAE86402BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oql_F1AHtHqt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9FABF402B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FABF402B2
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FABF402B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:13 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 7784A600A7;
 Tue, 16 Apr 2024 14:43:50 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id 548EA20401F; Tue, 16 Apr 2024 14:43:31 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Apr 2024 14:43:30 +0000
Message-ID: <20240416144331.15336-1-ast@fiberby.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1713278649;
 bh=S0cQ7yy/rMu5HoKW7QjhMOhVSEsLJ1FSOL4fQV1pzxo=;
 h=From:To:Cc:Subject:Date:From;
 b=Kv5w/pgWOCU8njSkEtNSiP3cjfdDInrYbOd0HEvl15KJubDJTXyUiQA3aiNckdPCX
 GKRKtN8jCmlRjR6PgDf6x/mg1ARpj6NvVewWLj86+azOfWGm59j/p7yofTdUUwwhwD
 4cHmDoM0RZKndaRqm6E+ty9NlNvWytN9SJoKRNQ3RhuNgycEcI9pY9EuMjLtqrydjJ
 Bn6w2hV+oME2Qm2K2kRb6BkYqFptncsjVjDgB3b2SwXi3RuCw5qHKAjSwn05NMlUHC
 i2x3Dn7Rmi+QebwA8qB6RncFXhRJRkwDf62cUEfVvJoMFPEc1CyW74P+EYgTbBScAW
 PjvBYdlwBJCng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=Kv5w/pgW
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate control
 flags
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This driver currently doesn't support any control flags.

Use flow_rule_has_control_flags() to check for control flags,
such as can be set through `tc flower ... ip_flags frag`.

In case any control flags are masked, flow_rule_has_control_flags()
sets a NL extended error message, and we return -EOPNOTSUPP.

Only compile-tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 2f2fce285ecd..361abd7d7561 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -1673,6 +1673,10 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		flow_rule_match_control(rule, &match);
 
 		addr_type = match.key->addr_type;
+
+		if (flow_rule_has_control_flags(match.mask->flags,
+						fltr->extack))
+			return -EOPNOTSUPP;
 	}
 
 	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
-- 
2.43.0

