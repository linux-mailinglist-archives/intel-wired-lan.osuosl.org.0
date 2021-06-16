Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A94FA3A934C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jun 2021 08:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48358606A9;
	Wed, 16 Jun 2021 06:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EIOmbazwA7lv; Wed, 16 Jun 2021 06:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5195A6066F;
	Wed, 16 Jun 2021 06:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 288451BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 06:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 133034047E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 06:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cGfdqst_FwUK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jun 2021 06:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5994B40301
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 06:55:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E86AE613B9;
 Wed, 16 Jun 2021 06:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623826518;
 bh=JNLoEzRSUmckl8eLY94oHxsjeBDCiLlJ5aZAc+3RHhw=;
 h=From:To:Cc:Subject:Date:From;
 b=bIRjmcsZh0nDrGHZVv9Hdcp/Q7V4uZte3M33hb9qtbnnI2Do02YGKEM+D6wRBXJX8
 fXP7U8eEtlIoGGBRfcltvRJKfVLv6QfEzHWXg0RqgPTC/cqVmoVPlD3eInloJymMLC
 YFImERmycprD4hLIQfwK4FMud3KE6g98aGIK3QdPZWSv6z/ri/7N3dR5lTH3MJ8aUe
 Bp3u9e2L/j8FbtxvpC2tQVJI5GuWTuVepuuIxKMIBQ2anYz1TSwnwP/6dC4Hclk/V0
 JEx814LnbdMa7n/p9vSS8FAmzoK9B1aSqdGnO1eWFyBdMyWaXbzC4IY2JvfPF0KgqH
 Uy3+bF3abccxA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1ltPSG-004lCD-7Q; Wed, 16 Jun 2021 08:55:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Wed, 16 Jun 2021 08:55:06 +0200
Message-Id: <cover.1623826294.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/8] Replace some bad characters on
 documents
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
Cc: linux-ext4@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-pci@vger.kernel.org,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 linux-kernel@vger.kernel.org, Thorsten Leemhuis <linux@leemhuis.info>,
 linux-usb@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Jakub Kicinski <kuba@kernel.org>, Andreas Dilger <adilger.kernel@dilger.ca>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jon,

This series contain the remaining 8 patches I submitted at v3 that
weren't merged yet at -next.

This series is rebased on the top of your docs-next branch.

No changes here, except by some Reviewed/ack lines, and at the
name of the final patch (per PCI maintainer's request).

Mauro Carvalho Chehab (8):
  docs: admin-guide: reporting-issues.rst: replace some characters
  docs: trace: coresight: coresight-etm4x-reference.rst: replace some
    characters
  docs: driver-api: ioctl.rst: replace some characters
  docs: usb: replace some characters
  docs: vm: zswap.rst: replace some characters
  docs: filesystems: ext4: blockgroup.rst: replace some characters
  docs: networking: device_drivers: replace some characters
  docs: PCI: Replace non-breaking spaces to avoid PDF issues

 Documentation/PCI/acpi-info.rst                | 18 +++++++++---------
 Documentation/admin-guide/reporting-issues.rst |  2 +-
 Documentation/driver-api/ioctl.rst             |  8 ++++----
 Documentation/filesystems/ext4/blockgroup.rst  |  2 +-
 .../device_drivers/ethernet/intel/i40e.rst     |  6 +++---
 .../device_drivers/ethernet/intel/iavf.rst     |  2 +-
 .../coresight/coresight-etm4x-reference.rst    |  2 +-
 Documentation/usb/ehci.rst                     |  2 +-
 Documentation/usb/gadget_printer.rst           |  2 +-
 Documentation/vm/zswap.rst                     |  4 ++--
 10 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.31.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
