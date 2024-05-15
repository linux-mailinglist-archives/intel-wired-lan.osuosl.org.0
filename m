Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B96F78C6878
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 16:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F30060755;
	Wed, 15 May 2024 14:22:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GTTIW-27DLQF; Wed, 15 May 2024 14:22:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DC0660073
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715782947;
	bh=QlQKAhS3Nec4t63RXRL98E390ZIIDklcYvobV4PMdfI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X8O6gJM96MnsVPjv1nRdzDrwGhZJlhrUXuNmymemSe0ojGt+QHTqZXVNWfnUncVJE
	 TFrSSXXWdxBoVw0KjXxsUZfjq4xnSBVst7qEuc42db3F3NTdcXQHxHhGVV5rzGaWS9
	 HLysBz8nf5uCfd2SvJkL13XChQrhE7WkQ7LE6AGan4bUA99E8gL2+gBPMqOirgF2HF
	 0oJMlM/mHo69qa7qduC9tDQfvQ3M+Hy4v7TZIHtpkFB9hJ/yT7/R/Q2VpE/woKw1UQ
	 NQGgNI3SBHz8M3bMqhEoLaJmH88M5LP8zwGT5MuWRI1JrlELepQ9SrZy+x6DTYZ5c7
	 3Cwza1IYOuvgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DC0660073;
	Wed, 15 May 2024 14:22:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B84A1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 14:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55BF4405CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 14:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h3EqUf1GwOLV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 14:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 708A8405AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 708A8405AD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 708A8405AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 14:22:22 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-363-w8YsbS0INcuFErP9kKATHg-1; Wed,
 15 May 2024 10:22:18 -0400
X-MC-Unique: w8YsbS0INcuFErP9kKATHg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AFF523C0E642;
 Wed, 15 May 2024 14:22:17 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.16.52])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 460B51C22B67;
 Wed, 15 May 2024 14:22:09 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, horms@kernel.org
Date: Wed, 15 May 2024 19:52:06 +0530
Message-Id: <20240515142207.27369-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1715782941;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=QlQKAhS3Nec4t63RXRL98E390ZIIDklcYvobV4PMdfI=;
 b=aFQ1MO4tIUsix2385dupMSJTIFviX1p5I0bAnLO9fnS7w+LZY0qj82YHc2qO0W9KPCvfy4
 xXcd7/dDrsL1VaE7cS5rvV7NjEONoGKIGFnNLLUAcaDfz8t0MZN2FEk/ihAcHk/LBmaPcs
 KaXB0NVupNhtxgNGf2Cxk2RCvKa9lIg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=aFQ1MO4t
Subject: [Intel-wired-lan] [PATCH iwl-next v9] ice: Add get/set hw address
 for VFs using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, vchundur@redhat.com, ksundara@redhat.com,
 michal.swiatkowski@linux.intel.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Maintainers,
    Thanks for the review and suggestions for my patch.

v8 -> v9
--------
- Rebasing against dev-queue branch of next-queue tree

v7 -> v8
--------
- Added const keyword for the parameter ``mac`` in ice_set_vf_fn_mac()

v6 -> v7
--------
- Addressed Smatch and checkpatch issues

v5 -> v6
--------
- Changed data type of vf_id to u16
- Used container_of(port, struct ice_vf, devlink_port) to
  get the vf instead of ice_get_vf_by_id()/ice_put_vf()

v4 -> v5
--------
- Cloned ice_set_vf_mac() to ice_set_vf_fn_mac() so that the
  parameter ice_pf is used instead of net_device of vf
- removed redundant error handling

v3 -> v4
--------
- Released the vf device by calling ice_put_vf()

v2 -> v3
--------
- Fill the extack message instead of dev_err()

v1 -> v2
--------
- called ice_set_vf_mac() directly from the devlink port function
  handlers.

RFC -> v1
---------
- Add the function handlers to set and get the HW address for the
  VF representor ports.

