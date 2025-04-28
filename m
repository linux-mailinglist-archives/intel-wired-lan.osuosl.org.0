Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F51A9F422
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 17:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2928940220;
	Mon, 28 Apr 2025 15:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AnM4-kcozzy5; Mon, 28 Apr 2025 15:11:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 820DD4030E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745853119;
	bh=bii84k2PSsRjXh40KifrKxUEqiTjcBYHwDngS0hjXyY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Y5XOgKMzO1xyAdl9vHRzsBT1JmUUxXer6k9p9afsjrdKiNoXcJUbWWwvMdj5ZDzyI
	 nIDZxIDpuMT6IWGrq/MBQlq11PwUKkdxwVM2xJCY9BFcVy1liBRpql8I27EadPr2nP
	 TpNmCtWf5zB6t8G6qNvF99d0tdH5V1Bphur7KbwXF4IV6sWm0VNsQaoJ6bh23GyXL1
	 dx29JzPSEqISId4857/Juq1Dp5PAep1BLdruARe9FGbWOYIhATp746gvwTZFcIYi/p
	 HJ/lwb8b/M4qo/PGePiickSplwh34Yqd/hMzObY6O3IVMil+W4x13SHEn0ahrl42Ed
	 HZk2EhHweK2eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 820DD4030E;
	Mon, 28 Apr 2025 15:11:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 46EE7194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 11:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3864A80FF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 11:54:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5o_-LYeBsqsh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 11:54:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.223.84;
 helo=nam11-dm6-obe.outbound.protection.outlook.com;
 envelope-from=ian.ray@gehealthcare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6932080B9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6932080B9E
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2084.outbound.protection.outlook.com [40.107.223.84])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6932080B9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 11:54:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f9aekAn5dnEAW3x2mXGpvqCRh1fXxZRYZC8pbuKx35pcbnQiKV/n0YfK8sEQZwt1bB+r/9qE3X9NhPY7bc3egE96kBtOFkVNAEVzJd1/3hIOOiIirQk2oJ/3XdMKwkdJmAUCZCJ9E2IqzAr4HOfFRaw/OJ476LC2fWHfESMhUM9wB2MdhyjVVzh3laG4E1pMvFq9maBMBQJCFAhpQ23XnAvofJRYufH3IyRm3GY0Wan9hXjdaQpw3R1uapqm0Fkl2xPtLmVdfeW4uiJaV0gR249ciBw2iTOYzOeStJTvcc17R014J/FWnqE72K7Ok0FUKTUT4eh+r7sovbKFyjY95A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bii84k2PSsRjXh40KifrKxUEqiTjcBYHwDngS0hjXyY=;
 b=dos1JW9wkrbJaZCre9QeNntxsBl3tWq9vMEJ2ZZj5x+UhJg7pknLG6IgWM9LsB6wuwnnS21TrEf9m2s0C2OSLVY2zc7vOr30ONM3dwlCPBcXor+e9Cx2WiElI/Hhw1FDpz+69de7iZ8Dlzvjrfiy4S5jZFcc/VoyHwgbKuP1jtzPjfpa3ym0eUzNO5YcKIUo8TEap4vi5AWuVWbQ9H9brnNoo3I0bKziVGvt7xv6EdSUtuk+4r/vA1F4TxwxXcQ54WwzhRxPYy6k9mee0wvOolUmxA4f0EPwAR2Jm8pLKPXDkuUuAJKU49ywFizR5xY+dVCtMmSt9zi67pCkK7JbsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
