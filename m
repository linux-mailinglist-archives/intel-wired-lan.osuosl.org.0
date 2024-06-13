Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7780907787
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 17:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ED9B41423;
	Thu, 13 Jun 2024 15:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ApUvbaekfuK6; Thu, 13 Jun 2024 15:51:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0620A41425
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718293918;
	bh=n03BHaVlCJ/wMwtO29Rz1L3BHLJSMPoUbDK36B7dgS4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BYL6WyuAiyVeQ6iAqBkcH8hCcJY0C/aMSpDbi64OKLj6Bshsb7tV+VmkAJY8bF4A+
	 I4ZuErXc7HlqNoGlqJ9dPdpbfHLL7Y9ellAX5rNZpk9arHEaprPVteaj30zwLngS9U
	 q0zIZMlToocSwkPxS3YjKe8DYTCaAis8lPf83iYmqtbsS9YAUbpB+lPvElb3zH933n
	 WUoQ+lN2TZ1a29NobRmgXC/JEz2ynlZg0WYrfsZ+ku5KOtSFKKQDLIBPiAzOvlyHlu
	 aSysx/a1K7b71x2SvTtmNzro2MZRchWbOCURR74+ds3GJenKD8xBFJkFjXCWJkqkT0
	 XceGb7OmBkETA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0620A41425;
	Thu, 13 Jun 2024 15:51:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FEC01BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AC7D41423
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:51:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f2gXwc3HqyN8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 15:51:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B75AF413B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B75AF413B4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B75AF413B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:51:54 +0000 (UTC)
X-CSE-ConnectionGUID: 3H15YzFaREWpa5eWBYtpSg==
X-CSE-MsgGUID: 7jjdgu71QceBbT8s+V9R1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25802619"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="25802619"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 08:51:53 -0700
X-CSE-ConnectionGUID: lI6KbA/9RfKz6El4QJ0xxw==
X-CSE-MsgGUID: I279IID4S+KC6YePvMpHXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40152982"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 08:51:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 08:51:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 08:51:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 08:51:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 08:51:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ex13IUlhT6wEHhKSdL+Mg65FaMnwCTrgw4swqlTpK5BmungSgsViS54VCd8n9YrGLI1DsHtI79t6578NxZahdgGsBq1dGvezj4/htewEbw79l/74YX8DNqsBviK1VORY8vjp/BHRWrKwGSkwzEUNfRshL+ek9USLu8pZmmH1+3iEnmNRoYwAzeba4npE38/jHe/gy20Pz//sM6uMfMB9x5fTCfvW8umeyfsLIGxfvnwdJSh8jev2DWTHXGmX34JqojkrUnCphbz7x0suWr7ItAtHdk58XE7NYq2tNFxEX//Ku+G529DYoj+VdKdRac3KzZpGIUPuQvzZxJdmp00njg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n03BHaVlCJ/wMwtO29Rz1L3BHLJSMPoUbDK36B7dgS4=;
 b=m3VwEAI/tA8Iu+vB4w4vK/yov3a411vyEg3DrxyzVA8GfuTKEsIZpBHsE0w8KMddwu26oKTmIAqiS/YPi3kt3i2xG1KOFMQgIPz7NiC1464iYFBocBc4O5xZ31K6bqfLfRAKIstioG4hi94p+ibG0TA51sKv08MsHvCZk5bWb0qDz4CawnmgsTKv3hRTuFHhm7LFm3HR2q9fQhJohlq0wc291QiRwGYBQHAJQNQUfp2AeLih5shMqD3r4d9H/DAx3/P4Xs+7YseFdQ4dZzUxG9CS0YGP17qtANwdspRF0cP+FRDsRTwvXVBmLWYSj8m9beaNgXI/r/eQXlYJmqGXkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB5181.namprd11.prod.outlook.com (2603:10b6:a03:2de::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Thu, 13 Jun
 2024 15:51:41 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 15:51:41 +0000
Date: Thu, 13 Jun 2024 17:51:25 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZmsVfbDTyZty2/Xh@boxer>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
 <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com>
 <ZmhdZwzIStFpghZK@boxer>
 <8a835d02-d65f-42be-b4dd-309e9e04d7f0@intel.com>
 <f453bcc8-8528-432d-b90e-35db9d4b0fe9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f453bcc8-8528-432d-b90e-35db9d4b0fe9@intel.com>
X-ClientProxiedBy: VI1PR04CA0111.eurprd04.prod.outlook.com
 (2603:10a6:803:64::46) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB5181:EE_
X-MS-Office365-Filtering-Correlation-Id: c51be2f9-7d43-4855-b4f0-08dc8bc0b781
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230035|376009|1800799019|366011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?m/Tr/0wpOZp3gSS7SZR4CFG3VteXW6shohhIydgt+6GetBC++n7fMbcFoZde?=
 =?us-ascii?Q?lLr7PhZSmpPZ6Y8jApkif3A5CgKXr0Pp5AkTmcH0p5Ygpq8KrUdPSZOmvri8?=
 =?us-ascii?Q?Apq2T0lT41bTZhHkPzdEOO0cNj+eY/3SVsc4ZcfiEyBcJDIzH9dbGOFY7u0h?=
 =?us-ascii?Q?/M5UuQg8pYRmVzM2o1Lr/zMB4hmqLSieHZ0ySTCvLb+9iWyiIcdDcK8CTkpJ?=
 =?us-ascii?Q?n/8w8EzJSGK34pC1wbI0spa3LmYwqcC+dA4jgObeJD4GPQiIFBC0rfi/bbkW?=
 =?us-ascii?Q?kU4DZKhmAwpd5n1k75a8dMJlXzv+GlzxT20mUv9wtluUhK1KvbFN5+sDqKQc?=
 =?us-ascii?Q?AzqPnodJny1HhNopFDeyWif0KbaioQzpaZG7bBTeatyYkl0sTfU4wvRvj8hF?=
 =?us-ascii?Q?dg8gi1NKH9KkhM1zw0SoZZyTvpmMJQp4pNgEw8MRM7ASRFOmKmDuQXTFF/FN?=
 =?us-ascii?Q?un5o0XnaBeHNqpoJls2SskEduphmXz23rrtFUJOBD8Q0OHdyjhSjol6rMsjy?=
 =?us-ascii?Q?+CGq1QV+4T9QK2lbjvKvewtoiK57kvp6i6cCX1RZYl6US3uDtVigYP2tH05/?=
 =?us-ascii?Q?rRAoYSdt61r4k2xXYreNmurUsKE2HHfE8Zj9ktaB+6xVJK79JmLDO3xY4n9I?=
 =?us-ascii?Q?+amrspIaGVbULjaqagFhy4EwQp9vae2jCy5lalqqV/peO+zRxOKOhC/ijUXd?=
 =?us-ascii?Q?YnJjgX75qTLLUAsO+4cMboJqisFXFuisdfXApFibg3/t89fcZRy/+eRT29B7?=
 =?us-ascii?Q?DPhAvQlHztJyl0qRDqrULhGhAkT2IDgskvVQ2aPp1x2V1Rp0mmzbG28+8aqo?=
 =?us-ascii?Q?oyUHrEst3SXwCB8Z6SeL6IufwgpbR2e+FmvjG/nH+IIe+EPP6+LtFVw7Fns4?=
 =?us-ascii?Q?OfjLUNehIe/wakMV3+WKPuFWsBUDqRtV35RgDNlbrUVsFeAAUDDLCXmAd0bK?=
 =?us-ascii?Q?ZfBxETYIP10/FMJUyOwh8n82VuOw6WRtXUzRHbT7B5zVownAGa3KPpPpf89i?=
 =?us-ascii?Q?iVsMUkCzg4FC4VSHpxLlpknd5+9l4QNEAMXB41N9CIrvWr7esZN2JR4RjhUT?=
 =?us-ascii?Q?ugbid7rdOhU3w2DzEjg4mWOUHF3dXP15IsOj+a4XFbXanjSus1AkYUrINvF/?=
 =?us-ascii?Q?QOpAx7Xl8Sklal+87PH8iQo2YVFM7MhFfRs/djsOnbh4OJrdTaHpvhqD/wLu?=
 =?us-ascii?Q?3BBIbvQPeIJfliY5CWUxH7icM2ga4c7mgO+woH9Mt8+jTKM9Vo2rs9e0mHCm?=
 =?us-ascii?Q?twbK04zDu0Y++GBmi7n8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(376009)(1800799019)(366011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YQsbeFK8GAXFxGO2J47dMCASj3vhVAVPl/MpyysInegyl4TnLTzmkb7nz9Qi?=
 =?us-ascii?Q?MrWMaCbj1qEgZzB8O4+nLVMTgSqTmoCsPwKU97/QXdGn7wsgK6+wv+9FicMF?=
 =?us-ascii?Q?pLxyODvS1M5f6/cd8BNMVqF5IVTlSaV2uqbhHzbNHXJN1sYHMB7u7e0SJ5yQ?=
 =?us-ascii?Q?USWGhAu/pIIAFSfAdLGNB7fEcmTXEe13J5/Lf/e8OtPgVY71A72f8I3iUyCA?=
 =?us-ascii?Q?XuYITU0inBB8TCm/zZvjapns0MV6ietPS3KiMWkm2M/vxibAC2k8FAI+lctO?=
 =?us-ascii?Q?5T+v+Af/YeZRCyFEgp8kFeIEfmNOcsDYmruJ128EhBCTlUiPx6QWxFN1WYbz?=
 =?us-ascii?Q?7JDWGLimscm0ztOfROuE8X5KBi2ndYsat/EQMko8KF6nWAPZglYqp/a1uZgI?=
 =?us-ascii?Q?ac33ojHo18RFHl92iXeqM+lizDWLJqTyCk1AHoc733uOs40grFe4/XBJIjlh?=
 =?us-ascii?Q?Bhkq9ha+mFNyWOOoRWU7BnpxFS81ctoimCO5SOq0zl6RGCK1Eb0iFP9jjQoN?=
 =?us-ascii?Q?M8RzJCQJd/iUcFdHCjgP7SiJWTPz17NZ4Z9wrolIy3fMZVKpPmhtvmgbOfFo?=
 =?us-ascii?Q?UfwemvJJ/jkn4FvaOHFTk/clIBzJcDwbDjM/dHMHMNlPPnDPU6OWXx0giigm?=
 =?us-ascii?Q?wWJHTSLqEkJL5k1o/+Qn1pKnDmLYiWJfDDDYNooAjuRTRJSMpHvMQYzQbxiU?=
 =?us-ascii?Q?UiNKkMaCz9VKTmBrGLXHydeT5n6ugfj+mQqHPeLiAuasyYjqZDnSCxyYQCOx?=
 =?us-ascii?Q?+pcqwWAgjk4xykjTFOP0elLsVQtKVG/Kk2XBqNrsG0AK2mYGAHhUMy2cJat5?=
 =?us-ascii?Q?o2/fAmcqzeNew9ySKVXmduhvscOJFWSQpSzgMvHUD0AhJEaAiRlXMNTSppYI?=
 =?us-ascii?Q?0FpzDNngDvXRKM24kC1o2zSvlW5d8+4a50PBX0ylBlcmpdENRcydD6h1JSsm?=
 =?us-ascii?Q?zm2km0HNhDOVouQTj/iypEjPRLb3Jsw4C4Edp9Lj2hK8l/tcz1JtGX4DuKi/?=
 =?us-ascii?Q?f5veU+zTE86TnH7/1bLd2XPITIvSuSa+F86s7O/O0fGoDEw3S/JVjRZkzVro?=
 =?us-ascii?Q?UL33+wetkmfk+Y3ZFhP+o1DumotfgHG1B5qtxam/jey3ZIZDRGkD/CLIhxCo?=
 =?us-ascii?Q?44ByTUAzo3qh0ZN3TS/HutmuoqxCOWEynLPS3nwFIFmjiHv1k1glxV5jqCCm?=
 =?us-ascii?Q?xk4toyymP8G/XSzAr9LXuPG17e/SgTwN6RYNgwBluUUj2bxbjzUQrKs0Z4Be?=
 =?us-ascii?Q?mxvn1vJkySciRaT8Xk9RzL/RKpHDcTMgkMaqWudMc+slJup/0RlAVQpI3Pov?=
 =?us-ascii?Q?4va2ir4HeJD/DgoUgHD08ai4RTbuehsEKNMnh244WX8kI80ruH57dfrSMr0q?=
 =?us-ascii?Q?b0+hn9ZAdTwAHZQF/mQOP7y71OEPWw7L0dQQypeY/bhfTreSSRK4EwwwIlJV?=
 =?us-ascii?Q?3rRVg2UQfUZ0pGwZV8HcyVZ/KKMQm0U3q8zKBLEzZ06qMSjWa8dwfCrrgG9T?=
 =?us-ascii?Q?HZ3ZNOfAf/hDqwroovY7Fc1IdRQXja4B+t5z4uDy1XzbC+P/3g0ueH0lVFJW?=
 =?us-ascii?Q?Nz9HHWHtJHdZPCUOjRO/f4JM21k0mDuMHF1YIbR8aDduziwysGe3DfqE0iux?=
 =?us-ascii?Q?2g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c51be2f9-7d43-4855-b4f0-08dc8bc0b781
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 15:51:40.9522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ceztNT9rzMZQBOCu3sTYUL1mVfOXcnCkRjtj7U1G6p9wuy1XTBmjSHKPUaycn2SobCb/OoFw+XSXRXFhSgJiUL/dPhxSkbvriwW3KyaUbpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5181
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718293914; x=1749829914;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0SLIjBkrtVtlTbuNu3kbUCV28OwAw6PkmnGHA+uBPAg=;
 b=G+95UuGi9XFTOFpvhtVHYGfGD9dutmO/vq+922hAiM7WGZcnJ3ivFyM/
 SRseE54DyohBSyP+J1Kbi5sZfbZuaHHFhSR/l5s5MunS11h4Vztp+ShWn
 pBQNcs+ivZ2xgKE+rURwCYjyAPAe8NJAYVgWBFVARlNLF8ztAmQPz4EYm
 MIzr7FiDypgqJL3X67IoQcwhPS2qeVh+2UkV4FdQpUoH6n06P9JX89VW2
 doycdIluEwQYO3YmpRhATNuLJ1Q0yc8ct+MSH22wwvTYqj8WuUYp7Mx5w
 OvAIGNdDJGJD+mJtNcWrWZphRWoj4gX7tDUHltQ8wfMnOy9LzVGB1lwfD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G+95UuGi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Shannon Nelson <shannon.nelson@amd.com>,
 magnus.karlsson@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 12, 2024 at 11:15:31AM +0200, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Wed, 12 Jun 2024 11:09:10 +0200
> 
> > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Date: Tue, 11 Jun 2024 16:21:27 +0200
> 
> [...]
> 
> >>>> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> >>>> index 2015f66b0cf9..1bd4b054dd80 100644
> >>>> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> >>>> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> >>>> @@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
> >>>>  
> >>>>  	ice_clean_xdp_irq_zc(xdp_ring);
> >>>>  
> >>>> +	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
> >>>> +	    !netif_running(xdp_ring->vsi->netdev))
> 
> Oh BTW, I noticed some time ago that netif_running() is less precise
> than checking for %IFF_UP.
> For example, in this piece (main netdev ifup function)[0],
> netif_running() will start returning true *before* driver's .ndo_open()
> is called, but %IFF_UP will be set only after .ndo_open() is done (with
> no issues).

I see, thanks for bringing this up! I'd like to try this out. Tony sorry
for the noise, but it seems I'll go with v4 and will decorate the
mentioned statements with unlikely().

> That means, I'd check for %IFF_UP honestly (maybe even before checking
> the carrier).

I wonder whether it is the ultimate check and two existing ones (that we
are adding in this patch) could be dropped?

> 
> [0] https://elixir.bootlin.com/linux/v6.10-rc3/source/net/core/dev.c#L1466
> 
> Thanks,
> Olek
