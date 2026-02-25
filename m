Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMsBMJc7nmkZUQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:00:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D4518E392
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:00:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06EB6401BD;
	Wed, 25 Feb 2026 00:00:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G4ey3-_JxRHL; Wed, 25 Feb 2026 00:00:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 727E5409BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771977620;
	bh=zdyTGNr8Eer3pyR/Bdlb/OklFsOqCzUlwQpSOtHSEO8=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=IL7FhanfZH8o0jSYlYJA8tk9AQZ3W3oZNhqaDzzurGn7jxx8/iy61YwM6d7mnHE/W
	 8ZBvZZnMCr2yXsrVG/uK/nV05/maj5t0VNkea7y9n7+qoflbtYzB2qEZmWaIPox9Tx
	 yNOnrGPc5i5VpfTomp/INi19C4fTrxyAtL3Uls+eL1GFvdXtUpVbxdsy6XgH/13fYS
	 Ps9G/rbPF2MYAm5i7f69Y3sZCqO/1MCV9vMp12FKvBzhV0taFmd2ziPfL2bHvkqC4m
	 FTSZ5c2wNwvr96mxsD3YEaU0SMcov9lUGUokG2pFpQLaIJ8iXlQliywHghu642dGkK
	 7j2y9eIDiZ+vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 727E5409BD;
	Wed, 25 Feb 2026 00:00:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B8B91B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BEF8400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q-A2kpsnAfHz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 00:00:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.200.45;
 helo=ch5pr02cu005.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B31EA400DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B31EA400DF
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012045.outbound.protection.outlook.com
 [40.107.200.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B31EA400DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:00:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFEcxLcypqyEDNQqtjv5b9D9k7gB7igrEkbqOlWGx0a1vWKy1ynu/0TSQWaH6DnSmf+F5sufKRrwvXT2my0F0RLIdhbR8J82NshwnF1N4JKUBnOYNXMOCA+fXMREsy/x0oQJ3JRTZ+LroKCZG/51dz3zQhyJXQ1yt4fyJEODRyl5Ce2C42cI3O3S6iuZqrMZf7vbuQD8ED9HBjw2jEBwZnJQjNsNQHpZs6yzbsp2mqtlRXs54ygGqPayieUrP3yWFdl7dQHIN/fY+B+Tw+ly6MAAP6fz5mptbirB1JFNmXMWs24m6QndJcawepmJVt/2pQvm2dsERudOilMLIkZtWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zdyTGNr8Eer3pyR/Bdlb/OklFsOqCzUlwQpSOtHSEO8=;
 b=C0hl7wMliijiNYqZd1XMUNkSsCpq9gB7P5zS2EYbpZmP950DygfKoAk1VSAvmI6VW8ayCInqh/QOoO9tsJZzUEST5jp90CnVCb1Z9RwUdTDT1N8dKP7ATBfwGqnzHk483xPyEaLrm9OqwM21uapW7u4gXcQsc1juLzsI1IwKjx7XlggCFKu6ZE1PoXs+pnsK0zF21fpRAZBPYvzkqw8pp1WI/a1ZG931mrRbfq+iWcX5OCB8CFtsbN5SH8KAePoEo8njGFVpSBfQPU9IZvFV5yX79Ds9ETeyK2GRVkc+9En/vCWnpxw7uaiPzU2qZyAYLlGKuLcCvdhKta9nG8o6Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by DM3PR12MB9351.namprd12.prod.outlook.com (2603:10b6:8:1ac::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Wed, 25 Feb
 2026 00:00:11 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 00:00:11 +0000
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
Date: Tue, 24 Feb 2026 19:00:03 -0500
Message-ID: <20260225000007.255837-2-ynorov@nvidia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260225000007.255837-1-ynorov@nvidia.com>
References: <20260225000007.255837-1-ynorov@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN9PR03CA0173.namprd03.prod.outlook.com
 (2603:10b6:408:f4::28) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|DM3PR12MB9351:EE_
X-MS-Office365-Filtering-Correlation-Id: 24edac52-291b-4153-bd16-08de7400d873
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|10070799003|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rL7WRsl1dWSqN1Nyy0U91vNR4hK7MuPLt2SrMAvqcsDz2u2b2OEou0WUp8RR?=
 =?us-ascii?Q?iquB6rxrUS1x4cJ23fPcQK2HQPmmLGhp4Z/VxNFO8tqbMnE+m85tYQ1IesJB?=
 =?us-ascii?Q?li2CBi+3QQzdAb5GIWZBOZBahRY35Dvej0chWPfgYNptzbMuSfJCt0bEJIux?=
 =?us-ascii?Q?ALK5maTctZBvzP1u2ngDEByTC7yXHLbwczW1mcR2RLicx9nOsZMbNYnSD/Fr?=
 =?us-ascii?Q?v8dNSuhXGQetI72ZPZlZmzaVl8AGKlk9KuaSW5w0ykwgKH1wv/SF7A6SOyMf?=
 =?us-ascii?Q?e/7YcM94rX1KmwFGFarvlT7HenlQIFFr1oScRFIBUzkYSzL71tZNiwZ/ApWa?=
 =?us-ascii?Q?tGhVanzBc+8/6JamEuGH6/OGAnHASwvInMbW5/X/rP+QKVm1Pcw0q9RRww5w?=
 =?us-ascii?Q?kCXdaLqFYUmt0dKmVOjbREBEqTuEeAbWG95eWxX3BD0RveXtx9vGXaQ0eXVS?=
 =?us-ascii?Q?UkXNGv6VFzkMOkluMmJvK7ul2Hg5ctETGcLQcFbDduSZgJT0LGJTrn+uqmjh?=
 =?us-ascii?Q?LSckLnFJ5o4ZNedn6mcWiJrESHylhO7vg8l28+bowfBvdNfE/yjMnbuBxAhn?=
 =?us-ascii?Q?yOBeZyYxaZPoON96kP/khwwWH09s8CLY7lTbiZC3mMYehL6Bzl9AbAl04bks?=
 =?us-ascii?Q?MxFLBYJeIRYyrq2iTZ8NLM6Tk5dZjoFPt2eo9SM/6e4PNGR7W0gspCuhlvT4?=
 =?us-ascii?Q?y5Scb5gclHQBtx7l+4E98ObUFaugkfLv7Vh36+oSV18b8kk0b4qzSL4urdxg?=
 =?us-ascii?Q?xBLTfsAyg7hd9Ril1CoBUexdpK8BsStz6xUkMdbpu3pW7SuOy8DzYpwlywBl?=
 =?us-ascii?Q?0Fbik+VwS8unZ4O39MGk/7kIiiESbkKvBnGgcsfLKSFjXl88KkHb3fHMO+yY?=
 =?us-ascii?Q?4P8jzFTvBlnQ+K40DExfIQKV0WHYaAmCsxms+nzNp7KAnsuOARmDjxzwx+gi?=
 =?us-ascii?Q?81StkVtNWwVvH1Cd2fYS5eiGtLUj3uUhmSFeOj00c2LrTcF1RfLmM7fjQ+g2?=
 =?us-ascii?Q?dNVY9jVNV8iZLjV7TbAs2AqV1fWPlwbwo+MH+ge2xJgL6FRfZULWpzv+w9xI?=
 =?us-ascii?Q?Aw65/qbHAClVgdrnxsj/8k/w2fgDK+SPVYPpmFDFsk+2+WKyY8li25idjcdg?=
 =?us-ascii?Q?3Xe1Wctx6WBv1Ht+KSbh+grL2LUCUiM+wcFr0r3TEfKRwd6XbgdQBIaNqlaq?=
 =?us-ascii?Q?QzIiL6zGJwN+2ALywrP6fEPIFHGhykt1PL8KZlGXJOXprJU6WUIN6sUL2q1X?=
 =?us-ascii?Q?nAM+M6ozejd/1jJXluLwyOBuPJflwQPUV6I4/Ta3WespCOmWLh+FKCsnhJBn?=
 =?us-ascii?Q?D6s70TfxZSu0ozPNx76rOh8Iy0pLPSw+k5ZIa5DpMiXrQdVf8/rzsb6Y/k6K?=
 =?us-ascii?Q?aFifDNLMI4vQffO3AIDf6ZwQt1Ga3495ZLkuumpqP63OKaehdHmqDLlhmEr/?=
 =?us-ascii?Q?1gQgxl5ujHsKm3kH7IJ7BRzYIhIiO5wJCynsJ+OCYQKmd6WnB7hC498vIUM4?=
 =?us-ascii?Q?2EIYC/f+dT0Rbbphjw/Q7rEanMxS4FfdhgiCfRtiCtUEp8DMHmQCsljIno+V?=
 =?us-ascii?Q?a3n00M8BpjlpA4CC36x/dCBeCa8ZI1D/x337Mtd6elmVbMENIEKIA+5zh+d6?=
 =?us-ascii?Q?HA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(10070799003)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hyWGotAJli6m+m3Ql7Neiq1fSdVsyQYnhBzKMCS+WkdViJR662cWCudMT/sl?=
 =?us-ascii?Q?oHdHPXDCphAAk4xddOUEXZx+1R9RPVlM36/ieeZdI/N6ogmHAGHu/XMIhxh+?=
 =?us-ascii?Q?41vewcRUFkPl2kkhp9Fmyi7P4NwSwP/aBxrkGgZ6KDD2+fu3keBKbSYPLS+H?=
 =?us-ascii?Q?/AKPQZLoOe+xAd6V4gy6RebNM9GVIWtolzH34NNE6pm97ibVL9uK1MM3Om3D?=
 =?us-ascii?Q?wvRTLnJ7frl0PGidUtGPLjmGSlUw1Fu962rrIZbK/nycjPnbQ4MfKFsMQ8UQ?=
 =?us-ascii?Q?e83xC8MfZIFRQ0gkyDE3S+YoavKmImq6i55dj4Gurrtrn0uDTAUV0cchr6y5?=
 =?us-ascii?Q?J2f8f7lBXEQIg24PGZ5wJoFPWRyOByvGqCeK6IbFcdY0dBQVNONt5s4Kb16B?=
 =?us-ascii?Q?7tJstz8eKxgCCF2qXVY949R8QT6y13K0hLEeNALTjmECpSIs3KLEpXeXUkLo?=
 =?us-ascii?Q?c3DV/BSzBiACsMVQpxRhZNLsN7Czfpyrr1dNOhAhm6QEhp9hxL1uyqMCLhkn?=
 =?us-ascii?Q?GvokPhiddEoNXlLHTOiC/XI4gF3cdBhdzWdqszfP9mA6MXiS0yzrlCudkl6Z?=
 =?us-ascii?Q?fKX0tKYQpFrJ42kHOzjEGBPUno9o2JEKtLUko9dI6lA35w/1VnOov2x5vQMV?=
 =?us-ascii?Q?IRest4ielT0PhSZ00Y3bUMEQ/52MvFGBYMtGW+9lD34zXP1e+6ibKTqXcnRG?=
 =?us-ascii?Q?odN+Tm+Q/sRpy/R7TGIn5EyqKK4wDUOzllkHoZ6JiI+2EByasT9P+oaEXhrb?=
 =?us-ascii?Q?+hFfa8A94nPaROXfJXKwe3e0ykpDwzirAk/FxNvH8MIyAgKXF5DzxId0VXfZ?=
 =?us-ascii?Q?w9W28kk5/jVmWgJiGByCZAk9HvmIhXs4JUsdUan49MhamdJsTWUHZF7adviv?=
 =?us-ascii?Q?CleYXqpIq6uIrbN6wBfxW6V5P3BcijluGFkRm1AKIZfc8Y88rGs4/uGd1vgj?=
 =?us-ascii?Q?dw8gmxlOMym4XJkho2EXvk7KN0LM40WxclspmT4uubml22Xr+ZT7aKdDicCQ?=
 =?us-ascii?Q?eylXl5yxcSZgFiL6xzb0IRLUjL4kWxn7szHDy4yV7HSOqmwh6ExSWAsVEpV1?=
 =?us-ascii?Q?f/hEtpnnzRy30T2dOp6UlYym1XLGAzgdlxvie/ONCAJHOTADqR6OLK3gNo6s?=
 =?us-ascii?Q?TGDnjdNmc9LHYZY7eG/AYQrqvAJrYVDAu75fyOgJMcDJmiMQcRf3e62moCc5?=
 =?us-ascii?Q?aPdaqxQlarMxB1f1x7Gnoo7dA6sfAOdu5Mzrl4WYAcAfcuU/CUAIzhEiAYG/?=
 =?us-ascii?Q?/vcUx3W0hQ47rj3UWSBDXL5w2r1l56cHXHoxoaarQODXOlExcuJIVBrtFoWp?=
 =?us-ascii?Q?0rRe2TgQSf8rLcqWbfsFH3fnO5q6idv+ddPWGuoTedXZ+2THeCZuYED1pozx?=
 =?us-ascii?Q?XjQAsQy++RYr4mzgZFbCdFAdRAPEdzam997N9f4rzasqraZcfYVe5zJxfDO8?=
 =?us-ascii?Q?ZUohP6PBiGvio6L5ahWRVKDq3wP+SzoCrTDc2zQH6ad4raoGXQvTuYTMHyYn?=
 =?us-ascii?Q?wnCGwmsgUxbDvVaphi15f0/GFC/okfAKcKi97ZBNRJLtZIxMrCyzuAhjNbkr?=
 =?us-ascii?Q?G2Wii26d7udiJwlvrPey7apZYQuvx66fxJvLxeSQ2+SqzLAG9Mb7JfYHxSze?=
 =?us-ascii?Q?9Ioe9YBgzTc5ToSSFXTnixOKwzzqSceAaJO9oNk7lOEbURttYjEmbHR7Lfa5?=
 =?us-ascii?Q?klPfBOIiVZQfk7wiUukHceyf2Gog029jBuY7GwvJYcfNEqlGTm36F+JM8FY3?=
 =?us-ascii?Q?s+2yfoku8kX1oyVdfABVgqYnG3SkarlBsYor3Qy5qVRTxe/CALIG?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24edac52-291b-4153-bd16-08de7400d873
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 00:00:11.5551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ldOWGec7nBTEO9Urrsopww6XSp9OtpKpE1mpPAhnBPNhPemeIGk4NVWAgENWq2+Gaelck4tWsghZXZxXNzHf+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR12MB9351
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdyTGNr8Eer3pyR/Bdlb/OklFsOqCzUlwQpSOtHSEO8=;
 b=mnyyx8HF5NKcAIFJQuQmmUc1CsOPCtZZCC3Yjv2mOimarDtjLn6Jtd8SErWl8ZIHuNUDSqq/xzbCMkG7Clrdb2nSch7hyw+y9qABCKu8uaBXu7fpvtRG/y8rgOqPx7I10QJbwH/bxU8/x6F9QxKbhAs/tC5mso0Txrsv+JZRyyGQSWOvSpk0GiyX9xaVZqaaYcaulZJOo/BFO6hQP8TTxaokmbBFD1vBn/HebS/qlXND3pmN0sI1tu8aMA9MSdgtF3j9MPs/E58fIDBTdr3yRUU9/USAcXK66ha/bDxoFhrqpqlsf1PDFVAuF4jvtT5aTSdDZsLFcjxIRhihHK40mg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=mnyyx8HF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: [Intel-wired-lan] [PATCH RESEND 1/3] bitmap: introduce
 bitmap_weighted_xor()
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
	NEURAL_HAM(-0.00)[-0.960];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[nvidia.com,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 16D4518E392
X-Rspamd-Action: no action

The function helps to XOR bitmaps and calculate Hamming weight of
the result in one pass.

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 include/linux/bitmap.h | 14 ++++++++++++++
 lib/bitmap.c           |  7 +++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index b0395e4ccf90..5485076bb2d0 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -168,6 +168,8 @@ void __bitmap_or(unsigned long *dst, const unsigned long *bitmap1,
 		 const unsigned long *bitmap2, unsigned int nbits);
 unsigned int __bitmap_weighted_or(unsigned long *dst, const unsigned long *bitmap1,
 				  const unsigned long *bitmap2, unsigned int nbits);
+unsigned int __bitmap_weighted_xor(unsigned long *dst, const unsigned long *bitmap1,
+				  const unsigned long *bitmap2, unsigned int nbits);
 void __bitmap_xor(unsigned long *dst, const unsigned long *bitmap1,
 		  const unsigned long *bitmap2, unsigned int nbits);
 bool __bitmap_andnot(unsigned long *dst, const unsigned long *bitmap1,
@@ -352,6 +354,18 @@ unsigned int bitmap_weighted_or(unsigned long *dst, const unsigned long *src1,
 	}
 }
 
+static __always_inline
+unsigned int bitmap_weighted_xor(unsigned long *dst, const unsigned long *src1,
+				const unsigned long *src2, unsigned int nbits)
+{
+	if (small_const_nbits(nbits)) {
+		*dst = *src1 ^ *src2;
+		return hweight_long(*dst & BITMAP_LAST_WORD_MASK(nbits));
+	} else {
+		return __bitmap_weighted_xor(dst, src1, src2, nbits);
+	}
+}
+
 static __always_inline
 void bitmap_xor(unsigned long *dst, const unsigned long *src1,
 		const unsigned long *src2, unsigned int nbits)
diff --git a/lib/bitmap.c b/lib/bitmap.c
index 9dc526507875..a2bcb5b1fe99 100644
--- a/lib/bitmap.c
+++ b/lib/bitmap.c
@@ -361,6 +361,13 @@ unsigned int __bitmap_weighted_or(unsigned long *dst, const unsigned long *bitma
 	return BITMAP_WEIGHT(({dst[idx] = bitmap1[idx] | bitmap2[idx]; dst[idx]; }), bits);
 }
 
+unsigned int __bitmap_weighted_xor(unsigned long *dst, const unsigned long *bitmap1,
+				  const unsigned long *bitmap2, unsigned int bits)
+{
+	return BITMAP_WEIGHT(({dst[idx] = bitmap1[idx] ^ bitmap2[idx]; dst[idx]; }), bits);
+}
+EXPORT_SYMBOL(__bitmap_weighted_xor);
+
 void __bitmap_set(unsigned long *map, unsigned int start, int len)
 {
 	unsigned long *p = map + BIT_WORD(start);
-- 
2.43.0

