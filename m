Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HMAOWALFGr6JAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 10:42:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF8C5C7ECE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 10:42:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14A1E83E84;
	Mon, 25 May 2026 08:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qhonRE-2Zm99; Mon, 25 May 2026 08:42:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E4C783E8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779698524;
	bh=Mztsxgm3+70KWI9oD7neGRLQCwIR9k6QwDyCZ+eFEms=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oYdtpuHoFMgfztJXAR4cSXGKe4MPbIAPoFiUnmG/URi+xsZH1oPOSYRIIuv5MGAWg
	 StyrDXDrZKEYYteuK5iB8gUjk6qCSTIZ4u7bRabhzoJuVPkancalQPmdfo4g6Oxso7
	 GngPIw23SL57ahfDFwCOV4lHY8V3L0uZ/beiYxeuMvXtbaJENlHNd0yOxYI40lW2K8
	 lQoHUJu7yKKQbtt/17AGm0nDKLM7JJSDIEDTru2QwBiLQ5auMzyhW0fL3Wn9dBrCXe
	 UaBY6psET3AzYtOgex8CAjGj6FzlAJ6o4v7ZeDfoa+3K7BNQvsB7/OQy67fJQQQjjY
	 42GzeQ05FBVDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E4C783E8C;
	Mon, 25 May 2026 08:42:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 09281265
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 08:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E175660F58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 08:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b49KoDbpquZM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2026 08:42:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 369CB60F57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 369CB60F57
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 369CB60F57
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 08:42:01 +0000 (UTC)
X-CSE-ConnectionGUID: 6W6h2S5PQGue5PDTQXGMxA==
X-CSE-MsgGUID: XUYKIADbRCev0TZrr4Ix9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="80573298"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="80573298"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 01:42:01 -0700
X-CSE-ConnectionGUID: kyp2uXDUTJ6ArQirl/1Tzw==
X-CSE-MsgGUID: V03PED3bTZuB4SL2IOJGfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="238968451"
Received: from gklab-003-014.igk.intel.com ([10.91.173.44])
 by fmviesa008.fm.intel.com with ESMTP; 25 May 2026 01:41:58 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, konstantin.ilichev@intel.com,
 aleksander.lobakin@intel.com,
 Przemyslaw Korba <przemyslaw.korba@intel.com>, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 25 May 2026 10:38:03 +0200
Message-ID: <20260525083835.481974-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779698521; x=1811234521;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rhZeCAfuClKv/Mu8IFHZ3hmztx6GzmMheK7IXKONEDg=;
 b=M2SmpWiwM0cva0+rg4A5dkAa2cbJj3/y/7i8Bp/Zft2MFu1Dgj58ZVPB
 ZzmXK+BJwKpqKVF8Xdv6oTTdT6PO/czOy54/JfrtCFI6u90NQrCCZXmIf
 zYLk6JsJFu5gL7D4YVJtJWNI7DA6VlnMHTUptf6cb6rh52WZhAkrlE6Js
 QVcu0vYCpViR4gJV+qsXNqvL+3sVWgVItGH4oOFzLqURDRtpKwxobUCmD
 ViP6CA8Y3p1zKSNUcJ3uFWVE2JV9kHTcHvNAEnQW+2Ibn+ATd7xXWbdRR
 b4q8/mUgysmxuKB2oj3xkLjQ15IhMv/f5hHLqRQxEubsxLltCpnGkw6UR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M2SmpWiw
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: add padding to PTP virtchnl
 structures
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7DF8C5C7ECE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add padding to virtchnl2 PTP structures to match the Control Plane
expected message sizes:
* virtchnl2_ptp_get_dev_clk_time: 8 -> 16 bytes
* virtchnl2_ptp_set_dev_clk_time: 8 -> 16 bytes
* virtchnl2_ptp_get_cross_time: 16 -> 24 bytes

The FW expects the above sizes and PTP negotiation fails due to the
mismatch. Previously neither the FW nor the driver checked message/reply
sizes strictly, so the problem appeared only after recent validation
improvements.

reproduction steps:
ptp4l -i <pf> -m
Observe: failed to open /dev/ptp0: Permission denied

Fixes: bf27283ba594 ("virtchnl: add PTP virtchnl definitions")
Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 02ae447cc24a..39fea65c075c 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -1572,13 +1572,15 @@ VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_vport_tx_tstamp_latches);
  * struct virtchnl2_ptp_get_dev_clk_time - Associated with message
  *					   VIRTCHNL2_OP_PTP_GET_DEV_CLK_TIME.
  * @dev_time_ns: Device clock time value in nanoseconds
+ * @pad: Padding for future extensions
  *
  * PF/VF sends this message to receive the time from the main timer.
  */
 struct virtchnl2_ptp_get_dev_clk_time {
 	__le64 dev_time_ns;
+	u8 pad[8];
 };
-VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_get_dev_clk_time);
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_dev_clk_time);
 
 /**
  * struct virtchnl2_ptp_get_cross_time: Associated with message
@@ -1586,26 +1588,30 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_get_dev_clk_time);
  * @sys_time_ns: System counter value expressed in nanoseconds, read
  *		 synchronously with device time
  * @dev_time_ns: Device clock time value expressed in nanoseconds
+ * @pad: Padding for future extensions
  *
  * PF/VF sends this message to receive the cross time.
  */
 struct virtchnl2_ptp_get_cross_time {
 	__le64 sys_time_ns;
 	__le64 dev_time_ns;
+	u8 pad[8];
 };
-VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_cross_time);
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_ptp_get_cross_time);
 
 /**
  * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
  *					  VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME.
  * @dev_time_ns: Device time value expressed in nanoseconds to set
+ * @pad: Padding for future extensions
  *
  * PF/VF sends this message to set the time of the main timer.
  */
 struct virtchnl2_ptp_set_dev_clk_time {
 	__le64 dev_time_ns;
+	u8 pad[8];
 };
-VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_set_dev_clk_time);
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_set_dev_clk_time);
 
 /**
  * struct virtchnl2_ptp_adj_dev_clk_fine: Associated with message

base-commit: 4548d565aa80aad80274e2f3bff4d7cd914c703e
-- 
2.47.3

