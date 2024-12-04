Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DD19E373D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 11:10:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FDFF41383;
	Wed,  4 Dec 2024 10:10:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1pr92V8U6N7w; Wed,  4 Dec 2024 10:10:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E15534135B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733307024;
	bh=WepC0WVtqggbYO52mfNoav+zvBV2OrroSNWzct8drlc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O7zsezAgpO8yY722No8kQeql+06Ebj23hgxnx5lbmHrDvd6W6milZlqsTh5sflEH1
	 bW8uZ/9TsNglkzjS23VhFsAlZWIP3cq7fQFlD+eqQvwunrrAlxneOeEuTqblWGDKuM
	 OjEKT+BnFlf7OxKTe6i3gVvau3PBW+6fZJq+lcf4LJctW9mDXjXS3X35aA7fPomAUR
	 3OYn1EuaMdtsN5EJyHXorSzOSqJD1UkzVqZIqm5DV86ZR14pECmD+mhXWLwAHaVUcX
	 FO2oa3+tAn8/pGucAZU98D2JEa7e0mK48QQEuuBmf97mUdFWI8/2p50hwuUemrMHhz
	 AyADfNVieTzzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E15534135B;
	Wed,  4 Dec 2024 10:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3ACBB1DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27E118448F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:10:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LGzQZb9s_JmQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 10:10:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 100DF84503
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 100DF84503
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 100DF84503
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:10:20 +0000 (UTC)
X-CSE-ConnectionGUID: HJHaKGEXRGeXUFZHrFh/mQ==
X-CSE-MsgGUID: eiNpsaknQzCgzlPSLyU+Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="36410284"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="36410284"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:10:20 -0800
X-CSE-ConnectionGUID: z/YOKmEbQ1m60e4Vn7DnTg==
X-CSE-MsgGUID: uI+nK65uR1WnEpS3KYAfhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="98537500"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 02:10:20 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 02:10:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 02:10:19 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 02:10:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NXrpwR7DghBjgwKW0FsBRFmoJJgNuvv0TYPaw0Da8rrKy/k1VppMPmkAqUZ+uDd7YV3NK9os/A+JxI9nq6fGdL2ueWbP/M89YCepDtALG7TI7OrcBOa0DZQu7SdcpCJSe6C3p/6QsgdvWsyN6a5k8cxdUi/wz8egOMmPH0mDCU5NSj3BRkU0U9yliqaFraTzWOfA3UZG7myrBO6O37SU/HnvkvyL9qSypAuS3L4UESpO5H52k6sGtIp5aISTa8tJNryj5MAgISaZ4cZwjt2c9NrxP6kDqvUdh76jsebWR5J+X2D+wCoHjsiDRQH5IeL2Z9/5qd0slsFGEPVuYt8KdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WepC0WVtqggbYO52mfNoav+zvBV2OrroSNWzct8drlc=;
 b=N4+4wG/65mdM9KTz93DJlVHot74/9PnqbOFsKMs/lE3yrfz/yNE9eJpovJYDZ07VUeAUTIcXCDDbKWcLSaS2knT9bv8B4E49oMy2qBbuFVgp57jldHfSoVYSeNCFTICvL/bgRNB8JF/ad/nguLtMMIS7puR+KRgxwLIBJOzQl9UkDphWoVxNW1nt0xmXCwJ36oGpDHZmwLIYaIpNgK/ZzOXaKgs+jxbXC4s+VvrZ3bDcdjgFx7Y/Y4U+xq2SiuAKGne/IteyKCesoCk+049myIiAIfZfd9kk3LG//W8NWz5mPH5WFL7QWeZTkt7X5jcWfaAZhxldoHyqhbyMP/SAkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Wed, 4 Dec
 2024 10:10:16 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 10:10:15 +0000
