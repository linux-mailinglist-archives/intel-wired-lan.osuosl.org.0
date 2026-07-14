Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id odOIH8I0Vmqm1QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 15:08:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00933754DD6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 15:08:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=IAv4tvSH;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90BA1811ED;
	Tue, 14 Jul 2026 13:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MDOV_vPfu99u; Tue, 14 Jul 2026 13:08:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02922811F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784034493;
	bh=X1qnOqyHnPwjwbfjnrwWXVcuqEf9SsqXMNrQ3e88yCc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IAv4tvSHZTlGMc6MhTqi0q/774AMuImu3wxTUbdIl2gDvS9+kuHBS14GpZkwPtzDX
	 u3ZF23n8HcK0dhz1Nh0+h5AmpKqsEc9onl4Cp/8Kn3UZYmV40U/hdCsRkNTx0VqKqq
	 NpZPg6T/8rgue8JIMKgTbHuouyBPs8b/VrHvtkTkxSZLVM2oSdyR/UTigEpYlGmG5h
	 bFnsc7+Yx/GPiR1M8VY4tUX9+pA+mmE8XuhiGES3ipRgAiYFLrBgCK2WCfaMGearp6
	 Y0KrSMo0scommV1RKPYufXGEL7b0usX1l5GD3scmyHp5ubwwabF3QAyjQokwUEwb6c
	 AaTsOZSCOppQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02922811F2;
	Tue, 14 Jul 2026 13:08:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 996DE96C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 13:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B386404C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 13:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MCeUvpbtTe8p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 13:08:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D29DB40081
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D29DB40081
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D29DB40081
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 13:08:09 +0000 (UTC)
X-CSE-ConnectionGUID: duM60/G3T8yZ0Rz1yuQsYQ==
X-CSE-MsgGUID: Z3haqSdZQeGdNx+/q51PrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88476444"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88476444"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 06:08:09 -0700
X-CSE-ConnectionGUID: sTlgSBVtRpiiVHUPZLJvYw==
X-CSE-MsgGUID: GyJDug1tTdKVFsdrkygr6A==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 06:08:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 06:08:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 06:08:08 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 06:08:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cpvWDvzFqx+HnpI4XfRo4aP0LWYciNErTGCicYP2sml7mgqulT4NOMYeD5JbmLsIx923oRFW1/uLHK7MvSCmvWH3YuhXwON3XqYgxLRq4vuMH4/oMzxjW2cchqABIDsmDnkZzwnBXwUqS9oYeboulw/FHJ2WfPRKbItZVlYTAG5PlXZfUCOmH4dyhm9sOcX2th/vG0rIuendXNK1MafHjwxE3KN/MPhLi+4qV6UokSQf/tUd4Tlj33W9qCZGt0rSh4YqYHUF2YV0BhQe3xkjaqs0jxd9EWzGL3vj6TdMgBOQ5miEzBQ9CbL60oPrldLlumsEWJB78RbQcR+cxnuJow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1qnOqyHnPwjwbfjnrwWXVcuqEf9SsqXMNrQ3e88yCc=;
 b=Y6sJq16+nTUVU/E7WCDWBykbMCUQyIjI6tVHmEbkAr0wskL2Hgkjd7L77tgTwMf41AmtMJnYpyE2JgW+re0+NpewKxrXefO3ElHniiYtIeYNallP6su1XLsCXCsuqcGi4K/ZbWogR69q6hxIr8IVLySPi2odZ2YTmCBcbG5uXHKSFdp0yZkw63FCUqkEpODoORLEJC9mxQIoc1nz0rFP4bW/jAgINn4Q4gwgPx7KZgKgieFuzQKJbKTUxhMks1MEbJz6ld7uyEXSn6dxUMdtZJrBA5l9fzDfw/8TOjZzrNYS1tPMeHg8eEQJxQiXCTeYefa6pDRbLoj3pm5G81gHjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB7798.namprd11.prod.outlook.com (2603:10b6:930:77::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.223.10; Tue, 14 Jul 2026 13:08:05 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.21.0223.008; Tue, 14 Jul 2026
 13:08:05 +0000
Date: Tue, 14 Jul 2026 15:07:58 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Chenguang Zhao <chenguang.zhao@linux.dev>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Chenguang Zhao <zhaochenguang@kylinos.cn>
Message-ID: <alY0rvRCpcC9zhBP@boxer>
References: <20260714025112.284724-1-chenguang.zhao@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260714025112.284724-1-chenguang.zhao@linux.dev>
X-ClientProxiedBy: VIUP296CA0163.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:35d::12) To IA1PR11MB6097.namprd11.prod.outlook.com
 (2603:10b6:208:3d7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB7798:EE_
X-MS-Office365-Filtering-Correlation-Id: 06025057-ad35-451f-2fa3-08dee1a8f0e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: wiFZpGYB2KnUqfHAWRX6sisSqlN8x5xZdo0poQRbjzR6tt04ndKTVJY4iZwnnFg2243tOalWw2IpBFpiv8jX94Fyy7oPyTFOXbJ3MbIYwsfeL/HV0geIZaeonqBztJP0hupwgbiwiTFLfiti7XLikqUdubEe06WZt0OjgyO52e4Vj4wdw0lOk4zraXOYD9y/JB20LoRgnmUZBsbjCLKpfeXBkFQlUvqev0lA+lcU4imjqMzM/1WOdStas4sgOsUb32xDuwUdl9RR314drGClaCPH/tFCi0aTULe7BkK+0ochXYLdKh/ES5i4EjS3WG30izm+yniEAqzZs1I0yRcjEklb21StfqRH4rw6llrP8EBs5ZSqgv9hH5YeXZxWoUekOks5ulFHBfXAJ07n9WdrKOvG1PfBDlHTRRW7BlEhHdRvsGbQTdGy6SJiYcnULGImvmAI3T9VFv6NXM7XNerKFz8pHeZ9bXgLKvh9yLMzW4VauudIAZ+7wnKpF2hOXfEyOKf59mMm300zcWe0gOW6xq0S4Yr4HsuZtpGzWrztyHlhxANWDU/mx/4Uukak6kajYDBv+5yjMnAQEChZOHc7Ykom6WIWgcIzCmFf3IftqzQln714t7qppeCVbxmWwwMKrmz4GCsybN0e7aiZd/tNLhKMZAZQasJ4pNZXIfPpPhA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dDOWPcnomPEjInPZmV+K38YN3L2Q+HMRai3NwExGK7TUqJl+v7gNKSpV70Km?=
 =?us-ascii?Q?cUvMfPV2Ztms9Ozg9ASa9xByff5BHZ7HEfDCKq5CcdL4pacu4BX5P1icaPo0?=
 =?us-ascii?Q?bZjUYme8JcAsT3v8IJruCPeaPjp5mdpfwPS17n7WRKbDFiWVJAJiA3RLb9w5?=
 =?us-ascii?Q?2rQuyyrtTMOVydS/DNomEoJXE20fDmjshmEaea9pmWfBjzGoRvJhrievQEPN?=
 =?us-ascii?Q?A0cEhPUWgrdBcriZ8GdDZYl+P7M5JaHwowehLkmAY/D0k7aiDpw+wmv/pXLt?=
 =?us-ascii?Q?iyygiF5eqZkKbbO1mn05kcsELejKNiPj3HyFeXhemy14X0wqSiyo/BVXtWhE?=
 =?us-ascii?Q?js85Bgc/IQFP0ZQx13X7Uym0AcUR5p4LENPP4E4xfIoxe7bIUiN29wnxXz1Y?=
 =?us-ascii?Q?rN+kkMsvhpyKQiOSs3mnlcFpCy3QDcKRTJnVz9HCsV0/9yL/jP7v4D9Dk4tg?=
 =?us-ascii?Q?sS0tp+elacUROepzojffleKC9wgFGdGKQqZRTPh340UIY0fWIX1bxiuVmG1y?=
 =?us-ascii?Q?Cei6RUEu3EitQtTpK2TsyMEFYb4kZgo+RGALz0YF9FgKNfHJSfCM4SHXBks6?=
 =?us-ascii?Q?jUaP8WFh1gkJOfFh+C9sFchUJ6BATPWSCPQbRkvHa47hwI4RROMcy3nfen2u?=
 =?us-ascii?Q?jzMrWoFgYECTMjdeMAEewJmFPHlXDzjRYk+p6bUEXY+Gc9O1bINRSzwysK32?=
 =?us-ascii?Q?R8cbhHaga+oVOmoai/KTipM7tDo2a+Wtv58hr9r/YmPoFG4mZIaZGjLYdUse?=
 =?us-ascii?Q?IPc74mw/s1T3iFtZXFMSkwoXjbxNOnUZSI7yWJDNg6SZNGFmiS1hN+/DeoaO?=
 =?us-ascii?Q?GQUSBk/Ep6vdv3y5XBu1PrS3bHL3SACR5kwxWv2sn8DC8Kg4ROpji8WtzWLk?=
 =?us-ascii?Q?a8vD7hzFC0vuXy5m+QxCouMZzqMNvfzknbAqEVioZfjw1f0JCQ84N8iADSdv?=
 =?us-ascii?Q?ZujXbEF4TnBKetqBd1lfeH6bxzZU7xX83byHbONqsQ4O1qVJj3wt9jh/JFXY?=
 =?us-ascii?Q?1UcYfSp3HORtJZO1c4Uzm0AtSkd70yVa62spcRJi5haOFUwPSdh+3/w0NXGF?=
 =?us-ascii?Q?WLqxSjAdfZyhV0LCnVt8Zwmh5vwhpwjPPfmNVZ2h+Z4f3D3UnF9v55YLBvKN?=
 =?us-ascii?Q?t9y0Wizc2J5XtonmFQEZYTCgWhmtqJvx1ooDInZ1F2MktWGoSeuYwA1aBRuI?=
 =?us-ascii?Q?bC3Yo6UbFZfrc5I+lps4ZpQ0NsWzyJOw1su/i9cEi2jGeYQipvxE+1hOFm3o?=
 =?us-ascii?Q?rBJze2cNUZzLRMw2b6Jvc5h5Pnvumjo54iC6bihVN717gAEowyLRU9mDR5ut?=
 =?us-ascii?Q?i+V6ezcgCkj69puLlIFYSTVYI4sDQqSv5DAH7q3XyYLQsuoO1WtjC7/KQODn?=
 =?us-ascii?Q?3dyMaiXd3ekDoiJjNgTmcekTpUNILI7hij5PXdjtw+tWJkw9pAk3clQgtt9j?=
 =?us-ascii?Q?yQEJ/C5/4MSA6OnxBHKYEOq2s+V0PzzYir17abLPvikfXr+1SWM5AD6UQvJn?=
 =?us-ascii?Q?74Ojj2e7WQhy3eSiqsTDXZmxxVT8oK8dQBr61dFF+E7M21LRkbaE6bZxTVjv?=
 =?us-ascii?Q?iVTZ1sHbgBoYdPKw5yJUYxP+TeZufO0jEuJJifp0QRDOPTahDl6/yVSz/k6O?=
 =?us-ascii?Q?84wGBuewLYwFYJXDF5XZZm8+SR9qGMclOGRDWHwjUh6I+82HDSIIpKr/FlGf?=
 =?us-ascii?Q?nKObvGYzc3Ug9kasRygZJB8oG3YKZqSZKbEwXdyW+AyQOPFb2hQs2qygqNyj?=
 =?us-ascii?Q?+yckjEXvJwP58BCljCaCymCLptP6lP8=3D?=
X-Exchange-RoutingPolicyChecked: eUZ3rEOYxCVLJb4ikOQNUXUxKjtHnG65W9jY1e+IK2JHHmkinPc5fgSHE1gqV2mGojjQbaFzbG44wUPfy/Vx7Y9LiY9UtdFUecZbwclfrP90RD49PYpzyAJ+adaWRldgrXgl9+tO/YLg4+tz91+T+IJtQH0psxKAFdFo/HgFW2EEKF04fpm0Wac3UPEBcj4mfbQPDBxXqtgCmlowdraVHmjGZe48S68S2TFY23Z/k8A8Yk22KQ7mswnqHiDFq4Zgx9FJ6IvKCdo0pofAsDZckFcaWRgdqmY0xEwZpJwvSPxa7Nt4DrUO1zg4UsgVUytfTYzhYLeFdQAmk26xEbQEgw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 06025057-ad35-451f-2fa3-08dee1a8f0e5
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6097.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 13:08:05.2194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y8pJCwcj81pVjGENvAG9Zh8Qhq9lxqhflojRXc8EiJQnF3QDaE/p0H4hI16RECTziGjZ791nL08VjNPk0mTpgoWJFCn4NdHPSiPX34F65iQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7798
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784034490; x=1815570490;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bSG0zxE2pTVgCMi8LhHe09lqBJr3bPGZu0EEbNUgnwI=;
 b=fJaab9yiO/2GPbU8JaplG6v1MDqCLbACoUaYvwCfiySVCz0wAJydTTqt
 8oVegSxO66Mo97s7S3ZdqYUQv8i0vjwwZzLW+IE44gZ/t0OBxyOd8TijL
 37KZdtaNL2hcAJH5PzvnystUgCsiMYIXSHsngoNDZGbCctJZGnmy8XqBT
 78YbeDYJ4I6DSyPH5MDb71S7bIcI6HK8a2xIUYQJbc8AzUIzwSWLHhy65
 Sgl3xjbYb5yyDipvMW9CWFLc6UOIJ+V54sLQTqpqBvGjlU8VMZZ6Zh2iU
 QXbf5Zmx77MO7izp2BFalv0yggTvm5N6/RvhBfxbCZFnZgYZbYek2whHz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fJaab9yi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: xsk: fix multi-buffer
 XDP_PASS skb construction
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chenguang.zhao@linux.dev,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:zhaochenguang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim,intel.com:from_mime,kylinos.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00933754DD6

On Tue, Jul 14, 2026 at 10:51:12AM +0800, Chenguang Zhao wrote:
> From: Chenguang Zhao <zhaochenguang@kylinos.cn>
> 
> When AF_XDP ZC receives a multi-buffer frame and the XDP program
> returns XDP_PASS, i40e_construct_skb_zc() copies frags into a new
> skb. The copy used skb_frag_page() as the memcpy source (page
> metadata instead of packet data) and passed a virtual address to
> __skb_fill_page_desc_noacc(), which expects a struct page *.
> 
> Use skb_frag_address() for the copy, attach frags with
> skb_add_rx_frag() so len/data_len/truesize are updated, and on
> dev_alloc_page() failure free the skb via the shared out path so
> xsk_buff_free() still runs and previously attached pages are
> released by kfree_skb.
> 
> Fixes: 1c9ba9c14658 ("i40e: xsk: add RX multi-buffer support")
> Signed-off-by: Chenguang Zhao <zhaochenguang@kylinos.cn>
> ---
>  - Fix memcpy source: use skb_frag_address() instead of skb_frag_page(),
>    which was copying page metadata rather than packet data.
> 
>  - Fix frag attachment: pass the allocated struct page * to the skb frag
>    helper instead of the page virtual address.
> 
>  - Use skb_add_rx_frag() so skb->len, data_len and truesize are updated
>    when attaching copied frags.
> 
>  - On mid-loop dev_alloc_page() failure, go through the shared out path
>    so previously attached pages are released via kfree_skb and
>    xsk_buff_free() is still called.

Hi!

I assume this is a fix, so you should include your target tree in patch
subject (net) plus Fixes: tag.

However, could you take a look if we could use xdp_build_skb_from_zc() and
wipe out i40e_construct_skb_zc() altogether?

> 
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 9f47388eaba5..a4247710c85b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -318,22 +318,19 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
>  		goto out;
>  
>  	for (int i = 0; i < nr_frags; i++) {
> -		struct skb_shared_info *skinfo = skb_shinfo(skb);
>  		skb_frag_t *frag = &sinfo->frags[i];
> +		unsigned int frag_size = skb_frag_size(frag);
>  		struct page *page;
> -		void *addr;
>  
>  		page = dev_alloc_page();
>  		if (!page) {
>  			dev_kfree_skb(skb);
> -			return NULL;
> +			skb = NULL;
> +			goto out;
>  		}
> -		addr = page_to_virt(page);
>  
> -		memcpy(addr, skb_frag_page(frag), skb_frag_size(frag));
> -
> -		__skb_fill_page_desc_noacc(skinfo, skinfo->nr_frags++,
> -					   addr, 0, skb_frag_size(frag));
> +		memcpy(page_to_virt(page), skb_frag_address(frag), frag_size);
> +		skb_add_rx_frag(skb, i, page, 0, frag_size, PAGE_SIZE);
>  	}
>  
>  out:
> -- 
> 2.25.1
> 
> 
