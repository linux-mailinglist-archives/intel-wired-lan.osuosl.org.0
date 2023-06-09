Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 128A172997E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 14:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1A926157E;
	Fri,  9 Jun 2023 12:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1A926157E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686313268;
	bh=kx26CiEY8x04Z/jh2rHPsliNP8PLT3HLdtpDWCnvLDw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rrbF4DWy+DQAAM19NU2h7o7+PwVcLlO3q0r1XpoqZfdWAXCfz4W0wYjfZcIO+Wk98
	 +uSijOdapUyUnElrLqJkb1yeJG3FvLmSOUiD/SoOQoBUdO9bCCZbzFXbOKnJwODYPX
	 tZO51afcnoojlI93DMcc4YulC6kdQoJbN62qKYpAitYS9T5/3zJd0AT+RANRjZ+g3h
	 QRXqhiEC8VYnLtCmT2EbVYPB7xN+HpYurHPC8IZXK4xFLzVyhbkT7ZzpnCx402dCbh
	 ULLJtRGonFOjOMZnYspTfRIgrQ78ltYMkupEtcI+JNipwiOpXlMeEEZDONNyR1lqlX
	 agFo3I5mRs0rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ei9aHl7T4xQT; Fri,  9 Jun 2023 12:21:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC2E160C07;
	Fri,  9 Jun 2023 12:21:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC2E160C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FB481BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 835D140B60
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:21:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 835D140B60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rao0dOD_oTMy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 12:21:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23B7840604
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23B7840604
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:21:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337219744"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="337219744"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 05:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710348232"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="710348232"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga002.jf.intel.com with ESMTP; 09 Jun 2023 05:20:46 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, arkadiusz.kubalewski@intel.com,
 vadfed@meta.com, jonathan.lemon@gmail.com, pabeni@redhat.com
Date: Fri,  9 Jun 2023 14:18:43 +0200
Message-Id: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686313260; x=1717849260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rdh8Kl69+xkYuoast0lKfh0GODJsyTNnmG1WAARcz24=;
 b=Gdg18JPIKndH3C4ACSbmbQEAEzsCfiOAvGV53eI8RQczv/5OjXN1MZMv
 +tIe+f9GzQgKNzG9+8iIyYAlLEQp9w1u4Yj+BodQFj6WgGvMfqIXWJNLH
 0usKllW8IKVnStTbU1hsqqFMnpKvor/VlZpyk5Xo+7bNFSbAKb2rSuncA
 LspCU0FiREbdBxOPa6qO0WSOARft4ZaGki3BDfltVmvae1s97ZEvLCbQQ
 XxVNmniSKGXS8s+SBq1UsYyCloh6+N/FuO6uqht8uP4aWTlXV7MqViz2y
 ClIPeecg0NmqgXJy08bQgGFt/s2m85qolh4JtLTKZByVGnCTpisIJIuuo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gdg18JPI
Subject: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, airlied@redhat.com, vadfed@fb.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 netdev@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement common API for clock/DPLL configuration and status reporting.
The API utilises netlink interface as transport for commands and event
notifications. This API aim to extend current pin configuration and
make it flexible and easy to cover special configurations.

Netlink interface is based on ynl spec, it allows use of in-kernel
tools/net/ynl/cli.py application to control the interface with properly
formated command and json attribute strings. Here are few command
examples of how it works with `ice` driver on supported NIC:

- dump dpll devices
$# ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--dump device-get
[{'clock-id': 282574471561216,
  'id': 0,
  'lock-status': 'unlocked',
  'mode': 'automatic',
  'module-name': 'ice',
  'type': 'eec'},
 {'clock-id': 282574471561216,
  'id': 1,
  'lock-status': 'unlocked',
  'mode': 'automatic',
  'module-name': 'ice',
  'type': 'pps'}]

- get single pin info:
$# ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-get --json '{"pin-id":2}'
{'clock-id': 282574471561216,
 'module-name': 'ice',
 'pin-board-label': 'C827_0-RCLKA',
 'pin-dpll-caps': 6,
 'pin-frequency': 1953125,
 'pin-id': 2,
 'pin-parent': [{'id': 0,
                 'pin-direction': 'input',
                 'pin-prio': 11,
                 'pin-state': 'selectable'},
                {'id': 1,
                 'pin-direction': 'input',
                 'pin-prio': 9,
                 'pin-state': 'selectable'}],
 'pin-type': 'mux'}

