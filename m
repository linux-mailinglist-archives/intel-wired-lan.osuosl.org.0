Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6DC901737
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 19:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E429607C3;
	Sun,  9 Jun 2024 17:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6dQAIWq7WrU; Sun,  9 Jun 2024 17:35:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80F89607B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717954502;
	bh=V1/mrV0OLTZEoLH8j5C9ZOG/w12mYx1bUJ0ZOXwp62w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V16TBjLCm0K5q9LksYyUqKMjflYlQh0zlsP+RIdje1cIspbLiOe7CqBD1IArRrwn1
	 u2aFA7/pHDspZfzVBePc0jGGZ29aoda5BJFBop4MA9UvmymIymQmL+eqyFJ8cCY+BO
	 KXXFoWWKafdtgO88W2vdyTlKD5GkdDXe0B3MYcWzT647jCf82KFhz82phkzbNPPIsW
	 34mIZ8Do2sukSl3zPJD7IIlbk4eKATIVmI0VXPDkaPtFv7sBStjH5vO0d7RZokFRhF
	 GNVsfiD2CMmMv9ErZWRv64FXm2lEodQevrAf7iDcKMOeGs1lpU8OHzxW1ad0/QyEqQ
	 PyILl0DKto1GA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80F89607B6;
	Sun,  9 Jun 2024 17:35:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AB311BF870
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2720B40297
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xM_q8Op70mIz for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F16D3404F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F16D3404F3
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F16D3404F3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:56 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 0B942600DC;
 Sun,  9 Jun 2024 17:34:35 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id 2D227204695; Sun, 09 Jun 2024 17:34:31 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: netdev@vger.kernel.org
Date: Sun,  9 Jun 2024 17:33:55 +0000
Message-ID: <20240609173358.193178-6-ast@fiberby.net>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
References: <20240609173358.193178-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1717954494;
 bh=ZDyN6Vf+52VBTThrkt6kfLAKDIBCA/WrvNpGqsChE9o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fyPN2pAjzXZRM/MlyRtHzCD15pnXfj/ao/uVpN1HhdM1z900W9DGQ/YlUM98+reJc
 fdWBFXzsXYYkk9i3s+TxGzJOY1kE3yRx25Er6W/g8EMpZDXii5fWJdlT85RgH3Dh9X
 BqIzlwaf0T02nIePnnuJzx7F3aLoZtK8sv38IZmBR9C1pLhyj1BqvnURatxHt7cdSN
 h41YWCRZl0gp1Kxpr1y5F1OloHCyxAJyC7Mu82Ez4B9Fucc0epw1D5MwfFJGhi6c7T
 fi+c7whaMwimgMKPAiP/w5wlkoj8wuyjMbWbtPLqKCxWRnlswfKPTJR3308q2Wxuhm
 0Dl0NHsrTJFRQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=fiberby.net header.i=@fiberby.net
 header.a=rsa-sha256 header.s=202008 header.b=fyPN2pAj
Subject: [Intel-wired-lan] [PATCH net-next 5/5] ice: flower: validate
 encapsulation control flags
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
Cc: Louis Peens <louis.peens@corigine.com>,
 Davide Caratti <dcaratti@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 linux-net-drivers@amd.com, intel-wired-lan@lists.osuosl.org,
 oss-drivers@corigine.com, i.maximets@ovn.org, Tariq Toukan <tariqt@nvidia.com>,
 linux-kernel@vger.kernel.org, Edward Cree <ecree.xilinx@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>,
 Martin Habets <habetsm.xilinx@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Encapsulation control flags are currently not used anywhere,
so all flags are currently unsupported by all drivers.

This patch adds validation of this assumption, so that
encapsulation flags may be used in the future.

In case any encapsulation control flags are masked,
flow_rule_match_has_enc_control_flags() sets a NL extended
error message, and we return -EOPNOTSUPP.

Only compile tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 8bd24b33f3a67..e6923f8121a99 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -1353,6 +1353,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		      struct ice_tc_flower_fltr *fltr)
 {
 	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
+	struct netlink_ext_ack *extack = fltr->extack;
 	struct flow_match_control enc_control;
 
 	fltr->tunnel_type = ice_tc_tun_get_type(dev);
@@ -1373,6 +1374,9 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 
 	flow_rule_match_enc_control(rule, &enc_control);
 
+	if (flow_rule_has_enc_control_flags(enc_control.mask->flags, extack))
+		return -EOPNOTSUPP;
+
 	if (enc_control.key->addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
 		struct flow_match_ipv4_addrs match;
 
-- 
2.45.1

