Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DYsqGG1JTmrcKAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 14:58:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DDB72686B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 14:58:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=moUebv+E;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DE1060E8A;
	Wed,  8 Jul 2026 12:58:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x0v5Nb391NF3; Wed,  8 Jul 2026 12:58:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C06E960E89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783515496;
	bh=BLgBgJN9EqlAOqychU5vXfjB3advBYSTj0htBbDTCPs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=moUebv+Eym5PuaVtptNU4DsZboZ4XXqbMyD0QotUKDQYnTbroigWxqS+oA4Q0NdJq
	 2JphMgK8GHGqjUT5SctGFEubHFS9DGBBb8/x0qa8UifAbY8HkFQDBpv0++XqxV4Kxy
	 ILgr50gwKmqRmCzK8Kt3qaPpYgyLK5uRtyg6gh2ochrmZ4pTojI0XPkBreuXRO8OtU
	 aIwsS/pDMhgYriQrIW51POX6+USvt1uN4+SqproiBhjC51Kl3JNIJQ3hYVmt9YChXV
	 2tQWazOb1jfUv4Uc/Lfhsipn7JaP+3FsKCNSImxudzYKP0IUQ5Wc621Cf1wd0fwciT
	 v7SeLtGXiND8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C06E960E89;
	Wed,  8 Jul 2026 12:58:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C8F1315C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 12:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C67FB81F3C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 12:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KbfiSsqW6ZcH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 12:58:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A649D81F3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A649D81F3D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A649D81F3D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 12:58:12 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-657-tnxuQ_uHPMCg4YPSlnQ5rg-1; Wed,
 08 Jul 2026 08:58:07 -0400
X-MC-Unique: tnxuQ_uHPMCg4YPSlnQ5rg-1
X-Mimecast-MFC-AGG-ID: tnxuQ_uHPMCg4YPSlnQ5rg_1783515485
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id CABC3180063A; Wed,  8 Jul 2026 12:58:04 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.48.104])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 95F981800591; Wed,  8 Jul 2026 12:57:58 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  8 Jul 2026 14:57:53 +0200
Message-ID: <20260708125755.706263-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: ZgED1Lbc0sVFfctgSR3tSsP6_aO60qfvg_AxGUgnwwg_1783515485
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1783515491;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BLgBgJN9EqlAOqychU5vXfjB3advBYSTj0htBbDTCPs=;
 b=QgV0iAs58eEBsnpJCAAaH33/bdfvudo1gBPvzF6SKs6utrYTm0mX7O+PaY4LLoY4GO7vA6
 KNnqKoBOgpqi2Ic5amrsvWKRUDJ/J/VfM7NONHzYCET6hb67j3l+qb5r7sIJfxYxwO6DVs
 sqcjrygIuvb80GPqy34+2uSWUmE0hNI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=QgV0iAs5
Subject: [Intel-wired-lan] [PATCH iwl-net v4 0/2] ice: fix DFLT Rx rule
 handling for promisc and switchdev
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
Cc: Ivan Vecera <ivecera@redhat.com>, Alice Michael <alice.michael@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:martyna.szapar-mudlaw@linux.intel.com,m:andrew+netdev@lunn.ch,m:marcin.szycik@linux.intel.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21DDB72686B

Two fixes for the uplink default VSI Rx rule (DFLT) on E810 when the
netdev is in IFF_PROMISC.

Patch 1 drops the redundant per-VLAN promisc expansion that exhausts
the FLU pool on a wide VLAN trunk across several PFs.

Patch 2 keeps the DFLT Rx rule across a switchdev teardown instead of
clobbering the promisc state the operator asked for.

Changes since v3 (review comments from Marcin Szycik):
- Patch 1: reworded the ice_clear_promisc() and the per-VID cleanup
  comments, and flipped the ice_vsi_clear_vlan_mc_promisc() guard to an
  early return (noting the clear is best-effort). No functional change.
- Patch 2: no change, added Marcin's and Aleksandr's Reviewed-by.

Link to v3:
https://lore.kernel.org/all/20260701133601.2118382-1-poros@redhat.com/

Link to v2:
https://lore.kernel.org/all/20260622113428.2565255-1-poros@redhat.com/

Link to v1:
https://lore.kernel.org/all/cover.1781786935.git.poros@redhat.com/

Petr Oros (2):
  ice: skip per-VLAN promisc rules when default VSI Rx rule is set
  ice: preserve uplink DFLT Rx rule on switchdev release

 drivers/net/ethernet/intel/ice/ice_eswitch.c |  18 ++-
 drivers/net/ethernet/intel/ice/ice_main.c    | 109 +++++++++++++++----
 2 files changed, 102 insertions(+), 25 deletions(-)

-- 
2.54.0