- set pin's state on dpll:
$# ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-set --json '{"pin-id":2, "pin-parent":{"id":1, "pin-state":2}}'

- set pin's prio on dpll:
$# ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-set --json '{"pin-id":2, "pin-parent":{"id":1, "pin-prio":4}}'

- set pin's state on parent pin:
$# ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-set --json '{"pin-id":13, \
                      "pin-parent":{"pin-id":2, "pin-state":1}}'


v7 -> v8:
[0/10] Create common DPLL configuration API
- reorder the patches in patch series
- split patch "[RFC PATCH v7 2/8] dpll: Add DPLL framework base functions"
  into 3 smaller patches for easier review:
  - [03/10] dpll: core: Add DPLL framework base functions
  - [04/10] dpll: netlink: Add DPLL framework base functions
  - [05/10] dpll: api header: Add DPLL framework base
- add cli.py usage examples in commit message

[01/10] dpll: documentation on DPLL subsystem interface
- fix DPLL_MODE_MANUAL documentation
- remove DPLL_MODE_NCO
- remove DPLL_LOCK_STATUS_CALIBRATING
- add grepability Use full names of commands, attributes and values of
  dpll subsystem in the documentation
- align documentation with changes introduced in v8
- fix typos
- fix phrases to better show the intentions
- move dpll.rst to Documentation/driver-api/

[02/10] dpll: spec: Add Netlink spec in YAML
- remove unspec attribute values
- add 10 KHZ and 77,5 KHZ frequency defines
- fix documentation
- remove assigned values from subset attributes
- reorder dpll attributes
- fix `device` nested attribute usage, device get is not used on pin-get
- temperature with 3 digit float precision
- remove enum from subset definitions
- move pin-direction to pin-dpll tuple/subset
- remove DPLL_MODE_NCO
- remove DPLL_LOCK_STATUS_CALIBRATING
- fix naming scheme od notification interface functions
- separate notifications for pins
- rename attribute enum name: dplla -> dpll_a
- rename pin-idx to pin-id
- remove attributes: pin-parent-idx, device
- replace bus-name and dev-name attributes with module-name
- replace pin-label with 3 new attributes: pin-board-label,
  pin-panel-label, pin-package-label
- add device-id-get and pin-id-get commands
- remove rclk-dev-name atribute
- rename DPLL_PIN_DIRECTION_SOURCE -> DPLL_PIN_DIRECTION_INPUT

[03/10] dpll: core: Add DPLL framework base functions
[04/10] dpll: netlink: Add DPLL framework base functions
[05/10] dpll: api header: Add DPLL framework base
- remove unspec attributes after removing from dpll netlink spec
- move pin-direction to pin-dpll tuple
- pass parent_priv on state_on_pin_<get/set>
- align with new notification definitions from netlink spec
- use separated notifications for dpll pins and devices
- format notification messages as corresponding get netlink commands
- rename pin-idx to pin-id
- remove attributes pin-parent-idx, device
- use DPLL_A_PIN_PARENT to hold information on parent pin or dpll device
- refactor lookup for pins and dplls for dpll subsystem
- replace bus-name, dev-name with module-name
- replace pin-label with 3 new attributes: pin-board-label,
  pin-panel-label, pin-package-label
- add device-id-get and pin-id-get commands
- rename dpll_xa_lock to dpll_lock
- improve doxygen in dpll_core.c
- remove unused parent and dev fields from dpll_device struct
- use u32 for pin_idx in dpll_pin_alloc
- use driver provided pin properties struct
- verify pin/dpll owner on registering pin
- remove const arg modifier for helper _priv functions
- remove function declaration _get_by_name()
- update SPDX headers
- parse netlink set attributes with nlattr array
- remove rclk-dev-name attribute
- remove device pointer from dpll_pin_register/dpll_device_register
- remove redundant doxygen from dpll header
- use module_name() to get name of module
- add missing/remove outdated kdocs
- fix call frequency_set only if available
- fix call direction_set only for pin-dpll tuple

[06/10] netdev: expose DPLL pin handle for netdevice
- rebased on top of v8 changes
  - use dpll_msg_add_pin_handle() in dpll_pin_find_from_nlattr()
    and dpll_msg_add_pin_parents()
  - fixed handle to use DPLL_A_PIN_ID and removed temporary comments
- added documentation record for dpll_pin pointer
- fixed compilation of net/core/dev.c when CONFIG_DPLL is not enabled
- adjusted patch description a bit

[07/10] ice: add admin commands to access cgu configuration
- Remove unspec attributes after removing from dpll netlink spec.

