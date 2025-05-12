Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF570AB38AF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 15:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C8C540913;
	Mon, 12 May 2025 13:22:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_s2O2wjD2TO; Mon, 12 May 2025 13:22:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73A3E40939
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747056176;
	bh=ulAs7s2Hq8GIKCICRUSDIeeUQDLzBQHlzJKh8FR2yr8=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QNk2XsGiEOgGQPoqUMQOJUlswTulG72ycDulRvr03Qi0gvk0eASImGcMVvR1loB8W
	 HkM0c9DVGR+Yma7KsnOcvrTDSgxvRs5UsFUG/1/NdWuS612hmzQN9MC/Z7jh02FHYc
	 QBv+FRxTpDbJfTG9491u+z3RSKQVM9owtXvOEuE40djWuS/Y1MlEkAoP8aAA6W2uHF
	 u+wI93Gy7ql76PveNCqf1oHtAMcWN6SlNKljS2B1iuCNnS1j8yyerGxFphJqRTxocQ
	 iL1zJHti812YDlQTxVLQrkQKgQfJM4Rcmj81oRpjybIl9wKiClgjfoSIx0tIA0IKt9
	 DdTlZ7ib6dKFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73A3E40939;
	Mon, 12 May 2025 13:22:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 692F617D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 13:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65EBF81465
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 13:22:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RBszLq8tP8fJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 13:22:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 62BA6812D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62BA6812D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62BA6812D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 13:22:53 +0000 (UTC)
X-CSE-ConnectionGUID: ZTcFZeIbSGa8AybbFGTnGQ==
X-CSE-MsgGUID: 0JHC9glkSCOw+cxJsboXzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="71363797"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="71363797"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 06:22:52 -0700
X-CSE-ConnectionGUID: 7d2PxyiJSQaVGmhBITJ27A==
X-CSE-MsgGUID: cVeKd9M3TQ6XvyUGjbyy1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137834945"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 06:22:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 06:22:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 06:22:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 06:22:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HuwzlvNOGgOMU3Qmo2JNsMUkcB6lyY7yacuR078WXeP8fAM3D6EHGRclP0bD3TUnSsKVf78qqPum0neW+OkDg9XdTIGA/WIw2D7t+oitG0l2E8G6h7vjMmZSWH9cgXW8pQdNl9Pavj4gYWmA90YqBeV6kFbDfGZAIZkReeq02f5Iv5F7DuWQBmpF596R3znZaj5aY1EaJEUx9xIsUEd+MaHcAn3BO7TBLhSPOvYXrckA9leRpFmaEz8oSWX8A+aJBhmCST+W+MBrt21HuoKKlZ4Zxl8P5a+1It3gjXhvomDg5U55HsCQek5Ax7BuZC5K4V0BGBUnx7N8KbbWKLJ+Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ulAs7s2Hq8GIKCICRUSDIeeUQDLzBQHlzJKh8FR2yr8=;
 b=K3S+Fxwd3JB9Log6acuePWHECNfvjhDo0DtmR4m/HNXbQwxxufgw+PLbDpg39VcWfmUoQQSoUhtyy1sFMFtKAYtwHTqL7qEhMJsv54IOmGaWZ/Adg+tjKy1puCrfqvpo7LUFW3ue12NUAFWnBxW/f7lxVjr4xs1Ne7Wn7Q34an31N0fPb+xybhP51Gv5w3ibLupSO2c3YlWriWPmwGbhbmxU2yQkcGZe+PlxnJScGWunf+zZ56wrGA1QasyhU2XBLiHmcyKrUCcZHSsT3BlZsRMzEd4ra810nGhGKiWu+pfSKuZExz/XIfPAxWnk/TYRhY7oNhtk6Q261InQu1YI3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by LV8PR11MB8582.namprd11.prod.outlook.com (2603:10b6:408:1f7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Mon, 12 May
 2025 13:22:12 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 13:22:11 +0000
Date: Mon, 12 May 2025 15:21:58 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <aCH19kCiDI0GUs8s@soc-5CG4396X81.clients.intel.com>
References: <20250509134319.66631-1-larysa.zaremba@intel.com>
 <20250512124906.GA1417107@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250512124906.GA1417107@horms.kernel.org>
X-ClientProxiedBy: PR0P264CA0062.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::26) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|LV8PR11MB8582:EE_
X-MS-Office365-Filtering-Correlation-Id: b87d16db-ca35-4f99-8361-08dd915800e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VH/3jUkuAVGY6d+pl72lp1mbtZsTO/syprBrsRB+j/xXixSKPgwUYGOjk9z6?=
 =?us-ascii?Q?AFleSxcmfKTqTBJmnJRkvGnvIvDNK8wl104HoeFeQxLidayTzKHc4rjfH98O?=
 =?us-ascii?Q?J9EDFO1hbxH54m9DFUlW/w4wCghRfKvnBQIwuCk7aeHI0257NEWIZajQTe3d?=
 =?us-ascii?Q?qm8i2VBbJW85Mxj1v8KgJxIlThpF5Pw2Lo+rmDElYRvksfbc2VCtv8ANStb7?=
 =?us-ascii?Q?P6/W9KwR6TnasxU0NSsb6MKLXHE3UIACrs6uMtF+4dPxbVYLh7M3xteML17m?=
 =?us-ascii?Q?r72ocFjzkBJrVZHxpnNTcCAQ69AeZYWnT11A+ijgXUFLkrRk3OZIE8U+zjB8?=
 =?us-ascii?Q?JNqlhIurH4MOz/wDw3aL7TkzEviu8N0ARZpS+M47vPGwuByFrrhkxwYmOZRu?=
 =?us-ascii?Q?HbYNmH/tSS8d8GFDaER90Q38Pa52aZVdbvIYow+Y33Gh0OTcsbyNjBA3JWBc?=
 =?us-ascii?Q?ce4WO/Y9S86qsp2eEZ0jd69bE5yGZdx4B53xeGpGy2xoGFwNPE9xcZhGRKPH?=
 =?us-ascii?Q?409Dp6FAbFmyojL4xgpcwn6DVM2VpQHVuL5pS3SwOsM+aiWNJPjNReNNjHjF?=
 =?us-ascii?Q?NBEcGjBOH8eOexqAkHa3/yejxq9Hnfq4q58ZaiEzt3mY5IWssUSoSDx4wqAu?=
 =?us-ascii?Q?A2ZRBGzl7pGsHJd1MhueZvkB8S4AuX1loI73qfjO2hCCYe/Qq+ywXN8+/PVc?=
 =?us-ascii?Q?XS74IUzw+X6A+4tv9mIkkMo9BzguAijZ8yvuMABoB+KiDi/sZN9R4mInpOLO?=
 =?us-ascii?Q?a2g4qtA6Cm4DO1a4ZxUJCiAU4sFc/ovqrsAR+ZQXneoTXRXmjDH0Rn5gturc?=
 =?us-ascii?Q?h511HgV47harLLpr7PMEc5QoVaqvcS1Ybt7rd2WPLPhoFsW75Yvnc7Qya/cp?=
 =?us-ascii?Q?dl65L0FHzuiDgVVkUXJQ/AEkzb1BEtXGME+Ka5tdmJlvABLU9KLFnoVBBL14?=
 =?us-ascii?Q?QJQpgay7h0o8nzD8uvmqe5OAseDrF2dY3xbOUeHIh1FtSFu3/PrOwMvLDunU?=
 =?us-ascii?Q?5w5wGRB4qg1im9DgJTRbk4a+XzEbbjyLAv7OUESmGDrtOEjm1qe0IZCH7HZY?=
 =?us-ascii?Q?UDAckKp0xvtoyChV/fe0yweNe9gMnj81fPIlQ6XoHP3WzaowRNQKzwn76bHb?=
 =?us-ascii?Q?qJzSxvTNw2E+/On1Nl7vQ0n9XPrL7IT51hUHYiqoVdo3eTOUSeIQSWYAUKeO?=
 =?us-ascii?Q?zo0tdxJcxYrKYxvpUNa9f+19+08iBihPMZ9JLbdQIiN4ejhp58bjtb0NPyy8?=
 =?us-ascii?Q?QaI5GuSJFNkTc94iZjJ8WKTs5VDw0/ANEBCNZ6wTePJbeEsTSgwHi3VdN3bl?=
 =?us-ascii?Q?CqVjBPz0aXu+hgbjQqecVCxILqp1dUDCsYv0QXX1mfIODyCjyu9GIifm+LR9?=
 =?us-ascii?Q?75ky8JE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?phsgsa2prtPv73yqV4nzFrb8mbYekzTBOUIbA5DGjdoc7AgVe5wUpUBsqzwR?=
 =?us-ascii?Q?0+SEzfSyweY/on6th9k2ft23e0aBo/flkfgd2Q/eu+QL+CxrUcqj9qud+JRA?=
 =?us-ascii?Q?KNnXlAEcYHVBPwiWg9IdtvkdOq1w/jm3azoVjREYbXoWWGqlVIXauN5rcbN0?=
 =?us-ascii?Q?KNW2oSQHI7RgXtxOGYsV30L4pxj4PFea2Mx8q1U3HnoOksZDnSdZ/ESq6kAM?=
 =?us-ascii?Q?GzZ1AwUrmaKzLLrQXmwaV2dHCa2bLnEJNELgRY41M3DwUGxkzot5DF9OUtF5?=
 =?us-ascii?Q?/bOqiOisNafXNDIngsGJL7BXWEFH207Hrv9JaiNHXiGXcA5xyPqTdbf8bUcj?=
 =?us-ascii?Q?qMfGvTXZQalSyUqf9bHxKkBiXfNt6asmqI9SkR/hx1Vi6y1CnIIrV7rGDeP8?=
 =?us-ascii?Q?cxsStJ/G9pr2xG5sE0ST6k0rOPD7a+/Vz8JqPcOMY0Wz+sHj6IcanS4QeFFD?=
 =?us-ascii?Q?NPENI78Fx6fiXdH5WakHrC1JXfvzih9B7C6ME3BOZsrcGKbQ0psy7kxP/w0p?=
 =?us-ascii?Q?EooWqE9ImGUuEaKFv0KEmZqWok1aaWfYkkiWay4THRcnkneKTVkeGFNKg1hG?=
 =?us-ascii?Q?h95Pl/xmeb7v49gWPKjqLYDI8pB1lepsXzSXEjolYOHp6BSLIdE9G2shmH1v?=
 =?us-ascii?Q?znvQu6vnRwuaxuwVWX4EZBq1LKzVz1rL5BiuZOAN6JSr+Qx35cnetNXu9ahO?=
 =?us-ascii?Q?6c5A3Py2JkpEEqtmz2KlZNPiJQ1RD7zf/O/F3FPjJ7NHdehPrfY5/lwUiDEO?=
 =?us-ascii?Q?dhMMy21l0dXuhja4tAjEFNMu4XsuENv7wKlAQLpsujM+h1zGlDK1jTMh6rcN?=
 =?us-ascii?Q?OMQi9uaDYbFJsLscBbqU9x53Nfv368cUYU2042r0kMbMBVNRetUn2uFPPL7G?=
 =?us-ascii?Q?FvXUToXV+HiOmyb1uXavcRzD0JOklQEO3uTWT58OKOZFQQ3n/gymHORFWnMU?=
 =?us-ascii?Q?fCis6UMKFvcvRt2whtKRLYTgDEVDlsRTgpe3NZVCWiZF0yZTfW0eaxPEOvV3?=
 =?us-ascii?Q?z2HaZWBegI7TSCMkctHMPDVBfhYzdpgVyJoAdb8jSatvBOKkynqtTeZNIYB3?=
 =?us-ascii?Q?lAJKLCUZLqK2nvYL24F1Ke8E7IOhV5yr97R2auc8cEvr5Q5ZD7tW0gjZnitu?=
 =?us-ascii?Q?BW47G8sU50IUfAfDR3vptwvsmgGGh8vuPZrfx+/NDLFgQuZL0RjYdfAqe1/7?=
 =?us-ascii?Q?06yb+X4BMqh2yz2MpMBN/dpP32Q3QdLfBSo24fht9xocU2QHRzye/qofnDLg?=
 =?us-ascii?Q?OBNoBVIij/Mk224shgbzMncTkwZMjIcnNJbhb/dlLfd+wMGb/VUHE5OTC5Qa?=
 =?us-ascii?Q?yB6rm87Kt6yPscLJ+NZ3NahxdWfxgAzrovsWMP0jWb5OPdQENw7IBk4NT0V1?=
 =?us-ascii?Q?qaRKnhepqxyIMhN/VMQhmvAkVDAACmDQrgozwNx/wZphvpBI1LilzKzOQL4E?=
 =?us-ascii?Q?QUEQ+6Vr+YZ8GlB/kxk6CtSzr4a7V5J2D72G/KTKz0ZoLEr5scypoNA7KD+j?=
 =?us-ascii?Q?Qn6tzep23FLkegxKW2Rt8Eqbm0dkyf4bBzSh/p/tA+jn85Lp1NpdMz6GkTuW?=
 =?us-ascii?Q?gnwpdCKfhDapmpNLhoDcWKUeTWUxS7QqiPRqzrnuUdK52IUlBie82VIF57K/?=
 =?us-ascii?Q?aoQ6TMV1mhC3HSaNMFM7WmaOBKFMlX1skX5H6iLZGCOjJKxXBGKFJ0Hwe9wH?=
 =?us-ascii?Q?u592jQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b87d16db-ca35-4f99-8361-08dd915800e0
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 13:22:11.6591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x1c5Xr3eaMmbyqZT8vP1pG6EM/5iZJbPOC8xvwjkNjLm3T71cCycjiLC+lV7I41vuO77CQ8SUPlth6x3YWhJO8fSCIiB433NehyP2MnqOY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747056173; x=1778592173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=c5tMMG/67+49haFFi2g3okC7Sud1/nKnVqir2aPoWQ0=;
 b=MFZXZ3cFQfZ1lZvT2bKtr/HtAQpWIufVKR+RyfhY8Fwq1J+1cC+VcuzI
 Yu8g5mvk9MuSRMd8fmCzqaONdVwFwWb3k7w0SYpj7W8iKTn1zALil4mtU
 IxaA0BvaG+ssVpnytxAT6unwCSbCT/4ATkUfLM85P3lt8JMLx7BHRJQ09
 mCDSmDJo3zD/IbfvIB6ylOQnUUy2vowC5Y95R+0F2YSxSAJy8cOmy5zfJ
 eU0JXjKLgMLuz0/+O0gAmYCYxI14zavYSXZS+8mCjAAsv9z8FGMcaALI8
 kXjudXNvRN+oQ7xO/dXVqLynG1Fh1Ys5RnD2hObUK2XPhbS6Li08HNFHI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MFZXZ3cF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/15] Introduce iXD driver
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

