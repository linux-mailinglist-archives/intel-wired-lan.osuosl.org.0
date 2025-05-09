Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B819CAB1588
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 15:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F10A8811B7;
	Fri,  9 May 2025 13:43:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2qdU9SNLmDO; Fri,  9 May 2025 13:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66401811A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746798235;
	bh=MwazzkaqD6LZVtNYOCoNZU8/oBdohgCSUghTxxGvlYo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZexN5aqqcSdabKgmd1G1XRJSoVS3HCMq4LmvSp60Tj2IJ4B26JENsY4Z3I5sJjEhp
	 HJ0XsI5n9OsCIIsc3MRe7fcU+XZrUaxspMSaOVkPusG6A0Hz/sdy99OvNyCKIG9Rdd
	 FEJpNuSLdnBKLjVbFras5qfpd1GY4Tqa3aE5hlCOcT/PiM3rt7h7ixPyldzizkP3Zd
	 CQ+0m7HHHOTuWXcaaOuIpjaU86A2JH7MpTDNkJufoo+l6pGK4B1wgPmvbWyPG20ZhY
	 NBAvLFYMQoRbcCmxyLoH9k9GrK1w6XqTjJhhO8jgWOPjMhaOHGGsQQTplh1jd+T1DY
	 pLng4WBropiIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66401811A4;
	Fri,  9 May 2025 13:43:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 72E641A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 595EA81114
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OJkQtQsX6Tbk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 13:43:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B7055810F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7055810F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7055810F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:43:52 +0000 (UTC)
X-CSE-ConnectionGUID: 7ll1uvB4SGqoPeN5zYFS1g==
X-CSE-MsgGUID: 439i+aC4R6eqhHZVaf11Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48532948"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48532948"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 06:43:52 -0700
X-CSE-ConnectionGUID: 6RBoSfVjRJ+YgZ2t1bKkFw==
X-CSE-MsgGUID: cCdqTYPfTBOXp5muniYY0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136323278"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 09 May 2025 06:43:46 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 055953430D;
 Fri,  9 May 2025 14:43:43 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  9 May 2025 15:43:08 +0200
Message-ID: <20250509134319.66631-12-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250509134319.66631-1-larysa.zaremba@intel.com>
References: <20250509134319.66631-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746798232; x=1778334232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/+/ji5kvjQQv/u0SQ/clOuv3Fa1sXrAiXmzZRLCHO+s=;
 b=Q8SluLVbS1SFpYf8UfbIAubjSZMpJW9WhFvMGK+RRWHVQG3VtVbDA5g4
 bypUQSffnrkzCMRJA1ScEVqs8VSrsSM2yn6lh5cIj1OmoOK2PmmalHt4d
 74XrBtStEQfBuKlZJ2K0ws5cywrMBA61BTYpoeZr9UffSQB0r3VTzKduU
 O3DTNBnnel9Be7dVcbTrhK5WgDJ1uKIvliSuVnn+rL3Q2whKMzzHkAQ3c
 VfrYTCF+HgBnZXvt3aUIt0LKRDz1AaDZLUMa2dmSiTzQY2HmKYRHOOZVC
 CsZo9QwKCMK7gp90a5Uy2oKFfQjZpp3j2Qxy6THP6YI+gh9bsdsxzrO4m
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q8SluLVb
Subject: [Intel-wired-lan] [PATCH iwl-next v3 11/15] idpf: print a debug
 message and bail in case of non-event ctlq message
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

Unlike previous internal idpf ctlq implementation, idpf calls the default
message handler for all received messages that do not have a matching xn
transaction, not only for VIRTCHNL2_OP_EVENT. This leads to many error
messages printing garbage, because the parsing expected a valid event
message, but got e.g. a delayed response for a timed-out transaction.

The information about timed-out transactions and otherwise unhandleable
messages can still be valuable for developers, so print the information
with dynamic debug and exit the function, so the following functions can
parse valid events in peace.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 03cb42bffe60..076c68fcb446 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -82,6 +82,13 @@ void idpf_recv_event_msg(struct libie_ctlq_ctx *ctx,
 	u32 event;
 
 	adapter = container_of(ctx, struct idpf_adapter, ctlq_ctx);
+	if (ctlq_msg->chnl_opcode != VIRTCHNL2_OP_EVENT) {
+		dev_dbg(&adapter->pdev->dev,
+			"Unhandled message with opcode %u from CP\n",
+			ctlq_msg->chnl_opcode);
+		goto free_rx_buf;
+	}
+
 	if (payload_size < sizeof(*v2e)) {
 		dev_err_ratelimited(&adapter->pdev->dev, "Failed to receive valid payload for event msg (op %d len %d)\n",
 				    ctlq_msg->chnl_opcode,
-- 
2.47.0

