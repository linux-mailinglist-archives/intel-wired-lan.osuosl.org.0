Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CCD8A6F0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 16:54:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EDF340556;
	Tue, 16 Apr 2024 14:54:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ceaoGsWnjONE; Tue, 16 Apr 2024 14:54:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C3434027F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713279257;
	bh=yWPju8bFKzHPmEvi9VdCj/VzG3eSDCsEdTAMlP9wmho=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qhGMW6qJOSVXk765zCzYnkWdylabCRvw2rgTwBozRWTFiWty4zYJV2jNxTf6I18pq
	 qApryqDWm1RY5FB3buHCIFjp4dxdxA6+tPRgzj3jZk0FLgp0DAz4x/AwKqZc5L5svP
	 V6fZPU7ZDReeCFF+aOGQZ9+am9r/wQxUdrrueawQx/XuBsQhisgC1cuf+uzyt/Wv9o
	 RQa1GPLTI+yPZxWMVfH0bo6DSOTbMzu0nyc39hFjmPXsEndw+AdLSAcYfEkyS/RYzq
	 7wWEBEDZt5hafOqIcsBmF+1YYBcHaOKeduWL9g2f0pfI/wuyhd0+5U7IcbFuoxZPWA
	 FO1I3pDSUSktA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C3434027F;
	Tue, 16 Apr 2024 14:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A65ED1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9EC38605BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1jTOuAxY8KNh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F6A7605AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F6A7605AC
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F6A7605AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:13 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id C7327600AF;
 Tue, 16 Apr 2024 14:43:50 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id 3185F203455; Tue, 16 Apr 2024 14:43:27 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Apr 2024 14:43:25 +0000
Message-ID: <20240416144325.15319-1-ast@fiberby.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1713278649;
 bh=5BwHBYqxMFeIngfy155cTEhlu7ALrPnplvMVvaMfee0=;
 h=From:To:Cc:Subject:Date:From;
 b=Xgb85BgKLWsdRhM36K3eRzcf4c9sMeZX5xgUX0gQUPqGHoy2FUs/6nFwcqiQwx/0e
 izTYlD7ipM+2kp9dWZfiJfbhUlIc1N8Ec26EjadQUwcNQVp3uAG+Hg97/Qm/Wg1+xb
 BLURF7GjjF7V2qn7U/8HD93L3sVmancpYp1/AtXCWpPj4w/4GF+1RIIjYs//9yRtFS
 TlqqtjUwS5HcmYgKCzetYA5plB3rj4D7lMMRQeS1wi3JMtnsTkh1KORyiR2DIAHnY0
 oJ8evaBerEj6DPiis11bO/+rIYju6KBSWG9XEX4i9Di83kGkUEpEM9o9y6RXkT/5ri
 7JsOZ3Nnt/hUA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=Xgb85BgK
Subject: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate control
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
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 13361a780ece..f14355d52f47 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3757,6 +3757,10 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 
 		flow_rule_match_control(rule, &match);
 		addr_type = match.key->addr_type;
+
+		if (flow_rule_has_control_flags(match.mask->flags,
+						f->common.extack))
+			return -EOPNOTSUPP;
 	}
 
 	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
-- 
2.43.0

