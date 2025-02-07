Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F881A2CEA3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67E6B84BA7;
	Fri,  7 Feb 2025 21:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F_2k2lW53n2j; Fri,  7 Feb 2025 21:01:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6F6984A54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962107;
	bh=QSG71RmzueP2N+LcjvzYLBHFrvAHQJvzzBpKlEqNfCo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bCtMBjSwwOKbSLAQRxRE7YdxuxbeDzvsS1YzZUPxqe4lnbdsmqTM9EU7pwyKDt/Xx
	 iunAjgHOFxGc6qKFcpBCb05t8lDUFpmNXyvdfF1d0ESrYyqsYTwMgb2J0Q/p1NH4X0
	 UWNYpxKVOOfYwt5Au7NKf5LTiiJ7jYhU81TyhlXAhNOotEMfrYfG0GDygW7jLfVhKm
	 gNwleeRl6QHJKTJNMX+CWoYkxfrSvPbqQnl6+BB6gtQirFN3lLZFw6rtjwKfPz5CKx
	 QXLtmY2VzmjATXpCivyNo819P87BC7GRHNlVzICNLpFJhKbK2dPaToCkQ0hwTa5KTh
	 w1VcU1MugfMfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6F6984A54;
	Fri,  7 Feb 2025 21:01:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 220991B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1ABC581197
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbnvTzeYfWqo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5BFE7812E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BFE7812E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BFE7812E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:36 +0000 (UTC)
X-CSE-ConnectionGUID: iVqDWjiRT32glla7aybLww==
X-CSE-MsgGUID: HVTYk+1rQ76pjiscqR8ITw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451871"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451871"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:36 -0800
X-CSE-ConnectionGUID: Z9ou9cdtSQGA1zsr9tyQog==
X-CSE-MsgGUID: L9noZQ7ZS8+Xm9MR0PfrSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238328"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:35 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:31 -0600
Message-Id: <20250207194931.1569-25-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957836; x=1770493836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3dPLWcm3trr1v1dHML2fW2YF991UkfljjaavizRX1fY=;
 b=BtkWdkMuI5x1Kox6knn1FqFQUhKV87caxvYQpKJA7/Qa2ba8Iwf6q2QU
 Ur0tAmTztm9AAq3p7koSj9iDHMl2Y3K+KZ0EdN+9n/qqfK+OQTKJnRntY
 HId1qZa5nxByTtJM+fPp65CPBJUkWLlgfZaD9CWLHXGS7vP6JSLXi5ING
 skUf/Bad/ZOi8mWcTzm7y7/fZPBV8hdx4CK7LNX81jMcM7mtojT6mUt1j
 BmU2sBzeUcio1KRSkphg8xAQJYM60/L+SI4aiAqs1t+BZ0h2oio8gLqfo
 2qP2FALPkYwvlKe9hQPF4rr6eE3kA4q0JYG6nyMZc+g3SuYTpXNd+XOIS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BtkWdkMu
Subject: [Intel-wired-lan] [rdma v3 24/24] RDMA/irdma: Update Kconfig
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

From: Shiraz Saleem <shiraz.saleem@intel.com>

Update Kconfig to add dependency on idpf module. Additionally, add
IPU E2000 to list of devices supported.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/Kconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/Kconfig b/drivers/infiniband/hw/irdma/Kconfig
index b6f9c41bca51..f6b39f3a726e 100644
--- a/drivers/infiniband/hw/irdma/Kconfig
+++ b/drivers/infiniband/hw/irdma/Kconfig
@@ -4,9 +4,10 @@ config INFINIBAND_IRDMA
 	depends on INET
 	depends on IPV6 || !IPV6
 	depends on PCI
-	depends on ICE && I40E
+	depends on (IDPF || ICE) && I40E
 	select GENERIC_ALLOCATOR
 	select AUXILIARY_BUS
 	help
-	  This is an Intel(R) Ethernet Protocol Driver for RDMA driver
-	  that support E810 (iWARP/RoCE) and X722 (iWARP) network devices.
+	  This is an Intel(R) Ethernet Protocol Driver for RDMA that
+	  support IPU E2000 (RoCEv2), E810 (iWARP/RoCE) and X722 (iWARP)
+	  network devices.
-- 
2.37.3

