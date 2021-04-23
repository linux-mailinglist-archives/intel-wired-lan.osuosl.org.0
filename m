Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB6E369003
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42939404D4;
	Fri, 23 Apr 2021 10:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hFrcjV-8MZd; Fri, 23 Apr 2021 10:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12363404C9;
	Fri, 23 Apr 2021 10:05:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FA701BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CB2D404C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id teVgQ9Ba3mJT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:05:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D28EF404C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:05 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id e5so19109497wrg.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r4tFvADt1vOjGuicyc10hP8PHZVHJ+hNpypqyZ4CeHc=;
 b=gPdjnFBfJ7XHP6uPz0huOkxajCxgMf766QrhET6PpZJeSLhGzkmzitKdWQaIHUftZS
 n1yOcYCb/GV4Y4vPOY44nYlDKAePuWg7J9BX6I1PivLrVaxDrgSYhRQe7JqjLFOdyG2Z
 H3LTEiTc143PYZA6zSzWTK7NGTKtBc4IuJsjlhtSHRha8TXS05BrgWN2xQEPA1pjV6QZ
 LS+IJS2lwEaJzGOHK5QRvMd3eDsjC9nSyRS9qKPmeqEe5BCKdLi0SshDoRItWkwRgwkJ
 ow9oGcY9XRGJvAzn6M3nfOvCWvPjBmwaNUiEcWqmR9qimQn22dmri1L2waK11kEQ+tO8
 l0rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r4tFvADt1vOjGuicyc10hP8PHZVHJ+hNpypqyZ4CeHc=;
 b=NAn93kffu3eBnTovGqv8xAnlsbsQyaR+Alwf/4b0ygdGZbsVgHlvSUA5F2cNgLf8RF
 rgagFuIRcx/GE9B52zNzQexWZkzgmeOgZ5N6sYNu+lXLFbJ10xcy7CLrvsVPn140eP8Z
 5+hLBOrdUrS2lGMk8bvCTf5aLzNvHjpFYphy98eQSE3/N9SXFF1NjKxQIb95ZkTW2rp+
 wbe+KmWoovvA7bVqv3I6wJym8dGjsDM48vcuf35T6rskArpJR5jcA7LT4xTtvrcJ7ED0
 /i3njygtxKTuw4aAdYgyx965TCsnAdArg8Pa1i6mmHs6vZ1Nx7HqfXalfGy8yRkGmxw+
 x6xw==
X-Gm-Message-State: AOAM533OqI5PNBotmffPA9J1kdCQcB8ZTLCCEqW5oVEvuFqWdkLPyWbR
 nHFUndEEW2D/wXwTR09YJxc=
X-Google-Smtp-Source: ABdhPJxYh8G37u54IHqUpwjDdauZRWo/0vwozNTHzrei35CVUTlpatOyHc94wyT3jSolHlNuMgEQAw==
X-Received: by 2002:a05:6000:190:: with SMTP id
 p16mr3699901wrx.334.1619172304101; 
 Fri, 23 Apr 2021 03:05:04 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id t12sm8599481wrs.42.2021.04.23.03.05.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:05:03 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 12:04:41 +0200
Message-Id: <20210423100446.15412-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 0/5] i40e: ice: ixgbe: ixgbevf:
 igb: add correct exception tracing for XDP
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

Thanks: Magnus

Magnus Karlsson (5):
  i40e: add correct exception tracing for XDP
  ice: add correct exception tracing for XDP
  ixgbe: add correct exception tracing for XDP
  igb add correct exception tracing for XDP
  ixgbevf: add correct exception tracing for XDP

 drivers/net/ethernet/intel/i40e/i40e_txrx.c      |  7 ++++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c       |  7 ++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c        | 12 +++++++++---
 drivers/net/ethernet/intel/ice/ice_xsk.c         |  7 ++++++-
 drivers/net/ethernet/intel/igb/igb_main.c        | 10 ++++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 16 ++++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c     | 13 ++++++++-----
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c    |  3 +++
 8 files changed, 52 insertions(+), 23 deletions(-)


base-commit: bb556de79f0a9e647e8febe15786ee68483fa67b
--
2.29.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
