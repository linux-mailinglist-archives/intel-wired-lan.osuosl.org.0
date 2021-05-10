Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5329A377F82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6F198333F;
	Mon, 10 May 2021 09:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptaX1yZHYDj9; Mon, 10 May 2021 09:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E20D982F4F;
	Mon, 10 May 2021 09:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AF4A1BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55685607A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSBiBneyz-TL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83E376078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:18 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id l14so15878929wrx.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+SgeOxyLw6D2/NYUiDSf169BhY4hR61jsyOaUfcQmUE=;
 b=XlM1DnUAdIcmRd9TXZWdY9CWrS0mBvGfYTBvFolXTxqwL5oqT3SCt07EGI9jam1/J6
 Z8q/RI5Z49cZrpH4nD/6T20lpXaijCiCs2yg9dk6M1yxmKpniS5/b4PVK+l48EFhAEKs
 veYDSmkY/231J2Xof0kELRRPvG//BbFLEzXedfp/T3pO2a5hy5HuFqCtig37gCBcv2Ig
 8IRly157ocv7K5IKSPUegLICEwv771rniCizPr+1PQ0CnFpXQCM9Whig7eADf+qhrTSv
 Da8WopB6wCDVNkBOzVVXPkT21IE+tZExMUz1ASTAALp5A0xJv19F3d8gibQJjDgODiGE
 KNzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+SgeOxyLw6D2/NYUiDSf169BhY4hR61jsyOaUfcQmUE=;
 b=ptP4lKzCq7dtXVxoB1ZO5o0ytTfCPaIFlGE5dlHdoLTwS68M9qJO/lkGOn+P71NX4K
 RACwO0v2AX04r4THLOMEoLxqta6RsaQquldgj2ycy7mYOjNQm5Z/VVe2IZ3ARwf0tbIc
 7ssVa7wMSiXrYBkKaOPQq/aMitJZScl1AwnkAElcc+75lV92QsrDD11RLkr9vJzQglDX
 1be2xtD0bLR6Io0ucCspl7zssxQ67E8GiDjY6QbnDPzVKFmKOb0zN8DRDE6U1SeQRMvs
 IscbIf8hVtTBrhOe5kXmFKn9oQIbnmwXDdwdJtNi9D9Wo58XjGMGLNO3a4q+yD0lUT2I
 15ug==
X-Gm-Message-State: AOAM531tcyVQspwzIImyaVABKciHDXsTwKRBK2QuEoDA4klmDdh1n/+n
 xgaejxOWiNafUpKKPq6pK0Q=
X-Google-Smtp-Source: ABdhPJzlLsWqwkVkk3M/J7zDqY+T8QpXyIetN4EkJV3yzpQaVNedgCpq8B9+7JaF5aBwr7cupfg6eg==
X-Received: by 2002:adf:f60d:: with SMTP id t13mr30146922wrp.189.1620639556750; 
 Mon, 10 May 2021 02:39:16 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:16 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:48 +0200
Message-Id: <20210510093854.31652-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 0/6] i40e: ice: ixgbe:
 ixgbevf: igb: igc: add correct exception tracing for XDP
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
Cc: netdev@vger.kernel.org, brouer@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add missing exception tracing to XDP when a number of different errors
can occur. The support was only partial. Several errors where not
logged which would confuse the user quite a lot not knowing where and
why the packets disappeared.

This patch set fixes this for all Intel drivers with XDP support.

v1 -> v2:
* Applied fix to new XDP support in igc driver
* Rebased on latest net

Thanks: Magnus

Magnus Karlsson (6):
  i40e: add correct exception tracing for XDP
  ice: add correct exception tracing for XDP
  ixgbe: add correct exception tracing for XDP
  igb: add correct exception tracing for XDP
  ixgbevf: add correct exception tracing for XDP
  igc: add correct exception tracing for XDP

 drivers/net/ethernet/intel/i40e/i40e_txrx.c      |  7 ++++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c       |  8 ++++++--
 drivers/net/ethernet/intel/ice/ice_txrx.c        | 12 +++++++++---
 drivers/net/ethernet/intel/ice/ice_xsk.c         |  8 ++++++--
 drivers/net/ethernet/intel/igb/igb_main.c        | 10 ++++++----
 drivers/net/ethernet/intel/igc/igc_main.c        | 11 +++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 16 ++++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c     | 14 ++++++++------
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c    |  3 +++
 9 files changed, 57 insertions(+), 32 deletions(-)


base-commit: b741596468b010af2846b75f5e75a842ce344a6e
--
2.29.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
