Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 576D188B52A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 00:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5C8360901;
	Mon, 25 Mar 2024 23:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLCooSmq7URA; Mon, 25 Mar 2024 23:21:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44165608F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711408885;
	bh=hbyrW4oiu2K+eG+UkCoc4x4UhSK2JRbA091u/DQjSuw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Dhjo69T2hdLDaqUejh8g46+/K9ak5cmkCTsvv0Kbdgzcz89Zev1QDvt6hpJ3zFfg0
	 zaUk8DpVjczmDKGvxZ6fKfn363GS0TwYCIxzpRJDxveCRyUOvgxp5b33FD56B46LvB
	 /mYd8eydzusZtemgJBacnLGlO2HtmZnHGEcd4wDsBMK/D8HEReaNXU+O5tfXhVHtJe
	 j8P0Xb6y6tRqIw4Da9ibng2/ItKkkEhymTqDkgCQIaFZeQ1zTeRrL2tKmO3xGAhl79
	 exyb3ws0TL4BwHmISTRx8mppsj3m8dVFuxFDIzGRCcljoKNkO9q9u1dC78ZgtPzp8t
	 BLKQcM0eCAygQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44165608F8;
	Mon, 25 Mar 2024 23:21:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F9DD1BF417
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 23:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66A774070F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 23:21:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nsWLxuLEQ1bd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 23:21:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04230406EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04230406EA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04230406EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 23:21:20 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-628-cfZ_TQtiPGC5DJpskPnxvg-1; Mon,
 25 Mar 2024 19:21:14 -0400
X-MC-Unique: cfZ_TQtiPGC5DJpskPnxvg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 749E63803905;
 Mon, 25 Mar 2024 23:21:13 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.225.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6226E1C060A4;
 Mon, 25 Mar 2024 23:21:10 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 00:20:36 +0100
Message-ID: <20240325232039.76836-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711408879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=hbyrW4oiu2K+eG+UkCoc4x4UhSK2JRbA091u/DQjSuw=;
 b=NSteievk3jXh/kiRsKF2E2q11AAaT2dnl+zQa6Z9eYdYpgnN8LHd78Z9mpLOAt0bOTxIql
 lHN5F9hRLJl6b2ZJbZXASybJkidywMmUgDIROnxTzAAB2BV/PwvdxsQxDv9wW3YY6e77xY
 Idmk3ze6+Hzdb1ghQlrBeLplIDqmFow=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NSteievk
Subject: [Intel-wired-lan] [PATCH net-next v4 0/3] ice: lighter locking for
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
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

[1] https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock-10

v4:
 - Patch 1: Use named GENMASK macros and FIELD_PREP.

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
 drivers/net/ethernet/intel/ice/ice_adapter.c | 116 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_adapter.h |  28 +++++
 drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c     |  33 +-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |   3 +
 7 files changed, 163 insertions(+), 30 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h

-- 
2.43.2

