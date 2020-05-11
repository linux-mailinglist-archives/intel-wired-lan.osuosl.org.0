Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8FB1CE5C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2020 22:41:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA5848833D;
	Mon, 11 May 2020 20:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lCgwkcGC-kRz; Mon, 11 May 2020 20:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0B1988330;
	Mon, 11 May 2020 20:41:49 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C7EF1BF396
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70B098832D
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9yIyOQO1AxyL for <intel-wired-lan@osuosl.org>;
 Mon, 11 May 2020 20:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF2BA882AF
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:46 +0000 (UTC)
IronPort-SDR: 5a246BkiP8fYVkkj5WVuYHqgXvO6ahu9NByqqnt+eLHMIUB354Exloynsn+ECuE0LdmJYcuseR
 hH09n3wn99Mg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 13:41:46 -0700
IronPort-SDR: IfJsReAwYtnqXmcbpYBscX8qxiApvdS+LR3e2jRitgycbu7OhznxTMZOYOXQb0NMzislEYoVxN
 0J6Ro5s4tRFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="306281694"
Received: from ajgalle-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.254.179.28])
 by FMSMGA003.fm.intel.com with ESMTP; 11 May 2020 13:41:46 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 11 May 2020 13:41:43 -0700
Message-Id: <20200511204146.19176-1-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH 0/3] Virtual bus usage in the audio driver
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
Cc: pierre-louis.bossart@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series shows an example of how the Virtual bus implementation
is used in the Sound Open Firmware (SOF) audio driver. 

A client in the SOF context is a device that needs to communicate
with the DSP via IPC messages. The SOF core is responsible for
serializing the IPC messages to the DSP from the different clients.
One example of an SOF client would be an IPC test client that
floods the DSP with test IPC messages to validate if the
serialization works as expected. Multi-client support will also add
the ability to split the existing audio cards into multiple ones,
so as to e.g. to deal with HDMI with a dedicated client instead of
adding HDMI to all cards.

Ranjani Sridharan (3):
  ASoC: SOF: Introduce descriptors for SOF client
  ASoC: SOF: Create client driver for IPC test
  ASoC: SOF: ops: Add new op for client registration

 sound/soc/sof/Kconfig               |  30 +++
 sound/soc/sof/Makefile              |   6 +-
 sound/soc/sof/core.c                |  10 +
 sound/soc/sof/intel/Kconfig         |   1 +
 sound/soc/sof/intel/apl.c           |  25 +++
 sound/soc/sof/intel/bdw.c           |  25 +++
 sound/soc/sof/intel/byt.c           |  28 +++
 sound/soc/sof/intel/cnl.c           |  25 +++
 sound/soc/sof/ops.h                 |  34 +++
 sound/soc/sof/sof-client.c          |  91 ++++++++
 sound/soc/sof/sof-client.h          |  84 +++++++
 sound/soc/sof/sof-ipc-test-client.c | 325 ++++++++++++++++++++++++++++
 sound/soc/sof/sof-priv.h            |   9 +
 13 files changed, 692 insertions(+), 1 deletion(-)
 create mode 100644 sound/soc/sof/sof-client.c
 create mode 100644 sound/soc/sof/sof-client.h
 create mode 100644 sound/soc/sof/sof-ipc-test-client.c

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
