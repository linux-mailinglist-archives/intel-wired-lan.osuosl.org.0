Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD34A5FEEF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 19:13:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B719419AA;
	Thu, 13 Mar 2025 18:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B7t1orpjJR97; Thu, 13 Mar 2025 18:13:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77515419AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741889613;
	bh=q2ok47Jt4X+E4/SuScU2mMCNR0LdTWnxROKj8iobnEY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g2tccRGaGzVYdzrsuJXrY7WgqhiDLYYLnKPDy++dC9tZmeIDE1uKkCs9sLBjrJTib
	 Gw8eF9dI+vinbWrtN92j8/ff6Cw/OwvxRpTuqOyRCb9mDtbDenwpwMJ2ZvMt81tsmW
	 5V0Z6MVBLlci7kC7TOIVXSl8eaBBUndR0zlpjo1Wph/GxstRymA5jICtKB9YTMu9Sw
	 f2CS5577A91scKJ7MtgUvfPX/Z9ljcGBitV+4nvLesNilFL/JSRuQBaL41vHDswJeF
	 HyfHR8geT+KSeGC3dF2jZTN4+syWoKfhuU3pRizatR9JQxawkvOtLOiBtt4zToy3W2
	 wHajIyqxH9JgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77515419AB;
	Thu, 13 Mar 2025 18:13:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A6BD115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 18:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E200B4192D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 18:13:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SXMIF-k75W66 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 18:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBE5F4180E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBE5F4180E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBE5F4180E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 18:13:29 +0000 (UTC)
X-CSE-ConnectionGUID: poftMj1aRyWNBeOrbiBnSQ==
X-CSE-MsgGUID: 2jpaZGNWQ5OlMMqtnUT/pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="45796157"
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="45796157"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 11:13:29 -0700
X-CSE-ConnectionGUID: VDqiAx98RHCN69gZB+8IFQ==
X-CSE-MsgGUID: zdw+c4wdRva4d9ZECrC+nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="120990628"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa010.jf.intel.com with ESMTP; 13 Mar 2025 11:13:28 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 13 Mar 2025 19:04:31 +0100
Message-Id: <20250313180417.2348593-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250313180417.2348593-1-milena.olech@intel.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741889610; x=1773425610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N77XQ5Q5mO4PoQ6m80+S+vewn+DOxv1GOBJVib08tpY=;
 b=HcnHBRNXKRd7JteQ5oHnqDOGWR280XUc734FAOqsLl9bDeyLjWnKc9lY
 //Cij/h1KJh/Oqk6EHju60K0wjuRLgeqkz7GLxnRxx3HV6gcM986BkQO5
 82L+8TtHtWxbNydDOzUvUAOJR0RBVAMS2eTeKo4Eeh651nCA3PWuMIxK/
 OLeKzoer+04QeCpmhg3quZVL1tK9Pd/rTfCOe9MPLIqQScRDJYzwm52Zp
 7HoighAbrLRnWYJj+tjuD49Jxb8LIUoOsP8CI3I6XmJg/bZ76S+KiiXIL
 UgOXJlW/pJ2VB+MmLIjDIY9RR8T7n7TfZpv5Rh393CU4ozIhysPX+k4fQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HcnHBRNX
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 10/10] idpf: change the method
 for mailbox workqueue allocation
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
 drivers/net/ethernet/intel/idpf/idpf_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 60bae3081035..022645f4fa9c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -198,9 +198,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_serv_wq_alloc;
 	}
 
-	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx",
-					  WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
-					  dev_driver_string(dev),
+	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", WQ_UNBOUND | WQ_HIGHPRI,
+					  0, dev_driver_string(dev),
 					  dev_name(dev));
 	if (!adapter->mbx_wq) {
 		dev_err(dev, "Failed to allocate mailbox workqueue\n");
-- 
2.31.1

