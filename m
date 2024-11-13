Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 608619C78A7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 17:22:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 897494015C;
	Wed, 13 Nov 2024 16:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XrHohPOphoa9; Wed, 13 Nov 2024 16:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA9E640091
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731514890;
	bh=3ICGbkSTQGqtl0oEoG+aEZqAH+VmasQuMYuekwOdhgE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U7k72GAHk8N6BqyuCqEQiEeJVDG736+zZeOLfkM2XNHPo1J8hRQvQm7Bv8ZvdAcN7
	 zOK9ijek5ctJNu+py9Loi645CGefdZuuF8JHS8+IoRu/5xwPO6LzClyS1fYlYqzsnO
	 6Svx+2TKJn9JEKI7pMARHTHhfNIrhVSZFEsIEDbw3bU6XO3+sDIyS8u48xJ/PkeL3d
	 AdLcuRlC2e5mFFoB4CUgWkjUhDSTy/cr1/q17MECdtwvcVBvOPxcDjJP8A7jND74jh
	 fTG2tgQy3CIAuQno/iqN3t882ytNLUoqNJsS29sNboeml9xdY9gaWPqseIwuOCRi4f
	 RW4MUPzAcjg0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA9E640091;
	Wed, 13 Nov 2024 16:21:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E0601E2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDE5540B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gy_IjB1D8XSb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 15:49:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01ED040B03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01ED040B03
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01ED040B03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:49:32 +0000 (UTC)
X-CSE-ConnectionGUID: UFPvBXYETzOZxS1I47YPlQ==
X-CSE-MsgGUID: rkb+sHuzRi2JmgNPKUUhqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="48919109"
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="48919109"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 07:49:32 -0800
X-CSE-ConnectionGUID: BnI3RWUpQxu+9MHlN9r2uQ==
X-CSE-MsgGUID: niPavKQcQ6ODjmWInptQlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="92869407"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa005.jf.intel.com with ESMTP; 13 Nov 2024 07:49:31 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 13 Nov 2024 16:46:25 +0100
Message-Id: <20241113154616.2493297-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241113154616.2493297-1-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 13 Nov 2024 16:21:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731512973; x=1763048973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rL0Rj5BohAoFW1JXrmppR3BKs8WOPEHIQVuBaPVC7kU=;
 b=TuR+xSVfBHLuHKLt7kui4BGBxvn8pMbPhX08aAqWxrtnrz7MDbMAXfvO
 oOxZyT3TcpePMxklHXebIjrrbDBrnWXw74pEVhbQP/MMPxK4jKG2TMBW/
 s32c+48ar4Ecvt+8kbJ/CyebwQkvvEvnot9Bnbi8MSpBuRFKnpg1Zgavf
 JsIdXssaWlTOYzZ2AsDqggoAtzS2RFEfLEJFqa2H4iLv4mL+3fELs/8oC
 cYu2efkVfVrMfNpjeGmhmmONndRtm/69nAPG/Xs0LVjYC78h/zVfMmRLg
 ZogAPhLIvt738Qg6u70icx5kxsU6MjfrJLojw0N5YO02UnQoKUWBA1/LH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TuR+xSVf
Subject: [Intel-wired-lan] [PATCH iwl-net 10/10] idpf: change the method for
 mailbox workqueue allocation
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

Since workqueues are created per CPU, the works scheduled to this
workqueues are run on the CPU they were assigned. It may result in
overloaded CPU that is not able to handle virtchnl messages in
relatively short time. Allocating workqueue with WQ_UNBOUND and
WQ_HIGHPRI flags allows scheduler to queue virtchl messages on less loaded
CPUs, what eliminates delays.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 22d9e2646444..31fe3e4b8162 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -196,8 +196,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_serv_wq_alloc;
 	}
 
-	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
-					  dev_driver_string(dev),
+	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", WQ_UNBOUND | WQ_HIGHPRI,
+					  0, dev_driver_string(dev),
 					  dev_name(dev));
 	if (!adapter->mbx_wq) {
 		dev_err(dev, "Failed to allocate mailbox workqueue\n");
-- 
2.31.1

