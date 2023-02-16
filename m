Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA956999AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:17:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0042861390;
	Thu, 16 Feb 2023 16:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0042861390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676564244;
	bh=TnLrmP13Q+gu5iUPZTCZnqx06f24PBu6zKs6m2pZbAc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1bM8vJxRjntsjOHsUWG6U9z3aiJBf5PI9/TOJci6WdEStvWh39y8qMKGMHJVHwaNV
	 NpLuoiGPN5TLvE/jyWzH1dj2GhhKjJGW776y9PiI8MxY4YJDJAAynMnApOZImajy+G
	 emWb/liZUkAOF1mY1MG7wHAMP6lexkuzZFrGvkTpstJZdnsPP2swAINh6QIDa49P97
	 fq+Fxcd12jpqTcomZsBLy+RBZaViundJsZj2zyp6zIOHOWgxgByLioohAjdrRUgJVd
	 TV8lWFE90Dt11Ol1AT8tuvpFzW35V3OgbYJ8lPyoKqbTHIfjN+EBOojYVdkfJmvYbE
	 KedruY22dijVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HshI_CMfdlnv; Thu, 16 Feb 2023 16:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D939A612E6;
	Thu, 16 Feb 2023 16:17:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D939A612E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77A121BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75106611FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75106611FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9W27iZAJPd6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 14:15:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C64A1611EB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C64A1611EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:15:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="359154744"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="359154744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:15:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="738838113"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="738838113"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:15:23 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Feb 2023 19:30:37 +0530
Message-Id: <20230216140043.109345-3-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230216140043.109345-1-tirthendu.sarkar@intel.com>
References: <20230216140043.109345-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Feb 2023 16:16:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676556928; x=1708092928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fQOCxIE8Vug33nuPr6N/oWj2esZ1BirVCdf4vT/UzE0=;
 b=QXnaqOQz2646X7dqqFFznPUVup/rNeaLdyOSrOabsmQ0fFMtd9gu9ZOZ
 vy9KJvmJKuw2w6+mZLaZDBc+u9s7vkdFiCvI3giSwbepAdTPfJi95PGde
 CrK7fH7oGivh4S73Vn1pa9cJb1Y514X8EwnHXSBbRkjhOzAsk2YORCp+5
 E798T2bEmnW1vtQpTv9plWv6S1guvovxRPiuxeZnAVRDsocX14P8t+DWg
 8r+mxjp9uZI1oNpkVjW/Wxk8JozOe2ZZGEZvPZcqAWt7x69f76EFSO44q
 559ANKSPuB1aXhqs/Il9rG1OJoEgtj4KX+/Xk6ybqNbWGDc/KaSVcSkKC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QXnaqOQz
Subject: [Intel-wired-lan] [PATCH intel-next v5 2/8] i40e: change Rx buffer
 size for legacy-rx to support XDP multi-buffer
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adding support for XDP multi-buffer entails adding information of all
the fragments of the packet in the xdp_buff. This approach implies that
underlying buffer has to provide tailroom for skb_shared_info.

In the legacy-rx mode, driver can only configure upto 2k sized Rx buffers
and with the current configuration of 2k sized Rx buffers there is no way
to do tailroom reservation for skb_shared_info. Hence size of Rx buffers
is now lowered to 1664 (2k - sizeof(skb_shared_info)). Also, driver can
only chain upto 5 Rx buffers and this means max MTU supported for
legacy-rx is now 8320.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1c7b1f4d4936..3c387f6037d5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2903,7 +2903,7 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
 {
 	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX))
-		return I40E_RXBUFFER_2048;
+		return I40E_RXBUFFER_1664;
 
 	return PAGE_SIZE < 8192 ? I40E_RXBUFFER_3072 : I40E_RXBUFFER_2048;
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 768290dc6f48..1382efb43ffd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -97,6 +97,7 @@ enum i40e_dyn_idx_t {
 /* Supported Rx Buffer Sizes (a multiple of 128) */
 #define I40E_RXBUFFER_256   256
 #define I40E_RXBUFFER_1536  1536  /* 128B aligned standard Ethernet frame */
+#define I40E_RXBUFFER_1664  1664  /* For legacy Rx with tailroom for frags */
 #define I40E_RXBUFFER_2048  2048
 #define I40E_RXBUFFER_3072  3072  /* Used for large frames w/ padding */
 #define I40E_MAX_RXBUFFER   9728  /* largest size for single descriptor */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
