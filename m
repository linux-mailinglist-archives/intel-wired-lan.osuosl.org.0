Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JFUA5I8yWkMwQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2026 16:52:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AB635280A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2026 16:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8CEA40BCC;
	Sun, 29 Mar 2026 14:51:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xIJnE8movNfa; Sun, 29 Mar 2026 14:51:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 319B040BF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774795918;
	bh=gjOV5C00kY76/U1S/KKA1vjIbODY8S7kc+xpGzqxKak=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yWQfsUJPIhUOht3op5OyC942j2z5tel7xEEa0m2MIyK0OrGg6WQI+RO8wSrUhackh
	 YU/FHiVHb3aciGZ6U2aBfLehHlSR2VNsu7Sojb/AkKD0cS+H7f//nwdd6NXCyD3oSb
	 NC6ryAMfIkcKDJxjlkgcRmKrR/lUYNQ3hDJh0XPtdAxXO527uRc1kupekpdnLaMJod
	 BZmI6rbMmba8cSe62wgQ8CQIvIvjXVc6uTZz0TVGtjTVCvJ0q5BgEvrGjCQvIhOBAg
	 VOOLUhykWSvLCW+gcjyaUfQNcNTolBb4TzULqb61P/+GnVOiLHpImEnf5t3RmjkJ4x
	 KXAHBrAMnkNkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 319B040BF3;
	Sun, 29 Mar 2026 14:51:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 506F010F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 14:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 429B540BEE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 14:51:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmfp1NmDmYRS for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Mar 2026 14:51:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 449AE40BCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 449AE40BCC
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 449AE40BCC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 14:51:55 +0000 (UTC)
Received: from ms-a2 (69.51.30.125.dy.iij4u.or.jp [125.30.51.69])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62TEpO7F031324
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 29 Mar 2026 23:51:24 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kohei Enju <kohei@enjuk.jp>
Date: Sun, 29 Mar 2026 14:50:49 +0000
Message-ID: <20260329145122.126040-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=gjOV5C00kY76/U1S/KKA1vjIbODY8S7kc+xpGzqxKak=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1774795884; v=1;
 b=peKiOgFjTsQzG/E0esMgKXrrC0Q7IK5/gZjL48SrxeGbuVZJ072Mg1SOZKb1+XoF
 gJCaB1IBifsQIsYBPYhiRHemSDzi6idHYDSo36YpQ9qd8aa7/MS4hGDvL5c53l2E
 Hq4n1e1Dt9S+IGyLagaTTSAr6hw2JZBimeZRLcwXlkLo4IYEWBRyxr0wdtAEs93K
 CLJXlC5i7I/UQE2DjNZtVTpqmp3KCcnM4AyfMoJgIJAvFDrVWdcumu7km5jHuRGc
 CyITnQfBOYwK/LGRRYHMHu8sbpEc+m5SN32fLFAuu4qCcQWiyZxeOCXPAYZ5yVoB
 rQpWVa8X0JX0y/btsz9Z+Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=peKiOgFj
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix potential skb leak in
 igc_fpe_xmit_smd_frame()
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
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,enjuk.jp:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E9AB635280A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When igc_fpe_init_tx_descriptor() fails, no one takes care of an
allocated skb, leaking it. [1]

Use dev_kfree_skb_any() on failure.
Also call igc_flush_tx_descriptors() only on success.

[1]
unreferenced object 0xffff88813aee1b40 (size 224):
  comm "softirq", pid 0, jiffies 4294709256
[...]
  backtrace (crc dee31384):
    kmem_cache_alloc_node_noprof+0x54f/0x640
    __alloc_skb+0xd9/0x5b0
    igc_fpe_xmit_smd_frame.isra.0+0xad/0x510
    igc_fpe_send_mpacket+0x32/0x80
[...]

Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 8a110145bfee..eaa274248d54 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -109,10 +109,14 @@ static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
 	__netif_tx_lock(nq, cpu);
 
 	err = igc_fpe_init_tx_descriptor(ring, skb, type);
-	igc_flush_tx_descriptors(ring);
+	if (!err)
+		igc_flush_tx_descriptors(ring);
 
 	__netif_tx_unlock(nq);
 
+	if (err)
+		dev_kfree_skb_any(skb);
+
 	return err;
 }
 
-- 
2.51.0

