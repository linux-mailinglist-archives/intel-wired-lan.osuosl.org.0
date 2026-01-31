Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hinuLauYfWlOSwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 06:52:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5A5C0E54
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 06:52:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF52483C32;
	Sat, 31 Jan 2026 05:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oYq-PqDnDnhU; Sat, 31 Jan 2026 05:52:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 632F483C40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769838758;
	bh=xO5u1w/PoOqt9Bxrx68ChpMRljK+9IjUpKK1sLmtqlU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HeIJ4a7tlrkZXTnrtXKNdSCxiiu+IZxVcWMkUxZBg9Xscb46pSh9t9QeizV6Z0Fye
	 dmtWkzuDVRHvD+GmsZGmvogNVA5hHhwjgMWTDJUgdqHpewJxW17pEeL1miktZmJbv6
	 wSxEqZpJr8BKxP1qGmtJFawFiwMMI3qugmuTdQv1b1LoeeZ2xTY8v9bAKI7cqZkdFi
	 8VMl8pxFqdOXL7bGwA0lSUDTON+qUAvlUjII/lxpWY3hLS56ALwpsdtFKVCM7Lsx5F
	 WkzlabMjB+ypbaH5l+QTVoNxUMxaqRkJEVerYzWTJzhB6dchmQbhcGG4WVbGf63UZu
	 avKymbWpq9C3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 632F483C40;
	Sat, 31 Jan 2026 05:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5754769
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 05:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36F26407B7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 05:52:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzSiKKznHWoA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 05:52:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=159.226.251.84;
 helo=cstnet.cn; envelope-from=lihaoxiang@isrc.iscas.ac.cn; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B2E264023F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2E264023F
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2E264023F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 05:52:32 +0000 (UTC)
Received: from localhost.localdomain (unknown [36.112.3.223])
 by APP-05 (Coremail) with SMTP id zQCowAAXpgmSmH1pKjcfBw--.29939S2;
 Sat, 31 Jan 2026 13:52:19 +0800 (CST)
From: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, daniel@iogearbox.net,
 magnus.karlsson@intel.com, bjorn@kernel.org
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>,
 stable@vger.kernel.org
Date: Sat, 31 Jan 2026 13:52:17 +0800
Message-Id: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: zQCowAAXpgmSmH1pKjcfBw--.29939S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KF4xJF4DJF43uF13Aw1UZFb_yoW8Gw17pr
 4j9a95Cr1rXFW5Wa9rJF4j9an8Ja1ftry0gF4fGanY9r15ta17JF1xtFWFgFy8ZrW8Janx
 KF1DArs8CFn8J3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9014x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_Jr0_Gr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r
 4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
 n2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7x
 kEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E
 67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCw
 CI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1x
 MIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIda
 VFxhVjvjDU0xZFpf9x0JUd-B_UUUUU=
X-Originating-IP: [36.112.3.223]
X-CM-SenderInfo: 5olkt0x0ld0ww6lv2u4olvutnvoduhdfq/1tbiCRAEE2l9cjNJQwAAsR
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=isrc.iscas.ac.cn
Subject: [Intel-wired-lan] [PATCH v2] i40e: add an error handling path in
 i40e_xsk_pool_enable()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:daniel@iogearbox.net,m:magnus.karlsson@intel.com,m:bjorn@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lihaoxiang@isrc.iscas.ac.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[lihaoxiang@isrc.iscas.ac.cn,intel-wired-lan-bounces@osuosl.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[isrc.iscas.ac.cn:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lihaoxiang@isrc.iscas.ac.cn,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_SPAM(0.00)[0.043];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: CB5A5C0E54
X-Rspamd-Action: no action

In i40e_xsk_pool_enable(), add an error handling path to
prevent potential memory leaks.

Fixes: 1742b3d52869 ("xsk: i40e: ice: ixgbe: mlx5: Pass buffer pool to driver instead of umem")
Cc: stable@vger.kernel.org
Signed-off-by: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
---
Changes in v2:
- Add a Fixes tag. Thanks, Paul!
- Replace unmap with i40e_xsk_pool_disable() to prevent
a limbo state of queues. Thanks, Maciej! 
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 9f47388eaba5..a72a309540c3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -108,23 +108,26 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
 	if (if_running) {
 		err = i40e_queue_pair_disable(vsi, qid);
 		if (err)
-			return err;
+			goto err_out;
 
 		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
 		if (err)
-			return err;
+			goto err_out;
 
 		err = i40e_queue_pair_enable(vsi, qid);
 		if (err)
-			return err;
+			goto err_out;
 
 		/* Kick start the NAPI context so that receiving will start */
 		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
 		if (err)
-			return err;
+			goto err_out;
 	}
 
 	return 0;
+
+err_out:
+	i40e_xsk_pool_disable(vsi, qid);
 }
 
 /**
-- 
2.25.1

