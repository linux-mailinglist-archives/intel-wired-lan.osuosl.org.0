Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 016D42EB2F7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:02:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEE1186214;
	Tue,  5 Jan 2021 19:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OIt-12x4EkMn; Tue,  5 Jan 2021 19:02:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05CB286109;
	Tue,  5 Jan 2021 19:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6A111BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD27187248
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yj9nxm9l4fJ1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 969CF86F93
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:45 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id j16so1939817edr.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c5LZXFqIn7R6ClYrbd/6/3ilXkYKGJa1HfU8I20ifNQ=;
 b=UMo2yfkpB8AvlnBYGmcSD+GN0v2P93kzIO5HmMuC4rlmA0G38BGILNalSWjga7yuma
 PDhNzqGFsUHfF7NsgEbiaJ4vLrT9CrFi9Z5QN7S0R340K9THPaA2sxGoi8mblbUNwMo9
 VAdBZzA/K00rP6mn+SHFHzg0ifqumdugVQEZx3kBb92drt6ga7l9KFaPwkSeJOOlFctq
 /izyzfBgxJpjaHkGgF75ptYsm4TJHGp6rxzZQbBDG4n21lHlMp3bS6eWPe52jRD0YOxa
 YcUB6NlOBCtAGM+lFmU+0rIXlp4CmfaSc8owGCAWKNxpakuTfgYBEZ0OCs+F3L5pftMr
 6mEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c5LZXFqIn7R6ClYrbd/6/3ilXkYKGJa1HfU8I20ifNQ=;
 b=h+pKH384gbdafTbLFmzetI19sUTRDsdPn/zAke9yP+nW9zSw3boTfOimPxf2Cb9ND8
 +freTln8w70RGdpx6wXArZCQPGHfFeC7G3QL9IEfelHZaSHfNCI7eKKRSe0NDHapxZ61
 0DnkqlJjgR969o1kRWLVeOAqCb7dVijewh+pfn7HpQ7eLqv/fP7m17ts4njL6cCMq/y3
 hzzMoxJKHBidiPwrz3FgL3CmsqFV+3hCxjbwGH+QSoPmfWiNHxPzTk1zq4P6OJqiiXa9
 GARYkAJ6kIoCJH8/MzGw1Ggdp1f4m89/BfmtYvby4ilnNfrIt3VjzdzTbDBBnZMW+Tfl
 qCfg==
X-Gm-Message-State: AOAM531ANG6otqYZRmprGsBbrTKn8rJRTD0gjgs2+bNNQTY0X4e/Idqd
 FbInYJkfvx5uFATr0ECBGZs=
X-Google-Smtp-Source: ABdhPJznueE1o/c0JdMAL2zDb2vf4Kz/hlQoaaf+SWuxB9TPtU7OsSSGi6W7WVwfCNZENmLZhaZ1wA==
X-Received: by 2002:aa7:c698:: with SMTP id n24mr1166300edq.277.1609873244092; 
 Tue, 05 Jan 2021 11:00:44 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:43 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:50 +0200
Message-Id: <20210105185902.3922928-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 00/12] Make
 .ndo_get_stats64 sleepable
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 George McCollister <george.mccollister@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Andy Gospodarek <andy@greyhouse.net>, dev@openvswitch.org,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Veaceslav Falico <vfalico@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Arnd Bergmann <arnd@arndb.de>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Benc <jbenc@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, Paul Gortmaker <paul.gortmaker@windriver.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Florian Westphal <fw@strlen.de>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>

Changes in v2:
- Addressed the recursion issues in .ndo_get_stats64 from bonding and
  net_failover.
- Renamed netdev_lists_lock to netif_lists_lock
- Stopped taking netif_lists_lock from drivers as much as possible.

This series converts all callers of dev_get_stats() to be in sleepable
context, so that we can do more work in the .ndo_get_stats64 method.

The situation today is that if we have hardware that needs to be
accessed through a slow bus like SPI, or through a firmware, we cannot
do that directly in .ndo_get_stats64, so we have to poll counters
periodically and return a cached (not up to date) copy in the atomic NDO
callback. This is undesirable on both ends: more work than strictly
needed is being done, and the end result is also worse (not guaranteed
to be up to date). So converting the code paths to be compatible with
sleeping seems to make more sense.

This is marked as Request For Comments for a reason.

Cc: Leon Romanovsky <leon@kernel.org>
Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: linux-s390@vger.kernel.org
Cc: Jay Vosburgh <j.vosburgh@gmail.com>
Cc: Veaceslav Falico <vfalico@gmail.com>
Cc: Andy Gospodarek <andy@greyhouse.net>
Cc: Sridhar Samudrala <sridhar.samudrala@intel.com>
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-parisc@vger.kernel.org
Cc: Christian Brauner <christian.brauner@ubuntu.com>

Vladimir Oltean (12):
  net: mark dev_base_lock for deprecation
  net: introduce a mutex for the netns interface lists
  net: procfs: hold netif_lists_lock when retrieving device statistics
  net: sysfs: don't hold dev_base_lock while retrieving device
    statistics
  s390/appldata_net_sum: hold the netdev lists lock when retrieving
    device statistics
  parisc/led: reindent the code that gathers device statistics
  parisc/led: hold the netdev lists lock when retrieving device
    statistics
  net: make dev_get_stats return void
  net: net_failover: ensure .ndo_get_stats64 can sleep
  net: bonding: ensure .ndo_get_stats64 can sleep
  net: mark ndo_get_stats64 as being able to sleep
  net: remove obsolete comments about ndo_get_stats64 context from eth
    drivers

 Documentation/networking/netdevices.rst       |   8 +-
 Documentation/networking/statistics.rst       |   9 +-
 arch/s390/appldata/appldata_net_sum.c         |  33 ++---
 drivers/leds/trigger/ledtrig-netdev.c         |   9 +-
 drivers/net/bonding/bond_main.c               | 121 +++++++++---------
 drivers/net/ethernet/cisco/enic/enic_main.c   |   1 -
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  |  51 ++++----
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   7 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |   7 +-
 drivers/net/ethernet/nvidia/forcedeth.c       |   2 -
 drivers/net/ethernet/sfc/efx_common.c         |   1 -
 drivers/net/ethernet/sfc/falcon/efx.c         |   1 -
 drivers/net/net_failover.c                    |  63 ++++++---
 drivers/parisc/led.c                          |  37 +++---
 drivers/scsi/fcoe/fcoe_transport.c            |   6 +-
 drivers/usb/gadget/function/rndis.c           |  45 +++----
 include/linux/netdevice.h                     |  13 +-
 include/net/bonding.h                         |  52 +++++++-
 include/net/net_failover.h                    |   9 +-
 include/net/net_namespace.h                   |   6 +
 net/8021q/vlanproc.c                          |  15 +--
 net/core/dev.c                                |  69 ++++++----
 net/core/net-procfs.c                         |  48 +++----
 net/core/net-sysfs.c                          |  10 +-
 net/openvswitch/vport.c                       |  25 ++--
 25 files changed, 372 insertions(+), 276 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
