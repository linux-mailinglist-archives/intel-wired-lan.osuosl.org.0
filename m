Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIomL53/DmomEAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:50:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CA25A524C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3370F6175B;
	Thu, 21 May 2026 12:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aW7LKrQ3P3eZ; Thu, 21 May 2026 12:50:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E95F61774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779367831;
	bh=4VzZpmIXUxO7PcAykW7TM120rp/gpAwFDwdK+0mgFUc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AqlLhpnVE8guWkYNsW69UkIDDG4PRXeml4+9KFpERqEyJ0D879W5LRkgekBx5XmAe
	 RtuJWL3v8dE/Jzg4/r/yXRs/bnh6eQ+1KSt32o5x6fGCRm7gnPOEHZOlOkw+8Jnv4A
	 ybdDSq8rMzZsEEWgWas5/epLpMHX+EbFGxEeHPWUDK8Ja5NJ0u7I37jOl3NDbvtZ1m
	 GXdAfkS/UQUxVSLlx+cDRqwb4GQ+dZRxwUAi3UOSFhEyAa6J8HJyHeFNqDfAaGRd1Q
	 NUJ8TH8tpbOR1Wf1EcdM5JaM7NRcvVQX/mZK0hQ43ACDKDafbS8yQqsMK5T/DZQiTS
	 F8l/5s9ph+zDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E95F61774;
	Thu, 21 May 2026 12:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D628D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3930284706
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9_UfQpiYOTV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 12:50:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B102384708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B102384708
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B102384708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:25 +0000 (UTC)
X-CSE-ConnectionGUID: G86AIauMS3q+Xm1P2wreEA==
X-CSE-MsgGUID: ayNlcIMNSwCxd4zmf2JwgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80013510"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80013510"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:50:25 -0700
X-CSE-ConnectionGUID: d4cW2P5uRp6oPoICV8f7Hg==
X-CSE-MsgGUID: nKYbTJ+9TqO/o6iP4CkkWA==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 21 May 2026 05:50:23 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1152328781;
 Thu, 21 May 2026 13:50:22 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 21 May 2026 13:49:56 +0200
Message-ID: <20260521115000.4637-7-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779367826; x=1810903826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XPjgjfXxDJbAO1pCwf5tCCchzCnZ52KDl1yvvyI+Y54=;
 b=Lu3bPFoZtMhkbNRerdaD4xP3hT/KpCpe84Qxn/Wc52Uae7dCHWjoHXy4
 48RfUkoGzacW3cSxMgLBoxVNiaef0Q8jn2rPOoP9HuCmzklDUFbAleN5T
 i0qWzLz8Q4II8Gtd6p7f+Ri8Dkbu/a0S/M05+8Xf83+MOLZPpdHUlX1xJ
 OXiWrlHbYpnnNoPUaZgwg0RaB8GvFXb+6bR4kF+HTYtBWbUkv/b2hTTqv
 zI8rcnFNvtY5uIDlyA50M1I1K1qBObrEm5KClVlUwu/nEF07whcbUF7bj
 kMdaAKURyJYKqNmKFWymEtkHfMTqDmbQQ9HN1veB2nTUOUSWKM0Cx+apZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lu3bPFoZ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 06/10] ice: use plain
 alloc/dealloc for ice_ntuple_fltr
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 79CA25A524C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change struct ice_ntuple_fltr allocation from devm_ to plain alloc,
since its lifetime is not tied to the device. All such objects are being
removed on device remove via ice_deinit_features() -> ice_deinit_fdir()
-> ice_vsi_manage_fdir() -> ice_fdir_del_all_fltrs()

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2:
* Add this patch
---
 drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index b8014a0e7df4..44c3e4f50146 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -1750,7 +1750,7 @@ void ice_fdir_del_all_fltrs(struct ice_vsi *vsi)
 			ice_fdir_write_all_fltr(pf, f_rule, false);
 		ice_fdir_update_cntrs(hw, f_rule, false);
 		list_del(&f_rule->fltr_node);
-		devm_kfree(ice_pf_to_dev(pf), f_rule);
+		kfree(f_rule);
 	}
 }
 
@@ -1853,7 +1853,7 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 			 */
 			ice_fdir_do_rem_flow(pf, old_fltr->flow_type);
 		list_del(&old_fltr->fltr_node);
-		devm_kfree(ice_hw_to_dev(hw), old_fltr);
+		kfree(old_fltr);
 	}
 	if (!input)
 		return err;
@@ -2204,7 +2204,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		return -ENOSPC;
 	}
 
-	input = devm_kzalloc(dev, sizeof(*input), GFP_KERNEL);
+	input = kzalloc_obj(*input);
 	if (!input)
 		return -ENOMEM;
 
@@ -2248,7 +2248,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	mutex_unlock(&hw->fdir_fltr_lock);
 free_input:
 	if (ret)
-		devm_kfree(dev, input);
+		kfree(input);
 
 	return ret;
 }
-- 
2.49.0

