Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A47C38CBF58
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 12:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9878E60A88;
	Wed, 22 May 2024 10:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i3Dkk_huy4ZD; Wed, 22 May 2024 10:39:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEBE260686
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716374342;
	bh=qFwlIh5QEvcY8lb+3W/VrUig/wH5zVEXlausnMcexfY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ocowsu1v40IWK36jfLibh0WVu4fiXCPhFh4f17Udu7uWSEFGgUMouyTv+e+fQ7FAM
	 Bh4GoMqNbu4QEXqsZbxILjkHwIOwmUjtPhizjj9eTKU+HuFQYvotjiDy7ObrtX3hVZ
	 sOHOTdypEKxPOGPP1aQk8xNkTq14PA/GmxkK+2N6sZAJycJtvWrJ+X+Ovgo6oUUTig
	 eWD/P10Tz2OOmLPBYi33RdjPQ+0vd1trhbjNbj6YWfLWW9oE2SgE7a3zquuXf752DH
	 ql40r6KFOzEhZZwtVuTKP3LHDtd7hPrBKoLv6rga1MhxutwJHfGmN+oMUcstBc1pU6
	 IYlSni6VN0ZtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEBE260686;
	Wed, 22 May 2024 10:39:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 523BB1BF3F3
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 10:39:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CE1D60636
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 10:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xG9ppnQWp18F for <intel-wired-lan@osuosl.org>;
 Wed, 22 May 2024 10:38:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 31F74605A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31F74605A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31F74605A6
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 10:38:58 +0000 (UTC)
X-CSE-ConnectionGUID: aZkzer5nSB2c+mU2SrVrZQ==
X-CSE-MsgGUID: 0FqDoaG0SX+4KLC17cMHGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="15565047"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="15565047"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 03:38:58 -0700
X-CSE-ConnectionGUID: VlhSGiX9QCChn0ZvukAEQw==
X-CSE-MsgGUID: 73XPciO/RjWZIDaGg9oPKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33302824"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 03:38:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 03:38:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 03:38:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 03:38:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 03:38:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fMYyKBIya63JGPKU3J6Gn8lTlIJK2e+ST/9Crjiu7I0HBQJfchmFofwkcpu7JIi2+gH//+z3nHbw9e3ZdbH8Prl3J5QfVjznoidtG/iDARbFGXhE5oAe3aBRnQL4Z5zw0ifWzf8dmz1/us4lpunjuqA6A32wJS9F+HrtHsGhDYwcihsCXmNqXpB181fljPOwIU6A3IJGUY5kzCNjyP6gP4oNoZUVRfhEAwri47+Bihgzgq3Kg2VNv8N8++bb/ktCSBFLde6CqVwII0832BQLC5ddfAUH/Me1iG7VfKAuLA4zf8vt0N4Oyt7KshChHRuZVKAuRGWshDb0d57R6h7x5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qFwlIh5QEvcY8lb+3W/VrUig/wH5zVEXlausnMcexfY=;
 b=W4S8Lma0Fx/VF4/hjJ51Gy170LicjQv+n7Z21RZF1emIw5TELodIXy0KoaUdNozxzvVn4si6Hj5kaDjBF784X7RRSfTnrX0hupO6KOSB4ijjuW6XlMycys9E9tMz3u2jI+QSSOBa76itE44YyZzWcO4zGJY9GXIfNT5veBA3ixup0q813k4yuxonglybz/D/J3r/5oB03WLc2JD6ETF9CaSXxGt5OM4TDugiqOFVPCxBHJzMpS9iEyE/yxkHhyrEM3J23P/gs0urrqkEkTu4z/KNhbAo9rn/ayJKoH+tVqVlZqMspXTPk2/ilfN9emlGKUduX4vWk2m80nxi/iutnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN0PR11MB6229.namprd11.prod.outlook.com (2603:10b6:208:3c6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Wed, 22 May
 2024 10:38:55 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb%3]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 10:38:54 +0000
