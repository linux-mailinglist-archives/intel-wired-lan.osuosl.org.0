Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 89rtB6ogHmr3hQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F876267CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF1C860889;
	Tue,  2 Jun 2026 00:15:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CzgPwdK67ixw; Tue,  2 Jun 2026 00:15:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDDCE6088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780359335;
	bh=WATNbTMIcUgyUg3BpgiYhESUOCwSSLQNENpiXCklQ1E=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BiyQhk3NyvNZhFLaVPxKxwqRnCXL03LRFs2i13MPdYM6pQoxJ+AY08QI54Zr2dxwF
	 6boJPKhwhGgcSAAue9UFUaiM58oxQTHinCRI23maCSYWL+IcQtw+F8zxRK1tX05HHr
	 186ZokVrNrBbb7yTn+W+esSIQu41zA1UcCsH0bMqphKAbhQBc0oNRtuTG6D4e212JL
	 IhOgQwrkFrKXWWFmTJtOh5Gp5puYC8r+XAaAHaYHoCs6DB67a+dqUCXBuvWxdFx6te
	 wNHfMoP6D4fj5fCC208qIM6hw/jnoeW0anrmwMekZQSx1XPUKnoJb4ka03pvBWNsKb
	 Q4G02J9SBg5JQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDDCE6088D;
	Tue,  2 Jun 2026 00:15:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EE8EF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7051540C17
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wBGeYQ8g4oxG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C25A340C19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C25A340C19
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C25A340C19
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:31 +0000 (UTC)
X-CSE-ConnectionGUID: co15GkIKT7imH9+tvznPyQ==
X-CSE-MsgGUID: s0NBjTpGSKiWNqvE2i3Lyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84755422"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="84755422"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:30 -0700
X-CSE-ConnectionGUID: DILmV1zDRUKcsbmm/XJQlQ==
X-CSE-MsgGUID: 9cglMLoVR7WKVRcsrLNy8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267598719"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:30 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 01 Jun 2026 17:14:19 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-2-36d6ecbe5ede@intel.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=3571;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=/W+zCUxirdrhej8rHHCD2mXUReWdw20uF6TAB+6eYdk=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiw5hQU7Lp0QdlicvCV1s6RX08F3WtJHOuaeXrt9n56f/
 43lT96UdZSyMIhxMciKKbIoOISsvG48IUzrjbMczBxWJpAhDFycAjCRcANGhn77NDbT6hWZx6e2
 2/PcvB150+TEXQ8PQ8n1PcI57fam2xl+s77RuqeXzu0Wo2XCqarze8Up6T0upz83rpYtNy13Kpz
 OAgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780359331; x=1811895331;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=/W+zCUxirdrhej8rHHCD2mXUReWdw20uF6TAB+6eYdk=;
 b=NiKLE9TPaOolUH7JXTkfmh4bREFeo0hS7WQ6iXrGqtlAJ5Vm+WVcBZaR
 RqtLdPEi8eZFCZa9yJO3LEbstpfV7gqalUmKup4IjJS0/zP5Tvg938IgZ
 n3PR6bclCu31uNEtvI9eMutptexqbhJb/Bk3ptS1pwulw7Xx5dyst6/HC
 FTPw67EkFPy9xAB5BhmaylftCaC+tC+7/yRV0ClI1ud+BPQ8Lxd+R6990
 CcxoeJZ/1VtieW43q7h+4SkeNnNJdXH/IwGfV9xGzPF7Sxlj3m2Z9tn3l
 TnJ55cagmBaGzblQ+U/VIwB8Qz+op5y1hnxA6MSjfKpSX43UDo3FfMOZy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NiKLE9TP
Subject: [Intel-wired-lan] [PATCH iwl-next 2/6] ice: count number of VSIS in
 agg_vsi_list
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 53F876267CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ice_sched_agg_info structure maintains a list of VSIs associated with
the aggregator node. A following change is going to refactor logic from
ice_lib.c, and remove the ice_agg_node wrapper structure. Doing so will
require keeping track of how many VSIs are on a given aggregator node.

To simplify this tracking, add a member to the ice_sched_agg_info structure
which counts the number of VSIs using the node. Increment it when adding a
VSI to the list, and decrement when removing the VSI from the list. This
will avoid the need to iterate the agg_vsi_list to determine this
information.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.h | 1 +
 drivers/net/ethernet/intel/ice/ice_sched.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index f2a619fcab8b..992aafc4369d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -68,6 +68,7 @@ struct ice_sched_agg_vsi_info {
 struct ice_sched_agg_info {
 	struct list_head agg_vsi_list;
 	DECLARE_BITMAP(tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
+	u32 num_vsis;
 	u32 agg_id;
 	enum ice_agg_type agg_type;
 	/* bw_t_info saves aggregator BW information */
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index a74f840cba23..bfca45f5c53c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -823,8 +823,10 @@ void ice_sched_clear_agg(struct ice_hw *hw)
 					 &agg_info->agg_vsi_list, list_entry) {
 			list_del(&agg_vsi_info->list_entry);
 			devm_kfree(ice_hw_to_dev(hw), agg_vsi_info);
+			agg_info->num_vsis--;
 		}
 		xa_erase(&hw->agg_list, index);
+		WARN_ON(agg_info->num_vsis > 0);
 		devm_kfree(ice_hw_to_dev(hw), agg_info);
 	}
 }
@@ -2072,6 +2074,7 @@ static void ice_sched_rm_agg_vsi_info(struct ice_port_info *pi, u16 vsi_handle)
 				list_del(&agg_vsi_info->list_entry);
 				devm_kfree(ice_hw_to_dev(pi->hw),
 					   agg_vsi_info);
+				agg_info->num_vsis--;
 				return;
 			}
 	}
@@ -2473,6 +2476,7 @@ ice_move_all_vsi_to_dflt_agg(struct ice_port_info *pi,
 		if (rm_vsi_info && !agg_vsi_info->tc_bitmap[0]) {
 			list_del(&agg_vsi_info->list_entry);
 			devm_kfree(ice_hw_to_dev(pi->hw), agg_vsi_info);
+			agg_info->num_vsis--;
 		}
 	}
 
@@ -2728,6 +2732,7 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 
 		/* Initialize the aggregator VSI list head */
 		INIT_LIST_HEAD(&agg_info->agg_vsi_list);
+		agg_info->num_vsis = 0;
 
 		/* Add new entry in aggregator array */
 		status = xa_insert(&hw->agg_list, agg_id, agg_info,
@@ -2915,6 +2920,7 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 		/* add VSI ID into the aggregator list */
 		agg_vsi_info->vsi_handle = vsi_handle;
 		list_add(&agg_vsi_info->list_entry, &agg_info->agg_vsi_list);
+		agg_info->num_vsis++;
 	}
 	/* Move VSI node to new aggregator node for requested TC(s) */
 	ice_for_each_traffic_class(tc) {
@@ -2933,6 +2939,7 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 	if (old_agg_vsi_info && !old_agg_vsi_info->tc_bitmap[0]) {
 		list_del(&old_agg_vsi_info->list_entry);
 		devm_kfree(ice_hw_to_dev(pi->hw), old_agg_vsi_info);
+		old_agg_info->num_vsis--;
 	}
 	return status;
 }

-- 
2.54.0.1064.gd145956f57df