Message-ID: <ef87bd20-6fda-4839-8cff-4ab10bf500a7@intel.com>
Date: Wed, 4 Dec 2024 11:10:09 +0100
User-Agent: Mozilla Thunderbird
To: Gerhard Engleder <gerhard@engleder-embedded.com>
CC: <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>,
 <netdev@vger.kernel.org>, <davem@davemloft.net>, <kuba@kernel.org>,
 <edumazet@google.com>, <pabeni@redhat.com>, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20241203202814.56140-1-gerhard@engleder-embedded.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241203202814.56140-1-gerhard@engleder-embedded.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 3018d1a1-dece-4b6d-4063-08dd144bd924
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDNoc2o3ZHlUalI4N1ZIS0VlKzJKQ3RVcWpwdlhsQzVDbHdJMkI1ZXpmVG95?=
 =?utf-8?B?SURoVmFDN09oUDhsQzhzakZlcEpmYS9nOEM1NEErY3o5ZFBCekhxRndSdTF3?=
 =?utf-8?B?bGRrMks4NEZhWnZtYXczRFNXS2ZkUGRiRitwUlUvY0xseW9DaUN5MjdlNVhI?=
 =?utf-8?B?WklmbW5aTGo5T240Tk0rdTdhcGVwYWZ0TU0wYXJTcTMrV2JhUTNuNlY0Si9j?=
 =?utf-8?B?NXF4eVVPb3FLYVArVTZlb295VU1TQldCdStqWE9JRHp3OE5BUHNVMkE5SVF5?=
 =?utf-8?B?SmY5UWhCMXNEK0FmeUZsS0JIWWMzQVhJQkNEejh5YThpMzV4MDBtOHJHYXlZ?=
 =?utf-8?B?NWNzMGQyNVAvdnFqbTRlbjVqUEUydGNqRDZWWUxVQUZJR3d3RGlZZkhpNEND?=
 =?utf-8?B?OTc1dmVkQm5UbnMxZDJpbDVCZVRKdUJFNWVEczNnNGNoWXZ0cTQwbTFVMkFu?=
 =?utf-8?B?ZVQrOVFXNkM2YnFKbiswVDh3Z1RnNGtPTVZ6c0piZWZwNnh5LzZKT3B4WGpK?=
 =?utf-8?B?WG1OV05GOENkVlk5TExwUlNjaEpWOHJzZVNFOUFHdzFTMjhFK2NlbFVLVVVl?=
 =?utf-8?B?cFp2aThrRnNldFJCSDdsaE5CeGVLYmRDQkV6QW00WkovdnhNdys5SWYrSExP?=
 =?utf-8?B?NmcrT2hiMUE1ZnRRK0ZpYWwvWC9GcFNLSkRyU2FtT2QrNFp6RjNmd05rVzdz?=
 =?utf-8?B?dmdFelowV1R6Vi9EQTlYeEYrU2p5NXpreW9ZcGo2djlZbWw4Nm5wdFJUZXZE?=
 =?utf-8?B?clN5aUVJMW9rRmw5WitwNXRHZ2lNSjkrdm9RbTJ0UmxtMDhKQzB1QllmM1By?=
 =?utf-8?B?a0hERk1tUzVucVpOZFkwVG5LdGRuYXY0MnRYQjRTWUJuV1FVTzNoWERrZXhF?=
 =?utf-8?B?VlVhQXJ4NGRGSlRmSUY2UVRndEliMDEvWmpRUlVEK0oxZHdlR0x5bVJOOER4?=
 =?utf-8?B?Yy9Qc3FZQ2RNQTNFNVh1STQ3QXQrV2dsd2VxdVJ3UEN0c1BSaHh3akwxbnV3?=
 =?utf-8?B?WUdQYzBleTFieEQyUVc2bmY5YWw1SzZGSzRNVGZjenVIQUFaWnhIWUlwdGFz?=
 =?utf-8?B?VkorcTBlRzNuMUZJVVhjRU83SnpzR01tYWlwOW92WHRDM1Vndm1NamxEcVNQ?=
 =?utf-8?B?SVpKRTMyUmhycjlsY3RuaXN5STNtR2FQK1UxZGg3clhodWpOaXhsTDdZVVJh?=
 =?utf-8?B?RitiZGhFU2tzWWRlMlhJSEs3V01xcnQ5UnBhMFdINGpRd3dSajFkZE8yQkgv?=
 =?utf-8?B?Y2ZJV1lVNFhNRFZGYVQ0RGJYd2d6dXlrRVZJZGlhUzVPRS8wY0tFYldBa3pk?=
 =?utf-8?B?RnZKR2I1aFRQb0hYSkVtWnJsdCsveFJRZGVXMW1ldWRNRGY1VEk3Z2doOXhH?=
 =?utf-8?B?REV3aFRZVmRTZ0F6Zzc5SEtwRk5yak9WRUFiMTdDRWZDZG1pWi9wY0JodW9p?=
 =?utf-8?B?ZkFLU09neDNSNmY1MjJYWlJsbzNSWjd4c0tVQVZMMVVkSXNPU3g4R1B2OEhN?=
 =?utf-8?B?NitCbDAxcmJPd3lobUlGam1SaHhIdUU0dW93UkVHSWE5Ym5VaXZiTmlwamR3?=
 =?utf-8?B?d01xdFFMODB1UTJDaVo2VVFNQ0lQNUEybSthbnBkR01xWHQ0QmN3bmIzbEE4?=
 =?utf-8?B?ZnplRllTQUw3aVgvZWJTclplOGpmaWhOVlRHWWRWVFJidFJyU0owNml6Wndr?=
 =?utf-8?B?akJva1hLRGJvT3dXQWpxdm90Q3FGb1dFVy80ZDhvQjdrRVM5NUdCMHZqMmtw?=
 =?utf-8?Q?bND7gX+Xc/paNWfRcg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFlFUzJyandYbm1sK1RiK0Nvc3hVclNocHlLYkdLaWgwT2F0VWd5eVE5UjFo?=
 =?utf-8?B?Zm9kOGkzM01Rd29wS0R4ZDlJbFVHOFhZQ1RjcFI1MmNtb3hBbkRBTERxakFX?=
 =?utf-8?B?OE1TZ055bnd3c2h0dUFNTWRaYkZPU3h1amM5cEdiNmJQOGFkR2EzamxZUmU0?=
 =?utf-8?B?VkpJYTE5OXBzSy9TVkN5NWFVNWx6STRnbTRMa090RFo0SXNiNnNPa2pvbzZ1?=
 =?utf-8?B?SFA5c21VRmFwLzVyQ1NSdWR6aGRlVTZnenVES3BUSlN6OTBPNEdhNE9JQlA3?=
 =?utf-8?B?bXJTaTlmdDZjbytSd2NvTlRtZko3UmUvOFdEZGxGQkkyL2FyY1d6U3dsYk1u?=
 =?utf-8?B?NjRaZjJhT2pvR09TMUFJb25hZGtkcXR3TmxJUVExaXNEd1pRdnpoNE5DRlhQ?=
 =?utf-8?B?eko0OXdUa3ZFY29LNFZ1c0MzcjdVbjFFL3UvQ25YUDI0bUVMaFdLTEFOSHl0?=
 =?utf-8?B?eWRudEdyRzBiSlZoYlBJSjlOVklyWXFxa0tNVXhlWjNGeEJkcnI0dGp2em1a?=
 =?utf-8?B?ZUx6NFdpUTB6OU9tUGZwSFdVNm45ZlVQcHJFT2Zua0ZWV1Uwd0daekFuQnV0?=
 =?utf-8?B?ZzllL1Z0cDN1WGVOUWFkM0g5TzVETkpxU0lhTkZ5TUF1ajlQOEFwcS9IVDd6?=
 =?utf-8?B?bFF5azhrYlpSY3hJSzZzMnhiR2IrRytHS0kxU2lIcnoreG4wR0hJKythdGNU?=
 =?utf-8?B?RzJNWmJ4SFJuMnRGeFJQc3RWcHBKbm1JT3ZqZTdLeURnMzZLWlJFWWZDTWNY?=
 =?utf-8?B?VG9LU2diM3hTcU92K0w4TWsrcFczZmlWZWo5NmhMM3RmcWYwOGpiL0U2RW05?=
 =?utf-8?B?TUxSbVZYQ2tRR1VTK2NtSU5JaVFYVTNDOGxsTnBQS3dhR21lNkZQKy9CSzJR?=
 =?utf-8?B?NTQ4aTIzdGEyOEpLeTkyaSsxNkx2MWRWU1JkQzdsRCs4OFhmbGlQUm9kQjlH?=
 =?utf-8?B?dVU5NnFIa2VnanV3OHNNRW1GbTY3SS9BZE9aUEZhR2paZkZHbkRYdWNubjhw?=
 =?utf-8?B?NmR4SUNpeE8vZ3BJN0R3NWRNUGs2RUR6NUc4ZnVOMUE3NTV4SVJ1Z2tteEZv?=
 =?utf-8?B?SmlEV1VyaFRwWmVCWFNKYVdJUWJ0N3hHMnczUVVBcDVTMFhOcVIyaTFUYTll?=
 =?utf-8?B?Y0ZNNDQ4WUYvMmY5U0VtTldOUUc3MGhQOHRGaTloMnlKSGo0bmNOUHRaUkJD?=
 =?utf-8?B?ajBwakUyMzR6UWlDd1RDWndMMjluUnd6WDM4aW5GeEpZM3orWHF0R01XTmtK?=
 =?utf-8?B?RmZpZHYvOXFGQzA5VnRUL3ViaytHVXFlSERscUpYWnF5YS9FbnBENGt3dnkv?=
 =?utf-8?B?YmV6M0wzOSs3M1BUbWlncEt6MjVUTUI2Q1BGNW9tYUJrdllVQ0EvQ3FwZmdU?=
 =?utf-8?B?QjkwQnZzVnB5OGR3ajZ1TElIc2ljWTRPZWdLeDNoZm1DcG5vS1RCcDYwTjFr?=
 =?utf-8?B?SmJkNzBxQWNRL0s5S09xajFoM2J4U20wWmh4bHdDRE94VndFUlpyWStFZ2do?=
 =?utf-8?B?eVBhcFBNYjRvN0RDdFZOYTNzMzVxeCthNzFEc29LSVVDRXJYcmpiTWRvSGIw?=
 =?utf-8?B?OGR2NjdsSW81OVZrUHZxai95NWMxWEpiUC9oOElmczg0bWs3Ly9xTzI4SDA4?=
 =?utf-8?B?ZjNkMTJodTdoL2xxNUIxT0F5RkZDUUwycG9PeXVjaUd1OUxPUFUzRmEyMDVT?=
 =?utf-8?B?UDQ1N1NrQStJQWFKVnVsM3gydG5jVkF5UUtCczdwaW9nV1hHMWcrVzExcmlv?=
 =?utf-8?B?c2hJSGYzS0R0bVBuYnArRHNXYU1sVE4xQXdYQ3crVFNZREJWVU9mMmFOaVEz?=
 =?utf-8?B?UktmcWRGWllJTVBodlNITmxOTWZRUDJWTHdhWndCSXUzUEF5dGEwTXVoRGFx?=
 =?utf-8?B?cEtjbGl5eS9GRHVFRjdYcmhsL1dYUVFBVGpEcWVhZlExWFdNQ0FvOTRQMjBj?=
 =?utf-8?B?R0pISlZOUVZkb240blVEa1ZmdWtpNnA0d2FuMDRQU3VyU04rVVRoOWxWc2Q5?=
 =?utf-8?B?K3dTQWFGMldwR29UMERSUDErb3ZQaCt3cGx4MFBZOUcxZ2J1UnZjUUw0bVlk?=
 =?utf-8?B?SVBKOUVCVllmdFRoZlpyV0dXd2FhNFFQRmI4bWFZM1htWjZxK05wNmVxdWly?=
 =?utf-8?B?aTNkTkx6RzdONUlTK2k0YVM4M0h5MUFpMDQrdmp5Yi9qR1VrQVpkY1BTNVE0?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3018d1a1-dece-4b6d-4063-08dd144bd924
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 10:10:15.6604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 63FTkI1ijijlhBnF83lirV7/zI1kT9zjgwdbMapO3quTjPMheJuyGMamd2KJq9tIY9hFlej5y/tR2XgMBHg5k7X05ttBSsZ91Z9vn0vbvx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733307021; x=1764843021;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Mmvqhn59zhtMlI9njh9W2hQ6faojPiA1qpIpjs9iu4=;
 b=iZT+G5egNDzmfzQl8m55ToChQ7AA79czmqPiMNTWISl65ZT791oHVFZo
 rOFkawTk39eyLvYaFOa+YptZ4iSVfp+2lZC7thRyCIujdQdL/8dazA3di
 Q2oHq7XhTIq25Not38aCf+KKrogGuw+cl8WK4XM1Dtb7YJUlXjicsPf/g
 6BhWcbPg4SADRdF1Tm2ygN4Vzy9alSTA0gYiu1HGUajyxTwapwQSEhtir
 fQsYkSvLlkV0/H5JAO7U3O6/6GGNMWWJHFNwrqMSsjcnyC9OUb2OqwtaP
 onlA66fbh52r+S+egJdzspRQwOE1PtxR8N1KpvjIi9mZYhudkG+oMX0G2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iZT+G5eg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: Fix real-time
 violations on link up
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

