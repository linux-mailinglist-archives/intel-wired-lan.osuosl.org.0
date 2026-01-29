Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHZNMLHWe2klIwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 22:52:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B873B51B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 22:52:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E857B409D5;
	Thu, 29 Jan 2026 21:52:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MvlUdSG-67Nm; Thu, 29 Jan 2026 21:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AB34409FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769723567;
	bh=Gj4ue1Z1DmKPGS0n3+eQgcHDQh1HDSalFxv8kbLmUGU=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GTgWzy6VPYNBfXpMJbsXQTH+XBAE5vIMOnpmrixP5ZOMjhgzT06Ek5Z+cDHLbEkWQ
	 eWDnkVeuhRwnvbiq2GXnN0/xfsML4q8AW6YqM0QnND0Ov3+ZDolHbSTjqO3FLm4wdN
	 aRcFZsa0zm/cwBMs/qMVA7Bm9JjQz3XHJALZzmUXpKmi+FjgmDWZg6WuXYfJx0qg7h
	 lLJceFyn30jpU2E+C+DyUXpIerIvXHYhr9iKbLsNia+7ag0RwNz56fwsxf/ee+JhMT
	 jFu69rY+55oiKhzVs40yDx5xIBRLKfOXjE85AQZTag0CELjuJHIU3ceMiGHpgUGPQz
	 BnoMSw2LbZ1LA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AB34409FA;
	Thu, 29 Jan 2026 21:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9943E1A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 21:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C23C83DA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 21:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jbamzBCJVfPD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 21:52:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9851C83D75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9851C83D75
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9851C83D75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 21:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: spz2ydisSf27jKgKJohgdg==
X-CSE-MsgGUID: EnARGpHYSXyBiaREoXTYxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="71013286"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="71013286"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 13:52:42 -0800
X-CSE-ConnectionGUID: c8hxNuRAS3KoYRTIn17JDw==
X-CSE-MsgGUID: 64tK2ZBmTwKesOV8cxxVYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208797888"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 13:52:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 29 Jan 2026 13:52:05 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260129-jk-i40e-limit-timestamping-v1-1-0495e6e7d318@intel.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42NQQ6CMBAAv2L27BqWVkBP/sNwQNzCKi2kbRBD+
 LsNL/A4mWRmhcBeOMD1sILnWYKMLgEdD9D2jesY5ZkY8iw/E5HC1xtFZ4yDWIkYxXKIjZ3EdVj
 pUpvWKMU6gxSYPBtZ9vgd5DOg4yVCnUwvIY7+u19n2v0/g5mQsNCcXypTcvFQN3GRh1M7Wqi3b
 fsBPCfo6c4AAAA=
X-Change-ID: 20251113-jk-i40e-limit-timestamping-8474fcf33e40
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: przemyslaw.korba@intel.com, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=5306;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=mdOjVbsypDRwFTpeTgSO5uLjV0okQUVzWRSA7tx9Iac=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhszqa8tE96gx71XNu1PhvPFZpfN03da7tfV8wbN+zC3Pe
 +TI+E6lo5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgImE6DIy3FfuvdQy86tjbtEP
 qVkNN1iVd+j8mOY3w11C0XjrU2POYwz/1CbcWBx532OTbHsZw6NgtqdKorfuX5Iw3RSvKids9ia
 RCQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769723565; x=1801259565;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=mdOjVbsypDRwFTpeTgSO5uLjV0okQUVzWRSA7tx9Iac=;
 b=kPOf0aIcEXjEPPKIh+JPD+cBGpCPNzkfeD6nMoZTFHRyF51hackRLeKL
 EuHL1e2vTJGCfavbyfStY6NQ7p3rT7h5+Oxz6qrelSv0FJaHPWkzA9DbF
 Ixy9EsAvkl+BQUz5j8ToI3OgfzNqwusrtQIjr5b3NjDObbnIneMDiT+et
 D3x83TmW2rXNxI4PlNyQbV84DrbrhbT6W/f2Gr7ivJxTxiomIRelnlFl8
 sta9mqy4Uw7+96spzzBoMdMCKC5ga2weziVwgZklN5Q68LucgX4Td6PxP
 wN4aEahOtZo/4oUFauK00ZXzMQxv7fX2bFF7PgIc3emqhgz05z5F6oaFs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kPOf0aIc
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: only timestamp PTP event
 packets
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,intel.com:email,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4B873B51B5
X-Rspamd-Action: no action

The i40e_ptp_set_timestamp_mode() function is responsible for configuring
hardware timestamping. When programming receive timestamping, the logic
must determine how to configure the PRTTSYN_CTL1 register for receive
timestamping.

The i40e hardware does not support timestamping all frames. Instead,
timestamps are captured into one of the four PRTTSYN_RXTIME registers.

Currently, the driver configures hardware to timestamp all V2 packets on
ports 319 and 320, including all message types. This timestamps
significantly more packets than is actually requested by the
HWTSTAMP_FILTER_PTP_V2_EVENT filter type.

