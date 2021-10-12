Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954AB42AF05
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 23:33:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC1D6404AF;
	Tue, 12 Oct 2021 21:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yzq2uVY1duxj; Tue, 12 Oct 2021 21:33:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8280E40150;
	Tue, 12 Oct 2021 21:33:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 551361BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 21:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 338B680D6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 21:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5754x1O5qlRY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 21:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6519880D4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 21:33:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="227174427"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="227174427"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 14:33:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="460529384"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 14:33:02 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 12 Oct 2021 14:32:21 -0700
Message-Id: <20211012213230.2684338-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v3 0/9] implement support for PTP
 on E822 hardware
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend the ice driver implementation to support PTP for the E822 based
devices.

This includes a few cleanup patches, that fix some minor issues spotted
while preparing them. In addition, there are some slight refactors to ease
the addition of E822 support, followed by adding the new hardware
implementation ice_ptp_hw.c.

There are a few major differences with E822 support compared to E810
support:

*) The E822 device has a Clock Generation Unit which must be initialized in
order to generate proper clock frequencies on the output that drives the PTP
hardware clock registers

*) The E822 PHY is a bit different and requires a more complex
initialization procedure which must be rerun any time the link configuration
changes.

*) The E822 devices support enhanced timestamp calibration by making use of
a process called Vernier offset measurement. This allows the hardware to
measure phase offset related to the PHY clocks for Serdes and FEC, reducing
the inaccuracy of the timestamp relative to the actual packet transmission
and receipt. Making use of this requires data gathered from the first
transmitted and received packets, and waiting for the PHY to complete the
calibration measurements. This is done as part of a new kthread, ov_work.
Note that to avoid delay in enabling timestamps, we start the PHY in
'bypass' mode which allows timestamps to be captured without the Vernier
calibration measurement. Once the first packets have been sent and received,
we then complete the calibration setup and exit bypass mode and begin using
the more precise timestamps. According to the datasheet, timestamps without
calibration data can be incorrect relative to actual receipt or transmission
by up to 1 clock cycle (~1.25 nanoseconds), while calibrated timestamps
should be correct to within 1/8th of a clock cycle (~0.15 nanoseconds).

*) E822 devices support crosstimestamping via PCIe PTM, which we enable when
available on the platform.

There is a fair amount of logic required to perform PHY and CGU
initialization, which is the vast majority of the new code, but it is fairly
self contained within ice_ptp_hw.c, with the exception of monitoring for
offset validity being handled by a kthread.

v3 should actually compile and work with the latest dev-queue from Tony on
Intel Wired LAN (Sorry for the noise, had a mix-up on my tree when I was
checking everything before sending!)

Changes since v2:
* Fix some minor typos reported by Paul Menzel
* Use ternary as suggested by Paul Menzel
* Fix misuse of now removed ice_status error codes (yay!)

Changes since v1:
* Restore the ICE_HWTS config that got dropped when regenerating the series.

Changes since original submission:
* Fix a bug with SIOCSHWTSTAMP failing to update returned filter to
  HWTSTAMP_FILTER_ALL
* Fix an issue with the Tx timestamp slot assignment using modulo instead
  of division
* Rebased on top of Intel Wired LAN dev-queue
* Dropped the patches which were previously applied as fixes
* introduced helper functions to enable and disable clock outputs
* Fixed build against non-X86 arch for the PCIe PTM support

Jacob Keller (9):
  ice: introduce ice_base_incval function
  ice: PTP: move setting of tstamp_config
  ice: use 'int err' instead of 'int status' in ice_ptp_hw.c
  ice: introduce ice_ptp_init_phc function
  ice: convert clk_freq capability into time_ref
  ice: implement basic E822 PTP support
  ice: ensure the hardware Clock Generation Unit is configured
  ice: exit bypass mode once hardware finishes timestamp calibration
  ice: support crosstimestamping on E822 devices if supported

 drivers/net/ethernet/intel/Kconfig            |   10 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |  116 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   12 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    9 +
 drivers/net/ethernet/intel/ice/ice_main.c     |    7 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  650 +++-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   30 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  374 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 2794 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  345 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   23 +-
 11 files changed, 4169 insertions(+), 201 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_consts.h


base-commit: 536869a6204135b4b6e18b4174239905a46abd0a
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
