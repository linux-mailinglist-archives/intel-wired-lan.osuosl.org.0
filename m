Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96970C48828
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:16:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3663816DA;
	Mon, 10 Nov 2025 18:15:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVNV0gNHD9sy; Mon, 10 Nov 2025 18:15:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F6E480D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762798528;
	bh=YxQB6pSNYnVyKsNbzTc5maXDK292/qTdUT4ZjuUCYAA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0FOuQMpbwXSUVnqarWuRylpG4oYLmiUU61N6oyanPMHdSZe9hfIXl5QMi01zAmxts
	 +Cp7N+WfSulvmV2gkbwZ6OXNNmcXUb+aFaOECJRlLBzR1OM1OsIyIloM0WaHXfYBR9
	 x9ocescwhCXzl9awLPN1aqfoDh0viNUMo4MPy670WtVtzwTKrHBzN5eDgX6mhc9zog
	 yjaiqvzWZlIWMRgNrzVfGXghghMlXTbz0hFBSGAjfAxbXw0AEXCfpNNccHWsHG11y9
	 bjyLHoMPJlVyYUUGmrKCJZ3W8lGY9jtWxS8ipQLooXsdiPex+hG2fjcLTPj5+b/iFc
	 D5j0VYpw3W6Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F6E480D94;
	Mon, 10 Nov 2025 18:15:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9298A1CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EEF334066D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voyxtPfilJyV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B077400B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B077400B7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B077400B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
X-CSE-ConnectionGUID: cyzNgu6PTxiBAm1BXx5XqQ==
X-CSE-MsgGUID: 2ef39Q+CRfCJLPwS4QlRLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68497111"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68497111"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:15:22 -0800
X-CSE-ConnectionGUID: yYps9khsRfiJx6ucmP3LYA==
X-CSE-MsgGUID: GPqX35rWQVitbrLOI3Rx1A==
X-ExtLoop1: 1
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 10 Nov 2025 10:15:21 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Mon, 10 Nov 2025 10:08:23 -0800
Message-Id: <20251110180823.18008-5-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251110180823.18008-1-emil.s.tantilov@intel.com>
References: <20251110180823.18008-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762798522; x=1794334522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Sh6c7b6Hi90RoX/bOeWbivnnXi5ySOfBIpzuddrreJs=;
 b=XtxeRvSIUxze9VjqvdfFzo/FOkv5qG3sIigfw8OE6kq5+QXQ8hJ1YDBW
 3KYAB/AIeU3X3PDnWuYtj+I5E93o9MBst9xqnEPv7BrkJ92czwJSFUYJ5
 /QAsAszS/ESm45Hob5w+9ZhOGiAFQXMHY7SqVXGp0V+Dx9NtTXLsw9P2O
 BmTFFqmLX0cI/Ha6qdnNFciQfhmABMYvEs1bMRRCzQiHnfNB37gA7qFnx
 MZ/i5En1Bt/gCpoGQfBDcXUDh6Rw5wh31fUkVcSG0ZezRGc4vAsgj+0ti
 lHbj2VJ1ARwvgdvv60SyCKcMC7Mxn4yYbEdvBfNv3c2mcLyctHNRhSj/4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XtxeRvSI
Subject: [Intel-wired-lan] [PATCH iwl-net 4/4] idpf: fix memory leak in
 idpf_vc_core_deinit()
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

Make sure to free hw->lan_regs. Reported by kmemleak during reset:

unreferenced object 0xff1b913d02a936c0 (size 96):
  comm "kworker/u258:14", pid 2174, jiffies 4294958305
  hex dump (first 32 bytes):
    00 00 00 c0 a8 ba 2d ff 00 00 00 00 00 00 00 00  ......-.........
    00 00 40 08 00 00 00 00 00 00 25 b3 a8 ba 2d ff  ..@.......%...-.
  backtrace (crc 36063c4f):
    __kmalloc_noprof+0x48f/0x890
    idpf_vc_core_init+0x6ce/0x9b0 [idpf]
    idpf_vc_event_task+0x1fb/0x350 [idpf]
    process_one_work+0x226/0x6d0
    worker_thread+0x19e/0x340
    kthread+0x10f/0x250
    ret_from_fork+0x251/0x2b0
    ret_from_fork_asm+0x1a/0x30

Fixes: 6aa53e861c1a ("idpf: implement get LAN MMIO memory regions")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Joshua Hay <joshua.a.hay@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index fc03d55bc9b9..ca302df9ff40 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3570,6 +3570,7 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
+	struct idpf_hw *hw = &adapter->hw;
 	bool remove_in_prog;
 
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
@@ -3593,6 +3594,9 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	idpf_vport_params_buf_rel(adapter);
 
+	kfree(hw->lan_regs);
+	hw->lan_regs = NULL;
+
 	kfree(adapter->vports);
 	adapter->vports = NULL;
 
-- 
2.37.3

