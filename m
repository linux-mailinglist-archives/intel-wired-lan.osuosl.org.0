Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E348B44CC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 09:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1E0A607CD;
	Sat, 27 Apr 2024 07:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WriUMbEMa6SL; Sat, 27 Apr 2024 07:26:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F20EC60815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714202790;
	bh=oU0PI/3hFSKCw5O/amXoTchq7YWCXQ97GsK4JttEy+E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ltwMQHJgWz5U7RZSkHKVRJxrzCBtXU8LAPfWqwH3XbzVHupKTyDP0zWMIuRUbk95I
	 wiIUvkEwCfoOL7zs1vH66fN022n3AaQk8EPX7B7zH6a5usiaJ7eD672nfH0AbyTOnz
	 c0eUEOvKOmxPKvjNA3AfkdTMf3cungN0qud7lyWCj49/PHKm4G1P9b8iBZWFF88IY0
	 cBLMG9oSqr3jk+wH/M4Gfym98ujR2FdNjOXwcFZ+vgZ1f4C88FA5D58kA+rfCCAus8
	 jwklPqrTB1hLqC82FVoa/SVO3hbRq0g+681zn2GtvWQEem5ZrhzZ1iZkEFssKCQ8N4
	 +cvB9mVXHhULg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F20EC60815;
	Sat, 27 Apr 2024 07:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA58C1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 07:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C473D83B23
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 07:26:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KuCRf6TYZ09m for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 07:26:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EEE42831F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEE42831F8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEE42831F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 07:26:26 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-TseoSWE1NmyCFPqcAuhqhw-1; Sat, 27 Apr 2024 03:26:19 -0400
X-MC-Unique: TseoSWE1NmyCFPqcAuhqhw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FD0218065AA;
 Sat, 27 Apr 2024 07:26:18 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4CA240F17B;
 Sat, 27 Apr 2024 07:26:16 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Sat, 27 Apr 2024 09:26:01 +0200
Message-ID: <20240427072615.226151-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1714202785;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=oU0PI/3hFSKCw5O/amXoTchq7YWCXQ97GsK4JttEy+E=;
 b=BD71cXWEdPaUH/4zBDC0/D6bL1jjIlhcLsQUTjZGV4LFJvgbdU0vsUN6S9NJap1Kg3TFZa
 ub7FyaPCGD4o+fu+6YJup4iWZ5OVd1l18BnTSRcvlwZtioB23EZ2gj19A/Eaq5OMMXBipN
 /KM/hl7q2g+iMOCbZ6p24zRPvMooKe4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=BD71cXWE
Subject: [Intel-wired-lan] [PATCH net-next v4 0/7] i40e: cleanups & refactors
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series do following:
Patch 1 - Removes write-only flags field from i40e_veb structure and
          from i40e_veb_setup() parameters
Patch 2 - Refactors parameter of i40e_notify_client_of_l2_param_changes()
          and i40e_notify_client_of_netdev_close()
Patch 3 - Refactors parameter of i40e_detect_recover_hung()
Patch 4 - Adds helper i40e_pf_get_main_vsi() to get main VSI and uses it
          in existing code
Patch 5 - Consolidates checks whether given VSI is the main one
Patch 6 - Adds helper i40e_pf_get_main_veb() to get main VEB and uses it
          in existing code
Patch 7 - Adds helper i40e_vsi_reconfig_tc() to reconfigure TC for
          particular and uses it to replace existing open-coded pieces

Note that this series should go directly to net-next as the IWL review
and validation were already done.

Changes since v3:
- fixed new kdoc warnings
Changes since v2:
- resubmitted per Tony's request (no new kdoc errors were found)
- added existing reviewed-by and tested-by tags
Changes since v1:
- adjusted titles for patches 2 & 3

Ivan Vecera (7):
  i40e: Remove flags field from i40e_veb
  i40e: Refactor argument of several client notification functions
  i40e: Refactor argument of i40e_detect_recover_hung()
  i40e: Add helper to access main VSI
  i40e: Consolidate checks whether given VSI is main
  i40e: Add helper to access main VEB
  i40e: Add and use helper to reconfigure TC for given VSI

 drivers/net/ethernet/intel/i40e/i40e.h        |  29 ++-
 drivers/net/ethernet/intel/i40e/i40e_client.c |  28 +--
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  36 ++--
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  29 ++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 200 ++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  16 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   2 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 +-
 10 files changed, 211 insertions(+), 152 deletions(-)

-- 
2.43.2

