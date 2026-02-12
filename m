Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIi/MgCHjWkZ3wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 08:53:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAE812B092
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 08:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB1B341D28;
	Thu, 12 Feb 2026 07:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qfehq4Wn6s5F; Thu, 12 Feb 2026 07:53:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56AB441D24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770882811;
	bh=l0/e9zeYXG8z/u3O4hC/oU1DdGHJKYlimLvsT/jtTTU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nZzHzSeWBIfDykHLYWqizdk3HR7dNVV/wWo57ZRDCRPsl9EY9HTd7/ta+stlmRdNk
	 45YxTk1ZXqbkxj4JsZiQOZrh24/prDBTxlKFJEJHLXDmc5p+70QU2nevE3ZabtTdwB
	 gKjGYdewfddnYZPkaHyjFP5E1ZopRljciqYAEMJZxTHKAF53ylyCMrQ+SX98QGnHOO
	 JveQTt2lHKgyaP7MXrIk9Bwo8C0bvMLTmxUAC8pElvX+aiGwfLRU+p3D2H214juC9h
	 pnpMZ/s3tllJm52p9mG6wN/wprvu6EGNsMFnd3Ti61aaGavU0Mndi72ZBhpw9Inbo8
	 tioBXiaDwn6nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56AB441D24;
	Thu, 12 Feb 2026 07:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2537123D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 07:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13E0384255
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 07:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HD22PHm60GJx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 07:53:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 046E281111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 046E281111
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 046E281111
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 07:53:26 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-324-h8SiWTshP5Wb4tDvq4HgUA-1; Thu,
 12 Feb 2026 02:53:22 -0500
X-MC-Unique: h8SiWTshP5Wb4tDvq4HgUA-1
X-Mimecast-MFC-AGG-ID: h8SiWTshP5Wb4tDvq4HgUA_1770882800
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id BC7B71955D88; Thu, 12 Feb 2026 07:53:19 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.184])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4EF281956095; Thu, 12 Feb 2026 07:53:15 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 12 Feb 2026 08:53:09 +0100
Message-ID: <cover.1770882260.git.poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: od2Jf-Bi8UCjgbp8TqjjjPcM4EpeiNTFhM61JBkoHjs_1770882800
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770882805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=l0/e9zeYXG8z/u3O4hC/oU1DdGHJKYlimLvsT/jtTTU=;
 b=UWp0sjje5uXoE45nnBvBFQiqVPapgAEJrzfC1WwqZGcSkVxfFxXHc/bi62S/BgXZSO6Ooa
 lmISSwHKoZjBQITmaMTHBZDXk3xiUgZJ5GtNrRNglMUj12J6smjsqrt6qdpVbzPwq+LnUn
 9TrjrPWzIZ6VTEymfJNao8Ifp/wYkEA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=UWp0sjje
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] ice: fix representor stats in
 switchdev mode
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:wojciech.drewek@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 8FAE812B092
X-Rspamd-Action: no action

Port representor statistics in switchdev mode are completely broken due
to two independent bugs:

1) ice_repr_ready_vf() has inverted logic — it returns "not ready" when
   the VF is actually ready, causing all ethtool and ndo_get_stats64
   callbacks to bail out early.

2) Even with the readiness check fixed, ice_update_vsi_stats() always
   returns early for VF VSIs because ICE_VSI_DOWN is permanently set.
   The stats counters are never updated from hardware.

Patch 1 fixes the inverted readiness check.
Patch 2 switches to ice_update_eth_stats() which reads the GLV_*
hardware counters directly, matching what ice_get_vf_stats() already
does for VF stats in legacy mode.

Petr Oros (2):
  ice: fix inverted ready check for VF representors
  ice: use ice_update_eth_stats() for representor stats

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 +++++++++++---
 drivers/net/ethernet/intel/ice/ice_repr.c    |  5 +++--
 2 files changed, 14 insertions(+), 5 deletions(-)

--
2.52.0

