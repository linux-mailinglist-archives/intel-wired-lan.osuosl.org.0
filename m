Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E93C849C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7223C6083A;
	Tue, 25 Nov 2025 10:59:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VOQMt8RN86pV; Tue, 25 Nov 2025 10:59:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE9F26090A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764068358;
	bh=VsPPMtDEGchdz/iIUNaVR0wWgCOKCFNHcNpdiWkoTRc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G+BjBhH11iQnJMaaQh80vxIdJ8aLnW/+0v64MxZvA8qBDBdhwQ23hYFur8mImO6HV
	 h8nR8zWb0vcY/ymzbRWwwSBZ8JhQX4F94AgtQgcvcrjcTi1Wx9uLiqnY40VV3wWlg/
	 xzL01bOZNWC7+tXL3o52yFk3qjogdozT0mKMEz2WO+woRo0xd7elzEO1/xeqTAaYzA
	 o3kcRqiejRthW5q2O2y9w7njN1GQcjF/0l79JOB6nv9wEa6nvIt7tw1bEXmCdQF5L8
	 8LkZwTq9w2rSejeV7t+MCEBY9vBjVIJuwAsVbtlYO2tzCf05AEblDtLIjYce3hUJey
	 UKsN+Mj87Kn/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE9F26090A;
	Tue, 25 Nov 2025 10:59:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E7C6835C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEA6740106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:59:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNE_i1bCKcwi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:59:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0162E4007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0162E4007D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0162E4007D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:59:15 +0000 (UTC)
X-CSE-ConnectionGUID: tXw0X5F7Tte+jr/odkQdog==
X-CSE-MsgGUID: 4cphfFfCTH2b+7dqF3CGIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="91568974"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="91568974"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:59:15 -0800
X-CSE-ConnectionGUID: HBAngs3AQDCWtwgyU+8lOQ==
X-CSE-MsgGUID: d/M3JLWoQ1Gc5yumb5qg4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192845513"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:59:16 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 02:59:14 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 02:59:14 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.64)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 02:59:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=askgrNUk9MH7u5q4wHl+wA6oVoam9MWx5fNFdBqyNRW8ybmvdZ921nUbmCqYWhk9kojKzfX2K5MKclNcnKgxL4uJ/cwGmMhL8CSEX9nGFf2vHrEaN/m1ZY6gRpSqEeLT5KFB4Ue0V7FpGeZgEzUp8//Pf+8z9smRN5kRB6rmzOAlqJEIddNOjBzKGY4fhu8ytzeV6qnjf/QzuH8z7M0h0aXdFOfSF/akB4fEBVx6Rn3eK72E8O/kOjW8F/NijROgQsfNp6TPtI944f9mawH/NCrNRfRhkIAhYv+4e5Rkjyh3SWnqo1RbkAROuBKmx2N8r1xrA4y2UMj0Ii1+5r0h+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VsPPMtDEGchdz/iIUNaVR0wWgCOKCFNHcNpdiWkoTRc=;
 b=y8z541Ae52F8X4AnsEKqjEbzJoEZ44SMHEdAeEcnnLZYd/os3nMFodBFtrc7Xj6ULZFGmqU3s65q4yPCHVnaW/gmTq0s1Lk4piD8NvPspkhzgBo+tEhlCFaG6AhMyq8fDGA6VtE+MDAkun0pyjarVIqIu75r5fHJeFg7W5gBa0VJHkL/9OfemRCj2mcZsGQTVfxMz2K6YTtX//tCMYuE7p7LBWELYhcjThpXR4t/5rH3ZkowvVldHFUffG7YbUX9U4VlXJUGqT2Ur5rs10/hOhgI5wPSDAQK9zRcB/qQaAngMkmtgSCNCNHNiyoJ4vVAYdUzEx/LAesD9yJ37fQlGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by LV2PR11MB5976.namprd11.prod.outlook.com (2603:10b6:408:17c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 10:59:12 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858%7]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 10:59:12 +0000
