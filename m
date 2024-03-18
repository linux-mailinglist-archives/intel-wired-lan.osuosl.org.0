Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4155887EAF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 15:31:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE19B40550;
	Mon, 18 Mar 2024 14:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2td2HDvFEdV; Mon, 18 Mar 2024 14:31:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D704F40568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710772274;
	bh=wMCscNMvoCJEBqT1qx48y7ZP+gNtu/wO9dEvpTchfrE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3mATi6C/5lKQ5A4ozMIO7zEjogzYpfR+YrL2vtm86kz6JxO55ia80x2Jno8YAdC9L
	 CC13YtRvvgigFamncewekqVdUMiELK4ANyuSuXPx49k/qTIirxmKgT+T6jG9TcrJ0b
	 D5eR4CbOPQB+dzSGCPdgZgtStp0nC6zUdngC4O4NqOZlCnINbF3A+Qij9AtxUnGwL8
	 /gIxZMDLNTn6mJsGSoz/sKeA5CtLLuU1TVB3R5oU+ITAoLdTtKeyv6GxYdkdrEEe0q
	 6Cls4CNCDgzsmdjwINvinE0Niztiv7iUMKF7blHq//eEnT23ZtDFJiH2Zv4QMwLAJf
	 V7ziSZvKAuHGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D704F40568;
	Mon, 18 Mar 2024 14:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E97041BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D64C560624
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhd4gKTKctVh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 14:31:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A0DB560592
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0DB560592
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0DB560592
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:10 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-PBDka7Q1NqK3FaIdCdvZag-1; Mon, 18 Mar 2024 10:31:05 -0400
X-MC-Unique: PBDka7Q1NqK3FaIdCdvZag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE5E885CE41;
 Mon, 18 Mar 2024 14:31:04 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DCAB111E406;
 Mon, 18 Mar 2024 14:31:03 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Mar 2024 15:30:44 +0100
Message-ID: <20240318143058.287014-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710772269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=wMCscNMvoCJEBqT1qx48y7ZP+gNtu/wO9dEvpTchfrE=;
 b=Tn6toWaHjuD3mIqNSzB4n5+utIB4KfqAxApk9vpZg1crM8AxmWl7Xuz/cbSJope1ejdyuF
 Hp393s6tzxxAIctvBPNvuSIq0Cl7B+j5eiQ7pgWcMQv6M+edLCdtnW/CDnK5IOheHcYq5Q
 rFaOiMmWvbFJmMdYarUdTgkp0uSP6A4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Tn6toWaH
Subject: [Intel-wired-lan] [PATCH iwl-next 0/7] i40e: cleanups & refactors
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series do following:
Patch 1 - Removes write-only flags field from i40e_veb structure and
          from i40e_veb_setup() parameters
Patch 2 - Changes parameter of i40e_notify_client_of_l2_param_changes()
          and i40e_notify_client_of_netdev_close()
Patch 3 - Changes parameter of i40e_detect_recover_hung()
Patch 4 - Adds helper i40e_pf_get_main_vsi() to get main VSI and uses it
          in existing code
Patch 5 - Consolidates checks whether given VSI is the main one
Patch 6 - Adds helper i40e_pf_get_main_veb() to get main VEB and uses it
          in existing code
Patch 7 - Adds helper i40e_vsi_reconfig_tc() to reconfigure TC for
          particular and uses it to replace existing open-coded pieces

Ivan Vecera (7):
  i40e: Remove flags field from i40e_veb
  i40e: Change argument of several client notification functions
  i40e: Change argument of i40e_detect_recover_hung()
  i40e: Add helper to access main VSI
  i40e: Consolidate checks whether given VSI is main
  i40e: Add helper to access main VEB
  i40e: Add and use helper to reconfigure TC for given VSI

 drivers/net/ethernet/intel/i40e/i40e.h        |  29 ++-
 drivers/net/ethernet/intel/i40e/i40e_client.c |  28 +--
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  36 ++--
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  29 ++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 199 ++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  16 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   2 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 +-
 10 files changed, 210 insertions(+), 152 deletions(-)

-- 
2.43.0

