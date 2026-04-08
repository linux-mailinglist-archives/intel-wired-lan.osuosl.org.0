Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAxEMMai1mlUGwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A543C18A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B7D360756;
	Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aXDX33U2KQyF; Wed,  8 Apr 2026 18:47:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70FB060FA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775674051;
	bh=gn0Rh4OMyL/C5GSuI3pOaF5K2R5ovXBIRFMtLta9YJw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=y8IGFFKgpam5qPZ5UYDg2U+tdmvl0qz4nt2RGZVf0GBwVtTTH6A+j2c9VYJWV2Tui
	 YA45m3YxwlO+Bnp3y54l47/hW9o4C3F782F8y8KP5vgj4/ANraiWR4j3j34J5VctDc
	 RRyIZHQqtR4OHNl2BGfrmiWNb9GBegm8MI0U2ViwTyj8uDcJyvYW5VsdZnkZhd0Wqd
	 epluz04hA7RrrLstwil0Hf/JZL3fH1I/qL//cwAQpTQTG87Jv6O9aI7XlItmSLmhck
	 tDjN1ga2bLu2XgMr503lawTkE4+1TgTRYrvTSukQ++TxQVDbeRJsmAbz7vzeUrA+wm
	 JTf7EbbfvSqlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70FB060FA5;
	Wed,  8 Apr 2026 18:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D0022C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EED360FA5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PzMvw_mV2JQL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 18:47:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 848F160756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 848F160756
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 848F160756
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:28 +0000 (UTC)
X-CSE-ConnectionGUID: iuHaaU+jSiqRaz2t+Ne5wQ==
X-CSE-MsgGUID: w0M8iqX3TnKqkCl44rnDhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75841380"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="75841380"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:28 -0700
X-CSE-ConnectionGUID: ADitm5EzSh2dIfByfIqpTw==
X-CSE-MsgGUID: w1xbCf5STdaCnn9GT/g1+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230217556"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:26 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 08 Apr 2026 11:46:30 -0700
Message-Id: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yWMwQ6CMBAFf4Xs2U3aqhX9FeMB2qcuaiFdRBPCv
 1v1OJnMzKTIAqVDNVPGJCp9KmBXFYVrky5giYXJGefNxtTc3RgTEj/6DEbttoHP8obyvvEx7tb
 WttFTyYeMnyj1keR154SRTn+hz7ZDGL9jWpYPd7f0hYUAAAA=
X-Change-ID: 20260408-jk-even-more-e825c-fixes-9a6dd7311bd6
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev-306a9
X-Developer-Signature: v=1; a=openpgp-sha256; l=5658;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=DmanvA9tHclxyhu+ESIggN6Ege+JBj0Mde5bEHp/2x4=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsxri9Y2zNOprTy0fNsH8WWHGr5d2lfzKzEqbdL8A4cXv
 9Oy/7m9rqOUhUGMi0FWTJFFwSFk5XXjCWFab5zlYOawMoEMYeDiFICJtDxhZFj3nL9eqvp45pY7
 04rfzf5RWT910+u0k6zLO1xe15w+r7qS4X9AtWrVQlnp2zlyiX5s3pE8h4VePQnpVtMoeiCrqHh
 vDzcA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674048; x=1807210048;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=DmanvA9tHclxyhu+ESIggN6Ege+JBj0Mde5bEHp/2x4=;
 b=dnNFVpDGQxWyStU46fIMsG5aB/yjiwCWM6Y2m+FbqRWsYnoiZao/rC8D
 zjvUaGaK8tF3s1j06iztpsK1lmgb03vc0rYGnHAe2CIN1CzDjCZXZdi/4
 0WdrkXKRZMxJrET5KZto9vhxW4WvGIP9dtcRyrYnlMo3LI1rMNtx91Dcn
 N+CRfX8hpEYHsBRxjMTLrP8F0ISoeNHiZCTxGZ2bNAVpxSw49/mvhZHUn
 EOxL7bJo7474wV4RIYAWp4IK88NmN9gNpNWG1pYiRbZgKpf0NviwCRRqq
 MziXdUsSMTELnHr6HnBM2YUXVmjsOxUZqX+PcfXtYvT3ZswuNuLwr5yJN
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dnNFVpDG
Subject: [Intel-wired-lan] [PATCH iwl-net 0/4] ice: E825C missing PHY
 timestamp interrupt fixes
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 73A543C18A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We recently ran into a nasty corner case issue with a customer operating
E825C cards seeing some strange behavior with missing Tx timestamps. During
the course of debugging. This series contains a few fixes found during this
debugging process.

