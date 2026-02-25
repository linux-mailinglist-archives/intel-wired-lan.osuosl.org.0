Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDdOLps7nmkZUQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:00:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBEC18E3A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:00:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28331614B0;
	Wed, 25 Feb 2026 00:00:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vJt9mp3HLRJv; Wed, 25 Feb 2026 00:00:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A8D1614B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771977621;
	bh=dY+R4ZyLpghZEdOurVT/ikZx5Q9R2gakO/uzR2dTv4U=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=yPmX6L5G5n9gOWjvNiP4MYPZt0r5iulsn+NX+luBy1OOnHfHTqtDpCY3Wye8YnIMy
	 iwH9fjAY0WqUNwDvSBwmd/vqV73Zx4TVMXmArSgFXIY7IsgZ5U/liHiT8XVxAlBFIG
	 dyNMYnzdvMcGaw32Wa1gBUh9w+J/FUv7qj1Obt1Ujx+H+dxeqHXB5H0k+qFaBX/VeI
	 DfI5svJrTJ2HBmSXDxWpx6Y3hBMrj6wTJG5LORtAgwJmO9/XPOv82ZIQO+bTwqBFFs
	 BXhHqcy+Qhj20KEW6eQTdIuDZot1Pl7yJfYWAd/9TgPw0SuBtf7bEWKsGnFwYRDGZG
	 Gys6q6u2ljRTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A8D1614B1;
	Wed, 25 Feb 2026 00:00:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E1F41B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E46DE60F91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KHM0ZHok_eA0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 00:00:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.93.196.52;
 helo=sa9pr02cu001.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8942B60F44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8942B60F44
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013052.outbound.protection.outlook.com
 [40.93.196.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8942B60F44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pnf/ml2jgqbxKcB7J3yz4yDp7cTqgD3rpNt9nsB8h4936zTWvQ7JOjEMMpnzO2GVKeEwXksU/aNLGDJnmWLy7jEo5KU37SFuIGTWqMEwjkiIYu4T1xXvhxQo9s9Zyy0kUshlion2VOqFLWCeFjF/AZEkhkb/Db1f/qp1NbgNmvgg467JNiD90skvgjDIF4IY8dfxEsjEGQQBxvsHNDHrjvU9mQBjYSeNWDnyjraY3Ix42Jxz3QzEQswPqlcAPOE9lF2gkVmvT1RfHNJi7Ivwlc8A45nPYGkeKdNcO5ZjHXSvjYgSL3KH0xEXAwf6pi/saIEKuWNiRXuUGytTdYuFvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dY+R4ZyLpghZEdOurVT/ikZx5Q9R2gakO/uzR2dTv4U=;
 b=vRGc0cY1xAjk0fVIFRIOXFPvwhDiPYIr/kjJB82vybLOvGS2Ug5U9f71RnM4Rcy5KjAPw4XUiSoKPB/o3rcaCghPjXNkvPD7aJhUmOSCzmo2ab/KDfDMnGVwey7wm3LaqSAHJbQzhTTqvixciHX8UH0uo3PY0wO0dFSULk/UpxAVfA45bLGD3az3NIeVjvvstLI0fPurXzWRL9x18B5KN/lzSs78pfmad0cKawwjy6010KuaYGYRYtdpDbtHxuLJfa/KDEbBlKlewrnWt04RSOQpSW12axG35H9R+UYitonLmTjn/X6NCbMItOVnUF96aH7h6qzLkaHeNZvLORol/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by DM3PR12MB9351.namprd12.prod.outlook.com (2603:10b6:8:1ac::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Wed, 25 Feb
 2026 00:00:13 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 00:00:13 +0000
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
Date: Tue, 24 Feb 2026 19:00:04 -0500
Message-ID: <20260225000007.255837-3-ynorov@nvidia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260225000007.255837-1-ynorov@nvidia.com>
References: <20260225000007.255837-1-ynorov@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN9PR03CA0773.namprd03.prod.outlook.com
 (2603:10b6:408:13a::28) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|DM3PR12MB9351:EE_
X-MS-Office365-Filtering-Correlation-Id: 47126283-6ee0-4e55-9015-08de7400d9a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|10070799003|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nzUP8TuoJqpvgbmQfjwycISdLhNXirrDihiaVbz1fjF9UH6S0lLTX+NtzFS2?=
 =?us-ascii?Q?5lsPd7/d6+4CNBX7P4QaRuTNctnx2GDR7lPL/J6lsqca3KLMk6VWT32+Sunj?=
 =?us-ascii?Q?IzdEX4Hbv6PDbC8jYtLOE2YGJJo+xrM5yX9xa7QiVyhnSV3G4xcSCH0aLYLE?=
 =?us-ascii?Q?GXYZ33qciqD0gajvbldsSflo0heW9DKGMWe3rpLLHeMtv/o17C8+dFC8r1Dd?=
 =?us-ascii?Q?LHVZrnT8p/xjdwhbC91/wwQ62gGBRbTa+MZdDt+X8uZRyYK7T7VJJ0uTHUAw?=
 =?us-ascii?Q?/zi8G07+u1tfuTU4Qn/EVfWoO//R6E0plrf8DTSfnnEpkxWMwDpYtuQd4aDO?=
 =?us-ascii?Q?VYrhB2ffyY79pRXy8dQGaHG7ZbzjlaeP1j3+kLxo7mibDtXrk/7Hy46OAnft?=
 =?us-ascii?Q?Y3hA/2xr2ms5LTlncfIQ2UctRCe7GeFZxUfJvMmUxi0Ig4kPdYpCwrD0lhuj?=
 =?us-ascii?Q?BsD4XOlDQD80zMCyMXX5e30RJqVMnpSgexPMRPwYLHVCrPDdl61gKD9KzPu6?=
 =?us-ascii?Q?NX5DFkDito0scZ+FI8J7aWTKGTZgF/GFKEWmbv93E9SZCGR6pEKTnTY7OC1+?=
 =?us-ascii?Q?kllTXyLm0YUzizaZsuYttuUOVqu4F9yPWayRADo4Xls/V0E8jED2LYBYiy1o?=
 =?us-ascii?Q?74mv3AfydDSLWwUzVaPej/2TnC2GfKreW/p3TAL79w16SO3EogD7hL/g0IWS?=
 =?us-ascii?Q?GYjbCn7T8nkR/slkpK3je2e7JZBHa+nLbZeq9mKJFYA/Y6JZjdcCKjZHwvjV?=
 =?us-ascii?Q?IOttWlD80eukWaVnMYLp94fbgZ2Cy970h4XCfpOxXqs+uIxLJ76U8EmiS6bg?=
 =?us-ascii?Q?iDcPIL/Q9qaJ5oQUxGAtYTL4DkIAnwqAZhg08ZYyG4bsXS+LPGKuB1XypCcP?=
 =?us-ascii?Q?9pr31IfYyD5hy69mGm11LnWIwo3PGbo8hpSc8i02rny7iNF+XITtJDUf3km9?=
 =?us-ascii?Q?rP4IY8MUucx6MLmB20Z1ULpY3Tm35suO6f7ydBishCdAHq4UrqIDjB4N0uJO?=
 =?us-ascii?Q?3+SYBm7/2Y2bk5khyU/nePVocCjHofgxPxaZxGZSywjUjRKZUWo0T0oTV69z?=
 =?us-ascii?Q?GeSTTw9+a4qaPph7eZhxYMHpKjoXSyV6uFjbJZXKecTgD3uix1wVmZ8hjWpI?=
 =?us-ascii?Q?26BsW5t27LRRhQoUqTep6n0J/nrCwM/9QxE/uFC/B45NUiZQUmSLF4sn8e69?=
 =?us-ascii?Q?zbTk59hMY8ph7SEAdHbMwCgh+07dLxnHJw8YyhjGxwuV+5Lao01d7og6C7vX?=
 =?us-ascii?Q?nLirttjvcue4d5r2OMhWKopdc5l059htHbidmeCHOZ9MoqkZA8OFxEAm0QTz?=
 =?us-ascii?Q?scjtgL6VJ8A5e6pBs3vRGaCmxKwqAZg2vf4HF5x2rqp87R6U/POEE6ZRi0Yj?=
 =?us-ascii?Q?Ln1Kk9a76SLiOdOs8u5LTmvE6pZOxdMuZ7hlEMYBkmQ7epFhAlRNzt0/sEyL?=
 =?us-ascii?Q?+o9eXfy7OP+cuj+q99Gb6qlNevtgOUIZOJ1U9TP/SnUI6XErcQX9CKn/88DI?=
 =?us-ascii?Q?eNSOycZiX1BI8DkvbhetHFwgo6jQ9aHQtVG+7C0hMeaUnzk9LaDbll653un9?=
 =?us-ascii?Q?8+AR/JaajYJG69f9r7nJoJMGQuCmZ1UydUQi/9RYOkWx4BadeaAGp9l5yU/i?=
 =?us-ascii?Q?9g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(10070799003)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z5CcEA66tnPEI2XkSuI2IpRi7rohGXncffT4FHqIpvufnZK+s3TzdxUlONcI?=
 =?us-ascii?Q?jLXu4O84u0m+38BDp82JvmVw1XeprwAd/p/cbO8xB/zRaXW19a8OOMECr1sV?=
 =?us-ascii?Q?tSwGlHyR8w+Z2yDSaFssH0a3IC7ijc5qimgt1LJk4h4j/d7SzPbpFqA1YbKV?=
 =?us-ascii?Q?38+Z7TGgmr0ncbvcPShruXX2jMOInfNBS/muxKCSo3k8i3XgUzA5vx0POM26?=
 =?us-ascii?Q?rerYTPmCuPmwVVoPUBiZ2cfPmqpOJPRCUjRIgUYyU/uoFafe7j7bgYkWLjRq?=
 =?us-ascii?Q?I7sP/cZ3tyTurCn6HcqANGARs6EkGri22rM7eHEltjJvRhYRFq5otjcQOUSu?=
 =?us-ascii?Q?QwprbYQ9Mgru50UVqle8hCcE2vz4yNDE5PDeqK3sx+v/hnyQSPwYhofEQiiX?=
 =?us-ascii?Q?QThBJl5zTS29VA92EwSoAq2HJ1R7jG4nMzSrUC8b0qJx8o+zX9C9hM9Gyelp?=
 =?us-ascii?Q?JoiFEXmRP0PQZduMcLeZ4M35nskYG2pWpQB90X2b3BjWKCN/uurToFMMUrxP?=
 =?us-ascii?Q?5s/HXOOmvD6tGtFyZJ0fuzbZCWlpQ8gonue6UiXuLV7IjhRIYKNFyZz0xGLQ?=
 =?us-ascii?Q?ZqtdtHZNMdcYc5a3AQ6RYKrERsJW2i+VppxKJaNRozY9imGauVOTHwiGv9Am?=
 =?us-ascii?Q?loFkbPsOv6UidbQH+EAAkyO6iUbNVY7YKIP/zRMYmZCekTJBztWCIFkYTucb?=
 =?us-ascii?Q?MEsNyvp/UyekxLk4Jyu6+QVCGJOQBUh4GbbDC6zQM7mOmr+JAQsTnhRX4bkj?=
 =?us-ascii?Q?+GPFAIMta/7jG0ViqnssZWu6eatVw7o1TgQgXiSTz2+9Dw4B/pgmrYgqDYIv?=
 =?us-ascii?Q?T9vDAC6qQPwUt6d+7zOxZAGllpbqpLRLvRCpi6jMjWjb29HjXUE29yq+y6kq?=
 =?us-ascii?Q?4eH4tPxF+hfUNrYLIzz7wpUo0S8te3xr9UQbd9whgDJuRVD1V4gUbmIqrj5E?=
 =?us-ascii?Q?+TkigQrQmV0KdFY4RU68LwmhSXVlcctlXRPYzTbxvGRl4A8Nv2XMk+9Ub28j?=
 =?us-ascii?Q?oaxiRJEJertHeHVnxMKkKmaPa3X7TZBrTYyE1oj1Hy4LJ/rsP9iV4EEIGysq?=
 =?us-ascii?Q?871i3ij0YS2tUZkyS4RXqDO7/8qtoDP4GGTjl2vWb4CGoHwyNqTzUN6d0qEq?=
 =?us-ascii?Q?m8+gsgSl7t95E8l5Rsg2kJzj/n6OZJEWSsqYX+QBgdDHOJaWKEpMGfJqcfDB?=
 =?us-ascii?Q?cD4Dir0F35yrVsLQxygPjUk97VUVjMYa2nRY1purs1xw717/jZcFxtpHroA2?=
 =?us-ascii?Q?JabUm7bdCWaNzz0g1W+b8G5XCo3yx9gdOC7nu3QPAELd624AsCpt1aWbTjBu?=
 =?us-ascii?Q?OHVFaBsOp2ex4ZKO7dMh8SUlS0C1U9NIOi9eMsSEOuM9HbRBg0BkOH3+waVP?=
 =?us-ascii?Q?GLH0+cuTfvq7K97lpAiKqcdPBGVRSwZs9Ra6U/R3/rCfW719ewRYFupJp8C5?=
 =?us-ascii?Q?acZvCN+HJ+FR7YyMJ4KfJNSAAbs+M1/Oqhb4z29GBt/dKeENETstplveoiY8?=
 =?us-ascii?Q?ooelGtXhTBmYVstvPvoQjcOVU2DM4zOuHPZ2+tNiRqOaiAe7Q9ENmOEottBQ?=
 =?us-ascii?Q?M2iqyRcuPcaW6zuqep05vukxoBA/snRWjxcU3rgEH/YdzXPb3XjSJeS6pDyW?=
 =?us-ascii?Q?bnOQEi4IHZieCnwnFizgXmOCRKrtjVJxBA5KBBpMVfx/fJ/mULsjLQVB843d?=
 =?us-ascii?Q?wQH88q4cLr/KdEtcmSSPhUOxx1AXrIybY/nAtZRA45MVnDofCtTOPqeT5ITc?=
 =?us-ascii?Q?w0QSXGLrM8I+7QOsQQVEUYx41KsKP/aQggoP33BHEz9jpWqOMkQC?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47126283-6ee0-4e55-9015-08de7400d9a5
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 00:00:13.4615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HviTtYKbYaIMLNHJ0V5VftgAg74Gx8AxtXpPQC9WUm/mGa0O898xdsP3SZ/VsziOpM2Q4w5Ch2ZCdn1bLHN2Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR12MB9351
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dY+R4ZyLpghZEdOurVT/ikZx5Q9R2gakO/uzR2dTv4U=;
 b=B6Uvw53ahl8JkXH+Fb7W0Vb/LhaU/+jEUzgr+I3EYN4wDghF+8q0lD+yzBKUZ0daokViSb8UOX9FpY3SPGwSSElfeQ29TNw8le7YtOhLGR6AYwr2UFvRPyyWQTpQeIALb47pmVq/YLm+1EL5Aqg/HZsp27pb50LjKHL1W9ta6NwCPFea5oUEvaUemabRtZSjxSpwhPDlB3+bh0NsYZ64e5eG9HkcEkJBIKTy3iSOa222xP2e0j1WyyIrB/IiJXV3XLKIx4bGp87+WIKJ0CwFu/gmxYtusrLMX3+lUdtapEDmc7wNPx0LjzlvHCBOvZvME9t48GRX52aTqFyCsRN/mg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=B6Uvw53a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: [Intel-wired-lan] [PATCH RESEND 2/3] ice: use bitmap_weighted_xor()
 in ice_find_free_recp_res_idx()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:akpm@linux-foundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ynorov@nvidia.com,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,rasmusvillemoes.dk,linux-foundation.org,lists.osuosl.org,vger.kernel.org];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.971];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[nvidia.com,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0BBEC18E3A6
X-Rspamd-Action: no action

Use the right helper and save one bitmaps traverse.

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index bb0f990fa2c6..6a5875bd9c6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4984,10 +4984,8 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
 			  hw->switch_info->recp_list[bit].res_idxs,
 			  ICE_MAX_FV_WORDS);
 
-	bitmap_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
-
 	/* return number of free indexes */
-	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
+	return (u16)bitmap_weighted_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
 }
 
 /**
-- 
2.43.0

