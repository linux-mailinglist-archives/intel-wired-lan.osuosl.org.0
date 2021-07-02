Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AA23BA21C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 16:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07FCA840F9;
	Fri,  2 Jul 2021 14:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mog10P71FFVb; Fri,  2 Jul 2021 14:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C60283FAA;
	Fri,  2 Jul 2021 14:27:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2E0A1BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E14E283FAA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2Zk0m36_Vxv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 14:27:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5ABB883F9A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:02 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id ie21so4706501pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 07:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LVdwwqVF/XZk39P/8nVH8GZpFL5LYEAsDqyuMwIEhh0=;
 b=KNwieUJbjyrDJya825rX/JxeJpZaH1FqOC2VBqqewLgfWC1uXzogpz3jh0X1HV4HUw
 5PGr3jO4W30awUg9jRxlP0ILhPoSXOgzD3QmGLTlwQSI2JXEvSyE8bZuErmViv02Wlnk
 TOSWHCjBOZvUZ2qap5yqdrdRTqY3II0U2yNlg0dVt0paH7LFh6GKZJOIsbEnlvcV3R9R
 pPmdobiZh0Cl4FhhoPzSyR2RUa3TYLK7Xq1LqcHkRXBVCVCARZgBEQw1PD9WyhM7inkI
 T4KRu92X5DxUWku5djVMJ+bwDkAl5VgwQlGZGYDUBjniUeXFHdCUrImdebpUukIQRO9P
 8ioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LVdwwqVF/XZk39P/8nVH8GZpFL5LYEAsDqyuMwIEhh0=;
 b=fzrJfvmsx9vbSE3mw5TnIfTRVA9+KVrx4gqyL10hexJM/S4N7S/v38CL/FavJE1ypw
 VprZVQnrGjv8EHampGNGP0GemlUnct39Zib9ixIGxry+Lnah2GpCfeSx/IviwVq/rkem
 vXCwXrjT9bjSdOYet/wPPz5L5FHAdoJeQoyMuRxPKIi3rKNLZuUW30C55yiiXEFLBZar
 hdDVTesNWosYAYiOyySi35zce9YjMzFt8m2YfbFSGTI9gD172HV9w/WJkl3ZAISw/UvK
 It8XrV9BO7HKoh0Wd0s+/HL3eVlIKtxf97sOML3ZZfBUMzXSU8y7nKReZGbEiQk1fGMM
 reKQ==
X-Gm-Message-State: AOAM531HPDXIZcEWjMvl62Gh79dbtGDWs+VP7Hik5bHlTMt5FSnACSR/
 HMTDCcBQUazSqX0nZxMaWfM=
X-Google-Smtp-Source: ABdhPJzOS3tskzLp+3Ip5cIPeh0p6NlZFSrWmoHbf0Y7aQjp86DUgPFh5UxOnaRLQCynIpbSSbWUBA==
X-Received: by 2002:a17:90a:1d0a:: with SMTP id c10mr72160pjd.39.1625236021689; 
 Fri, 02 Jul 2021 07:27:01 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id nr12sm12683747pjb.1.2021.07.02.07.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 07:27:01 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, jarod@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jul 2021 14:26:40 +0000
Message-Id: <20210702142648.7677-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net 0/8] net: fix bonding ipsec offload
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

Taehee Yoo (8):
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

 drivers/net/bonding/bond_main.c            | 176 +++++++++++++++++----
 drivers/net/ethernet/intel/ixgbevf/ipsec.c |  20 ++-
 drivers/net/netdevsim/ipsec.c              |   8 +-
 include/net/bonding.h                      |   8 +-
 4 files changed, 172 insertions(+), 40 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
