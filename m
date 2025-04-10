Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 060A3A84215
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 13:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82A0061B08;
	Thu, 10 Apr 2025 11:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vHw54we3Eiwk; Thu, 10 Apr 2025 11:52:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB2F66077E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744285968;
	bh=oei292ftam7Ey6ykaRFzGAzp4oJESMKypwp9q1zAnIw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g8VyF37KmlPOIRKk9r8xIkPBILBEWZllLCqmPpdjRoJdy1a0uGt5obowiv93F9GzQ
	 zJ92gNH9puBFyIsBC19AMZasCGVQlhn0WAGe/E1wWaE4OltfbPgGilP3CdpkM80aqJ
	 8D/f3pgsw6zIqvyKbV/l2B/By+9uoZpzqQV3rTZitf7AM+8Wr+KFaQkiiYHgHgMvSL
	 cqwQLN2RXnVNSneK39VKflP2ms8qH3FFeb1e8JFzN0rRpafvPvONG/nuTQCqRqCWVT
	 g9BCAngrojw9F2sN8wGiU1OAtY4ULanP45LsVJIj5yXl0qLqNsuSdKyl4OTnHGG5qn
	 gKNiP27rMLd1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB2F66077E;
	Thu, 10 Apr 2025 11:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E15CA201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 11:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C75FA4134A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 11:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GRVoYrEaoTKa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 11:52:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 338084002C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 338084002C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 338084002C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 11:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: FH9G9o6aQei8HE98yC9brw==
X-CSE-MsgGUID: mEIwPl+PS3izHsf5Na+HZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="44939953"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="44939953"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 04:52:42 -0700
X-CSE-ConnectionGUID: YHA03Bs4SNi8jD6bPNuJYQ==
X-CSE-MsgGUID: q617/JOcRmiqox68+dv2oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129731691"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 10 Apr 2025 04:52:39 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DD87C34312;
 Thu, 10 Apr 2025 12:52:37 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 10 Apr 2025 13:52:23 +0200
Message-ID: <20250410115225.59462-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744285965; x=1775821965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XFQzoxeqsD9v2JOgNHZGxnrAw6ddmJkdJnpFrk0ivkc=;
 b=Y0d/qsV1/t9g2si/ywVQmrzVVejBsTd3Ofet9s1pb3fPHAvZHY+8kT2B
 VsIO4CtXtkfVXvPlqENxIKZGezy/jb37YDZ8MvTef+9GEnA90k7gm/3L0
 XToxtq2TJAjQ/G6nJmdhXDCLzfCvVeYwPQdZJRr+/jkAWe7au4iDZ7D01
 8BxkrJHILArZaBHcBmXUBWIFOguAFS1xpKFKiSb7l0z1mNPMd/CmxC/sq
 0yRG/azjAhWv2y83yxyCOt6UA4JNlihpI33WRHdXsGu/i2NLzo09eJWa1
 2HWSXWW7Y4HNuFIyPsG4gPRB7ZzyraAnCgFGzfXG/W/BfkL4q01wjSBZF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y0d/qsV1
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from reset
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

Before the referenced commit, the shutdown just called idpf_remove(),
this way IDPF_REMOVE_IN_PROG was protecting us from the serv_task
rescheduling reset. Without this flag set the shutdown process is
vulnerable to HW reset or any other triggering conditions (such as
default mailbox being destroyed).

When one of conditions checked in idpf_service_task becomes true,
vc_event_task can be rescheduled during shutdown, this leads to accessing
freed memory e.g. idpf_req_rel_vector_indexes() trying to read
vport->q_vector_idxs. This in turn causes the system to become defunct
during e.g. systemctl kexec.

Considering using IDPF_REMOVE_IN_PROG would lead to more heavy shutdown
process, instead just cancel the serv_task before cancelling
adapter->serv_task before cancelling adapter->vc_event_task to ensure that
reset will not be scheduled while we are doing a shutdown.

Fixes: 4c9106f4906a ("idpf: fix adapter NULL pointer dereference on reboot")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index bec4a02c5373..b35713036a54 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -89,6 +89,7 @@ static void idpf_shutdown(struct pci_dev *pdev)
 {
 	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
 
+	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->vc_event_task);
 	idpf_vc_core_deinit(adapter);
 	idpf_deinit_dflt_mbx(adapter);
-- 
2.47.0

