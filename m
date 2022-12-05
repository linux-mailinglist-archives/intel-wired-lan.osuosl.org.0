Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6666434CD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E50BE40193;
	Mon,  5 Dec 2022 19:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E50BE40193
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670269993;
	bh=yf/GBOBUZOBjszD5ZiCPa8+Fj9yKrRWEFW80tNzA5Mw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fxjEAwg9ioYYmNrdl2WD/C4THRLUr1znZi6dBd22hBW3Mg54e93i5pnOsBsu55RKb
	 RpkMQ2jywqKYlj6Xg+IH45omhKTHiiQJW2tLRZPw3fB49+1slLmZlOtCOqayp3vZ92
	 Iw9t4IfSkDvmRtD6BC1YchpMmUOWv++l01NEw8fWkDITUlGtvfRLdjtkGYQVZoq/Ru
	 FHYk9/QCMx1QImdJumGBjoTATOqzkvS+3boroQ2SWGX1poQU1TQZnmy5M3y/1ulzy0
	 jJJe8jj53nagjdsYLZfqLHKCFC8O/iYgJqhjOlRG93DEBguZj9aTwJ7Xk4r/uEUi8M
	 Z6POYlz19nXMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFqQm3I8uk1E; Mon,  5 Dec 2022 19:53:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EB4140292;
	Mon,  5 Dec 2022 19:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EB4140292
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 086AB1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C067160DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C067160DF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-qAoB0xhL9z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 428E9607E1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 428E9607E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592360"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592360"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:52:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379265"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379265"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:52:59 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:38 -0800
Message-Id: <20221205195253.2475492-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269982; x=1701805982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jq9oMZY2I4449GpzXCOzEOOuq0qhnxLLmgqjDlUVG2Q=;
 b=lV/BOkIkJPhzWHFJBIHbZHmhTdmALU7l2qcpn7d5TqjtaYPalBE/pJ4z
 n/AzgJHetSpcZUkSIko/DtiFjw2Jrwumr4j9HLzMYnDgsGMk91DFK+8Gi
 DzGz+7kDhTBZuLVPmiM/olYdqrrp40PXCKQbQr3fz9hmJV5+rHGmGoRhk
 9gexZ9EqHnpPFOImzi26hH6b12jO5+4v29S+YIEa+S8a08mO+zteZBglI
 Ze8H3Y8h26edPMdB6l/vKgz5J9tpSgSAe1fLX4H4Aq82zk7EUUv7jvjBN
 Bz1P88Kjh6bGLIuJ5m9mPq1r3QyRWhFu3uBIv7znFAsyq9NN8vmCZc5kd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lV/BOkIk
Subject: [Intel-wired-lan] [PATCH net-next v3 00/15] ice: improve Tx
 timestamp corner cases
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

v1 was posted at https://lore.kernel.org/intel-wired-lan/20221101225240.421525-1-jacob.e.keller@intel.com/
v2 was posted at https://lore.kernel.org/intel-wired-lan/20221103220145.1851114-1-jacob.e.keller@intel.com/
v2 was also published to netdev as https://lore.kernel.org/netdev/20221130194330.3257836-1-anthony.l.nguyen@intel.com/

Changes since v1:
* Dropped ETH56G reference
* Fixed commit messages which used e8<NN> instead of E8<NN> when describing
  device families
* Dropped an unnecessary else statement
* Switched an ice_is_e810 check to a flag in ice_ptp_tx
* Fixed checkpatch errors
* Fixed kdoc comments

Changes since v2:
* Dropped incorrect/useless locking around init in ice_ptp_tx_tstamp
* Added patch to call sychronize_irq during teardown of Tx tracker
* Renamed and refactored "ts_handled" into "more_timestamps" for clarity
* Moved all initialization of Tx tracker to before spin_lock_init

Summary
-------

This series of patches primarily consists of changes to fix some corner
cases that can cause Tx timestamp failures. The issues were discovered and
reported by Siddaraju DH and primarily affect E822 hardware, though this
series also includes some improvements that affect E810 hardware as well.

The primary issue is regarding the way that E822 determines when to generate
timestamp interrupts. If the driver reads timestamp indexes which do not
have a valid timestamp, the E822 interrupt tracking logic can get stuck.
This is due to the way that E822 hardware tracks timestamp index reads
internally. I was previously unaware of this behavior as it is significantly
different in E810 hardware.

Most of the fixes target refactors to ensure that the ice driver does not
read timestamp indexes which are not valid on E822 hardware. This is done by
using the Tx timestamp ready bitmap register from the PHY. This register
indicates what timestamp indexes have outstanding timestamps waiting to be
captured.

Care must be taken in all cases where we read the timestamp registers, and
thus all flows which might have read these registers are refactored. The
ice_ptp_tx_tstamp function is modified to consolidate as much of the logic
relating to these registers as possible. It now handles discarding stale
timestamps which are old or which occurred after a PHC time update. This
replaces previously standalone thread functions like the periodic work
function and the ice_ptp_flush_tx_tracker function.

In addition, some minor cleanups noticed while writing these refactors are
included.

The remaining patches refactor the E822 implementation to remove the
"bypass" mode for timestamps. The E822 hardware has the ability to provide a
more precise timestamp by making use of measurements of the precise way that
packets flow through the hardware pipeline. These measurements are known as
"Vernier" calibration. The "bypass" mode disables many of these measurements
in favor of a faster start up time for Tx and Rx timestamping. Instead, once
these measurements were captured, the driver tries to reconfigure the PHY to
enable the vernier calibrations.

Unfortunately this recalibration does not work. Testing indicates that the
PHY simply remains in bypass mode without the increased timestamp precision.
Remove the attempt at recalibration and always use vernier mode. This has
one disadvantage that Tx and Rx timestamps cannot begin until after at least
one packet of that type goes through the hardware pipeline. Because of this,
further refactor the driver to separate Tx and Rx vernier calibration.
Complete the Tx and Rx independently, enabling the appropriate type of
timestamp as soon as the relevant packet has traversed the hardware
pipeline. This was reported by Milena Olech.

Note that although these might be considered "bug fixes", the required
changes in order to appropriately resolve these issues is large. Thus it
does not feel suitable to send this series to net.

Jacob Keller (11):
  ice: fix misuse of "link err" with "link status"
  ice: always call ice_ptp_link_change and make it void
  ice: handle discarding old Tx requests in ice_ptp_tx_tstamp
  ice: check Tx timestamp memory register for ready timestamps
  ice: synchronize the misc IRQ when tearing down Tx tracker
  ice: protect init and calibrating check in ice_ptp_request_ts
  ice: disable Tx timestamps while link is down
  ice: cleanup allocations in ice_ptp_alloc_tx_tracker
  ice: handle flushing stale Tx timestamps in ice_ptp_tx_tstamp
  ice: only check set bits in ice_ptp_flush_tx_tracker
  ice: reschedule ice_ptp_wait_for_offset_valid during reset

Karol Kolacinski (1):
  ice: Reset TS memory for all quads

Milena Olech (1):
  ice: Remove the E822 vernier "bypass" logic

Sergey Temerkhanov (1):
  ice: Use more generic names for ice_ptp_tx fields

Siddaraju DH (1):
  ice: make Tx and Rx vernier offset calibration independent

 drivers/net/ethernet/intel/ice/ice_main.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 556 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  41 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 336 ++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   8 +-
 5 files changed, 476 insertions(+), 474 deletions(-)


base-commit: 343a5d358e4ab5597e90e1eafa7eba55eb42e96b
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
