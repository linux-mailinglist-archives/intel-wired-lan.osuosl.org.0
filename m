Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF6B94D36C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 17:25:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23E0D841A1;
	Fri,  9 Aug 2024 15:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GacfGNCfoYUE; Fri,  9 Aug 2024 15:25:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 363E3841A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723217137;
	bh=BCawfo+zm0pKiSncRw6Hh/PRbLv3qOx2RVNyJD3YIC4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5ZcUcu2WlBwYef13uec8+C8jk5rF0ZKlgdfh3pCWaURMk0iXtk3MQu0qfCs3eISiZ
	 gtrJ+QOtrHYz9ybKI5EimQJt7sWjfSexUGmaaJrJK13csnnLcCugC3d1r52tLB8DyM
	 x2TzPLHGxWd9saeYQ9+j+BYma/DlSx1PrFoWJZH5KL5H9s4ecCZECI+NMaU1JvPRbk
	 B9VvQuDJWDw+Qx4AQWAuwZ3db/WhMtyXTGULxUStEHW5pGqKAo38cyjF9nCVEghyw8
	 ZT5CHsL0OOAmEQu8ieBp36cnDriL6Hwrwz84wYvWjNIUmrYngRnfww/DeSEmpNcPfX
	 +rJGU1Af3sipA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 363E3841A2;
	Fri,  9 Aug 2024 15:25:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 036A71BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 04:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E980D80A4F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 04:59:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9RWaid5isNq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 04:59:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.92.62.152;
 helo=aus01-sy4-obe.outbound.protection.outlook.com;
 envelope-from=hanguidong02@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E67B58083C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E67B58083C
Received: from AUS01-SY4-obe.outbound.protection.outlook.com
 (mail-sy4aus01olkn2152.outbound.protection.outlook.com [40.92.62.152])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E67B58083C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 04:59:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHeU0FegOtkouSgOi3o2vXgBE02NefawBVuKx1paYcyIIGNkghvnltGXRKzDUxfx9whZXV0P2FD7XYflLemiG26YmT3fVZwoaPMMRscUQ7r+fdtA2ScdOPevO6we2EMNBonlgudFgNNjiDranIhmQQEAxNlBAOYVNE5prko5+qTVhOYufTHOAholYcZmRsw8hJBj0fjVOyBMkS4IkaIiJYdL1svx5j7hBQwJHnCDKZShErcZtCKPo8I7Ki0IVMjHw3fxWtVGqtA1Zj+cHIGOFqRgN67UHWJoMcViHlAGmZt7Rd+m9PiOfd52vSO8gExdLhJVPvPcVsW/gG4+FLJeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BCawfo+zm0pKiSncRw6Hh/PRbLv3qOx2RVNyJD3YIC4=;
 b=B1v3I6RqVp9xyysa5dOhLmD2jMOROYZeOsgW3es7yu0gF2rzLyS7Gx+fPL3N/hKxVvXpnT2osX3MzzKt1EG644dCsn1gEJcf7wUhhQaZaJjIykT6JZXxCcATEapbSZb4glD7YBDaJ2YbE3AqK0aQd4tHqxMoY+2nriHiH3Ok0lVZA7AMr4cbykrf0D6f4QYn2X+BsxlvtaR4SGzZ5ppQ9VVDrcT0+sPf9dYg2hcxN3fnVnMFmmBl+i3s72RXfzAoDVmZT49LutbQ5y/lTkgz5Yg0XZHu3CajO8dFFXU3mYG/1UHAs0P7pMvb92LLr711L4Hn2rxfKAFweu5GbbO3og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM (2603:10c6:10:297::10)
 by SY3PPF1A094932C.AUSP300.PROD.OUTLOOK.COM (2603:10c6:18::489) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.19; Fri, 9 Aug
 2024 04:59:26 +0000
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2]) by SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2%4]) with mapi id 15.20.7849.014; Fri, 9 Aug 2024
 04:59:26 +0000
From: Gui-Dong Han <hanguidong02@outlook.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri,  9 Aug 2024 12:59:11 +0800
Message-ID: <SY8P300MB0460412FE86859FF97DE6342C0BA2@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [YydWAyohUpd7Vs4XppRdbmM3UEsXCS9zWoh28RycYy9tPyDU6tV8xGEvbYk1ijeL]
X-ClientProxiedBy: SI2PR06CA0009.apcprd06.prod.outlook.com
 (2603:1096:4:186::17) To SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 (2603:10c6:10:297::10)
