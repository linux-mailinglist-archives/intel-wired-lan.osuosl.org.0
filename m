Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 162A9AB4FD7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 11:32:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CBB780F4A;
	Tue, 13 May 2025 09:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oWeB_KEMjp6c; Tue, 13 May 2025 09:32:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C05F980F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747128723;
	bh=OJpY7l5nHOhrSh9+5rULs7KdD+5/vcHHzlLb0fleifQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D+4Ucx4DLzlme4rmVC/B8Wg8PGuHGe4dGYy8dDiGL+w7rDW8V2BriiNoerICtNpl0
	 6IAAYVhhZa4vPrDDPI6dgqjdr+J5vdrGog8Y1VRDXDFqWdNnJyO4R0GApiTbBDwWwL
	 T9Hixd5UbUAPFR5l4vDIUNRU3EBdd2P9WN2Z7sVjyJHPATlGy1QkrShoRshTOPa8+g
	 3a1FzdHdZ27yQe24Qs4WukJubRHEJDjz11PX1re5owlV9f85BDPMiREB859qOM6pno
	 gU0em9JqvDnsvPCxYTCOEakCxk69As+YxuL6kT41HMVy1xrw3NhMB6EnPbMSFnsiAt
	 AccZFN1TcaEmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C05F980F54;
	Tue, 13 May 2025 09:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AFE2153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 09:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30F0080EDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 09:32:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d0J93FBa4HV7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 09:32:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.13;
 helo=db3pr0202cu003.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4DDDB80EDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DDDB80EDC
