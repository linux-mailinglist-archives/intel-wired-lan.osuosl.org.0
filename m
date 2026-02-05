Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EtNBomehGmI3wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 14:43:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 063B5F375F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 14:43:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8341B411C5;
	Thu,  5 Feb 2026 13:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rVr5FGfWvr6z; Thu,  5 Feb 2026 13:43:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4866411C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770299013;
	bh=Bd5y7wVNd30RNQHWTvsGPsnTlQneOH5xY9wmj/l24ZM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VY9h2wdY9cy54A90NAfbYMZugmXUbzirD6kYAAWH/e+BDzph8THNwya8FnJtZK7nZ
	 pz+YbUY4XD9pddecNkmif//qO4rd8xltsq+cn1CydxOjyh/oouvhK8QVR4yZBQS0EG
	 9F1BF2vmR0ENDHkuw3ppmMzAlHP8uaiFwgp+tFNJogk6+KtPIjcZqKvEEX24q47Gc4
	 33xLCYZZ6yF1rISt9HMyJJbBOQySpgtroxnSv9zsInvYfoGUljxdStplYWuNkWplLT
	 lOjdOm2hT/ne4DIBpUwkqzvpvoGSnidPRftQXvGKYLTzorxlo792RxL9SwsDEwKto0
	 3a2ni92fyNkLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4866411C0;
	Thu,  5 Feb 2026 13:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D9641173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B93B2841B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sFUcrAXswErz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 13:43:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 782F0841AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 782F0841AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 782F0841AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:43:29 +0000 (UTC)
X-CSE-ConnectionGUID: dfOtDVzBQWydP1fpEnkrcg==
X-CSE-MsgGUID: tj6sN7wRRim/hRTxfTFe0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71670918"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71670918"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 05:43:30 -0800
X-CSE-ConnectionGUID: vAsza4vmQ5GIIHz9rn14YA==
X-CSE-MsgGUID: fvpNYumFTs+9jYIDOdt/dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210564357"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 05:43:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 05:43:28 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 05:43:28 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.52) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 05:43:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SIOAQ/zeSgRKLGT2EiHZ7G852hdZuOjMSp4yajx0sk4qAJIB9fROgv4pWAPokyt+xrv513kuxAZTVREHr0S5PpgaRCuu4IpLUDBtDqUJ+fPnBJK8r45Ta8czDSnY3RbTm8XE7wO/CIpXYT1k3FbR7K9MF1HXANOxRS8m9dY8VquQ1O1IRCadRQoIuE5cNj7CLy2S4VtNzY4c/MJ0mXGaO1p9M5iHQWFkxQxejADks+502doB8qPJXn6Yw4r/i6lAoB/hjsY3shzf/z8GcGLEF4ReMlr9tH3fB/GlMTJxWEgkhLAY4zoxIX2+gs4CQB1DwQJHugCPJo85Rg7AStVvBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bd5y7wVNd30RNQHWTvsGPsnTlQneOH5xY9wmj/l24ZM=;
 b=tSOyFdKwTV66k8HKw7kN43SztXBr5Y93Cjiarv0u2SIk77Jh0V9BJ6fJUW57t6EN3tNcXiqk/SkKEflXpySxf8k20olR1HCO01e++2uQ7NjjTXwnvYdy+K+0fICpxzECa8DkFo3/P9MukDqVwxYfMKWA7l3hcGaDKBOIszNrVuzyq+8d9stxoFxBqHTPJDR3cBsQIwO4PxdC8UCgHtp4uNdM+vzCz7zYpC814p45h5vctcneoXJ43IRFj+BIpCAyEZ1cyQkaEyeSJOvn/a2oJKjXrAWTKD7erroVWwzK+mOukqzITYwHnzqIY2vCoLXFpgEVvummXkMrwYJyeItDmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB6470.namprd11.prod.outlook.com (2603:10b6:8:c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.12; Thu, 5 Feb 2026 13:43:26 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 13:43:26 +0000
Date: Thu, 5 Feb 2026 14:43:11 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Keita Morisaki <kmta1236@gmail.com>
CC: <tony.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <paul.greenwalt@intel.com>,
 <aleksandr.loktionov@intel.com>, <alice.michael@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
Message-ID: <aYSeb42KRzlc4SbA@boxer>
References: <20260205024327.233346-1-kmta1236@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205024327.233346-1-kmta1236@gmail.com>
X-ClientProxiedBy: TL2P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::6)
 To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB6470:EE_