On 12/3/24 21:28, Gerhard Engleder wrote:
> From: Gerhard Engleder <eg@keba.com>
> 
> From: Gerhard Engleder <eg@keba.com>

duplicated From: line

> 
> Link down and up triggers update of MTA table. This update executes many
> PCIe writes and a final flush. Thus, PCIe will be blocked until all writes
> are flushed. As a result, DMA transfers of other targets suffer from delay
> in the range of 50us. This results in timing violations on real-time
> systems during link down and up of e1000e.
> 
> A flush after a low enough number of PCIe writes eliminates the delay
> but also increases the time needed for MTA table update. The following
> measurements were done on i3-2310E with e1000e for 128 MTA table entries:
> 
> Single flush after all writes: 106us
> Flush after every write:       429us
> Flush after every 2nd write:   266us
> Flush after every 4th write:   180us
> Flush after every 8th write:   141us
> Flush after every 16th write:  121us
> 
> A flush after every 8th write delays the link up by 35us and the
> negative impact to DMA transfers of other targets is still tolerable.
> 
> Execute a flush after every 8th write. This prevents overloading the
> interconnect with posted writes. As this also increases the time spent for
> MTA table update considerable this change is limited to PREEMPT_RT.

hmm, why to limit this to PREEMPT_RT, the change sounds resonable also
for the standard kernel, at last for me
(perhaps with every 16th write instead)

with that said, I'm fine with this patch as is too

> 
> Signed-off-by: Gerhard Engleder <eg@keba.com>

would be good to add link to your RFC
https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/

and also CC Vitaly who participated there (done),
same for IWL mailing list (also CCd), and use iwl-next tag for your
future contributions to intel ethernet

> ---
>   drivers/net/ethernet/intel/e1000e/mac.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
> index d7df2a0ed629..7a2c10a4ecc5 100644
> --- a/drivers/net/ethernet/intel/e1000e/mac.c
> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
> @@ -331,8 +331,14 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
>   	}
>   
>   	/* replace the entire MTA table */
> -	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
> +	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>   		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
> +		if (IS_ENABLED(CONFIG_PREEMPT_RT)) {
> +			/* do not queue up too many writes */
> +			if ((i % 8) == 0 && i != 0)
> +				e1e_flush();
> +		}
> +	}
>   	e1e_flush();
>   }
>   


