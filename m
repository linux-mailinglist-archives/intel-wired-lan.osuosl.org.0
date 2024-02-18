Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A903C8597F3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 18:07:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD941821A6;
	Sun, 18 Feb 2024 17:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id duHvMxcC2lk2; Sun, 18 Feb 2024 17:07:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8591F82197
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708276057;
	bh=kVSOAYnUZ/Uj/HdzYfiBeOH6nZiY2AIhv4z/jR6yzYY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2xrDooaHNgzoBUSXTdT6RnSQX8D57IRwaio3DP96ngKDxMNGAJRa2P7DJfIFirX4s
	 1cTN2DiIOX2G4Os6CHYx3sx4OEdNIwsJOe62p//yJvXQB/u8t03dA2sdpdJMVSyDY+
	 VvZ5nf8/c5l+ak9vxwE8nK1EAx7bLAaMaJ4U6fSU8g9pRHSwsyQHgeyd/4uVdjNGnt
	 z5PJbSHQC4djlF4N1hF8Rc2fdd2wIXTOBCmE7mRJoFzvXTrsAmIydH/IfEusZhpG8J
	 IUkIGu13iF7FCuXfCFjf/uWv5MIUYa/A5+GeJZvB6AV7x1oXdrlT1b6unmG/Mremg/
	 zC1r7M6OXbFzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8591F82197;
	Sun, 18 Feb 2024 17:07:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 940A21BF396
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E4434071C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIun3p-SAXZY for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Feb 2024 17:07:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86E0440718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86E0440718
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86E0440718
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:32 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbkdY-0088HX-BR; Sun, 18 Feb 2024 18:07:32 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 18 Feb 2024 11:06:57 -0600
Message-Id: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADE50mUC/3XNSw6DIBgE4KsY1qVBQMSueo+mC4SfSmrQ4CM2x
 ruXsqlN7HIy+WZWNEBwMKBLtqIAsxtc52PgpwzpRvkHYGdiRpRQTijh+AkAeGIU6xaUn3pcS2G
 E5IU0kqDI+gDWLWnyhjyM2MMyontsGjeMXXilrzlP/f/ZOccE21oAkYxWplLXdvL+rJs0NdMdz
 484jZwrXTBeS2aE+OVsz8sDzj7v2opaUEV0ab9827Y3ZYlVwDYBAAA=
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3317; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=KnWWE44bi6i3GJAn1com4/VFE+nzWpKzn2h99Q39t8s=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0jk4TY6Sm1S4H9Bg6JfRKRwDdpQJ1s8bcO2+u
 jnIZ1HnW7yJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdI5OAAKCRDmvw3LpmlM
 hEp7EAC+voC2p5IA0eRPw/PampkjjG/fDv5MJNbNhQeRmcZFgV/C01ROct516eG4irybkvGZc/I
 reljgKgDsKzq37Qan0Vbf0CRBMFSUc7q3I4VM+qtmu5gali0hi3IxWxWyq6WRYRqdigzEaCoOZh
 c7D8fiJPR2XFBylaWTmhasz/4nzgBp1IEmDyyWeR7Kt2ZeUfFajD5eM7OJ9LbkRstKcQqhF6mTx
 JFlvIska3YY9/ythPkevBZwFC9XWgV51mB0kzwjQ6wkqq1yMZ90RFoW0P7BVExDHUdLgzWVkhl8
 nz3acSnDa1qQe8MCnCYxAxDEGrc6SWesGJpJsl6ZgWeG2y57ZjeUSorBwzi/8oICQZM8fYO97mi
 GZuKzvv8pVPhHFal7CWk6rknkZHqqr/TQ6IwsDIA2nJ7VezUuzjdOVeBT+1xiRre6dR3qg/X8Gp
 jFKqcrNkxgs+zgcGd2t04E9oQqYmbe6G2CMB9fZaD+xBfpGuVMlBmmQ+11QaP2aP8IEKOGpSTe/
 Nobs5fSwPsBUF6OzOcvbMraK+o5wpASRHbytX8d358n6yRW1uxRUK2a+G2Z7Zy2uPmCELieliBH
 t44ktnlouSG6Zf2dWun6KLGpJ98pkzK73yb8kyz5wguI/jktfWFtKhKz5eok+AdBhK8xK/dwV4U
 33o72jMcwpgEufw==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-Id:Date:Subject:From:From:Sender:Reply-To:Subject:Date:Message-ID:To:
 Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Content-Disposition:In-Reply-To:References;
 bh=kVSOAYnUZ/Uj/HdzYfiBeOH6nZiY2AIhv4z/jR6yzYY=; b=ABls1QscvCgWCOqXzGIgUsg6Hd
 cFkU9c0S2hCznDtLda8StQswNRGpoD0tt0EigrUpMcn9AdiP2sdDN3spLpYNASFFFQjjAnmGe7Anp
 wBEWXrHgvcplL5N/DG9vpKzWPN4XvFPo5b2Meq9yE8+JBGeiPiTz3V5ZRX800XHwlx/c=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=ABls1Qsc
