Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3158AE9AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 16:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAAB140362;
	Tue, 23 Apr 2024 14:41:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RxpJn17NcbWT; Tue, 23 Apr 2024 14:41:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0571F40228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713883278;
	bh=VmbkALwYiBZgzR0dX851nMYn2Nbo8gi6o873BpshFoY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=R2rcXhX+O1jd1nFz9g00IQeFXlUPY8Pyci2AUaGSDaT4yYmUQ7IMi2Tx1w6+VDCRP
	 zg2auCTTUgd5GtgbUmLbhxUplOmQ7URpmBC6iEn3/Rv5ARpzLVlVV9BrygKtb6dwff
	 GXwAG7EsgWQV/J6YE/wu7HCO94Ofwgqh01/y9cSRsO3n8K2mixEEcveR0ZjDyaP8Ee
	 urwiBVBMQOVopzbJL5btwxSIID1d7xDmn0f3mTBbu3aH4oTn5j7cBAU/GEjdXSZzhF
	 pdS8lKd4nv3pM+LZjJek9W57m+UnVvbVqJPTSSP0uMEQK4oOl4+ObfNowFQnbOwGN2
	 BWKnMPxox8AuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0571F40228;
	Tue, 23 Apr 2024 14:41:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE581BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 850AA4024D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBKnRsKCVXtG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 14:41:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=ilpo.jarvinen@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9BAC240228
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BAC240228
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9BAC240228
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:41:15 +0000 (UTC)
X-CSE-ConnectionGUID: JcfqKAkMRqqTKgYrFwdNqw==
X-CSE-MsgGUID: hfPm5FkAQHOpktDRlKNL7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="12402885"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="12402885"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 07:41:14 -0700
X-CSE-ConnectionGUID: 7l8+2zYiQMSa5rnSI9HzpQ==
X-CSE-MsgGUID: e57XYyf+SfOQ1IIN3xF25w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24260682"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO localhost)
 ([10.245.247.40])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 07:41:11 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 23 Apr 2024 17:40:59 +0300
Message-Id: <20240423144100.76522-1-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713883275; x=1745419275;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JmDbnp7jB3iYKQ7kmrwc2e3Fj/aFyXr9ucUALcAe+xo=;
 b=RgF08P3uVipErfhiQtXZCzHb3bcjMx0GBAqaOF/AQjBKlB9SB6uH4heI
 ngpkEds90JLkNBTvQXPUtjrZxn7Lg17qD4eO+Q/l1Zt6+RIqLcSyh9z96
 L5us0bqSjqnUIs0wCnihjeTE/4K5vzTBuBK4bAN6Ji0gEvQOSAC2JD64l
 MgRqZlNbuwIvfraqtA9JGOT38TnCjBm19pxMKEvsqBVSNREjgJbLMYCka
 sGVUe1zcN9NALd6OjyNC64QA6pUn5j1beOGGVJUWlWJWGyotF8m+Y6Z21
 bP6qZuK9x4o0pPHhXCQejamx35mnGHHcleBEOo+B7TXbMZHH+QJLD2H2K
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RgF08P3u
Subject: [Intel-wired-lan] [PATCH 1/1] net: e1000e & ixgbe: Remove
 PCI_HEADER_TYPE_MFD duplicates
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PCI_HEADER_TYPE_MULTIFUNC is define by e1000e and ixgbe and both are
unused. There is already PCI_HEADER_TYPE_MFD in pci_regs.h anyway which
should be used instead so remove the duplicated defines of it.

Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000e/defines.h   | 2 --
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index 23a58cada43a..5e2cfa73f889 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -679,8 +679,6 @@
 /* PCI/PCI-X/PCI-EX Config space */
 #define PCI_HEADER_TYPE_REGISTER     0x0E
 
-#define PCI_HEADER_TYPE_MULTIFUNC    0x80
-
 #define PHY_REVISION_MASK      0xFFFFFFF0
 #define MAX_PHY_REG_ADDRESS    0x1F  /* 5 bit address bus (0-0x1F) */
 #define MAX_PHY_MULTI_PAGE_REG 0xF
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index ed440dd0c4f9..897fe357b65b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -2179,7 +2179,6 @@ enum {
 #define IXGBE_PCI_LINK_SPEED_5000 0x2
 #define IXGBE_PCI_LINK_SPEED_8000 0x3
 #define IXGBE_PCI_HEADER_TYPE_REGISTER  0x0E
-#define IXGBE_PCI_HEADER_TYPE_MULTIFUNC 0x80
 #define IXGBE_PCI_DEVICE_CONTROL2_16ms  0x0005
 
 #define IXGBE_PCIDEVCTRL2_TIMEO_MASK	0xf
-- 
2.39.2

