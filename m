Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8311CA46EFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 00:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D5E3838DE;
	Wed, 26 Feb 2025 23:02:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iuL-H0-86VZQ; Wed, 26 Feb 2025 23:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4450282136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740610937;
	bh=PoFY6Jm+nOqXWaC2GxXBYrlTULtQBH1C8Q294tver6s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=67Zuj8Uv8mY/Y2glhrRCPfv61NiQjjjHPJ73JYWiP4s4L4mZFnXfrQXpwh7Phan1E
	 +3peclsi7fxVVBQug+9MDUxuiqFKPU6aTN/4+ulbQaf9qb/5EWa39GsHjajx+DYtXi
	 ciCiis8QAfSiJF1Kbad2WI93TP4MTks9h63O5QtHTBAoy9tXHrdb1gNCr1yjA1OdL2
	 zc++AfCtOftVMKkch/2N991qlttogRJ9YedsVebAcnjRqS719rzr39oJaFCyam7p38
	 JQBJmM8XheR7fWB8L9S2y+Up6R3zgahRU/DN7wRYprr9P7r/QZjovL+oD4JZFdCurc
	 PW2nFn4XI2Maw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4450282136;
	Wed, 26 Feb 2025 23:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E9D8D68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 23:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCBB4413B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 23:02:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n8PECgI3zFXV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 23:02:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95B4B412DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95B4B412DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95B4B412DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 23:02:13 +0000 (UTC)
X-CSE-ConnectionGUID: ZxNUixvUSzGYsXJUsji+1A==
X-CSE-MsgGUID: 573a99gCTpufaqtVJXdO6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52118415"
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="52118415"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 15:02:13 -0800
X-CSE-ConnectionGUID: fBia0fjWQ2yvhJXaFluRog==
X-CSE-MsgGUID: sWLdNgTMR56EJd284X00UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="121957344"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2025 15:02:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 15:02:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 15:02:11 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 15:02:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8bfgkd0Ypl+jtiz6BXvg70CSPnRR+rxm1FlSkDjPflWg0xdKJ8Z0hln1hhDf+z/8QxcELngnr8T66hbDE4sDxwBA68+se8SthxAFJeKckCK5L5zaFtTQP9+ZwSa2gb1a1BbsMDIFaf/iotcEGi61VH70/6hbpZ6tWKH3UlbTcEmHo3tEwgbLIXDzXccMdtQunbu4nC/xel7V/znp8bV4rj4grIszB6y46DFvsM3hGUh7EXo4U0YPbFJDERPMrjIiWDdJ6Y/xROOQ7rMc+lQf1t/bJZVqL2brYOZg/5o3D2RsrTbfRxnZtDAX9Te9gQE3Ud485Y5hvV0LJJOdelWCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PoFY6Jm+nOqXWaC2GxXBYrlTULtQBH1C8Q294tver6s=;
 b=teisJl/d0DyGu9jpyvLjXWzTDtEJ+96pKAllikEM8XCsG8zUMft+pWqnJ1ocJoNGVM6iWtDT7k92IlLXUklyb8vs5nf8Vx79UyUgOdnR0372XRYYwcpDX01oB3kM5Uky+htCcD/1I0Eht42yWLWN59SBFF/r8oKiyil1Sbm7WdSAZlmfNKpJYPNm99XWMP7W5ByCOLH8fsNkW2fRz4Gdd+StMdS6pQ72K6srormmo/uMBzXlOYFScPdi7LY/wZg9eAkmiiDsWPXShpyiHjL4et42oxc6RDs81Vx9wBBQy1u/72hKhctDq38sS7Pgvv8qS1AJMvIQZkHDfq8CxyLxGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 23:01:53 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73%7]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 23:01:53 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Leon Romanovsky <leon@kernel.org>
CC: "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>, "jgg@nvidia.com"
 <jgg@nvidia.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support multiple
 consumers
Thread-Index: AQHbh0Lrc4Ejq0Eq70KEJtqLnJXSa7NXpsEAgAEFtbCAAUOYAIAAOIrg
Date: Wed, 26 Feb 2025 23:01:52 +0000
Message-ID: <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
 <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250226185022.GM53094@unreal>
