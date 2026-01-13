Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE59D1B13C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 20:38:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D24B982E95;
	Tue, 13 Jan 2026 19:38:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8yC6PS5oFaDf; Tue, 13 Jan 2026 19:38:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EADF882E9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768333128;
	bh=q1UZH657e9U/pOxps24hiRieMoXbsBDhId1HOxosUtE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xL/bf33BKU8YIEKyo/J8AnFy/gG7MyRraqmrTh7gVl06lxuXr192W7PjNrLsZMtXg
	 IBnLMBcjyO8SbUzUF3ChVwf6LqfDqzHMSLz6zknIDnVAH/CxrBkMYbY9VyhawWcZkW
	 DNipxCSdZnq/Q9pbr4mafoyrkukP+izTx2RfEiwXwnrk5WwhJqhi04X+csyzxN3S0B
	 A/j4muLwRh3h5zK4Ek+PCEu5lAhW2cucTuBcF+qCNbdxelzyZWzpbKh7jJ0pmyb1m6
	 c25dJ+dtvUgMeEWM2Pq+sIbyHhb+nGOBr3xmdfsTmTL40poHZLzf2mruXeL7oYDkUn
	 ZFfpM39vSaStQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EADF882E9C;
	Tue, 13 Jan 2026 19:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F423231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 109F460C12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYO_tHASwMKo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 19:38:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D9C860C11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D9C860C11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D9C860C11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:38:45 +0000 (UTC)
X-CSE-ConnectionGUID: lZ0A9JBzRUyU+XC1ndLoIw==
X-CSE-MsgGUID: rEYAGGvjRUaYuGNWgwjsgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80993505"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="80993505"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 11:38:44 -0800
X-CSE-ConnectionGUID: Wk4Q4ESsRWaYfdnVw0F4dQ==
X-CSE-MsgGUID: kznnjLrFS9ymw2PuD78+/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="208629040"
Received: from kasadzad-mobl.ger.corp.intel.com (HELO
 soc-5CG4396XFB.clients.intel.com) ([10.94.252.226])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 11:38:42 -0800
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jan 2026 20:38:16 +0100
Message-ID: <20260113193817.582-2-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
References: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768333125; x=1799869125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jEtf1ydCCX46cmNa/3QR3V9ozblq9GLYYAgW3YJ8E94=;
 b=Lx3W1//zzCuBGGKILF0Bh9j07xaFr4b6bzuErKACTUSs/RRo1+j2BIDj
 aFjshU8NZa0LTGpRe/7yGw84RmgB5HpvHe+QBo3x2FQTlrGlpH3sLqrDd
 ziQcuIILx0r7KPhKY5fXWPl9q4LLm56CSippg6pM3wwYQDlL53kzZaSWy
 a2VDtSVFig64t0ez1A0OzzCBNEASVPyC9TVGnzDR+39oanUdsw6OxyGAn
 L6mgyOYNNgyI08qn+4F8IPIty201RiZw4xEXymYFbW7yk3Wwly3XDdZeC
 kx02ON9Rn+AFgmahkOOufNoY3rItiyH+c1JVBMzG7kAiNWNrUu7K5jGM8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lx3W1//z
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: reintroduce retry
 mechanism for indirect AQ
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
Cc: netdev@vger.kernel.org, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jakub Staniszewski <jakub.staniszewski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>

Add retry mechanism for indirect Admin Queue (AQ) commands. To do so we
need to keep the command buffer.

This technically reverts commit 43a630e37e25
("ice: remove unused buffer copy code in ice_sq_send_cmd_retry()"),
but combines it with a fix in the logic by using a kmemdup() call,
making it more robust and less likely to break in the future due to
programmer error.

Cc: Michal Schmidt <mschmidt@redhat.com>
Cc: stable@vger.kernel.org
Fixes: 3056df93f7a8 ("ice: Re-send some AQ commands, as result of EBUSY AQ error")
Signed-off-by: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>
Co-developed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
Ccing Michal, given they are the author of the "reverted" commit.

 drivers/net/ethernet/intel/ice/ice_common.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a400bf4f239a..aab00c44e9b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1879,34 +1879,40 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 {
 	struct libie_aq_desc desc_cpy;
 	bool is_cmd_for_retry;
+	u8 *buf_cpy = NULL;
 	u8 idx = 0;
 	u16 opcode;
 	int status;
 
 	opcode = le16_to_cpu(desc->opcode);
 	is_cmd_for_retry = ice_should_retry_sq_send_cmd(opcode);
 	memset(&desc_cpy, 0, sizeof(desc_cpy));
 
 	if (is_cmd_for_retry) {
-		/* All retryable cmds are direct, without buf. */
-		WARN_ON(buf);
+		if (buf) {
+			buf_cpy = kmemdup(buf, buf_size, GFP_KERNEL);
+			if (!buf_cpy)
+				return -ENOMEM;
+		}
 
 		memcpy(&desc_cpy, desc, sizeof(desc_cpy));
 	}
 
 	do {
 		status = ice_sq_send_cmd(hw, cq, desc, buf, buf_size, cd);
 
 		if (!is_cmd_for_retry || !status ||
 		    hw->adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
 			break;
 
+		if (buf_cpy)
+			memcpy(buf, buf_cpy, buf_size);
 		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
-
 		msleep(ICE_SQ_SEND_DELAY_TIME_MS);
 
 	} while (++idx < ICE_SQ_SEND_MAX_EXECUTE);
 
+	kfree(buf_cpy);
 	return status;
 }
 
-- 
2.51.0

