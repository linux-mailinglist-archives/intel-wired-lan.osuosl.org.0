Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5622A84B752
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 15:04:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8BC661214;
	Tue,  6 Feb 2024 14:04:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8BC661214
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707228285;
	bh=4Nr6dU2rmCXT6AY8jPwfs2yNfoItq4kTnpt7lysw1dY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ixtuRbB8HOQj75780DByo6+FyeBFVT+r55DzjxIEB3ukyzU+fOdVSYVvnC/vONDnH
	 cOE/9akWnPxFk+0CF1IoWmZzW5vK66r8wRAqP+6omGUmLd1pyVIuubaXTHI/iyAcTa
	 8IE8NkSdYyZUmxQ2dgD/qx5tJ0Pt8tbJUMCuAud8gHPHwdIb6OlgFde7/fp5k74hJ1
	 wSi9JMm10Y/wAZsctnhdF/Qx3EeKsV7d9jVbUAGhbxLDH9j8FVFu2RmEqnz9rosDhY
	 TsG+DEaH96/ZiRZerZdxtSLJvrClyZcZtNaeydxjpxu8MFrrWFZIZcJ6IBV+cjFNmw
	 W1l8hhMjEoBxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCFDf9wihHJX; Tue,  6 Feb 2024 14:04:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 135E360B77;
	Tue,  6 Feb 2024 14:04:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 135E360B77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E89A21BF576
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3C7C81F9C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYlvuuKC7tLD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 14:04:38 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 06 Feb 2024 14:04:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2A0581ED9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2A0581ED9
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=ilpo.jarvinen@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2A0581ED9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:04:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="905144"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="905144"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 05:57:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1309627"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO localhost)
 ([10.246.36.139])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 05:57:25 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue,  6 Feb 2024 15:57:13 +0200
Message-Id: <20240206135717.8565-1-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707228278; x=1738764278;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+6R/x2mXrJ2mSjnMfGMWqrnVr3TA5VqeovMhAdWHed8=;
 b=KcTcGHxCA2LctJHKxiIcwYuB6WG9dAhec5Y7/umSbOO8yL9Lt/QMnsIf
 BRAmMKM9Bt1TSNzuSbw9RYqkPGKko4RLW+OHLDiEBJrrRPvF2CDgEx6gW
 Tz2qM5yUthYZK1XZNonQwNc8LkFCjDeZMazBsKpuHmESQ7tshSXmlRFdV
 6Ov4PFCo5rDgqowXcCmtwSwkT71HaUgWd5J2wid9volIVCbhmKIf9ktOK
 pEqkRn2ZyBE4qZujYp2/WYcGaAtNhime0tqDAHHGzGl7NIkUXCqNrYSpQ
 5e1OZp538DGYpdEan4p4o1/L9nDEvqQYcW4dvamiPbGO1nJ3/wAo85pq2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KcTcGHxC
Subject: [Intel-wired-lan] [PATCH 0/4] PCI: Consolidate TLP Log reading and
 printing
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
Cc: Oliver O'Halloran <oohall@gmail.com>, linux-efi@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Borislav Petkov <bp@alien8.de>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series consolidates AER & DPC TLP Log handling code. Helpers are
added for reading and printing the TLP Log and the format is made to
include E-E Prefixes in both cases (previously only one DPC RP PIO
displayed the E-E Prefixes).

I'd appreciate if people familiar with ixgbe could check the error
handling conversion within the driver is correct.

Ilpo Järvinen (4):
  PCI/AER: Cleanup register variable
  PCI: Generalize TLP Header Log reading
  PCI: Add TLP Prefix reading into pcie_read_tlp_log()
  PCI: Create helper to print TLP Header and Prefix Log

 drivers/firmware/efi/cper.c                   |  4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 39 +++------
 drivers/pci/ats.c                             |  2 +-
 drivers/pci/pci.c                             | 79 +++++++++++++++++++
 drivers/pci/pci.h                             |  2 +-
 drivers/pci/pcie/aer.c                        | 28 ++-----
 drivers/pci/pcie/dpc.c                        | 31 ++++----
 drivers/pci/probe.c                           | 14 ++--
 include/linux/aer.h                           | 16 ++--
 include/linux/pci.h                           |  2 +-
 include/ras/ras_event.h                       | 10 +--
 include/uapi/linux/pci_regs.h                 |  2 +
 12 files changed, 145 insertions(+), 84 deletions(-)

-- 
2.39.2

