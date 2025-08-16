Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9026AB28B51
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 09:16:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80C8583E56;
	Sat, 16 Aug 2025 07:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lez8JplFwaSk; Sat, 16 Aug 2025 07:16:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D416283E49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755328562;
	bh=L/ujTUr3KkytZ7XQ+Ubeky6m+wEf1Q08xQAmZZjkwfI=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=75nrnaBE5a8TCU05zjsiLPtbQBLbX+ouNgo4MuDZmiZDzWR+x5hHA20s4j4/g3+vR
	 iLQoOSoF+lGr71Gm8ojuWbZd2Ki3Z7bgfWgiZ6qS1nqDOW5s1OmiPEXR3En6as4iPf
	 zSKZdPNUcuxMmrT34I+0a/eJalo2YSUGgriKFo0qBovo2DZRZfAndtyb7oYUF6BS2Y
	 8xAl8wGMPq9O7CDZNWz08EG0zJn+Wo9p/jEMtaGw3Ic6KN1rwAk5H1P0PigrmLcRRP
	 Brm05+blq/v+7ufO9bhjiXseCcqbtNkT0Onvb1gpQ+zulGHAQwYgtevzl92DULmH4G
	 RzLwYSdaAW8iQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D416283E49;
	Sat, 16 Aug 2025 07:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id DCDAE959
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id CE62640C4A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:16:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id 6aXVlgUD2om4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 07:16:00 +0000 (UTC)
X-Greylist: delayed 352 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 16 Aug 2025 07:15:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A492B40494
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A492B40494
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=83.223.95.204;
 helo=mailout1.hostsharing.net; envelope-from=lukas@wunner.de;
 receiver=<UNKNOWN> 
Received: from mailout1.hostsharing.net (mailout1.hostsharing.net
 [83.223.95.204])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id A492B40494
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:15:59 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by mailout1.hostsharing.net (Postfix) with UTF8SMTPS id 9FF5E1A793;
 Sat, 16 Aug 2025 09:10:03 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 by h08.hostsharing.net (Postfix) with UTF8SMTPSA id 55A5C600D2F4;
 Sat, 16 Aug 2025 09:10:03 +0200 (CEST)
X-Mailbox-Line: From 22e7b32bfe524219eb7ff1e5c6b4d91763b79eef Mon Sep 17
 00:00:00 2001
Message-ID: <cover.1755327132.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Sat, 16 Aug 2025 09:10:00 +0200
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: [Intel-wired-lan] [PATCH 0/3] ice/i40e: pci_enable_device() fixes
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

The ice and i40e drivers perform surplus calls to pci_enable_device()
on resume and on error recovery.  This results in the Memory Space Enable
bit in the PCI Command register not being cleared on driver unbind.

Not a catastrophic issue, so although these commits contain Fixes tags,
I recommend applying through next-queue.git to let them bake in linux-next
for a couple of weeks.

I have neither an ice nor i40e card available, so this is compile-tested
only.  I'm hoping Intel validation can test it.

Suggested test procedure:

- Unbind the driver through sysfs without having suspended the card:
  echo D:B:D.F | sudo tee /sys/bus/pci/drivers/ice/unbind
  (replace D:B:D.F with the device address, e.g. 0000:07:00.0)

- Verify with lspci that it says "Mem-" in the "Control:" register:
  lspci -vv -s D:B:D.F

- Rebind the driver:
  echo D:B:D.F | sudo tee /sys/bus/pci/drivers/ice/bind

- Suspend the card, resume the card, unbind the driver, re-run lspci.
  Expected result without this series "Mem+", with this series "Mem-".

For error recovery, the procedure is the same but instead of suspending
and resuming the card, an error needs to be injected.  See the section
on "Software error injection" in Documentation/PCI/pcieaer-howto.rst.

Thanks!

Lukas Wunner (3):
  ice: Fix enable_cnt imbalance on resume
  ice: Fix enable_cnt imbalance on PCIe error recovery
  i40e: Fix enable_cnt imbalance on PCIe error recovery

 drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++----------
 drivers/net/ethernet/intel/ice/ice_main.c   | 38 ++++++---------------
 2 files changed, 21 insertions(+), 46 deletions(-)

-- 
2.47.2