X-Microsoft-Original-Message-ID: <20240809045911.5026-1-hanguidong02@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SY8P300MB0460:EE_|SY3PPF1A094932C:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f27d57c-3d99-411b-0694-08dcb83009f4
X-Microsoft-Antispam: BCL:0;
 ARA:14566002|8060799006|461199028|19110799003|15080799003|5072599009|3430499032|440099028|3412199025|1710799026;
X-Microsoft-Antispam-Message-Info: EBDlKXykhKK2q15PDc7VnrSnB8ijKS+v+j4zlAI4gG1ABMmIAVxoLebE5aLImsipM09JtSa2+v1QLg+XAa9zUmYpTDNjaJrn0V5bkD9GrGcJwbwDREaugE8a22+yzqSUuLMdYSTSQQMnaI/XBYxGg5jKXlTeBk/x8lhRnQY8+z8Ov9J5FfJkyMImtTpZ0GDoHU/wq3hpFJZUrqFrht9R0rXJn4LYju/bSoxRde4yBy9Fv+WsaVtDDCBHbDJXoSh5ajJDUypYOfDube9Tgx2wh2ZvL9t5EH702cQ+/PWPjw5XXYSW0/hahrYP/k8w4HCCnoQA9MkAi41SVP1UyucsM/P/lp/M4vKxkyll3SBwiQVaLAL39cIL5K+KASEb+2gUFtVqqPaCOI0a02VS1UWX2ZDgAP/ziWVqG7rpKsWKvEHAr+Bhdi8D9XSpjeJ6kf/AWklXm/THuC9EfJBOt+nnpdjEPc/qHsL+dosYFRfhT4r9uFzoaCB9mm4gTQ1QJK6WqOk6xAgqbIRrjfhOsVyp9aEqzCbd9Fkn3CF2gedbpcUIdzBY/84hNchoP2cEEurbJHRs/NMV5wZYwGBngdh9hwLOC5jJmPCcLdmDMfOVhSAMqoqK8GykYIi4vQN+mZVzCeYBsQ0sCufCD+TcIYVLCVqIttE1wi4cnkvN3vCJOrgwCZOIVfsrxn5HaEnN3ooZ+/ozmAzsQVhzvv+3bgKkQjMj0WXdc5UyQt+TUcYZdbA=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4mjHS6CHj8Lf7h1bPo4kWsu603mr1US84Qt1jJsPuC+Gow4mfSpiY3VogtEa?=
 =?us-ascii?Q?JWipax9fv5Le1QqoHbH7aR1bpRyqlToX2dJG+wpRhoWiPoJ0xeqqj4LE+HOE?=
 =?us-ascii?Q?slAWHFd0kt3aMKejr08euhEduDYjUt0ZIDq8BME2lce1ZtYPRDE92zys+dgF?=
 =?us-ascii?Q?IocUY4qmTgpPTtGKQtwMZRcH2RjqX1ZfQxuHaY+lPRQtTWuXzmA89TxIlrCG?=
 =?us-ascii?Q?WZ4+hJAKT+q+BNtP5eB/npzisTZsynF0M6SHV4hZRGy1uBO2zuUrAtw2zWTe?=
 =?us-ascii?Q?8Z+zOh6LWkK8QrZ+7i5+bA+7JncS8nU84C3NJS1AMCckx45Shzctxk8YbNZQ?=
 =?us-ascii?Q?IZ4j0FQuwY9mkR5vPXQEvsoCisANanld493em5/oBu4ElajJZgFGpy1XboW1?=
 =?us-ascii?Q?S7ITcDKKO+hN5poCP65pBKZjX0nwXA6MkaB8C3DD6fXUGzq8UXUcjY+PUMIK?=
 =?us-ascii?Q?4czfKozhe3cOeHsgtNfTEvNzoBYNZFVFufvT0WsXNNDV2uoDgYxoJqP9BNUf?=
 =?us-ascii?Q?NJ5MeY/KC3Uahc/okq+Q5wiBjReyoLB1nAO6HCRiqqLvfRRLvFC27t2j7pqp?=
 =?us-ascii?Q?eyDbjv1kMZpDzH8IPIVnpLmCc2bD9AKhDJt8JmIFNfJGGbBmBQyfBZLd48yS?=
 =?us-ascii?Q?RotbhA3qTFWV5iYpHjcmaHSwSF4VMZSMXV11R+EuR+7vqufdvOYIPerC9Eat?=
 =?us-ascii?Q?6T+aYcoJvKxJO6PK15KADK8dMYDfr1p8vK8msD6UQL+Ljg5hxl02hhDexnJn?=
 =?us-ascii?Q?uVMpQhPpNmasDVE+QBiy0Syk4wyB+8ANVCAgPO3mTf0WSrKwrhDzWBFek/d3?=
 =?us-ascii?Q?alabFJBuarCp88KirRy6w6vvwems6nyRqKa18Bhandc0nqTaDDCK28VNMppI?=
 =?us-ascii?Q?6l4iowyeA8CF01jsHOO81/bOnLTCEMJQf2+S3ANAHoNl54vMi4RuHCV0FaPK?=
 =?us-ascii?Q?xlslwhrdUkz0102jPrxdoK9jqdeUwjQZ07x4F0bjTB59pOQBw1lKcoPBj0s6?=
 =?us-ascii?Q?WZODWfYuLUGJgdme7KwsKUzKsMdT5S+MtoDMw8uOaniwLuYMHXL5FW/dkQBn?=
 =?us-ascii?Q?4/cIxRidaXuM3XGgup5+CAni3F8mMzDkRThl1GVpZJX5pLllnDBZe2KbBjeM?=
 =?us-ascii?Q?mA4JQk1IwklbmwFAVzFh+C1rzbNjI2elzEd6rK7icGSorwQMV/zJtcR7cwKc?=
 =?us-ascii?Q?/37q0yyg3QgmgyG572kVZzstolgmI9g4wHlJT9aS3J9slMJith8M+FhP3j2p?=
 =?us-ascii?Q?JB+EaKVeUCjSEJgubzEW7HvgNlD8kDpGwnh3uPx7BwfDpAX2bVqt0KZrG5sh?=
 =?us-ascii?Q?1eybuqfuMmsD+z+OftHBmgkw?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f27d57c-3d99-411b-0694-08dcb83009f4
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 04:59:24.6531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY3PPF1A094932C
X-Mailman-Approved-At: Fri, 09 Aug 2024 15:25:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BCawfo+zm0pKiSncRw6Hh/PRbLv3qOx2RVNyJD3YIC4=;
 b=hDjEisfjbvya0OiGaKWtSTzdddgpArnE8mP/1zudtF+otV6C5Jd3uOjELkRyTuVZkNy7vXXt9jZ1wiZecFEpAgPKD/yYh3VgzmiWEZJwGEdmegvhcHLbF2gXaJxZffNUmIa0wgCoYQgzveHHDHpqU8IEgPMGL1u4VYzE/fLkdMAhTKeEXA3THN/k0xIigQKuywdoqMQvhDgXApCdNCbmh+l+UKbIdlJBxpAtwoY2iTAm3wsLINV0aP5R4uQV7pFAFc5s6w8016rZZB2lSkF0procbL9zN7ze0G0aVdi0TPZ0f0JyCeDA+/KkuiLmsS3AHb4QrlfRVvkkEffoRqgF7g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=hDjEisfj