Message-ID: <96b62469-8fc7-43b2-b31e-75ca72591e14@intel.com>
Date: Wed, 22 May 2024 12:38:50 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, <intel-wired-lan@osuosl.org>
References: <20240520222011.2852799-1-david.m.ertman@intel.com>
 <2fb592d2-2153-4d48-97e0-4b0515afc4c0@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <2fb592d2-2153-4d48-97e0-4b0515afc4c0@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0137.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN0PR11MB6229:EE_
X-MS-Office365-Filtering-Correlation-Id: 10a3abd5-e6e8-436b-37bd-08dc7a4b60fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cE9tRjREU1RyWlg1OWNNTjN5RnRpbng5MURTOGJ6UW5xTXdBNXNwbUJaelBG?=
 =?utf-8?B?dVNOazRTMU9pbGtUcDZVOEpHMnpJZ3J5bVg4ZzVETDIvWGMxNVlpQTNwQzYr?=
 =?utf-8?B?anR0WDR3U1gvUWRJdDRQZzQrbDdaQTkzbnFQTlpPWW5tZ1lVblkwcXRxN2Fv?=
 =?utf-8?B?NzkxYzRMS3d3KysxaUhaK0NkN1crTmtqVDFTek5JTDM4TEY5cUxmR25CYWRY?=
 =?utf-8?B?MFNSbGpRdHByU0lxdnV0TDBJdDFWRkJwcnpOa1k0QUtKZk9MdjE5bXdNUVFn?=
 =?utf-8?B?MGx0NkVTVnc2REZWTjN6bjlSb001TGZMYmNMMEZaalB2eTFUYWxXaEFaTVZa?=
 =?utf-8?B?S2ZIL21OUGhkUHlIb1Z3WWFkTlpSVDFjcTVld2Jsa1lHVmhEeUxoUnZRVnF5?=
 =?utf-8?B?QlkrVVBvYWJhMlRpY1ZGMjhJTDQrNDhEYklIZk5XOEZJRlAyTXY1L1dQRXdG?=
 =?utf-8?B?RXdIZjVYYkFRMFpqUUdUdC8ydzQvV1NQWkdmaVNGTTQwQkRGUENPeVVuaXdz?=
 =?utf-8?B?TUZZQ3dHUnNCU2R5Z1hBV3NtY0JibjdzeHJ0TS9uMWhsRXY0dFdvNFVyN0dz?=
 =?utf-8?B?L0RoSjI0ZnNVTDF4Q21WZG1MZmVzL1pXL25OelJVVFU3SGd2eWZvZDV3ZXBK?=
 =?utf-8?B?OTQvNnFkU0kxZjlvdm5ib3VJZldRTmZ3blErYmgxRXBhQ0FtM09kQjRMdDZG?=
 =?utf-8?B?WWVBU1VwZld6ZnV2K0JjUG9POGozb3JmOWNOeVpzdlN0emRGbThJb1hOblRJ?=
 =?utf-8?B?cHB5UkpQN0VVU0o0UERDbTR5VEpqTjdHeWgySkxnK252UVFxTW5XeXpOazhq?=
 =?utf-8?B?SEk4eGI3bThxWVBZRm0vc3ZqQ1F4dWVFc3cxWUdwS2tFSGk4T2pWaG42Qm8r?=
 =?utf-8?B?b0grbnlwT3VPd0dvRHB2bVloaU9aSjNURmdHTDVaZUJ4cE8vSXc1WWsyNmFw?=
 =?utf-8?B?N2JqUXg3TzhNa1h3QzZLZmFsTUI4VjNqNHZLd1pUQ0xQby9rdEI4aDY3bzNV?=
 =?utf-8?B?SnlCeFBCL1E4aGxjVU42aDliZ21vTnpVV0xNK3ZZMDFib1NJL3ZFK1Jsd29L?=
 =?utf-8?B?THlRK2lEbkUxemxKbGZQekNKTTJ5VmJhWjZyWmxXbGtiVzFQZU83ZzI0eVdN?=
 =?utf-8?B?aUpoOGdFdE5xOHRTL2FqZEdiVEVTeFh1NEdVeDdUb0htZVhrWU9PczVCS0pk?=
 =?utf-8?B?Q2pZako5OEJ3bUFwd08xcHBKSVZKSU9rZ2VsRUJwSitZVktQejdqTmVQZ3li?=
 =?utf-8?B?ME41Vm1keHhqcnZJbUhpVFErV0J4a290bHg0aDlQbnZOUERRbEw0M0ltVmVT?=
 =?utf-8?B?ZWpUVHh5L0Rla0FJNFljUVNXYVovWDNvU0h3U1YwTlZBWkxkOEZXUndicGkr?=
 =?utf-8?B?V2xiN2EvNi9ueFFtYkFrV0ptVE96NGJUanBnMjdHN2FaRHhkcVc5a1VoR1Bj?=
 =?utf-8?B?V1RiUUNGckJSWkVXT0ZpZlU3VFNFRW9rdHcvV1I4d1hYSVVkTkZuVUE5cWZP?=
 =?utf-8?B?Y2dFZVErQ01pbjBzMHlNeEppeTdCYnY1WmJmSGtSUHp2TkVtcEt3TVdhemhQ?=
 =?utf-8?B?Z2FmRlcvSS93eXN4UkFUZmFJNVZmU1ArN1htM1YrSUE3bzBwMC80SjM4bXVq?=
 =?utf-8?B?ZzQyNUJCMlVMZXVzRFZybUxjU3JHL3dMQ0pGU3RDVmxVQU56Z0NzNkRsU0V3?=
 =?utf-8?B?Y25JU3JaN1ZIdW9uMGxCc0lyTWpXc3g1Y2g4NjJUM0l0ZlhpS01UTi9nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YU9yYmZlanFqUGJFcFZtWVlldy9rT1cvTy9YYlJKbzJEQ003YkRkU3pML1RT?=
 =?utf-8?B?U2lWa0ZUQWs4UERjeHphZHI3SnV3enJjQTUzM0t4WTR1ekpwR3Ixdy9ON1F5?=
 =?utf-8?B?QVp6R1NPY1ZJQ1ZzM3VoQ01IeU5nUngyMlhHRWNxYXNWZWpIc1hVQk4xK0Ex?=
 =?utf-8?B?VWhKd2ZQd2dBNHdMelRpTEFOaWlPWDZENTBoRlFSVi9KT20yeWJEQUYzTUM1?=
 =?utf-8?B?SklVZ3pnZWRLakJFVjUxQ2FjL3JyME14Uk9sajhHVXJSc2dFODJaTWlvSFYr?=
 =?utf-8?B?RnRmNzErSjUyc3dYRk1vUlZncXlSSVJIdUxKYlFyRk1YUWZYQ3VObXBqemc4?=
 =?utf-8?B?Z1FOdVU5RzV5YXFzdDN5ZXMrZTEreGRRbmN1c00vdUQ0UTFLa1IvZjJvSm9q?=
 =?utf-8?B?SjRNYjl1bS9LYnNXd1RiVEZhUDUrNVB1OUY3VUE2MnprTDZGdGFlNTNXSzZ6?=
 =?utf-8?B?KzVpdXoxQ2IrbHBvaHBQOUNKOXpiNFQxYU5UZVdjdkdKazIxVGF3bld5eEl3?=
 =?utf-8?B?UUM3MlEwdnBhR05OWnZKMWJqWllWWlF4cHRObEtKak1aWVFZOG45VUNRczhS?=
 =?utf-8?B?MTM2MDJrMzNPTjdGakxEWUE4emFjaFN3RGpWcVZQWm1KM1NXZUpNTFBxM0J0?=
 =?utf-8?B?TzNkYVFMV1pvNVN3Z1pkSitoN0dXd0RMYzN4Z1NrZFZLb3ZwYkZxRW1MWTVw?=
 =?utf-8?B?UWF4eEVlQmZxNkF2SzN4N2pKZFJ6VmpQVFhjZFkzekFqR2xYcUFlVnY0dm5D?=
 =?utf-8?B?N2pHbEpOS3YxaUxTWGNwT2FhV29XOENsdnJkcEJSaHJNTjdxWFJ5ZVUwc3RF?=
 =?utf-8?B?VjFGUFlmbCtzR0dVTkZoVUQzbGNVYUVKY0xDd2JYM3k2Vk9FemcrY1VxeU9G?=
 =?utf-8?B?NW1EZjYvWWtXaUJqSG5iUXJLK20vdjVtYVd5K3ZmS2hhaW8vRTN1T1Nnb2p3?=
 =?utf-8?B?aGtoR3pWSkVaMWxiNHhYMEhSMW1vbjQzMFo3OGlYMGt6djFVcTBDK3NLVWNY?=
 =?utf-8?B?ZTZXN1doSU05NkpoUUhyUzBzOTNQaW81K1c5OVFGcUczRDBvRHdlaXdneE1T?=
 =?utf-8?B?WFpkREVvVjJWbzZoMFRmdWFnRFN4QTFhZWxzakpUaks5T0FvV0NlcnF0b0hj?=
 =?utf-8?B?bG04NDQzQjFSMERPM3I3a3VuRmZ3NVFRbjV0OEcyN3JNSkVWekhqRkt3bW5E?=
 =?utf-8?B?ZXYzOHp0V0NyNjdiSlFYcXZpRng5UWJMeHBOK1Y5Qk9hdWpMMW9kVXhiRlN3?=
 =?utf-8?B?QTdES2kvbXh0TUo3cW02L1VUY3VDaWcxMTBONjFsS2gya2pJT3JIaGlwOGNy?=
 =?utf-8?B?bnJ4YVF0V3NHTnIyV2FYbWpNZFVTMWVGaFlIWGR0dU9seXVpb213WGVuMWZx?=
 =?utf-8?B?ZStydi9STExWUUE3RGcvcWtqRGFkY3pnSmpwMDhOdXplcCthVnFQQWU0ZzM5?=
 =?utf-8?B?cmd1RXdmR2JpdXc3UGc3L3BYRVRER2p1NE94cG14Y3VTeHNyRnlTcUJhc3lX?=
 =?utf-8?B?SGlGZFNKQWc0cGIyVWNRL0FTbFJqRW44VUoydVRLOEtETVhFeGJlMVZRNytI?=
 =?utf-8?B?ZFNHcVQyY01NbTRDU3VtaUFhbnF6TEV5UFp3TExqdHFFekh6TkEwVlhySmlC?=
 =?utf-8?B?TjQ5VGZQQ2ZYNGcxTFlmS0c4dVlZN0dIMUduTjJXTkxoeGNQcERyTXVjdFh3?=
 =?utf-8?B?eUJQWjBRN2VRQWhiMUpPNURoN1lmZWxFcHdXRksvbHlxVjBZSUg5LzBOZlpu?=
 =?utf-8?B?eCt3ZlE4Vm5WRkpvVHZUTnlRcUJCbUdzOVphYi8rMHU1UVBrbUtNRjdPak1v?=
 =?utf-8?B?a1ZSNk81c2ZST2pPVjFUMUROT2V4Y1JhK3JsYnA0U2VNQmZNYnBucm1ZK1Bk?=
 =?utf-8?B?MU52OHlETnZvaUg4OGllL1ArcE9ZT1kySENMOG5uSmx1K0lwTTd6M0w5aStR?=
 =?utf-8?B?Z25SdVI4Uzc2UHhyWDVwK1V5ODhZSFBYSk1hV0lzcVpHTlRFd3Ayc2Qrekgx?=
 =?utf-8?B?a3pMakRiL0hxUFlLUEpmaVpOOEJBeE1EVXFDZlZUMVhXOGZnMmhZbEJpRmRv?=
 =?utf-8?B?aVFXV3hteGtTVStaNGk3c0FPSVpPQ01EME1EQXJEQkhTeDdDcE8xb0hOb1c0?=
 =?utf-8?B?ZC9tNTNGLy9HcVdoSkVaTWFRWG5KZndjT1NaS05GM3BKTUwwQ2xiZi9tOXhZ?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a3abd5-e6e8-436b-37bd-08dc7a4b60fc
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 10:38:54.8918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +jr+ZEGoOnWU4BsEMzOFypRdVq/MCCUggjB2yjebAJHXzEgV0Ct4TIp+raHXr+WdM2V3s6lfIN7j+rz1RomsGZ2XgO9SnvPoXQ99RH6ZykA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6229
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716374339; x=1747910339;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IvytkLJb+V7e4O9z3P7Fxyn5ETksn9VmM8c+eWp1j28=;
 b=f+oCfbIMYKx+jy0O33iPhWtqdKlB+6ko09Dv5lDMw/+oRWUUArhDmzCB
 jCXQhXSvNpYzyVcFmHTl+EBAuuvsDoDbEEG3oewb3pYFF/RfBjRFiCLHW
 So8yBkCWJnBA9w51QwV3iZQIp1uub6nSP9yYshdfjMV/QKuI9yhm/4Iu1
 WFZFpxcjGw5JSTBGKYqQ2SF6w5cS1y9eh0VTZd6zhsCu6R+NQshFnM26r
 jwrvxgMT///mFAg3JFF+thg2GQ2lBwr0AGU1sqi9IT0hXu1iQncnuXEs7
 KekeIW/5qirpewKdODVj/tpHI+S8C5Uq27Z2+/8girr05Wl39qyWpD27O
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f+oCfbIM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: check for unregistering
 correct number of devlink params
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
Cc: Dave Ertman <david.m.ertman@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/21/24 23:26, Jacob Keller wrote:
> 
> 
> On 5/20/2024 3:20 PM, Dave Ertman wrote:
>> On module load, the ice driver checks for the lack of a specific PF
>> capabilty to determine if it should reduce the number of devlink params
>> to register.  One situation when this test returns true is when the
>> driver loads in safe mode.  The same check is not present on the unload
>> path when devlink params are unregistered.  This results in the driver
>> triggering a WARN_ON in the kernel devlink code.
>>
>> Add a symmetrical check in the unload path so that the correct value is
>> sent to the devlink unregister params call.
>>
>> Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
>> CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/devlink/devlink.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> index c4b69655cdf5..94ad78d2d11e 100644
>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> @@ -1477,8 +1477,14 @@ int ice_devlink_register_params(struct ice_pf *pf)
>>   
>>   void ice_devlink_unregister_params(struct ice_pf *pf)
>>   {
>> +	size_t params_size = ARRAY_SIZE(ice_devlink_params);
>> +	struct ice_hw *hw = &pf->hw;
>> +
>> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>> +		params_size--;
>> +
>>   	devl_params_unregister(priv_to_devlink(pf), ice_devlink_params,
>> -			       ARRAY_SIZE(ice_devlink_params));
>> +			       params_size);
>>   }
>>   
>>   #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
> 
> What? This makes no sense. Just separate the Tx sched parameter from the
> list and register it separately based on whether the flag is set. Then
> only unregister it when the flag is set.
> 
> Messing with the parameter size list is brittle and requires us to be
> extra careful that the Tx sched parameter is last.
> 

for current situation your proposed solution would be indeed more
elegant

> NACK. Please fix both the registration and unregistration to avoid this.
> 
> Thanks,
> Jake

please note that for general case (multiple conditional params), with
possibility of the need of a rollback (when we fail in the middle of
params register) current API is not optimal

I have already suggested @Mateusz to extend struct devlink_param by an
additional field, so the skipping will be performed by devlink code,
with drivers only setting the field. It's still not that convenient as
we have typically a global array of params without easy index<->feature
mapping. But other drivers will benefit too
