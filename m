Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A360AC109B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 18:02:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BBBE408F9;
	Thu, 22 May 2025 16:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 141Sspl3e2nA; Thu, 22 May 2025 16:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4241F4097D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747929719;
	bh=ZxFhflbimliafbtJmPdKTgC9NVu0XC2U0nRBfPwYjgM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3YJIPx8rUUNPBNqIVxUnPgQV0IG7TOPtGyQFp0Y3diX6s6X99e6Na0QIPHbqt4XNq
	 xx/zYCQX1MyHZdEwvtS6iq68ucpsLhAIk6UZ8Mw60QqI2HRdmq4A376cSGjsMtvZAV
	 wTXiBE9kF8aHmBacI5s7LGRg6D17I0fFigNsiIpDOIUH2e9lOn0OplZcg+iZ6bDgoT
	 caVigVGQYDt9/xXJuS+bLTnIkmdyE2GtcK3LlSY6axPL5yXGZX1VHZHnSsb0qe4lWG
	 cpyI3CCXRQZLsStc4A9B0okJrTT7ixLpSC5lVThyTBh+Se/YlxaFBOc2WNaiLdyBYE
	 fIV9GMhYEkSGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4241F4097D;
	Thu, 22 May 2025 16:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A40DB237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1BEB410A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DETUQ9bsLbbK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 16:01:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C073D40FB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C073D40FB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C073D40FB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:55 +0000 (UTC)
X-CSE-ConnectionGUID: vStKMqVBSZubppYSpxZ3vg==
X-CSE-MsgGUID: RW+CrJl0SKWme4zBNhE/nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="52594058"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="52594058"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 09:01:54 -0700
X-CSE-ConnectionGUID: PLjOBGdmSUOGpR/Q6fNbRw==
X-CSE-MsgGUID: AZVLfOhnQeiAP/rDbr/1oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="171649482"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 09:01:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com,
	Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 22 May 2025 09:01:38 -0700
Message-ID: <20250522160139.2662031-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
References: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747929716; x=1779465716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x10h8e/eqJOg9q/ZTthOhwwBRYZCwWgJkCiNI1Ibr1I=;
 b=RpUMxGK7RZ4mgtuXo1WCSw91XVHGRwp+WJ2dRtOoB2VaXf7lKO5wuv0m
 wU+QLROGS07RE+6dMvGWgrqDFlmVnTBKajNmOWOwi2rxrG8eYkjA6GCrn
 x8zKotHu2wSX7D3eOFXWNtAOhEbtB835ZwmyaNsEm55msiiapjmOMhTME
 vQc2wOtHVm7ixJJk/PQVYdfqqVdDMOaoobeyOz8Z/REm0ZG/ZRu/jDXkz
 KSxv9RNq7tRnV/zyNiQyknyzkE7ZlaO1plPNLnYyyaWrvOPjj+MwQcLfY
 aSOLRamcqgdLM3SokH6aOAf4llhI13ENQJKKxpCHgNFbLNYz8Tbzu6SaA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RpUMxGK7
Subject: [Intel-wired-lan] [PATCH linux-firmware 2/3] ice: update comms
 package to 1.3.55.0
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

Update comms package to 1.3.55.0 which adds support for E825-C devices.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 WHENCE                                        |   2 +-
 ...ms-1.3.52.0.pkg => ice_comms-1.3.55.0.pkg} | Bin 1434500 -> 1434500 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename intel/ice/ddp-comms/{ice_comms-1.3.52.0.pkg => ice_comms-1.3.55.0.pkg} (99%)

diff --git a/WHENCE b/WHENCE
index f63d1ecd0802..f12b14a1e4a5 100644
--- a/WHENCE
+++ b/WHENCE
@@ -6926,7 +6926,7 @@ File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
 
-File: intel/ice/ddp-comms/ice_comms-1.3.52.0.pkg
+File: intel/ice/ddp-comms/ice_comms-1.3.55.0.pkg
 File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.20.0.pkg
 
 License: Redistributable. See LICENSE.ice_enhanced for details
diff --git a/intel/ice/ddp-comms/ice_comms-1.3.52.0.pkg b/intel/ice/ddp-comms/ice_comms-1.3.55.0.pkg
similarity index 99%
rename from intel/ice/ddp-comms/ice_comms-1.3.52.0.pkg
rename to intel/ice/ddp-comms/ice_comms-1.3.55.0.pkg
index 5428fd5fd4d6fd0a8fb57be7f8075e64dd70f756..497ed1b3573d2d9eed6c1c044d5ed5499dc26408 100644
GIT binary patch
delta 2425
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
E0cEsv{{R30

delta 2398
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

-- 
2.47.1