Subject: [Intel-wired-lan] [PATCH net-next v4 0/9] drivers: net: Convert EEE
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

EEE has until recently been limited to lower speeds due to the use of
the legacy u32 for link speeds. This restriction has been lifted, with
the use of linkmode bitmaps, added in the following patches:

1f069de63602 ethtool: add linkmode bitmap support to struct ethtool_keee
1d756ff13da6 ethtool: add suffix _u32 to legacy bitmap members of struct ethtool_keee
285cc15cc555 ethtool: adjust struct ethtool_keee to kernel needs
0b3100bc8fa7 ethtool: switch back from ethtool_keee to ethtool_eee for ioctl
d80a52335374 ethtool: replace struct ethtool_eee with a new struct ethtool_keee on kernel side

This patchset converts the remaining MAC drivers still using the old
_u32 to link modes.

A couple of Intel drivers do odd things with EEE, setting the autoneg
bit. It is unclear why, no other driver does, ethtool does not display
it, and EEE is always negotiated. One patch in this series deletes
this code.

With all users of the legacy _u32 changed to link modes, the _u32
values are removed from keee, and support for them in the ethtool core
is removed.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
Changes in v4:
- Add missing conversion in igb
- Add missing conversion in r8152
- Add patch to remove now unused _u32 members
- Link to v3: https://lore.kernel.org/r/20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch

Changes in v3:
- Add list of commits adding linkmodes to EEE to cover letter
- Fix grammar error in cover letter.
- Add Reviewed-by from Jacob Keller
- Link to v2: https://lore.kernel.org/r/20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch

Changes in v2:
- igb: Fix type 100BaseT to 1000BaseT.
- Link to v1: https://lore.kernel.org/r/20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch

---
Andrew Lunn (9):
      net: usb: r8152: Use linkmode helpers for EEE
      net: usb: ax88179_178a: Use linkmode helpers for EEE
      net: qlogic: qede: Use linkmode helpers for EEE
      net: ethernet: ixgbe: Convert EEE to use linkmodes
      net: intel: i40e/igc: Remove setting Autoneg in EEE capabilities
      net: intel: e1000e: Use linkmode helpers for EEE
      net: intel: igb: Use linkmode helpers for EEE
      net: intel: igc: Use linkmode helpers for EEE
      net: ethtool: eee: Remove legacy _u32 from keee

 drivers/net/ethernet/intel/e1000e/ethtool.c      | 17 +++++--
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c   |  7 +--
 drivers/net/ethernet/intel/igb/igb_ethtool.c     | 35 +++++++++-----
 drivers/net/ethernet/intel/igc/igc_ethtool.c     | 13 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 48 ++++++++++---------
 drivers/net/ethernet/qlogic/qede/qede_ethtool.c  | 60 +++++++++++++++---------
 drivers/net/usb/Kconfig                          |  1 +
 drivers/net/usb/ax88179_178a.c                   |  9 ++--
 drivers/net/usb/r8152.c                          | 33 +++++++------
 include/linux/ethtool.h                          |  3 --
 net/ethtool/eee.c                                | 31 ++----------
 net/ethtool/ioctl.c                              | 29 ++++--------
 12 files changed, 139 insertions(+), 147 deletions(-)
---
base-commit: a6e0cb150c514efba4aaba4069927de43d80bb59
change-id: 20240204-keee-u32-cleanup-b86d68458d80

Best regards,
-- 
Andrew Lunn <andrew@lunn.ch>

