Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4291A9B9B17
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 00:05:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC9F4607B1;
	Fri,  1 Nov 2024 23:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OtL1SDoXm1vS; Fri,  1 Nov 2024 23:05:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 101826078F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730502357;
	bh=sDiUOHUATGrJzLezQzChLLtd3rMPt9D2RAajRmCKMdc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HayZ8v+/tUbWCaeBqymklPJdEWUK38Ih3tC1KJNU3ZTl7leGr1C4LLreMIJT874HX
	 p9wca+R7iNGtjmxtd94stvcd0TxoBxfbF97u82K7h7ki+qhrx2ACa/IQYBPwV4wFNW
	 R4lbep5uGUGtxHPcbOWLY0u/jVALrz7em1Ei8MK4eDCKh5pY8FU+BJFWKdPQ5hv6Eu
	 DWfUBSbYklAC8BSg4TvcJYcKxk2VyLUOTBj3NXtxGb6dCKnuQf6jmJXJUVyczdQ84J
	 XFcvERh/I7dKbeMmMfvZTNpkOdhpg3Qucx6sawpTDi1Cwy+8PnBw5oABslJz662BA8
	 6wZtV09zdqmlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 101826078F;
	Fri,  1 Nov 2024 23:05:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B3C927E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A036A40571
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZrFR6e9Rs1gb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 23:05:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8E4784056F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E4784056F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E4784056F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: qQ+VPeDvShm+RUFFIjD05Q==
X-CSE-MsgGUID: JbU/VgfCT3KsZ5UxGpQ0Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30437321"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30437321"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:05:52 -0700
X-CSE-ConnectionGUID: 0ipRqYy8RoGdB0zHdtjylQ==
X-CSE-MsgGUID: lbqyYFg+R/qcKKgegXl4iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,251,1725346800"; d="scan'208";a="82775609"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:05:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 01 Nov 2024 16:05:42 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-1-f556dc9a66ed@intel.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
In-Reply-To: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730502353; x=1762038353;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=XalhVChtlj5dYllcUzE0rT6xk201K8U1c8fSrKpDu0o=;
 b=Ti/BqdBxcJuKDh0Ci1Zpym71gJTEbspVoFtyqJmhCDHTmG8nwdlRzHwT
 tjoasZqkDb7rKACoQMpBXLXNJEjdfLIplwEnabKVVeq0KQlpTn6egFstL
 HADNInvENhARZfnnwX7YhI9/Y5x/iYsWADBV9LZ8y8VJ0vUJNLrIDKyNQ
 5jI/jwWPM1OvaK0GOolqf2crMTwklaulqAn/RFrkpINb85hypvTchL4eh
 h323cJg9OY6VI8Q9NI8Qwa8f69uPBSyEkYaoTZwIHjFXf0UtNf8bjkaCc
 d1vSKa0M9GFHsSR9CPUIQV+e1DVQWIeQP3pJI+rlnc6dIyARWnT/TDUd7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ti/BqdBx
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ixgbevf: stop attempting
 IPSEC offload on Mailbox API 1.5
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 339f28964147 ("ixgbevf: Add support for new mailbox communication
between PF and VF") added support for v1.5 of the PF to VF mailbox
communication API. This commit mistakenly enabled IPSEC offload for API
v1.5.

No implementation of the v1.5 API has support for IPSEC offload. This
offload is only supported by the Linux PF as mailbox API v1.4. In fact, the
v1.5 API is not implemented in any Linux PF.

Attempting to enable IPSEC offload on a PF which supports v1.5 API will not
work. Only the Linux upstream ixgbe and ixgbevf support IPSEC offload, and
only as part of the v1.4 API.

Fix the ixgbevf Linux driver to stop attempting IPSEC offload when
the mailbox API does not support it.

The existing API design choice makes it difficult to support future API
versions, as other non-Linux hosts do not implement IPSEC offload. If we
add support for v1.5 to the Linux PF, then we lose support for IPSEC
offload.

A full solution likely requires a new mailbox API with a proper negotiation
to check that IPSEC is actually supported by the host.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ipsec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index 66cf17f19408..f804b35d79c7 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -629,7 +629,6 @@ void ixgbevf_init_ipsec_offload(struct ixgbevf_adapter *adapter)
 
 	switch (adapter->hw.api_version) {
 	case ixgbe_mbox_api_14:
-	case ixgbe_mbox_api_15:
 		break;
 	default:
 		return;

-- 
2.47.0.265.g4ca455297942

