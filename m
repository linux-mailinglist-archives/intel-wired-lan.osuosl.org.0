Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06073875A33
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 23:25:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DB9541BB9;
	Thu,  7 Mar 2024 22:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAWCP6_HX4pJ; Thu,  7 Mar 2024 22:25:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1D4941AEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709850332;
	bh=HFvr6B/TP+qGz9HSRoKDXnwBHxBaTqxjGFIt+HBqEDI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WIsoeudvQ4skQghZzBySEAYiAbh21pUVRx6Q6XjTKK45Mge59q8m9gGpz5Dvgrelt
	 +HoFDPLLQEQmaJtUoI3BwuR3Q5eu1abfd2496aiObJbrZjUDYOiMMBr2r4arUpr9d2
	 mLs1Ybw17ENG5geNVh51naxIFCDvkBAX6Srs6cLnpuooOK/16noqiJq3pa0obygkpn
	 LRWu+ytHwbSMiaFMUiY2z7l2xAoojTt5npsdDtvNRKPWx8/soo9h2/3hQHK0CnF4Xp
	 UgtkeMz+x+yTtW4CMnOJvPJ/T6le+I24GAok3+zRQ/hz0XceT/fFWakYksi2I7LfV9
	 s9AjYAvES5x2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1D4941AEB;
	Thu,  7 Mar 2024 22:25:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D37781BF57F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 22:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE3CC4192B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 22:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rfis7ck3e3EE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 22:25:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8305E4192A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8305E4192A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8305E4192A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 22:25:27 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-465-eS5mvd5cMbeCZhE-fGYD5A-1; Thu, 07 Mar 2024 17:25:22 -0500
X-MC-Unique: eS5mvd5cMbeCZhE-fGYD5A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1AB3588F2EA;
 Thu,  7 Mar 2024 22:25:22 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.224.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE20B1C060D6;
 Thu,  7 Mar 2024 22:25:19 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Mar 2024 23:25:07 +0100
Message-ID: <20240307222510.53654-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709850326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=HFvr6B/TP+qGz9HSRoKDXnwBHxBaTqxjGFIt+HBqEDI=;
 b=Q5mSNJUV0gWrnV2A5+mxDHQiGraedhrYkjPbeXZ7p2ZAs+w0zDfGdFcKHGBAi8g6YAmsff
 hTP4pHxg18d1mNG75TDeRxezE2X/jfsbMp5SHjXhDtnwUNfODMlLoSCbA9o+rBwDDfO1Y9
 qPdoM1yTSLWN6dJNtzcSdbtQNHxGPsU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Q5mSNJUV
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: lighter locking for
 PTP time reading
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series removes the use of the heavy-weight PTP hardware semaphore
in the gettimex64 path. Instead, serialization of access to the time
register is done using a host-side spinlock. The timer hardware is
shared between PFs on the PCI adapter, so the spinlock must be shared
between ice_pf instances too.

Replacing the PTP hardware semaphore entirely with a mutex is also
possible and you can see it done in my git branch[1], but I am not
posting those patches yet to keep the scope of this series limited.

[1] https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock-9

v3:
 - Longer variable name ("a" -> "adapter").
 - Propagate xarray error in ice_adapter_get with ERR_PTR.
 - Added kernel-doc comments for ice_adapter_{get,put}.

v2:
 - Patch 1: Rely on xarray's own lock. (Suggested by Jiri Pirko)
 - Patch 2: Do not use *_irqsave with ptp_gltsyn_time_lock, as it's used
   only in process contexts.

Michal Schmidt (3):
  ice: add ice_adapter for shared data across PFs on the same NIC
  ice: avoid the PTP hardware semaphore in gettimex64 path
  ice: fold ice_ptp_read_time into ice_ptp_gettimex64

 drivers/net/ethernet/intel/ice/Makefile      |   3 +-
 drivers/net/ethernet/intel/ice/ice.h         |   2 +
 drivers/net/ethernet/intel/ice/ice_adapter.c | 109 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.h |  28 +++++
 drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c     |  33 +-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |   3 +
 7 files changed, 156 insertions(+), 30 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h

-- 
2.43.2

