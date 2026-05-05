Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zNM2IwF9+Wmc9AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:15:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F31FA4C6BEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9831D4091E;
	Tue,  5 May 2026 05:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijmC8pNRqvyC; Tue,  5 May 2026 05:15:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1AF040927
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777958142;
	bh=+na9m7+ac+760l7u1L/pwZtPpJfOwh2z27ZW4BFo5Z0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9A24jGFNAewsY/exluod1MoyoSARkG/V8cp514jGsX5rc/NYh7QDvd/f0nCXwQAAh
	 kOc4x6aepFeHWyZaCnazq2eD3uuw/4cFQ1ioGIPKVj4z1iCm+Ps3rQD5n022FOSA2e
	 oqIrK5RxAuE+3ZAlk7zQod9fwuKaC/Gih+xKQCanIp/dqCBw5HbI4cBvH4w9ohXq6a
	 6+sGoGu7lu6iJ+QnhXYR4WnfqDozCz05t+QVhHQgd2VE75LSeMCV51tKbo6rXb8gMD
	 h8oO4a/KZVAQcr25mWr+XFxUzoWIRifuKzlBhxpFd2pR2mZroV/cODsXvJiuBVnj8o
	 gdDbBnQE96ULw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1AF040927;
	Tue,  5 May 2026 05:15:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A2C6280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B90B8125E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCylVkYo8Ztz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 05:15:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 768888125D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 768888125D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 768888125D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:15:39 +0000 (UTC)
X-CSE-ConnectionGUID: ErMaxEYiQiO7LwWqbrOcNQ==
X-CSE-MsgGUID: MlRMCk4WRi6R0j35nvqXqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="89126484"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="89126484"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:15:37 -0700
X-CSE-ConnectionGUID: TICpKPviSzeAC64Lks8Oqg==
X-CSE-MsgGUID: 1OWoshimSZeAoNnRAN0T4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="239683515"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:15:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 04 May 2026 22:14:23 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260504-jk-iwl-net-2026-05-04-v1-10-a222a88bd962@intel.com>
References: <20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com>
In-Reply-To: <20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Joshua Hay <joshua.a.hay@intel.com>, 
 Madhu Chittim <madhu.chittim@intel.com>, 
 Willem de Bruijn <willemb@google.com>, 
 Dave Ertman <david.m.ertman@intel.com>, Ivan Vecera <ivecera@redhat.com>, 
 Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: netdev@vger.kernel.org, stable@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Bart Van Assche <bvanassche@acm.org>, intel-wired-lan@lists.osuosl.org, 
 Arpana Arland <arpanax.arland@intel.com>
X-Mailer: b4 0.16-dev-ea14f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1701;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=8xxRBB2hCfnptncdvaHpAb1aQ37pmgCfaRqlFzs73jI=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsyfNd83dX8sW1THFya9VGb2vg/BK2stbH5fa90df69Ni
 U3hz8rLHaUsDGJcDLJiiiwKDiErrxtPCNN64ywHM4eVCWQIAxenAExkDQPDPyNZAdUXqmcZi0Mt
 DpX4XJ1Q+E93P+fG9z5az7RMV80KXMHwP5AtWebA9l+iZ2W234q2Wbvt1/+f2ipbZBeu1In2ex4
 ZxQoA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777958139; x=1809494139;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=wHo5j9nJDIamG49pqy+qz+6YnpC7rg7uJNijoxFDE5s=;
 b=gL5WtrcMF1rcNYp8m9iJ2yRcuSaAxBgWC2/lhOaJg0TNNCTbhgOfteT8
 mM6C35zaxJpl9EYizLTwFvXBvl1WK0EiZLDuFCx/UdBSxjYDFaNwL8zsl
 IpJ7B76HUmfR5NGEI5idUvwsXUcVyTgv9fnELnZbpO+WNP5N3vUofi6LL
 wPAuT4nxrL8P/CggAmnxoS4lKOTv4BcyKNSBNJZORIexQCrtSzomoU0OJ
 3lyoYd/0ZwRWIFtDWxMKfhubGEXoU2lr9fYq7qrPtGS1aqifrP/YvBfPC
 4BvhW6KVrlQJ9AHTb6g/ACorN1shBnAS95p80jSEJ8ue1mVQh6ruAuno8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gL5WtrcM
Subject: [Intel-wired-lan] [PATCH net 10/13] ice: fix locking in
 ice_dcb_rebuild()
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
X-Rspamd-Queue-Id: F31FA4C6BEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,m:maciej.fijalkowski@intel.com,m:michal.kubiak@intel.com,m:joshua.a.hay@intel.com,m:madhu.chittim@intel.com,m:willemb@google.com,m:david.m.ertman@intel.com,m:ivecera@redhat.com,m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:jacob.e.keller@intel.com,m:bvanassche@acm.org,m:arpanax.arland@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Bart Van Assche <bvanassche@acm.org>

Move the mutex_lock() call up to prevent that DCB settings change after
the first ice_query_port_ets() call. The second ice_query_port_ets()
call in ice_dcb_rebuild() is already protected by pf->tc_mutex.

This also fixes a bug in an error path, as before taking the first
"goto dcb_error" in the function jumped over mutex_lock() to
mutex_unlock().

This bug has been detected by the clang thread-safety analyzer.

Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Tested-by: Arpana Arland <arpanax.arland@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 16aa25535152..0bc6dd375687 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	struct ice_dcbx_cfg *err_cfg;
 	int ret;
 
+	mutex_lock(&pf->tc_mutex);
+
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
 		dev_err(dev, "Query Port ETS failed\n");
 		goto dcb_error;
 	}
 
-	mutex_lock(&pf->tc_mutex);
-
 	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
 		ice_cfg_etsrec_defaults(pf->hw.port_info);
 

-- 
2.54.0.rc2.531.gaf818d63126a

