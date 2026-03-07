Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKJMFmNurGmxpgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 19:28:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5870222D3B3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 19:28:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D1618315C;
	Sat,  7 Mar 2026 18:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bNd0QzlLhxag; Sat,  7 Mar 2026 18:28:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4BB383AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772908124;
	bh=xw4m4OYj1kiX/5z7U5EmezmMROr17D8a2T9m4a8VOEY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oMb1+5PfUPiE+19qNH+NGUhhJauvvv+zJ6sVvdMU27kXm4gwNpxLcLFjA+ToDm44e
	 VC/mS5jhXg2HCpNic1QfKKdqbIknfN6V7ZjpZnMCiFvv4c5W8iR1lB+3cXN+XNycWu
	 8Opi9GF0GcrF3WOcB5JumelQvZgL1nS6GY/VOrsW5BrNG6E+AHo5Za3vztx0XOTe2G
	 Tzl3Pw4zyuFUuZ67p5EK8dmXsIJEUv3bPreyySKHjNhxFAzPkp9Wy+F1c9hveSwA7w
	 N+FQPs5Uz/+KhiU7dvGJqAUUZI2rNa1jLucvpMzaQMSPQ7I0pfOFtt9qHfZQeFJEBE
	 cq4spSgkXkwtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4BB383AE8;
	Sat,  7 Mar 2026 18:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01643223
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 18:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E730440453
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 18:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id je-d8fXbq-yq for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2026 18:28:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFD144044B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFD144044B
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFD144044B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 18:28:41 +0000 (UTC)
Received: from ms-a2 (79.25.31.150.dy.iij4u.or.jp [150.31.25.79])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 627IS9o2043132
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 8 Mar 2026 03:28:09 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Sat,  7 Mar 2026 18:27:37 +0000
Message-ID: <20260307182808.155027-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=xw4m4OYj1kiX/5z7U5EmezmMROr17D8a2T9m4a8VOEY=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1772908090; v=1;
 b=ZmXtY5L4guy2PE3b7i0o8VcNXrDqgH0/Nbtbw6cj3XLFZPLCR4p6nP56Mv2ofxzM
 hRUnu3qCjhpjcB5SDTawK1ckoWGX9k/tlndBlO3/io0gvxK/usyejZagTpO+1FUU
 1O1pE6kqGzr1xPhCouV0f7GNZYYn+7xSdmICcDPPYM66DuEruXqma/IzNrapvw9r
 8JXX6fiTVvF9JhomYbDsid2M7X8d4zBcGhZTfkGyeXiFnbsP/Y6IquF6aN+enM3t
 99eH2q0M1t7kdgMpmVB2TSm8k9xxHxTAQ3MFEOpDuy93PgPQv6e7R/5ahaI2tJbg
 Xz7aUIbNOsux0/63RTCO2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=ZmXtY5L4
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/2] igc: enable build_skb path
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
X-Rspamd-Queue-Id: 5870222D3B3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

This series enables the build_skb RX path in igc, which is currently not
enabled in any configuration.

Patch 1/2 adds missing RX hardware timestamp handling in the build_skb
path.
Patch 2/2 enables the build_skb path when XDP is inactive and other
conditions are met.

Tested on Intel Corporation Ethernet Controller I226-V (rev 04).

Kohei Enju (2):
  igc: set RX hardware timestamps in igc_build_skb()
  igc: enable build_skb on the non-XDP small-frame RX path

 drivers/net/ethernet/intel/igc/igc.h      |  4 ++++
 drivers/net/ethernet/intel/igc/igc_main.c | 22 +++++++++++++++++-----
 2 files changed, 21 insertions(+), 5 deletions(-)

-- 
2.51.0

