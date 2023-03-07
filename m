Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FD66AEF1D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 19:20:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7372B40B68;
	Tue,  7 Mar 2023 18:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7372B40B68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678213243;
	bh=IJRSo1rIxJj3lR1pwnbmFuA7gm7WdfsesPAkbvUn3Lw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjkgFQZNnM/D1ukdZo8g3XVsNACyJwa8LjA6jQEwHggu9cO4ALtezwk1aNc9gY7Xn
	 t54NpRz/OwNNV4lprFe2Ijd+RxpL2Gkn3jP757R88ePGaTsjHQq/3wZZ82kIovlls5
	 12N3k/2lZRitE7bYGHMGQcyTh3Tzc/1J72mf7W47FZsZPV6WB7fG3k4njEeeNGbxxK
	 j34EHPzpgpniwbov1NtWCVzQTdd8u7PYvQZSeQXuFUCYvI4uFOMV3/ybul3pDMDoAq
	 YMzsHLXDufexDALecE0xWZbxKQkySq2kZdS/m8wZBVXfIFi0WXuzp8JdltllCEx5Gi
	 OF7J16RLUiemQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GEvxFMqnja0u; Tue,  7 Mar 2023 18:20:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 756DC40B53;
	Tue,  7 Mar 2023 18:20:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 756DC40B53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AB7E1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 18:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8127140B53
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 18:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8127140B53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iG7PFMkBToZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 18:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC291403A7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC291403A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 18:20:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DDFE661547;
 Tue,  7 Mar 2023 18:20:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F9C8C4339B;
 Tue,  7 Mar 2023 18:20:35 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue,  7 Mar 2023 12:19:32 -0600
Message-Id: <20230307181940.868828-22-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230307181940.868828-1-helgaas@kernel.org>
References: <20230307181940.868828-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1678213235;
 bh=+SVjmFeoitwY56tf4BRMZdfwmTz2I/jifxLbrlbtKKI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oWtSEFrhzjXt8a/O6k9UqI2r94s4dtqMqsGeDqcDGF6HDuPRhrT7Ue8KM8CmZkcDI
 oV0qhrG0+bs+IVbsU41k8j+IFyOk08/SIu6F7CKfRtQ4CAwmz73uzBnuiVNeRNPWTL
 6gu8q1A/uyZYW4YAs9E0+fh0OxArW0VUdR7AZAeBZ/VRAfJmavh8t59IvSsHHtcTnC
 lcamH9SIsLJS1PcnmWThfdwWj2Oli9qGdyimJjb/Cg97kIuUauyyxRz2jxOmicwxaa
 6Je6hdFkLnEClEDU1O9thFDxKPYn3OGMVXsv4y0CDPSPdqshl1/CRmkJOMltz2Y33C
 Qb8QsU919Vt3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oWtSEFrh
Subject: [Intel-wired-lan] [PATCH 21/28] e1000e: Remove unnecessary aer.h
 include
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

<linux/aer.h> is unused, so remove it.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e1eb1de88bf9..6f5c16aebcbf 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -23,7 +23,6 @@
 #include <linux/smp.h>
 #include <linux/pm_qos.h>
 #include <linux/pm_runtime.h>
-#include <linux/aer.h>
 #include <linux/prefetch.h>
 #include <linux/suspend.h>
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