On Mon, May 12, 2025 at 01:49:06PM +0100, Simon Horman wrote:
> On Fri, May 09, 2025 at 03:42:57PM +0200, Larysa Zaremba wrote:
> > This patch series adds the iXD driver, which supports the Intel(R)
> > Control Plane PCI Function on Intel E2100 and later IPUs and FNICs.
> > It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
> > exposed by the same card. The reason for the separation is to be able
> > to offload the control plane to the host different from where the data
> > plane is running.
> > 
> > This is the first phase in the release of this driver where we implement the
> > initialization of the core PCI driver. Subsequent phases will implement
> > advanced features like usage of idpf ethernet aux device, link management,
> > NVM update via devlink, switchdev port representors, data and exception path,
> > flow rule programming, etc.
> 
> Hi Larysa,
> 
> I am having a bit of trouble figuring out where to cleanly apply this
> series to. Could you help me out?

Tree did change quite a bit in a short span of time between me fetching and 
sending, sorry for the trouble.

The base commit is 10f540c09cf9 "ice: default to TIME_REF instead of TXCO on 
E825-C". In case you cannot access it, I have pushed the tree to my github.

https://github.com/walking-machine/linux/commits/ixd_phase1_iwl_v3

This version is probably much closer to what would be in dev-queue eventually, 
compared to a properly rebased one. Some patches were pulled out of dev-queue 
because of validation problems, but should be back pretty soon, as far as I 
know. Those patches are the reason why I have an additional fix in the github 
tree.
