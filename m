Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EC+LNbPVvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D032D5E3F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33C5041C66;
	Fri, 20 Mar 2026 05:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0KiYYZb4p6Jj; Fri, 20 Mar 2026 05:05:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 354BD41C5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983153;
	bh=9bof4R5FtBxPPKD38rrNLtVPJgK2XGQ/mHSJ9T05f30=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v6IgdoqyVN2GkuGa831zAwWyMqZhokdrGfNriWdD8KflLW29n3NWBI9ESt6DavfJH
	 HUGoZMjbMBCtzwYS1Wdmc2XHO0MWWn2V0YiD8XYRuj8ICM5uZ1JeleJLok47ppevrv
	 gc/7gDIO3EECLXTlp/fjSPNChr/jkAM1h/eDWSk3MzhUn3lwjbAGBQ8+SCxPv0xwIt
	 KV32iOj2g9apDJFW+BFuMn2b7gYp6tuDxsov3HKAk5qcQY3a+irQuKK7T8Wm9KOfLE
	 0n4GZHhXWeJbGPoVchx6c0yTI9btaH0caqc8Y4EdtrhjZ7SGlpqAliuqvXO33gZ6MI
	 JksQFeh0URCSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 354BD41C5D;
	Fri, 20 Mar 2026 05:05:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D0EA41B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2C8541398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ur8MjZisuCeZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CC64540176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC64540176
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC64540176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:50 +0000 (UTC)
X-CSE-ConnectionGUID: kyzX1jhwQ9igIWn3gZs/zw==
X-CSE-MsgGUID: IlBnK9R5Qs6btRXa2odERQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75251818"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75251818"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:51 -0700
X-CSE-ConnectionGUID: PtRtYdMPQdqgQ98KdsNf9w==
X-CSE-MsgGUID: 4Y/peap/T/2MqjLHlVn9Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222399179"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa010.jf.intel.com with ESMTP; 19 Mar 2026 22:05:49 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 20 Mar 2026 06:05:48 +0100
Message-ID: <20260320050548.422684-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983151; x=1805519151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0nU37g/5iMAsd6cyW6ndANCuu/ZEAfLoUvjHbqnSUpo=;
 b=R5boiSxhnvBJ2wWAVnsC3rKVCHDNJ7ArY3lIDnTLDLVV6sHvq/efqwpu
 zTKr7iUvyyW/rA7SrUQOLAej7Z40626uVI9domKhY0jN2Awz0PemIFVXK
 sNYR64jB4WBeBnjphI8ba0d/bBj6qfazg9Rx8UmqNo8bPvzIDFn1ADiCM
 MZrhAikG5xWzYjtYW6i1pcP8J7nmNWmztsXKKHhkbK/MLiCwSBiLXOfBq
 oU7hu01WVI/CVMkYZxCJbkrlRTam7MTyxTY1JA9CCLjJlXpuKZ+p/3z3M
 20fLiwoYghJSI7ZC8QJOFF2cG+vpLyrvRpLkSHYqaxKAL+GJvtmCEM8dd
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R5boiSxh
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: reduce loglevel to debug
 for 'Can't delete DSCP' message
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 84D032D5E3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reduce netdev message "Can't delete DSCP netlink app ..." from error
to debug level when in FW (firmware) DCB mode.
This is not a real error and a kind of expected behavior. The device
is fully operational and error message might be wrongly interpreted by
the user.

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index a10c1c8d..bb5cc0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -872,7 +872,7 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 	int ret = 0;
 
 	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) {
-		netdev_err(netdev, "can't delete DSCP netlink app when FW DCB agent is active\n");
+		netdev_dbg(netdev, "can't delete DSCP netlink app when FW DCB agent is active\n");
 		return -EINVAL;
 	}
 
-- 
2.52.0

