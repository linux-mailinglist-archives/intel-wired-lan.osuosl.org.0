Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB1373278
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 17:11:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B2D886852;
	Wed, 24 Jul 2019 15:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5kQN3pFN6Ihk; Wed, 24 Jul 2019 15:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BCA38685D;
	Wed, 24 Jul 2019 15:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13CDE1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F366485D55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vavhQMSFR0dx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 06:05:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB1BA85B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:05:21 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i18so20638408pgl.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 23:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kEit7lAB1Ue2Pj5oh+Mlb7ShDCe+fsz5zjPxqobMIKg=;
 b=LOZBVGQxyAGRUFVP8mPfnlKQD07SIGGlVfHqkFTEab3aa0FHzBfOCDb58AWG2QNF11
 KT0/Q5L2+y3O8rh914AlOqnBcMckN/0ycwl1E/FhHjHhxV2wsgtluQ9amIthLTXIZ6KI
 QVczTYnvho5/2SufK7VAhoSU8moWT1GL6DvExtCg7Lrsdc1SHpVZwkLjiB5eWwS5whNu
 kcFm5zVqBELbsneoH3jM4hjpxAOvrtK2WlyOrptwVEbr6W1vFe8nIK5Yy/36E2LXxg0k
 zqShovDJzgsBZsQbU6ER2hMs5AJGkNOEhhKPM1P5aGHDoNZ9thbjTArNYZ0eU6WOP1pG
 GpSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kEit7lAB1Ue2Pj5oh+Mlb7ShDCe+fsz5zjPxqobMIKg=;
 b=S0ZCI6tppDjO8FOXvI92P9EC3ogpeH/vxFtYAPcKtDiX38Cs7kAP3VoGkp+9VHv4m2
 C8LbvFWu0vU0yJPrjNzEYtZKaogLTNuAyA+a74buym8aRnQ86YuxYr2/fMzHFzLyUABx
 ADEzdLu6cnrhXiL5cB2jvO7+vSs72Visb/jg/rEZxBea/BOtDrqDLwLLssXS8H8jBqVf
 q4MQrRvyb6SXrxBJi8+kFkAPBtfV/Yip2ukPBV19gYbpSmBicr3o1jh4BRsuYcEF1FIr
 wxzsV9ZHlSKgDXzxXYdpQta4HOycO/aY8B/72kVb1cSJpZZB4laTbx8vIF0dcUdsx7gf
 YMYA==
X-Gm-Message-State: APjAAAWrPB6UuH2zkKe5IUqczseI1EopByR+YUl9CSBqF7ZUttVUlN37
 v2GL8ckVE1PYJkCvhdifFUM=
X-Google-Smtp-Source: APXvYqzgXdUAYYOPzIp2tCoOz/dnsYdNYa9oDXaK677WPWN4WX5+xa+IElSv4CWN2p4eSe3FBrKanA==
X-Received: by 2002:a17:90a:220a:: with SMTP id
 c10mr87503028pje.33.1563948321586; 
 Tue, 23 Jul 2019 23:05:21 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id y8sm42498752pfn.52.2019.07.23.23.05.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 23:05:20 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Wed, 24 Jul 2019 14:05:12 +0800
Message-Id: <20190724060512.23899-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 24 Jul 2019 15:10:50 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 0/8] Use dev_get_drvdata where
 possible
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
Cc: Jay Cliburn <jcliburn@gmail.com>, GR-Linux-NIC-Dev@marvell.com,
 Rasesh Mody <rmody@marvell.com>, Chris Snook <chris.snook@gmail.com>,
 Chuhong Yuan <hslester96@gmail.com>, Guo-Fu Tseng <cooldavid@cooldavid.org>,
 Prashant Sreedharan <prashant@broadcom.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Siva Reddy Kallam <siva.kallam@broadcom.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Michael Chan <michael.chan@broadcom.com>,
 Steffen Klassert <klassert@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

These patches use dev_get_drvdata instead of
using to_pci_dev + pci_get_drvdata to make
code simpler where possible.

Changelog:

v1 -> v2:
- Change pci_set_drvdata to dev_set_drvdata
  to keep consistency.

Chuhong Yuan (8):
  net: 3com: 3c59x: Use dev_get_drvdata
  net: atheros: Use dev_get_drvdata
  net: broadcom: Use dev_get_drvdata
  e1000e: Use dev_get_drvdata where possible
  fm10k: Use dev_get_drvdata
  i40e: Use dev_get_drvdata
  igb: Use dev_get_drvdata where possible
  net: jme: Use dev_get_drvdata

 drivers/net/ethernet/3com/3c59x.c               |  8 +++-----
 drivers/net/ethernet/atheros/alx/main.c         |  8 +++-----
 drivers/net/ethernet/atheros/atl1c/atl1c_main.c | 10 ++++------
 drivers/net/ethernet/atheros/atlx/atl1.c        |  8 +++-----
 drivers/net/ethernet/broadcom/bnx2.c            |  8 +++-----
 drivers/net/ethernet/broadcom/bnxt/bnxt.c       |  8 +++-----
 drivers/net/ethernet/broadcom/tg3.c             |  8 +++-----
 drivers/net/ethernet/intel/e1000e/netdev.c      |  9 ++++-----
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c    |  6 +++---
 drivers/net/ethernet/intel/i40e/i40e_main.c     | 10 ++++------
 drivers/net/ethernet/intel/igb/igb_main.c       |  5 ++---
 drivers/net/ethernet/jme.c                      |  8 +++-----
 12 files changed, 38 insertions(+), 58 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