X-MS-Office365-Filtering-Correlation-Id: 47fe888e-e727-4385-7dea-08de64bc898d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PH9rIh5e57E7pl6hI/hBD+LhyPvwL6sv5JeioTGCx0aLaG/o2RI2SGLX8YEF?=
 =?us-ascii?Q?LQrK5brXxyW5+ckKPTFpxtys/qN+NAS4B69H3HlUHCrJDrYG8Cy7laBwnuI2?=
 =?us-ascii?Q?ZBHypM8NC/riRjkusI6kwxiGJKoQA/4TwwYOCYtP5v31/igp1l6DMJ2nWVmn?=
 =?us-ascii?Q?zocmgnjHwlkYVaGoPebhAzxqHvqPci02+xHSk8iSAHRMhf0YraPwv4qV85Pu?=
 =?us-ascii?Q?LDF8J3/2uqLi4IcvE14pq/5LQSOKPCgkv2/LgOaGQwUYa0Cyz7dZAuyuhjr2?=
 =?us-ascii?Q?WNWiGO4k4XvEuu9TQafOpX7F1a2YM9RByv1+x2zoYzL9ABSmgVYnOzmsmDZQ?=
 =?us-ascii?Q?QlaxTUWxEP8U7d23NU7PE+mB1K8gd4uaLLTAWWuptrqCHY8kvwf8CWalL043?=
 =?us-ascii?Q?S5b9WO87FgSI91CVDOh8Zn3kfkKbyPYmbFtqBjOvNa3rUFTZalV5h/tGjIj9?=
 =?us-ascii?Q?TukqEgUeTqpe3cRzBElB4IfoPNZlx6wx72PXGSg0Xmovii/e+IMcbkS+RBmP?=
 =?us-ascii?Q?FfMU37Oe5mDeFL4a1pYx0HW7bR2MtSsWtCEL9X9HZ7fiTFR8ZJihA4BgKITe?=
 =?us-ascii?Q?o3oWhsiMlunJDEwd1uu/Z0cfANMhlAom0HmjS48gBADdCpuk2uMqyuORDmG7?=
 =?us-ascii?Q?ytNm40mAge6SAXcDvDyiulo3o9PZ58dqyi/W7ZfHK2dlf0RVBTnTGbuPE9Jl?=
 =?us-ascii?Q?+F/QCA1VtKZ/6LrpbUOSEHmXMN+wvKH8+sP9Q7OQVDljD8i5sH8ZnqdJZutI?=
 =?us-ascii?Q?VIksLxgUqF0njPgp43cicBwXLN5Z9O6Imzb5YiqclL/DO9r/1Tthi2yQos+x?=
 =?us-ascii?Q?cJKS8gRiSYLfwhgx9tCquWr1eVjv3g7bYZALgXfw+26kM+GqZ/MQlYG/fsCm?=
 =?us-ascii?Q?skFNF0+8uQ3W6A+T1/ddjAMMS4ruuP3qCbaw8QFt3TlATIY3gd0uN+2G06j9?=
 =?us-ascii?Q?xY1QNt+IoYe/nE+TB7NE7cA103rOUZEbU9JUP4ZlQn/aIfH3+peoZij2Itr7?=
 =?us-ascii?Q?DgivC99JUphwf57nKNARrATEdpLee9T8niB1tfL+55ck6hGfeviDUYAJVTuj?=
 =?us-ascii?Q?vpOX+0NX7FinIVBzsUtivJer9VPgne8ZddVtmSTgjJ732qNTHURmUYdsIltA?=
 =?us-ascii?Q?oMV8SCDNnzGWHq/+gkhjoXHTonXn1XY8we6HdTPKFFbxIjxqpFHJn/AD/c/h?=
 =?us-ascii?Q?f0o1Igy9mgRi+1ivvzlX785HSRKP8X/Sy9xXhgCQgl1X4LHKain8vlCbSWG0?=
 =?us-ascii?Q?Gs1YGH8ZreQjAptZNcHsRq5ftOHq9Zw9R37BzwOszLcose15bnof9RMYOhCx?=
 =?us-ascii?Q?yupmLPpiwlwTgRlELtRff0/2SgvoP+30Lw6DlWoMlSK4jrrDwakntU1Kp/qQ?=
 =?us-ascii?Q?cSU2ROri9UvP6ISHV0i5IfSznYapGJO6NNHZqb99DuCyp5W5Rf8BcR02WVaO?=
 =?us-ascii?Q?0d7tgJyb+r7aCbmuiULVN7fU2mwuAjC7zWMd512T7utGUl6BSqCvDtkuBjj/?=
 =?us-ascii?Q?tt0NwlWZ4qd+R03VH87Rgpt+fvokEthozbdToOcj1KWXp5cUx51NLoyyDpf0?=
 =?us-ascii?Q?Ap88PjEOH1+dd75vfLw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RMdIzv4yqDZLeOYbNkLaI96yZKp9RPz7GrCUXaCuTtYZcA1gV4Op1ewJGRri?=
 =?us-ascii?Q?2tqyJMDkSzn4znyJBTNm8Z/AyLJxcddZJ5IPvJN2QqX6bX9CdTb/hDU1oFxY?=
 =?us-ascii?Q?WKlDr/oTKefSNHBQEDQXJXY5UxLAmYZFp/9OkltaddcyFIoNO5pI9sbRgIkL?=
 =?us-ascii?Q?qo3BJoIXJM/iK/3HE66gExATIc6esHVYgiLmvQJIvlKCWploQEWCrMIyRwzn?=
 =?us-ascii?Q?7RGun6ktMxu3HZUoLiX2oFTxw1hYBtHKE7zK4m+R+6qy5xVC3jV0HngF6rg1?=
 =?us-ascii?Q?/gnXN68f/XjcSQPSKFzDqUe1xtrnPUvWIS0S8+RzcmvH05JXQ3UQQeLDJy8l?=
 =?us-ascii?Q?3WwwMEOSCnyd5+G+5g2OePZL5yTt1ZsXfREcWL+focD+Iz6cJYb8B5kqhxrQ?=
 =?us-ascii?Q?nRQHig5xd8vN5mYTsUVVDoi52u+HE6HS77/oE1fROB9IpwqzJZOQ8/3W4VLn?=
 =?us-ascii?Q?HCC4xFQltW6f9L1B2C7/gY8gYg7B3E68GbFQarSx2TdrrLWjHwt4DoOH3m3R?=
 =?us-ascii?Q?hoWVRmf09ixyNMkrGIOej3mI0RwkKfqhusUAHIoR/PWjPP5hU2JXgEpiI5DY?=
 =?us-ascii?Q?pOfD8X9u0c/Mdv5jYRUwkldAWI7oWIqquu/ucC9AXAziexcY1n/hzsVAMGsH?=
 =?us-ascii?Q?DtTtQT5urumHnvlo2kwaQErS9lZffLLNE9R81yBGAneKrTRqS1scEN1GoT04?=
 =?us-ascii?Q?ltg6DXvMBZlikeWAYYlMYxJFmDB+xfnixqqmOTtabR5UrgAyKKHXI5xzcBtP?=
 =?us-ascii?Q?svCbk1EAULv8xQt4Wpf81QLnRWm9DU9veOnYdCVtHgxoy/4nDgGoDTnDbuaK?=
 =?us-ascii?Q?7AmBREHhIkEjA1StnO3WV0HmMt2ENx/khIf73LZgE4ZBjRbaVWztpOk/aukj?=
 =?us-ascii?Q?9VPyTP6+aMXphugs9KL3lxFe6UTQ2VbGksSLsk7rQ2ypbyHUaRQkbgEq0+Dk?=
 =?us-ascii?Q?rQ8kWUIbeAq6eqr45ebWos3jQ7uG56shCfFecBEhwQ6+0G9hbgvjI9+Y8c/w?=
 =?us-ascii?Q?DUyO/MRww0zSQN08p4Y1T2cttXESw0LggelzoaYpMErbmRm7JyKkLbjbojx3?=
 =?us-ascii?Q?XDZEsxIcIF2mXv9Dyp/Om69g5YATk/UPr2yHKP8aqDilLBL+0GvQyQN6pwin?=
 =?us-ascii?Q?O5nKqmomFjR72uEsPg1YQ5AYHdYya7mO/JmjkTzX2ihjZfDTBYDJDNuB6Lo1?=
 =?us-ascii?Q?VBtpm7c+2J8hokUsJyhccYlI4Zekn8CRf6cKIYxlNEZgF47Ok9qnH6PwJ82C?=
 =?us-ascii?Q?LT0igb6/dBYrENvlJYCzHK+5z7HRoUtqYzNjJan6gltStnOa3ZuLyYf6YDbJ?=
 =?us-ascii?Q?edFYXrnX9ScFUmNliGkL8FDrjOTvT6MhH6e5sUzYnJz5qj0SPNxMcCbmI1lp?=
 =?us-ascii?Q?YGpHm6Q+cbQt3UUqLNzTAe1hdC/4xZVcCGTfYbWes9TMPs56UOlYsQ4NLMm2?=
 =?us-ascii?Q?vNDKezgBFN1vrnabcIwRI6WCgHrYwxKzDTydQ1JxC236Bn+v4NQHjOqDxg4r?=
 =?us-ascii?Q?CF55UvYxns5crppNTdUQzxAeoWoixGEUoA5tx288IKrMSNT2/B739OZYcdB8?=
 =?us-ascii?Q?KnzRKcheLDkp0EsDHPgWdOOd7sguiC6VMBGem9nB/IwXzTMszTKX0lEBKcyh?=
 =?us-ascii?Q?GCv62VWsmLuMDycWvZaX3Kb8iPOZEz9qznEI/bU1iCb9NUMegCGL/3tXzo1u?=
 =?us-ascii?Q?/ZbO8J3qiHs3DBe+EvFB0kLfvdKXN8TDrwEMBe9g3xzoDPgp3yzBpRJhFyWp?=
 =?us-ascii?Q?abxYbIiLEb0ba6b7+wGpBSKkG7RsQ2A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47fe888e-e727-4385-7dea-08de64bc898d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:43:25.9016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AZZioVkVvFU2phiNBlHKI5/PMNppvukp7b2NWBQJf7pWPD48ZbdtCuHlk5XDgtw7TI/JkiWreKP+YYKatmBOt+guj85o+1+9hMSP79Ag6x8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770299011; x=1801835011;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AYeJ+T8x51PtDnhmjECl6NgKdnsTUzPwbWv6F7pImTs=;
 b=VsnYykoPu1j62T5nZIZmaysu66bZSn0DoYfKrqE4qCiQ0xHeDX+kKGGv
 wx+GoRPstavobbGupepTZeZmpbSDj1/oqX7DskDe0IccK/viKRPKK0dMM
 B0CFvTmmFKoXdrViM7nnavUlONrC6dNwrD0UsmC6NasmZKqrCcG9fLXH5
 MwH8UpVYKi/eD4JHAl/PgweYuZYz/h7DyEk/ODNmTTzCS1xo6dwKtuaGA
 zMz71BksSTsn/Wadc6N8NIFavjqEFUFT5lpbtzAyArOyv/WSuFi2oN45b
 7tVskyrbSkWx7/ZM0o5SCSPCapKchIKhisErJiCEQPfQobbOLXpDP6dTa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VsnYykoP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: fix race condition in TX
 timestamp ring cleanup
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kmta1236@gmail.com,m:tony.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:paul.greenwalt@intel.com,m:aleksandr.loktionov@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 063B5F375F
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 11:43:27AM +0900, Keita Morisaki wrote:
> Fix a race condition between ice_free_tx_tstamp_ring() and ice_tx_map()
> that can cause a NULL pointer dereference.
> 
> ice_free_tx_tstamp_ring currently clears the ICE_TX_FLAGS_TXTIME flag
> after NULLing the tstamp_ring. This could allow a concurrent ice_tx_map
> call on another CPU to dereference the tstamp_ring, which could lead to
> a NULL pointer dereference.
> 
>   CPU A:ice_free_tx_tstamp_ring() | CPU B:ice_tx_map()
>   --------------------------------|---------------------------------
>   tx_ring->tstamp_ring = NULL     |
>                                   | ice_is_txtime_cfg() -> true
>                                   | tstamp_ring = tx_ring->tstamp_ring
>                                   | tstamp_ring->count  // NULL deref!
>   flags &= ~ICE_TX_FLAGS_TXTIME   |
> 
> Fix by:
> 1. Reordering ice_free_tx_tstamp_ring() to clear the flag before
>    NULLing the pointer, with smp_wmb() to ensure proper ordering.
> 2. Adding smp_rmb() in ice_tx_map() after the flag check to order the
>    flag read before the pointer read, using READ_ONCE() for the
>    pointer, and adding a NULL check as a safety net.
> 3. Converting tx_ring->flags from u8 to DECLARE_BITMAP() and using
>    atomic bitops (set_bit(), clear_bit(), test_bit()) for all flag
>    operations throughout the driver:
>    - ICE_TX_RING_FLAGS_XDP
>    - ICE_TX_RING_FLAGS_VLAN_L2TAG1
>    - ICE_TX_RING_FLAGS_VLAN_L2TAG2
>    - ICE_TX_RING_FLAGS_TXTIME

