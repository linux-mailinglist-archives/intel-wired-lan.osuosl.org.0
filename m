Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B158D7DBCB0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F8FA70AFF;
	Mon, 30 Oct 2023 15:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F8FA70AFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680116;
	bh=SGKVnBl6VZ8hgEKNDM+hT1KjxhGUH3182+GCxO89yS8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xGrHiC54sm4bonpTmwXaLnIwB7u7ZTRSoau+kZSjFBtv2N/h0hRASvJKCcw9nT5FP
	 VNjDbN4K5FTGmlBlXPPJM68cmCKlWMqWSpoSTo54M13uJTI1BiNvgJ1U46CZFxGmAp
	 UEILs+tw/8ZCwEPXjhQF628fFSfEFIAq6B83paWcOHMB0FrAh+EpjKtTiYjMqvll1y
	 AWrZ6daSrs/3dScw+bBp4Bct6rUrYG+excw3XnRPz9p8YXZmpCcMxcWj0tduMvgWIC
	 l6en6Kdt3oXq2GYF1cOJsEB33Q5IuU7ceKEyBc4afQxABpsIlrygMC81Vd4zySae/W
	 OWwQX00ExqCSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0O8u5ufl1t60; Mon, 30 Oct 2023 15:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 197617097E;
	Mon, 30 Oct 2023 15:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 197617097E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 360061BF977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F3E581EF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F3E581EF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwLUI_AEyEKm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 23:40:35 +0000 (UTC)
