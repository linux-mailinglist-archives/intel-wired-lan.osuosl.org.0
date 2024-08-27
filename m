Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1901B9602C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 09:16:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C685D80F1C;
	Tue, 27 Aug 2024 07:16:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 41V3BXcP5tSb; Tue, 27 Aug 2024 07:16:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B264D80ED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724742974;
	bh=Valuq13x6BKJNYuKM8Olhcw2C+1XdqQL75MkmBSgmsw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TZqpm+1nF5T36N+qFs2RdLhfFn9072aUGguzJQX7gFXudI9fj4NS9yYqohqVHwLE3
	 uDn7ryzANTLRMkF5bsGgrh9N6E3C2/XkgefAMDlWp9stcrhb9TEzeiCXsLJrRIYI1a
	 Wif5PM6SEPv9H4ONn5pxK6kElT5NHNxoSWtztwpWgO/vheX3PeE+VUBotnhcWP3+vX
	 t8mDrwO+DVs4R3VcnTue1eK6u5lCi95qy8CB6J6RIv+OTcOQeP4v10f6b+7lyMrKHv
	 gYLZPX9gj/yF7hbXMOMFJs8O3hP8BEaumtuLttFNOBfBdeKGs8k+V+Qd6CYmq5NsT2
	 PG+Fca3L2NgkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B264D80ED8;
	Tue, 27 Aug 2024 07:16:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF7861BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:16:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BACE8403D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MlZv_OvKEDo0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 07:16:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a07:de40:b251:101:10:150:64:1; helo=smtp-out1.suse.de;
 envelope-from=tbogendoerfer@suse.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C1AB5403CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1AB5403CD
Received: from smtp-out1.suse.de (smtp-out1.suse.de
 [IPv6:2a07:de40:b251:101:10:150:64:1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1AB5403CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:16:07 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 4ACF421B00;
 Tue, 27 Aug 2024 07:16:04 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3417B13724;
 Tue, 27 Aug 2024 07:16:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id qhuQDDR9zWaIdgAAD6G6ig
 (envelope-from <tbogendoerfer@suse.de>); Tue, 27 Aug 2024 07:16:04 +0000
From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 27 Aug 2024 09:16:02 +0200
Message-Id: <20240827071602.66954-1-tbogendoerfer@suse.de>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4ACF421B00
X-Spamd-Result: default: False [-3.01 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_MISSING_CHARSET(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TO_DN_SOME(0.00)[]; ARC_NA(0.00)[]; MIME_TRACE(0.00)[0:+];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 FUZZY_BLOCKED(0.00)[rspamd.com]; RCVD_TLS_ALL(0.00)[];
 DKIM_TRACE(0.00)[suse.de:+]; RCVD_COUNT_TWO(0.00)[2];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:from];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 RCPT_COUNT_SEVEN(0.00)[11]; RCVD_VIA_SMTP_AUTH(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email, suse.de:dkim, suse.de:mid,
 imap1.dmz-prg2.suse.org:helo, imap1.dmz-prg2.suse.org:rdns]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724742965; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Valuq13x6BKJNYuKM8Olhcw2C+1XdqQL75MkmBSgmsw=;
 b=OT9jpMe0IsDYHG7f6vVpr6Gf+09w4SsQp2pSofrFunEvh7Dyj817wK10I+ZXk4TVV0D/AZ
 ToZNrzsTl8lIcjqElvXRUZmUtUGr+t1TlM0aJZVRSds7tmK6OuoBKheNr5S+o565hgXOk4
 tiFaluvS/6IBPcH8R+17RAYkBzvydZA=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724742965;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Valuq13x6BKJNYuKM8Olhcw2C+1XdqQL75MkmBSgmsw=;
 b=G89gdgRIYjTJYS9O3A8A68gljo/6I+oYULyfflS3wzrzJvh0XnJsiPiK9bVKgP1Jw5Hnxj
 iZU3Ly4zgt9IRMAQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724742964; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Valuq13x6BKJNYuKM8Olhcw2C+1XdqQL75MkmBSgmsw=;
 b=Bni3iWdf9MfRCrw0YvSI5pQVMxrOJwZWmnZkasxwqtPvA9NY+Ln28Do11rhU0/JJ07WHzk
 fCQT48bQi08VhtTmkvYIyNuOpFNx+UbG1YffqOveqJZvSoLp50G3iSul2AroTLW8vT4XK/
 qXYjRrwCcKLmFXxv21lyu/4UX++UloA=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724742964;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Valuq13x6BKJNYuKM8Olhcw2C+1XdqQL75MkmBSgmsw=;
 b=/dOcZIIOMQbBANkIbMXgFYrCtEvXrY/PIxR20K8ZhwJQ2JEOMcgRfCJ0LYiBE/VmBazr6Q
 CVh/3xlsAYh2lhDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=suse.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=OT9jpMe0; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=G89gdgRI; 
 dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=Bni3iWdf; 
 dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=/dOcZIIO
X-Mailman-Original-Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Bni3iWdf;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="/dOcZIIO"
Subject: [Intel-wired-lan] [PATCH v2 net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
allocated. So before accessing pf->lag a NULL pointer check is needed.

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
---
v2:
 - Added Fixes tag
v1: https://lore.kernel.org/netdev/20240826085830.28136-1-tbogendoerfer@suse.de/

 drivers/net/ethernet/intel/ice/ice_lag.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 1ccb572ce285..916a16a379a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -704,7 +704,7 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
 	lag = pf->lag;
 
 	mutex_lock(&pf->lag_mutex);
-	if (!lag->bonded)
+	if (!lag || !lag->bonded)
 		goto new_vf_unlock;
 
 	pri_port = pf->hw.port_info->lport;
-- 
2.35.3

