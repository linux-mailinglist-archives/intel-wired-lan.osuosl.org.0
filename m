Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51585923C43
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 13:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5075741669;
	Tue,  2 Jul 2024 11:18:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZNXLio_DqvK; Tue,  2 Jul 2024 11:18:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0D1840010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719919113;
	bh=LtKKUrgbKDlkrTVDFWuhyqctJYAWKSj405fLulItkQ8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CNZ3rndQLpp93WwD9Bf/QUqRyETjmwvpvqvPy3Cwy2nioav/d87O0Mye4w/H7WEd2
	 bWFRjZ+nLV6lUF8JDPA5q6xdyIyRSQu2aEU+eDfv2LdMzDx/YjQHJhJ4KtGtm2K7LP
	 9MDPxeWaPOVmZs4RZ+oACJ31/+flJ+KcZtrRbzFgX9dj9tdSAgDr1CtrSa0V9cpgFh
	 gaR7cOg1OQy83JW9riAKNNL28FssjOBkGeF8iJduuYvnVIREhAQ2sAYA9xrvoQrGl/
	 Jm6X3sqvMAy7cS/EPSKc96tTlZ55GBgiY637hswEb5NR3O0/AmM0S/YGc2KTQopD02
	 uqQaF5w233kEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0D1840010;
	Tue,  2 Jul 2024 11:18:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CD161BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AC8360B70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RrrNH0uCmOS8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 11:18:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7D84F60B63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D84F60B63
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D84F60B63
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:29 +0000 (UTC)
X-CSE-ConnectionGUID: /zYi5cJyTnKmijGI4Bcn0A==
X-CSE-MsgGUID: o7skS170Qn+AQBjoQ3/c3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28482091"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28482091"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 04:18:29 -0700
X-CSE-ConnectionGUID: aKo4bRzOTqS9bkDgVTV35Q==
X-CSE-MsgGUID: X9r2oimQTqmpJjILJ+wdxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46006203"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2024 04:18:27 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 13:13:20 +0200
Message-ID: <20240702111807.87802-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702111807.87802-1-karol.kolacinski@intel.com>
References: <20240702111807.87802-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719919110; x=1751455110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aFkWVFydsAlxeC8n6298/kG3CWBvKp5eWmqUjVGjlao=;
 b=HsyV/gONOETGsFCWZcsyptXHrQy37teYC+1lhCGsUxgXmdNSm4csKh+6
 Yypasxv3KhkcbeAtTOTwadKPqME5xBjg55b7VnLeN4JxuilPa0jD6bllH
 2IuO09e4pMfDC2dzn+plvfVv+WxYM3FQTXifKDtRa2ARQBi36j7EN9Jl6
 z4niqrvU60n67v9TBas6FRmb7ODeMMxrRNtV1xKB41Xe6mFSgq71CFch8
 uu8w2vcq2xLkPPqJ3B4PMPV1PfDZAEuZHsKX8EYCei2PVkDAWjTZvXNI/
 YYv0kFO97ExmZrjuNsjzJgUgpTWb7Jgd1yNsLK3afW8zeuMhPHEV4pnlh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HsyV/gON
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 2/3] ice: Don't process extts
 if PTP is disabled
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_ptp_extts_event() function can race with ice_ptp_release() and
result in a NULL pointer dereference which leads to a kernel panic.

Panic occurs because the ice_ptp_extts_event() function calls
ptp_clock_event() with a NULL pointer. The ice driver has already
released the PTP clock by the time the interrupt for the next external
timestamp event occurs.

To fix this, modify the ice_ptp_extts_event() function to check the
PTP state and bail early if PTP is not ready.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: removed unnecessary hunk of code and adjusted commit message

 drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 4d6555fadd83..9fef240bf68d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1559,6 +1559,10 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 	u8 chan, tmr_idx;
 	u32 hi, lo;
 
+	/* Don't process timestamp events if PTP is not ready */
+	if (pf->ptp.state != ICE_PTP_READY)
+		return;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	/* Event time is captured by one of the two matched registers
 	 *      GLTSYN_EVNT_L: 32 LSB of sampled time event
-- 
2.45.2

