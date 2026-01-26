Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKBiOZMpd2lzcwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 09:45:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDC485970
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 09:45:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73FC7608F5;
	Mon, 26 Jan 2026 08:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CfW9c8z1cJ1D; Mon, 26 Jan 2026 08:45:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BA1260B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769417102;
	bh=meml/OpcoF/dNoVwT/YVg28fW0iSJvpifwUEL5eFBZI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Y02JPrlIDQH2lv4tJG+NjgP5ZGmD3Wg4BsFIXewOPkKzD9FIurQw+l2JLAIsFh7Ei
	 qcFOf/E+VpNCMfNNGfPODGHTfquBWleYSSJGUpvO4KzlmaPp1c9zOheKrZ25OSYBgM
	 VN+FTBMX08hWlw/cEG6unL5T/B9RAKda740tx8oK8YrWbK9tYF9OVCeUV4lk04lJi0
	 ijfXD0YXYXOGYO4Cvz1IZKR/ROJgjw1MPZZhac4ieXjp7JcNu2ziqPPxSF3nZ4voGm
	 xMyKgZHFr62h6qoROMrRjnAmwN98lKgjE/ief2q/Vx8lfwHXm4ayaPLEXplNq2l/A7
	 DiM7cUddX3KXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BA1260B6C;
	Mon, 26 Jan 2026 08:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4750D11B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3644180F4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XTMgfgiGU0Me for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 08:45:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4AE3E80B56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE3E80B56
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AE3E80B56
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:44:59 +0000 (UTC)
X-CSE-ConnectionGUID: vmnI7hISSvyYXOHM7GWYPg==
X-CSE-MsgGUID: VqXg54qXRdenW7EKmL4L/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="74222379"
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="74222379"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 00:44:45 -0800
X-CSE-ConnectionGUID: xJXQvBklQhipYG7K9HT1NA==
X-CSE-MsgGUID: eHL38Au7TDehrMUD7a4NtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="207874728"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 26 Jan 2026 00:44:43 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon, 26 Jan 2026 09:44:42 +0100
Message-ID: <20260126084442.413230-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769417101; x=1800953101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s5WhHkpMJph3dnQm9bg/a8IisWZSLUAPtG1shYY9hhA=;
 b=PEP0M52rn6fRQJ5luCBFVTY7xftM3P3de5Jii+/BY2nfnzoYPNy5trMQ
 b9xPum76MelcaXRPdAnFRcJV7lRMUtWewpw1mq3OkCUVPMKUz4xaLn8E1
 0TGb966mU8iO+pKZSm2n8PXGPjvLtC7J0ZyYfbylCjCbUI8tQubAoBHq/
 3MAD4VywtBz7WNpNlFooyYIYucLsCLqfofRj+OHYncXE3u3HKSKhzaqbJ
 70Dj0rYBRP5JuBPAXExa0+Mnnwu3uKHRrVrHGwPcuHFtUZSwWJOLFKEiW
 9u7MJ3qBTwUSNjsgKYPjpNS4iRUhQvtUHWHo8KmClJFLmz1IuMVDdAHQ+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PEP0M52r
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: fix unaligned u32
 access in
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DEDC485970
X-Rspamd-Action: no action

ixgbe_host_interface_command() treats its buffer as a u32 array. The 
local buffer we pass in was a union of byte-sized fields, which gives 
it 1-byte alignment on the stack. On strict-align architectures this 
can cause unaligned 32-bit accesses.

Add a u32 member to union ixgbe_hic_hdr2 so the object is 4-byte 
aligned, and pass the u32 member when calling ixgbe_host_interface_command().

No functional change on x86; prevents unaligned accesses on 
architectures that enforce natural alignment.
 
Fixes: 49425dfc7451 ("ixgbe: Add support for x550em_a 10G MAC type")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v1 -> v2 change title and concentrate on alignement issue
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61f2ef6..eb5bf3b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -2798,6 +2798,7 @@ struct ixgbe_hic_hdr2_rsp {
 };
 
 union ixgbe_hic_hdr2 {
+	u32 buf[1];
 	struct ixgbe_hic_hdr2_req req;
 	struct ixgbe_hic_hdr2_rsp rsp;
 };
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 76d2fa3..4a0ccbf 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1228,7 +1228,7 @@ static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
 	buffer.req.buf_lenl = FW_SHADOW_RAM_DUMP_LEN;
 	buffer.req.checksum = FW_DEFAULT_CHECKSUM;
 
-	status = ixgbe_host_interface_command(hw, &buffer, sizeof(buffer),
+	status = ixgbe_host_interface_command(hw, buffer.buf, sizeof(buffer),
 					      IXGBE_HI_COMMAND_TIMEOUT, false);
 	return status;
 }
-- 
2.52.0

