Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fu1ZLQAMRWpI5woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F03A6ED861
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=JcchDEb3;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0549D84172;
	Wed,  1 Jul 2026 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EFxdos19U7fx; Wed,  1 Jul 2026 12:45:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAE7A83A9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782909946;
	bh=aq1KoJSTRxHPYX2o2JP2V7VrO7A3gojlc7WOmJX9B+U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JcchDEb3/vIjLr+wHCSI+/7igg08veTyWFWl0dmQ1LIrPdiFfKPyaztTxs0JHpwVl
	 8WVyqlD5NiaL3eNG1JBCmrhrDJlH3gBosX3j7V78leAMfyjPo7P3aRxOeWyQZN8y9k
	 8ungAx7CS3bjfhb0Pqgct52AaAr2tNi2S7VJoqbPmFoYwWqjfou9dj3JfzgFMvm2AV
	 Lmq1WuHHWYPPag0vU0WNCRlb+Nv8d6znWndIRlsDZvl2eyoY6ZlYMbuIQNK+XJ8v+Q
	 BWiY28M39iFOHuxSeO5aioaCIluZlQJ36zdz4Y3aHlzl1iEI+IpQSEvvBCdf2z+yQf
	 zbUUjp6YzV4qQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAE7A83A9F;
	Wed,  1 Jul 2026 12:45:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3771E2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C75740544
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3rLu88XRBZa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 12:45:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7841840517
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7841840517
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7841840517
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:44 +0000 (UTC)
X-CSE-ConnectionGUID: fPPwe8TsQAO/nYfT80Rtfg==
X-CSE-MsgGUID: HnC/XBLJSZ+jll6QNJ4GZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83839219"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83839219"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 05:45:29 -0700
X-CSE-ConnectionGUID: udtkwoYZQwmoAK1bYme10Q==
X-CSE-MsgGUID: pdH1mJgdTPOMOiewBgjupQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="276864882"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2026 05:45:26 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed,  1 Jul 2026 14:45:17 +0200
Message-Id: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782909945; x=1814445945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ee+lE+kqF+UW+CC3Y+iRpZ7NDEeaMFnrQysPBjCQjwQ=;
 b=P4JnkWpiGOJT2mqKQuTID6VFIg0OaVfswZX8z/7y2GFh6zm8nBhYqUK+
 V14wHqI3HwJrd6kBYSJ2t3QBBVloBxv9z1K9qFSnuKYYxu14a7nABbyqg
 IGNxAGkE3ffDymSx/L5bdUl8YdS0taU5PFVV4mzRA8SpqohTa4cv3wPK1
 oOL7gWUu+HfEU+XAihkYo3Xe6QhAyFXiqDCr4F4/VDTmMzrfj7ZIgOade
 rULipXCbDoKvc1sEyLbKkJjzafY2MeCggAtFe7THbZWww1XDRshCbSHRj
 Iyg+P3dqm2+tss/D+rwtmhHM64rtWX+B0S/MkUM47kQccd0C+70XBvPQf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P4JnkWpi
Subject: [Intel-wired-lan] [PATCH v5 net 0/7] i40e: re-init and UAF fixes
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F03A6ED861

v5:
- include three new patches to address last Sashiko review
  *
- do not release the irq lump in rebuild path in patch 7
- clear dangling pointers from rx and xdp rings arrays
v4:
- add preceding patch that fixes a case when some of re-init allocations
  failed and we missed de-registering netdev at failure path
- pull out i40e_vsi_setup() changes onto separate patch
v3:
- address UAF when ring arrays were freed before q_vector's ring
  containers (Sashiko, Jacob)
- remove bool params from alloc/free array routines (Simon)
v2:
- NULL vsi->tx_rings in i40e_vsi_alloc_arrays() (Sashiko)


Maciej Fijalkowski (7):
  i40e: unregister netdev before clearing VSI on reinit failure
  i40e: avoid null ptr dereference in i40e_ptp_stop()
  i40e: make ring pointers unreachable before freeing via rcu
  i40e: avoid deadlock when calling unregister_netdev()
  i40e: fix potential UAF in i40e_vsi_setup()'s error path
  i40e: do not expose netdev too early
  i40e: keep q_vectors array in sync with channel count changes

 drivers/net/ethernet/intel/i40e/i40e_main.c | 128 ++++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c  |   5 +-
 2 files changed, 82 insertions(+), 51 deletions(-)

-- 
2.43.0