In-Reply-To: <20250226185022.GM53094@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|DS0PR11MB7408:EE_
x-ms-office365-filtering-correlation-id: 327453ce-0a61-4f23-fd70-08dd56b98f5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Z2ZYbTFQV1ZPMDVDcVl2KzV0d1JWNDUveG4rQ2tXYXVBOENTc1NYc1ppWXVh?=
 =?utf-8?B?L1lqd2FQWEZnaFprK2dQQ3lqc01wOFJxSkhVUk03N2RmdHFUamR6MlVVTVZz?=
 =?utf-8?B?UGdyMDMxbTFYbUdBRVYwbEFMcTRCeHBJZHhIdzRydkNzY3JPQlBMMy9NZ2RW?=
 =?utf-8?B?T1R4MW81M09tWlQ4RlFzaGQ4VWd0elpIeEpVMkt4UHhYQ3dtMHphVnQwaTdo?=
 =?utf-8?B?RlM3K2pBRjBXOHpacTd3TVAydFFtU1Q0bmh4NElNd0N1RHFBejJHcmREbkFp?=
 =?utf-8?B?cmZrUXduMVBuSDY4bjMySStJVFFkRzlBNW1rVjMzelVjb2l3TUU1cDBIS1N1?=
 =?utf-8?B?RE55V1VqenV5ZFdNZzZyem5QZ2hMWmRiaFJkaVkrQ1c0SG5obTl3bW44SUNq?=
 =?utf-8?B?TTE2QzdDZkZQUDlDeW5uZDQ5VCtqVkk3bFNPeXIzbk02Ymd6R0ZEQ2xtSUI5?=
 =?utf-8?B?N0RxaHhYelRtQkoyY1NGREpMVXdJQWMzSkdTdEpKQnNFNGF4Z3JSVlFyOHdH?=
 =?utf-8?B?WjNBSG1pcXVZUUt2N3pnb1pML09EdWZENEF1Sko0eEsvTStMZEZMR0tpUGVF?=
 =?utf-8?B?S3Z1V2Y3OVFndkpVV3JxYlJoZ0IxUDVzVTNhNmxVT2MwYTkzOGhwVkFlQlhO?=
 =?utf-8?B?cU1nLzc1WWh6MU12T1FwWVdDTW1PSEpHMVpjV3dncjRjUFJEZzhBejZ1QSsy?=
 =?utf-8?B?Tko2VzYxZENXeTJTcjNacEdPeTdKS0VORkovT21LZFBlUHhJVlExcm42RDh1?=
 =?utf-8?B?R3ZRZjU0RzVVRDhmckVXcWpXeXhDMVo3ZWFmeGxKMXRpSW5pVVhsOHlxTWt6?=
 =?utf-8?B?MGN2SW1mcW1SclQ3cGsxTE9BWVVmTkVyN2I0U09ZN2JuM0JVSlpQSHFRWk40?=
 =?utf-8?B?VEpiazRpV0VPMmo0Rmg0Rmh5ZEF4bVhkcVFNb2dRU3JReHQzNWdqME5JOEcy?=
 =?utf-8?B?N01pVzgwdFh4WnRVR0kzU0tBU255WVdEQjJVUHRlRTZyWFpRUmZhVGhMSE9L?=
 =?utf-8?B?bjNsbWs5bkp3bTFTVDc1QnJGSkEyWTYzdDRVT0ZRRkNuaHpyRHI0WWcweVBq?=
 =?utf-8?B?SkZwNi8xWjVMMGJ3c3h3YXFZWkxjMFluRS9icWZoWWJkUVpwZ0xMYUF5UUFt?=
 =?utf-8?B?a3ZUTXNJd1dEb0owc2diZFBxTHVmVUJoMDRpSWZVS0ZEdGJjRU4zRWtTeFNO?=
 =?utf-8?B?R2Z5d0kvak5uWmFqQzRzUS9vdFFCVEd2NnFkblBJSTFzQitMRGZiK25aRWx3?=
 =?utf-8?B?YTkxaGc0NVllQkczbE1DMzRaa1ErQ0VveVFhVGdDR1dha2lGUVUvZUU0Q1VZ?=
 =?utf-8?B?Z21BNHZjSlZYeGFNaGR4bGZNTTc2TzhIOXhFZ0NpWW81T3JXTFpBV2tmRFlY?=
 =?utf-8?B?cUdtK05HeEd4OEpLc2UyNWlPSkc1MzgwUmhXSktVTXlvaEhnU2RoeHRaWUZH?=
 =?utf-8?B?dXlYTGJXOFhmZDE5N1YwOG1kYUZIa1JxL25wYjRQbklQdTZ3eHFtMnJqV0Vq?=
 =?utf-8?B?Y1hDbGpPbk8rZGhKOVVpVzVqVVNUamZ5N3hjZzhnVVZ4TVBGenRSM1g3ZHlE?=
 =?utf-8?B?dHFIYzk0WUtJS2dLWExrVHRsdXN4d0FWQVB0M2lsUmRzZERjVmE2Ty9JUDlF?=
 =?utf-8?B?WlBjWDBHaE5aM0ZKK0I4R3llYW1aRnpDN1QwNUMvWTc5ZkdhY2t4aU5WQkJv?=
 =?utf-8?B?UzBPNkhBcTM4R2ZlMHIyOWZKMkFCcEswcUtpeDVLVjFIWjk3czg3djZNdElt?=
 =?utf-8?B?WWxaRk5hQ2VPVWs2TWpmd0hyOHRmY1NWUTIySU1NdDJMZy9nMkpkakNvZ3Bn?=
 =?utf-8?B?WCszSXVkQS91QjRpbnhkMmNFa21FK2FaYXFqYkV4cnBpdElVc0ozTkh3d1FD?=
 =?utf-8?B?azhtZVRuTXMvSnZxdmJUNU8rS1J6M0UzM21yZ1NhZWtmQlhpK3RHRFQ2WHBn?=
 =?utf-8?Q?/gCIugSd9J2oBoMOWpAHnkfdmPDjeioj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUNWWFZ6ZTQ3S0M3dDhrNnJMaEgzQlVra3lhbHpNdnZySnJTNm9GN3krZFlh?=
 =?utf-8?B?VytFbkg4T2dpbmJ0WnZGam1xWW1RcWl6QTFJN0JITDJ4U2ZnTk9jcE1waVVH?=
 =?utf-8?B?OEVvRWZCWWk0ODh4ZEwrblpmYlh0ZlhveTMrZ1ErTGd4amU1QkNod3pZeU85?=
 =?utf-8?B?dGlpdnM3eDNHTHdOdEZnRVRGbTRtNDB1Ri9icDFaNVdtOHFrQ2FabWwya2d2?=
 =?utf-8?B?TFhNdkFCa0Z3VUJzQW9JaElwQ0xWaFpIRW54TzJHS2FzclNYUzBaUVIzLzVa?=
 =?utf-8?B?SkozZUQ4a2JscGc4YmEram1ibFlaTHRDRDNGREhKZUwzbUFiUmNqWnoydVNr?=
 =?utf-8?B?ZVhVNkJ5UGVRa01TYVNCREEyUm1VREZFRmUzUUxaMld3MjZGOGZ0Vnh0U0s0?=
 =?utf-8?B?SnVUSlpBVWZ3QnNHcmJuK1BoS0kxWjNkMytHdU5mQ0REV3h6d00xRjcwVm9B?=
 =?utf-8?B?NTFyRkpDaUsvdHB6Rnk5cjk5K0t5V1d2Y0ttNEJBN0hpRjNkQkd5K2hHYzNY?=
 =?utf-8?B?L3hwRXMxNEsxdVByZGw3Z3k5ajAwdFBmWWdaMXovaEphOWVWNXE3VHlSVDhl?=
 =?utf-8?B?Tkt5RVhINXd4M2NjOEdEaDB3ZGZGWUY2ck4vS2g5WFJ5L0JFUjQ0NndScGVw?=
 =?utf-8?B?UjRUKzlHOFBubnJXS1ZoTytWS1VlK0wyTnA2Tm9DdnNDRFF1MU1ZOEt6STkx?=
 =?utf-8?B?SHBjN2oxVHM2LzBGN00zQ3VpdHFONmRJaVZJVTFhMG1NT21zdGpVSmt0anZy?=
 =?utf-8?B?YUQyZkhOWUNVOVVLSzJtdzF4Rzl6WnhIWUYrMG5oVWt6MmdJNW9qaFhDcHZo?=
 =?utf-8?B?cGIyYTNLZVRWSXp0Sy93bFpaRUpqK0FzT1A2Nm5qWGxyd2R6Vm11a2orUUJU?=
 =?utf-8?B?VDdtQ0pLYkZqZVI4ZDdDd0E5R3dPTTR2dDIyQ21mMGJ4c3BON285Q1p1dTFw?=
 =?utf-8?B?V1gzRCtlMDJidHYvTmlTc0Q4MjhFamo3TDRLaHdQa2lqSm9tbU4rSHBsWGE5?=
 =?utf-8?B?cXBOTUdDakdTOW5xQnVhbkZ2TDNMR0s3cUdmby9rMEp0UGlhQUdsYVZ2ZzB5?=
 =?utf-8?B?SFU5ZUo1UXJObDNuMUVTUWNHK1Vlc2I0RmxaV0l3ZTllT3g2bEY2Uk0zejhu?=
 =?utf-8?B?ZC9MVk9YenVVVjFySGV5M0IyN2ZyalVVV2tCQmV4eHBjSEpjUWJyY1hDRnBw?=
 =?utf-8?B?NGdXbVowT3VERDlRTFB0eDk4Wlp0OExUaE5oRGZIU1ZlaVpQaHZqTENiU2kv?=
 =?utf-8?B?SVNUamJuVCsrOFh6MmRiOG56cWJlMndZeEN0NitiN0dqTGpQR3lObjdxUVpI?=
 =?utf-8?B?c21MdXByQkZteUVBMEowL1Y3YkZYVDZpV3dZUHZNWi9mMkdaZWNKTnVVQmVR?=
 =?utf-8?B?N2Y0RlRua05QcXh0c3RBcm9ib01JZlR3K0JtOE51eUFORk9ia24xb0lXNDMx?=
 =?utf-8?B?SHg1aDc3S3BvQ1dmMTdtbVJQRCtJa1JITXB6MWFISXdBRjNGZU9NYWVKYjhz?=
 =?utf-8?B?VE85d3FtQVVUYWlOMTFDajlHTkNBdGJWK0lER1FBczR2anZ0d0NFV2VaeWNt?=
 =?utf-8?B?U2dnWnJqNVljeVVBcVp4c2FiZXorNi9xV3BjUWlaMHFMWVVaNDYwMHRKcHo1?=
 =?utf-8?B?NU9DdjVEblZDUFJEZXVxQ0NIS3R1M05PUFBScGp0VlBTS1Z3WHpoMHpBVmh2?=
 =?utf-8?B?UktITHVYUHVwNDQ5ZVAyWWdsazFsY0N1R2NRamszRG1sWTJtNVJiUit4QXAw?=
 =?utf-8?B?UEl2WnJxTmJEVFA4bmNxK2ttR2NsUVMxUWdLbElSMDVFbEdyMG1rYWZ4dXBF?=
 =?utf-8?B?UXVxMTlON2p5dXBIM09NeUNtRzRLWnBobTBPbzRBNzJtYWJMb1Ztb2dNUGlL?=
 =?utf-8?B?TjNsdVA3NTJiNEJId0ZzVEIweXdVbXpScnBOOHR0Nk5KWTFXekc1SVV1SHFn?=
 =?utf-8?B?S1Y2MjNTTTNJZDJ4TTdIaVVGV2N3WUlBWmIzOWNKU3o3TFdqTmExdFd0WnRP?=
 =?utf-8?B?cVo4YWlJY0ZpK3NvVmp4YTdoNGxUT05nTHRSd1JXOU9QRWFiSmhEZlNiTWJy?=
 =?utf-8?B?OVpUVmRCeG1MVTBQM1FrcE1qYURNU0VZOHFqalNzVzV2VUx4UTVxR0F0S3M4?=
 =?utf-8?Q?SIS17tUd87WFlnNdeY6DuvkLt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 327453ce-0a61-4f23-fd70-08dd56b98f5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 23:01:53.0185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /GHqHgHOlGgCpgqqDkZ8bg0rRKMaKhXCf01DG8jYf3Jhz5lvJ8cdjMfPSsoisUm9tD8UbbcWR//2gMEmcOUA//8XqlFDtvM9oljJ6U7uGbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7408
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740610934; x=1772146934;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PoFY6Jm+nOqXWaC2GxXBYrlTULtQBH1C8Q294tver6s=;
 b=Haaixp1xym2WHyZnK7GFUMXZfjoZc4TMAuT0+Kbql6MqSgHoRY9xwE5F
 HR1NkVT/GxfulYJWGf80NTz7t4cf9haXMm5hnlkMEzKhwYcW5ZsCIn52w
 kYwTjFicHPkGPegb47GBBds1x0K6UXylkr3lHnNQbIbAoh2j7MMubJley
 kVdtM9EHicPM1Xeu+JdpYehIbASFQVIGYItr3Whcp6/l5lS9l+B7KH16k
 WmodOabREVy8oQURNmgYaYNBCmdU+TjHbI/WsG0ZxEmB4H0laaamXZkjP
 8TCYlatIRVtAjKWPZDjWBAAafU6mqupOWmxMs9yhQezhNV5y1+Lm4Hdrg
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Haaixp1x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
 to support multiple consumers
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGVvbiBSb21hbm92c2t5
IDxsZW9uQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMjYsIDIwMjUg
MTA6NTAgQU0NCj4gVG86IEVydG1hbiwgRGF2aWQgTSA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29t
Pg0KPiBDYzogTmlrb2xvdmEsIFRhdHlhbmEgRSA8dGF0eWFuYS5lLm5pa29sb3ZhQGludGVsLmNv
bT47IGpnZ0BudmlkaWEuY29tOw0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsg
bGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmc7DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4g
U3ViamVjdDogUmU6IFtpd2wtbmV4dCB2NCAxLzFdIGlpZGMvaWNlL2lyZG1hOiBVcGRhdGUgSURD
IHRvIHN1cHBvcnQgbXVsdGlwbGUNCj4gY29uc3VtZXJzDQo+IA0KPiBPbiBXZWQsIEZlYiAyNiwg
MjAyNSBhdCAwNTozNjo0NFBNICswMDAwLCBFcnRtYW4sIERhdmlkIE0gd3JvdGU6DQo+ID4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxs
ZW9uQGtlcm5lbC5vcmc+DQo+ID4gPiBTZW50OiBNb25kYXksIEZlYnJ1YXJ5IDI0LCAyMDI1IDEx
OjU2IFBNDQo+ID4gPiBUbzogTmlrb2xvdmEsIFRhdHlhbmEgRSA8dGF0eWFuYS5lLm5pa29sb3Zh
QGludGVsLmNvbT4NCj4gPiA+IENjOiBqZ2dAbnZpZGlhLmNvbTsgaW50ZWwtd2lyZWQtbGFuQGxp
c3RzLm9zdW9zbC5vcmc7IGxpbnV4LQ0KPiA+ID4gcmRtYUB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRl
dkB2Z2VyLmtlcm5lbC5vcmc7IEVydG1hbiwgRGF2aWQgTQ0KPiA+ID4gPGRhdmlkLm0uZXJ0bWFu
QGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbaXdsLW5leHQgdjQgMS8xXSBpaWRjL2lj
ZS9pcmRtYTogVXBkYXRlIElEQyB0byBzdXBwb3J0DQo+IG11bHRpcGxlDQo+ID4gPiBjb25zdW1l
cnMNCj4gPiA+DQo+ID4gPiBPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMTowNDoyOFBNIC0wNjAw
LCBUYXR5YW5hIE5pa29sb3ZhIHdyb3RlOg0KPiA+ID4gPiBGcm9tOiBEYXZlIEVydG1hbiA8ZGF2
aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiA+ID4gPg0KPiA+ID4gPiBUbyBzdXBwb3J0IFJETUEg
Zm9yIEUyMDAwIHByb2R1Y3QsIHRoZSBpZHBmIGRyaXZlciB3aWxsIHVzZSB0aGUgSURDDQo+ID4g
PiA+IGludGVyZmFjZSB3aXRoIHRoZSBpcmRtYSBhdXhpbGlhcnkgZHJpdmVyLCB0aHVzIGJlY29t
aW5nIGEgc2Vjb25kDQo+ID4gPiA+IGNvbnN1bWVyIG9mIGl0LiBUaGlzIHJlcXVpcmVzIHRoZSBJ
REMgYmUgdXBkYXRlZCB0byBzdXBwb3J0IG11bHRpcGxlDQo+ID4gPiA+IGNvbnN1bWVycy4gVGhl
IHVzZSBvZiBleHBvcnRlZCBzeW1ib2xzIG5vIGxvbmdlciBtYWtlcyBzZW5zZQ0KPiBiZWNhdXNl
IGl0DQo+ID4gPiA+IHdpbGwgcmVxdWlyZSBhbGwgY29yZSBkcml2ZXJzIChpY2UvaWRwZikgdGhh
dCBjYW4gaW50ZXJmYWNlIHdpdGggaXJkbWENCj4gPiA+ID4gYXV4aWxpYXJ5IGRyaXZlciB0byBi
ZSBsb2FkZWQgZXZlbiBpZiBoYXJkd2FyZSBpcyBub3QgcHJlc2VudCBmb3IgdGhvc2UNCj4gPiA+
ID4gZHJpdmVycy4NCj4gPiA+DQo+ID4gPiBJbiBhdXhpbGlhcnkgYnVzIHdvcmxkLCB0aGUgY29k
ZSBkcml2ZXJzIChpY2UvaWRwZikgbmVlZCB0byBjcmVhdGVkDQo+ID4gPiBhdXhpbGlhcnkgZGV2
aWNlcyBvbmx5IGlmIHNwZWNpZmljIGRldmljZSBwcmVzZW50LiBUaGF0IGF1eGlsaWFyeSBkZXZp
Y2UNCj4gPiA+IHdpbGwgdHJpZ2dlciB0aGUgbG9hZCBvZiBzcGVjaWZpYyBtb2R1bGUgKGlyZG1h
IGluIG91ciBjYXNlKS4NCj4gPiA+DQo+ID4gPiBFWFBPUlRfU1lNQk9MIHdvbid0IHRyaWdnZXIg
bG9hZCBvZiBpcmRtYSBkcml2ZXIsIGJ1dCB0aGUgb3Bwb3NpdGUgaXMNCj4gPiA+IHRydWUsIGxv
YWQgb2YgaXJkbWEgd2lsbCB0cmlnZ2VyIGxvYWQgb2YgaWNlL2lkcGYgZHJpdmVycyAoZGVwZW5k
cyBvbg0KPiA+ID4gdGhlaXIgZXhwb3J0ZWQgc3ltYm9sKS4NCj4gPiA+DQo+ID4gPiA+DQo+ID4g
PiA+IFRvIGFkZHJlc3MgdGhpcywgaW1wbGVtZW50IGFuIG9wcyBzdHJ1Y3QgdGhhdCB3aWxsIGJl
IHVuaXZlcnNhbCBzZXQgb2YNCj4gPiA+ID4gbmFrZWQgZnVuY3Rpb24gcG9pbnRlcnMgdGhhdCB3
aWxsIGJlIHBvcHVsYXRlZCBieSBlYWNoIGNvcmUgZHJpdmVyIGZvcg0KPiA+ID4gPiB0aGUgaXJk
bWEgYXV4aWxpYXJ5IGRyaXZlciB0byBjYWxsLg0KPiA+ID4NCj4gPiA+IE5vLCB3ZSB3b3JrZWQg
dmVyeSBoYXJkIHRvIG1ha2UgcHJvcGVyIEhXIGRpc2NvdmVyeSBhbmQgZHJpdmVyDQo+IGF1dG9s
b2FkLA0KPiA+ID4gbGV0J3Mgbm90IHJldHVybiBiYWNrLiBGb3Igbm93LCBpdCBpcyBuby1nby4N
Cj4gPg0KPiA+IEhpIExlb24sDQo+ID4NCj4gPiBJIGFtIGEgbGl0dGxlIGNvbmZ1c2VkIGFib3V0
IHdoYXQgdGhlIHByb2JsZW0gaGVyZSBpcy4gIFRoZSBtYWluIGlzc3VlIEkgcHVsbA0KPiA+IGZy
b20geW91ciByZXNwb25zZSBpczogUmVtb3ZpbmcgZXhwb3J0ZWQgc3ltYm9scyB3aWxsIHN0b3Ag
aWNlL2lkcGYgZnJvbQ0KPiA+IGF1dG9sb2FkaW5nIHdoZW4gaXJkbWEgbG9hZHMuICBJcyB0aGlz
IGNvcnJlY3Qgb3IgZGlkIEkgbWlzcyB5b3VyIHBvaW50Pw0KPiANCj4gSXQgaXMgb25lIG9mIHRo
ZSBtYWluIHBvaW50cy4NCj4gDQo+ID4NCj4gPiBCdXQsIGlmIHRoZXJlIGlzIGFuIGljZSBvciBp
ZHBmIHN1cHBvcnRlZCBkZXZpY2UgcHJlc2VudCBpbiB0aGUgc3lzdGVtLCB0aGUNCj4gPiBhcHBy
b3ByaWF0ZSBkcml2ZXIgd2lsbCBoYXZlIGFscmVhZHkgYmVlbiBsb2FkZWQgYW55d2F5IChhbmQg
Z29uZQ0KPiB0aHJvdWdoIGl0cw0KPiA+IHByb2JlIGZsb3cgdG8gY3JlYXRlIGF1eGlsaWFyeSBk
ZXZpY2VzKS4gIElmIGl0IGlzIG5vdCBsb2FkZWQsIHRoZW4gdGhlIHN5c3RlbQ0KPiBvd25lcg0K
PiA+IGhhcyBlaXRoZXIgdW5sb2FkZWQgaXQgbWFudWFsbHkgb3IgYmxhY2tsaXN0ZWQgaXQuICBU
aGlzIHdvdWxkIG5vdCBjYXVzZSBhbg0KPiBpc3N1ZQ0KPiA+IGFueXdheSwgc2luY2UgaXJkbWEg
YW5kIGljZS9pZHBmIGNhbiBsb2FkIGluIGFueSBvcmRlci4NCj4gDQo+IFRoZXJlIGFyZSB0d28g
YXNzdW1wdGlvbnMgYWJvdmUsIHdoaWNoIGJvdGggbm90IHRydWUuDQo+IDEuIFVzZXJzIG5ldmVy
IGlzc3VlICJtb2Rwcm9iZSBpcmRtYSIgY29tbWFuZCBhbG9uZSBhbmQgYWx3YXlzIHdpbGwgY2Fs
bA0KPiB0byB3aG9sZSBjaGFpbiAibW9kcHJvYmUgaWNlIC4uLiIgYmVmb3JlLg0KPiAyLiBZb3Ug
b3Blbi1jb2RlIG1vZHVsZSBzdWJzeXN0ZW0gcHJvcGVybHkgd2l0aCByZWZlcmVuY2UgY291bnRl
cnMsDQo+IG93bmVyc2hpcCBhbmQgbG9ja3MgdG8gcHJvdGVjdCBmcm9tIGZ1bmN0aW9uIHBvaW50
ZXJzIHRvIGJlIHNldC9jbGVhcg0KPiBkeW5hbWljYWxseS4NCg0KQWgsIEkgc2VlIHlvdXIgcmVh
c29uaW5nIG5vdy4gIE91ciBnb2FsIHdhcyB0byBtYWtlIHRoZSB0d28gbW9kdWxlcyBpbmRlcGVu
ZGVudCwgDQp3aXRoIG5vIHByZXNjcmliZWQgbG9hZCBvcmRlciBtYW5kYXRlZCwgYW5kIHV0aWxp
emUgdGhlIGF1eGlsaWFyeSBidXMgYW5kIGRldmljZSBzdWJzeXN0ZW0NCnRvIGhhbmRsZSBsb2Fk
IG9yZGVyIGFuZCB1bmxvYWQgb2Ygb25lIG9yIHRoZSBvdGhlciBtb2R1bGUuICBUaGUgYXV4aWxp
YXJ5IGRldmljZSBvbmx5IGhhcw0KdGhlIGxpZmVzcGFuIG9mIHRoZSBjb3JlIFBDSSBkcml2ZXIs
IHNvIGlmIHRoZSBjb3JlIGRyaXZlciB1bmxvYWRzLCB0aGVuIHRoZSBhdXhpbGlhcnkgZGV2aWNl
IGdldHMNCmRlc3Ryb3llZCwgYW5kIHRoZSBhc3NvY2lhdGVkIGxpbmsgYmFzZWQgb2ZmIGl0IHdp
bGwgYmUgZ29uZS4gIFdlIHdhbnRlZCB0byBiZSBhYmxlIHRvIHVubG9hZA0KYW5kIHJlbG9hZCBl
aXRoZXIgb2YgdGhlIG1vZHVsZXMgKGNvcmUgb3IgaXJkbWEpIGFuZCBoYXZlIHRoZSBpbnRlcmFj
dGlvbiBiZSBhYmxlIHRvIHJlc3RhcnQgd2l0aCBhDQpuZXcgcHJvYmUuICBBbGwgb3VyIGludGVy
LWRyaXZlciBmdW5jdGlvbiBjYWxscyBhcmUgcHJvdGVjdGVkIGJ5IGRldmljZSBsb2NrIG9uIHRo
ZSBhdXhpbGlhcnkNCmRldmljZSBmb3IgdGhlIGR1cmF0aW9uIG9mIHRoZSBjYWxsLg0KDQo+IA0K
PiA+DQo+ID4gPg0KPiA+ID4gPC4uLj4NCj4gPiA+DQo+ID4gPiA+ICsvKiBGb2xsb3dpbmcgQVBJ
cyBhcmUgaW1wbGVtZW50ZWQgYnkgY29yZSBQQ0kgZHJpdmVyICovDQo+ID4gPiA+ICtzdHJ1Y3Qg
aWRjX3JkbWFfY29yZV9vcHMgew0KPiA+ID4gPiArCWludCAoKnZjX3NlbmRfc3luYykoc3RydWN0
IGlkY19yZG1hX2NvcmVfZGV2X2luZm8gKmNkZXZfaW5mbywgdTgNCj4gPiA+ICptc2csDQo+ID4g
PiA+ICsJCQkgICAgdTE2IGxlbiwgdTggKnJlY3ZfbXNnLCB1MTYgKnJlY3ZfbGVuKTsNCj4gPiA+
ID4gKwlpbnQgKCp2Y19xdWV1ZV92ZWNfbWFwX3VubWFwKShzdHJ1Y3QgaWRjX3JkbWFfY29yZV9k
ZXZfaW5mbw0KPiA+ID4gKmNkZXZfaW5mbywNCj4gPiA+ID4gKwkJCQkgICAgICBzdHJ1Y3QgaWRj
X3JkbWFfcXZsaXN0X2luZm8gKnF2bF9pbmZvLA0KPiA+ID4gPiArCQkJCSAgICAgIGJvb2wgbWFw
KTsNCj4gPiA+ID4gKwkvKiB2cG9ydF9kZXZfY3RybCBpcyBmb3IgUkRNQSBDT1JFIGRyaXZlciB0
byBpbmRpY2F0ZSBpdCBpcyBlaXRoZXINCj4gPiA+IHJlYWR5DQo+ID4gPiA+ICsJICogZm9yIGlu
ZGl2aWR1YWwgdnBvcnQgYXV4IGRldmljZXMsIG9yIGl0IGlzIGxlYXZpbmcgdGhlIHN0YXRlIHdo
ZXJlIGl0DQo+ID4gPiA+ICsJICogY2FuIHN1cHBvcnQgdnBvcnRzIGFuZCB0aGV5IG5lZWQgdG8g
YmUgZG93bmVkDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJaW50ICgqdnBvcnRfZGV2X2N0cmwp
KHN0cnVjdCBpZGNfcmRtYV9jb3JlX2Rldl9pbmZvICpjZGV2X2luZm8sDQo+ID4gPiA+ICsJCQkg
ICAgICBib29sIHVwKTsNCj4gPiA+ID4gKwlpbnQgKCpyZXF1ZXN0X3Jlc2V0KShzdHJ1Y3QgaWRj
X3JkbWFfY29yZV9kZXZfaW5mbyAqY2Rldl9pbmZvLA0KPiA+ID4gPiArCQkJICAgICBlbnVtIGlk
Y19yZG1hX3Jlc2V0X3R5cGUgcmVzZXRfdHlwZSk7DQo+ID4gPiA+ICt9Ow0KPiA+ID4NCj4gPiA+
IENvcmUgZHJpdmVyIGNhbiBjYWxsIHRvIGNhbGxiYWNrcyBpbiBpcmRtYSwgbGlrZSB5b3UgYWxy
ZWFkeSBoYXZlIGZvcg0KPiA+ID4gaXJkbWFfaWlkY19ldmVudF9oYW5kbGVyKCksIGJ1dCBhbGwg
Y2FsbHMgZnJvbSBpcmRtYSB0byBjb3JlIGRyaXZlciBtdXN0DQo+ID4gPiBiZSB0aHJvdWdoIGV4
cG9ydGVkIHN5bWJvbHMuIEl0IGdpdmVzIHVzIHJhY2UtZnJlZSB3b3JsZCBpbiB3aG9sZSBkcml2
ZXINCj4gPiA+IGV4Y2VwdCBvbmUgdmVyeSBzcGVjaWZpYyBwbGFjZSAoaXJkbWFfaWlkY19ldmVu
dF9oYW5kbGVyKS4NCj4gPg0KPiA+IEkgYW0gY29uZnVzZWQgaGVyZSBhcyB3ZWxsLiAgQ2FsbGlu
ZyBhIGZ1bmN0aW9uIHRocm91Z2ggYW4gZXhwb3J0ZWQgc3ltYm9sLA0KPiA+IG9yIGNhbGxpbmcg
dGhlIHNhbWUgZnVuY3Rpb24gZnJvbSBhIGZ1bmN0aW9uIHBvaW50ZXIgc2hvdWxkIG5vdCBhZmZl
Y3QgdGhlDQo+ID4gZ2VuZXJhdGlvbiBvZiBhIHJhY2UgY29uZGl0aW9uLCBhcyB0aGUgc2FtZSBm
dW5jdGlvbiBpcyBiZWluZyBjYWxsZWQuDQo+ID4gV2hhdCBpcyBpbmhlcmVudGx5IGJldHRlciBh
Ym91dCBhbiBleHBvcnRlZCBzeW1ib2wgdmVyc3VzIGEgZnVuY3Rpb24NCj4gPiBwb2ludGVyIHdo
ZW4gY29uc2lkZXJpbmcgcmFjZSBjb25kaXRpb25zPw0KPiANCj4gRXhwb3J0ZWQgc3ltYm9sIGd1
YXJhbnRlZXMgdGhhdCBmdW5jdGlvbiBleGlzdHMgaW4gY29yZSBtb2R1bGUuIE1vZHVsZQ0KPiBz
dWJzeXN0ZW0gd2lsbCBlbnN1cmUgdGhhdCBjb3JlIG1vZHVsZSBpcyBpbXBvc3NpYmxlIHRvIHVu
bG9hZCB1bnRpbCBhbGwNCj4gdXNlcnMgYXJlIGdvbmUuIEZ1bmN0aW9uIHBvaW50ZXIgaGFzIG5v
IHN1Y2ggZ3VhcmFudGVlcy4NCj4gDQoNCkkgYWxzbyBzZWUgeW91ciByZWFzb25pbmcgaGVyZSDw
n5iKIFdlIHVzZWQgdGhlIGF1eGlsaWFyeSBidXMgYW5kIGRldmljZSBzdWJzeXN0ZW0NCndpdGgg
ZGV2aWNlX2xvY2sgdG8gYWNoaWV2ZSB0aGlzIGZ1bmN0aW9uYWxpdHkuDQoNCj4gPg0KPiA+IEFs
c28sIHdoeSBpcyBjYWxsaW5nIGEgZnVuY3Rpb24gcG9pbnRlciBmcm9tIHRoZSBpcmRtYSBtb2R1
bGUgb2ssIGJ1dCBjYWxsaW5nDQo+ID4gb25lIGZyb20gdGhlIGNvcmUgbW9kdWxlIG5vdD8NCj4g
DQo+IEJlY2F1c2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUgdGhhdCBjb3JlIG1vZHVsZSBkb2Vzbid0
IGRpc2FwcGVhciB3aGlsZQ0KPiBpcmRtYSBleGVjdXRlcyBpdHMgZmxvdy4gVGhlIG9wcG9zaXRl
IGlzIG5vdCB0cnVlIGJlY2F1c2UgY29yZSBtb2R1bGUNCj4gY29udHJvbHMgaXJkbWEgZGV2aWNl
cyBhbmQgYXdhcmUgdGhhbiBpcmRtYSBtb2R1bGUgaXMgbG9hZGVkL3VubG9hZGVkLg0KPiANCj4g
VGhhbmtzDQo+IA0KPiA+DQo+ID4gQWdhaW4gLSBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcsIGFu
ZCBpZiBJIGNvbXBsZXRlbHkgbWlzc2VkIHlvdXIgcG9pbnRzLA0KPiBwbGVhc2UgbGV0IG1lIGtu
b3chDQo+ID4NCj4gPiBUaGFua3MNCj4gPiBEYXZlRQ0KPiA+DQo+ID4gPg0KPiA+ID4gVGhhbmtz
DQo+ID4NCj4gPg0K
