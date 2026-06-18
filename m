Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ++zpHacFNGpOLQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 16:50:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8545D6A1053
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 16:50:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=90kQrjxX;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=none
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 200A1410BB;
	Thu, 18 Jun 2026 14:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 044XltKhpSwY; Thu, 18 Jun 2026 14:50:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 949F1410C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781794211;
	bh=FGgWyECjMo0A+7T5xX6MZZ8UBQzM1ZYjMx5fmvyGYBI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=90kQrjxXJZMd0x+YZnTdI9JDEWPdrRIKl+KZpLpainFNiwTaQq6IFJ+n6cRww2jbJ
	 F6TXJ3832por35jnS0hxg8+Tjyq3rvX3R6zGOFbH74hz+YpgK4koZ7RAIcHplQ/Zlu
	 lF+QySdzWLrAjopG37SeYav1su1czB2ed6TMuL7q4HPYUkqbxLuRIt8cn92aOgT6B7
	 ylQpw7j6CUMMNtVv+dAeTp9fGm6b5T5mgmla0IbdZkNq2Ew167kSTAmermV9QlSr1C
	 xi7epyIu4sO1+S4iewI4KQdMnlsuKjbt9Q419znr6VIto5Z2I6JSZO3z4dJ+cj1Ss2
	 FBDXZicrvH8wA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 949F1410C1;
	Thu, 18 Jun 2026 14:50:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7336E131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 14:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6515182F41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 14:50:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ta_peoDpjx8z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 14:50:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42e; helo=mail-wr1-x42e.google.com;
 envelope-from=doruk@0sec.ai; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6884F82F40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6884F82F40
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6884F82F40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 14:50:08 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-46255b269c2so766175f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:50:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781794206; x=1782399006;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FGgWyECjMo0A+7T5xX6MZZ8UBQzM1ZYjMx5fmvyGYBI=;
 b=eXhFgycBkGx5GnBKKQg63f3ZnJgFwVv7xXQnp17vL4M0BmhFJTf8xkhHeUGHPHnBIQ
 tlL6jpGmLX5WrtlEe+zm6/KdJ/xcrrLQR1h44mxLCIpAH2jdVutuIAgYj4w4hnBN2cTH
 T7TGl6DrZE2qLmQyST31P9Z4UhplOuivVnnOnnVYS9lk5Bu6CZBzRNE5bVJjPHLs3+Wk
 8TjfK6WSVskrKYmmFzBEhgV8u/8BdvL3WnZLaUsAxTJX9drV1DXFUbnXq4XUHwiIwC3y
 leaCdEO1b/Q/37IECuWriG8YkBGPjjPx8ZR1d2A7ZotfCvCsouRolkx6Itl8Co+CLYK0
 4lxg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8jV5IBCOYB24A/3RfrLRIswIgC7vu8wJc96kpKfEAafaSPXK2QZj63+iYJkyPZVYboHIjMYhvDHO0FbV7X+40=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzcp7ZJYGw2HcDBtaw0vp3RP1tZQ2c0B9f7ZMLsFHOzP7l+/hva
 Zk0ZTX7P9SHj6wPGeMDcAojIrI53ow7B/2Zo9VOxjkr9qKWqZKk5FDfWyrf/9ac6x2YS
X-Gm-Gg: AfdE7cl4EWnWgxPUHmwrZnj+AdndodSC0cV8K/3kZu5eudybAZs2ima+C6peAu2CL7d
 XoNTKJ+0i7m5WtJBtrl0XG2aX6C46PYMGZZL/HelBBn0bCN8U3KTPA2xqNKeA1ANZyjXmLEW5tS
 DOD8sl3gZhHtbNel/dl/ndgO6jOWX61dmAmjazoaPQMfdL79B81nKYbmwxTnJSffV9azb2ODvyR
 VY1IhZwEJKW3L9lOu6YophEv26/7F5w+hU9tUggCSDuOBVbvLYdJwqXcIlIh6+0hL6XqhPoJh5a
 qonRcdP2npWH0o2+VwGZtI2YAi/aa2PGD2vqpEZFZK7L/MwQRiT5x+IjeHVXwEfJ5yGQtsZbTKn
 gTMS5LBAS5b3PXIkBzv846hwBPWgMLaLM0SDyAfVEQ1RfoKZ7HSNsgynEwnwDEEKp9Ot/erUaGQ
 kbIi+9w51s88knbFjxYq8Nos8i4GSck62c0h+NCeHG2wGvhGgmNVjzdTXdIl+r6ziX0wCtJzcJB
 S1I2sg046eipzYTKfFRkU4wqYTDXMs2YyI=
X-Received: by 2002:a5d:5f87:0:b0:45d:3cb0:5ab1 with SMTP id
 ffacd0b85a97d-463ad9ade76mr6300952f8f.38.1781794205917; 
 Thu, 18 Jun 2026 07:50:05 -0700 (PDT)
Received: from PeakBook-Mini.tail8e484.ts.net ([178.197.218.209])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4606f2e592csm66701717f8f.36.2026.06.18.07.50.04
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 18 Jun 2026 07:50:05 -0700 (PDT)
From: Doruk Tan Ozturk <doruk@0sec.ai>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, horms@kernel.org
Date: Thu, 18 Jun 2026 16:50:03 +0200
Message-ID: <20260618145003.47471-1-doruk@0sec.ai>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=0sec.ai; s=google; t=1781794206; x=1782399006; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FGgWyECjMo0A+7T5xX6MZZ8UBQzM1ZYjMx5fmvyGYBI=;
 b=s1cXEk2OUug5YvFV5lHsG5ybvBPDZwt3NUha821gcq8tyK/Kk6aXEmCk5WwE1hfcRK
 ZiDClpr5kE/ni48oVPzX6pvSYrGOt79yVnDGw9lGg0gn38I045sTwT5DimN2XUCtZGRh
 TWeVfvXUy1tYz+sx5OceTCKUinsgxqfKECsmnblPn/qPklYNyzq8hTohDZyW3FpDYnDe
 YvqnW3m87hFI4h4/SYlyMvOSywLbzJkS4lbx5Ctm7Ho/x8fh8PBKrrRy4IMUY3DRQN/9
 MKOwui6gUv0LPRL+j0DEH4tBHeSnGuvB52oEDHB8YoXkT5ZxsLdxaIg8rp8P/TIZxymM
 FQ6g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=0sec.ai
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=temperror header.d=0sec.ai header.i=@0sec.ai header.a=rsa-sha256
 header.s=google header.b=s1cXEk2O
Subject: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix use-after-free
 of metadata_dst in repr release
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[0sec.ai];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[doruk@0sec.ai,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:michal.swiatkowski@linux.intel.com,m:wojciech.drewek@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:horms@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[doruk@0sec.ai,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8545D6A1053

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

Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
Cc: stable@vger.kernel.org
Signed-off-by: Doruk Tan Ozturk <doruk@0sec.ai>
Reviewed-by: Simon Horman <horms@kernel.org>
---
v2:
 - Correct the Fixes: tag to 1a1c40df2e80 ("ice: set and release
   switchdev environment"); the previously cited fff292b47ac1 only moved
   the affected code rather than introducing the unbalanced free, and the
   bug dates back to when switchdev support was added (Simon Horman).
 - Add Simon Horman's Reviewed-by. No functional change.

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