[08/10] ice: implement dpll interface to control cgu
- remove unspec attributes
- do not store pin flags received in set commands
- use pin state field to provide pin state to the caller
- remove include of uapi header
- remove redundant check against null arguments
- propagate lock function return value to the caller
- use switch case instead of if statements
- fix dev_dbg to dev_err for error cases
- fix dpll/pin lookup on dpll subsytem callbacks
- fix extack of dpll subsystem callbacks
- remove double negation and variable cast
- simplify ice_dpll_pin_state_set function
- pass parent_priv on state_on_pin_<get/set>
- remove parent hw_idx lookup
- fix use const qualifier for dpll/dpll_pin ops
- fix IS_ERR macros usage in ice_dpll
- add notify previous source state change
- fix mutex locking on releasing pins
- use '|=' instead of '+=' when modifing capabilities field
- rename ice_dpll_register_pins function
- clock_id function to return clock ID on the stack instead of using
  an output variable
- DPLL_LOCK_STATUS_CALIBRATING was removed, return:
  DPLL_LOCK_STATUS_LOCKED - if dpll was locked
  DPLL_LOCK_STATUS_LOCKED_HO_ACQ - if dpll was locked and holdover is
  acquired
- propagate and use dpll_priv to obtain pf pointer in corresponding
  functions.
- remove null check for pf pointer
- adapt to `dpll: core: fix notification scheme`
- expose pf related pin to corresponding netdevice
- fix dpll init error path
- fix dpll pins naming scheme `source` -> `input`
- replace pin-label with pin-board-label
- dpll remove parent and dev fields from dpll_device
- remove device pointer from dpll_pin_register/dpll_device_register
- rename DPLL_PIN_DIRECTION_SOURCE -> DPLL_PIN_DIRECTION_INPUT

[09/10] ptp_ocp: implement DPLL ops
- replace pin-label with pin-board-label
- dpll remove parent and dev fields from dpll_device
- remove device pointer from dpll_pin_register/dpll_device_register
- rename DPLL_PIN_DIRECTION_SOURCE -> DPLL_PIN_DIRECTION_INPUT

[10/10] mlx5: Implement SyncE support using DPLL infrastructure
- rebased on top of v8 changes:
  - changed notification scheme
  - no need to fill pin label
  - implemented locked_ho_acq status
  - rename DPLL_PIN_DIRECTION_SOURCE -> DPLL_PIN_DIRECTION_INPUT
  - remove device pointer from dpll_pin_register/dpll_device_register
- fixed MSEES register writes
- adjusted pin state and lock state values reported
- fixed a white space issue

v6 -> v7:
 * YAML spec:
   - remove nested 'pin' attribute
   - clean up definitions on top of the latest changes
 * pin object:
   - pin xarray uses id provided by the driver
   - remove usage of PIN_IDX_INVALID in set function
   - source_pin_get() returns object instead of idx
   - fixes in frequency support API
 * device and pin operations are const now
 * small fixes in naming in Makefile and in the functions
 * single mutex for the subsystem to avoid possible ABBA locks
 * no special *_priv() helpers anymore, private data is passed as void*
 * no netlink filters by name anymore, only index is supported
 * update ptp_ocp and ice drivers to follow new API version
 * add mlx5e driver as a new customer of the subsystem
v5 -> v6:
 * rework pin part to better fit shared pins use cases
 * add YAML spec to easy generate user-space apps
 * simple implementation in ptp_ocp is back again
v4 -> v5:
 * fix code issues found during last reviews:
   - replace cookie with clock id
   - follow one naming schema in dpll subsys
   - move function comments to dpll_core.c, fix exports
   - remove single-use helper functions
   - merge device register with alloc
   - lock and unlock mutex on dpll device release
   - move dpll_type to uapi header
   - rename DPLLA_DUMP_FILTER to DPLLA_FILTER
   - rename dpll_pin_state to dpll_pin_mode
   - rename DPLL_MODE_FORCED to DPLL_MODE_MANUAL
   - remove DPLL_CHANGE_PIN_TYPE enum value
 * rewrite framework once again (Arkadiusz)
   - add clock class:
     Provide userspace with clock class value of DPLL with dpll device
     dump netlink request. Clock class is assigned by driver allocating
     a dpll device. Clock class values are defined as specified in:
     ITU-T G.8273.2/Y.1368.2 recommendation.
   - dpll device naming schema use new pattern:
     "dpll_%s_%d_%d", where:
       - %s - dev_name(parent) of parent device,
       - %d (1) - enum value of dpll type,
       - %d (2) - device index provided by parent device.
   - new muxed/shared pin registration:
     Let the kernel module to register a shared or muxed pin without
     finding it or its parent. Instead use a parent/shared pin
     description to find correct pin internally in dpll_core, simplifing
     a dpll API
 * Implement complex DPLL design in ice driver (Arkadiusz)
 * Remove ptp_ocp driver from the series for now
