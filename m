Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1EB8556F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E5AB4181E;
	Wed, 14 Feb 2024 23:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFuvscT-9D09; Wed, 14 Feb 2024 23:13:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3609341821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707952438;
	bh=Ww5EvsQOF699jHBYzWd4MuRfBoadfrzO0BL2hjc2gH4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eVRRvybvBqZDy9btYcxwW3TLNYjPmVUvaxcj5UYMiQauuiaWUO0m7cUJla8UUtY80
	 /WeJw9JSGgqITrwtAr5dpgzaEm2VBrnScna4tcmwm6Md9GZ6N2gVLm2eTUuPcc8zt2
	 09wr8kfbq7L65F5G8axqgnbP4cix87AJCuUrUo8g5xaj3jLS2ifbnHo3460ch8MrbE
	 cw4ZVjDoyoCRXpF8FfBEIibjgHOOJLom8lYo+Ctqw/ho4jhVmV4BQDsKcvfHhmjFVy
	 wBVu+q8a/iQwVd4thZU5FGzr1xk3GAod/f/NIRDD2+G59Q1/iM9DCiwBF9rXT5oO+k
	 EhX5mF38FRj4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3609341821;
	Wed, 14 Feb 2024 23:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5AD1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54FF241854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpSvveCyCbBF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:13:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF4C840279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF4C840279
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF4C840279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:53 +0000 (UTC)
Received: from c-76-156-77-114.hsd1.mn.comcast.net ([76.156.77.114]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1raORx-007pqx-4l; Thu, 15 Feb 2024 00:13:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 14 Feb 2024 17:13:17 -0600
Message-Id: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA1JzWUC/3WNQQqDMBBFryKz7pQYU4ldeY/iQs1YQ2WUxIhFc
 veG7Lt8PP77F3hyljw8iwscHdbblRPIWwHj3POb0JrEIIVUQgqFHyLCUEkcF+o5bDjo2tRaPbT
 RAtJsczTZMydfwLQj07lDl8xs/b66b/46yuz/Z48SBU5DTUJXsjFN3y6B+T7O0MUYf58MDWG4A
 AAA
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2155; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=gLQgyk5X0dfGFtt2TT12BCejyHtjgLKvuI1NVtt0538=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlzUkiGKMiPon6NtfhjVIhDqS+MTgu2ROwdFN6V
 xw/QM+lh/CJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZc1JIgAKCRDmvw3LpmlM
 hEvuD/wLKhX67mktUeliEEcXu/9ijGnoEzC9f7I6P41hTv8taKyQCcsxwJXIqrxHPqgmc8UaHFY
 nTaYI7j1ZPgZl2in7IoP8z70KgT2oZCi/6RAL1G8zybnb7UapD6fXbuZQoxN11sShSD9z9ld+X8
 foRAPfcma7ZDRLfOBejWREPkkd1eNVqs5uQhZMnyKI0i8+8uvW5fMIN8z7qF7zBZVnqESvDe8Vi
 dMI/zyq8gyiCrX5xtyKQ54dzTw1HxpMJ7n4PTkASp7YdsRFKYSFzJLJbcGHhyAeB+zhZ/xrrp2B
 oVrv1aMfe9W73U0dNWhmj8Q7xIPf8Kv2L/EJUIoAfYo0SMXXruaNhf/XpquBMrueYZo+hRQ2lIS
 ftygWZnJfZ7FbsuI/qNreZSaIs2UNViUTAdGhtKwY/AdUE+24Ci2PJiwntVEBAzFytFM43OdH7K
 eZeCO0Z/aD7ePbow3zoayL6q8xMZNRtcakQV1avmlj6gX/tLCFYTxDHF0TgA5brp+hBwR5G5LSw
 OQv+YgMUYLzoV+nsyEbzEakITZEKnPOYdM//4+2dpEJSDGndtBtTFqaUlrv7FvVDJUBdj/jIKl7
 Vw+lMmIToHcfgiUUJ6ifCkyCCMR0j9nCnveYiaCRtPWbJDo1MxCuVGnfC+qrpZEDjckowyb5UyD
 yfZFeNXcYdE47oQ==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-Id:Date:Subject:From:From:Sender:Reply-To:Subject:Date:Message-ID:To:
 Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Ww5EvsQOF699jHBYzWd4MuRfBoadfrzO0BL2hjc2gH4=; b=dWDTxDVgFCcm1eSezpPWqrkHOt
 q1YKXH5ZsiCxLqjUpS1X8SFfaQPmlJimqna1uzCpAbUuPpNIpISxhJA1NQAHbJumWFQga4pcsYdtM
 THBl3jyIuWyFcXmHbjapk8+Z+1n9k9rTKaJGvNPeYo272zJSaB50K+eQE0YdvWXxVg1U=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=dWDTxDVg
Subject: [Intel-wired-lan] [PATCH net-next v2 0/8] drivers: net: Convert EEE
 handling to use linkmode bitmaps
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
Cc: netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

EEE has until recently been limited to lower speeds due to the use of
the legacy u32 for link speeds. This restriction has been lifted, with
the use of linkmode bitmaps. This patchset convert some MAC drivers
still using the old _u32 to link modes, with the aim of soon being
able to remove the legacy _u32 members in the keee structure.

A couple of Intel drivers do odd things with EEE, setting the autoneg
bit. It is unclear why, no other driver does, ethtool does not display
it, and EEE is always negotiated. One patch in this series deletes
this code. Comments on why its actually useful and should be kept are
gratefully received.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
Changes in v2:
- igb: Fix type 100BaseT to 1000BaseT.
- Link to v1: https://lore.kernel.org/r/20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch

---
Andrew Lunn (8):
      net: usb: r8152: Use linkmode helpers for EEE
      net: usb: ax88179_178a: Use linkmode helpers for EEE
      net: qlogic: qede: Use linkmode helpers for EEE
      net: ethernet: ixgbe: Convert EEE to use linkmodes
      net: intel: i40e/igc: Remove setting Autoneg in EEE capabilities
      net: intel: e1000e: Use linkmode helpers for EEE
      net: intel: igb: Use linkmode helpers for EEE
      net: intel: igc: Use linkmode helpers for EEE

 drivers/net/ethernet/intel/e1000e/ethtool.c      | 17 +++++--
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c   |  7 +--
 drivers/net/ethernet/intel/igb/igb_ethtool.c     | 33 ++++++++-----
 drivers/net/ethernet/intel/igc/igc_ethtool.c     | 13 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 48 ++++++++++---------
 drivers/net/ethernet/qlogic/qede/qede_ethtool.c  | 60 +++++++++++++++---------
 drivers/net/usb/Kconfig                          |  1 +
 drivers/net/usb/ax88179_178a.c                   |  9 ++--
 drivers/net/usb/r8152.c                          | 31 ++++++------
 9 files changed, 123 insertions(+), 96 deletions(-)
---
base-commit: d1d77120bc2867b3e449e07ee656a26b2fb03d1e
change-id: 20240204-keee-u32-cleanup-b86d68458d80

Best regards,
-- 
Andrew Lunn <andrew@lunn.ch>

