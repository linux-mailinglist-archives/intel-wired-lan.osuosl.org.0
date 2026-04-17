Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBavOueK4mlq7AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 21:32:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8D241E4C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 21:32:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF05281E7F;
	Fri, 17 Apr 2026 19:32:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SXjaTO11uSIN; Fri, 17 Apr 2026 19:32:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1586181E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776454372;
	bh=utRh9a/0NCmRtfIj6BOI/Rq8q2GQK8NiHIflVF64Njg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yn39QNn1T4QAyWZBrRe5SU2jHkVg8hgdIMp0AY+PjUa/ZVDETIHSNJ5l2Lw5l4A1o
	 EVCwmb1aj7c91DkyiBM3LqEttXCMFa55fmYmigifcVT8mYbSufn6syusq/823nDyk4
	 a3olYAndE02VsVOkDWOrwyLAReDUiaQsKTDvthWUE2hw1mm9hLuOLRLi+By4q44Y9W
	 544viSJswD/i6nEJFkbTno0b4icGfh6JyYcJkH0DCsZD1wSNqHITIYD6llsR+hcY4l
	 FWVHv6fJfshz+/s1nTwhsibZBPYGqIu9iIL6wieNer/41zGzHJnVBJCzvaQ/yl8kSU
	 46BhnJNuXSq8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1586181E7A;
	Fri, 17 Apr 2026 19:32:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94BA0396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 19:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A984401D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 19:32:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hEkgOPXeVFby for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 19:32:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7BE7A401A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BE7A401A3
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BE7A401A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 19:32:48 +0000 (UTC)
Received: from x1 (232.154.13.160.dy.iij4u.or.jp [160.13.154.232])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 63HJWP8H050705
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 18 Apr 2026 04:32:25 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Simon Horman <horms@kernel.org>, Kohei Enju <kohei@enjuk.jp>
Date: Sat, 18 Apr 2026 04:31:47 +0900
Message-ID: <20260417193223.291093-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=utRh9a/0NCmRtfIj6BOI/Rq8q2GQK8NiHIflVF64Njg=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1776454346; v=1;
 b=hpWy3WiY26fADuZq5uUSEyPSMfsdSz+YfQpbGg+nu0GQvgdU9a8i5yATXT5+7Sti
 vXYkG9goZq1WxFIQfLL39D+h0ohQYHhP5ea1bi6RGxxYIknU8Mt8al32nYCKe5A8
 IhkgEJpcnOlqpGVtndQBgZ0S3oNs9U891/wDzeWYFW5V4yK+PyRc4BY125cSCd19
 vKyv0CNiK/4AxFiNZl6riRnkoykjhnPMtqY1XW2K2vNCWXv4X82xO086qToFTxVl
 uva0t2K3+aKIWcFscwLvRXQa+9Av2JdCKN7/qC6DlIlUSvx/HtWLNiJzPH2Gxse5
 /76+vHNneHwS6ls9GnYLEA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=hpWy3WiY
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: set tx buffer type for
 SMD frames
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,enjuk.jp:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: AE8D241E4C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sashiko pointed out that igc_fpe_init_smd_frame() initializes
igc_tx_buffer fields for an SMD skb, but does not set the buffer type:
https://sashiko.dev/#/patchset/20260415025226.114115-1-kohei%40enjuk.jp

Since igc_tx_buffer entries are reused, a stale XDP or XSK type can
remain and make TX completion use the wrong cleanup path.

Set the buffer type to IGC_TX_BUFFER_TYPE_SKB.

Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 02dd9f0290a3..52de2bcbadbe 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -34,6 +34,7 @@ static int igc_fpe_init_smd_frame(struct igc_ring *ring,
 		return -ENOMEM;
 	}
 
+	buffer->type = IGC_TX_BUFFER_TYPE_SKB;
 	buffer->skb = skb;
 	buffer->protocol = 0;
 	buffer->bytecount = skb->len;
-- 
2.53.0

