Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28910BC1443
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 13:54:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3F8741C35;
	Tue,  7 Oct 2025 11:54:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQSbo0rT96Eh; Tue,  7 Oct 2025 11:54:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 249BF41C44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759838040;
	bh=qDUgRKbtsd4Cgeh4bTjiirBm/eNNZEm7KnTWtjGJZEI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6NtOCMwZOmsbLjz9uW11A37UsbTGzz+NV/KjBHWSkFDxFTE/mqUIT8l10olyMaeOM
	 PUQ30Tj2ACx5l7zXWLx2lAJxt61ZtmPQyb3ic4FRFGAFupS3BR6lTZxe3adCdQE/Ef
	 jwYMeGMmXirKRtYzfVfwKrDwvigEmP6WRwjO3XVlcYnw3rAhzXOwzpYz1QHQuOZqSd
	 bULIaTtOp/xMyp4ImHBXpnVlGDdQ2wePwDDD5zBbf8jsCQxc5hfbfAEZNE1hkgFWSP
	 opNVS1SJNq1zlmlfU5G8fT0y8+2LxOF+1d/FgBJmy0wSslq01blGosHXPJ+gsj1p3z
	 Q5f8bdNsE88FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 249BF41C44;
	Tue,  7 Oct 2025 11:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F017E119
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 11:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA0B26177B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 11:53:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gLrcBihMvU99 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 11:53:57 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 07 Oct 2025 11:53:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA11161754
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA11161754
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA11161754
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 11:53:56 +0000 (UTC)
X-CSE-ConnectionGUID: l/Epa9mvTVSMFnLq0gmNrg==
X-CSE-MsgGUID: ypWNea8KTBa3ditv68iI6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61051705"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="61051705"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:46:50 -0700
X-CSE-ConnectionGUID: wHswlvNBTRmdap7II1wjmA==
X-CSE-MsgGUID: C22g09TOQGm85xoIVeYbtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180546026"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 07 Oct 2025 04:46:46 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 28F492879A;
 Tue,  7 Oct 2025 12:46:45 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Joshua Hay <joshua.a.hay@intel.com>,
 Chittim Madhu <madhu.chittim@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Emil Tantilov <emil.s.tantilov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue,  7 Oct 2025 13:46:22 +0200
Message-ID: <20251007114624.9594-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759838036; x=1791374036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8pLnvnpocOAdClJwUURQKyQYxaw0xZVCv1VjIpDfUng=;
 b=JYvokdBedoerdw6yjW4b7tJyisw0rpcyr3jPCQqgF2MFvyh5Bo2GNn6P
 vNz4g62WQStqRtIO6q96xEGAYr5ozcTLsXv9C4XnXPQRsPxjk9mxWFhFf
 kvjTZI9UDTNjifxuRN+8EKN6hu1UfH4FUqH8ESG4LDGVomTEZ0HJkaDOS
 uaiBYohTsVg3lRGL3B03mI+7shaz88nucDPzQ3Rg9Ex0cBkzhnlrMn+F7
 mBVvj6Om82BB5Rn3SMEPwAJ0jMjY4d8Z7J2IGgRmq+r5BPs1blIU0HYBG
 YzLgmWRCEnYB7QUIFeip16xmj4LpllQrA+i6akTSXgK9SHM82c0hP98Iu
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JYvokdBe
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix LAN memory regions
 command on some NVMs
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

IPU SDK versions 1.9 through 2.0.5 require send buffer to contain a single
empty memory region. Set number of regions to 1 and use appropriate send
buffer size to satisfy this requirement.

Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index fa3ce1e4f6ac..af8b3ebee4d4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1016,6 +1016,9 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 	struct idpf_vc_xn_params xn_params = {
 		.vc_op = VIRTCHNL2_OP_GET_LAN_MEMORY_REGIONS,
 		.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN,
+		.send_buf.iov_len =
+			sizeof(struct virtchnl2_get_lan_memory_regions) +
+			sizeof(struct virtchnl2_mem_region),
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
 	int num_regions, size;
@@ -1028,6 +1031,8 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 		return -ENOMEM;
 
 	xn_params.recv_buf.iov_base = rcvd_regions;
+	rcvd_regions->num_memory_regions = cpu_to_le16(1);
+	xn_params.send_buf.iov_base = rcvd_regions;
 	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
-- 
2.47.0

