Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE039634E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 00:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02D94412C4;
	Wed, 28 Aug 2024 22:38:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2hBVk1PU1eBY; Wed, 28 Aug 2024 22:38:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D736412B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724884729;
	bh=DVzEuSPmDj+iAacRq3rErQ3PEk9feswLEGv97dgP5zc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QMuXpxEayVcoOB4YaaQnrD3h2cyQtS6sy2taSQJl86Y3L7Wb92SUBQ15O7IDD+q2c
	 xHnlnAzxNBhzH51K/KtTW6P6LY4tgh8gf3M0zullsG190ZmIPHXCvObNdns8/w/3yr
	 rjSnkut4WIM/X0PPaQZwB0O3ygn5Jrw4fNqIFgsf8sbzVCFCWEHJDWSYwpl89eZb7u
	 ZJjuWT8wy//PFUbTR09IgRO99q2Glwc+yUDtS1zTJkiLHPa0Zd3d4xVBMbnWhYb9Gl
	 1j44/3VOfBizVPxEojWl9NM2or3SyD0+bZPOLc62ISh2EE927KJKqVFM3lvmsN2Eip
	 mOfUe+gROgNDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D736412B0;
	Wed, 28 Aug 2024 22:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D19E1BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 22:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 892F4401C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 22:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v2yLN1tzjB-q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 22:38:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 728F540236
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 728F540236
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 728F540236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 22:38:45 +0000 (UTC)
X-CSE-ConnectionGUID: 3qhFV7/nRsGQAzs7w//Y/A==
X-CSE-MsgGUID: M6L100HfQIWXXbPRvzop0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23608247"
X-IronPort-AV: E=Sophos;i="6.10,184,1719903600"; d="scan'208";a="23608247"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 15:38:45 -0700
X-CSE-ConnectionGUID: NGV8akfdSHeke9aq93rXpg==
X-CSE-MsgGUID: Zk9WEy4wR0mTYEksNkKUVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,184,1719903600"; d="scan'208";a="100888382"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.218])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 15:38:40 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Aug 2024 16:38:25 -0600
Message-ID: <20240828223825.426647-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724884725; x=1756420725;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KZWolL2TmTaVYvdYvu+u9TBPy20nwbHqirp669p/JBU=;
 b=fkZB8XMRrRu2hYy1ZYaOeeZEUGrKaKaE373U0qZWFzFcf5R2tk6UxP8f
 iTeOfpE2OCIdA7QXMAjNXvKeE/gIye8tHgIqCkyLzIyRugOGE5PLvfSh2
 5KTwNY7xNkRAKo7X9+E5GqxBLIpiGqM39RDGrgF1H+Bmgo99zE8XYNsSz
 Jh3sZRE+Ur1YCQrguXanF+m19ymsx/LGy9eyQpLfke4Yw7b/wD0PqMPF4
 truUcK1IIQR9VJVPbsLorZr20n5yWorkpBXZJk4fNz1QF14FdQCcrPADT
 3/+qPXEIrz1ppoQ2cZMNv6ea3+EjrxiCzkRFaH0NlppoftkLcqkmv4mMn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fkZB8XMR
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix VF dynamic interrupt
 ctl register initialization
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
Cc: netdev@vger.kernel.org, pavan.kumar.linga@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The VF's dynamic interrupt ctl "dyn_ctl_intrvl_s" is not initialized
in idpf_vf_intr_reg_init(). This resulted in the following UBSAN error
whenever a VF is created:

[  564.345655] UBSAN: shift-out-of-bounds in drivers/net/ethernet/intel/idpf/idpf_txrx.c:3654:10
[  564.345663] shift exponent 4294967295 is too large for 32-bit type 'int'
[  564.345671] CPU: 33 UID: 0 PID: 2458 Comm: NetworkManager Not tainted 6.11.0-rc4+ #1
[  564.345678] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C6200.86B.0027.P10.2201070222 01/07/2022
[  564.345683] Call Trace:
[  564.345688]  <TASK>
[  564.345693]  dump_stack_lvl+0x91/0xb0
[  564.345708]  __ubsan_handle_shift_out_of_bounds+0x16b/0x320
[  564.345730]  idpf_vport_intr_update_itr_ena_irq.cold+0x13/0x39 [idpf]
[  564.345755]  ? __pfx_idpf_vport_intr_update_itr_ena_irq+0x10/0x10 [idpf]
[  564.345771]  ? static_obj+0x95/0xd0
[  564.345782]  ? lockdep_init_map_type+0x1a5/0x800
[  564.345794]  idpf_vport_intr_ena+0x5ef/0x9f0 [idpf]
[  564.345814]  idpf_vport_open+0x2cc/0x1240 [idpf]
[  564.345837]  idpf_open+0x6d/0xc0 [idpf]
[  564.345850]  __dev_open+0x241/0x420

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 629cb5cb7c9f..5d4182ca0ff6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -98,6 +98,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 						  reg_vals[vec_id].dyn_ctl_reg);
 		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
 		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
+		intr->dyn_ctl_intrvl_s = VF_INT_DYN_CTLN_INTERVAL_S;
 
 		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
 					       IDPF_VF_ITR_IDX_SPACING);
-- 
2.43.0

