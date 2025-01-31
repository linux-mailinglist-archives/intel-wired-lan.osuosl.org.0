Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ACEA23D99
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 13:14:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EDAE60B50;
	Fri, 31 Jan 2025 12:14:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-MnXs7DHAvu; Fri, 31 Jan 2025 12:14:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06A1060B4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738325698;
	bh=uIxHP7l6OVAJ/xjLOaUGjgZeAveGuOVRPm4gmnhkAaU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W/p/fEaoqDYIfRQZcI1lsdidtqWdzAPJPORQVJXu9KmaFxi08Duf1fa1zGfx8MPwg
	 /NU4JeEVzhg7Nhp6pCnD9zBDCTyrTK9oc4uZ3bnZCdGrPu+nmejR4AwhdL+WTcg3Mr
	 OUc6ryDl1myo6gKYpAoJB8n/qo8Fv4t1u45pgDi/YNRXRv/XYAp+mnU0mcj9DHPdPg
	 QHExwOBRU6+1rlOz/pom0v1BqFE2vGn9OTxW6mcZkWopt6cPpv2FA2wfGiD05k6Wcy
	 qbS3dntOfZp0VdeJQTJ+kI/Tol8eVctc90K1kje/tR18y2aD+RnnlKvk37haob6aFe
	 iffcOaNJ6n0XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06A1060B4A;
	Fri, 31 Jan 2025 12:14:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0061D12C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 12:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF64B40575
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JfhF6JG4SwKE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 12:14:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 129AB40529
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 129AB40529
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 129AB40529
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 12:14:54 +0000 (UTC)
X-CSE-ConnectionGUID: WBCRDYeeRnew9l7UtyRZtg==
X-CSE-MsgGUID: pxDIjmM+TPK2ovJlcOcBiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="39032059"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="39032059"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:14:54 -0800
X-CSE-ConnectionGUID: btKywjmAQYae50aS/oLvFA==
X-CSE-MsgGUID: +6GzjmJKRzezzRJA42f4+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110188597"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.87.141])
 by fmviesa010.fm.intel.com with ESMTP; 31 Jan 2025 04:14:52 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, dan.carpenter@linaro.org, yuehaibing@huawei.com,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Fri, 31 Jan 2025 13:14:50 +0100
Message-ID: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738325695; x=1769861695;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ectFna4j8mXYtc7xq5aabbYrNLki2dKAI/mLOsusxLw=;
 b=KKwwCdr78ujm5I17+73L7pxoWIvWGI3K42loCIlMSP5e1VAsWugM1xqN
 KZNidbxQyWuNXDwr3XMN7RxR7crgiVQAeyDeukZOU0PJfRY7jVjAo46d2
 hGrdRoHiT46o7HnqrdRgiSrNfnb+xpNeTfUiFpn44AccRql1F/GZ0VOlQ
 vYg9iVW1nVx2EO189m/o1EGRk1o7BZBTbCW3QLOuEtK8agPT+b0/ow3/z
 dojUbTLH0QtMD4Gwi1Jikk6Rto5cJ9gdtKdghwhV7kDY11zVmrtKf3luJ
 qCMBILC6YRBjN8FpEShp1ekyE0xPXGAGuyg5+rQQedExtKjjZ0qTUd5tT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KKwwCdr7
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: Fix possible skb NULL
 pointer dereference
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

The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status
encoding. Propagate this logic to the ixgbe_put_rx_buffer().

The commit also relaxed the skb NULL pointer check - caught by Smatch.
Restore this check.

Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
v1 -> v2
  Provide extra details in commit message for motivation of this patch
v2 -> v3
  Simplify the check condition
v3 -> v4
  Rebase to net-queue
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7236f20..467f812 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2105,7 +2105,7 @@ static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
 		/* hand second half of page back to the ring */
 		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
 	} else {
-		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
+		if (skb && IXGBE_CB(skb)->dma == rx_buffer->dma) {
 			/* the page has been released from the ring */
 			IXGBE_CB(skb)->page_released = true;
 		} else {
-- 
2.43.0

