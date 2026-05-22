Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPB/GQ3GD2qqPgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 04:57:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDD95AE317
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 04:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 320E485038;
	Fri, 22 May 2026 02:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cyEGgpiNi1ZT; Fri, 22 May 2026 02:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D6298503B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779418630;
	bh=Zbh8ok2MwZJF7qZQpQ0qv0Lw69pmZ+9N8x2bbPGCt3Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=37moAcN0cWaSPFekzpGNuArVIU43I1ap0WBC1gvKwbGwo9uUrDINL40KOyqcCzCAM
	 Jje1Vxjh2J0odMnH+APpHPfzq5HgRrmd/oqPQr1DK+kAlvd3vDzWOv2jwWM78QKmTa
	 bAU2g2//w5oHh09qA1Deh5N9VLuSSPFqnp2JOZ9VNubpZLt/csdJ4KSOfOnyYTItph
	 FpodgAF6A2n/eQ9hZtaxT/nPgHx3/u2IrihBQgM/5Kn1gY6Yxtx45tgQ62Di/w+gG3
	 YvlwwV6DpBFb3+iRvgpPVejWiHF0jJAE2WOAP6bw+H8E2ttDh1rEYg8mdVvFJgytOv
	 MYbNYEfU6od2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D6298503B;
	Fri, 22 May 2026 02:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 33A8B282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19CC44023C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zOoe8JryghwK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 02:57:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 79A5141CDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79A5141CDA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 79A5141CDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:06 +0000 (UTC)
X-CSE-ConnectionGUID: Veqs14aEQPerxL4jkxCSjQ==
X-CSE-MsgGUID: vnyNmKxXQ8+WTghb5kTQEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="105811760"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="105811760"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 19:57:06 -0700
X-CSE-ConnectionGUID: gNwPiJRbTf6dGXSPDP1yNw==
X-CSE-MsgGUID: 57qkA9xFTf69hXJ8yPA3pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245035641"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 21 May 2026 19:57:06 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 22 May 2026 04:57:01 +0200
Message-ID: <20260522025702.1764129-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260522025702.1764129-1-aleksandr.loktionov@intel.com>
References: <20260522025702.1764129-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779418626; x=1810954626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iDYVmdU7KPjlJnWt7RP1IYqONrzUpPJ7SuVhXGur0Fc=;
 b=iIClFoduxmydMO541FqbOHmvXyIdrZuyM67c0YoEWlLnbG9Fq+jxTOwK
 iSkUF/0Em4tZ0Iqo+MU1xk9DF9vduj7sgTkbB8nMW2oDylymsBpqFWzUI
 YsbceHKUBHd3tAcNOtSJlun47RR0PwhwSP5sMu6hODuNItdIlEY+uFDZu
 tIFpUcW2MuU00C/aHeXtWhYL/HFZ4+6NuKrrqzA6BtHjAnQv0CvlhiRp5
 OJK/tu6aXzr7ewXGswevC9fWvq77OkgmKDMCpKQ2K3g8BMkPTsgRW9uic
 2d0e0MbC+mBfxe2Nbdr6YhZOGZAilh2mNMmQvUhK1ZA/X2mtd8IGiGVAW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iIClFodu
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] iavf: log PF diagnostic
 message on cloud filter add failure
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-0.996];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DBDD95AE317
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the PF rejects a cloud filter add request it may include a
diagnostic string in the virtchnl response. Use dev_info() to log it
so operators can diagnose offload failures without enabling verbose
tracing.

Use %.*s with an explicit length bound to avoid reading past the end of
the message buffer when the PF fills all 4096 bytes and leaves no NUL
terminator. Add the missing cloud_filter_list_lock around both the
VIRTCHNL_OP_ADD_CLOUD_FILTER and VIRTCHNL_OP_DEL_CLOUD_FILTER error
paths to close a pre-existing race against iavf_add_cloud_filter() and
iavf_del_cloud_filter(). Apply the same %.*s fix to the equivalent
VIRTCHNL_OP_ADD_FDIR_FILTER error path which carried the same bug.

Suggested-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 4f2defd..146fc680 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2388,6 +2388,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		case VIRTCHNL_OP_ADD_CLOUD_FILTER: {
 			struct iavf_cloud_filter *cf, *cftmp;
 
+			spin_lock_bh(&adapter->cloud_filter_list_lock);
 			list_for_each_entry_safe(cf, cftmp,
 						 &adapter->cloud_filter_list,
 						 list) {
@@ -2398,16 +2399,23 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 							       v_retval));
 					iavf_print_cloud_filter(adapter,
 								&cf->f);
+					if (msglen)
+						dev_info(&adapter->pdev->dev,
+							 "%.*s\n",
+							 (int)msglen,
+							 (const char *)msg);
 					list_del(&cf->list);
 					kfree(cf);
 					adapter->num_cloud_filters--;
 				}
 			}
+			spin_unlock_bh(&adapter->cloud_filter_list_lock);
 			}
 			break;
 		case VIRTCHNL_OP_DEL_CLOUD_FILTER: {
 			struct iavf_cloud_filter *cf;
 
+			spin_lock_bh(&adapter->cloud_filter_list_lock);
 			list_for_each_entry(cf, &adapter->cloud_filter_list,
 					    list) {
 				if (cf->state == __IAVF_CF_DEL_PENDING) {
@@ -2419,6 +2427,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 								&cf->f);
 				}
 			}
+			spin_unlock_bh(&adapter->cloud_filter_list_lock);
 			}
 			break;
 		case VIRTCHNL_OP_ADD_FDIR_FILTER: {
@@ -2434,8 +2443,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 							       v_retval));
 					iavf_print_fdir_fltr(adapter, fdir);
 					if (msglen)
-						dev_err(&adapter->pdev->dev,
-							"%s\n", msg);
+						dev_info(&adapter->pdev->dev,
+							 "%.*s\n",
+							 (int)msglen,
+							 (const char *)msg);
 					list_del(&fdir->list);
 					iavf_dec_fdir_active_fltr(adapter, fdir);
 					kfree(fdir);
-- 
2.52.0

