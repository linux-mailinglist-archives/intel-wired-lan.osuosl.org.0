Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 138378BCAC0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 11:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E35C3607B2;
	Mon,  6 May 2024 09:36:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOtFUAZvRbZL; Mon,  6 May 2024 09:36:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47706607CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714988166;
	bh=sWuFwp7Z0FN1+a6rOCTIYBiGRG4PJhrtiUSSoSSZxsU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5hMLbQyNriq8vRXq+7LSptHCjNQyPk4cFMQkZXSJRckO3g8g77hsxM1ss3SZ0TOIP
	 HM0wf5Gs67XAl3w07kgT0RqZJ2otENew+24qi63V+8qPBcoCDIJtbPSykS+pMdgRSa
	 ZXViipsLlkCkv0S/GOD0Kpe7ahcptZGtCoDeGp1DhZ3lpv8ho33nGbAgV23SBI9786
	 7oskGIeCDoE/n/fe4yUwdgVNJJzNfRrOOuGE2NAWhmmEnmlYnCbPFox4O1zHCgQz/r
	 e0Kew1xfDIF3AJVS2kkNmTS+8VUe6JcoG24YfCDb/CjRPB/OULDu8hvmGWc/iwdxj3
	 rT1KMnKkBjA+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47706607CE;
	Mon,  6 May 2024 09:36:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 665081BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5277160661
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:36:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8zFafT0webWl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 09:36:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36BCD605F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36BCD605F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36BCD605F6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:36:03 +0000 (UTC)
X-CSE-ConnectionGUID: Y39tU0VZQ/ezuYtSyEFpJA==
X-CSE-MsgGUID: RazL/QdzQCGmGUM0p6pQDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14540804"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="14540804"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:36:02 -0700
X-CSE-ConnectionGUID: KRZvl8zCQM6mdUPsxhwAzg==
X-CSE-MsgGUID: VguOAz3HTriRwIMTx0RWcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="51300427"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 02:36:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 02:36:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 02:36:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 02:36:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 02:36:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWNRo6I48jf5fDz9J8RJjGHzGQpXEk/DwGppE8YP+r1ibrhZU/+ld7cHWLCM9FzSkmRZQt0/cFMiLXKT/8xz7qVTJJO6TZHKfaQCQmroughbqtu8sphYh0xZ+XfLsvXba8UqRSSNCRcOhAvp8q1PmIxHlAY1aUARHgV8wqgZa1LLt05r1vRdlCuLJyBxoKCpgH9hx+GTUIPkIl5nbpgLYJdBBIzS2SDwsvH41gM35zpSfH0uPXuJeX/+IqMYT+LcWf0UxqQek9Ngne9AtR5S2EesmiYNIXSTA7ZbYnrrfdRjPbfxSMqkKYPst70NLIa8gVKmvOxxF1QUbkage/t4bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sWuFwp7Z0FN1+a6rOCTIYBiGRG4PJhrtiUSSoSSZxsU=;
 b=c+vTvoFnX/VrigDW0J4ddehsyZCdTUH8clgJ1rDkflHRyJt90cp0a5+hODaqXj9Cm7mUNeAP5OtIYyDsx5G8o0SN5GsvfC+b0hM+KgpynUhBvSaZOO8KO7BZvjtwu+jx1Da3GjvQUfS2amUwWElmrC5xzwOz0SNFlzGk0GldPRptUqvSv25YuHMEuJ4zYvMqihdnYkfvee4T0FECUoemGQdW/fZWQZbfetQX2yKV9pRwmJWbVICEX0/sHSxjPGZS3nh8u6rSkmJpYY9jMLEHR9PvYYihJJ+D5MkWOOB6wZA3aYTzSWv008t1LDAaN3X4nqsRViDSqaZvWXXrjCwmuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB4975.namprd11.prod.outlook.com (2603:10b6:a03:2d0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 6 May
 2024 09:35:58 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 09:35:58 +0000
Message-ID: <c47dc55f-9ef7-4a18-8419-fca4afb605b0@intel.com>
Date: Mon, 6 May 2024 11:35:52 +0200
User-Agent: Mozilla Thunderbird
To: Thinh Tran <thinhtr@linux.ibm.com>, <netdev@vger.kernel.org>,
 <kuba@kernel.org>, <anthony.l.nguyen@intel.com>,
 <aleksandr.loktionov@intel.com>
References: <20240503152509.372-1-thinhtr@linux.ibm.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240503152509.372-1-thinhtr@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB4975:EE_
X-MS-Office365-Filtering-Correlation-Id: 147642ed-8aa0-4feb-e1f7-08dc6dafef25
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Uzk4d3VvMDNXYzFrdHdNVW8ya2ViWGw3Z3c2TWVTYmtxbFVheGFQTjd4bGJT?=
 =?utf-8?B?Tmwxbnowa1lZOVRCNWxzay9RSHVZdS9WalZ2OEV0a1l3OUp5eUcycXlUanVO?=
 =?utf-8?B?c2ZTeGY3MjFmWHJvUlNsSXJVN3RzY3JIU0pDYS90YVlsRUNZbXQ4L3lxdlp0?=
 =?utf-8?B?c2dZaFpia1QzWEJ3aXJEb3hBalJZS2IybitNbHBOZHNvZ05oU2w2ei9SS2pm?=
 =?utf-8?B?VGpjaktoZWdLODdLNEJGdGFTWE9SMktSVXlmV0o1cDFGYWNZS05IMUxXUDd6?=
 =?utf-8?B?SFR4V0o5ZU1rc3BxMEJFUVd3WTFSZ0Izam1xSFYrZDdsbGVuK3lTVGh3RVY2?=
 =?utf-8?B?MEZGbitXR1pDckw3cVlhOGNOVklZNkRMbDh2bzNzNE9oSmFvMFRGck9YV0hD?=
 =?utf-8?B?dG5RRWJVT1NKZkRMRGRQTkNGci9nUm45dytpRjZ4VlpIay8zdFU2bTFRWDNi?=
 =?utf-8?B?M2NwSTAzRjk4T1hxYnIwWnA1SU1EK2JOeC9zVmtEa1pzK0tvSlBnYlRkYlVU?=
 =?utf-8?B?UFhLaFljOTJ0YnZjMTNaUHFpVnFhc0tXRExIdmRsN1ZON3czUkVBaVlUeHBr?=
 =?utf-8?B?Q3B4eHdxS0RKTWJ2ZWlBeituRGJLMU5wam9xMk9CNXhkcmZuWGJvQ1B6OXh1?=
 =?utf-8?B?aGVsL1d2VGxidHptUFhRUmdMWVg1MDMxSEI4dG9LTDVZd3kwY0N5YVF2dHFo?=
 =?utf-8?B?SUdvSm55c0RSKzNicTZ2UnYvc2RmMmRGUitQUHc4bFBBZ2VQcE1obzNZMnBX?=
 =?utf-8?B?RXVRSk4za1RUdENwaVBvK2xzdEhuSUJ2OWhZSFpmVGVqbGU3S3J3U2I3Zk9r?=
 =?utf-8?B?SkF2ZktXVkQ3UDkrVGNTQ0ZCdHVrZS9Lbmc1cGRpM1orNlhVVkxRZnl4cUNU?=
 =?utf-8?B?TXI4TU5sWm1UVlFLanhGT0FOUXJrR0IxUmhScGJRcDFSNm9NNGJuMjhwb1VU?=
 =?utf-8?B?ZjhWRGRiaWt6MmNlUzZCUVk3a0ZlZEx6cU9sNmg4SkpaczRZWE54RU9iR2xp?=
 =?utf-8?B?ZWhpd0t5QzQzVW9DTWplVWthc3dwVG4rTlgyNlRVUWhFUHBRNlVGNWhHZkRD?=
 =?utf-8?B?d2Rob3NkeUlOREN2RkFJbzBMYWxJb0JKUUxLcEdIS3dMWm1aZm1lVU9YS0NK?=
 =?utf-8?B?djNzbVcvQnNTa3ovck9JRGE2UVdDRzBPWE1LSXRLQVh4dnlISVRiWU5zSFNi?=
 =?utf-8?B?aEsvZlhPeVZESFk3VWMyZnlmMUhiVDlkdHZKT2ZabmFWTjVyN0Y1M0dxdGd3?=
 =?utf-8?B?enFTN3kzMHYxNEFsa2pCUHZmd3FjWlN0NlRWcVF6ZTNSTHpMdGlhQmpoSkJi?=
 =?utf-8?B?UFlleHFCUTZRaThUZzk3cUVyRmpGVlVHeDhGZGFPeVh0WHZNellWM282WUpQ?=
 =?utf-8?B?bjdGZ3VlaTJsVldUU1FmSkpqd1lmekZOZG50elVuK1R4UFJsYUdiY0JQTHZj?=
 =?utf-8?B?eUc5eHhwRHdtTkZXdXV6cHhiUFdzSDIvVDY0R1pJbmptbTRPMDMydXVZSldB?=
 =?utf-8?B?N29tQzN6K2lqT1VYUUtCcG1IelNsc0NvTmE2endvb0NpdDZBejhHak05L1hU?=
 =?utf-8?B?RzVsM2NVbmN5aTErZ0xCLy9vR1dRVDhobFN0S2dhOHpHQm92RkhxYnVCSmRV?=
 =?utf-8?B?QkRBdUVhODRWNHpFQjh3ZFNRU3pBYkpxSWZhRUpVdmIza2tEOGNaYkxRMjJ5?=
 =?utf-8?B?RkpPYnlNYVpib0xCbFRwVjFxZlBVVDdTbmVNQ0QrUGFuSVlFem9hTkdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVBLSU11YW1naXZFQ1FSWm1OeDJab1NmNnFtaGZPMXM4S2NHTDB5Zk9oanNr?=
 =?utf-8?B?Z3duRTZTS0t0SEpvblhLb0RLbWs3WWY4OWZYVWlUNHZ3T0ZLV25yck1mQXBx?=
 =?utf-8?B?NG9HaytUT2RMbDNYMDVXcEJHalo1QUpzRi9UdjJwc3pXVHNnOTU4SS90V2Jw?=
 =?utf-8?B?R1RVRUFsRUpmZzMyY2JoWWNpUm5Jckl6Rk40MjkyYWJZNU1XakNmc2tseFFJ?=
 =?utf-8?B?Rk5xVVFjcThHWjRlY0U5Wlpib1dZc09ZTlM3Yk1TK3pYRHFhSy9YZlB3d0Zx?=
 =?utf-8?B?V1RMNlB0eE9pMjliL3lhandpdjFIVmxUaDBuV1ZjSmxqMTZ6eG5MdERLR0Zr?=
 =?utf-8?B?UzA1ak1xVURyQWpCUXFBekd1REtVRkZhRm04eWpFNm1ROUhRWlprR3drY0R3?=
 =?utf-8?B?Qy9iYU5ZaTA4SGNNdGtqZENPVzFUVUw3N05NS2FDOENZYWsyaUVRb0hWRHUw?=
 =?utf-8?B?ZzRPNkRWQmVQZW8vNkVLTGVRL1N1dEwwSmhzN3hsblhTR3UvZHBhekRsZHU0?=
 =?utf-8?B?akM3RjFUL3JRSTZDdW9JRFVuM3dtRUtpMktJYWxZcXVnUnFtZW53WEhDRDNl?=
 =?utf-8?B?aEhqRDlab0hOSHNmS2Z4THNSQXdMN0dzRzlWWnhTdEZVVEZFeEVneitWTndj?=
 =?utf-8?B?aUw3a0IvRlY0bHRvVVMvT0RTY21JTGo0R0IyWUM5QndQSm9FVDRYS3FVTXNI?=
 =?utf-8?B?N21IUG9pTVVLU0x2MDlUVDZCS2JPeTR5blgzTVU5NElIRXJOQTcxNU96Ynpn?=
 =?utf-8?B?UFdkNTJuM2tFbXJxd2tJa1RRS1pxckk5LzQwZ0tjL2xKajB6NXZXQUhiVlZ5?=
 =?utf-8?B?WTdiYUFwbjM0dUdSdFdsM0RXOTg4NHdxcGIrL2FrdkhZVnR4MWxzTVVjQkth?=
 =?utf-8?B?NzVqZURkTmNqNmxRMWN1dFYwTjdPRGcyV1I2NGw0VlhxTDA2SlJuTFloVEtU?=
 =?utf-8?B?Qk9ra0tpSFJwQXMyaFlNU1BrR3dhVUg3SExHQVlQTVk4TDMzZUYyMlcyK0xn?=
 =?utf-8?B?cEorRENDamJKUkh4RUQ3dG9YWGxmZk0vcjlRMjhTQ09Hc1hteExQdExoM2kv?=
 =?utf-8?B?N0dYRHo5TnQwVkNqTUk2V2xNVVhoQVJjNnh0Z0krcUs1OE9DL3dXaDZIL2pu?=
 =?utf-8?B?R2JsTy9MQ3N3c2Z2enFxdzF1S0lvTVZvQWFrUE9RcjdrQjdaelNkWmxJVjZ0?=
 =?utf-8?B?dFFUZFZ6RE0zdklmME1FYUtveWlHUjBCWUtjZTB6SFhHNXNUWDB0M04vbVRi?=
 =?utf-8?B?OEVBMFcvL3RyV2l0b0swRjFnNE55N3d5UVp3eDlPS25MYWsxQzkyZGNVdUhM?=
 =?utf-8?B?TmtDSGs3dEt3amh2VWpoYUhKc3haL3E2L3BCQWdvdlBRRndnOHovQ3c2Uldq?=
 =?utf-8?B?VGxkYXJycXM0UjFBQXpiNkpmUy83M0ZHN2hudkFnTE5EdEh6ajZ2cXpXdnVu?=
 =?utf-8?B?QWYvQmNNQzBrOGhmN3hwQzM5NDQ0L1NmcExScE80czAzWUNRby8yVGh0RnFh?=
 =?utf-8?B?dGwyYXZ0Z0RFU1JOZjBzRlFJVktXSEFQR25mMjQ0Q3A5bVczdG5wWHhiMGha?=
 =?utf-8?B?dFp4RC9zQks3c1BQWlM5cmd0TU5BVlp0SFhGc0FIYTFlUHUxUGpUM3h3YzIz?=
 =?utf-8?B?cVVBYVB0ZzVPNEt1SkgyaUFJOHpwMm9sSENycjVKM21YQWJDSWVleUtMbGZJ?=
 =?utf-8?B?bVJ2dUVwZ3l5OUd2cmd2SUdtQTFmN3htL25GQzVTOUttRWJNUFlqVUN0R3Iz?=
 =?utf-8?B?Um9FRWh1ejJvUThTb0R6bVY5ZG54VmdvWitTbmlvRmZ3V2pxclp4dnpJdVRU?=
 =?utf-8?B?Mm5rMjdGQzVJUUtEeFVXa1p2Wi9HY3dlZlN4SzRMZjEranVMK0FrakpDSC85?=
 =?utf-8?B?Z3M3c0t1d0hBNCswZFFKb01ZM25JTTlheVVScUFsOEIrYjEzR05kZTRBL3VR?=
 =?utf-8?B?ekgyT2ZQOVBDa0hlbTFXOHRVTTZYMzF6TjJ1RDFic01JU1lJKyt0bkFxNFQw?=
 =?utf-8?B?ZGw4cEdaNGJVN3U2bUFhZmtPL1gxS2pyZ2h0bmZIMjcxdEE3ZFRSZUIvdnha?=
 =?utf-8?B?K3pKVEt3TE9hOGF1QTdRNUpseU1LajFwWnVvN3ZKSW9yb3BpL09uTGtBdzMz?=
 =?utf-8?B?N2hmSFJ2VnRQUkcvM2ZVMEc0a1A1U25UWHNCVHozMHl4aHpZZllnL3VKcy81?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 147642ed-8aa0-4feb-e1f7-08dc6dafef25
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 09:35:58.0568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hz1mUPGVcAD++YhRW412bzXuLaoUa0px3F26GodEG5eB1lDSPfW3LBlFjbsYsCILIRYnS4Q2M1pE/FOOvXcxAnT7lS4ueycxs157yUVh2+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4975
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988163; x=1746524163;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iUTN2trkpbkp9+jRI2DxMYkoG4Devj1dWgctsEb1eGs=;
 b=nAiSvOL6PdnMRvNkMs/dCmqzBMv5ftZxJ0zzTdUpSVEzWgP50VdPafXm
 fnXIE7wfG3WlSn5eaugSWND+KPKcCuN2RtiUytWvEKDBnHnARHtEC0caL
 uh0op+5LilYgra8Xq/Q2zUQhvd2kf0ncYuX8S9V0cZTaIJg8ZD23hNNq7
 YK2OZnjE8DbwpyEACVs2cPPOXazBNqoAGKU4KTSdydngsl/V0kDqXjvnz
 Cg+2LR0Mmkk2Tq9ynMCvOn5mBDJHq1RvALHLtATbGlm93SwoRjRwxpLxR
 JmOJChex4HBd0pPpNLSyUcR/LmN+Yw/agLiSmPk1grb4DaX0o1Oc19s98
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nAiSvOL6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix repeated EEH
 reports in MSI domain
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
Cc: edumazet@google.com, Robert Thomas <rob.thomas@ibm.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/3/24 17:25, Thinh Tran wrote:
> The patch fixes an issue when repeated EEH reports with a single error
> on the bus of Intel X710 4-port 10G Base-T adapter, in the MSI domain
> causing the devices to be permanently disabled.  It fully resets and
> restart the devices when handling the PCI EEH error.
> 
> Two new functions, i40e_io_suspend() and i40e_io_resume(), have been
> introduced.  These functions were refactor from the existing
> i40e_suspend() and i40e_resume() respectively.  This refactoring was
> done due to concerns about the logic of the I40E_SUSPENSED state, which
> caused the device not able to recover.  The functios are now used in the

s/functios/functions/

> EEH handling for device suspend/resume callbacks.
> 
> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>    with i40e_io_suspend(). The chance is to fully suspend all I/O
>    operations

it's only a chance? (perhaps a typo)

> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>    with pci_enable_device(). This change enables both I/O and memory of
>    the device.
> 
> - In the PCI error resume callback, replace i40e_handle_reset_warning()
>    with i40e_io_resume(). This change allows the system to resume I/O
>    operations
> 
> Fixes: a5f3d2c17b07 ("powerpc/pseries/pci: Add MSI domains")
> 
> Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
> Tested-by: Robert Thomas <rob.thomas@ibm.com>

In general do not add a blank line after Fixes tag.
Someone could complain that i40e driver had a bug prior to the cited
core commit, but for more practical purposes I find it good as is.
When you are a sender of the patch, it's good to place your Signed-off
as a last tag.

> 
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++++++++++++-----
>   1 file changed, 22 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 48b9ddb2b1b3..58418aa9231e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -54,6 +54,9 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
>   				 enum i40e_admin_queue_opc list_type);
>   static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf);
>   
> +static int i40e_io_suspend(struct i40e_pf *pf);
> +static int i40e_io_resume(struct i40e_pf *pf);

