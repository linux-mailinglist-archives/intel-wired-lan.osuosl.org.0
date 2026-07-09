Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aeSyI3TFT2qkoAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 17:59:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 744987333A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 17:59:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=xVawehYY;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4D4140FA5;
	Thu,  9 Jul 2026 15:59:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cqVroRqeWEQg; Thu,  9 Jul 2026 15:59:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0BA840FC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783612783;
	bh=MGFKLQtkzqXPZ7saVL90IfDPQkSmCFDAN36+9tQO12I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xVawehYYqE+NuDCVI3JNOcOGppyhkcBXp0aZTHwEiXf8Y+a5sEdLX0yDxrBM3ddWQ
	 D5QAaGzgymNFAko+EA9wbp9RPPXFmAZAmwGv0uafVcL64BGIV070H3BgrQKncsoUuG
	 7rSj9E+c+fcu+41/6Xl2jqEEZvy4kEY1tZhi896wXXTosRWJqdP9gcHGo83NMo7n0q
	 FXAa5Z2lctFz3kochranl84bxc71iSRPy/dd5qKtLruSKEEWJ7hcQ3KNgWhSj0saGY
	 /Jrtv+4aqXE03vNNhdd6sJJWMiGkrWE67Tr1MNBzQA+no/1rxkPlt+ACht05Vk7rs1
	 iiq3PcP7G6l7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0BA840FC2;
	Thu,  9 Jul 2026 15:59:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 256C1BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 15:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1746040F8E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 15:59:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sNjMlAX61GJJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2026 15:59:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB40B40F7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB40B40F7D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB40B40F7D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 15:59:39 +0000 (UTC)
X-CSE-ConnectionGUID: kx5regrdRMiytG8KYE6hvA==
X-CSE-MsgGUID: Qr1e6xI6TDqZEze6NL++Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95671658"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95671658"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 08:59:39 -0700
X-CSE-ConnectionGUID: aJOjZyFIRIS4eZj9684RzA==
X-CSE-MsgGUID: l/gfQvLHSou4XVQm3Ltjeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="279019819"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 09 Jul 2026 08:59:37 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 801AF312C4;
 Thu,  9 Jul 2026 16:59:36 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2026 16:59:04 +0200
Message-ID: <20260709145904.164375-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783612780; x=1815148780;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bnDDy05kYz3XkFFSJ+rs21I3F6XQAlDJfnl4nBcLMQE=;
 b=ABhjdrEWB3x6QiclELhjufups9H50eg3vZWJzf+2chNXftQ7M5sJ2UIV
 8nwW3W6lNaFiHrS1Znflt4ookYW1Tk4+kB1bUAuB6L7F25nAm8uMaUUCT
 915akwIk+PwrirqR7NDccZuBZkzfKKal2lnGB/f/s94XyFSYvCRvPK6rq
 mvcyRAZsblR1VeyFQQYqr6Eg3d/lsAKKTU5ycjbMc5UNEzVj2S4bGtbJ5
 9eIC9H4GsXaATnGhb2BLKunvdkalwsDkulZnGb4u5UDZKfMZFxZMN25nf
 vjRilwfNR+vjC1WRgImS3J1CXKYr1jJuyf0kLFgjboOpJzqH9E4yKYjLp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ABhjdrEW
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: fix uninitialized response
 buffer in ice_acl_create_tbl()
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim,intel.com:email,linux.intel.com:mid,linux.intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 744987333A2

Buffer is uninitialized in error path. Move assignment before goto. This
buffer is only used for response, so its content doesn't matter.

Fixes: d80ee68614c3 ("ice: initialize ACL table")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202607022231.FWjSU75X-lkp@intel.com
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
Tony, please squash this with the offending commit. It's not applied
yet, so hash is invalid, but I don't want to resend a ~5000 line
patchset just to move one line.
---
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
index a76762e3aa46..4ea08bd9784c 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
@@ -354,14 +354,14 @@ int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params)
 		return -ENOMEM;
 	}
 
+	resp_buf = &tbl_alloc.buf.resp_buf;
+
 	tbl = kzalloc_obj(*tbl);
 	if (!tbl) {
 		err = -ENOMEM;
 		goto err_dealloc_tbl;
 	}
 
-	resp_buf = &tbl_alloc.buf.resp_buf;
-
 	/* Retrieve information of the allocated table */
 	tbl->id = alloc_id;
 	tbl->first_tcam = resp_buf->ops.table.first_tcam;
-- 
2.49.0

