Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D89A93BC0E1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 655C1831BD;
	Mon,  5 Jul 2021 15:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbA-ttfP5gCX; Mon,  5 Jul 2021 15:38:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8634B831A5;
	Mon,  5 Jul 2021 15:38:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BC681BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8175040164
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjFyJLgxGF-h for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:38:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA966400EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:25 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id u19so10448134plc.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6EsKOTvWOjUQo1NWlcS80O57gWZwdcGLpYfT4315Shs=;
 b=uS/eo1JGtoUHrEoOmxaioV2Dkl3y80LdVCVjTEXsHwDWywF6WmXuenY1Qh0YTtfRNk
 cOEpBfitkBB7bYpnkvW4Kr3KZ4R3gYCGsXjYsG3GFPysmB+BsSiIU6R5zrW+ADIJNX78
 aboiERm4zo5PwQYCuHoNwuNdtx9K21UM8JrqvV14Jo+S7/VuZdwCuKv01MGRSekECAsi
 uhB3CuO7CvVp+RRpJCuMoHgDrzXNg9F2gBcJIPZZSbeqoiBkaQqRlyXE8mfQDYEWii11
 Xctj3zanXQp7jBONGWm76UBVd/o7siWxjyMmowZfZmPHFwkWnVsla/DAwxUkde286Cpv
 +epQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6EsKOTvWOjUQo1NWlcS80O57gWZwdcGLpYfT4315Shs=;
 b=Et6FeGO0rVUtC3uDZbEFATighlgJF0rugV8taiTcYmf1n3k0mj1CkIbcyDXISDeNKK
 bI4aYzLDmXvPPlEHbPAhviNrxrBTQBLF7JBQU43RAH608552fQMV3HNK1F0bRWQArajI
 Ip/GnnG0isxUTN0OqAKlfsFJFHycsHdEX1Bt8iXbg9tkBgdf46FqAYzzFV4y06PxnZrp
 yhpxK99AS/lsoWU4JtHtTXQOruq9apt8Q3JS8/drIVnXEp4p9GaBPMTE7KNGy9IIgOpR
 tU3LMkQ4fZCFP9LA+y/FfTitVm1F3fKUddY0cln66GFrPNkJZYIuuEJjdU9PKkeiuLbK
 QIqg==
X-Gm-Message-State: AOAM531Gy8Ko698eqqIQZo5mw8BsfR5YCoMbU8Ehwmedu228icv1ou6F
 5Mr6tEy/xwgkLxabvwqjT6c=
X-Google-Smtp-Source: ABdhPJzspn9E8JZ2oPLoi76w30PyAlKf/Z9s/OTru37hzWbSD+LmYJRhgCZepXJXS5CWMNESF9b8Gg==
X-Received: by 2002:a17:902:7c91:b029:129:8c0f:853 with SMTP id
 y17-20020a1709027c91b02901298c0f0853mr5315027pll.62.1625499505378; 
 Mon, 05 Jul 2021 08:38:25 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.38.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:38:24 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:05 +0000
Message-Id: <20210705153814.11453-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2 0/9] net: fix bonding ipsec offload
 problems
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
Cc: ap420073@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes some problems related to bonding ipsec offload.

The 1, 5, and 8th patches are to add a missing rcu_read_lock().
The 2nd patch is to add null check code to bond_ipsec_add_sa.
When bonding interface doesn't have an active real interface, the
bond->curr_active_slave pointer is null.
But bond_ipsec_add_sa() uses that pointer without null check.
So that it results in null-ptr-deref.
The 3 and 4th patches are to replace xs->xso.dev with xs->xso.real_dev.
The 6th patch is to disallow to set ipsec offload if a real interface
type is bonding.
The 7th patch is to add struct bond_ipsec to manage SA.
If bond mode is changed, or active real interface is changed, SA should
be removed from old current active real interface then it should be added
to new active real interface.
But it can't, because it doesn't manage SA.
The 9th patch is to fix incorrect return value of bond_ipsec_offload_ok().

v1 -> v2:
 - Add 9th patch.
 - Do not print warning when there is no SA in bond_ipsec_add_sa_all().
 - Add comment for ipsec_lock.

Taehee Yoo (9):
  bonding: fix suspicious RCU usage in bond_ipsec_add_sa()
  bonding: fix null dereference in bond_ipsec_add_sa()
  net: netdevsim: use xso.real_dev instead of xso.dev in callback
    functions of struct xfrmdev_ops
  ixgbevf: use xso.real_dev instead of xso.dev in callback functions of
    struct xfrmdev_ops
  bonding: fix suspicious RCU usage in bond_ipsec_del_sa()
  bonding: disallow setting nested bonding + ipsec offload
  bonding: Add struct bond_ipesc to manage SA
  bonding: fix suspicious RCU usage in bond_ipsec_offload_ok()
  bonding: fix incorrect return value of bond_ipsec_offload_ok()

 drivers/net/bonding/bond_main.c            | 181 +++++++++++++++++----
 drivers/net/ethernet/intel/ixgbevf/ipsec.c |  20 ++-
 drivers/net/netdevsim/ipsec.c              |   8 +-
 include/net/bonding.h                      |   9 +-
 4 files changed, 178 insertions(+), 40 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
