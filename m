Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136495F4D1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 17:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D567600C6;
	Mon, 26 Aug 2024 15:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aZotI1Vl6FRk; Mon, 26 Aug 2024 15:13:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92D5B60786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724685195;
	bh=LFldDIQ++8jqXOksKbyxggI0tviGzCPH46mPtl/Vd3g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fXjPR6MHVldkDIuCAlA6Fluv9OYekput9KN6WEzy5OizViqQ6UrIlZiDxCTuHXsMS
	 eLncFPMLBX6QKZzm0p19F4fmn1l7bEpPUVcALPTAxnsfwYWMTvDpL8StX+re9fnYZR
	 Ddh9fUjPSwe0jsMty+DG56ioTO7Nos1OjWc0LNO7AqL0it1YI6D7coKmtAVl50irRn
	 coaS+tIt8Z0xW4ZEZLthEKsKwOPbeIdfZVn9fG/FFNVxSJtdRLNETn/n6WcTFyga91
	 CXTZtcw0q1c0YGvIQ/9dHxD/hG6UhYD5yR+3OXtRzrs5djlU006B/vAUuuq3kzjcPl
	 vvl2DjciKst3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92D5B60786;
	Mon, 26 Aug 2024 15:13:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CFEF1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 08:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 685A1606B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 08:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QJlTsimtXiyY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 08:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a07:de40:b251:101:10:150:64:1; helo=smtp-out1.suse.de;
 envelope-from=tbogendoerfer@suse.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AA22F6059B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA22F6059B
Received: from smtp-out1.suse.de (smtp-out1.suse.de
 [IPv6:2a07:de40:b251:101:10:150:64:1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA22F6059B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 08:58:36 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 42FC221A35;
 Mon, 26 Aug 2024 08:58:33 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 2D5DF13724;
 Mon, 26 Aug 2024 08:58:33 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id bq/rCrlDzGa4ZQAAD6G6ig
 (envelope-from <tbogendoerfer@suse.de>); Mon, 26 Aug 2024 08:58:33 +0000
From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 26 Aug 2024 10:58:30 +0200
Message-Id: <20240826085830.28136-1-tbogendoerfer@suse.de>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_MISSING_CHARSET(0.50)[]; NEURAL_HAM_SHORT(-0.20)[-0.999];
 MIME_GOOD(-0.10)[text/plain]; RCPT_COUNT_SEVEN(0.00)[9];
 RCVD_VIA_SMTP_AUTH(0.00)[]; MIME_TRACE(0.00)[0:+];
 ARC_NA(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:email,imap1.dmz-prg2.suse.org:helo];
 RCVD_TLS_ALL(0.00)[]
X-Mailman-Approved-At: Mon, 26 Aug 2024 15:13:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724662713; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=LFldDIQ++8jqXOksKbyxggI0tviGzCPH46mPtl/Vd3g=;
 b=frkfBPTHZsCyiejxSourA01rRgmszp5221pEDKXuqtJVw0UQD66z25mbUIIQ554f7zjYes
 lr7mSvfa/JHAOrpS/R71Wzr3fkvsYpdDd3h6Aehk5AMuLgupEP6OUwOVgtcx+NWGVwG6NJ
 Duhb+LQneTkMN5nazc3crWkSlB9ieyk=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724662713;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=LFldDIQ++8jqXOksKbyxggI0tviGzCPH46mPtl/Vd3g=;
 b=NmSjRlJVH5I4tQ4N0vPSwJtZ4Xc9oYMpPzNijvLM6981De2bsnHp9mnVXlCzwdRu4qG9sY
 nP5e+DFhGLNsO8Aw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724662713; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=LFldDIQ++8jqXOksKbyxggI0tviGzCPH46mPtl/Vd3g=;
 b=frkfBPTHZsCyiejxSourA01rRgmszp5221pEDKXuqtJVw0UQD66z25mbUIIQ554f7zjYes
 lr7mSvfa/JHAOrpS/R71Wzr3fkvsYpdDd3h6Aehk5AMuLgupEP6OUwOVgtcx+NWGVwG6NJ
 Duhb+LQneTkMN5nazc3crWkSlB9ieyk=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724662713;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=LFldDIQ++8jqXOksKbyxggI0tviGzCPH46mPtl/Vd3g=;
 b=NmSjRlJVH5I4tQ4N0vPSwJtZ4Xc9oYMpPzNijvLM6981De2bsnHp9mnVXlCzwdRu4qG9sY
 nP5e+DFhGLNsO8Aw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=suse.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=frkfBPTH; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=NmSjRlJV; 
 dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=frkfBPTH; 
 dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=NmSjRlJV
X-Mailman-Original-Authentication-Results: smtp-out1.suse.de;
	none
Subject: [Intel-wired-lan] [PATCH net] ice: Fix NULL pointer access,
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

Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
---
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

