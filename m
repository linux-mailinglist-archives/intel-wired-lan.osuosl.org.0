Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGS9Dpc7nmkZUQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:00:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4DC18E390
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E67ED614AF;
	Wed, 25 Feb 2026 00:00:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DAc0JJaxOva5; Wed, 25 Feb 2026 00:00:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBEAF614AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771977618;
	bh=kyTgKwPldyHm5fiM5JER3vbLmNnvun6ATNhkrKrEgbY=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=GEZ3uSLSt8Ndm4BVhjJ8tBlo9w7XJRzLpN0iGc7z6yuO1uVahs+V2QprWKRUMQaLt
	 G/Oaj/mop2aJ6EdpJT0C0necy7b4JS9Hk5DByuQ/rGHoHSjyg8aLxXbnUZaSNYfaG7
	 0wfKNXmPRiHagAPtD1nVbx8e4LGKL5G8wwn1RcwWixkk6WQv0TejjlWcB1G3ZkU5Nz
	 VUN1HJ/hQ9Pc+h3jWw435R3FO33O14R3knWui86Hn0OnZCnEjvEZCyxOsRnFqYbONL
	 IC+9inGFCuTKQwve7HV+cf7j86LphjmD22qEeWuE850aeIh+rUp/uPKw15RcQ7/gFO
	 Qx7tcCqA8X30Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBEAF614AC;
	Wed, 25 Feb 2026 00:00:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4049E23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D9C8401BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zegKhaX5E8Rs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 00:00:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.200.45;
 helo=ch5pr02cu005.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5429B400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5429B400CB
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012045.outbound.protection.outlook.com
 [40.107.200.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5429B400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wqMUpT7WgpKGf5VOrDCZu+Hakw2dSRQeowzPdFoc9izs7QlfQUvokZ9rfOfRAEC8hAe2iZl2tn1ttUZx8eoGDu20GP7iEyWyRHmVwkaNXDTDmXwQefbkdYi4beexwxLv1jmUXOWAVmRGS9vu5/JzdgcRbnKGQZ/5TOj0S2eI8/bKjkKgdxECRiKwkVKW9cfOtjXJB+ZGkWy0EBjNpFIQIUCOXb8xi5cnHW5pJcXvPFNzTGa6Z0qRO+XuFUpsChfdFba8NsmxqPw4fOMIVrz+jpw22bYs79nI2eIWIfGKGN8iO6tC5VxZu97d943K5DmlqquJvcYwrTQJ4rtqlZEk5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kyTgKwPldyHm5fiM5JER3vbLmNnvun6ATNhkrKrEgbY=;
 b=e235Z/j5FpvGmj1KImaUUBepZktJJl2CPS8LC+y7lI61606hutMzADmKX40Tn89eUHvrHdhOe9Gxu4bPaOkJVrEH1xFByVUtskcN7B4jRTKrf+EkF5NH/J10kAub1zwNmBOdkmhxwI1fG4+hCuJs4x5bLUOE3jsKjzBUTxmSE3BltPA6BlPunENAhBSizDOFSO6Mea+mL+RsGg4SfTPCmrQMQqO1YwQPwn8XwYjtUdCkhoNmdjsuEJ3YXJ308ijSLhhaCMn03ZCeK9TB0JXLiNuYDZ4UZ+os2OGQjErThNgDLCqSuTMPZtuhjRIhbRNQOhHTLGnzU+RIlbXEA1pGTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by DM3PR12MB9351.namprd12.prod.outlook.com (2603:10b6:8:1ac::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Wed, 25 Feb
 2026 00:00:10 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 00:00:09 +0000
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Yury Norov <ynorov@nvidia.com>, David Laight <david.laight.linux@gmail.com>
Date: Tue, 24 Feb 2026 19:00:02 -0500
Message-ID: <20260225000007.255837-1-ynorov@nvidia.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN9PR03CA0172.namprd03.prod.outlook.com
 (2603:10b6:408:f4::27) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|DM3PR12MB9351:EE_
X-MS-Office365-Filtering-Correlation-Id: e3a6a6ee-0500-450a-541f-08de7400d743
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|10070799003|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qOG7p0EpEMMr0jkwYO2m9hT7H3WwwCpjHUJPGWHDfxjcd6B3WtJlOoO1pds0?=
 =?us-ascii?Q?tTu8IBRYWIILrOaUd59qQYAEohI6YA8nllyDrb5s5AHb/bQ1ouZciQCRvBnn?=
 =?us-ascii?Q?ZoQEhs21/zvMJchGKTv/0v/tGy0c7+v2t6hMAp4Gbr2DIryaMH7R7IXyUrNE?=
 =?us-ascii?Q?OwwK/fx/AuN1QJY5RbNekUkQCFsrRVYebHxS0nCATAYkw2lJsFlA/3CPBUrr?=
 =?us-ascii?Q?mkGDuMVYKq7Y6PRg8d/QPVf5MReC/uZ/WHpmYy5nKeJ2r6HTgXrCXWwvFkMJ?=
 =?us-ascii?Q?UIm3VjtaADHm0AX4BLNkNWUaSkCmjh7fgwshK5NSFmik+HHwYXI3A0LEoLXN?=
 =?us-ascii?Q?FC8FDyycbXem9bX1GiOmxFNGERJe5xgpaz4+VWNhPI9/gHD3evvOkWF/SNu2?=
 =?us-ascii?Q?E0JmoqJfxOb/hy4HqHOT5z4fk6FCNPymljnonEMN6Eid4hCg8A346D3DQDiX?=
 =?us-ascii?Q?mb1236zOoYc1Ya9rFSmqv1oLj69FBzmMvwRl/o6v/vmkchk+wir66Dkz1aUJ?=
 =?us-ascii?Q?dlcrxOYN5vmHjdqt+7fkesju8B3EYnNxlZA2ZGMsZ/sHvD0L3CY2F+MMOS0H?=
 =?us-ascii?Q?Acpo7YVOOaw3W2PxU3HD7xL6lnJX3YlMgWaxvSypzqqkXaQllVeMM9Pk5Cnf?=
 =?us-ascii?Q?QLzy9SB/Kyv58PuYARp6gu7SkhhM+I8Q7aT+LXbmapvdeyjCk1uR229soYUm?=
 =?us-ascii?Q?RzddkWE7QCNi67r0ygQdqmloYnR2nEA1WhNdTgEw/bnTim2UyqOgF/uYQbGY?=
 =?us-ascii?Q?NB6ip6LYTegf0YdxXang+M4HsaITPAubYS4X9ESjkSnVQyWo4YGsWJUmX9oT?=
 =?us-ascii?Q?lb3x6t/kX9CqyIqhz0amh0H/wExr7fmqVmF+0hFQDZ1XLBdXXNNAr1FcKadO?=
 =?us-ascii?Q?Us45jP3qAubATByjzM0nR8Hl+P3GyKoJI/3NGUjfMhJzYMeJMRCNA/chsn/W?=
 =?us-ascii?Q?Ek489TcYH+6gak/6WIwn9out14LMXL2LxmZZlPwVO5fruVFTpSU0S1zC1l1l?=
 =?us-ascii?Q?3rXH/mtv9tmkWqYpwKhffCSTjSMlTAjDEAO/ohYIkQcnxGyLhDBqsWsb2Zwp?=
 =?us-ascii?Q?Ihjuyw+MKPQAgG3hYk2YmHDVsf8EETc2E426eBVF/XBRz0FBJdIMwI7inDVs?=
 =?us-ascii?Q?6OfHHHrKyjRWvL+4dWkm+2TERbpMN+WPXURJ6y2X5JDi/xewvqkw86xqffZt?=
 =?us-ascii?Q?6wltLsd0NV8VA49URI2mVX6JHQ0YUHWOi2NDoRILz6OPeSngDKhPO3O0/g9a?=
 =?us-ascii?Q?Zz8prccenG56s1JTxoTy0lwY9yNsipgKcHI6KiyJO5vNQX2vqY30tXWZWwNm?=
 =?us-ascii?Q?+YTyZlTy6c7TyFMZNQilHo52ZJYv9gJplxlpKnDujQskmnAAPwP7AXX3tawo?=
 =?us-ascii?Q?xCwBtbcLHF6CkxuHe6HKdf0h91M43ejL0PAf8aaExW/YT90UXwE0SfS+HG2N?=
 =?us-ascii?Q?HdkPKl0YqnK4jOdS7Rv/4BoZd5WCDafP+OJRrm3PseLehR5/rfJQFOZotr+J?=
 =?us-ascii?Q?mOtQe7EOm78bc6a2fjhlMhOoMxwK1AGZ/8hctG/xkiwx9Li3Wts2ONK16x3N?=
 =?us-ascii?Q?l65B8NEFN5qKLu04gV48JoLzuFpeQ1AI639W1gWXxlFgqbofmtbh6kptzBrA?=
 =?us-ascii?Q?2WS6yRucrO/jCG3E0XFAEFY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(10070799003)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HPXVLB/QDHW5tL9/mspRWBQtxLt1850wSvW9RKBz/74pb+CengOMg8BeHkxF?=
 =?us-ascii?Q?F/4sQvf5yXfjZCBHq3dGAPiwSzQxJEECV5g68pwNMcNyx09OrxDBaBrvp44K?=
 =?us-ascii?Q?NYtXbVIzZlgyBCg9xCUsYtevoyTi5z3hQybCTCVANRyOWRKQibfpxTvdCmQh?=
 =?us-ascii?Q?GtACPSG3BYIDDY8deTt3dA631S+koDJnSSG7Nb4Ni+3AV3l9tFyTduLR3TeT?=
 =?us-ascii?Q?gWZTPkZgTqnnsKcJkal4jKSPMG+wSunlYriB7mtnsYiI51oQeK0sH/ZUK1p5?=
 =?us-ascii?Q?QHcF4doeEXFtmBDMFdHPkXV8V7SlM/rGbOQetJKGIrcFq6HhhMuziSerDgBs?=
 =?us-ascii?Q?SHdid1BgnnzqEAC2YunNaVMh4IHCEDAFwM6iZErWMV5LiZmn1ZwEvu52mQxI?=
 =?us-ascii?Q?z6wy+hXsKwWmc2s3gN7XKQkzhjaohKbC3SZuiJej2pEAY9X5FOszps9iCrz4?=
 =?us-ascii?Q?S3G9f7HiGcKS6X7nmSzvD9qlSkrgwKaoa7azvXUWPGKDeznXQH6EA4Gtx878?=
 =?us-ascii?Q?pT5FHG1DJ5/1UC+4AXm72x2AnCTqZu4GaqZsi/M7AlSqSHFdJ+QspJERA6Ja?=
 =?us-ascii?Q?Z6E1GDhPC/CLEIHvEbeY87GMsitsz7cl5MEaFGYOxwq0kATGSa2qSYx+SNKL?=
 =?us-ascii?Q?A8JqlfhkE4CpCkn6SaOVCekgZ/aA4w2MFR4w1io5GKeGQq53UqArfXanvAnL?=
 =?us-ascii?Q?PgFjuIuDBt5ygS7MqxkZwv1JqCSvZ6URsVf8dlTzSsZm6OKjoMcDcZ45FgVJ?=
 =?us-ascii?Q?mvbmPDUYycEgsLYRrH2L84DEl+cuSkiCSzBzNxr8xNAyMtCOv9rcP+/+LHRZ?=
 =?us-ascii?Q?xmzUSwz+YIkytWa8bWwfJz/BIQD2UyAc6IW7908SAlAnf7xyE54FdKtHDFZ2?=
 =?us-ascii?Q?nieInyY3huBrg6eN+4lghTt4rk3XUPsOcFrJaN5vXcQIQhLf5vKoqpB6eN3l?=
 =?us-ascii?Q?qfJAqiOt2lgf5ErtY5QUCktIIs+z3dankrBlADcu7gglOqOLZOeJAIAtTpSi?=
 =?us-ascii?Q?H+whpaWY2lZGi+rT61kWtCdFv9nap4ksCogzex1BXHH2T5i86NOBTp9gtJav?=
 =?us-ascii?Q?vuMn5jVQe4QBVQXVA+nHLxHK6PSidfUzAUSxhQk+wScR6xr96ouK7KRJrBPA?=
 =?us-ascii?Q?o66qFPv46D1kFmn1vx/n/BHFbW7hCRpvBPfTNpKFvdGOC88a0Hd5Xkrsh4hu?=
 =?us-ascii?Q?jJJxHiBODPKEApF5RKYZrZVE0PaEXt/QkljENqEsSOqIFdTcoseaUFrE6Q98?=
 =?us-ascii?Q?2VFuTWLhBxO2qTiEed26o92yi91BHNnSJOgy4OSSo3us1WvNfsTDcBcflHB7?=
 =?us-ascii?Q?6d5uwlfBX4+NfkpCWB72RlDsJcoIFYo8f274q11roo7+lQFNseX81pcctdQc?=
 =?us-ascii?Q?IAZAyvSK9aykW+Wb53rxhWQUC5yb6XTtUFqrcRRAln8BI2dRSfxPL9NGrt2Q?=
 =?us-ascii?Q?Cj6ZhwgNeX0lHZoVDBE0eG5qXzg7BIZeMkbZDlzj2qYJRSzDo9UPlyysA5B4?=
 =?us-ascii?Q?3ohVxfknDXtEtm91ImiXmOT2AgYh/Y5+rLJmXvMrsaipnydJTZkaLzEBFkk0?=
 =?us-ascii?Q?IBZvLBI3g6DOXFxuHwBG4750n4V8tXjhgR1e1BRsp+d2hGt3OCf/68ah0TR2?=
 =?us-ascii?Q?Cbfl0Zt4Sdo3w5J2muXuCtyO8MoFJY/N4jk4fyXJWloWIWAwUTsE5g2WgHcN?=
 =?us-ascii?Q?UaPJS3x0ya1zfg3CmkLtMXXqEiWiiGJWK4wjgQvVbuDXvGbp68ELUHojJ43h?=
 =?us-ascii?Q?b9APriyBkjusu4D8CrswUWqWlWSd2BeSZiay7Bz/1sAqpSvRK8xf?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a6a6ee-0500-450a-541f-08de7400d743
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 00:00:09.6108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e11/wn8Qbr2jOpod/uoUJyPnQo/z1/j9JlzhvUuQq9xRHb1VndYgh/X+HXJYBCSszgCj/Tb4WbblhSuz9H961w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR12MB9351
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kyTgKwPldyHm5fiM5JER3vbLmNnvun6ATNhkrKrEgbY=;
 b=pgrZCtI5DwKOUWM+z65hubHE67+1wWBr6Bua7mND59zaC3JUJcjivNViq0X4yjyPvF7wQ81ERsEc96IS+naJc/S7k6qSi3mcwTR+bFtB13LqqLiedNhqRRv50hhuSj0BaPZK/ywSTrb/em7uLD37FDe0AV288SY51j75Vkq0uVqqyXGvRJZkNbhyCGvAimfPoOI+cCDtnB2/zUXR0NWz5m3oe7uKEEpelkRMw0sT4454ZqkOnH1pz1duee8uj8OaQqaTqo6sh5P2waocxgJ7GyfFvu7jOavADiaGKoAhUxncEbKu6lD/+uCf+nfuiN2aXfQKPxedVbHxWB7Bu6y3tQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=pgrZCtI5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: [Intel-wired-lan] [PATCH RESEND 0/3] ice: use better bitmap API
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
From: Yury Norov via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Yury Norov <ynorov@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,rasmusvillemoes.dk,linux-foundation.org,lists.osuosl.org,vger.kernel.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:akpm@linux-foundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ynorov@nvidia.com,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[nvidia.com,gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.898];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD4DC18E390
X-Rspamd-Action: no action

Use better bitmap API where appropriate.

Original series:

https://lore.kernel.org/all/20251223162303.434659-1-yury.norov@gmail.com/

RESEND: rebase on top of v7.0-rc1

Yury Norov (3):
  bitmap: introduce bitmap_weighted_xor()
  ice: use bitmap_weighted_xor() in ice_find_free_recp_res_idx()
  ice: use bitmap_empty() in ice_vf_has_no_qs_ena

 drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
 include/linux/bitmap.h                      | 14 ++++++++++++++
 lib/bitmap.c                                |  7 +++++++
 4 files changed, 24 insertions(+), 5 deletions(-)

-- 
2.43.0

