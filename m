Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB0873C3F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 17:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A007A407E3;
	Wed,  6 Mar 2024 16:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gzUBeJg1tFUX; Wed,  6 Mar 2024 16:30:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80B35405B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709742606;
	bh=fQN0lDxWlllZ+7e1BpHEsRMI1HmeCtr/hjEqKntiyQk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pG9WgfEaou8TWGhYWFWth7nCje+WZrreS1sJVczcRuY2eQ3rvyOCkVFCLxGPSxNDk
	 I7XxXS+LhnAVHk2/A9CziKdHn9cMbjsPSwRnlDhg6JDyfqKVTvymfj0Qk7gZZkRvh2
	 G3UZv+UaBHlMOsOudSVl1WvWE8nAYP8pBHngNKO/WtGuNuPAaC4UwG05WhViiy3ovo
	 GXrAI75CwMnDiWF5XvbRWcW5gUvxytvUbyaTAgMbJjzfy9+iKA9O60p7RrgeeJOwuW
	 558aW9C7iXAvlYq51iUJ7NF5czO/NW3Qw15Ab4JUmfhbZN7ohVNPuZQF0g/XOUChAt
	 DdklQ0coE3emA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80B35405B2;
	Wed,  6 Mar 2024 16:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00BA71BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBB9080E35
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5fErdD5j0_TT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 16:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E70780DD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E70780DD5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E70780DD5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:30:02 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-tUMttNxGMfKfgHlrzpDvBw-1; Wed, 06 Mar 2024 11:29:57 -0500
X-MC-Unique: tUMttNxGMfKfgHlrzpDvBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF73F800266;
 Wed,  6 Mar 2024 16:29:56 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.224.200])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 73B2B40735F8;
 Wed,  6 Mar 2024 16:29:54 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Mar 2024 17:29:04 +0100
Message-ID: <20240306162907.84247-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709742601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=fQN0lDxWlllZ+7e1BpHEsRMI1HmeCtr/hjEqKntiyQk=;
 b=Lw9BWXMDUsidHoN6gdA/MmgvscrINP+/DEzNBpOmxzbhJb+c4hqmYMbQoorU9mqPo1xyvM
 Apm7/zbWF+OENBel+uXe3JCUwEYApm+FbMwzMT7zcSYiLmvLnKAusUvdTGFN8OGMV5sudy
 FirPKW56vwWbnT7D3R/9JKd5a5FlPlU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Lw9BWXMD
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] ice: lighter locking for
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

[1] https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock-8

v2:
 - Patch 1: Rely on xarray's own lock. (Suggested by Jiri Pirko)
 - Patch 2: Do not use *_irqsave with ptp_gltsyn_time_lock, as it's used
   only in process contexts.

Michal Schmidt (3):
  ice: add ice_adapter for shared data across PFs on the same NIC
  ice: avoid the PTP hardware semaphore in gettimex64 path
  ice: fold ice_ptp_read_time into ice_ptp_gettimex64

 drivers/net/ethernet/intel/ice/Makefile      |  3 +-
 drivers/net/ethernet/intel/ice/ice.h         |  2 +
 drivers/net/ethernet/intel/ice/ice_adapter.c | 87 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.h | 28 +++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 33 +-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  3 +
 7 files changed, 134 insertions(+), 30 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h

-- 
2.43.2

