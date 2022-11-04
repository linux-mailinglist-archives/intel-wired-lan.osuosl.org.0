Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7BC61A2C6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 21:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BFBD419B8;
	Fri,  4 Nov 2022 20:54:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BFBD419B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667595279;
	bh=z2C1EYLqWmLsHNQByHrvRzL0U5wZcP5NBNEkNtTNnh0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1Yq0p/9T/T7KL7afx5CEbDCAfvsO4OGMmMbKxbbY98zz+1KbQDZtdicmsGVxiaFor
	 LYAJWOgfyzI/zf8J+PMJgj0AaiYyTFBrlTPV9xWpK4ILKcdR9OxY5C3NNRWaL1sIVM
	 GlpJULXyxzqMM/0ub5jC0NdqCo9XrjaQozDh86qPsKrmzaVpImz7f7mgc1VCUXtYcr
	 68CBj9IXYohr0QTh4Ief/Q/gaV22zGW36VuiBI4UIS6cqpPlYLmJFDACNDWKX4zHUv
	 /e//H9sxX6eKmai7ZYeAOkBHqiO6lLM3Y1UmqtsmUfqUGuDv/r2q3iJG4B75eTo08/
	 5PQq8T/O4LZjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1psu-wV23jw; Fri,  4 Nov 2022 20:54:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2619C419AE;
	Fri,  4 Nov 2022 20:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2619C419AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E82511BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB42A419A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB42A419A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6QLc0tkfFeG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 20:54:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09B11419AF
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09B11419AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:54:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="290458062"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="290458062"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 13:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="637716220"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="637716220"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2022 13:54:27 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Fri,  4 Nov 2022 13:54:14 -0700
Message-Id: <20221104205414.2354973-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
References: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667595268; x=1699131268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/R0z4aupX7lJqYocNjduZT81fH5/p0hOTKZ7meDTBH0=;
 b=A7pSN4GHYoZwBIJwuGVPAv6GcSuXyJfdTNug/khz5N53FMltON7grpQG
 HDqjySuT6v3M+8gyLjthXKuwTPXoVUzuA2g/fvVRgRGRO0o6ce6OonL3M
 OtYRDS0VNZ/SyxzaOBCNZbAyvJVX0SIhNutPCDRNO2dZhU/Kj4myYyFNp
 GltTjom/JFFGp0amZ2WUwWV/eHiB1OY60jlXj8Wet+PGWXoFOdhzKv1eJ
 F2sqo0IDglOcj8M328/l/igpdgtY3IPfgrIDkRYV42/QT7wRE90HOtlTv
 Loq4BRDrQXMLJ2g0siXRYSPh9b2KsQ0gvqii7pHB0ghSh96qybu029qqw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A7pSN4GH
Subject: [Intel-wired-lan] [PATCH net-next 6/6] igb: Proactively round up to
 kmalloc bucket size
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Michael J . Ruhl" <michael.j.ruhl@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>

In preparation for removing the "silently change allocation size"
users of ksize(), explicitly round up all q_vector allocations so that
allocations can be correctly compared to ksize().

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c2bb658198bf..97290fc0fddd 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1195,7 +1195,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 		return -ENOMEM;
 
 	ring_count = txr_count + rxr_count;
-	size = struct_size(q_vector, ring, ring_count);
+	size = kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));
 
 	/* allocate q_vector and rings */
 	q_vector = adapter->q_vector[v_idx];
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