Message-ID: <159bb793-508c-42f3-af60-20c1c688f5f9@intel.com>
Date: Tue, 25 Nov 2025 11:59:05 +0100
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::24) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|LV2PR11MB5976:EE_
X-MS-Office365-Filtering-Correlation-Id: 00505acf-8946-4ee4-0997-08de2c11aa57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1FUMkVLZ1BJS1QvTTVZd3VaQzZMN1BwbThIUEpGcG5uaGNqQ0NWK21OQzdn?=
 =?utf-8?B?Z1JDMnJlYzdQWXR1ZU4yQ29sdThDQW5FSk9PMzJyTmpKeC9uVkNselJZTmVs?=
 =?utf-8?B?UGtFM1Q2MVA4SlIrRlJnQWJDSEZWczdqamVTS0l4SjFjVXhLUFRmdUFrVFZn?=
 =?utf-8?B?WnFJb09yZEVDdWUxbzNsWVVmNHZwVkM4Q282VVVDK1Bpb2RrVUo2eGxPRnZh?=
 =?utf-8?B?VE1LNjM2N0s1Q0gzdXdsUGt1cFhVVHhkNVhya3AxUGRYMEo5OGJXRWV3YU5o?=
 =?utf-8?B?K2M5SEswb050YzFjZlVRV0wwak9scmVkdUx5NmdCN090L20yc1VsUVl2Z0Qr?=
 =?utf-8?B?ZXNIRkp4REZkcCt0NTE0K2t5Yi9zK3AzZ0NteU9OYVpMd0lPWFhYNURvbXJG?=
 =?utf-8?B?OEZrdVRhaU1IU3FOYnd4cWRRd1U3b2xoMVRkZWN0dmpYM01DVVRJbk5MZXRT?=
 =?utf-8?B?VWl6T25hMU9wSzdmaXM0UmJtVDFZRGt1bThjUS85TW9zTCtNYnVHN1k1eGpo?=
 =?utf-8?B?VnhjcTZiNjN0QXBPelZQcW5heGh1QndlU05Cc0xDOUZRUVdGV0RVL2drOFly?=
 =?utf-8?B?OFZBM1Z6Vkxldlc0L2JjYW5XVkVhZDdyMFVueWMrcGFBN2lkOU5LVTY5RlQv?=
 =?utf-8?B?WHFPSXh5NW1mVkxucE1rOXRXNitLd0ErNkRTSXcrNFA4ZWgzTUZQUmM3aktl?=
 =?utf-8?B?bTVqbStGZXdCcG5LenFDVEl4THJKOUVlald0V1c1S1dWclZvTkRycVE4bE0x?=
 =?utf-8?B?ZWh0bTJCNzhhb2FDUndwN3JtZ3lTVEZSZkxqUFZCdHR5NWZna0ZpSDNZWnlm?=
 =?utf-8?B?U2VFSUw5ai9JL0phTHo1dmpsWForVjFhRlJYTTRlNjNHYlhSbEtpeEdyWHhj?=
 =?utf-8?B?bkJDcGtKSUNENUpkb1ZJV0hwTXJ3SktrSCtNdEw5WXpCZU1lbnFTT2xoKzg0?=
 =?utf-8?B?cW1mSHVsTGR0VU5xZUoyZkthZ0xpRjZjeXRnNTVsd1c5bFJKNnljWVNxQ0hr?=
 =?utf-8?B?a2tIRTFTWU85dDFieWlMOHc4dUZXQ0RhTmJpa3B1TWFHUjhydThpbGpBNnpM?=
 =?utf-8?B?THhQdnEyWjdTN0JKbkJUbHNkVDYzdm5nQis5NGpLVHF4RzV3ckN3Z1VNR2N0?=
 =?utf-8?B?dmJuK0V1bFIwRGEwcXZVSndaRjVzNGZoSnJubVdCdVkxa1pnQ2l4OWo5Q1pI?=
 =?utf-8?B?Y1gxTDFtbm13aHBlK2pWTDVKZnRvQWt6bzhlRlVJcHp5L0tYVWN0RklDUnpv?=
 =?utf-8?B?Y3RiZFJOdXMwa2Ywd203ckJQU3pLd0NCdlZxZ1dXM3kyM0FDV3RVdmhNY25U?=
 =?utf-8?B?UG1qQ204NmZkOFVwbUsxQVdua3hUR0d3UGRKUm1XOEdqTzErbldzWWcrdWlT?=
 =?utf-8?B?c282dXNRbHhnNm1XZDhEanZWZE9WRWtQbXNUWGd3aWdpVTA5TmxBd2ljbjZm?=
 =?utf-8?B?RTBRTm8vL2QvMGM4ZFNzSjg2VFBBY3pzbTVHYi93VGRmRUJ4ZWNoRmFLSVlm?=
 =?utf-8?B?ZkhoMXEwQytueThPb1N0WnlicTkxMmNuWW9tVm5DSGVVRDdMT29Ra3pxNmVS?=
 =?utf-8?B?YmVKdjZsR0ljS2xOaEZTalBIN0V2QlpwTkQ3MzNSbjFVMk5EN2dFdks5NGZ0?=
 =?utf-8?B?R21WYUx0OHZYMFpJM3ZYeFdyU0hXR2pwL01RV3l5S1dVeitqUllHbExpQTQy?=
 =?utf-8?B?M0J6ajhPdUt0YXNxb2l5QlZ0Rm9wTitJUVZVWkVDdW8vYmVoV2Y5NEk3WUx4?=
 =?utf-8?B?bWd4WVpsbjF2WG03ckhsZkxiYmhJWTVkM1Q4aFI4cVdvaFpTZmxuNFJsNVpU?=
 =?utf-8?B?SFF6cEJtVEFacjAyQXVSb1NrcnV4M0lwRzl5TGJVWXRJcnFrbmRicXE3RmJj?=
 =?utf-8?B?bUQ3SmxYd1p2NndMQjNrQVBGdG1TQ3pqNzh1T3FIQzcxcWRIUkJuSUwyM3h1?=
 =?utf-8?Q?6qBERXVSw24M0TYLhlA8QBTaxSgjjMgR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUwwdEIyNGlqOWFXWGdmbzAveko3ZUtZa2NFdGhuOGVHSlM1U2JwRThqVUFn?=
 =?utf-8?B?VksxZmNKeTVzZ3NXVDdsdU1Kai9xVWlMSWlHc2JZem9pZHpxVmhpSE9tcVBU?=
 =?utf-8?B?dmlZTFFoeEJOYlpJMUpEaXlkLzM0dWFlUG1RWHZRT2tkSGx2bVNvUkxpK2Y1?=
 =?utf-8?B?bDlXN3pGUXlwRGxQMmpkRXl4eE5EUnZ0aXVONFFGczRvWXF4Z2RrQmhEV0RW?=
 =?utf-8?B?cUx4cCtoOFY1UDNkbzVha1RQMHNVd3pkcEdydkFEclUvbUNkSE04aXE5ZVVi?=
 =?utf-8?B?MXpISGk2U3k0VG1qNnEvaXlXbDE4a0hmN01janQrTXg1dk9uVDJJdnhTUnpR?=
 =?utf-8?B?bGhlSVBLOGJXRks1eVVJMndCMnhZRTVycDJ0T2JHQVh2Y0dkRDR4WStoNzMx?=
 =?utf-8?B?ZkFTOFhjSUxJNWh6NGgxWHYvbE1aemJ5TjFCL1U0ejR1ZlJmZ1lMdUoyR0V1?=
 =?utf-8?B?K1ZhTGpFNTNSd0JsU2RVS1E0Z1BNY3hZN2VlOTNZcDA4Sk5sTGJ3RHB0MGxy?=
 =?utf-8?B?cVgxU2xmVmFSSFJtQWczTUxCS01md0JJclY3M0NKbzdXV0ZDaENKQmY1a3VX?=
 =?utf-8?B?eHRDLy9rWHIzQVpxUkVtVmpSemIrc0N0OGpoeWc2SGs1ZDBwVjhGcWw5dkFy?=
 =?utf-8?B?aXhjcDE4ZXZFZXg3ZTh3dUM2cEIxSVpEWWVEbXJXWVIwZ0ExbTA5R2VkME1D?=
 =?utf-8?B?QkhOMjNwcldjR3VwME9iSUYrdUN5RDl0eU9BMkluZm01c2xlVmNLdEwvRm45?=
 =?utf-8?B?cDFtcFZUdExidVRoWWJqb1oyN0VOeG9ZOFYwZTJkVzFpRWNwalhTeWhIQUxW?=
 =?utf-8?B?UEpQNy9Pd1d2K3BmSEo2L1QwZjUxejRuVk9SMlpzVzZqU09kNzhzbzFTN1Y2?=
 =?utf-8?B?UC9VbkpNdlVFei9qNkxnMlNPV090bnFPSTZTZFBtSW9hNm5DMUx3TTQvblBJ?=
 =?utf-8?B?KzNZd2pIaXYweG45R3l4VldtZk1qUUQxcFNCQVRDRno0N2lRRy9TYXg4eTRW?=
 =?utf-8?B?YVJYQlk0djgrQXpuajl3bnNDMldNbjNaQyttc1pCQkRXQ3I5OE10QVlWdHJT?=
 =?utf-8?B?RnF0azBMbWowR1Y0REhBRW1pMUk5bDZiZi9BeFNiQnk5UGVBcnh1blBMVmUv?=
 =?utf-8?B?K3ZvK0dPb0tnbGhERmJxNzhQVVh3dkp3M3hFbXdjcnl4bGQ3MVZRcyswRXd6?=
 =?utf-8?B?Q01lV1FsK2JJMUV4T0V1bnBwSTlSeGNkaFArdlgyS1k1YnhneG9WRVFJUXFJ?=
 =?utf-8?B?eXp4UXRGTENxUjBSV05MMnJSei9JOVRYWEgrV2VrSWQrQWthbFNwVTRIWEZF?=
 =?utf-8?B?cmVpeXg4NUNXY3Z2RW1iZDFMcFpjNmtsRk9NVm5ITVIrdGh4UGhSTFJNSVcx?=
 =?utf-8?B?eGUwcUt2OXEwdEFwdFlPbVFIUk1EMEllSm44RVJ4S3BDOVMwRDM5V0RueWd3?=
 =?utf-8?B?SGVaNUlma2ZKYVIva0p0SmxtQU9WbVNqRDVqU254M0JKNWhzNzN5TmZOakJU?=
 =?utf-8?B?YXl3SXExTFFuQ29wZW5VRTVCUE0yVFRxbzY4YTZwODA4OW16V0ZpTkl1bit4?=
 =?utf-8?B?T3FreEg3ZjlhRGMwdXNCMnUydk5lZm9Gb29PcEpnL3Y5UVFTSFpwQWxBbGIv?=
 =?utf-8?B?dzJaQWNiRk1sc0dBR0k1OThhK25JUmNOTEpHS1Qzd25SU1lrZ05VdFFVOHpy?=
 =?utf-8?B?UkRjbHhIZDlNNWZydngzQmU2ZW1UZG40bGFvM3NuZzdrZ0xxZUx5VW9sbzB2?=
 =?utf-8?B?ZGwrSUUvUVhiV0dRNTd3M1QxWXV5MS9DTzN6QTBPMVhOdWQzQkdybVBNU1ky?=
 =?utf-8?B?bVhIR1ZaN2F1b1VXdXovb3lxem8xNW5OcnBKSjI4ZU8zRGRVUDIrd3lRdzFq?=
 =?utf-8?B?RXVGZ2p1dUl5RTZLMFdMVyt4dlBzRnpGWktEbkxzYS8xTlp2RTFhYmk1SnFD?=
 =?utf-8?B?ekprbHAvejZoZ2QzVmNSUEFNV1pLVVZBOWN0ODhVcjZEeVlGRldEYVhPcUQv?=
 =?utf-8?B?QUgxWkpCNWY3b1IzNkw3anJBU0pxNmoxVEVac2N0T1ozL0xZdVBkaTFyVkdz?=
 =?utf-8?B?RFdyNHJRbkxTMElobFIxTnNmbVp2eGFlQzNRbWhrbndtY3E0RExIMWNKQ2Z3?=
 =?utf-8?B?SWVudXN4M2JpczBZcnFhdlp6aUlvMmZWbW5MVlZxTFlpUnNiMjV3eC85d05C?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00505acf-8946-4ee4-0997-08de2c11aa57
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 10:59:12.0305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XgrsGaAPmzJoGc+8QWkwUdgpk0r99eeT+Mz0djnIHyXiFUvzflAWiP4rbdgJAIDzZvDfxM7FfIPdmrl76s/IUB7kXVNptRiwG+OnXDcw1ro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764068356; x=1795604356;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MnqEAjQ52FP0G20Ol4iXu4fVoR7RtbRYTJrWg//4tqI=;
 b=iJXmXOWWIP2tCenuH2MBOfNGZnZh6Z1hHSJsOjuwlqoHfSlZKW/l/BQs
 xeC7LzFT18w7pIefGih7a5pivh2fhx+Q6v2gY1DLRpsbdHUbl5NSjLLwx
 t51Kl6QGfEoJFj5XenJ0myaWAkW1+XbXp8DGO7SiH9KLy7chcZ1AEG9PU
 ac3M3XshVZVUj0RQvKKzl5T4Bc6SulaGNJ+P8i1kvRwFJSYvL/yaFda2L
 zIRe0FKG7p/WBhZTk52eyxvZ2XqdE0IEqreVe3qv9B0Dvt5sjE1Eg3ru5
 t/T1um0ltfWwYvtJmsdzg6eX0iW2/kFRhMgZAC9EK55bkSpNozTYP7HGe
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iJXmXOWW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix broken Rx on VFs
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

Tested-by: Jakub Slepecki <jakub.slepecki@intel.com>

As expected, the issue reproduced with commit 53ffcce6fe91 ("ixd: add
devlink support, 2025-11-17").  Applying this patch on top of this commit
allows VFs to receive packets.  Network configuration used:

ip netns add $pf_netns
ip l set $pf netns $pf_netns
ip netns exec $pf_netns ip l set lo up
ip netns exec $pf_netns ip l set $pf address $pf_mac up
ip netns exec $pf_netns ip a add 10.0.0.1/24 dev $pf

ip netns add $vf0_netns
ip l set $vf0 netns $vf0_netns
ip netns exec $vf0_netns ip l set lo up
ip netns exec $vf0_netns ip l set $vf0 up
ip netns exec $vf0_netns ip a add 10.0.0.2/24 dev $vf0

ip netns add $vf1_netns
ip l set $vf1 netns $vf1_netns
ip netns exec $vf1_netns ip l set lo up
ip netns exec $vf1_netns ip l set $vf1 up
ip netns exec $vf1_netns ip a add 10.0.0.3/24 dev $vf1

Assume all variables are known and network namespaces are distinct.
External host was able to successfully ping each 10.0.0.[123].
