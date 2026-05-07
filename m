Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKmzA29L/GmZNwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 10:21:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 158814E4ACE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 10:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8008260FFA;
	Thu,  7 May 2026 08:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYd0ZQx8LZ09; Thu,  7 May 2026 08:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C78B660FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778142058;
	bh=mJBkbfJFzQCIRYlNql39OtSvKB6hYmWjwAtfWQkO89o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pGE8xAW9R99r+LLV1WwhHM5QT0ez424uPlxSr+N9gtVbL7gAu+gxzVnvhR7AhT7Os
	 X8u/rGLBp79J38F8oEnPG8vJo68VGV2vPvQvsVGsUq/MadsNuN5ogXF+O7bUYexJ4O
	 b39ITiiqr4fNxXdn/sjR5WE1ccW3IkXzPr/LK73hcCrCro40LkmLkKRMOoeVDejEZo
	 FaDjZ+K5bwHMcGeM5WEEal/YMziBtvLwU++8xr5sUUH+Aitnbc0UG2Bi9V4/UrXkuu
	 GoYlYgVHrfJ8crbjvHca/7f4+8dx2eViR37jhLcc+wgoS3s9zheasR/X6s2Q2TF44I
	 oZEge6uviGNnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C78B660FF7;
	Thu,  7 May 2026 08:20:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 51522280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 08:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E95483A41
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 08:20:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkuLA0IcsbxV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 08:20:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 32F2183A08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32F2183A08
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32F2183A08
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 08:20:55 +0000 (UTC)
X-CSE-ConnectionGUID: noEb/9kSShmrGMoETishSg==
X-CSE-MsgGUID: xkhXaMnqQ36q+u0saip3vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="79195482"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79195482"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 01:20:55 -0700
X-CSE-ConnectionGUID: Chid+uljQye2m9hbixrtTg==
X-CSE-MsgGUID: WGCoWU2rQ9KCy5x/wg+CMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="241379129"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa005.fm.intel.com with ESMTP; 07 May 2026 01:20:52 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2026 10:16:53 +0200
Message-Id: <20260507081653.1717172-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778142056; x=1809678056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xvtPRT9MCdePBI34IJ/ECAcSUUPQ6pENCScaz1ZCrHc=;
 b=L8uHPYtGYIGfVDWlAGC9KOgl8MWcCKa20xJLJDqqBAKY5iP0gYviJxRq
 JIKW7dHJ0UduSVKuZ0ZN8FzS3pWZlk5TQugNOw0ssNWUvazNzanXzgBqj
 jwj8Y97J5hOu5v761KuF4a0AiVxJXhrnF30XMkdnQmSSxs64qGHgrmAIj
 umTwB2OpySU4LeklHu/26Ri+WP51o8kkcdid+QNxsl/0DNpOhMUqz2xYI
 kvzKKmTVjJLi7MLh7xUo1c8i812kvk2c4H7IKT2nST0Ix9gSp+F9eQUdT
 K7o6sXVnqjc7VWJjQkcEauIVX2Hze+DIwyESQ5nzDeyBv6JahzcLCQDnC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L8uHPYtG
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: restore PTP Rx timestamp
 config after ethtool set-channels
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, andrew+netdev@lunn.ch,
 edumazet@google.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 158814E4ACE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,intel.com,lunn.ch,google.com,kernel.org,redhat.com,davemloft.net];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

When ethtool -L changes queue counts, ice_vsi_recfg_qs() closes and
rebuilds the VSI, reallocating Rx rings. The newly allocated rings have
ptp_rx cleared, so RX hardware timestamps are no longer attached to skb
until hwtstamp configuration is applied again.

Restore timestamp mode after ice_vsi_open() in the queue reconfiguration
path, matching reset/rebuild behavior and ensuring newly rebuilt Rx rings
have PTP RX timestamping re-enabled.

Testing hints:
- run ptp4l application in client synchronization mode:
	 ptp4l -i ethX -m -s
- run PTP traffic
- change queue number on ethX netdev interface:
	ethtool -L ethX combined new_queue_size
- observe ptp4l output
- expected result: no "received DELAY_REQ without timestamp" messages

Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 79f2906eda99..b87accaf7d14 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4110,6 +4110,12 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 	}
 	ice_pf_dcb_recfg(pf, locked);
 	ice_vsi_open(vsi);
+	/* Rx rings are reallocated during VSI rebuild and lose their ptp_rx
+	 * flag. Restore timestamp mode so newly allocated rings are set up
+	 * for hardware Rx timestamping.
+	 */
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
+		ice_ptp_restore_timestamp_mode(pf);
 	goto done;
 
 rebuild_err:

base-commit: f0cfdedb42fe64b06fd048bd490ef835beeda658
-- 
2.39.3