Received: from DB3PR0202CU003.outbound.protection.outlook.com
 (mail-northeuropeazon11011013.outbound.protection.outlook.com [52.101.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DDDB80EDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 09:32:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O/gtnr1CAdYiiTL+rl7AOLuSChc/ssqhnzsQlJpZSRP4e4Viu1F5Igny2bFrmp+jUEjxy1bS28GL9ZqOxv4vTmV7rJhyLB6YgDg3KDbAqLP7oaHCkVDsS68zweUVeh7PZfDkVfU45NutuGqxtByHOYCqnXJZMVMmY9AvMWXYPhyqeCf6EQ4M4Su/OafRbTYg875mAAjc6GDLaux6i2XmtkAIxSqBThXHumjgR2SG9TStKcAFkb9TSUoJkqYyVdv3qS7mHQxTTaC3v0hMz7QPsI2INuVvz84SA+4eks/wRlwWzXJK2KNLX6YoCNV7rep/+sJQxBbwqFnXxcZT5Y6P5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJpY7l5nHOhrSh9+5rULs7KdD+5/vcHHzlLb0fleifQ=;
 b=hGn0gh5IgFZ7eqKMk9XKRNGO94YNBfdMNOFe02ZWc4RJkvnXUMWYgANDeXiKwfAoAqhBgy31DqHmXXu5HpA+koLILfR3idTTkvRUZHQe16b/QcuXStoKoM3eYw+lGAlNIeO8b0h6onf0hA7njH23UClOPILzAeZBzN44UyPzby4dADEKCCpQFU+Sz8PRmXaFXBHBV7y2bFYNmTwdNpsZDlIAZhzq0X8/l4NMSmgGl09F1Z+MfZDM2Kz3dV0M0hnkrfRZLt2orVjMA5+5QBDB6lA3bwWt4k/ijHTpXaUzQhuFUSxVSqsSvL/+EuaLGgzdi2M9DT71Oy+Bs2sUzV4Ruw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DB9PR04MB8348.eurprd04.prod.outlook.com (2603:10a6:10:25c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Tue, 13 May
 2025 09:31:54 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 09:31:54 +0000
Date: Tue, 13 May 2025 12:31:51 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20250513093151.2ppznd3isu4xgpoa@skbuf>
References: <20250512160036.909434-1-vladimir.oltean@nxp.com>
 <f557afc2-32f5-4758-9c68-dd319ce508ba@intel.com>
 <20250512185346.zxy2nk3kexhqf2px@skbuf>
 <6984e594-b5eb-43d7-9783-fca106f79d8a@intel.com>
 <20250512171652.5bb0b0ee@kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250512171652.5bb0b0ee@kernel.org>
X-ClientProxiedBy: VE1PR08CA0007.eurprd08.prod.outlook.com
 (2603:10a6:803:104::20) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DB9PR04MB8348:EE_
X-MS-Office365-Filtering-Correlation-Id: ba87cd7d-1036-4131-2943-08dd9200ff69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?35YyQ8YANy2iNJL1nwt0PutlkiDgJM3vURnml6R69084bWh8+fj9Fa5MsJjZ?=
 =?us-ascii?Q?2hTmrtGbB/TA7z+qq1FlpfNzXKUb5o6DNuFAxe8gR3+EjLaEW9CfG1FBDxvN?=
 =?us-ascii?Q?dH0YjlpVrkh/AOCMpOw9bxwTZz8BUp+vhHAKf4Af9ONzKAfYB/Hk+iZxkBQ6?=
 =?us-ascii?Q?eOV91lN0tsdLIAnbRXLrOmzpDxWaUrt4UjWzg+6OrZPikpREdQypbmj05G6h?=
 =?us-ascii?Q?n1xMw+we8CVsCy4aqI1BA3g90G4JPtvx77fIg7a6q7EhVy5/t5QzZubJ6H/O?=
 =?us-ascii?Q?CsDZ4dw4ydFdKkjhrn5GV2N0n0Sbb0kjuKaD2OCQTwi4h7EtnTzocbeFEWbP?=
 =?us-ascii?Q?NwNVqodWV4QK6VXLAEps7wSItlx4NVCH4koZicaI/kmFjuEuv3h80aFPktCm?=
 =?us-ascii?Q?azAdMD4gBVbiQE4Mi5TmJ/feTXz9Nfp60+PQ+n227CfP6EsvDkF0j0BSqpft?=
 =?us-ascii?Q?GgbIEQ1vCDXp64/c1mKIwdpdS/GEmltDJO8rx6CDHIhZZpXwJ0dqFrSapoBt?=
 =?us-ascii?Q?bplN6ZHz/TFcnZGg5m1kBiuIIvdTXzfEvdR0ostG8ULfR/U2hiSB5u9pYwdu?=
 =?us-ascii?Q?um9I/0KdlokzgEBuTSl+Xn7txHbyztVFB4vTN9scIqfMGputjOSuP9Td3b9q?=
 =?us-ascii?Q?BsOtBw8P34XaRR74Y5e5xbcjSD+c8jCyb3OcF+tTClGy4ExEvOw/Va+mj7wU?=
 =?us-ascii?Q?DdiB0KniT9fSbn5/k9yuOCWdV75HwaKpXrsQlBmb/MLEmEbmD0VlrXtr1xJA?=
 =?us-ascii?Q?M+Yfh593tYeGOthcHELYaFvF340AGq8H9b16H/WVUKOl0QwGuOdIF1pN0Xk+?=
 =?us-ascii?Q?YtLH7llSFuHERWz4uT12itGRwp4+/6UdXXE2Psl1w9g4sbqa7EdPr/jeVJim?=
 =?us-ascii?Q?xWigFtsgkkINHswcieiTqA8CSaD4BPLUId9v6tNctuhk8IF7zHOryiNhR9Os?=
 =?us-ascii?Q?O5EWdHfHZHuyZzb7FrTdmfJ2DputHElCu2fpSIA1mZ9tzBSr+6Kwjg/Eck1T?=
 =?us-ascii?Q?ilg9Mdz6409cmYfMqupLObgHVcmrDZXDzWU4qdvjp5aSL6WYeftYfjhi+V9l?=
 =?us-ascii?Q?i1kAG2rhtlu8r737tfiHcl+2QckCqgTeCNIb5Q8i3Br9OCYKrjSLkFny3OxO?=
 =?us-ascii?Q?ceUJo+dULoZZIDRsNJ8CEEnB33DQANqkENl3AoJDHe5/KcJZYNmOraHbC3xr?=
 =?us-ascii?Q?mMzYx76hONYl1LDAQvtCT4vVjrs+2MbXZ0YnKQ2ULkTnAeVkloEPd2IiMalq?=
 =?us-ascii?Q?u/CkRlD1NNDLwnQMBWXVK/JgeZIAfY38fc7/KlCsmEPlKYBvi4jfOGnnOe4S?=
 =?us-ascii?Q?DR83jWrgz2RWvm5iSbVjSWM0qknQ+e0qcfimrgHrcOGkXxHDfYcr/nqi3a5I?=
 =?us-ascii?Q?ztIWu5n1a8q1t5xw/BiYD66wKxk3mNyKBNBjdRh08FLREOxBNdL9sHD4ZMS+?=
 =?us-ascii?Q?q5sbekg/lMY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Of9yE/zQQxaKOttmmE2VbTcUrP1ZzGqEyqSGiHarlvlFTz91qkAPOvY8vuXe?=
 =?us-ascii?Q?ImOyTo9BEsa7uFCLe9HJZqUo5tFJr2h/O3PPH3SydiVqQN1vCytWLQF8oVW1?=
 =?us-ascii?Q?YoXPICezuoYojC/fdzBzxZNI6YrGdvYpdVSPvHYhGm1fQBRfE+GCq+xrZPYR?=
 =?us-ascii?Q?np8uzT1XQicswlcbbejMeN8E9SRrJ7E/rEzjGja03l+9W988mSg2HrhMYoW3?=
 =?us-ascii?Q?nw1dSUYlTpDTgXdGwSc5BU2GxzwMtNMUGz5G41Hco00J1MTw/DQCXrhzVDkF?=
 =?us-ascii?Q?5v160e/RbWK8L9o0BtAgEyRnlBdfFxCgzWkAQ/HKeRjV7RAk/aU2TnK2WSWL?=
 =?us-ascii?Q?y1ZQC5L0O1jiYlWdkfldAjhgmSuEPOOwOXo8WGqKkOgyNwOUbFoQY3DuiQYE?=
 =?us-ascii?Q?p8Jk+Nns7W8DVp/pvTkQp8lXR+e8ziYnmXYPWLYnMuolbCTDwb8lFuzirrN7?=
 =?us-ascii?Q?d7mSTuhtmpUuToiW5IHVhzXLUyGTWaCCCMUtNoqCrX7JMG0zRSeHNBswtUNz?=
 =?us-ascii?Q?IAEjUAxpBplMd3JO6yL75HTM+c9DjSgpMO5lTdZFoaXg9ykxo0LFik4Wqs8l?=
 =?us-ascii?Q?Q+dtXygyeswwo0RfwYIZ0sQMfEcXuk2LDL+nzwXhVvEsvpxpqIgQ84KB3Alj?=
 =?us-ascii?Q?Mvs5FM1nOtbwtvA4M3iwhy/qGSpW4T/kytz6Lkl93cb7KnSo/kNQRVrrtf38?=
 =?us-ascii?Q?euDWlocxQpcToHCCgGgXp/v/nVgaWf8Nom9oF+nvR9Pt9Ytx1jKPrAaf/G7S?=
 =?us-ascii?Q?lyClh30eWNXsBPV7P4QmG7ulBuZT/cwAwx6XVs3uelkVJiVrx2COWQ0f6BZA?=
 =?us-ascii?Q?awAFmjOcV3buotEWzqeJGeGT80FZ609O0wVB40UiK748hIqILzFHzFfUsOhZ?=
 =?us-ascii?Q?HtuAuwBTY2H0jqCEHLJUxgH85VzQdThELly4iVPRNHDtIEYBIxsQignwNiu9?=
 =?us-ascii?Q?OvzA52Kt/NuRyb48EM3qGagkYjDkVsInoB2st4ZJdbRE48Sw7AkILclDMZix?=
 =?us-ascii?Q?JoQj7oe1PcdiALxIyO/S8504wQFXNHWvc3DcadbHQNw8+bVvYP9h5xqZGjKB?=
 =?us-ascii?Q?rsFBpY8+2UqzRyOp+85P7velQ4de2Hflrk5d8ZAAguRWbY644TgKAC5kHLXq?=
 =?us-ascii?Q?vTejIspCNf0GPhURzCGeNQFrqaUfyQTK8gIL74Y6+PGAi9C1OLwAbBB85igQ?=
 =?us-ascii?Q?gkfwhHbzDa9unyHTNC9jICbKZQOH5iog1fJOrAW/S4yQ52+fYfddXod63RI9?=
 =?us-ascii?Q?muu9jYBHYuHg0xwuRuVauHVUPOhDN7BwgR2rxiS8B6pQ3Z5bsQS+56puLXeB?=
 =?us-ascii?Q?U9j0dyHJxuANoGqvvcUZGVVpLf2yutu4hqRFU4dzvnpta9LIoZdO3ZKYcAZ8?=
 =?us-ascii?Q?wQ5Ix8MRtooO/qvLYXWJ5JTT2jRVRSEr0d+OR8yP8taE6jRPAK5EYRN+HYrO?=
 =?us-ascii?Q?fNeAEV21BXhFzmfk3QuU3yewTbY+VJeRsNemvszqkiMuxv0KsHh/xVk23WO3?=
 =?us-ascii?Q?Mfpvh4Ae7G+HU1ahD0TYueH+Xc69ctMAAsK8WVptLMVz2iy4JcS0O0O8uzxa?=
 =?us-ascii?Q?mhlh+0owGJXbaxVcjuakeA9HdEWeymO7eexuQ20vtb9w5Deg6LjBtbpq5p2v?=
 =?us-ascii?Q?sg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba87cd7d-1036-4131-2943-08dd9200ff69
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 09:31:54.0883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xmO/auo3i2zwD5Zc34nr1tgQPvZABouCZaLZmeOliavfJWiHFDiFwLhVE7ufAM+d+GTAE04L5vZ+zpXGXyPZKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8348
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJpY7l5nHOhrSh9+5rULs7KdD+5/vcHHzlLb0fleifQ=;
 b=B89s+RanU22d8h2Ti3HoPeYYNVz5yErkZ+Tf85wioVjG3B+oA8KO9ctY7oEY7GDEhxE1TJ3lWQcq8jZmkjJtDTBAhz+eOCS3V6E2NJxaE7Q7HgeB+wu8gD2Tl7n02Z+xZJ1aPTFWBgJ0cMWNf4sl3gpdvxxwNrVMVWqLPsqBAQukmM4wvvjRHSxCbf8ayQMfWWntE5s40C7SJmJq8pl5CW58+2CD+MlEpqG3UFpnZsyvO4mvkORR1+K075DTgl/bOQ+zs8xhluawGNhH33OJF9sV5t95OWj3786hhi6Z+tMWahGWYMaYZwx4wH4cU/jpQzrWXXGMEoPLIQrvqQvyNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=B89s+Ran
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Mon, May 12, 2025 at 05:16:52PM -0700, Jakub Kicinski wrote:
> On Mon, 12 May 2025 12:06:56 -0700 Jacob Keller wrote:
> > > Ok. I have 3 more Intel conversions pending (igb, ixgbe, i40e), but I've
> > > put a stop for today. I assume it's fine to post these to net-next and
> > > not to the iwl-next tree, or would you prefer otherwise?  
> > 
> > I think we typically prefer to go through iwl-next because that lets us
> > run a validation test pass. I have no personal objection if the netdev
> > maintainers want to take these directly.
> 
> The real question is whether you can get these back to the list before
> Vladimir is done converting all drivers :) If yes - let's follow the
> usual path and take these via iwl. If Vladimir can convert faster than
> you can validate then we should take these direct..

I think I will be the limiting factor anyway. Let me send all Intel
conversions to iwl-next.
