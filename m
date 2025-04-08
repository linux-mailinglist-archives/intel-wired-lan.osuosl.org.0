Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51299A81383
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 19:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2355C82C3C;
	Tue,  8 Apr 2025 17:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tz9KNKQPqjwL; Tue,  8 Apr 2025 17:24:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87FBA82D2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744133070;
	bh=gL5bqIckzjeyjkGDF9IZ6ibvz1tYOY7ldX9+pmDDpfA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cTaBtBZhuZgAPCcfX3xojzK0rWx+XcwlXLjNxkf4lJirS78qljzflJbT6Hov8xTUx
	 KtC7NvrdledwBJ4ETOBUliDzROgmHo0yWZWqcEHkrM2aMcFaYoWP+7d1vLD6BW8h8/
	 ka7O0UoDofao86oNg+S8Dij4FF+H0AHX5aDFC7slnIDFNJZBMJJkiwoJi5Ad0L5XU5
	 OMrjbMhZE/e40uRnRf3+wMOyCQAhffIhO4Sgr19R22oeZ6JN1WDP7yVxPoKDHZnVVB
	 i6YqjHoBKOi3/vPXkGyT+jYlx8gHeyLLT2ANUYgOmmMQfHntMVPoRlDDM/CHIzic0n
	 QUncp8OYv3ICQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87FBA82D2F;
	Tue,  8 Apr 2025 17:24:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 71DD01F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 17:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 521C282C3E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 17:24:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hHyEcYuI8ikc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 17:24:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 939CC82DE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 939CC82DE6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 939CC82DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 17:24:26 +0000 (UTC)
X-CSE-ConnectionGUID: 2KoxcMIYSZOvZG1or+qeDw==
X-CSE-MsgGUID: g2BIr8I9RUmP6uQG7pqjXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45744152"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45744152"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 10:24:26 -0700
X-CSE-ConnectionGUID: krcTZdwNToiDmvJwfwVCrg==
X-CSE-MsgGUID: 6cSsDEVjQIq+wLcTf6kytg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128839700"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa010.fm.intel.com with ESMTP; 08 Apr 2025 10:24:25 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue,  8 Apr 2025 19:18:36 +0200
Message-Id: <20250408171836.998073-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250408171836.998073-1-arkadiusz.kubalewski@intel.com>
References: <20250408171836.998073-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744133066; x=1775669066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=czEDXFnNkqKkADGnIpQkXX/OpJWya2iTcsdE0n02nWA=;
 b=SiK/7qj+EQiVTlV0DtGLbBv+j1XnlfzPt4oGNsRaZyJDibNSjEZnjarp
 L1gDOT9+wuMCYrSIcQQErfGlWcFLaUCvTUQnF0qIhIPfWa9p8sDYuPi8b
 qrciNwCWfVuiqCLLoyKNz189uEaI61eq210iCXNl5rUykUGh1k6euxOQ7
 KmOlIHVDi0icRwST58uPkWutLBVGOWz4quLgO9SGEX8DehZBZ3eFKPIA2
 YKAmlN2DcFNbVzyNg3AeMdzSXfdV/n8w8NtIiD4KMf2H/VnFvLfIbnpOe
 KyOtD8Zt6s0YLXgjj7V0Em5k8uyWmmhRQh92lc5vARGKyXH5FhqNoavRn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SiK/7qj+
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/3] ice: add ice driver PTP
 pin documentation
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Add a description of PTP pins support by the adapters to ice driver
documentation.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v4: no changes
---
 .../device_drivers/ethernet/intel/ice.rst           | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 3c46a48d99ba..0bca293cf9cb 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -927,6 +927,19 @@ To enable/disable UDP Segmentation Offload, issue the following command::
 
   # ethtool -K <ethX> tx-udp-segmentation [off|on]
 
+PTP pin interface
+-----------------
+All adapters support standard PTP pin interface. SDPs (Software Definable Pin)
+are single ended pins with both periodic output and external timestamp
+supported. There are also specific differential input/output pins (TIME_SYNC,
+1PPS) with only one of the functions supported.
+
+There are adapters with DPLL, where pins are connected to the DPLL instead of
+being exposed on the board. You have to be aware that in those configurations,
+only SDP pins are exposed and each pin has its own fixed direction.
+To see input signal on those PTP pins, you need to configure DPLL properly.
+Output signal is only visible on DPLL and to send it to the board SMA/U.FL pins,
+DPLL output pins have to be manually configured.
 
 GNSS module
 -----------
-- 
2.38.1

