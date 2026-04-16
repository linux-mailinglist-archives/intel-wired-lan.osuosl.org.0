Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMM1MZ/K4GmFmAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 13:40:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DACDF40D864
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 13:40:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 200C56070D;
	Thu, 16 Apr 2026 11:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wbmXQob-P-Wn; Thu, 16 Apr 2026 11:40:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57445606ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776339612;
	bh=gPELNDldpf97R0KV4JjuN3zxWJ7Io8gIfV7XUJjMv6c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=okXjwryrvQo0RMXrO4SK/N+T+Bs+H+h0b4ZweTlwqW0YqtiG+MYVNgiYVOASqFtrI
	 bYwyUUDVftGJbw3ayw0QIX1YGhlu6hI9XZj2QbTWB8zrWdUoE+7YvwGxnPNWoIp1JM
	 TS0MMRZ2HGdSl8LDEkG1gyNSZmaZeFFFCq8xhhllIA9Hy5pAhO1p+uMivlNRmzalvH
	 gr8BcQvj3MTXLkmcGrSNiR3K+iuV4XnVC68TDhgt0Vp8rm68S4MV8b7mNVII1mpaUu
	 /bNdFm8bQZFhM6Nk1KV5hvxgCoFHfDtspmKHCNHW/6lI3RaqC8Zqe0Ue+tSfGHe3+J
	 8Vtqu1DmYiEsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57445606ED;
	Thu, 16 Apr 2026 11:40:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E961775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8527940360
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:40:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqu7GNF3SilL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 11:40:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F3EB4034C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F3EB4034C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F3EB4034C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:40:08 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630-SaU8kfhZPKeGf_IKr-5oAA-1; Thu,
 16 Apr 2026 07:40:04 -0400
X-MC-Unique: SaU8kfhZPKeGf_IKr-5oAA-1
X-Mimecast-MFC-AGG-ID: SaU8kfhZPKeGf_IKr-5oAA_1776339602
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 54BAA1800473; Thu, 16 Apr 2026 11:40:01 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.76])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id AAAA21800577; Thu, 16 Apr 2026 11:39:55 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 16 Apr 2026 13:39:50 +0200
Message-ID: <20260416113952.389405-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: 4l4qzXt8WsBzmOPrtDtMg-oVVo9pOGmLo5_yUcxC7mM_1776339602
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776339607;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=gPELNDldpf97R0KV4JjuN3zxWJ7Io8gIfV7XUJjMv6c=;
 b=WYLwWynJkd0uVVys4veGlwCHfizylMOufpcUofqx9CGzuZNdy+jE0vrcBeoNysl/URRPj7
 T5drQ5sT48P0byx2RTS0AM7uVs/zcURqre06OxRrAYIVummy0qVV7UVziq8/EyShuF++zu
 ufW2nHprID3EJ/HdpfDt/Ish5j8jCbw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WYLwWynJ
Subject: [Intel-wired-lan] [PATCH net v6 0/2] ice: fix missing dpll
 notifications for SW pins
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
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Rinitha S <sx.rinitha@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:jiri@resnulli.us,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:jacob.e.keller@intel.com,m:vadim.fedorenko@linux.dev,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DACDF40D864
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SMA/U.FL pin redesign never propagated dpll notifications to the
software-controlled pin wrappers.  This series fixes that by adding
peer notification for paired SMA/U.FL pins and by wrapping
dpll_pin_change_ntf() calls in the periodic work to also cover SW pins.

Patch 1 exports __dpll_pin_change_ntf() so ice can send peer
notifications from callback context where dpll_lock is already held.

Patch 2 fixes the notification gaps: periodic work HW-to-SW
propagation, SW-to-SW peer notification on PCA9575 routing changes,
and SW pin phase offset reporting.

Ivan Vecera (1):
  dpll: export __dpll_pin_change_ntf() for use under dpll_lock

Petr Oros (1):
  ice: fix missing dpll notifications for SW pins

 drivers/dpll/dpll_netlink.c               | 10 +++
 drivers/dpll/dpll_netlink.h               |  2 -
 drivers/net/ethernet/intel/ice/ice_dpll.c | 80 +++++++++++++++++++----
 include/linux/dpll.h                      |  1 +
 4 files changed, 79 insertions(+), 14 deletions(-)

---
v6:
 - fix deadlock reported by Michal Schmidt: dpll_pin_change_ntf() in
   peer notification was called with dpll_lock held, causing deadlock.
   Move the peer notification calls out of ice_dpll_sma_direction_set()
   and ice_dpll_ufl_pin_state_set() into their dpll_pin_ops callback
   wrappers, after pf->dplls.lock is released, and use
   __dpll_pin_change_ntf() because dpll_lock is still held by the dpll
   netlink layer (dpll_pin_pre_doit).
v5: https://lore.kernel.org/all/20260409102501.1447628-1-poros@redhat.com/
v4: https://lore.kernel.org/all/20260319205256.998876-1-poros@redhat.com/
v3: https://lore.kernel.org/all/20260220140700.2910174-1-poros@redhat.com/
v2: https://lore.kernel.org/all/20260219131500.2271897-1-poros@redhat.com/
v1: https://lore.kernel.org/all/20260218211414.1411163-1-poros@redhat.com/

