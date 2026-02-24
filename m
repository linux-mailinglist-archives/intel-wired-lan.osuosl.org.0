Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGBiBD3tnGnqMAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 01:13:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B250180299
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 01:13:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCA2983760;
	Tue, 24 Feb 2026 00:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a2eXSxCAIzF8; Tue, 24 Feb 2026 00:13:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5905983653
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771892026;
	bh=sSXTu8vRniC5R5jiVP7dbJMi9Edmea8p1RFZswL3nWY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GmxEXwBdbU3ejA43IVpNsUJGH0vlXhRpNBuu85x6sCnKoXwgbaZFEZe5wrbVLCpad
	 EAkUAqicgjSn9cT6E9qyuogj5O839IyyaM3ybhnF5PeKIj+uqNT/VLuFriqdZ1qijw
	 5H2fQe7bkYuccbWq0/Q3Ag6sfWc+Fq57UlkRDXKY+QwoL4P1Qb70Y2PjYPjGt6SMAq
	 mWgyJ8vBTDqIpSJ7uH4sonboaA7mwZPQi9/AH9izgeLoGgyqSltkUJH91SP5zX8cVr
	 HDNqJZZLz0UsGwINHNYzn9XvzTy0AOAZdzvk26484J7rkxZUXKNw0shT29RWZMQXW8
	 Tc6yqbxumV/jg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5905983653;
	Tue, 24 Feb 2026 00:13:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CAD0237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 00:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25E5E834FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 00:13:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0NPrzp3XKVbb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 00:13:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7474C83422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7474C83422
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7474C83422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 00:13:40 +0000 (UTC)
X-CSE-ConnectionGUID: CLqwtZQaQuu8dqtTH0GDqA==
X-CSE-MsgGUID: Td3jm3fVTTi6/XQ+aIK/lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60476660"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="60476660"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 16:13:37 -0800
X-CSE-ConnectionGUID: apw5kpZxRpitfj+5ajSKqA==
X-CSE-MsgGUID: g0JgzZe0TgiUMVV6aj+sAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="220284297"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 16:13:36 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Feb 2026 16:12:17 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-jk-improve-fw-update-activate-message-v1-1-ce2b4abcf79f@intel.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2NwQrCMBBEf6Xs2YVuCiL+ingIyVRXaRuyNQql/
 +7qbR7Mm9nIUBVG526jiqamy+wgh47SPc43sGZnCn049kEGfjxZp1KXBh7f/Co5ruCYVm2/MME
 suiTDyfuCFLKQb5WKUT//n8t137/Zg3tfdwAAAA==
X-Change-ID: 20260213-jk-improve-fw-update-activate-message-1382601ec2d1
To: netdev@vger.kernel.org, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.15-dev-cf6a8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1920;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=vQ2hfAh3pnvUs9p2rFL4aZs1O16IU1iCGeQsnn/e5lk=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsw5b3U2lehp67YvmvOm9aHFFW/vmTc3xeYvOhJad/3sl
 Z2/j0e3d5SyMIhxMciKKbIoOISsvG48IUzrjbMczBxWJpAhDFycAjARNg+GvxLv51TPKGM6FsLH
 bKevf1yuP1SznUHyYt6W2d8bXHsy4hgZvrxwVM5hE4hef+rdv6xLJ8S19zhEv6h/w7dA6tOahG4
 bDgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771892023; x=1803428023;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=vQ2hfAh3pnvUs9p2rFL4aZs1O16IU1iCGeQsnn/e5lk=;
 b=BEO82MJ7C7tQjJuUEiK6GZmvbhefUTLdMEiAw5ifgR2nDWYBHo/nddK9
 PLlyzoTzosf1cX0kw+tUE9QbVHXvfypLrpQa6efK8hv8CMSDBUj3Z8fe8
 r7W96bkbCkxUyPK62laGL2vy7GbxbnrHqnPtZPVgImiaGJDmOD3x7AQfZ
 /wqWmNcSd50lSz/cPbvRRG9wiy92SuZjtzn8bPYijbzIwpRVtIiBhgMql
 rlD29X39xYUzubwbOTYZIECkRq2cBjbd17aM1mStjLter+yv6hMlqTEZU
 4bzNvSp2KPqLVIix85EAkACM7cOhPlY2qUiceW6uWeXYv2z79Xe6WfhZl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BEO82MJ7
Subject: [Intel-wired-lan] [PATCH] ice: mention fw_activate action along
 with devlink reload
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7B250180299
X-Rspamd-Action: no action

The ice driver reports a helpful status message when updating firmware
indicating what action is necessary to enable the new firmware. This is
done because some updates require power cycling or rebooting the machine
but some can be activated via devlink.

The ice driver only supports activating firmware with the specific action
of "fw_activate" a bare "devlink dev reload" will *not* update the
firmware, and will only perform driver reinitialization.

Update the status message to explicitly reflect that the reload must use
the fw_activate action.

I considered modifying the text to spell out the full command, but felt
that was both overkill and something that would belong better as part of
the user space program and not hard coded into the kernel driver output.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 973a13d3d92a..1f35bb9314cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -726,7 +726,7 @@ static int ice_finalize_update(struct pldmfw *context)
 	switch (priv->reset_level) {
 	case ICE_AQC_NVM_EMPR_FLAG:
 		devlink_flash_update_status_notify(devlink,
-						   "Activate new firmware by devlink reload",
+						   "Activate new firmware by devlink reload action fw_activate",
 						   NULL, 0, 0);
 		break;
 	case ICE_AQC_NVM_PERST_FLAG:

---
base-commit: 37a93dd5c49b5fda807fd204edf2547c3493319c
change-id: 20260213-jk-improve-fw-update-activate-message-1382601ec2d1

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

