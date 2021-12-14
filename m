Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0D2474ED7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 01:06:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56446408F7;
	Wed, 15 Dec 2021 00:06:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ohxT36gp9fp; Wed, 15 Dec 2021 00:06:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 632DF40205;
	Wed, 15 Dec 2021 00:06:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4BD81BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91F668148F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vl__8-Us8IF8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 22:43:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C517813B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:05 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id 200so9641393pgg.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=N+oezn23FqCF7+wZkUykJ3V4a162jZF/zUHUhsCfZRU=;
 b=KpPcBh2RnsbA2dcGTv3r6LpdRBLeBD8xUkkkJJsJCZs9xnzEvzEgg+vB5Dw5mZvqvx
 VLmp6z1HXvQaURERNwACfUBvWD2dLZSUAqMZFKev37rxteb7vbxfvPEcf4BzbPnTy6uk
 r/UFWLpKq5LfTIEsQcCoCIDfScwEipp+tl7I8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=N+oezn23FqCF7+wZkUykJ3V4a162jZF/zUHUhsCfZRU=;
 b=fe1MJfa32cOkXHmmMedkw3Ip13M8DpxHuvAXnchrg/ea/aUV9z/Ng37Lcmfe9nVWPh
 9+43xJ0VSB0aOvaXy0Bj59TOkkS3E16I1s0KPQqIWo2x1dzv8uWbgrvqWuI6gf/S+U3D
 Av3CFUH1pUgxefvrCtetngOJF+QzeAoy7R+GzYQa5STi522Jzm/6wlnwrnPxiwmlWbOQ
 +/SgGN2YWbZNoE/ghaDFzRBDZu6x1JisMWDJUMgitcJ8nJMM3EwkP9aSOmVdk6y5hbsD
 PCcGR/r1O17Lm6CcCT5ErOwego3V1lRgGfSrDstPCFWEiCnbqdBIilgNQqoP8K39LWZx
 FhuA==
X-Gm-Message-State: AOAM5332DercZbYbQdbd/akaVjPulfyWjQwN8zf6qORPAqGj9MXcPSAB
 osbC325MQguumje7Q5J3X6Wbax6ZSclP4l5gf82yhIUeZOWuQ3JsmML4EbBo1tGqM1GKuA89N0d
 lE17lHCkd27yHRS//RbYiMHwCReTmtbqBmO5vNMjwh/v5/YC5tAFNXTcfgv2832pe8wdTUcZCID
 98JxWVd42T
X-Google-Smtp-Source: ABdhPJzQv55PTvMvauoIuOmL29JJv/TQliKMqZVyOLP8I95W9BNStO4ksrbBxpcJnKgxILAJTHu57g==
X-Received: by 2002:a63:b95a:: with SMTP id v26mr5391174pgo.460.1639521785010; 
 Tue, 14 Dec 2021 14:43:05 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id mg12sm3448012pjb.10.2021.12.14.14.43.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 14:43:04 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 14:42:05 -0800
Message-Id: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Wed, 15 Dec 2021 00:06:03 +0000
Subject: [Intel-wired-lan] [net-queue PATCH 0/5] i40e: stat counter updates
 and additions
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

This patch set makes several updates to the i40e driver stats collection
and reporting code to help users of i40e get a better sense of how the
driver is performing and interacting with the rest of the kernel.

These patches include some new stats (like waived and busy) which were
inspired by other drivers that track stats using the same nomenclature.

The new stats and an existing stat, rx_reuse, are now accessible with
ethtool to make harvesting this data more convenient for users.

Joe Damato (5):
  i40e: Remove rx page reuse double count.
  i40e: Aggregate and export RX page reuse stat.
  i40e: Add a stat tracking new RX page allocations.
  i40e: Add a stat for tracking pages waived.
  i40e: Add a stat for tracking busy rx pages.

 drivers/net/ethernet/intel/i40e/i40e.h         |  4 ++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  4 ++++
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 14 +++++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 25 ++++++++++++++++++-------
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    |  3 +++
 5 files changed, 42 insertions(+), 8 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
