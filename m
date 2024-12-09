Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 867DD9E9637
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 14:15:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 469B881024;
	Mon,  9 Dec 2024 13:15:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i1kRlYNCHsfm; Mon,  9 Dec 2024 13:15:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6B808105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733750149;
	bh=Ta6qfqj3h7ofx4zGLzZ8ywuEEWcLnyFRUXyyMKsNQK0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WrWcHwWJzMxdbMlHDsEifOHLq8vwe+7L8gsT30KtcVMXjWbrfMDnj1iTH7twiCBLf
	 BzwxsluqKkUa2tzc4qKA4dY95nteh/8EEnZwOV2kM/DVV06W3lyZ6ic/D1ttD5cbr/
	 0z4f2WhLeADV/6CU8845gKqHBYqjJK2wxI3MIawGpOFuGE4msTWkMNuCQmpoPzZVdt
	 pyi4D3NfdxvnPWZZ+utqZM9d4KnJM7IXw2fzKeHpqYnZRjZVq19/6n3MtxMN6nn/pR
	 0SyjFCgAxcZim6jBrhlGs8p3Uzd1bGC756ZYiyogSXT0bnUHXrxFIAiCsu2//k9Xm6
	 Y9KEg0gebo17Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6B808105B;
	Mon,  9 Dec 2024 13:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 483956F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 13:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2869440644
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 13:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j3jzfS4pSpcC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 13:15:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A1A1440025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1A1440025
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1A1440025
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 13:15:45 +0000 (UTC)
X-CSE-ConnectionGUID: nf1dJC6bSXaEFbM1hDqfuw==
X-CSE-MsgGUID: eny46t3SQH2mLTqQzi6Veg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="33387380"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33387380"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:15:26 -0800
X-CSE-ConnectionGUID: upH4BBDWQw6YKV0qsT03pg==
X-CSE-MsgGUID: dd1JiDxAQlmtXN0f/DQ3Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="94934876"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa009.jf.intel.com with ESMTP; 09 Dec 2024 05:15:23 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: netdev@vger.kernel.org, andrew+netdev@lunn.ch, horms@kernel.org,
 jiri@resnulli.us, stephen@networkplumber.org
Cc: anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon,  9 Dec 2024 14:14:50 +0100
Message-ID: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733750146; x=1765286146;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OfsSxi1ioU/l1gn0t70Nt6sTdN6Vx9XfWhlSAt3Qeho=;
 b=j1pr+Lkxbpb4RXSUyc7c+dKvPxG8tVQ/uwMfOwP7Qsl7qu6AyO1l+/q6
 rRSRl7+QNnZbLZ/vrjSpzxWuLyplJ0fVjAWfYSKumHl13lt/83Ac/L5Tb
 l1Lcx5MbEe8/kB79Q0LVbTfyTDJRH17CgFG53LrVmYea+6uyF3zHE+LC5
 qXjOjhq8tQBurRlXMxi6X3yAfVB6+3ORu2Xk8viNJCuyX1xZK9qcrPDHV
 ML6yyRXNGTKrcUCfYzVTZDDfrZofmA1VeGxFaLxMCiwU8iKMPLKEzxDpr
 UekOz7hfDJsZIyBbbdJvieef6r/RaIkqPDCiId+NC6kX9U/dN3UqMVqYY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j1pr+Lkx
Subject: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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

RFC: Proposal for new devlink command to enforce firmware security

This RFC proposes addition of a new command to devlink API, providing a
mechanism to enforce secure firmware versions at the user's request. 
The primary goal is to enhance security by preventing the programming
of firmware with a lower security revision value. This feature is
particularly needed for Intel ice driver (and some other Intel drivers
next) but will be generic enough for other drivers to implement as well
for their purposes. Additionally, it proposes displaying the running
firmware security revision value and the set firmware minimum security
revision value in the output of the `devlink dev info` command for
Intel ice driver. 

Motivation

The E810 Ethernet controller provides a mechanism to prevent
downgrading to firmware versions containing known security
vulnerabilities. Specifically, the NVM components are signed
with a security revision, E810 ensures that components with
a lower security revision than the defined minimum cannot be loaded
onto the device.
Intel customers require that this action is not autonomous. Customers
typically uses this feature only in the target deployments after
finalizing testing of the new FW version. Autonomous action would
require manufacturer direct access to card to downgrade image to
previous stable version. By allowing the driver and user to manage the 
firmware security revision value, we can provide a flexible and secure
solution.
Additionally, displaying the current and minimum security revision
values in the `devlink dev info` command output will provide better
visibility and management for users.

Initial proposal for Minimum Security Revision update, via dedicated
parameter, was initially part of first devlink update deployment,
mechanism was questioned by community members [1]. However, Intel
still needs this functionality thus we are proposing a different
approach now to address the concerns raised previously. (In the last
community proposal, community proposed to make a decision based on
FW image - instead of dedicated parameter.)

Proposed design

New command, `devlink dev lock-firmware` (or `devlink dev guard-firmware`),
will be added to devlink API. Implementation in devlink will be simple
and generic, with no predefined operations, offering flexibility for drivers
to define the firmware locking mechanism appropriate to the hardware's
capabilities and security requirements. Running this command will allow
ice driver to ensure firmware with lower security value downgrades are
prevented.

Add also changes to Intel ice driver to display security values
via devlink dev info command running and set minimum. Also implement
lock-firmware devlink op callback in ice driver to update firmware
minimum security revision value.


Example usage:

$ devlink dev info pci/0000:b1:00.0

pci/0000:b1:00.0:
  driver ice
  serial_number 00-01-00-ff-ff-00-00-00
  versions:
      fixed:
        fw.mgmt.min.srev 8
        fw.undi.min.srev 8
      running:
        fw.mgmt.srev 9
        fw.undi.srev 9
        

$ devlink dev lock-firmware pci/0000:03:00.0

WARNING: This action will prevent downgrades to versions with lower the
security version Are you sure you want to lock the firmware on device %s?. (y/N)
>y

$ devlink dev info pci/0000:03:00.0

pci/0000:03:00.0:
  driver ice
  versions:
      fixed:
        fw.mgmt.min.srev 9
        fw.undi.min.srev 9


This feature is essential for the `ice` Ethernet driver (and other
Intel drivers next) but is designed to be generic for other drivers
to implement. Feedback and suggestions are welcome.

[1] https://lore.kernel.org/netdev/20210203124112.67a1e1ee@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/T/#u


Martyna Szapar-Mudlaw (1):
  devlink: add new devlink lock-firmware command

 include/net/devlink.h        |  2 ++
 include/uapi/linux/devlink.h |  2 ++
 net/devlink/dev.c            | 13 +++++++++++++
 net/devlink/netlink_gen.c    | 18 +++++++++++++++++-
 net/devlink/netlink_gen.h    |  4 +++-
 5 files changed, 37 insertions(+), 2 deletions(-)

-- 
2.47.0

