Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6FD77EE1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA48E4178F;
	Thu, 17 Aug 2023 00:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA48E4178F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692231157;
	bh=3h1MOIzBBShfeAB463zhlzfMwipzxlzEE24Y73HRKnU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UGe5RHETeIsWs2jj2dYl/HBQ3O6jF06wbyMxgBaKJgVg7KStCF2BFbVo6ndgkW113
	 ILuYmbC/sJvEyG/SbC3HXkP/AJr13jZmUHMffx7DnepS+j4jjH7lDkmyO0kNHWsSvg
	 T20Pa+N6O1IiOeIJMPTWefoULKl5pTe0dLq617GrhgXRWqEKpGqXK/We7ScRK8j62z
	 InY9On4D3n0TPZJ1TPgSDDVV6y17SCO099JrJq3oFh6CNX5xpomh1BJyfT167XKoHC
	 dIO1tjzgUQG4S+77b2A3VOqY7GBSzjQhYwia7b2wFpoCNDyfhiTN5dO4rDWDXtqeqw
	 XdscF97G2yDww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmSpZoy0g3oI; Thu, 17 Aug 2023 00:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0B884177F;
	Thu, 17 Aug 2023 00:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0B884177F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25AB41BF97F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BFEF61420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BFEF61420
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hi1FbdYekh_k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:12:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 666FC6141F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 666FC6141F
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371570666"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371570666"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824422151"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824422151"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 17:04:55 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Aug 2023 16:57:19 -0700
Message-Id: <20230816235719.1120726-8-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816235719.1120726-1-paul.greenwalt@intel.com>
References: <20230816235719.1120726-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692231143; x=1723767143;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7CpkAGm9AMDYpLCrvBWk5/DAhJHRJZsYuZXPpX0QRn8=;
 b=invAuFCx0eoVkxiPZHDYIfq0/KMo6d8pd9ESjq+QGjRjUDa+jNMJ0TL7
 ogDE7LV+S8gS+v298ltqJpA/S5suvKG5OkNW3W2c1qw37kku207IlCR7j
 Q+pXz4PammFiA8LSWxougZuLJsz4Loe4ZS5L8RTEgT9uA0krpO9qvIH68
 ShXz/RSk4JjRIruM2OBIVugAGPDAy234orq6hKz60JyGJ6jno3gGeZpmC
 rY+GLEAPB6J4WDdNGl6H/+H/ZhSkan4QflZV4qweCK3oP0JLiurOmU1XQ
 RgIKLKezut5KF22KLmU/6G9xKHKpd++DZQV3sG2k0U8/8ealDnEkAcKvl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=invAuFCx
Subject: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable support for E830
 device IDs
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

As the previous patches provide support for E830 hardware, add E830
specific IDs to the PCI device ID table, so these devices can now be
probed by the kernel.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d6715a89ec78..80013c839579 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5630,6 +5630,10 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T)},
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE)},
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP_DD)},
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT)},
 	/* required last entry */
 	{ 0, }
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
