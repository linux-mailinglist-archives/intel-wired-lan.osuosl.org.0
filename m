Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B3DAE8918
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:04:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DFE341EAD;
	Wed, 25 Jun 2025 16:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IbWQ-rBn7uiU; Wed, 25 Jun 2025 16:04:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2247541EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750867471;
	bh=Q+YQRlWAxh/u3KZGceJZI0QvPxB2pEdgzLOjXIySUPY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qSyInSpAZRqT73xQOTQJC51dvGD5nQ/E2K8Iw9CWhZgcy5rnFyTC952pthM7FFALt
	 Ih9Ymuv348B0MaMeYot5+Y9l07iGTKq3l7YIiPWlei6rPEvFS7N2cHkBY7KhHGqpgn
	 yMfm4lWrBjOuUzlHUKuW1hQ+rkRcYPLFTlV7uNsVsbMErzBY6jqwAeO+Nicit8RYZY
	 SdH9qqEQo+qhpj8h4yVml7HInYJ1UBUiBVxEHZmd1Rr8liHX9MOqdBcz53euOqxJkt
	 8t5Sx5ULlkRitBdCMyNXMTQ9aP4nTg1EkXwOWSy3J1HdDJkvglxLz6vMSxuBgUjf29
	 C8B09hDgFp8Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2247541EA9;
	Wed, 25 Jun 2025 16:04:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C54F0E27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B79AA4187D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u4t5ygPQ9oqK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 118F34022B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 118F34022B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 118F34022B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: 27IDPiXDTEWarzLm2XNwWA==
X-CSE-MsgGUID: os3P4z5IRN2oqKklaIZtqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="70714933"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="70714933"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 09:04:28 -0700
X-CSE-ConnectionGUID: VLIuM2LrSU+hHl/6++y4Rw==
X-CSE-MsgGUID: yTZz/bU5QoOCfxv0IDPSmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="157752569"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa004.fm.intel.com with ESMTP; 25 Jun 2025 09:04:28 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Joshua Hay <joshua.a.hay@intel.com>
Date: Wed, 25 Jun 2025 09:11:51 -0700
Message-Id: <20250625161156.338777-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750867469; x=1782403469;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=weY6dY/NG/633bPgu7A3CLaWALB9w4mT2VRQGHXp5lE=;
 b=LtvXiaKM38wfmTc41XmGQTfqwO4FSbCo/hCHJaNLY3eK5XYoFJieO1/y
 SMGRjax+XnkQvuQbp4nE+vQ1PtNL9GSKNXt7NSxbH4UU3S2XJmNL+waP6
 +b6UeGqhiM8sIDTBCB4JIK3rbPzQ2u3WoMaxuzPzDsT+Zw1Qi45tb3Xuq
 e0Cm0bwKFPboyM23bquzsgBApXGCMcr+NweeyGMERRD1/DMfC3umdO3I4
 eZUvgoxkIfxgw6PCA21t3yZJQMtR4zK6C6G6f4srVMYkpodRcDvrllSqw
 dRWH3rpsI7c5bwOpuC8wHzu54ZrSu2/925htcVHr08fWsJairTV3EFczl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LtvXiaKM
Subject: [Intel-wired-lan] [PATCH net 0/5] idpf: replace Tx flow scheduling
 buffer ring with buffer pool
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

This series fixes a stability issue in the flow scheduling Tx send/clean
path that results in a Tx timeout.                                       
                                                                         
The existing guardrails in the Tx path were not sufficient to prevent
the driver from reusing completion tags that were still in flight (held
by the HW).  This collision would cause the driver to erroneously clean
the wrong packet thus leaving the descriptor ring in a bad state.        

The main point of this refactor is replace the flow scheduling buffer
ring with a large pool/array of buffers.  The completion tag then simply
is the index into this array.  The driver tracks the free tags and pulls
the next free one from a refillq.  The cleaning routines simply use the
completion tag from the completion descriptor to index into the array to
quickly find the buffers to clean.                                       

All of the code to support the refactor is added first to ensure traffic
still passes with each patch.  The final patch then removes all of the
obsolete stashing code.

Joshua Hay (5):
  idpf: add support for Tx refillqs in flow scheduling mode
  idpf: improve when to set RE bit logic
  idpf: replace flow scheduling buffer ring with buffer pool
  idpf: stop Tx if there are insufficient buffer resources
  idpf: remove obsolete stashing code

 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 626 ++++++------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  76 +--
 3 files changed, 239 insertions(+), 469 deletions(-)

-- 
2.39.2