Hi Keita,

am I reading this right or you only modified flags to be bitmap on Tx side
and Rx is left as-is?

Would be nice to reflect this on Rx side as well, but I know it is out of
the scope for this patch.

Would you like to do a follow-up patch for that which would be sent to
-next tree?

Also your patch should contain the tree you are dedicating your work:
[PATCH net v2] ice: fix race condition in TX timestamp ring cleanup

As for rest of the stuff it makes sense to me, however best if Paul could
give his ack here.

> 
> Fixes: ccde82e909467 ("ice: add E830 Earliest TxTime First Offload support")
> Signed-off-by: Keita Morisaki <kmta1236@gmail.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Changes in v2:
> - Convert tx_ring->flags from u8 to DECLARE_BITMAP() and use atomic
>   bitops (set_bit(), clear_bit(), test_bit()) for all flag operations
>   instead of WRITE_ONCE() for flag updates
> - Rename flags from ICE_TX_FLAGS_RING_* to ICE_TX_RING_FLAGS_* to
>   distinguish from per-packet flags (ICE_TX_FLAGS_*)
> 
>  drivers/net/ethernet/intel/ice/ice.h         |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 23 ++++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_txrx.h    | 16 +++++++++-----
>  5 files changed, 31 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 00f75d87c73f9..5baeca824cd99 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -753,7 +753,7 @@ static inline bool ice_is_xdp_ena_vsi(struct ice_vsi *vsi)
>  
>  static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
>  {
> -	ring->flags |= ICE_TX_FLAGS_RING_XDP;
> +	set_bit(ICE_TX_RING_FLAGS_XDP, ring->flags);
>  }
>  
>  /**
> @@ -778,7 +778,7 @@ static inline bool ice_is_txtime_ena(const struct ice_tx_ring *ring)
>   */
>  static inline bool ice_is_txtime_cfg(const struct ice_tx_ring *ring)
>  {
> -	return !!(ring->flags & ICE_TX_FLAGS_TXTIME);
> +	return test_bit(ICE_TX_RING_FLAGS_TXTIME, ring->flags);
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index 9fc8681cc58ea..bd74344271f3f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -943,7 +943,7 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
>  		/* if this is not already set it means a VLAN 0 + priority needs
>  		 * to be offloaded
>  		 */
> -		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
> +		if (test_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, tx_ring->flags))
>  			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
>  		else
>  			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index d47af94f31a99..55ff0708d136e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1412,9 +1412,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>  		ring->count = vsi->num_tx_desc;
>  		ring->txq_teid = ICE_INVAL_TEID;
>  		if (dvm_ena)
> -			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
> +			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, ring->flags);
>  		else
> -			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
> +			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG1, ring->flags);
>  		WRITE_ONCE(vsi->tx_rings[i], ring);
>  	}
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index ad76768a42323..564e4e33ecbc3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -190,9 +190,10 @@ void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring)
>  void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring)
>  {
>  	ice_free_tstamp_ring(tx_ring);
> +	clear_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);
> +	smp_wmb();	/* order flag clear before pointer NULL */
>  	kfree_rcu(tx_ring->tstamp_ring, rcu);
> -	tx_ring->tstamp_ring = NULL;
> -	tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
> +	WRITE_ONCE(tx_ring->tstamp_ring, NULL);
>  }
>  
>  /**
> @@ -405,7 +406,7 @@ static int ice_alloc_tstamp_ring(struct ice_tx_ring *tx_ring)
>  	tx_ring->tstamp_ring = tstamp_ring;
>  	tstamp_ring->desc = NULL;
>  	tstamp_ring->count = ice_calc_ts_ring_count(tx_ring);
> -	tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
> +	set_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);
>  	return 0;
>  }
>  
> @@ -1519,13 +1520,20 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>  		return;
>  
>  	if (ice_is_txtime_cfg(tx_ring)) {
> -		struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
> -		u32 tstamp_count = tstamp_ring->count;
> -		u32 j = tstamp_ring->next_to_use;
> +		struct ice_tstamp_ring *tstamp_ring;
> +		u32 tstamp_count, j;
>  		struct ice_ts_desc *ts_desc;
>  		struct timespec64 ts;
>  		u32 tstamp;
>  
> +		smp_rmb();	/* order flag read before pointer read */
> +		tstamp_ring = READ_ONCE(tx_ring->tstamp_ring);
> +		if (unlikely(!tstamp_ring))
> +			goto ring_kick;
> +
> +		tstamp_count = tstamp_ring->count;
> +		j = tstamp_ring->next_to_use;
> +
>  		ts = ktime_to_timespec64(first->skb->tstamp);
>  		tstamp = ts.tv_nsec >> ICE_TXTIME_CTX_RESOLUTION_128NS;
>  
> @@ -1553,6 +1561,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>  		tstamp_ring->next_to_use = j;
>  		writel_relaxed(j, tstamp_ring->tail);
>  	} else {
> +ring_kick:
>  		writel_relaxed(i, tx_ring->tail);
>  	}
>  	return;
> @@ -1812,7 +1821,7 @@ ice_tx_prepare_vlan_flags(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first)
>  	 */
>  	if (skb_vlan_tag_present(skb)) {
>  		first->vid = skb_vlan_tag_get(skb);
> -		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
> +		if (test_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, tx_ring->flags))
>  			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
>  		else
>  			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index e440c55d9e9f0..d35ffdc3dc84d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -181,6 +181,14 @@ enum ice_rx_dtype {
>  	ICE_RX_DTYPE_SPLIT_ALWAYS	= 2,
>  };
>  
> +enum ice_tx_ring_flags {
> +	ICE_TX_RING_FLAGS_XDP,
> +	ICE_TX_RING_FLAGS_VLAN_L2TAG1,
> +	ICE_TX_RING_FLAGS_VLAN_L2TAG2,
> +	ICE_TX_RING_FLAGS_TXTIME,
> +	ICE_TX_RING_FLAGS_NBITS,
> +};
> +
>  struct ice_pkt_ctx {
>  	u64 cached_phctime;
>  	__be16 vlan_proto;
> @@ -333,11 +341,7 @@ struct ice_tx_ring {
>  	u32 txq_teid;			/* Added Tx queue TEID */
>  	/* CL4 - 4th cacheline starts here */
>  	struct ice_tstamp_ring *tstamp_ring;
> -#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> -#define ICE_TX_FLAGS_TXTIME		BIT(3)
> -	u8 flags;
> +	DECLARE_BITMAP(flags, ICE_TX_RING_FLAGS_NBITS);
>  	u8 dcb_tc;			/* Traffic class of ring */
>  	u16 quanta_prof_id;
>  } ____cacheline_internodealigned_in_smp;
> @@ -349,7 +353,7 @@ static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
>  
>  static inline bool ice_ring_is_xdp(struct ice_tx_ring *ring)
>  {
> -	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
> +	return test_bit(ICE_TX_RING_FLAGS_XDP, ring->flags);
>  }
>  
>  enum ice_container_type {
> 
> base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
> -- 
> 2.34.1
> 