The documentation for HWTSTAMP_FILTER_PTP_V2_EVENT indicates that it should
timestamp PTP v2 messages on any layer, including any kind of event
packets.

Timestamping other packets is acceptable, but not required by the filter.
Doing so wastes valuable slots in the Rx timestamp registers. For most
applications this doesn't cause a problem. However, for extremely high
rates of messages, it becomes possible that one of the critical event
packets is not timestamped.

The PTP protocol only requires timestamps for event messages on port 319,
but hardware is timestamping on both 319 and 320, and timestamping message
types which do not need a timestamp value.

The i40e hardware actually has a more strict filtering option. First, only
timestamp layer 4 messages on port 319 instead of both 319 and 320. Second,
note that hardware has a specific mode to timestamp only event packets
(those with message type < 8).

Update the configuration to use this mode, so that timestamps are captured
for only event messages. This replaces the use of the 'wildcard' option of
the V2MESSTYPE field which caused timestamping of all message types
regardless of whether it was an event message.

This avoids wasting the valuable Rx timestamp register slots on non-event
frames, and may reduce faults when operating under high event rates.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_register.h | 10 ++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ptp.c      |  9 +++------
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index c4051dbcc297..2560c47910d4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -797,8 +797,18 @@
 #define I40E_PRTTSYN_CTL1_V2MESSTYPE0_SHIFT 16
 #define I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK I40E_MASK(0xF, I40E_PRTTSYN_CTL1_V2MESSTYPE0_SHIFT)
 #define I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT 24
+#define I40E_PRTTSYN_CTL1_TSYNTYPE_MASK I40E_MASK(0x3, I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
+/* Timestamp UDP v1 packets */
+#define I40E_PRTTSYN_CTL1_TSYNTYPE_V1 \
+	FIELD_PREP(I40E_PRTTSYN_CTL1_TSYNTYPE_MASK, 1)
+/* Timestamp L2 and UDP v2 packets with message type < 8 */
+#define I40E_PRTTSYN_CTL1_TSYNTYPE_V2_EVENT \
+	FIELD_PREP(I40E_PRTTSYN_CTL1_TSYNTYPE_MASK, 3)
 #define I40E_PRTTSYN_CTL1_UDP_ENA_SHIFT 26
 #define I40E_PRTTSYN_CTL1_UDP_ENA_MASK I40E_MASK(0x3, I40E_PRTTSYN_CTL1_UDP_ENA_SHIFT)
+/* Timestamp UDP packets on port 319 */
+#define I40E_PRTTSYN_CTL1_UDP_ENA_319 \
+	FIELD_PREP(I40E_PRTTSYN_CTL1_UDP_ENA_MASK, 1)
 #define I40E_PRTTSYN_CTL1_TSYNENA_SHIFT 31
 #define I40E_PRTTSYN_CTL1_TSYNENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL1_TSYNENA_SHIFT)
 #define I40E_PRTTSYN_INC_H 0x001E4060 /* Reset: GLOBR */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 89abe2f22216..d70adf2e5a1c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -24,9 +24,6 @@
 #define I40E_PTP_1GB_INCVAL_MULT	20
 #define I40E_ISGN			0x80000000
 
-#define I40E_PRTTSYN_CTL1_TSYNTYPE_V1  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
-#define I40E_PRTTSYN_CTL1_TSYNTYPE_V2  (2 << \
-					I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
 #define I40E_SUBDEV_ID_25G_PTP_PIN	0xB
 
 enum i40e_ptp_pin {
@@ -1278,7 +1275,7 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 		pf->ptp_rx = true;
 		tsyntype = I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK |
 			   I40E_PRTTSYN_CTL1_TSYNTYPE_V1 |
-			   I40E_PRTTSYN_CTL1_UDP_ENA_MASK;
+			   I40E_PRTTSYN_CTL1_UDP_ENA_319;
 		config->rx_filter = HWTSTAMP_FILTER_PTP_V1_L4_EVENT;
 		break;
 	case HWTSTAMP_FILTER_PTP_V2_EVENT:
@@ -1295,9 +1292,9 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
 		pf->ptp_rx = true;
 		tsyntype = I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK |
-			   I40E_PRTTSYN_CTL1_TSYNTYPE_V2;
+			   I40E_PRTTSYN_CTL1_TSYNTYPE_V2_EVENT;
 		if (test_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps)) {
-			tsyntype |= I40E_PRTTSYN_CTL1_UDP_ENA_MASK;
+			tsyntype |= I40E_PRTTSYN_CTL1_UDP_ENA_319;
 			config->rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
 		} else {
 			config->rx_filter = HWTSTAMP_FILTER_PTP_V2_L2_EVENT;

---
base-commit: 38e28dad667f597c26856f2e0c3e95f70e0ab509
change-id: 20251113-jk-i40e-limit-timestamping-8474fcf33e40

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

