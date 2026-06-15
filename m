Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /yAYMgYqMGoqPQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:36:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA8B6886F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:36:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=o7BiFDD9;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=none
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55A3940A78;
	Mon, 15 Jun 2026 16:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n9asKxQftLp4; Mon, 15 Jun 2026 16:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6DD740A6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781541378;
	bh=cvAw1dsEWiSRXIXzLCtyB3OxbKLq8//WuTTzMwNXLh4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o7BiFDD97yxku8K6w1zkuMe8gauI4gNPPbPFzNm/j/ZDWK7KJKYecTuadeuvDGpfs
	 aRm0begCKqB0rdXjwmqdaax2qQ1pq1Z2zqxDzkk6C5vmKzuxnRyqffpEJjejPNSVKE
	 M2bOSxl36qz2iYsYTEYTXihotn2na6/JFcyltRnojpROsJgXTgOT07AWqnogtmbdTt
	 QdUiGJoeqxcpw69cO+VY5ETqtlen9qXCmmzGDTyETn9mvJJcYNzxKlh9+SvCe+ChAM
	 8IvU1xtactZ5SM/amulyqhKaTithRhArMLxZRiZsfPI/vpVTa1c1xU2vYTcYoRW2WF
	 9S3/dw9+1tgSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6DD740A6B;
	Mon, 15 Jun 2026 16:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 21D62DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 14:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 164D560F72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 14:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id smTru1QF0ofz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 14:05:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=doruk@0sec.ai; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 086B960E70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 086B960E70
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 086B960E70
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 14:05:36 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-490ae94a89eso30333825e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 07:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781532335; x=1782137135;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cvAw1dsEWiSRXIXzLCtyB3OxbKLq8//WuTTzMwNXLh4=;
 b=XQG4gGhcqJIiwp2S1KayLToaQ5LEyAJARZoeIYAGuRCFfVHGMAtTEx9Nj4I5wUmphr
 OyXIs2oN8XEyxJe1huY30OGi5AMCXobsMtJ+3WhMDZtwUl60Y+q6heV4T/5MaHs7nBar
 gOEe/23f8ynErhMbhM1S0yWeJQ2cCEmALeaulcPAFgk2b2mtxHQPiaFoMFVx6TJV3QGO
 3KIn6TdADjvvJPQcEUMB0z0bd5289fVe73pn3I5c3qTqRJnv0I4NkETZg8j6A//kPKtE
 2Eota9P4CkqA2sgtv4OjSxHQJjewEK0gXHU+DCIvRYtAYsitr4H4+B7E3SvVL0jYRNUt
 u18w==
X-Forwarded-Encrypted: i=1;
 AFNElJ/OjqESsmGVyDdBov6b1GZOuuD+VzF8Y3f8GClVN9w1Gk6q4foJYq0mw7fbXB1RSgzZJKjVqwKvk5H/7AwEFec=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwJ4FXQb6wBof8hHDVunwO59VV7OZSUcwCryBTpVqQvwjBjzHfa
 oddQnYP20bKZ1ahmVk/EiaOgtDQCmSr10Wgrvi4kjo/7xikKAHM1QVAsHx2X9OiwhbJG
X-Gm-Gg: Acq92OFOGNp1IoUUpn1GmO68kInIjTBUGIgSVHPzzSIi2kqq9nuzTPk8N/7VTZT/clQ
 96RZbJM06eRNNDTqwcBo6K4a4HEJorisSE79z7ByUJllmJSLbTJ7Ik0Cm7D2pZCVtIw8V13oq40
 lz3Uegf6hrS/A93EICSO4A1eXM2iXT+cl0AMDZFr8GGrCgc9vjDSRHTtUj8270RJVc+864Dthfg
 6RPXDP46I189fJRG2S9M9V2tFIx5Ul/C1wqw0bq8h4h1XIIFUcxfjApZ13EYoFctY4v991NGN+B
 x+EzNKbXg+nZ9Vs/GGyU1/cAyQYT6YPj+R7Ry4bWl3ViynTETfUkLM8Xv/JRtglZYRmNZAFnAgW
 lxl27zOpKeA+iWsF2jUp9edi9fK9t7WYulRe64ydBeb0OpEdqSOoaxFpijYuuElJ6Xp1dSyMu5E
 of3T+UleSFLu3pBXUxNwXHvOnl2BWWDB0jRaGGaFKyxnFCd/JDq++vO3mUpdiOn4peRxmxXDlY9
 4YDBOs5RQSTUidTpMMzjQVRnmcDIHzV5OZvfcnnwiD3Fw==
