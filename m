Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B60AC8610
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 03:50:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98E1741CCC;
	Fri, 30 May 2025 01:50:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l1uuuygd9x1F; Fri, 30 May 2025 01:50:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 912D941CCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748569803;
	bh=USkdCPHF2PH5TA65vT+omww+14Kmrvo8xr4kQydMtxQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0pF0U79nm5otempYqRgrm2qliMXD3xMU6maBPawmLNIR/ihnKkN/x0r/O3e6TKiE/
	 IQqBrVy7xkzKep3quUvzUuMdsR1r/eEL4jiISp+TaNET73QVv5oVg+FQt6oFH7eWCB
	 ZLburMdCd2mlOBQXqXkW/dwbBd0+Q+cckxuIbmbl6X86xR7HiZ8Jhebfl1diKbBXTy
	 zfOBxl6rN8e4pGvKEydIUPJBEwFbMhmokz3TPCZTEsYttKBgD0cHC8M8PNa3/1kA9d
	 G4KXWAi/KYuEsmXhNqILxoJX12NYyeTrjfsffSd74Xg5CYXjdhZR/hUkpE4f/UlXK2
	 c5bZJb3dgRELA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 912D941CCF;
	Fri, 30 May 2025 01:50:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D74E236
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 01:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C1244007B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 01:50:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TOIpRM9YtiPz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 01:50:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E38B40029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E38B40029
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E38B40029
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 01:50:00 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-2353a2bc210so462875ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 18:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748569800; x=1749174600;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=USkdCPHF2PH5TA65vT+omww+14Kmrvo8xr4kQydMtxQ=;
 b=ArySrIE0uEsRZP1/EVmTAARKzYfqoHnm7xxQVmdSgE5Ecw7/KqrZAJp/xG/0QLebgs
 SPAljP23FZpXeJ4uyS+rQdtuVIt21gDWjUXbvEWVAI58d3EGXaCvnS05Dw3zGPiC5Rul
 L8Nc7rFsKY0Kqu7SUc18qU/SBAF/7eejVTD/AkQ8VdPbUlnjKUWNc9EuV1UvDX0IKFSE
 znEeRwXtMmIyyXv9ZLuYu/Htjs0csWDndR7MeCxGvVOq3cV8UBdWySMA1M3D7GXnC8HH
 zwZOcqQfNg5lsyBKI/M60zw6I1VQ2SedwZZ/L+eyvtStnx+Ue65XHavribKJtkx4m09e
 Rusg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWDQHPt+2m/IW1V1BNhf5MwcDkYEYDtdsFx4P9A+FRmfcIHrjsxnJ7EFKcW/ejXZ9e+kbcZctnv77F4/4q8K+M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwWA2fv+maFxfjGzvOJwrkYhy17RDYPToB91ppA7+1s4sO0aW8f
 1B4YGPKZWPiPwcZ6L7pqMirpK0V6ZclBKHQCOYFhW8zFz9UOdnH4zB0GyFWVnnIkg3c=
X-Gm-Gg: ASbGncuq0QyHK/akC1hG9Q9Ay1GKZBmTt13BhO/+xXp1AJfqepzQVepS1LD04/nRrXV
 T122M0v6NWMj8HNqDRW8XdjI+cXIZUWOr7euFID8U29AVcrGn7U6UIDggx8XRKsumoS9PsnYOkl
 biC9BEbSWRnHw6bymY0lQHIHL8pBSSVHG6mLzvUTIkq33EdZJJ/kHIM2hrhKsMaFJUXsax9X6Uw
 5V1vaHWSbyMapWSW8wQ4BKM+ca5bqxX+2yXZ0N941MfDNqZqqtENA9bUg1SkKEIUMfbV//Bmc0E
 U96kx7awKtJmn0Cq78HolYCA3RnZPAzUgD/xBztsMUSEu7U4Dirl0R6xxDE=
X-Google-Smtp-Source: AGHT+IF30dyRi/lEN79RRLEUtNpNXnDs814PCaa5b5ybHznKzvJuCfgL1TejPuzA/dDpqBg0EpC+zQ==
X-Received: by 2002:a17:903:2f89:b0:234:eb6:a35b with SMTP id
 d9443c01a7336-235396e2b3amr5777265ad.44.1748569800003; 
 Thu, 29 May 2025 18:50:00 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23506cd8c35sm18316405ad.154.2025.05.29.18.49.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 May 2025 18:49:59 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: kuba@kernel.org, stfomichev@gmail.com, john.cs.hey@gmail.com,
 jacob.e.keller@intel.com, Joe Damato <jdamato@fastly.com>,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Fri, 30 May 2025 01:49:48 +0000
Message-ID: <20250530014949.215112-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1748569800; x=1749174600; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=USkdCPHF2PH5TA65vT+omww+14Kmrvo8xr4kQydMtxQ=;
 b=b+JI6UaVWLYUxTuLtBsKUTeDFbV/Yauk+vuWzlq2J54hg89tugRw35joO5dZzUhDR0
 ueEC3b/WUuT4nStI/tGlh/Ph+sdbM9E2g76lrdeVTY+y6rnrsfxW/glQaHjrMRmDhsOg
 4bYdNM2yw/zwXfLepEQ/kawOYvqxTmxYecIk4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=b+JI6UaV
Subject: [Intel-wired-lan] [PATCH iwl-net] e1000: Move cancel_work_sync to
 avoid deadlock
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously, e1000_down called cancel_work_sync for the e1000 reset task
(via e1000_down_and_stop), which takes RTNL.

As reported by users and syzbot, a deadlock is possible due to lock
inversion in the following scenario:

CPU 0:
  - RTNL is held
  - e1000_close
  - e1000_down
  - cancel_work_sync (takes the work queue mutex)
  - e1000_reset_task

CPU 1:
  - process_one_work (takes the work queue mutex)
  - e1000_reset_task (takes RTNL)

To remedy this, avoid calling cancel_work_sync from e1000_down
(e1000_reset_task does nothing if the device is down anyway). Instead,
call cancel_work_sync for e1000_reset_task when the device is being
removed.

Fixes: e400c7444d84 ("e1000: Hold RTNL when e1000_down can be called")
Reported-by: syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com
Closes: https://lore.kernel.org/netdev/683837bf.a00a0220.52848.0003.GAE@google.com/
Reported-by: John <john.cs.hey@gmail.com>
Closes: https://lore.kernel.org/netdev/CAP=Rh=OEsn4y_2LvkO3UtDWurKcGPnZ_NPSXK=FbgygNXL37Sw@mail.gmail.com/
Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 3f089c3d47b2..d8595e84326d 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -477,10 +477,6 @@ static void e1000_down_and_stop(struct e1000_adapter *adapter)
 
 	cancel_delayed_work_sync(&adapter->phy_info_task);
 	cancel_delayed_work_sync(&adapter->fifo_stall_task);
-
-	/* Only kill reset task if adapter is not resetting */
-	if (!test_bit(__E1000_RESETTING, &adapter->flags))
-		cancel_work_sync(&adapter->reset_task);
 }
 
 void e1000_down(struct e1000_adapter *adapter)
@@ -1266,6 +1262,10 @@ static void e1000_remove(struct pci_dev *pdev)
 
 	unregister_netdev(netdev);
 
+	/* Only kill reset task if adapter is not resetting */
+	if (!test_bit(__E1000_RESETTING, &adapter->flags))
+		cancel_work_sync(&adapter->reset_task);
+
 	e1000_phy_hw_reset(hw);
 
 	kfree(adapter->tx_ring);
-- 
2.43.0

