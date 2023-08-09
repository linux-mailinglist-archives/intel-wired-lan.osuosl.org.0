Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4845776B3C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 23:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2FF6E41900;
	Wed,  9 Aug 2023 21:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FF6E41900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691617786;
	bh=cggvSD2GyS7QvmOglzbuyNxfwPn2nHvNFHS959XmuNk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4wJsR6s9liVNux9oVsi3D+tKUHlMXLQK+9hDzKACo8ADDwdTpCE4pPZVqNRPUrETm
	 njVYzRQb+8iTdDEfvgwmRTQ0GQcIrqRdlov23iBUGFlPbBFlr4xbviFxCTV4f27Pt9
	 +7t4/dT7qjuiEj423R5OeekXtrCVWM6WSW51zXz+L0wWGtk9ylRKVIkrWE8gZhOVT6
	 vqXVzACx9+i2AqfPoWBnDkRFcE8QmeM0LJADx9xGsxnVOBiz1Abfab+x9thPltU8vL
	 MTwOAbgR+FHH0DWHD/pOXfCULZeP11Ckt4tfkGwxvtMhMH801wgz6+HgGnaKifUaAT
	 71/1ui0k7Bifg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZBcLg6AUCY4H; Wed,  9 Aug 2023 21:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17B764189B;
	Wed,  9 Aug 2023 21:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17B764189B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD761BF28A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 21:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6708F60B74
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 21:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6708F60B74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ogPq4l4NtX0e for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 21:49:17 +0000 (UTC)
Received: from out-66.mta1.migadu.com (out-66.mta1.migadu.com [95.215.58.66])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56E9960BC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 21:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56E9960BC0
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Date: Wed,  9 Aug 2023 22:40:18 +0100
Message-Id: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691617238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pQIeu0d5TNzAiSwO8yVXuDgCwQN45gVp3P3oXox0xwc=;
 b=caI9bdxh7IdqgUfYuu4tWVffKy0HYUyjxZ/lfwVeRvHApeiU2+GdPj6JcX+6aNE4Geppw9
 R3dRtmGPBoHfXxqP+J2fcJbSBfyz4cFRMiPXcYi4UTCpb7oDvoVpntOwPG9kKvWk4tABRb
 cjGQrDkWfFJrHWwnYE8mS4g6uRFbukg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=caI9bdxh
Subject: [Intel-wired-lan] [PATCH net-next v3 0/9] Create common DPLL
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement common API for DPLL configuration and status reporting.
The API utilises netlink interface as transport for commands and event
notifications. This API aims to extend current pin configuration 
provided by PTP subsystem and make it flexible and easy to cover
complex configurations.

Netlink interface is based on ynl spec, it allows use of in-kernel
tools/net/ynl/cli.py application to control the interface with properly
formated command and json attribute strings. Here are few command
examples of how it works with `ice` driver on supported NIC:

- dump dpll devices
$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
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
$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-get --json '{"pin-id":2}'
{'clock-id': 282574471561216,
 'module-name': 'ice',
 'pin-board-label': 'C827_0-RCLKA',
 'pin-dpll-caps': 6,
 'pin-frequency': 1953125,
 'pin-id': 2,
 'pin-parent-device': [{'id': 0,
                         'pin-direction': 'input',
                         'pin-prio': 11,
                         'pin-state': 'selectable'},
                        {'id': 1,
                         'pin-direction': 'input',
                         'pin-prio': 9,
                         'pin-state': 'selectable'}],
 'pin-type': 'mux'}

- set pin's state on dpll:
$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-set --json '{"pin-id":2, "pin-parent-device":{"id":1, "pin-state":2}}'

- set pin's prio on dpll:
$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-set --json '{"pin-id":2, "pin-parent-device":{"id":1, "pin-prio":4}}'

- set pin's state on parent pin:
$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-set --json '{"pin-id":13, \
                      "pin-parent-pin":{"pin-id":2, "pin-state":1}}'

v2 -> v3:
- more style and warning fixes
- details in per-patch logs

v1 -> v2:
- remove FREERUN/DETACHED mode
- reorder functions in commits not to depend on files introduced in
  future commits
- style and warning fixes

v8 RFC -> v1:
- Merge header patch into the patches where the actual functions are
  implemented
- Address comments from previous reviews
- Per patch change log contains more details

v8 -> v9:
[00/10] Create common DPLL configuration API
- update examples to reflect new pin-parent nest split

[01/10] dpll: documentation on DPLL subsystem interface
- fix docs build warnings
- separate netlink command/attribute list
- replace enum description with uapi header
- add brief explanation what is a DPLL
- fix EOPNOTSUPP typo
- fix typo .state_get -> .state_on_dpll_get

[02/10] dpll: spec: Add Netlink spec in YAML
- regenerate policy max values
- add missing enum descriptions
- split pin-parent nest:
  - pin-parent-device - for configuration of pin-device tuple
  - pin-parent-pin - for configuration od pin-pin tuple
- fix typos:
  - s/working-modes/working modes/
  - s/differentiate/differentiates/
  - s/valid input, auto selected by dpll/input pin auto selected by dpll/
- remove FREERUN and HOLDOVER modes

[03/10] dpll: core: Add DPLL framework base functions
- fix description in spdx header.
- remove refcount check if refcount was already set
- do not validate dpll ptr in dpll_device_put(..)
- fix return -ENOMEM on failed memory alloc
- do not validate pin ptr in dpll_pin_put(..)
- return -EINVAL in case of module/clock_id mismatch
- do not {} around one-line xa_for_each() macro
- move dpll_<x>_registration structs to dpll_core.c
- rephrase doc comment on device and pin id struct members
- remove ref in case of memory allocation fail
- check for required ops on pin/device registration
- mark pin with DPLL_REGISTERED once pin is registered with dpll

