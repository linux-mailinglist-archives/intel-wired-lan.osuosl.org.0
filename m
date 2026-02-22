Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGagIRZ9nGm6IQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 17:15:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5703D179886
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 17:15:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E030981E33;
	Mon, 23 Feb 2026 16:15:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rJQFWAw7wGZ9; Mon, 23 Feb 2026 16:15:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29BBD81E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771863314;
	bh=61d779avMY1cOQfsvyjuXfH4Pd4sk6Ytd4T39C8l6Hg=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=fsAoMx1d3Hd4p4T1URXUbaqncSCpsbYFbbgzlfaReBiJQ9zcUTeAcqhB+PFFSRkbw
	 GC1CQq6uRIftj9o+64uuQKRs4LIFu6CsvIDn7E55df5nS8l0sexh1EeGcneUlLsh/+
	 /Inl2xr4IL9pe6N0mrjO4g7UCFnIAnxMkJll4AZm+2XzehOYOUGSBfQuJmVKnaQ9vu
	 O3iZkKT0FMevn+Bxw/GRyoQGfKJPjZUHeDW5cS1Zd2NVnKl73zLl+GB6x2/dv8u648
	 MxrAUwznLhXMEZQkmcCQpp8RF3w5ic8oAbXS5Xta5HaZ1GU5ZrwssvmjQdm5M4gC6j
	 z0Rp7yKVjT+8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29BBD81E58;
	Mon, 23 Feb 2026 16:15:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 693241CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 18:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EE2340C44
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 18:00:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WhGsHEw333S4 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Feb 2026 18:00:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.48.70;
 helo=mw6pr02cu001.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EED140B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EED140B25
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012070.outbound.protection.outlook.com [52.101.48.70])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EED140B25
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 18:00:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jZXbv08gxmE11xUFeMLbyZPsML3h4woehkp5AmYHYBRycgHKs5pc3JMWQYYMUdSQ97vKl2JGalrAIfuezOz8z1WpAZZo7MgFqTzhIuFgSm6m4MjCav3orrIjqTS0/PAAId1yCEjxL5bZ7MIN2m9wIYcdId8qb3FBAIvW9ZTZHeZF00urjSXJ8eVO+uh8dhRIWYxljJcX0DEIfaiO3i1bmBIXywy7rbTRdAVSaCdngXWBM9ckzVSXLuZudpr0cbEbxy97P/VfX5B3PkHdwJ9PSOE4BvDWbVMkyBZrtFdXsHs2NswRZ02ro7T10laANdML9yFijJQBjcdkVpC7f287GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61d779avMY1cOQfsvyjuXfH4Pd4sk6Ytd4T39C8l6Hg=;
 b=VZSwVi0W70izjjjfo8TkF9uQu2x7OB4hSBW3UiMuRUw0Y0XLl9xkfXkfDWHIACn0ZS1MpDwSjgf5rJo4aZBR6cUoH8vJNs/eww51Lu7OOEuvZDX2jk9jC0NvEux8+RJOXj/r0Scbm4eVHt6FYzIGyx5acldDfC1XDohOWVzUfGDeOEdtwehly9X1RAKaOGx8Q8FZQ2SF/xVlLwSiFA5A2cg3EDXGwbVf7tqb0VhS+zYdY0TR/ZBKWmZ0UD/RG/xyfuGDs87W/g9uNgv93yZXOVkYE74E8KvKMHq9h/Lw3uQ7v6Zz+Z7n0sBBTKzBZcnAaCAcwxyp6aSK4UuMNQz6eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by BN7PPF49208036B.namprd12.prod.outlook.com
 (2603:10b6:40f:fc02::6cf) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.14; Sun, 22 Feb
 2026 18:00:20 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9632.017; Sun, 22 Feb 2026
 18:00:19 +0000
