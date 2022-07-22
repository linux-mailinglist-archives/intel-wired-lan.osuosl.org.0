Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF4857E2D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 16:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1780F8002A;
	Fri, 22 Jul 2022 14:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1780F8002A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658499130;
	bh=kMfxhub9qWPgLf63qlKL6DSnopbliBebOP30JTBj3mg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lGjs3yDHa/CQjvDMj6QsZ8A1WKWhr8x9sqxqHD0iLefY71lwhzEXfFX7ORO1SpUtu
	 dpzY/DW8aG9TNbrPjEnmlH+q2tmsbA654BK0M/STr0RJyuzHDshpe3yLDMRmylDsra
	 ZPqmTCGyqpI9bBHX3WBukPzakPHo/WrDaoSKaWB14jRygleejRkQfRAdfpyKpgwOIa
	 0VN270D3i4UeC/A66a3xjcj0nIEb4XcwFXFAJZW/Zi91LNPq6E1IB2FQaIDX5gZH0M
	 PzLDRTBdp0/2Nu+Wng4A4FQuYuTDPL20aFrGLbDldpkPaetbZuTt6TxSLEvi6Vtx22
	 7reiAsVfHieoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0QNGquG5zUu7; Fri, 22 Jul 2022 14:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15B74849B1;
	Fri, 22 Jul 2022 14:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15B74849B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC9961BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 14:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C55DB4233B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 14:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C55DB4233B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csQLaVDXuQzh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 14:11:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDD2242355
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDD2242355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 14:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="288490927"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="288490927"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 07:11:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="926058664"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 07:11:50 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Jul 2022 16:11:29 +0200
Message-Id: <20220722141129.229436-6-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220722141129.229436-1-michal.wilczynski@intel.com>
References: <20220722141129.229436-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658499111; x=1690035111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tufK50diQRWMUPRJoGqADhw/+l5i6dGqFp9lUj6khtA=;
 b=RCY+pN9LmMTgniG0ZMB6SXF0Wm8Q7+onkCKDPYpUej8GVzf3uJxqNgLm
 G+IiubmmcFTnfAi7BJ84QjO4IVXSFw9fQA2kqOZ/wJkvLYw+nhnBbbzMO
 cQQfgGRMdcFE8FGcPV3sXa7cTeNlNpdM/G6UvaroVW08Gfw1BRzQi5qMa
 6urVOCS53xXqbuQz8ykrSfk7eXxNqOyJMJPD9Qtjxsvnn5LgofwQi8IVY
 HOkm4Z6tIZUprHaf9j0td5lOCtvsidXVD9tLQm728MPPZIIHZWXk9XKMk
 XVKRfLvXNaIqINsAdO+9sjiTULYxqcPF6Ibj3R7Mz6yaidxIiyUe21372
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RCY+pN9L
Subject: [Intel-wired-lan] [PATCH net-next v8 5/5] ice: Document txbalancing
 parameter
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

New driver specific parameter 'txbalancing' was introduced.
Describe parameter in the documentation.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 Documentation/networking/devlink/ice.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 8c082b139bbd..d260a58d1d5d 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -7,6 +7,23 @@ ice devlink support
 This document describes the devlink features implemented by the ``ice``
 device driver.
 
+Parameters
+=============
+
+.. list-table:: Driver-specific parameters implemented
+   :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``txbalancing``
+     - Boolean
+     - permanent
+     - This parameter gives user flexibility to choose the 5-layer
+       transmit scheduler topology which helps to smooth out the transmit
+       performance.
+
 Info versions
 =============
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