X-Received: by 2002:a05:600c:47d3:b0:490:d354:bcf4 with SMTP id
 5b1f17b1804b1-492200e2409mr89495105e9.27.1781532334628; 
 Mon, 15 Jun 2026 07:05:34 -0700 (PDT)
Received: from PeakBook-Mini.tail8e484.ts.net ([178.197.218.209])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4606f2c4240sm32087268f8f.27.2026.06.15.07.05.33
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Mon, 15 Jun 2026 07:05:34 -0700 (PDT)
From: Doruk Tan Ozturk <doruk@0sec.ai>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: piotr.raczynski@intel.com, michal.swiatkowski@linux.intel.com,
 wojciech.drewek@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Doruk Tan Ozturk <doruk@0sec.ai>, stable@vger.kernel.org
Date: Mon, 15 Jun 2026 16:05:32 +0200
Message-ID: <20260615140532.52676-1-doruk@0sec.ai>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 15 Jun 2026 16:36:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=0sec.ai; s=google; t=1781532335; x=1782137135; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=cvAw1dsEWiSRXIXzLCtyB3OxbKLq8//WuTTzMwNXLh4=;
 b=kRehCaCQLmXpulJta3DX/xGEnNA1H7/EM6Uiw3a+gQ2SGCDzcmgHk41U5fUaPkJuQt
 8zNAkonz9sndc/QI6OpyGlylhAK2MVgCX/Ueja2h9wbfbDepdMgAgdI6y1mUORQ36JPs
 d8TIJ/PsA3E1sSn315QH5g2PL7Kg/ToW0vTiMwyC5xMgnduTj4+5oykDVfuA+LAn4S8h
 wnRP2iL88a8R/2sSHdJwrkhSI0FbCQNzkbjhOnLm8TaGYdL7pAICrcZPGi6MQDgzVcLA
 xNC2Q/gxMEMc/c1cSPMdR+2YyTxdr/+oRsnjvLORShEbA3WJnpaT7Ee0BxQJQLzsOG9M
 DCVA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=0sec.ai
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=temperror header.d=0sec.ai header.i=@0sec.ai header.a=rsa-sha256
 header.s=google header.b=kRehCaCQ
Subject: [Intel-wired-lan] [PATCH net] ice: eswitch: fix use-after-free of
 metadata_dst in repr release
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.raczynski@intel.com,m:michal.swiatkowski@linux.intel.com,m:wojciech.drewek@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:doruk@0sec.ai,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[0sec.ai];
	FORGED_SENDER(0.00)[doruk@0sec.ai,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[doruk@0sec.ai,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4EA8B6886F6

ice_eswitch_release_repr() frees the port representor metadata_dst via
metadata_dst_free(), which directly kfree()s the object and ignores the
dst_entry refcount. The eswitch slow-path TX routine
ice_eswitch_port_start_xmit() takes a reference on this dst with
dst_hold() and attaches it to the skb via skb_dst_set(). If such an skb
is still in flight (e.g. queued in a qdisc) when the representor is torn
down, the metadata_dst is freed while the skb still points at it. When
the skb is later freed, dst_release() operates on already-freed memory.

Replace metadata_dst_free() with dst_release() so the metadata_dst is
freed only after the last reference is dropped. The dst subsystem frees
metadata_dst objects from dst_destroy() once the refcount reaches zero
(DST_METADATA is set by metadata_dst_alloc()).

Same class of bug and fix as commit c32b26aaa2f9 ("netfilter:
nft_tunnel: fix use-after-free on object destroy").

Fixes: fff292b47ac1 ("ice: add VF representors one by one")
Cc: stable@vger.kernel.org
Signed-off-by: Doruk Tan Ozturk <doruk@0sec.ai>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 2e4f0969035f..41b30a7ca4a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -95,7 +95,7 @@ ice_eswitch_release_repr(struct ice_pf *pf, struct ice_repr *repr)
 		return;
 
 	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
-	metadata_dst_free(repr->dst);
+	dst_release(&repr->dst->dst);
 	repr->dst = NULL;
 	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 				       ICE_FWD_TO_VSI);
-- 
2.43.0

