Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED818679A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 16:12:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B1F6402DB;
	Mon, 26 Feb 2024 15:12:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scle3z5AgKS8; Mon, 26 Feb 2024 15:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAB96402B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708960322;
	bh=arjLEsNVAf2p6iVSRF6nLA+wY3OMCZil0QQSx73WkXI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vI+i7tLexdv/ggIlWGGUzv5+gP1IfGIlviI0vQqCrE47ZdORx7oMKYM41SkcNUOSa
	 efQZnGexB3NWXvBgRSsFI8yRzlOiF+SCpPUtTwgF1Q2cpa58EmJEFNRdqwm32f0RgA
	 Td0yXIA+b+kh7O4bGc3pDvabCBBhFWvwgFQOmUzy/ZZMux8wmhgk271AuqGP28mU84
	 BATpK3uQ3VmcsplstqpN3Oac6738/kQNXZ4yfmIi4uQjB879Z0gFKPhhzJux5oEC/z
	 fllXlfBX8pkgtmi6NL6gN5fyBPbN7oV6+FtL/pfzn1gDhndg2UV+Hvs5bkCIDDwdzV
	 8z4dUgwMkJmyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAB96402B8;
	Mon, 26 Feb 2024 15:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6A81BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87F2B6060C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vtqIEtMuSIOZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 15:12:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D3E0F60593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3E0F60593
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3E0F60593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:11:59 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-636-U5OoBLd2OTyeB97jKBdtjw-1; Mon, 26 Feb 2024 10:11:52 -0500
X-MC-Unique: U5OoBLd2OTyeB97jKBdtjw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DDC9185A781;
 Mon, 26 Feb 2024 15:11:52 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.226.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 500EC492BC6;
 Mon, 26 Feb 2024 15:11:50 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Feb 2024 16:11:22 +0100
Message-ID: <20240226151125.45391-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708960317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=arjLEsNVAf2p6iVSRF6nLA+wY3OMCZil0QQSx73WkXI=;
 b=V+JmGC+qoVfaZfsuL+i0o/35tqbWDIAm1n/CRTIFYN6gujXn1+GoklrjQn6M60dn6+i0e7
 lSDStNP+UPN4S469OVwK2s1TgsvcA8nYTWRNpbjZHvr2PNGwugogH7fbeX5JDkrqdOecXQ
 +UZgIWjd7WDITXzIXxusa4GD7L7vSew=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=V+JmGC+q
Subject: [Intel-wired-lan] [PATCH net-next 0/3] ice: lighter locking for PTP
 time reading
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series removes the use of the heavy-weight PTP hardware semaphore
in the gettimex64 path. Instead, serialization of access to the time
register is done using a host-side spinlock. The timer hardware is
shared between PFs on the PCI adapter, so the spinlock must be shared
between ice_pf instances too.

Michal Schmidt (3):
  ice: add ice_adapter for shared data across PFs on the same NIC
  ice: avoid the PTP hardware semaphore in gettimex64 path
  ice: fold ice_ptp_read_time into ice_ptp_gettimex64

 drivers/net/ethernet/intel/ice/Makefile      |  3 +-
 drivers/net/ethernet/intel/ice/ice.h         |  2 +
 drivers/net/ethernet/intel/ice/ice_adapter.c | 69 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.h | 28 ++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  8 +++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 33 ++--------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  3 +
 7 files changed, 116 insertions(+), 30 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h

-- 
2.43.2