v3 -> v4:
 * redesign framework to make pins dynamically allocated (Arkadiusz)
 * implement shared pins (Arkadiusz)
v2 -> v3:
 * implement source select mode (Arkadiusz)
 * add documentation
 * implementation improvements (Jakub)
v1 -> v2:
 * implement returning supported input/output types
 * ptp_ocp: follow suggestions from Jonathan
 * add linux-clk mailing list
v0 -> v1:
 * fix code style and errors
 * add linux-arm mailing list

Arkadiusz Kubalewski (3):
  dpll: spec: Add Netlink spec in YAML
  ice: add admin commands to access cgu configuration
  ice: implement dpll interface to control cgu

Jiri Pirko (2):
  netdev: expose DPLL pin handle for netdevice
  mlx5: Implement SyncE support using DPLL infrastructure

Vadim Fedorenko (5):
  dpll: documentation on DPLL subsystem interface
  dpll: core: Add DPLL framework base functions
  dpll: netlink: Add DPLL framework base functions
  dpll: api header: Add DPLL framework base functions
  ptp_ocp: implement DPLL ops

 Documentation/driver-api/dpll.rst             |  458 ++++
 Documentation/driver-api/index.rst            |    1 +
 Documentation/netlink/specs/dpll.yaml         |  466 ++++
 MAINTAINERS                                   |    8 +
 drivers/Kconfig                               |    2 +
 drivers/Makefile                              |    1 +
 drivers/dpll/Kconfig                          |    7 +
 drivers/dpll/Makefile                         |    9 +
 drivers/dpll/dpll_core.c                      |  953 ++++++++
 drivers/dpll/dpll_core.h                      |  104 +
 drivers/dpll/dpll_netlink.c                   | 1195 ++++++++++
 drivers/dpll/dpll_netlink.h                   |   44 +
 drivers/dpll/dpll_nl.c                        |  161 ++
 drivers/dpll/dpll_nl.h                        |   50 +
 drivers/net/ethernet/intel/Kconfig            |    1 +
 drivers/net/ethernet/intel/ice/Makefile       |    3 +-
 drivers/net/ethernet/intel/ice/ice.h          |    5 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  240 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  467 ++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   43 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 2015 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  102 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |    7 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  414 ++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  230 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 .../net/ethernet/mellanox/mlx5/core/Kconfig   |    8 +
 .../net/ethernet/mellanox/mlx5/core/Makefile  |    3 +
 drivers/net/ethernet/mellanox/mlx5/core/dev.c |   17 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    |  432 ++++
 drivers/ptp/Kconfig                           |    1 +
 drivers/ptp/ptp_ocp.c                         |  329 ++-
 include/linux/dpll.h                          |  164 ++
 include/linux/mlx5/driver.h                   |    2 +
 include/linux/mlx5/mlx5_ifc.h                 |   59 +-
 include/linux/netdevice.h                     |   10 +
 include/uapi/linux/dpll.h                     |  184 ++
 include/uapi/linux/if_link.h                  |    2 +
 net/core/dev.c                                |   22 +
 net/core/rtnetlink.c                          |   38 +
 41 files changed, 8216 insertions(+), 59 deletions(-)
 create mode 100644 Documentation/driver-api/dpll.rst
 create mode 100644 Documentation/netlink/specs/dpll.yaml
 create mode 100644 drivers/dpll/Kconfig
 create mode 100644 drivers/dpll/Makefile
 create mode 100644 drivers/dpll/dpll_core.c
 create mode 100644 drivers/dpll/dpll_core.h
 create mode 100644 drivers/dpll/dpll_netlink.c
 create mode 100644 drivers/dpll/dpll_netlink.h
 create mode 100644 drivers/dpll/dpll_nl.c
 create mode 100644 drivers/dpll/dpll_nl.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.h
 create mode 100644 drivers/net/ethernet/mellanox/mlx5/core/dpll.c
 create mode 100644 include/linux/dpll.h
 create mode 100644 include/uapi/linux/dpll.h

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