Received: from mail-oi1-x24a.google.com (mail-oi1-x24a.google.com
 [IPv6:2607:f8b0:4864:20::24a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 936F581EEF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 936F581EEF
Received: by mail-oi1-x24a.google.com with SMTP id
 5614622812f47-3b2ef9e4c25so370294b6e.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 16:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698277234; x=1698882034;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ax/nU1ZFqft8oVl1VFeTyrFHvNYL9G6jLEqvbbsuZrc=;
 b=i62YVkD+OeZlYLQqzlC9XYqVXrKK2zh2DLiCA7AYyk8eY1q6+MFt0qqYA7XIMze21E
 AM0ZHsors721UuhxGe9mSST5NAmqhUpGXCweiWHUf77nGTVcFzIp9LcSu++4PEs4ExyI
 oH2fcicsiZm8ioXPoAPYke7sPht/SO1LXpn/e/phsyYPArgMyD1AG7hwl9Kem6bZRcpF
 Iy75qzNKj48MIYm9VvI1T5ai1vKICQjAk4bY2URrzPAq10SQbclXQAEKDf0IBpVqI6gR
 utyMvJ2Dpo5Ap58jOyJqmSiPuNBKMxqiumvCUyNLYlHzpr74LOaaMnhn40/Gm0spMSil
 d3lA==
X-Gm-Message-State: AOJu0YzMG3pA8oDB/OvKAN7prdqfgcS8h55JmZK6+kaM/bsUo2J9/ZmN
 rwjj8DFK19gbOdqag7GvdkbubvXbq1ARZG87gg==
X-Google-Smtp-Source: AGHT+IHw/k5Q9J8vO1CuX5M/j0RoZQarFU1nkp8HN+n7tSv4SkiAOjOO7FMq1mjjWL8SudfGtRgbLzDKikkpHA3p+w==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:aca:211a:0:b0:3a7:45f6:4b3f with SMTP
 id 26-20020aca211a000000b003a745f64b3fmr5446803oiz.3.1698277233982; Wed, 25
 Oct 2023 16:40:33 -0700 (PDT)
Date: Wed, 25 Oct 2023 23:40:31 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG+nOWUC/x3MQQqAIBBA0avErBPUiqirREjZWAOVohZBePek5
 Vv8/0JATxigL17weFMge2aIsgC9TeeKjJZskFxWgsuGYdyitbtyVwyKDrezSdRtZ8ysW+SQO+f
 R0PM/hzGlD3eMzaxjAAAA
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698277232; l=3351;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=UeXhj1yUBRkd9WratOksK7CyAy5xMK0mPYfyx10bxZQ=;
 b=0w8LuFAfNlkvjcs5D4bU1gmw4mc0Z8LGR5Gx0Qu+E7eSP/aJ0ejYYmvSor7LgEkb5foJS31Xr
 L/Z9/AOw7F9DSBIfksjjQWnDSVIKPwwS5pRG348fL+1FujQZ1dqzFFE
X-Mailer: b4 0.12.3
Message-ID: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
From: Justin Stitt <justinstitt@google.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shay Agroskin <shayagr@amazon.com>, 
 Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon <darinzon@amazon.com>,
 Noam Dagan <ndagan@amazon.com>, 
 Saeed Bishara <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
 Dimitris Michailidis <dmichail@fungible.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, 
 Salil Mehta <salil.mehta@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, 
 Shannon Nelson <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>,
 drivers@pensando.io, 
 "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, 
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, 
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:34:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698277234; x=1698882034; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Ax/nU1ZFqft8oVl1VFeTyrFHvNYL9G6jLEqvbbsuZrc=;
 b=NxjQg390gH3iyvd3w/yRHmbDVDhjWPf1l05tLIKpyzvTlYIMvw31Y65pn1bvlEruJQ
 P6DhMT0GBXGy6jViNC9CvCnawpOTx+sGr/ZGUwnNz3J6Iu5Q/Ejj2A+EXaI19ZvbFAr8
 2rJVzeUKHoCvkRdDvd8aybPJFqbOBhuEQxby6BUS0UR3BrYbiSB2vhh4TUuvpD+AdxjO
 MjfsXFQQXT6P2fComEd1XIanTVC4J5iL+ENEgg5xtWeLc3E3Hl9m7pydgx3cs7dFsrDy
 tX1sSKyMgA+JiQElOZJSAkvvBqmDq5MixLBX0Mz6bx4OHUp1pxhBNNH44N5RQ+xNGpwn
 NCBQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=NxjQg390
Subject: [Intel-wired-lan] [PATCH 0/3] ethtool: Add ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org,
 Justin Stitt <justinstitt@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This series aims to implement ethtool_puts() and send out a wave 1 of
conversions from ethtool_sprintf(). There's also a checkpatch patch
included to check for the cases listed below.

This was sparked from recent discussion here [1]

The conversions are used in cases where ethtool_sprintf() was being used
with just two arguments:
|       ethtool_sprintf(&data, buffer[i].name);
or when it's used with format string: "%s"
|       ethtool_sprintf(&data, "%s", buffer[i].name);
which both now become:
|       ethtool_puts(&data, buffer[i].name);

The first case commonly triggers a -Wformat-security warning with Clang
due to potential problems with format flags present in the strings [3].

The second is just a bit weird with a plain-ol' "%s".

Note that I have some outstanding patches [2] (some picked up) that use
the second case of ethtool_sprintf(). I went with this approach to clean
up some strncpy() uses and avoid -Wformat-security warnings before
discussion about implementing ...puts() arose. I will probably let the
ones that have been picked up land but send new versions for others.

Wave 1 changes found with Cocci [4] and grep [5].

[1]: https://lore.kernel.org/all/202310141935.B326C9E@keescook/
[2]: https://lore.kernel.org/all/?q=dfb%3Aethtool_sprintf+AND+f%3Ajustinstitt
[3]: https://lore.kernel.org/all/202310101528.9496539BE@keescook/
[4]: (script authored by Kees)
@replace_2_args@
identifier BUF;
expression VAR;
@@

-       ethtool_sprintf
+       ethtool_puts
        (&BUF, VAR)

@replace_3_args@
identifier BUF;
expression VAR;
@@

-       ethtool_sprintf(&BUF, "%s", VAR)
+       ethtool_puts(&BUF, VAR)
[5]: $ rg "ethtool_sprintf\(\s*[^,)]+\s*,\s*[^,)]+\s*\)"

Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Justin Stitt (3):
      ethtool: Implement ethtool_puts()
      treewide: Convert some ethtool_sprintf() to ethtool_puts()
      checkpatch: add ethtool_sprintf rules

 drivers/net/ethernet/amazon/ena/ena_ethtool.c      |  4 +-
 drivers/net/ethernet/brocade/bna/bnad_ethtool.c    |  2 +-
 .../net/ethernet/fungible/funeth/funeth_ethtool.c  |  8 +--
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |  2 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |  2 +-
 drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   | 66 +++++++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     |  4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c       | 10 ++--
 drivers/net/ethernet/intel/igb/igb_ethtool.c       |  6 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c       |  6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   |  5 +-
 .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   | 44 +++++++--------
 drivers/net/ethernet/pensando/ionic/ionic_stats.c  |  4 +-
 drivers/net/hyperv/netvsc_drv.c                    |  4 +-
 drivers/net/vmxnet3/vmxnet3_ethtool.c              | 10 ++--
 include/linux/ethtool.h                            | 13 +++++
 net/ethtool/ioctl.c                                |  7 +++
 scripts/checkpatch.pl                              | 13 +++++
 18 files changed, 120 insertions(+), 90 deletions(-)
---
base-commit: d88520ad73b79e71e3ddf08de335b8520ae41c5c
change-id: 20231025-ethtool_puts_impl-a1479ffbc7e0

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
