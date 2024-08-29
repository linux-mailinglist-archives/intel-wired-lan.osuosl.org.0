Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19831965085
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 22:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C5FB61187;
	Thu, 29 Aug 2024 20:12:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9tu7IqnuRj0; Thu, 29 Aug 2024 20:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21D1E61189
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724962330;
	bh=49SORkjPmmpoXRF0Cy6wHA6RRgWrpxf3mweIOLJ1DBc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Um7To6DoboSkozp+94qxE77r1G7nIQJuAXuSxzZQ82e0TjBdaKklho9AxoaElpdoO
	 hFurRuxT0bwlLT9L5Yyzyq6+/mQLXuLBd8PaigXuJTsRn2AHTV64k6f1erutdWAkvk
	 uTaDBFtWX9PNuXkR4PlEAKMykQ6/Pts9xRdv6mpTew+HO2J0G/I179zAJHTU5fVSvQ
	 PTMHg1hmUfitVcS8J2Pehmseip5Ilbltw3wuA/GUGJX/uds/1snEYZXIhbneFGI9sN
	 xwqE6eCPrq9UybbTm0KLgvOvyyPPWBllGAeiNFSVyZVoso58dKS5poKMzK4zKHYHh+
	 GnfYoKQGL5VhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21D1E61189;
	Thu, 29 Aug 2024 20:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD2B21BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 20:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B62574055F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 20:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_Cw74EDqH1D for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 20:12:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F2FD41A38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F2FD41A38
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F2FD41A38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 20:12:06 +0000 (UTC)
X-CSE-ConnectionGUID: RMSCRbntQomYY54TxYvH3w==
X-CSE-MsgGUID: hFKHdrz0QIa6wBM0974xRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23538298"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="23538298"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 13:12:06 -0700
X-CSE-ConnectionGUID: XXitlzOoTmah5VM0+RnNbQ==
X-CSE-MsgGUID: JdtaCLKVSnCf3oL+tnFkSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="63680058"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 13:12:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 13:12:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 13:12:05 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 13:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CFwkcltmXcZOfcwi+jnh4hI4KYHFx1x517EXsFLLjbuFZ38Ajpzm+oCpPhGezryXpz0SVQSE2lNAEQGLtXFl4SQAe/ZXbWYEoTQknzyf/yyhB3lFkJRJoBZnFitHz9DYGRqcL52pPp6wMyldxXs99/bNEJqP1Ab0/oYcN9WdxWwg/OZDwK8VtQ0I7OsNyW4GwL82lhXqQ7CTVGFGzx2HhT06rJvmnEJ3VoWtaVhLQKAM29TKuqbU5C64vIW9wI/9r6+Q+Xws7VBthXzSZ9uU2MuC3KZlCGUFagkITVMJ0oS24owuhqLi+zj1HcrLzyeLdhrzSvZrpKKeWhr2xBMXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=49SORkjPmmpoXRF0Cy6wHA6RRgWrpxf3mweIOLJ1DBc=;
 b=LY9Qq3zb4iEYIeNBKImKu1isD1eAW3i6S0GNQe7cAHoqHt3wqRiobYDBqsvBi7fjSxHzpZJZ/F0E00ODXdUNBw1aS1+/AtN/4Vv7cS4knE5g1CJvvsDKDRUh4trcckiwI12VhtsR3nrTIkH4wyhAMlFc2nC7ZpVg1pBG5HaKXGzwE3DFJZs7xrrRxZtJD886a+L8Sy0F6FC+Xu4jIy1ZRu+KdbXCneV+YUoW9H5XAUw2buO8LpNxiOSn/77StYpOjKBAT3lpHOCP8v3GXy6PLyd3BNev6cqgJ8RGegT3HMiqTr3HE93RVK6+TpoAnvM8Lc+MOuKxf4oWTvdwY15mmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB8764.namprd11.prod.outlook.com (2603:10b6:8:192::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Thu, 29 Aug
 2024 20:12:01 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7918.019; Thu, 29 Aug 2024
 20:12:01 +0000
Message-ID: <8372c1e4-4978-d900-37c5-22cdd7c69524@intel.com>
Date: Thu, 29 Aug 2024 13:11:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Manoj Vishwanathan <manojvishy@google.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240826181032.3042222-1-manojvishy@google.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240826181032.3042222-1-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0068.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::45) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB8764:EE_
X-MS-Office365-Filtering-Correlation-Id: f4a2f293-0cc8-43e2-770c-08dcc866d7da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzZSMmhpZ3FSTkVWaEMyZmxUS0YwbndtNG1lT20wYkNnZ0J6T2FzVXQyMkpG?=
 =?utf-8?B?aUhOL0RTV1gyNnhBRE0rNDJlUkpIZTd2R1Y2bmRHMTlaelNyaVBwZlFhYVpV?=
 =?utf-8?B?R3FCQVlQWUtLWTJOYnB5UlM2RVpweDNadjcxMzZKOXFuSzJvaFR0OHNTWHdG?=
 =?utf-8?B?OTBaYTBPT25SQWJ2NmwyNXlDNnZvVzFXM0dXTGl2aUpVbmtSdk5ZU0ZzVmQw?=
 =?utf-8?B?cnNtZVliK1kvWnJYek5la3RFRGRpVCtkQmkrOXlZNkVhOG9qY3RpQlpDL1pP?=
 =?utf-8?B?clV5bDdPQUVVSjlsVmZPcDhkQngraFZFVk9RdlQ0N1FtWHk5SzAxamFrNjdX?=
 =?utf-8?B?VzVLdUVYNnBIbS9aUkxMSEs4ZVA1dzNCTHhPdWFZdzlEZnhYRE5FNERqZ3ZT?=
 =?utf-8?B?T2UyaFJJbkVYWklGbE9Qc0k4dG1VVGo5alRMeGJtWFcxQXA5dTErei9YaXlL?=
 =?utf-8?B?WGs1VzhOMkFHVi9jZktVMUl2WmkyNmZWRVgxcGNOV1RHLzI1MlcraGN1RE1a?=
 =?utf-8?B?R2NsdUIxK3ZKalBCUVQveVl4RnV1ZDVNUFFBangyb2ZIbmh0cDRPdWUvaXh1?=
 =?utf-8?B?UTdXYUkvWnRnODZGMDBTbDF6TmU0S2pCNWorSkFldWxoem4xeEIrTFNYVXFI?=
 =?utf-8?B?em1mbENMVW9PbW52VkpGTmpGYy9INHBpbUcxUnRWK1VLeEFoNFQ5V2RHY3Ar?=
 =?utf-8?B?Z0RXNitxMFl4NFdDSlFXbzV2ZnloWFRBVlVVTWprbzRwc2tBNVdFSzV0NTdH?=
 =?utf-8?B?ZVZVa1R1WTVSZ2FMV0lzK0dWdnFLZVVkOHQraGQyTSszWDI3TFprZnNhTk5l?=
 =?utf-8?B?bnFYc3VPVzErZisxUStzbDZ0dlZwVWk5NFc5RWt6YVZHK3BwbjdSYmFSYUZE?=
 =?utf-8?B?NHZXSFN3eGZleUphaGhTNkhhS0NUaE8xTGgzMlhxdUhQUU9kNjFvZmJkaE1u?=
 =?utf-8?B?MFFNYVVBcndJbHZxM1JyWnJNYzltZzZxRzRTRnhxWnJJTmdxb3Zla1EvR20r?=
 =?utf-8?B?Y2lZREtUNnFaRHRlaXl5Vi9wSERPNjY4eEtMMGVWR2pVNzFpd0tjT0VUeTlr?=
 =?utf-8?B?amZ0cHN0VlJNSnJuU2ZXbGVBRERnVWh2OUg2SzN4UDRBNlBmLzNaYldPYzhu?=
 =?utf-8?B?dGNJazBRY05JRTZQUkxyTDBNOFFoZHNpVnFpaWo5aVNXL0UxZlNWUWQzNG9Q?=
 =?utf-8?B?MlJQUWkvemZDNlJLZkNrM0FyR0s2bjZKZnpXN3J5MWFRQjVqTnR2dHhYZGI2?=
 =?utf-8?B?V2ZLRjhvcmh2UHoyQkNWQlRlSEFHeUhBRVl5WjhySEZlTzREdHJNWkRFUjZ2?=
 =?utf-8?B?S05HelJBajNtT0JKQ1U2eTg2TDgwUDdWRHB4N1dpNHdFWGd5UG1yY3FhSnRT?=
 =?utf-8?B?dW0yZGd3T2oyTDFzUVozRGlaUWhGVUNOeVBNYXRVNTJoZUJNYVoyUEt2QlpH?=
 =?utf-8?B?R2xRWllsUVNxZDBTVDhNNVd3Mlo5VnRtZUVaNU1LUDRrQnBUajFDUlg0T1B4?=
 =?utf-8?B?UDlFdXJ4djU3aUFDa0N0ZHgxRHlXYXhGaGhGNm9mb0I3RjhVVzhxRytGYktI?=
 =?utf-8?B?RHFOd2hlN0llb2VDL2t6eTdFTmJaNjNJWlJkeW4zSmpDdnp1ZzlJZm1RZDMv?=
 =?utf-8?B?NEdNNjdTYmYzNzc4M3lHUDVBOWJNTlFUQ09sWE8xUGxVdjBONGM3VEtoMmJq?=
 =?utf-8?B?QUJjN3JqUFR6aTVUbGJGOE5QcGdFNVFjcTJJYzN5amh3Ni9aODhpK2FSc1JB?=
 =?utf-8?Q?kiE0djscrktXA9Q4pM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3FQbDlZVDZpZHRKVmhISWJLNy9kVGg3TS9QWXYzQWJXblhzam4zN3hHTUNM?=
 =?utf-8?B?MW0zUGxvdDI3YzlsY0dsUnc3OGhJL1FWZEFrWmdXUVp5elZ3V0s5cElzSjZj?=
 =?utf-8?B?eWY1cWRod0t1ME9PVTdJdTZGckkvY0pFYjRscFZOMFpibjUzZEpaUUU3SjY1?=
 =?utf-8?B?T0pxMFd5YmNqQm1ZRU81aklqM3BlcjkrS1Vac3E1NVljNEgzc2xNYThWT1c5?=
 =?utf-8?B?cWpHUnhLNzRNYjFoczlxN25qNWVTVzdsMy9yMXNTM2J3dEJxNTMxdWFsaTU1?=
 =?utf-8?B?TWY4SXR5M05lNXFLVnp0bUVjbXp2YWxsdUJxWGo5dHJUUTdrSU5KMy9IOFRT?=
 =?utf-8?B?L3ZucUZJK09yNkdLVE9taUNnc3NTb2dDK1VkV1prTmJnU0JoSUdUZitCQmRR?=
 =?utf-8?B?RW5RcDM5eGJsajhXb1BzdGpDUGlFWktSOWlQMVgwTXpIMmovbzFGd1EyTmtx?=
 =?utf-8?B?cFFLZWlKQW1RSmFpZ1FNRFMxV1FZUTZlbGY0cDJLQlJwalliWVc5VGhTSyt4?=
 =?utf-8?B?elZJTklxYXZLelZuTldORmNMYXhjOXJuTHZreWhwemU2ZnVjTDBwR3N2Zy9O?=
 =?utf-8?B?NjdTWU14Rk5XSXk0bjg3azdheWk5ZXBwYVRNeTdxSnBpcm9zMHdMOWlIQnMz?=
 =?utf-8?B?NnE1TGgwVWl4dWxIdmFHRFBOSGxDUFliNThsSkU5c2tDZnNJdHJPQi9mdTJN?=
 =?utf-8?B?TGM4L29FUVhnaG9mZVk5Q0hhVThqRFI2dzBpUjRtZzREbjBEdjNlT1NBcU5k?=
 =?utf-8?B?aVJsUmZQc1l2S2ZjWFpwNEFnakV1RWMvRzRrWU5DNUpuSlNOOCtkZE5aeFdZ?=
 =?utf-8?B?L0xiczZNQmF3c0hKUDg1UlJwQWMzVFFhQklyMEZjQmkxZGoxZ2M5aFNwVk8x?=
 =?utf-8?B?WkdqamE1MEZFYlA1eDZBUkR1UkZxdGVvdWZWY3dxSDMrMG90WnVjQUVJMlMx?=
 =?utf-8?B?aWVYZmoxVlRRWlpIVWZBeFV1ZDBpOThuUmxzdFFJRlhCbFhKLzBXcmlCckM5?=
 =?utf-8?B?Nkpta29DUzh1OS9kMUtsbmwvYUJsVEhoMG9YV0MvNVhvS2FDWDRWM3ZBT0xM?=
 =?utf-8?B?SkpCbWZLdEROaUhmVEpmelBBUXkxa1M5U09QNzZXK0taRDNFRnZUZmZoOC9z?=
 =?utf-8?B?Lzl4bUR5aklITXFoZC91T3REQUUxUjNhZU9tVXBFRzJzY2xHUVExYjB4Y3Bk?=
 =?utf-8?B?VkphanFtdHRkMjFiblBZMnl1MkFVOGFGQSt6aFpoQytXNkFqUmgrTG9sM2py?=
 =?utf-8?B?c0tFU0prdEJ3cUFvc2VEcUhaai9HTVB1UW5Jc29RU3I2VEVNVGRhRkJsNGR5?=
 =?utf-8?B?eGpnalppSFgrd01ORzNRMlBhOVcwc1pxdURsZ1FLcFYrMjREUks5UCtPRlI3?=
 =?utf-8?B?blF0dzRXYUFNYnpVM0xpbG90UXpzb3J2b20ydUZNTjFONFZxQ00rSHVxRHI1?=
 =?utf-8?B?dnhSbnNMWnA4VGlzVGRkc0tQQ3RYUlg5cDdSUS83MlJTVG14UjlOM1UyTm56?=
 =?utf-8?B?Uk45QVNxZWVDdFlFdzBIZnQvcEl1R1d5S3BlN0dkQXorVGFkL3JDeWkwSmlM?=
 =?utf-8?B?VEhKbEVrS094Vm5RK05ReDgvRS82OEp6cG1pUkdNaGsvVmFMMy9RNU1HMkpJ?=
 =?utf-8?B?YzZ1NjZlL0d6NlJhbUtENFpwVjBsYnpqdlNzaEUvS3VFTjl2N0ZGMGJJd3h4?=
 =?utf-8?B?TjFEaHNsWmkrM0tKeEYreFk5ZVV4L2s3RUhtWloxUy9OWFVXYk16QXdaODZ5?=
 =?utf-8?B?SzN4TzhERWdpNTh1bWViMHQ5bThFTTdLYnZJVWRtZ05zSDhxazRONFNOeDYv?=
 =?utf-8?B?L0FwUEs4cVlKOVkyWHpTZmZFL0NtMEY3c1c2VXFzSWtQVkhZUkpNMzBicHVp?=
 =?utf-8?B?M3NTN2lXTHViWXNJTTBJRzVYenR4eDd4MEhkRlRyMkViOWR6ckFoSGhqbm00?=
 =?utf-8?B?Rk5xN3NRVThNd2MvcEhxell6VExoOExZZEh3Yk00QzhPVm1OdWNKLzBSQ3JF?=
 =?utf-8?B?UVpIbUN5V05NSHpCUlU2Z3JyWUxjTk1uMnVreEhvTjJUa20yNnl0Z0dRUFVk?=
 =?utf-8?B?d2lpbWxtc1RidUk2bmtMZGk3djh4UWsrKzdWb2hFVzVDNGZzTHdQUGF3eDBE?=
 =?utf-8?B?QW4yTlorcEk1QmowNzlOT1ZRdXBTbVNBN0ZlNXpLQmNtQVE2SDhEQ1VrdElo?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a2f293-0cc8-43e2-770c-08dcc866d7da
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 20:12:01.5129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1g2HQg+n8eXKzUNRVGOdFWvF3/3Cz6MTfCPjPaMV8526fiESyraT9YHdJdtecqql0wkgmnE1ElejKrKrxk/R8IIUCq3ue1qhE0sDfGoD7bI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8764
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724962328; x=1756498328;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ewU7BF3TIJ7dUzgxChXuQcLs5bYjv/08VQ8rkvDs6HY=;
 b=AiLzr4M0H1WYhkcm9ETJ1ZtxosTvuQywwOxpCKcIHMLGeFSJbrQBAC0g
 Ey96nnpo+5QiH5LdoQk7Cg+r2qD0QJx3JEJwD4FfkiJBtQtoxDrFmGMjT
 FSTj+hjnX/zllhiJ1WO+Zc1Nhbon2ODaZAy74xcRYkABd2Hf0RhMy/ecS
 ACa4LUbOgoQ8x9j2fGlCYQDqMXxGv+0RT0FR+21Uujv+Mcc0I8QpBJkdi
 kNJzKE3saWRXVZABx9I/+Ai5zS3MOSXO3rAaFYfXAcYcEahgIZg68Jufv
 lZV1eiKMX9OkqSBsVgmKAFmtzcaLrWMhTE/niIjvPl0mtqnvUMs8KK3SF
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AiLzr4M0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 0/4]
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/2024 11:10 AM, Manoj Vishwanathan wrote:
> IDPF Virtchnl: Enhance error reporting & fix locking/workqueue issues
> 
> This patch series addresses several IDPF virtchnl issues:

