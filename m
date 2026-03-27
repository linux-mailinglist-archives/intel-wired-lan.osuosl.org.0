Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHAZN4owxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C1F340570
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA4F683C2E;
	Fri, 27 Mar 2026 07:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qEv6OqsC0ETk; Fri, 27 Mar 2026 07:23:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B06A083C69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596231;
	bh=ChGa9APwM8P7w31onV9RjJv+ygXYNPvU88/rrBsuSnQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uByyiM4bHdemsywCldp/TdupqWEVpA1GphWPY+gozLY17MDd4MKbHyITCyBj5meAD
	 4I5dUX+18fG0XCu8zjGdqYDfhGSgoKEEaFH75ZjqJMdj0zCFgdpei6HbW2ijNuE3ss
	 Sy1u+eRfUrH3NQbMFOoqAah4AykbgijzcEuQB6wtGNjf1JIrz1vewiUXFO2UgogPPH
	 ZFWgFYr+ZsxzNYkNm8jtB1u4iIfMHz0HKasnls0a8tb53xN4FAdDOI1a+zGt8E9D/O
	 xRJUYrdIZJ2HQ61OOwH8saYFRdyqdL3ECZMAwhy30/JOfm1IMaAKbs+Ka/uE378Opo
	 EMgLVlQQNOcvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B06A083C69;
	Fri, 27 Mar 2026 07:23:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A6832D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 110C3415FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 07PUNKvsAu_m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8CDC541574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CDC541574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CDC541574
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
X-CSE-ConnectionGUID: EhdknACPQy+FA4dNuVswqQ==
X-CSE-MsgGUID: 9Wu5pBu8RymHVoudbB2jIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75733986"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75733986"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:23:48 -0700
X-CSE-ConnectionGUID: 3TZ/1urxTieR8aq8K8zFlA==
X-CSE-MsgGUID: rjKNCQ8+ThubfTMcLNb9+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255739124"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:23:47 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Date: Fri, 27 Mar 2026 08:23:32 +0100
Message-ID: <20260327072332.130320-9-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596228; x=1806132228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SkeueQB1As0bMn8ZudMMXCS+i2wWNrQl5dDeglS+N8g=;
 b=C/YSaaX30pnHBmu4p4bDlsT4qYZl//ReH+wCApvrZIFpL/EZfGSb5M/j
 YHDvezP54d8xZy3GgxwqV0ZGTSuKk6l6NG2eLMqxBpZ5XZRFdHEQeULnQ
 aLY4t+q5+yvYj/lx6Y2Ue3ZlnPlqxrJOXkyIt3tG7xWOWDHBCAoojF5Tj
 VZ70KDKKjwYz+IouL0brShHVvfviKCxsAs7Q4KSc7/aiuk3UY5WRxNpXV
 iF54ii5evkWeqfVAEhFK0yQdwbygX6hXDd4v0fIw3oTo8OQqv/CVShyO7
 hVuXC+Xg/PGLKERWYBnxOpRYRh9SbHB2hYiFPw2LZtWF+HojLj/SjvfxB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C/YSaaX3
Subject: [Intel-wired-lan] [PATCH net] ice: use READ_ONCE() to access cached
 PHC time
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 90C1F340570
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

ptp.cached_phc_time is a 64-bit value updated by a periodic work item
on one CPU and read locklessly on another.  On 32-bit or non-atomic
architectures this can result in a torn read.  Use READ_ONCE() to
enforce a single atomic load.

Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
Cc: stable@vger.kernel.org
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8b0530b..2ea4dbc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -350,7 +350,7 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 		return 0;
 	}
 
-	return ice_ptp_extend_32b_ts(pf->ptp.cached_phc_time,
+	return ice_ptp_extend_32b_ts(READ_ONCE(pf->ptp.cached_phc_time),
 				     (in_tstamp >> 8) & mask);
 }
 
-- 
2.52.0

