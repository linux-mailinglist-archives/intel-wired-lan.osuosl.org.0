Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOpBNJbet2mcWAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 11:42:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B8F298119
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 11:42:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0962A82057;
	Mon, 16 Mar 2026 10:42:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tsmywOeOyWBK; Mon, 16 Mar 2026 10:42:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7267E82143
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773657747;
	bh=iwCjK/8BbuVWkdj/Kq+vjZgwo9eNY1olqWaI6BrfiNo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1BpOo8mAmk0u4BA142qCvVfUCFO6wqT19q85AZ5lGmXmYU9sEGNgxwAXGnO6Jwnan
	 2DkqF5Nv2I3IlD0Rj/EprJ3Tw6JTzb1TPFLm6Ih1GDCQQId8HGSUHLM/HV5k5umqkY
	 DoNxauoqPqmryzfrH8WoLlgqDhMqL+TjtjstPo+WEvSFSFbyqnat0lh5o0t9lezXxt
	 chk06U7iQJx6Uxv6oS9vTkOZmHtRatH5M5u2eiZvpmU6QYDyVFqczuPGDk0IkXzInY
	 EeCgVCVfA1PWPfNLD+eOFmyf8oCuUbx4DoOUY3JKb7IDVATTgSCSjSMVixWauHccN1
	 1cEoZkAWWs9lQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7267E82143;
	Mon, 16 Mar 2026 10:42:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 39309D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ABBB60DEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:42:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CRYFjmaCxSEl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 10:42:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C34AB60E3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C34AB60E3E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C34AB60E3E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:42:23 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-438-bDlMZFYfOuW7prj0v2ZDtg-1; Mon,
 16 Mar 2026 06:42:17 -0400
X-MC-Unique: bDlMZFYfOuW7prj0v2ZDtg-1
X-Mimecast-MFC-AGG-ID: bDlMZFYfOuW7prj0v2ZDtg_1773657736
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0A148195609D; Mon, 16 Mar 2026 10:42:16 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.45.224.235])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E6E57180035F; Mon, 16 Mar 2026 10:42:11 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 16 Mar 2026 11:42:05 +0100
Message-ID: <20260316104209.1285962-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: oyBIhUHUVLORk1XeX9BQr2KQs7umv1e4vBsLty5s598_1773657736
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773657742;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iwCjK/8BbuVWkdj/Kq+vjZgwo9eNY1olqWaI6BrfiNo=;
 b=LEB2qqXgxV3bfHVmd4hzzasFV4urt14oOsC3L8GSBNPg2BhNmfVpg6ZKRQtaI+ud5rqOah
 kE+/M97wwFJ14xVfPzH5LUoKdUrLMVB11a/sCJj8VVfPifdqzbUINNUDp3I7M2bdZYglIC
 oWoMsq57IIZFZFM+cCnirSXNO8Mi2GM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=LEB2qqXg
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] iavf: fix VLAN filter state
 machine races
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 49B8F298119
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The iavf VLAN filter state machine has several design issues that lead
to race conditions between userspace add/del calls and the watchdog
task's virtchnl processing.  Filters can get lost or leak HW resources,
especially during interface down/up cycles and namespace moves.

The root problems:

1) On interface down, all VLAN filters are sent as DEL to PF and
   re-added on interface up.  This is unnecessary and creates multiple
   race windows (details below).

2) The DELETE path immediately frees the filter struct after sending
   the DEL message, without waiting for PF confirmation.  If the PF
   rejects the DEL, the filter remains in HW but the driver lost its
   tracking structure.  Race conditions between a pending DEL and
   add/reset operations cannot be resolved because the struct is gone.

3) VIRTCHNL_OP_ADD_VLAN (V1) had no success completion handler, so
   filters stayed in IS_NEW state permanently.


Why removing VLAN filters on down/up is unnecessary:

Unlike MAC filters, which need to be re-evaluated on up because the
PF can administratively change the MAC address during down, VLAN
filters are purely user-controlled.  The PF cannot change them while
the VF is down.  When the VF goes down, VIRTCHNL_OP_DISABLE_QUEUES
stops all traffic -- VLAN filters sitting in PF HW are harmless
because no packets flow through the disabled queues.

Compare with other filter types in iavf_down():
- MAC filters: only the current MAC is removed (it gets re-read from
  PF on up in case it was administratively changed)
- Cloud filters: left as-is across down/up
- FDIR filters: left as-is across down/up

VLAN filters were the only type going through a full DEL+ADD cycle,
and this caused real problems:

- With spoofcheck enabled, the PF activates TX VLAN anti-spoof on
  the first non-zero VLAN ADD.  During the re-add phase after up,
  the filter list is transiently incomplete -- traffic for VLANs not
  yet re-added gets dropped by anti-spoof.

- Rapid down/up can overlap with pending DEL messages.  The old code
  used DISABLE/INACTIVE states to track this, but the DISABLE state
  could overwrite a concurrent REMOVE from userspace, causing the
  filter to be restored instead of deleted.

- Namespace moves trigger implicit ndo_vlan_rx_kill_vid() calls
  concurrent with the down/up sequence.  The DEL from the namespace
  teardown races with the DISABLE from iavf_down(), and the filter
  can end up leaked in num_vlan_filters with no associated netdev.

After reset, VF-configured VLAN filters are properly re-added via
the VIRTCHNL_OP_GET_VF_RESOURCES / GET_OFFLOAD_VLAN_V2_CAPS response
handlers, which unconditionally set all filters to ADD state.  This
path is unaffected by these changes.


This series addresses all three issues:

Patch 1 renames IS_NEW to ADDING for clarity.

Patch 2 removes the DISABLE/INACTIVE state machinery so VLAN filters
stay ACTIVE across down/up cycles.  This is the core behavioral
change -- VLAN filters are no longer sent as DEL to PF on interface
down, and iavf_restore_filters() is removed since there is nothing
to restore.

Patch 3 adds a REMOVING state to make the DELETE path symmetric with
ADD -- filters are only freed after PF confirms the deletion.  If the
PF rejects the DEL, the filter reverts to ACTIVE instead of being
lost.

Patch 4 hardens the remaining race windows: adds V1 ADD success
handler and prevents redundant DEL on filters already in REMOVING
state.

Petr Oros (4):
  iavf: rename IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
  iavf: stop removing VLAN filters from PF on interface down
  iavf: wait for PF confirmation before removing VLAN filters
  iavf: harden VLAN filter state machine race handling

 drivers/net/ethernet/intel/iavf/iavf.h        |  9 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 53 ++++---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 76 +++++++++----------
 3 files changed, 54 insertions(+), 84 deletions(-)

-- 
2.52.0

