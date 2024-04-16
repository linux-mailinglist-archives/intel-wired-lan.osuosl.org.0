Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D87D18A6F0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 16:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 002E34054E;
	Tue, 16 Apr 2024 14:54:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtcbIiHGWAxF; Tue, 16 Apr 2024 14:54:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47830402DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713279263;
	bh=eOfZsyxDeMjeMyinriV+eH2B/8x0Mi5MmOyIj4Z+Ij8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AJVvUdhr4gJmXcbsd5K4fqU2K9K+6GYnk1ABHwEqSD2QxN1+6s6uf9n+epHHxkHPB
	 /f8RMYQ922FlMMhQrcxwoGWFS1IJmNSubnMbj9vHg4ubQxVBSYsCr3mOcAfRxyoAI4
	 RcwXEQhucwBQIOXCtXQo/Xzo+pOOWJOSY4Hn6H0BYaUx9w0LEuuZ9KrNPB1yCEP9Fn
	 pmmfBVTceklajwZdjDlVXZIK3Iw3RGe2X1XLknCoTlmruogT1/BrPk8x33lHID/AlI
	 TonLS/oR0rcaV3dyIH0K4SAL6X3n2cHoY5YeYL6/zpnmx+XNanBHyV0nBB8yyqH9B5
	 y8lv/U1roAcRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47830402DD;
	Tue, 16 Apr 2024 14:54:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D4201BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E91F8402DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jfKhvGb9aota for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9FA0C4027F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FA0C4027F
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FA0C4027F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:13 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 74A76600A5;
 Tue, 16 Apr 2024 14:43:50 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id 8CFE32061E5; Tue, 16 Apr 2024 14:43:35 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Apr 2024 14:43:35 +0000
Message-ID: <20240416144335.15353-1-ast@fiberby.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1713278649;
 bh=o4ZOIcqpBZ2ScPAygv+rbNYIAA7PYEWjMlaH8XOvMJM=;
 h=From:To:Cc:Subject:Date:From;
 b=Ktc/mFMgo9hWpkLij6VpxVjtIpbb8Uz3yFZYMrAoUnaEMbxj6GSqFFT5zhwsjO5i8
 hZmsrUY1cb/rgAtajaLi0nRSWfJgmx+S4Bo4lyE+7Ayk6fqoxFmFuBFHEGgGMrkwcB
 5R/4uShxm7EcZLAzfedAF35xvctIBXUDILxejDOx2qRYKCw9YD4kJDI/KihKVyx5L7
 935YtTvCoD3pNs5FmKlsBbzV6iI5iwd+dAEvphsXCzDLWbBSLAY9A2JJDVVDQYQoa5
 a2fOloVEhEUvNE5ldQNofWfWxH+DphjGebSkiwCTbgwI5jjRfW93BUQIcGCojKCyD3
 TJ5Xc20wJu/ng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=Ktc/mFMg
Subject: [Intel-wired-lan] [PATCH iwl-next] igb: flower: validate control
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

Use flow_rule_match_has_control_flags() to check for control flags,
such as can be set through `tc flower ... ip_flags frag`.

In case any control flags are masked, flow_rule_match_has_control_flags()
sets a NL extended error message, and we return -EOPNOTSUPP.

Only compile-tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 74a998fcaa6f..e4c65d3819d7 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2597,6 +2597,9 @@ static int igb_parse_cls_flower(struct igb_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
+	if (flow_rule_match_has_control_flags(rule, extack))
+		return -EOPNOTSUPP;
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
 		struct flow_match_eth_addrs match;
 
-- 
2.43.0