How are you sending these patches? Are you sending it all in one 
command/send? The threading is not showing up correctly in Patchwork, 
though lore does show it correctly.

> * Improved error reporting for better diagnostics.
> * Fixed locking sequence in virtchnl message handling to avoid potential race conditions.
> * Converted idpf workqueues to unbound to prevent virtchnl processing delays under heavy load.
>
> Previously, CPU-bound kworkers for virtchnl processing could be starved,
> leading to transaction timeouts and connection failures.
> This was particularly problematic when IRQ traffic and user space processes contended for the same CPU.
> 
> By making the workqueues unbound, we ensure virtchnl processing is not tied to a specific CPU,
> improving responsiveness even under high system load.

This should be broken up between bugs and improvements, one for iwl-net 
(fixes) and one for iwl-next (improvements). Patches 1-3 should go to 
iwl-net and 4 to iwl-next.

All the Fixes: are not in the correct format
e.g.
WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1> 
("<title line>")' - ie: 'Fixes: 34c21fa894a1 ("idpf: implement virtchnl 
transaction manager")'

They all have 1 extra char. Patches 1 & 3 are missing the '"' and patch 
is using the wrong '"' char.

Finally, what tree are you using for your patches? Some of the patches 
don't apply to the iwl tree or the netdev tree.

For IWL patches, please use these trees (dev-queue branch)

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/

Thanks,
Tony

> ---
> V2:
>   - Dropped patch from Willem
>   - RCS/RCT variable naming
>   - Improved commit message on feddback
> v1: https://lore.kernel.org/netdev/20240813182747.1770032-2-manojvishy@google.com/T/
> 
> David Decotigny (1):
>    idpf: address an rtnl lock splat in tx timeout recovery path
> 
> Manoj Vishwanathan (2):
>    idpf: Acquire the lock before accessing the xn->salt
>    idpf: add more info during virtchnl transaction time out
> 
> Marco Leogrande (1):
>    idpf: convert workqueues to unbound
> 
>   drivers/net/ethernet/intel/idpf/idpf_main.c     | 15 ++++++++++-----
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 14 +++++++++++++-
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 12 +++++++-----
>   3 files changed, 30 insertions(+), 11 deletions(-)
> 
