Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8975188D7C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 08:48:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 335878133E;
	Wed, 27 Mar 2024 07:48:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XVKj18PwuSmn; Wed, 27 Mar 2024 07:48:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 554128126E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711525729;
	bh=0yBaS1hfGcIJ0g5TQWCk0L3glJvaFE4LWtb3UsOxD4A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=D0YoLBVejbkOP/wpnMlIOsGBqPtJb95cy/N9/HfqfNe4jaJZ+VspfNM65yI2lgsBN
	 DCR1nQdUnt57KTkjP64D2In+Uo51TlpLDYkD1CCLgcwlx1RTwQ249J2DomTpG3U6m2
	 1Cw5gPqQ2Ux8Ga6yMixiS4wP86avrbEU4bD/A9v19BtCJWySireVpiZwuwfu/0eb6w
	 gzm54LxuSLYIXU1q4SBlScy+oqJOEGV7Gs9xPlc04lb2jHM4SYjClXZvOT0QGm/Ywr
	 we68aEkbyP76bJfEHpuDEDT40Jnjo25Me4BYg9tdBb2TQI5DKNth/U3vCyDRj04W3c
	 vHFQ4/W2rOAJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 554128126E;
	Wed, 27 Mar 2024 07:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 460D11BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31F0360899
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E3Lh1563iGiP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 07:48:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 617EE6000A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 617EE6000A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 617EE6000A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:46 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-362-sv2Iot2kNQKb-W_tfZ0jdA-1; Wed, 27 Mar 2024 03:48:40 -0400
X-MC-Unique: sv2Iot2kNQKb-W_tfZ0jdA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0EF185CE42;
 Wed, 27 Mar 2024 07:48:39 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C62F492BD4;
 Wed, 27 Mar 2024 07:48:37 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 08:48:25 +0100
Message-ID: <20240327074833.8701-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711525725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=0yBaS1hfGcIJ0g5TQWCk0L3glJvaFE4LWtb3UsOxD4A=;
 b=alpKYhNfYw8Jj8mgeIRpxEUhnXnnjTDjlixskGm0uNlLFNumww/L/MiS5zrzhI0Jq/q6Ru
 2JTPMdGVi6L/USHtRZcb9cYOaTgFbZGPCCukSYYylNlQfrpFRuvVX+bBsXIqgKBtSao2a+
 m245CzOLh6zYNqcCgh0UTllkcCRiAYk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=alpKYhNf
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/7] i40e: cleanups & refactors
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
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

Changes since v1:
- adjusted titles for patches 2 & 3

Ivan Vecera (8):
  i40e: Enforce software interrupt during busy-poll exit
  i40e: Remove flags field from i40e_veb
  i40e: Refactor argument of several client notification functions
  i40e: Refactor argument of i40e_detect_recover_hung()
  i40e: Add helper to access main VSI
  i40e: Consolidate checks whether given VSI is main
  i40e: Add helper to access main VEB
  i40e: Add and use helper to reconfigure TC for given VSI

 drivers/net/ethernet/intel/i40e/i40e.h        |  30 ++-
 drivers/net/ethernet/intel/i40e/i40e_client.c |  28 +--
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  36 +--
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  29 ++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 205 ++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
 .../net/ethernet/intel/i40e/i40e_register.h   |   3 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  98 ++++++---
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   3 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 +-
 11 files changed, 282 insertions(+), 173 deletions(-)

-- 
2.43.0

