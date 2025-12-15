Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F6BCBFC09
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 21:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB7CD40273;
	Mon, 15 Dec 2025 20:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VQk3YrtCmqNe; Mon, 15 Dec 2025 20:31:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0213D4011B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765830663;
	bh=kFKP1wRB7MG8FdwSMPJtMRcQY82d/F+Hn/PXu/Kymsk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BIxvBEcgN3rbGyHQoDmk0MLZQLh+CTdST0nQACFnWu0e0ofo45PSA4WpN4juZFJsg
	 FVzWvJsjgc/b4Yfr8BhJbVgptWol56iCAtOKIVwkAK7hNfnGvdkUNf+Di8fhvbD6Dw
	 pUcy/4sv5Uw0zwXQGF4myu4kr4a5irgQpypeCNKCSwwMbOHVACO4Pg2vplQIo5Ba4P
	 6FtEMnMYN2lDKwAUJ9XoZ9fnka/BxgoEWvKkmf3ykHsWG6NGaPTRWgvzSINAnU+2ff
	 0tsUf8ROIz/zm+2Zsgw2qlTRSrqiH8CCecQ4gK3dp7smNHNBjmwxXmcpgMhoL/iGSk
	 ZmPlqcEQqxRFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0213D4011B;
	Mon, 15 Dec 2025 20:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AB4AE151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8BD581E1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hyLZLCXkgkMr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 20:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2A1B81E1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2A1B81E1B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2A1B81E1B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:30:59 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-295-fV4hTD3GOUeULQgWq9f_sw-1; Mon,
 15 Dec 2025 15:30:53 -0500
X-MC-Unique: fV4hTD3GOUeULQgWq9f_sw-1
X-Mimecast-MFC-AGG-ID: fV4hTD3GOUeULQgWq9f_sw_1765830649
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 30D6218002ED; Mon, 15 Dec 2025 20:30:49 +0000 (UTC)
Received: from p16v.redhat.com (unknown [10.45.224.214])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C414630001A8; Mon, 15 Dec 2025 20:30:38 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 15 Dec 2025 21:30:25 +0100
Message-ID: <20251215203037.1324945-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765830658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=kFKP1wRB7MG8FdwSMPJtMRcQY82d/F+Hn/PXu/Kymsk=;
 b=Ea4xeOY4y5Z5ScH/RUvX8z6Eivr+rB4vm9TgVlT8njj+S8HS8r9vNUct7a3uhNX6pm3llW
 3JCUCYEA3UYRo1ioxv0LS9lXCQZwiknSnTxNaizc+41VJvzuRFZe5WTng25MtjCdNnRPvP
 i0HiEztmjXXouETlav/dEW2XCTM82CU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ea4xeOY4
Subject: [Intel-wired-lan] [PATCH RFC net-next v2 00/13] dpll: Core
 improvements and ice E825-C SyncE support
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series introduces Synchronous Ethernet (SyncE) support for
the Intel E825-C Ethernet controller. Unlike previous generations where
DPLL connections were implicitly assumed, the E825-C architecture relies
on the platform firmware to describe the physical connections between
the network controller and external DPLLs (such as the ZL3073x).

To accommodate this, the series extends the DPLL subsystem to support
firmware node (fwnode) associations, asynchronous discovery via notifiers,
and dynamic pin management. Additionally, a significant refactor of
the DPLL reference counting logic is included to ensure robustness and
debuggability.

DPLL Core Extensions:
* Firmware Node Support: Pins can now be registered with an associated
  struct fwnode_handle. This allows consumer drivers to lookup pins based
  on device properties (dpll-pins).
* Asynchronous Notifiers: A raw notifier chain is added to the DPLL core.
  This allows the network driver (ice driver in this series) to subscribe
  to events and react when the platform DPLL driver registers the parent
  pins, resolving probe ordering dependencies.
* Dynamic Indexing: Drivers can now request DPLL_PIN_IDX_UNSPEC to have
  the core automatically allocate a unique pin index, simplifying driver
  implementation for virtual or non-indexed pins.

Reference Counting & Debugging:
* Refactor: The reference counting logic in the core is consolidated.
  Internal list management helpers now automatically handle hold/put
  operations, removing fragile open-coded logic in the registration paths.
* Duplicate Checks: The core now strictly rejects duplicate registration
  attempts for the same pin/device context.
* Reference Tracking: A new Kconfig option DPLL_REFCNT_TRACKER is added
  (using the kernel's REF_TRACKER infrastructure). This allows developers
  to instrument and debug reference leaks by recording stack traces for
  every get/put operation.

Driver Updates:
* zl3073x: Updated to register pins with their firmware nodes and support
  the 'mux' pin type.
* ice: Implements the E825-C specific hardware configuration for SyncE
  (CGU registers). It utilizes the new notifier and fwnode APIs to
  dynamically discover and attach to the platform DPLLs.

Patch Summary:
* Patch 1-3:
  DT bindings and helper functions for finding DPLL pins via fwnode.
* Patch 4:
  Updates zl3073x to register pins with fwnode.
* Patch 5-6:
  Adds notifiers and dynamic pin index allocation to DPLL core.
* Patch 7:
  Adds 'mux' pin type support to zl3073x.
* Patch 8-9:
  Refactors DPLL core refcounting and adds duplicate registration checks.
* Patch 10-11:
  Adds REF_TRACKER infrastructure and updates existing drivers to support it.
* Patch 12:
  Implements the E825-C SyncE logic in the ice driver using the new
  infrastructure.

Arkadiusz Kubalewski (1):
  ice: dpll: Support E825-C SyncE and dynamic pin discovery

Ivan Vecera (10):
  dt-bindings: net: ethernet-controller: Add DPLL pin properties
  dpll: Allow associating dpll pin with a firmware node
  net: eth: Add helpers to find DPLL pin firmware node
  dpll: zl3073x: Associate pin with fwnode handle
  dpll: Support dynamic pin index allocation
  dpll: zl3073x: Add support for mux pin type
  dpll: Enhance and consolidate reference counting logic
  dpll: Prevent duplicate registrations
  dpll: Add reference count tracking support
  drivers: Add support for DPLL reference count tracking

Petr Oros (1):
  dpll: Add notifier chain for dpll events

 .../bindings/net/ethernet-controller.yaml     |  13 +
 drivers/dpll/Kconfig                          |  15 +
 drivers/dpll/dpll_core.c                      | 296 +++++-
 drivers/dpll/dpll_core.h                      |  11 +
 drivers/dpll/dpll_netlink.c                   |   6 +
 drivers/dpll/zl3073x/dpll.c                   |  14 +-
 drivers/dpll/zl3073x/dpll.h                   |   1 +
 drivers/dpll/zl3073x/prop.c                   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 977 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  33 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  29 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_tspll.c    | 223 ++++
 drivers/net/ethernet/intel/ice/ice_tspll.h    |  14 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    |  16 +-
 drivers/ptp/ptp_ocp.c                         |  18 +-
 include/linux/dpll.h                          |  59 +-
 include/linux/etherdevice.h                   |   4 +
 net/ethernet/eth.c                            |  20 +
 22 files changed, 1614 insertions(+), 156 deletions(-)

-- 
2.51.2

