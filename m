Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8539DFCDFE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8110B22865;
	Thu, 14 Nov 2019 18:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpOcJMe+W1QB; Thu, 14 Nov 2019 18:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B650227AD;
	Thu, 14 Nov 2019 18:45:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4AF61BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C083E89C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5JED6TOIqAor for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 388AD89C87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:10 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c13so4872239pfp.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wDwYkwxW0FxWLyE3I8m+kCLGsDG+n2ImaTBPf/mcEVk=;
 b=GgJV72BuHJJp+UqwsWqxhsCz/9TI9AARKZs0gXDWAnzYYo5Gia6DMl7m8k5Tv8KzSw
 NEMZAwt3LxpBgL7ENtWfg1Xkpnn3hChod84Jdw95rzyIc6cNQFOWALR4+xxTLNgKcfmu
 dro3XzbVjse/GgHlk3GmEltz3/zWdjoHv0ejOVMx3+cpg+ERGao2KL16AAni+zSVhGb+
 oR0pq1Wo7dn4j8rMhQZtfs+wkJBenV5KY3h0NQrkk0VEhnuTJFtMfS0q41SKSn5XvOn6
 f4hvpbMw8vhBN3JAHnxDTC6LwOrAGsjtW3AF6kzRUrlG2sTkVK6LzkQcWM0XzY3STiNu
 c6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wDwYkwxW0FxWLyE3I8m+kCLGsDG+n2ImaTBPf/mcEVk=;
 b=sTSzM7ihXu/uypwMsCnVcGz/Ma7EBLcznV2n4qNvwJPJ5tACyt24fiRkHR4NizWOVR
 M5GnGFE3NbimMT07hfwvLB782wLkxz6/0R6A12UkwZBTXgogNjv38x8TNIphPUvev1K3
 ZNG0I/QYrsObgkraQkxK7rybsdGKnq/wTZWFLtXx+DmVKdOhfUtb1rQsAc08aLgywVMc
 WUsHkpKwChyQoBAo/OumAK4nNPor4cgOk1//sRucCaM4dLoicHSd9rSZbGSZ8qbF3slr
 7a1PP6R8Y2AhwHKeNfXCSrkxuMcIwaYcVAgR/jxK7/xbOdcH3FxXbJgBppxkoNLpWFQK
 Bnrw==
X-Gm-Message-State: APjAAAXErOGo1K8tpUU2gHxwNTyuaDxT9rryvrOJQ5DAvEW32Om1+ln5
 7vE3WBqzkdi4qSuSrVc55AQ=
X-Google-Smtp-Source: APXvYqwrUQaGEG3u5iMQy/fmgl1b2cO67i+m2RTiIx5cndf7jM7+Fv2AxcOgtwLPzNdYxDmxMzNKYQ==
X-Received: by 2002:a17:90a:970a:: with SMTP id
 x10mr933679pjo.39.1573757109680; 
 Thu, 14 Nov 2019 10:45:09 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:08 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:44:54 -0800
Message-Id: <20191114184507.18937-1-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 00/13] ptp: Validate the ancillary
 ioctl flags more carefully.
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The flags passed to the ioctls for periodic output signals and
time stamping of external signals were never checked, and thus formed
a useless ABI inadvertently.  More recently, a version 2 of the ioctls
was introduced in order make the flags meaningful.  This series
tightens up the checks on the new ioctl flags.

- Patch 1 ensures at least one edge flag is set for the new ioctl.
- Patches 2-7 are Jacob's recent checks, picking up the tags.
- Patch 8 introduces a "strict" flag for passing to the drivers when the
  new ioctl is used.
- Patches 9-12 implement the "strict" checking in the drivers.
- Patch 13 extends the test program to exercise combinations of flags.

Jacob Keller (6):
  net: reject PTP periodic output requests with unsupported flags
  mv88e6xxx: reject unsupported external timestamp flags
  dp83640: reject unsupported external timestamp flags
  igb: reject unsupported external timestamp flags
  mlx5: reject unsupported external timestamp flags
  renesas: reject unsupported external timestamp flags

Richard Cochran (7):
  ptp: Validate requests to enable time stamping of external signals.
  ptp: Introduce strict checking of external time stamp options.
  mv88e6xxx: Reject requests to enable time stamping on both edges.
  dp83640: Reject requests to enable time stamping on both edges.
  igb: Reject requests that fail to enable time stamping on both edges.
  mlx5: Reject requests to enable time stamping on both edges.
  ptp: Extend the test program to check the external time stamp flags.

 drivers/net/dsa/mv88e6xxx/ptp.c               | 13 +++++
 drivers/net/ethernet/broadcom/tg3.c           |  4 ++
 drivers/net/ethernet/intel/igb/igb_ptp.c      | 17 ++++++
 .../ethernet/mellanox/mlx5/core/lib/clock.c   | 17 ++++++
 drivers/net/ethernet/microchip/lan743x_ptp.c  |  4 ++
 drivers/net/ethernet/renesas/ravb_ptp.c       | 11 ++++
 .../net/ethernet/stmicro/stmmac/stmmac_ptp.c  |  4 ++
 drivers/net/phy/dp83640.c                     | 16 ++++++
 drivers/ptp/ptp_chardev.c                     | 20 +++++--
 include/uapi/linux/ptp_clock.h                |  5 +-
 tools/testing/selftests/ptp/testptp.c         | 53 ++++++++++++++++++-
 11 files changed, 156 insertions(+), 8 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
