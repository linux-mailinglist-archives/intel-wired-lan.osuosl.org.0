Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPXxHEowxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:22:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CA83404E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:22:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A53AD83C2E;
	Fri, 27 Mar 2026 07:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YnKhRBfxnh3D; Fri, 27 Mar 2026 07:22:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7042B827A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596163;
	bh=7v7NqtYmpPrzyKPz6naWJbEbQNCsdNtvajscYqEjy9E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wRuO9YdxHY3K2ZfT+WndD2LnE0OsDZvAv0ndLtMnRU+rz3r5/Jf5rsiLY1R14bm85
	 31dlHCbd82TItGCahP0oIAozuOceuzNgKPUCO8o3GOVWNpJDaQZ/k40Kzo3XQGrU7a
	 oCOO70Uhd5iVJxTdZhKK/HuGFrxdbz+G3pcT3MCkZkYIN1y/o9ke8SG7BfZWb5mt94
	 uPKdnyqOMLnmP3VRbipmhwhL82C/h61f5vX0ER8v1197Fhk4zvsT4IwUmEDR3vFl15
	 dnHWaSOeIQzGW13gfGScbGtQAowS67rqz+oPwwg2P7VgXeoYSo6w5Mv+tZtzZ19das
	 E3uiwlmzuPC1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7042B827A0;
	Fri, 27 Mar 2026 07:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 79E96249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA5F2611DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rBGnPxT1d3Ta for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:22:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D665361246
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D665361246
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D665361246
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:39 +0000 (UTC)
X-CSE-ConnectionGUID: oickt4G7QCKEMmHHGToLpw==
X-CSE-MsgGUID: 9+X8VDLySNSnUwY67EfGwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74848616"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="74848616"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:22:39 -0700
X-CSE-ConnectionGUID: SEKdx1RUQSC7x7iceut/Zw==
X-CSE-MsgGUID: YuYi9x8JS9CJl5OgN8heOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="222359409"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2026 00:22:38 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 27 Mar 2026 08:22:33 +0100
Message-ID: <20260327072236.129802-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596159; x=1806132159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mq7XlXpgn0/xs417kIPdnPDkQnQ6eNBrcIwr3oNCFVw=;
 b=eP2jfUGYyFclW6nmPNjg3vzrlUL9eDj58pdFtwH84LjEigLISYLMqD2m
 rutHw6sxWOYNpLUTtbL7uI21XvfW/P6mrPR8Kk+HnaEXMMPGWKu/9ui4C
 IHd9bnCQYx8HZB1rhWWlE3ow6KFf5KwhFz7nUP3LxNUHrgsE5dM64XV96
 auEBqZrOlVHjhgZxnRjKqPkUydlJwrtVtw3auq2vonOo+4rGrShrNVlk2
 fjtzreKWGMMPT825E35l5OWMwafOFY5q/ZRp147PuVB2Rqt/xvghfvHYz
 yc6nqSzhBxkzFdqjv5Rlf3DHeJCy9lflUAS8W5mwFs0AnKS45bG0AR3Az
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eP2jfUGY
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: do not reset MDD counters
 on VF reset
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 15CA83404E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Mark Rustad <mark.d.rustad@intel.com>

Do not clear MDD event counters on VF reset, to be consistent with
how VF statistics are not reset either. This allows accumulation of
MDD events across resets so that persistent misbehavior can be
tracked and reported more accurately.

Fixes: 12bb018c538c ("ice: Refactor VF reset")
Signed-off-by: Mark Rustad <mark.d.rustad@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 7d33f09..9bcc739 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -227,8 +227,6 @@ static void ice_vf_clear_counters(struct ice_vf *vf)
 
 	vf->num_mac = 0;
 	vf->num_mac_lldp = 0;
-	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
-	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
 }
 
 /**
-- 
2.52.0