I appreciate your effort to minimize changed lines to have a fix better
visible, however we avoid forward declarations in .c files.
I would split this into two commits - the first to just factor out/move
functions w/o functional changes, then second one with a logic fix.

> +
>   /* i40e_pci_tbl - PCI Device ID Table
>    *
>    * Last entry must be all 0s
> @@ -11138,6 +11141,8 @@ static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
>   	ret = i40e_reset(pf);
>   	if (!ret)
>   		i40e_rebuild(pf, reinit, lock_acquired);
> +	else
> +		dev_err(&pf->pdev->dev, "%s: i40e_reset() FAILED", __func__);
>   }
>   
>   /**
> @@ -16327,7 +16332,7 @@ static pci_ers_result_t i40e_pci_error_detected(struct pci_dev *pdev,
>   
>   	/* shutdown all operations */
>   	if (!test_bit(__I40E_SUSPENDED, pf->state))
> -		i40e_prep_for_reset(pf);
> +		i40e_io_suspend(pf);
>   
>   	/* Request a slot reset */
>   	return PCI_ERS_RESULT_NEED_RESET;
> @@ -16349,7 +16354,8 @@ static pci_ers_result_t i40e_pci_error_slot_reset(struct pci_dev *pdev)
>   	u32 reg;
>   
>   	dev_dbg(&pdev->dev, "%s\n", __func__);
> -	if (pci_enable_device_mem(pdev)) {
> +	/* enable I/O and memory of the device  */
> +	if (pci_enable_device(pdev)) {
>   		dev_info(&pdev->dev,
>   			 "Cannot re-enable PCI device after reset.\n");
>   		result = PCI_ERS_RESULT_DISCONNECT;
> @@ -16411,8 +16417,7 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
>   	dev_dbg(&pdev->dev, "%s\n", __func__);
>   	if (test_bit(__I40E_SUSPENDED, pf->state))
>   		return;
> -
> -	i40e_handle_reset_warning(pf, false);
> +	i40e_io_resume(pf);
>   }
>   
>   /**
> @@ -16521,11 +16526,16 @@ static void i40e_shutdown(struct pci_dev *pdev)
>   static int __maybe_unused i40e_suspend(struct device *dev)
>   {
>   	struct i40e_pf *pf = dev_get_drvdata(dev);
> -	struct i40e_hw *hw = &pf->hw;
>   
>   	/* If we're already suspended, then there is nothing to do */
>   	if (test_and_set_bit(__I40E_SUSPENDED, pf->state))
>   		return 0;
> +	return i40e_io_suspend(pf);
> +}
> +
> +static int i40e_io_suspend(struct i40e_pf *pf)
> +{
> +	struct i40e_hw *hw = &pf->hw;
>   
>   	set_bit(__I40E_DOWN, pf->state);
>   
> @@ -16572,11 +16582,16 @@ static int __maybe_unused i40e_suspend(struct device *dev)
>   static int __maybe_unused i40e_resume(struct device *dev)
>   {
>   	struct i40e_pf *pf = dev_get_drvdata(dev);
> -	int err;
>   
>   	/* If we're not suspended, then there is nothing to do */
>   	if (!test_bit(__I40E_SUSPENDED, pf->state))
>   		return 0;
> +	return i40e_io_resume(pf);
> +}
> +
> +static int i40e_io_resume(struct i40e_pf *pf)
> +{
> +	int err;
>   
>   	/* We need to hold the RTNL lock prior to restoring interrupt schemes,
>   	 * since we're going to be restoring queues
> @@ -16588,7 +16603,7 @@ static int __maybe_unused i40e_resume(struct device *dev)
>   	 */
>   	err = i40e_restore_interrupt_scheme(pf);
>   	if (err) {
> -		dev_err(dev, "Cannot restore interrupt scheme: %d\n",
> +		dev_err(&pf->pdev->dev, "Cannot restore interrupt scheme: %d\n",
>   			err);
>   	}
>   

