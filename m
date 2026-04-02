Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFymGaOzzWnJfwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 02:09:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB71E381E61
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 02:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3495640DE2;
	Thu,  2 Apr 2026 00:09:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOWA95oIvFMU; Thu,  2 Apr 2026 00:09:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E55F440DE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775088544;
	bh=uXFGiZPHGtQ1mCJotl3k/kk/S8XjX07BpyIvC+5gnr0=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=WS8sKJYJ7XHcg6zehn9BYPvykSVmilnH6r2RfakagvGVXQnjfsTvM545MC3rLcBgC
	 g+NXE4OgDaw6ybWA4wPt57yHr2OeqJgUDTd1UdTD4lWcw3Zfpdk857WKS2G3LzAtJd
	 hK7FERf74GwDQ8Di9ovr3nVIsORnegkS1WvbPfS8EjrEBtWO2Rk9VpmT5BKAYVCgYt
	 nz7olwadsomSVks53E+nGVn2CaVydvpYxOVaphkkApZYyBHZwY5ED6IQ2f8de9rgz1
	 Ij9Z50AfWNZbPc+kH6P0gAEA4TgU00UmdBXEC/gOnv4Ayfi5aHRlqR0a0BE1QIBXLZ
	 hlAe6sMqckKIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E55F440DE0;
	Thu,  2 Apr 2026 00:09:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 704E42A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BAD881959
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3Eq_x8n_yk4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 00:09:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.53.64;
 helo=bl0pr03cu003.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 55D0081926
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55D0081926
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012064.outbound.protection.outlook.com [52.101.53.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55D0081926
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:09:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v+QnDeHXnes1h/AH1iiv3KfJ/GPMVougkFyQpD6DOdbskwJtjFlNnFf1Ti4vkh1O3zD2McrTQR+Jy3z3cH8RD5BWT5JTY+XozoUwIS2ogSO3hvjUjbWQ/4TCTjAB2z7a9N4WyRN3MpJTJUjEHmHMbM1H0Y0IpXkECzK8ebDin7d05kLn/vfVNcPP/rLAL6Nwt44E+Z2VYvbR4vWVrWLpbHsm5cPqIUjBTWpfX7JVu5Rxw4c4GwzLjvLBIzVhIS93oZDQaSWSnm5Go1IfTbpU/KZzwJvDtC15m8CMj2KkFFIo5Dm5smFcMtsouD20CSPnDdyrJ9zbcAaVs0U62sSyLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uXFGiZPHGtQ1mCJotl3k/kk/S8XjX07BpyIvC+5gnr0=;
 b=Sx+IBIRWVIbZtzmm+JvtEaDVMpuYzjbZMw5kzLgVWFkDPFX6kddLBeBoWkW9Z2BGdztAXUM8u9iuz+YgNaEX/QFQUlCqCvnDuJdId5SZ1mg2wvLq2iEypA+nP9kedlF3EudQJXhCyqZKiF0wJA6P39pQeX1kNLaIFk974TCkoRZf8ibhs4lmbYLZsDJMz6EfIjYharG4h5SPlBVd74mIZTUrkeLIB0DYUVR8D1jb4y4uZJd+06hut1SaBAcKMri2JzyBdCZzkfkqNo1jMbbHbwc1gOolYu6Q1183SOVB4jFzSzLxub8EByfEf4G20vTGkVXQwfvZDASUOTLNKRZJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CY8PR12MB7171.namprd12.prod.outlook.com (2603:10b6:930:5c::20)
 by SN7PR12MB6838.namprd12.prod.outlook.com (2603:10b6:806:266::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 2 Apr
 2026 00:08:56 +0000
Received: from CY8PR12MB7171.namprd12.prod.outlook.com
 ([fe80::4487:395f:3abf:ad9]) by CY8PR12MB7171.namprd12.prod.outlook.com
 ([fe80::4487:395f:3abf:ad9%4]) with mapi id 15.20.9769.011; Thu, 2 Apr 2026
 00:08:55 +0000
Date: Wed, 1 Apr 2026 20:08:53 -0400
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Airlie <airlied@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Simona Vetter <simona@ffwll.ch>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: Simon Horman <horms@kernel.org>,
 David Laight <david.laight.linux@gmail.com>
Message-ID: <ac2zgKiszbbUb79t@yury>
References: <20260302011159.61778-1-ynorov@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302011159.61778-1-ynorov@nvidia.com>
X-ClientProxiedBy: BN9PR03CA0681.namprd03.prod.outlook.com
 (2603:10b6:408:10e::26) To CY8PR12MB7171.namprd12.prod.outlook.com
 (2603:10b6:930:5c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR12MB7171:EE_|SN7PR12MB6838:EE_
X-MS-Office365-Filtering-Correlation-Id: e2e09539-71a5-41c2-f282-08de904c07c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|10070799003|921020|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: CU+nebmwnqqimNzyqgcEhrRF9FxR5hzmG0TQ0RqZJ+8EwrecgYY0IsPufeh2j83/dAdXEDDaJatZ+5P6tYdWrUYDwIa/T6lil6f1RMDhhYKga6OUqUzwDHfUTNaCySVTlm9rGfg8nagZ4TlC+ncwGSen68EaGsa65hRoEeGD52qBzVm50ym+jRh6LLzTUp8fu17TANySI0Sw6KvD2JNWArdm/uAh9ZX/1fw8yY/RFxeS/ZuZf4Yrd1sDMnhbo0dvEUas/O6eaHKAKfk1Dr+fsKlZJd6nSs9wpeOJsHZUchO99Gckfnf5MMM2NUsK5Vh6Qk682QE3Dat17/W4ouX9/zed2L/gLfnpU+ERaaaPKqXV6+xiyohSpVk5dcpq41LFZP76NdsyxZ/WEVF8f0qYUBEUqKp2AIP45Y1MAVwtM5iVsA5k6XYsnl341QGlqlVclbOQ7LuDTIRFHJk1/DSZt2kOdU+qZsyf6xKjgaZQa163TO7bgVWw5DLSzsFBXi/HTB3IJoHLSuwqGYhANUEO52nIU9GwRm5Duzi4GXOUxj+An2eg9ShhNizHJLH3Poxm6XM1GdR2ABnVOZjHSIc6HKuiTMVT9DzSToCfeSEawNY3sxUBQOM0RliX4lFk2V+11LzhtJX7cE1gJZJO7HVvAZe+DzbkLizWh5cuSym5Qxe1NdIyN1iBMhJFcJfwkWwBVWI+XAS3blWZN8Z/VgzQzjYxJE2fKJvNGitRzRzX4P3jm7rMeX6gRNhMMGIH5ff5AyOrbB1rOc1dTtsQmin4QNupdDs4DTGUTixQIhEv37U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR12MB7171.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(10070799003)(921020)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E7lRfOZPugBzEVhN+h5bXJgcbdDhq9LrMAXrrpaC3Q4wQDN5BU4oQjKSNrEt?=
 =?us-ascii?Q?3Jf2d4XUmN0nOmHyBZDjqhW5Bvy4EBrKmqU5CPXyLVJP07mxg/hE3tH6+I7V?=
 =?us-ascii?Q?KY7ztsYJ2gCQw6zopo7RAcc0F+Q7jvAGXJ3UxJ9b5yv0f76726tNnKgBudWv?=
 =?us-ascii?Q?zdLoh4yUND357TNEc7R9G8wX6qlmgGR4KLM9iPKrbESwTM6nL7NS9ddfRreN?=
 =?us-ascii?Q?DpFGBXkhKBE3tkFT57b4Uh1e1XHfhlYB/IOpk/fb5erSau3/8MbHjl1Wsz+c?=
 =?us-ascii?Q?Wn1rBu+PH326ZXOQZrrPJCFxLg6inCTstO5vtYQ/9qgrPQ1V9OIEe7/DXPvb?=
 =?us-ascii?Q?UbuJJ92fIeONkq+u7bRSk6fkT05D1KMXMVnnDWlc3UWvzeNTZqRhM2L/XryE?=
 =?us-ascii?Q?jpgu4Hjc2gMScSFaw8ybaG8j9g/liwoAPtasw+OBXxKexEhyAXgRY8duCRa8?=
 =?us-ascii?Q?FSRb0S89plzcwJSPSPmer1HfUz+xGTT8qONulAH7YXP9ul6AwvDBXBnYaz2Q?=
 =?us-ascii?Q?reZ8JmNviR9JqKzpdcdr1FKQh6WCAPjxXktt8qvY+of5xSqO2sejDpZ8VlmH?=
 =?us-ascii?Q?zH7spINRaWdBSoYzj9bWaxz8JFU1UTwRBb0DZAhjN/+FDMYFCaqD7xj++OfS?=
 =?us-ascii?Q?DqeA/8g6ZH4xQdlv/kGDt3J6Nw6/8gKxQ5L7OSAt52f5HW+bZeTu+6hDvPKa?=
 =?us-ascii?Q?qu0exv9mio6iCl0a2fYmty8oro1lqYhVnMqBOdNBW2q/bQmgtAca95L92xbY?=
 =?us-ascii?Q?1yoSh4piPZa5eV6XiRrmTzsoa+skC5FLxug2JPnFu4eGfHy6a5WDleFhSuF5?=
 =?us-ascii?Q?xPGbYIFP0NAxnLtc/lIgFz1FITADUN7EK8j3ipGU3hZuVfKmrsEIFN8upeVI?=
 =?us-ascii?Q?CGZe7u4YyX/TaV2iKAAsYUnx8h4iXFhnwHP0ND9EUxi8DWdYGyMseWRvFmmi?=
 =?us-ascii?Q?wlGyixMALIbV4gnFBXeaoElaOlEQOwaUYPLkBEWf+vrkpotu8mk3JFwqIEVh?=
 =?us-ascii?Q?K/5t61Y+SC1km2x1JSYESUuSTLlDikdShHLyh1tc9dJCOq3FyLPp52wMSRYx?=
 =?us-ascii?Q?a8Eo4xIcx/nUoitDVvAQ4QupVR1PIKRFw6wkwNBtuKsycPK5IPHavW/FCnlb?=
 =?us-ascii?Q?3nVnn+a1c+Q79Gy+REgYe4eVp8vrCroPv8XlBuCSVbQ20QMsA+86K4qVM0AY?=
 =?us-ascii?Q?9nG4g1g2c4vx0y/4WSTo/ciiRhxMdbZkX/Rp/AcWsdN1z2kqUse7cgdTyMhk?=
 =?us-ascii?Q?KBzgecXDGkGfLzICiJoUJA34op8X3rByU7fEm2B1XkK0RhUOzCwQWruGYICf?=
 =?us-ascii?Q?DEuQoMRbGwg63nlv2Qj/W5AsqdVq6xRjvNg6RbEaXEURAhr3jJKuaZeMTH1+?=
 =?us-ascii?Q?QEd+33OwSDdxgnQDIZDW4mT4WU1ozAqZMZKwwvt9HUx8PTYsogKXEqi1Onol?=
 =?us-ascii?Q?/lDD1FUpFR7xIzEXe9z9Lwce9NEFTH2s/GafBkBGoXkjROw47iPv+EsSBZjo?=
 =?us-ascii?Q?6pUV6d55HvRz4BS6mbvH0RAdtvJhuBNXDIdyeG3n7O1IwTqbBvvkLrxE3uN7?=
 =?us-ascii?Q?lt3m1lG7HyIKAn4Qe9oo8/s2wg63+DF2d85RlZKAYjia7nAQrut4gLLMxyRm?=
 =?us-ascii?Q?RIpz+YLfM50hIBKZeCQ9sFHaMMM+AXMd8F4cQQDSc3crR9ujZcDxB4B5Pz6r?=
 =?us-ascii?Q?zIuBPGKei9bXhbbtSoCJbm7KSh3CF/2VGB3RrmTrtNpITJgPBsvw2aOMV71A?=
 =?us-ascii?Q?VU3fEzXGWvSwBW+mpOT0hO+zLpFVW2fLoRQxV9z5tC90nxzmssKo?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2e09539-71a5-41c2-f282-08de904c07c7
X-MS-Exchange-CrossTenant-AuthSource: CY8PR12MB7171.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 00:08:55.7601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z1S8vMqp2dIIJDzS0NDCQWU7P2d2feaV92sH0XAm00HTa6x4Wuj0/Nu+feuIjHIWwods8PCLqFgOWRZGeICppg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6838
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uXFGiZPHGtQ1mCJotl3k/kk/S8XjX07BpyIvC+5gnr0=;
 b=OtHjWcEOWfEiIMJ7DANlP4opEjc//MJfmt64MP2J/7CKinh5CErPGUy6TYN+z0IftSGvDwl+9z1ltixUxXC+0l7B3xfXlQsEX/ITA0yI08exll+3g0EUpZqvb1nwK/Jh0/55nZTnHbWK7gat/gQv+RJLlbEByJ/PUKFSz2jDiTFek8fTtC2c5q7xZYasg2rmBpagrivKpkBBMIgmYgQxpW1oAtlSgni5RCkdVPywOto+s3WxR6EZPIx8BxfXae3wC7ho2sepoyBOBoPcZ7FXJb0lB0so4/eIxTfE6K/rCkqEQLkfBi+iTrL9Sv28E+abOdupe3YdUtaVj5dtLQAAkQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=OtHjWcEO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/4] ice: use better bitmap API
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:replyto,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AB71E381E61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 01, 2026 at 08:11:54PM -0500, Yury Norov wrote:
> Use better bitmap API where appropriate. Patches #3,4 may be applied
> separately.

Added in bitmap-for-next for testing. Thanks!
 
> v1: https://lore.kernel.org/all/20251223162303.434659-1-yury.norov@gmail.com/
> v2:
>  - new v2#4;
>  - add documentation line (Simon);
> 
> Yury Norov (4):
>   bitmap: introduce bitmap_weighted_xor()
>   ice: use bitmap_weighted_xor() in ice_find_free_recp_res_idx()
>   ice: use bitmap_empty() in ice_vf_has_no_qs_ena
>   drm/xe: switch xe_pagefault_queue_init() to using bitmap_weighted_or()
> 
>  drivers/gpu/drm/xe/xe_pagefault.c           |  3 +--
>  drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
>  include/linux/bitmap.h                      | 15 +++++++++++++++
>  lib/bitmap.c                                |  7 +++++++
>  5 files changed, 26 insertions(+), 7 deletions(-)
> 
> -- 
> 2.43.0