Subject: [Intel-wired-lan] [PATCH] ice: Fix improper handling of refcount in
 ice_sriov_set_msix_vec_count()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Gui-Dong Han <hanguidong02@outlook.com>,
 baijiaju1990@gmail.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch addresses an issue with improper reference count handling in the
ice_sriov_set_msix_vec_count() function. Specifically, the function calls
ice_get_vf_by_id(), which increments the reference count of the vf pointer.
If the subsequent call to ice_get_vf_vsi() fails, the function currently
returns an error without decrementing the reference count of the vf
pointer, leading to a reference count leak.

The correct behavior, as implemented in this patch, is to decrement the
reference count using ice_put_vf(vf) before returning an error when vsi
is NULL.
 
This bug was identified by an experimental static analysis tool developed
by our team. The tool specializes in analyzing reference count operations
and identifying potential mismanagement of reference counts. In this case,
the tool flagged the missing decrement operation as a potential issue,
leading to this patch.

Fixes: 4035c72dc1ba ("ice: reconfig host after changing MSI-X on VF")
Cc: stable@vger.kernel.org
Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 55ef33208456..eb5030aba9a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1096,8 +1096,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 		return -ENOENT;
 
 	vsi = ice_get_vf_vsi(vf);
-	if (!vsi)
+	if (!vsi) {
+		ice_put_vf(vf);
 		return -ENOENT;
+	}
 
 	prev_msix = vf->num_msix;
 	prev_queues = vf->num_vf_qs;
-- 
2.25.1

