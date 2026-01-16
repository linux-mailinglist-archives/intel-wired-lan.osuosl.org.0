Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E01ECD38499
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 19:46:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F809610E3;
	Fri, 16 Jan 2026 18:46:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RUrwOzqOhg12; Fri, 16 Jan 2026 18:46:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E46A4610E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768589193;
	bh=ZJVObctK3llj4uA0acCK4Yyzz9vQu+ksQA0NFHgNQGU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ejjPPFc5BkuEpHYTV2xr4CtuiH81EJukj+tMKZzkwB0UESzpiRV9T12QNZOGeWI64
	 QHBhqhqwzhX8SqvsU3bWdSGyFkS5O/cDjnYUK/fXRQjBRwJz5Egqnat7JKGubDL3uQ
	 rOQhACDEagf69fvKKrkNmvoxBTHcALZ9c5K4ZZaiX0wjWh3MUfm4ZprijWvkkfXEzX
	 deyEaPzeAscCs2WXnILXbJddP3J+9qg5DXPq6+djTyWgPt1j6Bunn8pGfDaDlm6KdX
	 Q1OXC+rIDWMie5W53o8LRf+Abl+cGuBi2itAcPTzULUd9o0LHSgacTY7jAaWUMR4TT
	 lXi7jgqyjhAJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E46A4610E4;
	Fri, 16 Jan 2026 18:46:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 14ADA223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00AF8610E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTJjSSyW_ZHU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 18:46:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E627B610E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E627B610E0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E627B610E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:30 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-185-4JBC-iLFNpum_AD3n3AJXA-1; Fri,
 16 Jan 2026 13:46:24 -0500
X-MC-Unique: 4JBC-iLFNpum_AD3n3AJXA-1
X-Mimecast-MFC-AGG-ID: 4JBC-iLFNpum_AD3n3AJXA_1768589180
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 55617180035D; Fri, 16 Jan 2026 18:46:20 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.34.71])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 0730119560A7; Fri, 16 Jan 2026 18:46:11 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 16 Jan 2026 19:45:58 +0100
Message-ID: <20260116184610.147591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768589189;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZJVObctK3llj4uA0acCK4Yyzz9vQu+ksQA0NFHgNQGU=;
 b=fB4IKvsvLffALEyOf627qMK4DnRZtWii7/UEwr0Mu+Hptgw80iLwz8yY8HK9VkG3MsDp8Y
 MZ35/P/WmoFyAzNQ3dh0lyGmZ1G12NqLe2BkcxOl2n2xQIjj85bvcL4tmt7L1y7jF3FGB1
 4n82dwzPbqLuj8NcjaW8bcC+sMDisqM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fB4IKvsv
Subject: [Intel-wired-lan] [PATCH net-next v2 00/12] dpll: Core improvements
 and ice E825-C SyncE support
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
 Saravana Kannan <saravanak@kernel.org>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Jonathan Lemon <jonathan.lemon@gmail.com>,
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

DT Bindings:
* Provider Support: The dpll-device schema is updated to support
  '#dpll-pin-cells', allowing providers to define pin specifiers
  (index/direction).
* Core Schema: The core schema definitions for pin consumers and
  providers have been submitted to dt-schema (PR #183).

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
Patch 1: DT bindings (Provider support).
Patch 2-3: DPLL Core (fwnode association and parsing helpers).
Patch 4: Driver zl3073x (Set fwnode).
Patch 5-6: DPLL Core (Notifiers and dynamic IDs).
Patch 7: Driver zl3073x (Mux type).
Patch 8-9: DPLL Core (Refcount refactor and duplicate checks).
Patch 10-11: Refcount tracking infrastructure and driver updates.
Patch 12: Driver ice (E825-C SyncE logic).

Changes in v2:
- Removed dpll-pin-consumer.yaml schema per request (submitted to dt-schema).
- Added '#dpll-pin-cells' property into dpll-device.yaml and
  microchip,zl30731.yaml.
- Added include/dt-bindings/dpll/dpll.h
- Added check for fwnode_property_match_string() return value.
- Reworked searching for the pin using dpll device phandle and pin specifier
  logic.
- Added dpll-pins into OF core supplier_bindings.
- Fixed integer overflow in dpll_pin_idx_free().
- Fixed error path in ice_dpll_init_pins_e825().
- Fixed misleading comment referring 'device tree'.

Arkadiusz Kubalewski (1):
  ice: dpll: Support E825-C SyncE and dynamic pin discovery

Ivan Vecera (10):
  dt-bindings: dpll: support acting as pin provider
  dpll: Allow associating dpll pin with a firmware node
  dpll: Add helpers to find DPLL pin fwnode
  dpll: zl3073x: Associate pin with fwnode handle
  dpll: Support dynamic pin index allocation
  dpll: zl3073x: Add support for mux pin type
  dpll: Enhance and consolidate reference counting logic
  dpll: Prevent duplicate registrations
  dpll: Add reference count tracking support
  drivers: Add support for DPLL reference count tracking

Petr Oros (1):
  dpll: Add notifier chain for dpll events

 .../devicetree/bindings/dpll/dpll-device.yaml |  10 +
 .../bindings/dpll/microchip,zl30731.yaml      |   4 +
 drivers/dpll/Kconfig                          |  15 +
 drivers/dpll/dpll_core.c                      | 374 ++++++++-
 drivers/dpll/dpll_core.h                      |  11 +
 drivers/dpll/dpll_netlink.c                   |   6 +
 drivers/dpll/zl3073x/dpll.c                   |  15 +-
 drivers/dpll/zl3073x/dpll.h                   |   2 +
 drivers/dpll/zl3073x/prop.c                   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 732 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  29 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  29 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_tspll.c    | 217 ++++++
 drivers/net/ethernet/intel/ice/ice_tspll.h    |  13 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    |  16 +-
 drivers/of/property.c                         |   2 +
 drivers/ptp/ptp_ocp.c                         |  18 +-
 include/dt-bindings/dpll/dpll.h               |  13 +
 include/linux/dpll.h                          |  74 +-
 22 files changed, 1442 insertions(+), 158 deletions(-)
 create mode 100644 include/dt-bindings/dpll/dpll.h

-- 
2.52.0

