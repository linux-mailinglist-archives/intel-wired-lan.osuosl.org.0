Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5F09B0D7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 20:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD4DF81F74;
	Fri, 25 Oct 2024 18:39:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34FKdGF0PchY; Fri, 25 Oct 2024 18:39:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11F3081F79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729881548;
	bh=pD9qKGsPFlmcoHjdnhu4BxPy7JnhxUyHOOOkUrMjQVA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wvdumNYeswHKoIZhcHXxsNy7Vm3x4sot3dtQ8jv3Dxec7EUsla78hVSoLUwqV5nQS
	 ORctuYyP7eULHFFy1srfQACrpe6zR+Yu67ze97GqVK1iByZPM7jTdWN3OMOI7NYt3d
	 GZ1JRZEPFYUh5ZyXU5MtdX0yLx1ntAoMeKjn9pWu17xjLeJD6/5T30Z3SX/WoGCE/e
	 OVSPxCdZCotrGpT3zXmV3PlfEWggwVpEi5iCMA7oDIUyCHIUSO55kstOaqLEtU+Kxs
	 t2YODtT9L4NtsyhQtPb5BwYJfvxkyJaAnG0cnWQX0rCUk22qHAbvtV8VE82ndbj9vz
	 PqUkYpK44m3Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11F3081F79;
	Fri, 25 Oct 2024 18:39:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 48A2E281F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0AB1A40C2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mz299Y5Z-XI2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 18:39:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 06DB140C07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06DB140C07
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06DB140C07
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:02 +0000 (UTC)
X-CSE-ConnectionGUID: ESG3I8J+Qk2xW/mx2nVoWA==
X-CSE-MsgGUID: jbKTtxezQaqsSU+b64/GRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="47043919"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="47043919"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 11:39:02 -0700
X-CSE-ConnectionGUID: 3SK9+lIgQBWWmJEB/H1QtA==
X-CSE-MsgGUID: 2p0lTE3lQKGAi7JjqjbOoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="111801069"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmviesa001.fm.intel.com with ESMTP; 25 Oct 2024 11:39:01 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, horms@kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, stable@vger.kernel.org,
 Tarun K Singh <tarun.k.singh@intel.com>
Date: Fri, 25 Oct 2024 11:38:43 -0700
Message-ID: <20241025183843.34678-3-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
References: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729881543; x=1761417543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I8YZGZ9p3OeghO1769h9aaICc2jEgTapOOmPgdolGSM=;
 b=PqR/x/nPuJWvlI4oPZ+1fd3qshsh0fiQ1Lhg1n2w6LE5dcEAHdHIlRFN
 P84JgjODjx0IUeszezBVkEffK0tXP3gYWmAP4E7BCW+f3fr6+1Wnuv9Vz
 vlL75/aPlJwxM5hVFK6UqLVi3BzAu+Fa/jEccBb9w0/RLlRgMbORvGumr
 +/HctmmT/vcaOVKfxxUQEX2tlH7zPgQHnANhY4u4nkeU2HXd76XEAvqY3
 5NhGPrgdtETRjpBZGgmcu7x5OGR8paQKG/Lk7oUmBK6AVtPKDi27DqP48
 ee1+YZh+LjbenV54CNbbMU1szN9qGncSoDTPB7PftZ1FZAZMTv8KFXB+z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PqR/x/nP
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] idpf: fix
 idpf_vc_core_init error path
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

In an event where the platform running the device control plane
is rebooted, reset is detected on the driver. It releases
all the resources and waits for the reset to complete. Once the
reset is done, it tries to build the resources back. At this
time if the device control plane is not yet started, then
the driver timeouts on the virtchnl message and retries to
establish the mailbox again.

In the retry flow, mailbox is deinitialized but the mailbox
workqueue is still alive and polling for the mailbox message.
This results in accessing the released control queue leading to
null-ptr-deref. Fix it by unrolling the work queue cancellation
and mailbox deinitialization in the reverse order which they got
initialized.

Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Cc: stable@vger.kernel.org # 6.9+
Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
v2:
 - remove changes which are not fixes for the actual issue from this patch
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c      | 1 +
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c3848e10e7db..b4fbb99bfad2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1786,6 +1786,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	 */
 	err = idpf_vc_core_init(adapter);
 	if (err) {
+		cancel_delayed_work_sync(&adapter->mbx_task);
 		idpf_deinit_dflt_mbx(adapter);
 		goto unlock_mutex;
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3be883726b87..e7eee571d908 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3070,7 +3070,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	adapter->state = __IDPF_VER_CHECK;
 	if (adapter->vcxn_mngr)
 		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
-	idpf_deinit_dflt_mbx(adapter);
 	set_bit(IDPF_HR_DRV_LOAD, adapter->flags);
 	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
 			   msecs_to_jiffies(task_delay));
-- 
2.43.0

