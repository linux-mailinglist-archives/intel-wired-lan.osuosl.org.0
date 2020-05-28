Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F841E6B57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E25A214E4;
	Thu, 28 May 2020 19:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DAB3-ZHZujHb; Thu, 28 May 2020 19:43:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 071F82152A;
	Thu, 28 May 2020 19:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05B8F1BF2B5
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F2BF3872C7
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEOhQC0kAc_k for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B11A87251
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:43 +0000 (UTC)
IronPort-SDR: aZOHCKpbATE8WUF3AyPyZNffaM0W3LuuWpVqpa5eJHrp+AenzDAlKPRnCTnCj3ZKZnid9Fe4Or
 yXa7VJ6uudQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:42 -0700
IronPort-SDR: 1t4r2ENo+POeJxUXORVQ6lXg6+NnIjvmzTg2GJSMU4GMT78sKxVZ6LGoYxJZQiC5+SmueZIGFj
 l920CtZvY8XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585242"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:42 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:28 -0700
Message-Id: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH 00/14] Virtual bus implementation and SOF
 multi-client support
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
Cc: pierre-louis.bossart@linux.intel.com, fred.oh@linux.intel.com,
 shiraz.saleem@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This set of patches introduces the virtual bus implementation along
with the example usage in the Sound Open Firmware(SOF) audio driver.

The primary purpose of the virtual bus is meant to be a minimalist
software-based bus used for connecting virtual devices to be able 
to communicate with each other.

The SOF driver adopts the virtual bus for implementing the multi-client
support. A client in the context of the SOF driver is a device that needs
to communicate with the DSP via IPCs. With multi-client support, the sound
card can be separated into multiple orthogonal virtual devices for
local device (mic/speakers etc), HDMI, sensing, probes, debug etc. 
In this series, we demonstrate the usage of the virtual bus with the help
of the IPC test client which is used for testing the serialization of IPCs
when multiple clients talk to the DSP at the same time.

This version includes a series of incremental changes in virtual-bus based
of Andy and Pierre's comments. These should be squashed with the first commit.

Dave Ertman (1):
  Implementation of Virtual Bus

Ranjani Sridharan (13):
  virtual-bus: rename struct virtbus_dev_id
  virtual-bus: reword Kconfig help
  virtual-bus: add comment for virtbus entry
  virtual-bus: move MODULE macros to the end of the file
  virtual-bus: remove INVALID_ID and fix error path
  virtual-bus: remove #ifdef for PM ops
  virtual-bus: remove superfluous assignment
  virtual-bus: fix return value for match function
  virtual-bus: reorder header includes
  virtual-bus: remove filename from header
  ASoC: SOF: Introduce descriptors for SOF client
  ASoC: SOF: Create client driver for IPC test
  ASoC: SOF: ops: Add new op for client registration

 Documentation/driver-api/index.rst       |   1 +
 Documentation/driver-api/virtual_bus.rst |  93 ++++++
 drivers/bus/Kconfig                      |  11 +
 drivers/bus/Makefile                     |   2 +
 drivers/bus/virtual_bus.c                | 209 ++++++++++++++
 include/linux/mod_devicetable.h          |   8 +
 include/linux/virtual_bus.h              |  62 ++++
 scripts/mod/devicetable-offsets.c        |   3 +
 scripts/mod/file2alias.c                 |   8 +
 sound/soc/sof/Kconfig                    |  29 ++
 sound/soc/sof/Makefile                   |   7 +-
 sound/soc/sof/core.c                     |  10 +
 sound/soc/sof/intel/Kconfig              |   1 +
 sound/soc/sof/intel/apl.c                |  19 ++
 sound/soc/sof/intel/bdw.c                |  19 ++
 sound/soc/sof/intel/byt.c                |  22 ++
 sound/soc/sof/intel/cnl.c                |  19 ++
 sound/soc/sof/ops.h                      |  20 ++
 sound/soc/sof/sof-client.c               |  89 ++++++
 sound/soc/sof/sof-client.h               |  79 +++++
 sound/soc/sof/sof-ipc-test-client.c      | 348 +++++++++++++++++++++++
 sound/soc/sof/sof-priv.h                 |   9 +
 22 files changed, 1067 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/driver-api/virtual_bus.rst
 create mode 100644 drivers/bus/virtual_bus.c
 create mode 100644 include/linux/virtual_bus.h
 create mode 100644 sound/soc/sof/sof-client.c
 create mode 100644 sound/soc/sof/sof-client.h
 create mode 100644 sound/soc/sof/sof-ipc-test-client.c

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
