Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC301854060
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 00:52:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC77E415AD;
	Tue, 13 Feb 2024 23:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LhhXQq9moPP9; Tue, 13 Feb 2024 23:52:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C37C2415C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707868362;
	bh=ONh+Ku7Jop1qDO32NHNCvuRtlTctHJynF5yukWKn9FI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aT9WDJ8r8eflQNnAepwurD7QvQ/mqIPG41Wgf3Zy0oRNPzHe7PI+KfbeckHGaCgqW
	 T+Sjgch2DjcH6pnT2NWP0go8n0AhXeoQw+gXvEodTmoxvSv4kkMgvO1WDxhb+/M63+
	 8TYmafLozhVSr4L43LZrOyvpK+vrzOsmxZT9IE9FYwV+aWNVW6kBz9+dLpI7PAElim
	 ceL0i3CHZwTznn5pPQb3rEMiNdtoh0IL7hj660/von4xV7yaqa3Ytk40d6GDM4mb+P
	 QKjYscaDk5sNszaDtoSK+k/2g9MW5s2XJRgj9eW5i7/Gdv8Z5KXyiiA2jlg1Yav/yn
	 nRdyyQBG5P5iQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C37C2415C4;
	Tue, 13 Feb 2024 23:52:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7DD1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 23:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 688BD41572
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 23:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JXFlDEpPtLFS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 23:52:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 76E87405DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76E87405DD
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 76E87405DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 23:52:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BFDA3CE1F60;
 Tue, 13 Feb 2024 23:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB0DC433C7;
 Tue, 13 Feb 2024 23:52:32 +0000 (UTC)
Date: Tue, 13 Feb 2024 17:52:31 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20240213235231.GA1235066@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707868353;
 bh=f9SkOanpk9cjbIEF9cgwCrbTjfeHhRN/JwWknwHbfoE=;
 h=Date:From:To:Cc:Subject:From;
 b=IEAGqcCbe1uaHY/rXDR9LgRIEQRRtw7GKf0pWvhaMTddMNAlvTvmGtStrydIW5Mwu
 hHhC3qrnvfO8DMlwFB8GeoL1V03Rwu2OhjqdKzJ00IKRin7tgsvJKN6Dnds8/pETNn
 MbxtGrNtUmDlAXuoTu4LQGXCpF1nvi6YjlMNYecbmpLYathVoY9mXFPIFTXxQAHUBR
 qUokDMyzFfwd6MAmxsZG8gXVPyx02FjqGlcle+qcjRGsxuAMZYkMCMeYdYTH05OBMF
 ZZV4kv7I3/gddTjxbfhVjJkG5iaZ+Do61hDn7XnDYhqaYw9+LDUILFIGGlhCRNoGlE
 VLMvQFc7XpVPA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IEAGqcCb
Subject: [Intel-wired-lan] ixgbe probe failure on Proxmox 8
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, "Wang,
 Qingshun" <qingshun.wang@linux.intel.com>, linux-pci@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Just a heads-up about an ixgbe probe failure seen with Proxmox 8.  I
suspect this is a PCI core problem, probably not an ixgbe problem.

The ixgbe device logs an Advisory Non-Fatal Error and it seems like
subsequent reads from the device return ~0:

  pcieport 0000:00:03.1: AER: Corrected error received: 0000:05:00.0
  pci 0000:05:00.0: PCIe Bus Error: severity=Corrected, type=Transaction Layer, (Receiver ID)
  pci 0000:05:00.0:   device [8086:1563] error status/mask=00002000/00000000
  pci 0000:05:00.0:    [13] NonFatalErr

  ixgbe 0000:05:00.0: enabling device (0000 -> 0002)
  ixgbe 0000:05:00.0: Adapter removed

The user report is at
https://forum.proxmox.com/threads/proxmox-8-kernel-6-2-16-4-pve-ixgbe-driver-fails-to-load-due-to-pci-device-probing-failure.131203/post-633851. 

I opened a bugzilla with complete dmesg log at
https://bugzilla.kernel.org/show_bug.cgi?id=218491 with some
speculation about what might have caused this, e.g., an ACS
configuration error or something.  It's lame, I know, so this is just
a shot in the dark.

Bjorn
