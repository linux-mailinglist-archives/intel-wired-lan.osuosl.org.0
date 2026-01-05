Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 353B3CF218D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 07:47:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A45A607AB;
	Mon,  5 Jan 2026 06:47:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qv-jPiVfUczR; Mon,  5 Jan 2026 06:47:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 853DE60877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767595661;
	bh=mjAQnRT+AxzqanaejE5B0HLUFAhnUu0WbGuSKAysFj0=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=bfhyea3kH/eXiUQEZVBdrKUj2LOrtClUVudR/kTBzY+RLHbimgHKITlbcc5WYp9Eu
	 SPrRUOe4mLzZgOT5dMYd/hDw0hKpuFHiyFnxCnja+nYAFtANK0r4nC2uLamPdcI8v9
	 3uewXCtf1ZWGiyeDJT6R3aseTaSlifsgVUYYk0Zu7Y2YGeAbng2NkQsmmNyjrABAxL
	 oBDRhrTXE93QOlVo3OwdtW2Tzi1zIPReQExTLTuKzRQmOYL9U3KKph3QGjVLh/1nlU
	 h1A4oYHb+2lnnfef1fBl5qVu4Pg614BPlwtXkoOjNNcY2YbzZd2iH5r2OonvPqcYEh
	 M/L4PNAFq/Iug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 853DE60877;
	Mon,  5 Jan 2026 06:47:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E6F1B249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 06:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D971580C78
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 06:47:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wawXawhySPq2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 06:47:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::54a; helo=mail-pg1-x54a.google.com;
 envelope-from=3il5baqykdwcivvsspnvvnsl.jvtpu0ls-3pylk-shuspz0z.vz1vzs.vyn@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 314DF80C61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 314DF80C61
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 314DF80C61
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 06:47:39 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id
 41be03b00d2f7-be8c77ecc63so21311871a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 04 Jan 2026 22:47:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767595658; x=1768200458;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mjAQnRT+AxzqanaejE5B0HLUFAhnUu0WbGuSKAysFj0=;
 b=NX1hYky+DNMT/sODL3UtliuWyRNWmNFP76ZzdiMp0qc7s6eQ+yrnuoqVQRvKCVSj+o
 k8uv6bQIg79oZSGNrH4Hh9BvIwOEEhYYIIRn0N4uCGMGj2Ak3DifqlV0I0d6pQ7gkHTw
 fqw0UR3zGUlNNhuWP6XUZNxO1rQzbtfh0AoURoBVa/+6ptNyf7K5wktOdSeWg9HGzdnM
 uQyIbGfF7dIZd2pj8MQOvdRm0YfN+LLNZt+P3zt94nI6wY+jQSxf+CQtNE7aq+zftUn0
 pWyhzB+L8GSYtMXURMO6VoEgFpSEVLMJzCeev1QHi+X73XqeqXGpv9vodavTqHSj1g7X
 BNKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxgec2trW1BkkVYpIcLh8k39Wym2c3X4TI8LumHj7tvt37PkFddwDLS/w1qFDjlEkvaee557RxgteUOE6EHZI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwhJeSe4ZEju5QrbX2wc+BEP8OjMpeZ7BWen3r+H2Abkx8FvZQX
 vGhdD47b12jWg5MDdLRkmkk0IzjyxquG0WMqFnIkFDkbOa/yloFSSW5PlyCGzfRD3oo9OedNZ4N
 kJfNJyQ==
X-Google-Smtp-Source: AGHT+IGecM3V1/67Gd3XVwwfB7BDjB6Zhr/zQO+BcKcQf4wP5oFodn945+Se44z7byhEdWZJPiihQV1BfV4=
X-Received: from dybnj41.prod.google.com
 ([2002:a05:7300:d0a9:b0:2ac:3545:743c])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:693c:240b:b0:2a4:3593:c7d9
 with SMTP id 5a478bee46e88-2b05ec34963mr39421255eec.25.1767595658236; Sun, 04
 Jan 2026 22:47:38 -0800 (PST)
Date: Mon,  5 Jan 2026 06:47:28 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20260105064729.800308-1-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 emil.s.tantilov@intel.com, Li Li <boolli@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767595658; x=1768200458; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=mjAQnRT+AxzqanaejE5B0HLUFAhnUu0WbGuSKAysFj0=;
 b=Lg8YkR1DezjudSZ0QoISm4BU/acrP0wPN4jGBzjHycABWi+RTci2x/fQrGgDEBEmbs
 NTCnoV1pjhaaCrO1dULP0/bdEyaKLA1PbYgPzoKfUKXxM610RpVihFhMExdCDBKfba43
 pxoG0Ax2ZQuf9BJnRDlYZTOLGkwi4sLyZywMFW1b2+BMEcg/Bgquox7qCyWkQNk6qEBD
 JRDBLeGk66QverdPke75znM8TvqGc7kFIr4Fxlv1K9Fu241srx2+4iNqE1JUSj1IwHAg
 ro4fMbqhGNaEJYOt4aNG8F9XhfF8sG/0/4uuHrSk0W+WgPIZGz7b6xXEXXUDPQ9kcqbt
 u5UQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=Lg8YkR1D
Subject: [Intel-wired-lan] [PATCH v2] idpf: increment completion queue
 next_to_clean in sw marker wait routine
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, in idpf_wait_for_sw_marker_completion(), when an
IDPF_TXD_COMPLT_SW_MARKER packet is found, the routine breaks out of
the for loop and does not increment the next_to_clean counter. This
causes the subsequent NAPI polls to run into the same
IDPF_TXD_COMPLT_SW_MARKER packet again and print out the following:

    [   23.261341] idpf 0000:05:00.0 eth1: Unknown TX completion type: 5

Instead, we should increment next_to_clean regardless when an
IDPF_TXD_COMPLT_SW_MARKER packet is found.

Tested: with the patch applied, we do not see the errors above from NAPI
polls anymore.

Signed-off-by: Li Li <boolli@google.com>
---
Changes in v2:
 - Initialize idpf_tx_queue *target to NULL to suppress the "'target'
   uninitialized when 'if' statement is true warning".

 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 69bab7187e541..452d0a9e83a4f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2326,7 +2326,7 @@ void idpf_wait_for_sw_marker_completion(const struct idpf_tx_queue *txq)
 
 	do {
 		struct idpf_splitq_4b_tx_compl_desc *tx_desc;
-		struct idpf_tx_queue *target;
+		struct idpf_tx_queue *target = NULL;
 		u32 ctype_gen, id;
 
 		tx_desc = flow ? &complq->comp[ntc].common :
@@ -2346,14 +2346,14 @@ void idpf_wait_for_sw_marker_completion(const struct idpf_tx_queue *txq)
 		target = complq->txq_grp->txqs[id];
 
 		idpf_queue_clear(SW_MARKER, target);
-		if (target == txq)
-			break;
 
 next:
 		if (unlikely(++ntc == complq->desc_count)) {
 			ntc = 0;
 			gen_flag = !gen_flag;
 		}
+		if (target == txq)
+			break;
 	} while (time_before(jiffies, timeout));
 
 	idpf_queue_assign(GEN_CHK, complq, gen_flag);
-- 
2.52.0.351.gbe84eed79e-goog