Received: from DM6PR08CA0051.namprd08.prod.outlook.com (2603:10b6:5:1e0::25)
 by CH3PR22MB5643.namprd22.prod.outlook.com (2603:10b6:610:1e4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Mon, 28 Apr
 2025 11:54:55 +0000
Received: from CY4PEPF0000FCBF.namprd03.prod.outlook.com
 (2603:10b6:5:1e0:cafe::2) by DM6PR08CA0051.outlook.office365.com
 (2603:10b6:5:1e0::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.37 via Frontend Transport; Mon,
 28 Apr 2025 11:54:55 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 CY4PEPF0000FCBF.mail.protection.outlook.com (10.167.242.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.33 via Frontend Transport; Mon, 28 Apr 2025 11:54:55 +0000
Received: from 56525d0f2b9b.fihel.lab.ge-healthcare.net
 (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
 by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 1AB7CCFB78;
 Mon, 28 Apr 2025 14:54:52 +0300 (EEST)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: brian.ruley@gehealthcare.com, Ian Ray <ian.ray@gehealthcare.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 28 Apr 2025 14:54:49 +0300
Message-ID: <20250428115450.639-1-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000FCBF:EE_|CH3PR22MB5643:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ed4f78fa-a157-4956-a0e3-08dd864b7e2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|36860700013|82310400026; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Gz9T/ypckKvcDqjFhy1kRw09iNagIchqUOwed2bIaSGFIDRPp8LIMogBQgcs?=
 =?us-ascii?Q?SoSrRv5RHjCs9lkwfcoGIIv/OekmfXwk+znoEVahj9CFNLHCfgs89MKb3Gho?=
 =?us-ascii?Q?MIF89jF876k1blL/azYC0Ffq9rEI8EhNVOu+ROHtH1+Hc2uD2qWpoebG6469?=
 =?us-ascii?Q?tbeLRb/OK97Lj1W0f2qw/zjxq2gjZAjzDUN3Y6Lavobre9/sxiME9WGxPlN+?=
 =?us-ascii?Q?d61gfUWBrv72MpEpO+0Gj2rBMqxLmFNOPiKUdGsk7ew0o0S+UHqLALOxstak?=
 =?us-ascii?Q?4Ok0yuVRS4g1dV+c0eQQCvyzjSPCEBr0PgP86VHgbtyxsNGs3tvh8WhKMxlo?=
 =?us-ascii?Q?2639ODcR1mg9kgmxzb6uIyhzvgSFDM96gMHVDlLFKQfw+U7ItaRxugm9rA0E?=
 =?us-ascii?Q?AvFqNvFdhHFzlGJG1AFm5zGGLjwyDNIV/ycSDU/eL/jcPZopvCWqfndLezwo?=
 =?us-ascii?Q?e0Ye9+tF63Kv5lSer8EVGhh+i0ZD4vAvIBwhA65P4Wu0xwfwx0JRaVpDh3X4?=
 =?us-ascii?Q?913Cdm54JOm4qoShvtoIEWc3MJen2Sd+grFbOMrwsbs4nhgR0VVAKuipi2sh?=
 =?us-ascii?Q?LHIoGZjeO6R1SNxdqOvcfoC4hDI6MhZOtbp7A6nA3oJeSoovmVq6BUi96AXP?=
 =?us-ascii?Q?N1RpieIvps76VA7qjPc/qGJpehyA3XzbQBxGANe1hkgPji70VRkuGcSeNf6X?=
 =?us-ascii?Q?bclovExEx7hE82LeU1pfw2OyQV8D6a5rF0eMx4YZAn6Di4yS+egQcqfWL8oq?=
 =?us-ascii?Q?G77Js9rMY0qh/deI6kaaD/1z79l41k0Sj9DOdcGGc27bzGUjUaFWDd8LQFuD?=
 =?us-ascii?Q?/tn5RrBJkERLW73auTlj8uVlOW8qGoN6qOIfsLwAvs9h4Oxrr1Vqg1ViSkiq?=
 =?us-ascii?Q?SKg+x8f4rg/IbwEYZDffTBEH+C9k9Cd7bfT6xAt/Ivk35sQH/PyaX5DRo5eo?=
 =?us-ascii?Q?jSzCNpBpKz7Chp1knj19XNEU7PFQUGCLTqGmx9Bi0ZsHkVQxjzQ1FjybYrKP?=
 =?us-ascii?Q?4EEJkat9K9TzeZb7F2goPWswSd2iX9djC976cjxnhmICJmZjp2MdEbp0EnBR?=
 =?us-ascii?Q?GtHKZPOR7tGKPLhKJXjvtsivbFxd+aV2uWRmz+ksVqoiQJK7k/DUEIU5sIKU?=
 =?us-ascii?Q?ZPF7aROARSe1daFhEzI505vEmsoaZexAFrpDYclrTzpYVW8h7ftz8ElggA3E?=
 =?us-ascii?Q?/YMB2xVaY0XDe5txN4OMvZQ0vbxKaMDMtfTmmQZuQA/OsMA0Pe0vONQ0xoMl?=
 =?us-ascii?Q?cimV+K6MBYGSDMXqI/PghNlMfYmp+qswqJ3ukDKf98/sso+upSkkqIsWheyr?=
 =?us-ascii?Q?qvHlJ4MDyNRR5TABYoXN/7Hp9XyT5hNHLuGSRZA7Nvv9vvPoWpknCJ9teeWc?=
 =?us-ascii?Q?QWGW3TQ+tSg6U62KfSx7FolL5yTsJPlhmynaNsRSAcVWSg41p8aoRlmzSSsD?=
 =?us-ascii?Q?POpFVg3QXwIoLC9xyz2Bjqh3FXVazopWjgvn1B8unRbDHHacKChmtoBRb9jl?=
 =?us-ascii?Q?wtZZUDxkwR9pPaP7nEdRk+0nRdOez/UYYspZ?=
X-Forefront-Antispam-Report: CIP:165.85.157.49; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mkerelay1.compute.ge-healthcare.net;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 11:54:55.1902 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed4f78fa-a157-4956-a0e3-08dd864b7e2a
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf; Ip=[165.85.157.49];
 Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CY4PEPF0000FCBF.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR22MB5643
X-Mailman-Approved-At: Mon, 28 Apr 2025 15:11:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gehealthcare.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bii84k2PSsRjXh40KifrKxUEqiTjcBYHwDngS0hjXyY=;
 b=Wk8oJgFQISz9pEodmkYiu8E799kaxwJ2GIPBpvn8y56K0euMkDsZMW3hyijBkgkY/oA6/SZKc5ihz8Kbg7//nCeUjUcvBn+3hM05cZGeygbj1iwC/qKT3sCB6ginloTVBuTmBFjTdzRG/crQu5/sOMFhZZ6ILuo1N2TXZ3XHQwLcYZpgQrpLJk31JS2gV6Dq9p1rcBZ8ahOV/ikpKIS1P5jUDjWhR5xMlc9sDh7OG2Fq0DW+0vHgKtHmOfw6t+lQJCIDF2DXHsQldTfEfxLwL1ZdDnuAtvS0nFHDTrCA2NiBA5w7y0wEcNEotSuTVrtmSGYxhSxvwasxM/a063fzPw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gehealthcare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gehealthcare.com header.i=@gehealthcare.com
 header.a=rsa-sha256 header.s=selector1 header.b=Wk8oJgFQ
Subject: [Intel-wired-lan] [PATCH] igb: Fix watchdog_task race with shutdown
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

A rare [1] race condition is observed between the igb_watchdog_task and
shutdown on a dual-core i.MX6 based system with two I210 controllers.

Using printk, the igb_watchdog_task is hung in igb_read_phy_reg because
__igb_shutdown has already called __igb_close.

Fix this by locking in igb_watchdog_task (in the same way as is done in
igb_reset_task).

reboot             kworker

__igb_shutdown
  rtnl_lock
  __igb_close
  :                igb_watchdog_task
  :                :
  :                igb_read_phy_reg (hung)
  rtnl_unlock

[1] Note that this is easier to reproduce with 'initcall_debug' logging
and additional and printk logging in igb_main.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c646c71915f0..a4910e565a3f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5544,6 +5544,8 @@ static void igb_watchdog_task(struct work_struct *work)
 	u32 connsw;
 	u16 phy_data, retry_count = 20;
 
+	rtnl_lock();
+
 	link = igb_has_link(adapter);
 
 	if (adapter->flags & IGB_FLAG_NEED_LINK_UPDATE) {
@@ -5680,7 +5682,7 @@ static void igb_watchdog_task(struct work_struct *work)
 				if (adapter->flags & IGB_FLAG_MEDIA_RESET) {
 					schedule_work(&adapter->reset_task);
 					/* return immediately */
-					return;
+					goto unlock;
 				}
 			}
 			pm_schedule_suspend(netdev->dev.parent,
@@ -5693,7 +5695,7 @@ static void igb_watchdog_task(struct work_struct *work)
 			if (adapter->flags & IGB_FLAG_MEDIA_RESET) {
 				schedule_work(&adapter->reset_task);
 				/* return immediately */
-				return;
+				goto unlock;
 			}
 		}
 	}
@@ -5714,7 +5716,7 @@ static void igb_watchdog_task(struct work_struct *work)
 				adapter->tx_timeout_count++;
 				schedule_work(&adapter->reset_task);
 				/* return immediately since reset is imminent */
-				return;
+				goto unlock;
 			}
 		}
 
@@ -5751,6 +5753,9 @@ static void igb_watchdog_task(struct work_struct *work)
 			mod_timer(&adapter->watchdog_timer,
 				  round_jiffies(jiffies + 2 * HZ));
 	}
+
+unlock:
+	rtnl_unlock();
 }
 
 enum latency_range {
-- 
2.49.0