The primary issue discovered in the investigation is a misconfiguration of
the E825C PHY timestamp interrupt register, PHY_REG_TS_INT_CONFIG. This
register is responsible for programming the Tx timestamp behavior of a PHY
port. The driver programs two values here: a threshold for when to
interrupt and whether the interrupt is enabled.

The threshold value is used by hardware to determine when to trigger a Tx
timestamp interrupt. The interrupt cause for the port is raised when the
number of outstanding timestamps in the PHY port timestamp memory meets the
threshold. The interrupt cause is not cleared until the number of
outstanding timestamps drops *below* the threshold.

It is considered a misconfiguration if the threshold is programmed to 0. If
the interrupt is enabled while the threshold is zero, hardware will raise
the interrupt cause at the next time it checks. Once raised, the interrupt
cause for the port will never lower, since you cannot have fewer than zero
outstanding timestamps.

Worse, the timestamp status for the port will remain high even if the
PHY_REG_TS_INT_CONFIG is reprogrammed with a new threshold. The PHY is a
separate hardware block from the MAC, and thus the interrupt status for the
port will remain high even if you reset the device MAC with a PF reset,
CORE reset, or GLOBAL reset.

PHY ports are connected together into quads. Each quad muxes the PHY
interrupt status for the 4 ports on the quad together before connecting
that to the MACs miscellaneous interrupt vector. As a result, if a single
PHY port in the quad is stuck, no timestamp interrupts will be generated
for any timestamp on any port on that quad.

The ice driver never directly writes a value of 0 for the threshold.
Indeed, the desired behavior is to set the threshold to 1, so that
interrupts are generated as soon as a single timestamp is captured.
Unfortunately, it turns out that for the E825C PHY, programming the
threshold and enable bit in the same write may cause a race in the PHY
timestamp block. The PHY may "see" the interrupt as enabled first before it
sees the threshold value. If the previous threshold value is zero (such as
when the register is initialized to zero at a cold power on), the hardware
may race with programming the threshold and set the PHY interrupt status to
high as described above.

The first patch in this series corrects that programming order, ensuring
that the threshold is always written first in a separate transaction from
enabling the interrupt bit. Additionally, an explicit check against writing
a 0 is added to make it clear to future readers that writing 0 to the
threshold while enabling the interrupt is not safe.

The PHY timestamp block does not reset with the MAC, and seems to only
reset during cold power on. This makes recovery from the faulty
configuration difficult. To address this, perform an explicit reset of the
PHY PTP block during initialization. This is achieved by writing the
PHY_REG_GLOBAL register. This performs a PHY soft reset, which completely
resets the timestamp block. This includes clearing the timestamp memory,
the PHY timestamp interrupt status, and the PHY PTP counter. A soft reset
of all ports on the device is done as part of ice_ptp_init_phc() during
early initialization of the PTP functionality by the PTP clock owner, prior
to programming each PHY. The ice_ptp_init_phc() function is called at
driver init and during reinitialization after all forms of device reset.
This ensures that the driver begins operation at a clean slate, rather than
carrying over the stale and potentially buggy configuration of a previous
driver.

While attempting to root cause the issue with the PHY timestamp interrupt,
we also discovered that the driver incorrectly assumes that it is operating
on E822 hardware when reading the PHY timestamp memory status registers in
a few places. This includes the check at the end of the interrupt handler,
as well as the check done inside the PTP auxiliary function. This prevented
the driver from detecting waiting timestamps on ports other than the first
two.

Finally, the ice_ptp_read_tx_hwstamp_status_eth56g() function was
discovered to only read the timestamp interrupt status value from the first
quad due to mistaking the port index for a PHY quad index. This resulted in
reporting the timestamp status for the second quad as identical to the
first quad instead of properly reporting its value. This is a minor fix
since the function currently is only used for diagnostic purposes and does
not impact driver decision logic.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Grzegorz Nitka (2):
      ice: fix timestamp interrupt configuration for E825C
      ice: perform PHY soft reset for E825C ports at initialization

Jacob Keller (2):
      ice: fix ready bitmap check for non-E822 devices
      ice: fix ice_ptp_read_tx_hwtstamp_status_eth56g

 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   5 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  40 ++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 253 +++++++++++++++++++++++++++-
 3 files changed, 265 insertions(+), 33 deletions(-)
---
base-commit: e3b6e4778608889866917014b7dfe88425073fe5
change-id: 20260408-jk-even-more-e825c-fixes-9a6dd7311bd6

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

