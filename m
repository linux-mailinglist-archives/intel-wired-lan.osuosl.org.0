Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGpYIwrGD2qJPgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 04:57:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9122C5AE30C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 04:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 543B985036;
	Fri, 22 May 2026 02:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CEzzEel9pKtk; Fri, 22 May 2026 02:57:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A709D85037
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779418627;
	bh=VdSJWhr+D3eaMbQ1GWT/bDNCCp8lc7doQmY8yQX/nQ4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RkUlz+VJt66wOHEN8bN9Og1fTksFphJQXFHk0AUWYlsSocdBeBUCcKJ7SQjdq9l2L
	 xZdihiCtKGRBqqYZAlTJztsDh04XAxyetDW9XH3wfkWxPMy1gtbF7Dl7ZgCo4jL2l8
	 gPZda/R+kGIwHiZ14FJbCmeqG4eYxBVRtUrjBh4B5L2Ammhjc8j6rDMy7heKIXH5S3
	 XoLOLPXXbvhgqPF1jSgNxJjY6JxNgzfnp0gHgdryRGFvLAaZ+gTNJ4fMvHqaiqJ87f
	 ppVhzZCpMzJL0u/UTMo4gdqdQhhHuJL0Ay5/ocFSyb3cMv/NYYN0JmpKGd7/n2rERL
	 b8ihg0LuzRY2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A709D85037;
	Fri, 22 May 2026 02:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95904265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B7D741CEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSwF-_FTk2lI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 02:57:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9B4FA4023C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B4FA4023C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B4FA4023C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 02:57:05 +0000 (UTC)
X-CSE-ConnectionGUID: xjgAFt/tTeOhLVGHfkkRgg==
X-CSE-MsgGUID: HqWP+OEQSoaRZ31h8X5Dmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="105811755"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="105811755"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 19:57:04 -0700
X-CSE-ConnectionGUID: i/xnYFoWRaGDmZRVZEpRcw==
X-CSE-MsgGUID: 3UykpI8PSk2WNorjK0kOMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245035636"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 21 May 2026 19:57:05 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 22 May 2026 04:57:00 +0200
Message-ID: <20260522025702.1764129-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779418625; x=1810954625;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WRrEP0wxmuMbEtGGN8xgtXwm54c5/K1Y+jLf5Bs/DWo=;
 b=EUxY00w3fIBooX91xItGUSSu1SFe7Ncfyrp7qH/ROMkfunjvdTvkwiCt
 yJMYGvXH6KhX58pejdV5mG7eMCz6NlDY0qNyQ0IgwRf11134eg7JQSzkd
 avfh/5ROxnA+RIAWsTzB/eeeny3qjV8HMB8ZPrgJLlfa9mon2v/BLnML1
 Ky8ZB6oy2c2PQk5gavbz8epzyKbcUtXqg+gN0zxEHuZQuL+M5eWaRmnQ/
 MybfxiCdcaVxtdq5+BOCUuu47Vuln+h39Nfc4InMGXmRQ9MYcRRnDul3e
 aUXNCYSnQohICAzaoGP8fMeeU6D87raFio54NccKzH9wArziU5s/p90XK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EUxY00w3
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] iavf: two small logging
 improvements
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9122C5AE30C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Assorted small logging improvements for iavf. Add a dev_info() forwarding
the PF's own diagnostic string when a cloud filter add fails, and print a
netdev_info() when the PF confirms the primary MAC address.

Improvements only, no fixes; suitable for net-next.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Aleksandr Loktionov (2):
  iavf: log PF diagnostic message on cloud filter add failure
  iavf: log primary MAC address confirmed by PF

---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 25 +++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

-- 
2.52.0