[04/10] dpll: netlink: Add DPLL framework base functions
- fix pin-id-get/device-id-get behavior
- reshuffle order of functions
- avoid forward declarations
- functions for adding pin/device handle next to each other
- pass ops callback return values to the user
- remove dpll_cmd_pin_fill_details(..) function, merge the code into
  __dpll_cmd_pin_dump_one(..)
- rename __dpll_cmd_pin_dump_one() to dpll_cmd_pin_get_one()
- use WARN_ON macro when dpll ref is missing
- remove redundant pin's dpll list not empty check
- remove double spaces inside if statement
- add extack message when set command is not possible
- do not return error when callback is not required
- WARN_ON missing ops moved to dpll_core.c
- use DPLL_REGISTERED if pin was registered with dpll
- fix pin-id-get return and add extack errors
- fix device-id-get return and add extack errors
- drop pointless init of variables
- add macro for iterating over marked pins/devices
- move dpll_set_from_nlattr() for consistent order
- use GENL_REQ_ATTR_CHECK() for checking attibute presence
- fill extack if pin/device was not found
- drop pointless init of variables
- WARN_ON if dpll not registered on send event
- rename goto labels to indicate error path
- fix docs
- drop pointless init of variables
- verify pin in notify with a mark
- prevent ops->mode_set call if missing callback
- move static dpll_msg_add_pin_handle() from pin<->netdev patch
- split pin-parent nest:
  - pin-parent-device - for configuration of pin-device tuple
  - pin-parent-pin - for configuration od pin-pin tuple

[06/10] netdev: expose DPLL pin handle for netdevice
- net_device->dpll_pin is only valid if IS_ENABLED(CONFIG_DPLL) fix the
  code in net/core/rtnetlink.c to respect that.
- move dpll_msg_add_pin_handle to "dpll: netlink" patch + export the
  function with this patch

[07/10] ice: add admin commands to access cgu configuration
- rename MAX_NETLIST_SIZE -> ICE_MAX_NETLIST_SIZE
- simplify function: s64 convert_s48_to_s64(s64 signed_48)
- do not assign 0 to field that is already 0

[08/10] ice: implement dpll interface to control cgu
- drop pointless 0 assignement
- ice_dpll_init(..) returns void instead of int
- fix context description of the functions
- fix ice_dpll_init(..) traces
- fix use package_label instead pf board_label for rclk pin
- be consistent on cgu presence naming
- remove indent in ice_dpll_deinit(..)
- remove unused struct field lock_err_num
- fix kworker resched behavior
- remove debug log from ice_dpll_deinit_worker(..)
- reorder ice internal functions
- release resources directly on error path
- remove redundant NULL checks when releasing resources
- do not assign NULL to pointers after releasing resources
- simplify variable assignement
- fix 'int ret;' declarations across the ice_dpll.c
- remove leftover ice_dpll_find(..)
- get pf pointer from dpll_priv without type cast
- improve error reporting
- fix documentation
- fix ice_dpll_update_state(..) flow
- fix return in case out of range prio set


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

Arkadiusz Kubalewski (2):
  ice: add admin commands to access cgu configuration
  ice: implement dpll interface to control cgu

Jiri Pirko (2):
  netdev: expose DPLL pin handle for netdevice
  mlx5: Implement SyncE support using DPLL infrastructure

Vadim Fedorenko (5):
  dpll: documentation on DPLL subsystem interface
  dpll: spec: Add Netlink spec in YAML
  dpll: core: Add DPLL framework base functions
  dpll: netlink: Add DPLL framework base functions
  ptp_ocp: implement DPLL ops

 Documentation/driver-api/dpll.rst             |  428 ++++
 Documentation/driver-api/index.rst            |    1 +
 Documentation/netlink/specs/dpll.yaml         |  471 ++++
 MAINTAINERS                                   |   11 +
 drivers/Kconfig                               |    2 +
 drivers/Makefile                              |    1 +
 drivers/dpll/Kconfig                          |    7 +
 drivers/dpll/Makefile                         |    9 +
 drivers/dpll/dpll_core.c                      |  796 +++++++
 drivers/dpll/dpll_core.h                      |   90 +
 drivers/dpll/dpll_netlink.c                   | 1236 +++++++++++
 drivers/dpll/dpll_netlink.h                   |   13 +
 drivers/dpll/dpll_nl.c                        |  162 ++
 drivers/dpll/dpll_nl.h                        |   51 +
 drivers/net/ethernet/intel/Kconfig            |    1 +
 drivers/net/ethernet/intel/ice/Makefile       |    3 +-
 drivers/net/ethernet/intel/ice/ice.h          |    5 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  246 ++-
 drivers/net/ethernet/intel/ice/ice_common.c   |  465 ++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   44 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 1905 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  104 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |    6 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  530 +++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   85 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 .../net/ethernet/mellanox/mlx5/core/Kconfig   |    8 +
 .../net/ethernet/mellanox/mlx5/core/Makefile  |    3 +
 drivers/net/ethernet/mellanox/mlx5/core/dev.c |   17 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    |  432 ++++
 drivers/ptp/Kconfig                           |    1 +
 drivers/ptp/ptp_ocp.c                         |  369 +++-
 include/linux/dpll.h                          |  157 ++
 include/linux/mlx5/driver.h                   |    2 +
 include/linux/mlx5/mlx5_ifc.h                 |   59 +-
 include/linux/netdevice.h                     |   20 +
 include/uapi/linux/dpll.h                     |  190 ++
 include/uapi/linux/if_link.h                  |    2 +
 net/core/dev.c                                |   22 +
 net/core/rtnetlink.c                          |   35 +
 41 files changed, 7939 insertions(+), 68 deletions(-)
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
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
