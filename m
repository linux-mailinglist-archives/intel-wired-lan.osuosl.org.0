Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4774794EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 20:38:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E75584D5C;
	Fri, 17 Dec 2021 19:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E7gL2gR7PQl3; Fri, 17 Dec 2021 19:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AE8384D56;
	Fri, 17 Dec 2021 19:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2041BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F16D86115D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4Dc08bbyT5z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 19:37:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E49461158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:40 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id np3so3146257pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HcXTVa8Ah3NyeD2lrHvUOQ7B2HFr5W9HewR5WjhvTIs=;
 b=edtiw6CFnFTFS7IRqecR3BzYzFNGnKEv3M8dMmapYbxbK7q6x9kwQMdZ+X+/VP+a/q
 R7xuKOux8EB5N28Mhi3l1FSp8WrN1jsL/CUHwoojzFHAXAaXJfb5NvzP9YXLFQOgjkR6
 R9YaSx25dWPXm70UrcDhif6u4HfcgXTeXdMac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HcXTVa8Ah3NyeD2lrHvUOQ7B2HFr5W9HewR5WjhvTIs=;
 b=p8lGZUa1BOockcxByZU1CXw3eKhhWw6pkWSItj2spA+kYhRZHAy2ZcwDvSOPk5KqcL
 Dldc6NBhKM+iIqnA5hzANGy9SKsUWXXHy8MjgOpey77AhY1KMIY6JrdqETQ/D8gjgWab
 AkX/nbyhDe1xR54QoUwtEOOnI/gao/4fs8ZaC9z99vzD9gi8FBbjQPigyPzKPy5ygbrW
 +/dIhutVhK0Ff+byGPyw5C86AWqih1FEFwdnuzS6mk9pc6fwS5dfPt6OM4jCgVNCvMQc
 rkCINLhA1t3rsdpA2boLknMOun75DN55kDT86N/QlwZNqGZiP6b4fAC/OqhENbBA3nHT
 fPnQ==
X-Gm-Message-State: AOAM53166d39EXg+TuvED+BejQvLhJYjul8APZ6ODBqgkmZaLt5GiF65
 i5AVZJngST9RpeTI59EE97cD8D27TL8Vihm0/mYazMG4k9IlilPx+fEhT9HVKTiB7/tuPbVQljH
 B45KQ+SHECG45sPoyY5y4InAQFP432MR9766PxzAOqnIb6JUiOk2/XjxX1gIDKNbPZHQiVbUkOB
 ttnTjQFXTg
X-Google-Smtp-Source: ABdhPJz03JJOaanKfWHxo47+Mgk+GWSmtH4fX3ZCPt8AkAu45BzSuZRAZoq7HHjgyBnl9fwXN49Duw==
X-Received: by 2002:a17:902:e54d:b0:148:a2e8:278a with SMTP id
 n13-20020a170902e54d00b00148a2e8278amr4602244plf.145.1639769859422; 
 Fri, 17 Dec 2021 11:37:39 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id o17sm8783294pgb.42.2021.12.17.11.37.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Dec 2021 11:37:38 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 11:35:14 -0800
Message-Id: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Fri, 17 Dec 2021 19:38:44 +0000
Subject: [Intel-wired-lan] [net-queue, v2,
 0/5] i40e: stat counter updates and additions
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
Cc: kuba@kernel.org, Joe Damato <jdamato@fastly.com>
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

These patches apply cleanly to the net-queue/devqueue branch.

---
v1 -> v2: patch 3/5: - "rx_reuse" corrected to "rx_alloc".
                     - Unnecessary else clause in i40e_alloc_mapped_page
                       removed.
---

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