Date: Sun, 22 Feb 2026 13:00:17 -0500
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aZtEMUxkg6irvvKj@yury>
References: <20251223162303.434659-1-yury.norov@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223162303.434659-1-yury.norov@gmail.com>
X-ClientProxiedBy: BN9P222CA0008.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:408:10c::13) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|BN7PPF49208036B:EE_
X-MS-Office365-Filtering-Correlation-Id: ca10480d-56ca-4f01-55e5-08de723c3dfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zbNloj8/+JEC+gGzrDmqfNtvCq06PUdT7ob0f1OlmMjry38pP+eLWDz9l14y?=
 =?us-ascii?Q?nfXYH8h1DuA1Q/mlY3F7tE8rLIEfom9jLvHdibLJ7+oq/ggFQm/TJFcXJ+IX?=
 =?us-ascii?Q?aKY+8pPtpSGyukFS7QHokj679xtV6KJLh+S0B0xuB/BKnW0+lngG80JC5yO5?=
 =?us-ascii?Q?z4v8u09ITptdgrjIfn2+4PI9vQMZ/2q3IdSbmP/cGKQDbNsmoqfUynx6KnDn?=
 =?us-ascii?Q?YqGhNg1C2yv4wvUTeBZgeBUPwcp7aS9OEdgwdKU6BO0rQK2kBfk+I4JthpJx?=
 =?us-ascii?Q?2OpK4sNvoB8OxniEXNTAzbYXuRQVkCKlf+NycBg7+VeX02O7szChQF3V9+fm?=
 =?us-ascii?Q?FO0yXtDH9ir4V3BFun/pm70/ARTkAQEJtks4Ur2ZXzCHMsp72fNnUG+BaREW?=
 =?us-ascii?Q?/CuCL5peun03U9AhUHdyIK0Ovx5XNq0dfcLVxCH3EsNX0PlRQpW5LjwXGN+g?=
 =?us-ascii?Q?4Gf7c0dRbiwTGz0rXNZWO1kiMRIzHT5Y+1k3dElDcTe+jWbBkBsyWUiMtm1B?=
 =?us-ascii?Q?LuEjjUZGhEwLUgU2ng8wcgr7vgb10eLsQkWNFmArArCIv2bA9fL1RpBYTmPF?=
 =?us-ascii?Q?6pWjLvVZ9eTHzF1WTWZ2rCNtC+hDFHqRZ9OfbP8C+p76ETbUD2ah2vt1jgKU?=
 =?us-ascii?Q?HVonp6GNdybF67RhO7PqQ9FoyWvQFmPTVFaq3rOhLOZYds85Xg6cpagVr7gI?=
 =?us-ascii?Q?kOQliWkCPU2i3opq/kRezOaTA6onk/YoUxX1/ts7MhBfqVyNZysxqrKomt8A?=
 =?us-ascii?Q?U78PZcj5hjU/3GpedHgfVCF9yiqr+ei6VT1B/5bbmtdDWU5oqskRFIl9wiiw?=
 =?us-ascii?Q?j+wFzXxFMDTTL8Wxt9ZG1Wu5dOkbOPoSbaF0lvbe3ybUrnAOuRDppUtSw60U?=
 =?us-ascii?Q?EkjLVIjXuKoHgiQwviy0UcnCxbvux/UtlHgAbET+nDLKUR2dOkKKOeG5l2jP?=
 =?us-ascii?Q?hRt4C3UPno4Jfos1FtGo5+TFAtyUicrDHIY0ug054s5hnJgyU6t4Gcj92KVl?=
 =?us-ascii?Q?AuZyqcMibV9u8Y9XEugtPlxeq6fun8fRhdTfaYJ9IG94hCnVF4hLfu72RPoK?=
 =?us-ascii?Q?6TbQAnmEBNH1YgZqNiTphnDSEPCYgrwSyOj50o9Z2SdAdVq4j0sIhIEX1eqh?=
 =?us-ascii?Q?PDTxeiXO4RpDsKOe4yO7nxFxZGuSHvspPhwxJHyzXqv9EmAfZCbWGOzZYA78?=
 =?us-ascii?Q?4kNIPW2laEYTY1efTggWWAPXHujoOenPX1Hmgxke69/MRj/V+i7krX7jsgon?=
 =?us-ascii?Q?GmY4efXSf4t6woeEBmuWpyGAJY+sLei1th2F1g7Sec5eE/fekxeQu+zBGFYm?=
 =?us-ascii?Q?YuW8C1vWb7vxLZg59HCAXS4E5EqnbjdnGcrYudx2uk2DbNZmJgFkWUDyQddD?=
 =?us-ascii?Q?oTWN4WI2Vl6VzlpA+PjXdeYH7yp+0vYdpobP6mVodiPlwmDDzd+ZtHYcPzm4?=
 =?us-ascii?Q?VqZZN12VoD9K2Nr1m+R77ag+iqiyHdTcA2cutQ7xBNDOUwohHEwnhZHkWlDm?=
 =?us-ascii?Q?Pwy5aU/AFU/L0vrbmnyMRFyJchNqwQnbPEQ9V/Q9OyCDEPfUz44od40AYxze?=
 =?us-ascii?Q?vtWVeSu9LG6K/DPp1pw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rwQU3l53gX1b0GipTgjU5sEW8InUxJgT/M3+LGmUfKRSsYh+rXF0P3dN/MQZ?=
 =?us-ascii?Q?ZoG6imzpfvHvh4y83jhYpHJExAeIXCn9XRy1vdYJlkRaKzfxUI8rL68ROcv5?=
 =?us-ascii?Q?O7FNnZl+G0aSuan2m0RCB0Q4JZlhL/hRdmlCCLNtfX7hc24wWL3gtAOfKy6m?=
 =?us-ascii?Q?zRZtaL0DMdB5g0EU7Fcs/JRsJqL+av9cBm/0qdOxwZRL6KxTDc4OkkDaR344?=
 =?us-ascii?Q?sRSOBdGEhxM5uWmarFuPQaB4C0LtlfL+c0zIzjZC0LZsd9V9gacXUAZIsY4o?=
 =?us-ascii?Q?wtQNTR9NtIW5Qjjl8l7dBthKNh14Qbg5SLavStIwuX5zHKqIcby3pbgbyEMl?=
 =?us-ascii?Q?+q42oxIqAt7AvbUHGedOf6OTQnvHwKqAxXCHKnxYI1t6dv9JryUjXcdM9NPA?=
 =?us-ascii?Q?mbPKTIXhLBXaY71uWyy2H2gGs4Cc2bA6C7qCFnyihGvZs46XqmCDLFHEZDRK?=
 =?us-ascii?Q?j/bWXyJ0NcLRYKStm46JKIzp/ZfGURzniVvJ8aezwD5bT/cXt8nSQIeCmdEg?=
 =?us-ascii?Q?ARE7rDu4QP2eqwDMHauN75qrYQ0TPN98oYbVAZT/i1ieZ2FlP82u+pYMCqGz?=
 =?us-ascii?Q?erSY5TFQ7yUifLYtylM9Cq04MTrvB72UtW1KkjccgyJG9Stjsa8QPJ6CHVfV?=
 =?us-ascii?Q?kpJR7/7nVnQxUh3svmtrIB9rQfoh4IGQ3eTL7zVYBwa4vwbZWcFhQy0Isf2F?=
 =?us-ascii?Q?cPt+Agh1vrJdNts0am4k6WUifSMe5bleaWXdyD6j+Znb24QutGpgEy71bWCa?=
 =?us-ascii?Q?QWXGte9gbbyyCJ0U47epFBMl66NLqZOaITI+xz1I8upxe44YLLmN19Q2TOsP?=
 =?us-ascii?Q?+rHsqYIZIqe2pvX5ggEUmdVselBxRmaar86vojpvTLI293pI3JI/gUkioUHi?=
 =?us-ascii?Q?jphfl9aEIgB4llTkz2PMGnt8QW967a7gW75Y/6QQ1MAcFG2K/j31/Z3o9L8M?=
 =?us-ascii?Q?vWCsvPQyt/uJRUelonhV83rDkceymbKGgvy8iC/64xjxXU2uGuZYckydCKeL?=
 =?us-ascii?Q?fOlZ7fqN0kv6GbN13YFJhc3Ko2pF1jzfadzWyYoeIkTZFHhC8IWx7zv6vt2/?=
 =?us-ascii?Q?Zaiee28Bn3eqJrpLHHE/IGISrlbwILpbGhhK/3xjgguV8cfirPT59sI3me+0?=
 =?us-ascii?Q?qzHOf6LFEosbMv0sWi8LlxDzHxTosC6TYpEx+F1HAorEKXIg8HzbQlYE8n3a?=
 =?us-ascii?Q?JcBOUCupedh/nVg0UTXmIkA6/XTDHWJkU92j1BUwyChS3Gdccj5WvPXAsQAx?=
 =?us-ascii?Q?qhVXZtjR+CTcR8LZ7dk3tZ7HfGaGHRhpV5Yt+Z9PIh4OkVUUlGG4sBO5UbvZ?=
 =?us-ascii?Q?CwASo3yZ4nDdLkkdkyMHHgXYLSdQlfsCWHOfnaMpZSqvTjE7xttn5YzCqG1V?=
 =?us-ascii?Q?ZY0RRs42BuzlbmTj7XlGYhn/r00ZzASQvp7KenAb7wnYp3we5d2JxSFjvZuz?=
 =?us-ascii?Q?LlmzbOrUfZCtWX2awTeCrMhkW7Yb1rRYBGc0yt6+zNYx3K6TT/mUNZpkAsjm?=
 =?us-ascii?Q?I+Gf4UD2SQw3BGiqbJ6tXQqh9GwIa6z3KRpMjJaTa4A2he9Fj4eEUUna2GSJ?=
 =?us-ascii?Q?8Wvn2S/Msq5dgm4zpUGX/mu6UWnh7nj8BnEjZbZOjDoIupkBgprEe10v6/wz?=
 =?us-ascii?Q?YbITrZRJ/esEd0EXRMavVsnrHVY5s9VNCfzgJtMXaKp4wRu/D+ua/KEPDvNn?=
 =?us-ascii?Q?K6n8IrH5gdP+17GCbI7YULrdoqstnuN3dffhs95EbCy41XpzYi3uv6UdlxmR?=
 =?us-ascii?Q?1zWKBcvIa3OlKUA1le1vi1tNuMcwIQvEqbRDfPjYhqcOJBWn0wWQ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca10480d-56ca-4f01-55e5-08de723c3dfe
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2026 18:00:19.8809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZZUMG7o6MzpBMBOzru+YY9DGSHK36QhD5t9iiIlZdkVbFJi+4S/ZdZ1I+ApuDLQFanq8B/VKaIgVYpESF7E1OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPF49208036B
X-Mailman-Approved-At: Mon, 23 Feb 2026 16:15:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61d779avMY1cOQfsvyjuXfH4Pd4sk6Ytd4T39C8l6Hg=;
 b=P18fAgw04MHaY6EF9uRPMmowrqORve26UjmAjiLcYMh7sfupGZP88F6UuZHAwaihpPGubKsSvWefjV21ptFGVftvVsT8UI39czNQ8hf1B7FlfDtWRU4gdRgq4pmtyQJvVBIQsU94UX1XWs7bGizx5JtnoFJ6JKIBadEsDSYYaKwsKZtp6XDtrTr7QKK3skyxKLU4LjNZZaTIrYkod4+1HrycxXF0ihdu5WcyehHmIGINf6IxWyEyX2RR2/TzPZAi2adPdvPJPMAhZxcQTsPORuyS6mSw6RVy08I/H3eLtd0QizbrjZvNdzhh9KodAjC0yIlWQkcsXofKDOwoo8xI8A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=P18fAgw0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH 0/3] ice: use better bitmap API
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yury.norov@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux@rasmusvillemoes.dk,m:akpm@linux-foundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:yurynorov@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,nvidia.com:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.992];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5703D179886
X-Rspamd-Action: no action

Ping?

On Tue, Dec 23, 2025 at 11:22:59AM -0500, Yury Norov (NVIDIA) wrote:
> Use better bitmap API where appropriate.
> 
> Yury Norov (NVIDIA) (3):
>   bitmap_weighted_xor()
>   ice: use bitmap_weighted_xor()
>   ice: use bitmap_empty() in ice_vf_has_no_qs_ena
> 
>  drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
>  include/linux/bitmap.h                      | 14 ++++++++++++++
>  lib/bitmap.c                                |  7 +++++++
>  4 files changed, 24 insertions(+), 5 deletions(-)
> 
> -- 
> 2.43.0
