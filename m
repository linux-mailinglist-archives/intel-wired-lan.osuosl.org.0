Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD427B9DEF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 15:58:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89F7A83A9C;
	Thu,  5 Oct 2023 13:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89F7A83A9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696514294;
	bh=Idy2lCj+Y+xyOxgM9/9pQSrLW3y3pHIE7vRZ688Q41k=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=FBrnj7BycYHCEMmrtQE5Ohf/oZkmem1odndIk05+nxvmpiuV/Ww48lfg81K7Os6nX
	 YnlcH/uMFyXS45empvNojFE4UictWtVHRRnbs/0qotWZlJY3La9IehJatDn6EwOe6B
	 a7FxRO2WlaQ36d5+Iqq3FdB6NclsvV+z6n2osChYAyULJXZ3Tzzz+VHc79LHDsJ+wr
	 PG1WOUo+JtHorApir675BWGzfaK7waol1oUuOqWLB/9QlZDsCzresthPVFyj0Y4V/I
	 1N7E/PdAfeUurnZ2JRQ0WjK6HFA3MB+BfqvwEqTg6LSzsLAXld4HKUVQekjSvbw3mp
	 VhQaXfniEu2rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kjDT8g1eBMsF; Thu,  5 Oct 2023 13:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CE9783AA4;
	Thu,  5 Oct 2023 13:58:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CE9783AA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB9D51BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0DE460A8A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0DE460A8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LI4VGrmWCw1o for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 13:58:07 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB02060A70
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB02060A70
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-32487efc319so1041990f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Oct 2023 06:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696514285; x=1697119085;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cbV1aUniv7FDwoYe4l9QjP2aDA1u/O0qniF8u91BDus=;
 b=kLpwZ8ncd1hB2dou2rD8DPLmwBa4BVDrfo2n0mp3RrKeOeASsBRz1+gkFbmJqImhCy
 lWToVSMIinlTYqm7/B6KGBzXs8/jeO9cKlstYOE8CuoXpzPQcQlvLU9pG++3p7UvcL/q
 FU6+hqsv2JZN33ARQvNEAE+V4sWwvbgITEEdJ9x5TdC6DfOMnyvPGKtKaBr770PAjWZp
 ta+HBwyWO+3Jy/WXgeHXZSZS1CYnhBksJrp4r02jOlo+xSkF/NSKPbIuP3KCPbSpEhHy
 E+Czu/G+H4kJzl8wjCP9CE6rhYVz9DqzUVoyB625jLxq2fopX753Ox//BofjGFSPp4Eb
 zhhw==
X-Gm-Message-State: AOJu0YwHMUBUSLOqt6YEZLWEsLhABNznPh9rmRnamGvA5Yy61GfvNwVl
 v/i5EXbTJHuopf5b+nl6am0Yuw==
X-Google-Smtp-Source: AGHT+IE/iWnwqmpAF4wqaA6W5GsdMwBdfNIcUdBB5OSIxRFtjMweSLN1TdvH9Iybz2DfnfNeSgB9KA==
X-Received: by 2002:a5d:538e:0:b0:317:6a7c:6e07 with SMTP id
 d14-20020a5d538e000000b003176a7c6e07mr4788087wrv.32.1696514284749; 
 Thu, 05 Oct 2023 06:58:04 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e14-20020a5d594e000000b0030ae53550f5sm1858644wri.51.2023.10.05.06.58.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Oct 2023 06:58:04 -0700 (PDT)
Date: Thu, 5 Oct 2023 16:58:01 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jinjie Ruan <ruanjinjie@huawei.com>
Message-ID: <34603f41-1d51-48df-9bca-a28fd5b27a53@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d61f086-c7b4-4762-b025-0ba5df08968b@moroto.mountain>
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696514285; x=1697119085; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cbV1aUniv7FDwoYe4l9QjP2aDA1u/O0qniF8u91BDus=;
 b=jZ+JT5QsWvmuLCYBhQ10RC4Iaqovizb4PRTrePdhbhDcxhvfwKIqvyCO0HrahPJoij
 DG9I7fPe2w67YavZkWjA+53C7tbhBbqaLVsD+c0m4tGLwk81cH1ZZchv4sks2ytGOFqZ
 HGYmvzungsVRKL1oxI9gfFZYu8idVRAk3zIcS6b2bRR/TnjLI3pIYmEzcxBlQQ8qopeQ
 HmwaGcd34K8ksfMBIRte3Y3mlHPruohOwcm2vYDj3p2f8TYUUltApkq7/YTuyu1UyEbo
 gv6QxGdYG3QSSAJflhtmjpoS5xyLnpS4nxU0NxQAsUvwjSrkuf8R2cn+My8hab+6QLr8
 FNWQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=jZ+JT5Qs
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ixgbe: fix end of loop test
 in ixgbe_set_vf_macvlan()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The list iterator in a list_for_each_entry() loop can never be NULL.
If the loop exits without hitting a break then the iterator points
to an offset off the list head and dereferencing it is an out of
bounds access.

Before we transitioned to using list_for_each_entry() loops, then
it was possible for "entry" to be NULL and the comments mention
this.  I have updated the comments to match the new code.

Fixes: c1fec890458a ("ethernet/intel: Use list_for_each_entry() helper")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 4c6e2a485d8e..a703ba975205 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -639,6 +639,7 @@ static int ixgbe_set_vf_macvlan(struct ixgbe_adapter *adapter,
 				int vf, int index, unsigned char *mac_addr)
 {
 	struct vf_macvlans *entry;
+	bool found = false;
 	int retval = 0;
 
 	if (index <= 1) {
@@ -660,22 +661,22 @@ static int ixgbe_set_vf_macvlan(struct ixgbe_adapter *adapter,
 	if (!index)
 		return 0;
 
-	entry = NULL;
-
 	list_for_each_entry(entry, &adapter->vf_mvs.l, l) {
-		if (entry->free)
+		if (entry->free) {
+			found = true;
 			break;
+		}
 	}
 
 	/*
 	 * If we traversed the entire list and didn't find a free entry
-	 * then we're out of space on the RAR table.  Also entry may
-	 * be NULL because the original memory allocation for the list
-	 * failed, which is not fatal but does mean we can't support
-	 * VF requests for MACVLAN because we couldn't allocate
-	 * memory for the list management required.
+	 * then we're out of space on the RAR table.  It's also possible
+	 * for the &adapter->vf_mvs.l list to be empty because the original
+	 * memory allocation for the list failed, which is not fatal but does
+	 * mean we can't support VF requests for MACVLAN because we couldn't
+	 * allocate memory for the list management required.
 	 */
-	if (!entry || !entry->free)
+	if (!found)
 		return -ENOSPC;
 
 	retval = ixgbe_add_mac_filter(adapter, mac_addr, vf);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
