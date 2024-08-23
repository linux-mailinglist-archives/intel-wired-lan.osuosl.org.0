Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B6995C57D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 08:32:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC7DA81E0D;
	Fri, 23 Aug 2024 06:32:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nEaU-8hhGX66; Fri, 23 Aug 2024 06:32:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA46481E06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724394757;
	bh=iQq19mCMzjHlVz5sYuACQpPZfj10+p6o5t4TzgNeqWU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=z08U33DUsX+Sny3FMvN/wAk/BXhQ52He8ry7mfdrB79P+oJQzMgbJv05toRoU/yy7
	 12R3pRletgvRMoaj4cCramoUQnuePKpFXrVDg5ADAmHSiEsLXP71ohMyS7hXLe0GOq
	 wdNj7ZaO+NBIhKTrij4S2aofkP8s2U7E8l/xEZAKB7oeft/JmpE0AvwORELY7AJoA5
	 SYDpuh8yNOkn3rN65GYp8o+NSlA7GSR1DXv9y0h6Klvy1ZYKJUyZjJy1H6rIZacbqc
	 yUDe8WD9xFzqggVHCeq5K7pgK3Lc027LSoOOScISyEPcOUwEpACWLej+0AfpuZ9zP/
	 rEPs9Ue4LqWaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA46481E06;
	Fri, 23 Aug 2024 06:32:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5CAF1BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 06:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1B0140141
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 06:32:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SN03zRsXxzAu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 06:32:35 +0000 (UTC)
X-Greylist: delayed 532 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 23 Aug 2024 06:32:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED75740128
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED75740128
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.12.242.79;
 helo=msa.smtpout.orange.fr; envelope-from=christophe.jaillet@wanadoo.fr;
 receiver=<UNKNOWN> 
Received: from msa.smtpout.orange.fr (smtp-79.smtpout.orange.fr [80.12.242.79])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED75740128
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 06:32:33 +0000 (UTC)
Received: from fedora.home ([90.11.132.44]) by smtp.orange.fr with ESMTPA
 id hNhusyVj8iKc3hNhvseTYx; Fri, 23 Aug 2024 08:23:39 +0200
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 23 Aug 2024 08:23:39 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 23 Aug 2024 08:23:29 +0200
Message-ID: <fa4f19064be084d5e740e625dcf05805c0d71ad0.1724394169.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wanadoo.fr; s=t20230301; t=1724394219;
 bh=iQq19mCMzjHlVz5sYuACQpPZfj10+p6o5t4TzgNeqWU=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=eagAVZar1w5/qoToACyJVPmFsMnkpiUJ3nMxa0YORqPpAOGiN3NhNERMirSyTDhlu
 8zfDkP22Jkw61BF2iHWJFIHxg3a1K/yRZoXilQeP6RHzMQ0mG5W00qdJ8hOPBSxgyt
 mYaykRy4ZeLLrr1HOW7F+PkyNBdA3SOJLTm4qqBzRPFV1ZrHq4DR3aak+u0ZE7kKwY
 kyzlaHJtrmk8oRjx/5e3vrEVT0fLCFUa04ik8QQrN4L67cDTqHjJMC/Ibgib5Dhm2V
 6cp9CCa/wYtZBxEcSf9wJ+5ZT3l77r4B7ppVGNTL5di2GhmJ79acVwqy6HaIYA1gQe
 TcKlp8TmIyoGw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=wanadoo.fr
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.a=rsa-sha256
 header.s=t20230301 header.b=eagAVZar
Subject: [Intel-wired-lan] [PATCH net-next] idpf: Slightly simplify memory
 management in idpf_add_del_mac_filters()
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In idpf_add_del_mac_filters(), filters are chunked up into multiple
messages to avoid sending a control queue message buffer that is too large.

Each chunk has up to IDPF_NUM_FILTERS_PER_MSG entries. So except for the
last iteration which can be smaller, space for exactly
IDPF_NUM_FILTERS_PER_MSG entries is allocated.

There is no need to free and reallocate a smaller array just for the last
iteration.

This slightly simplifies the code and avoid an (unlikely) memory allocation
failure.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..b6f4b58e1094 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3669,12 +3669,15 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		entries_size = sizeof(struct virtchnl2_mac_addr) * num_entries;
 		buf_size = struct_size(ma_list, mac_addr_list, num_entries);
 
-		if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
-			kfree(ma_list);
+		if (!ma_list) {
 			ma_list = kzalloc(buf_size, GFP_ATOMIC);
 			if (!ma_list)
 				return -ENOMEM;
 		} else {
+			/* ma_list was allocated in the first iteration
+			 * so IDPF_NUM_FILTERS_PER_MSG entries are
+			 * available
+			 */
 			memset(ma_list, 0, buf_size);
 		}
 
-- 
2.46.0

