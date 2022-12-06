Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098D36447AF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 16:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89E9240363;
	Tue,  6 Dec 2022 15:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89E9240363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670339530;
	bh=/I3t7SaG4oTmLUKUf7R35Zeu7O0aNvBlOCPl2ojhnko=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j/lXlpYXI5U7AAE2XIn9Xyb8ZLUyv9BtMl5mufsOXu6LZEGaqed4vNsPskcIk54A5
	 35QIZDxiNOArkkHmIrsSFZMFStxniks9g87T3VQZMwWA7W3+wfF3POVQnmVP11oE2q
	 rJkQBrCU6MsT9Il3GnsHOtPdjgyqAaGrST+JKHeCDhES4fquwaOCgQvgUNAxsQa/1C
	 ferQcVU7loyYXQquINtINk8rKTctyv0brvj652dF6hwD3RmAqBpSVjFp9QJdIXgawT
	 EuaXe+SHJqwrpU+HTDCyfyTlm9LIf4CIW7lyIfjT9RQCU+9GmEWIfJr6jgUptHmZMY
	 Bc2BSL3Nu/4FQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gjCV81weRmdi; Tue,  6 Dec 2022 15:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86F6340463;
	Tue,  6 Dec 2022 15:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86F6340463
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D872D1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 15:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B025A415F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 15:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B025A415F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBD_r82hWnR7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 15:12:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EC5B408E6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EC5B408E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 15:12:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="380938064"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="380938064"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 07:11:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="975104172"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="975104172"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 06 Dec 2022 07:11:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 07:11:47 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 07:11:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 07:11:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 07:11:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DWsKuyAL9maXvO5OHetn6UVbhUFwrRIftpLqWYnVMYXdeCNf5PbeorPftsgSsStpo7lYSnLrm9aRGeCUEWA/nSHctDoEHZFQXysKhODOvlP8SfuM3Zsionu5gMbQ2EFn99hqTZkz+xQODGaJjfSkS+Rb6aSvJIXPL3jYpFiBCPoxf9aGPLTEjfrxijbzSh9XJtsqlowOdIOO9VbmjmeyFkxAJHqJ2zfZB5dTVYWgtWjlE33380HnppBqQFMtSHnPS2PYK6M2hmmWkKz4/Mz1RIjsq0p8xZ4dkiUSF5Gv3VmJQOWbTIsEV8JgVqhaVtc0iNu2lNzGI35cpfN+JNQobQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5cNb3m/ialu5eU7YUbOMVg86yam4K1SMaXA38tZVxNk=;
 b=QvhfcAQfxJAwBSTQZwedPgHQq1a9IxBVhabB4+14o1WOCFlScmEorvp8nIC7EAqwVyM6h2+PwXjxsltRgwQrLEDJscrQx39faYoEwrePvQPqOYhBb7hGNnDla0lIdf5O6P1wvsxY057un9p3Je29Olf6OB+efj158mqvL4y641DfD/bGqUW74eBzPQXKTtatGe8GhmBxig2SkNgyIspanAp6rNgINbPBQrLVKYKfypvOBQOfusnvtoJuOJMTOUnlVeGTnVsWzMVltChuIERwZrB9exKFWDegrZZLq6On/IzmczWXu0SCl4HAdDCwFnXy5rlE5iD/qdNvS1zaK7Z3nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Tue, 6 Dec
 2022 15:11:44 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::6ce9:35:a5db:f6dc]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::6ce9:35:a5db:f6dc%5]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 15:11:44 +0000
Message-ID: <a4c46af6-c55e-2ad7-b0fa-7cac8c4706ae@intel.com>
Date: Tue, 6 Dec 2022 07:11:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
To: Gilles BULOZ <gilles.buloz@kontron.com>, <anthony.l.nguyen@intel.com>
References: <c8159652-4214-c608-2a4e-0b77ff598317@kontron.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <c8159652-4214-c608-2a4e-0b77ff598317@kontron.com>
X-ClientProxiedBy: BYAPR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:a03:40::20) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SN7PR11MB7468:EE_
X-MS-Office365-Filtering-Correlation-Id: c21ef4a0-cd79-432a-aae0-08dad79c2fe4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b+1z7oLAbHKPj6bIKLotN84WRSHYQ1lfPgwaAvGunCWNLOV8O86YStSJ8UkxNRpXFO5oDjcCmNQX7QyGS7TwBzrZg5dr73HHwQknPWaM9RDhLIsUsJaJvCwnekS2mv3CF0Lc4XQLrHmWeUmo3zS+mNAZBRQXmooscy/wDiVIWhLeMQVNjpM7L7hwhTEWjFS+HfAoYVbi3VaZrqyAf9Knqg/wuHUXX2xvaogB9nHvWFB++Jq/+Aux8dveWoQKOcyT2WuabeEYLftwFEH3nj+Umc/tVjWfJzjxkQ4uCaJBBa1CXUmVw4dMqqTB3DXd07aTqWXnEaYkjtPxYHEKdcPWp1SLjGlK5d2wEajjfwWEekMv689ZB5bl/EnS8A1T5q86K7gV6VqoAC5zursWsK/1BidnRDJlrJC437Aom2Tz2RZ5Cf96Ng/+eGW0m9pYAp/2+7CGSlp4QMr0F+L6zg9gjq81MMaShSspBZTOPGfB3U4FhhS6X9vz2VgSeXUzAEKjQFfOyHRLQmi/JdWuj75pIZHtLNqEvNExi9wFjCfVy5Ng760KKpV1Nnc/nq76VRCj4hkWAZAw7eZDayK4C6ShXwkk6a79dNLO0nb5Rm+iKwU+HYCnfnKc/a6yhQitsEqfeoA+NjxWFZmufsKWfdDcqOPzVO+fOwdP+YhTpOAFt2uB5SnGcK1v06/JqJED7UxbVe0F8VtcueXUTsCsH7viTB7hh40AgsYOeNj74XOiv1g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(8676002)(66946007)(31686004)(66556008)(4326008)(66476007)(316002)(6636002)(38100700002)(2616005)(4744005)(186003)(2906002)(36756003)(31696002)(41300700001)(86362001)(82960400001)(53546011)(6486002)(478600001)(26005)(6506007)(6512007)(5660300002)(44832011)(8936002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1NnMVF5VTVTYk8rTkp0K2Yvc0lvQWs5RkxMYWZCWTY3dUtYb05lZzRpRkU3?=
 =?utf-8?B?RURGY1VLcm9nSGVFN1FGeHg5N3ZadmRKcm5tYjRhd2NVMk1wV0NpV3Fndzlh?=
 =?utf-8?B?dlR1RGVHTTlJMUJ4aGROSmk4ZWZjOEcrWUU5OGtFSG1xOGFHeFliRjJneFAz?=
 =?utf-8?B?WktXRFo0d3NyZSthOFkxVzZrOUxEU2p5LzlzRTdyOFczUGFIeDlkQzFoUUk5?=
 =?utf-8?B?NlNpcXM5ejVGVU5LYWY5UG40YmNTNlA4U0pQQy9RNGQ0NTZpQTQ5cmNodlgw?=
 =?utf-8?B?VURaSTNQMWhWREFWc1dRaWxHd2ZLZjZFTDhLZEFkMGJiZGQ0VmwvU21lWHRG?=
 =?utf-8?B?TjF2WDdEbk5rbXhzcFBjVGY0WUZJNnh2NGc2bUhpa25hV1FHclo1QXJBN0Ny?=
 =?utf-8?B?QnZlb2N5M3J2c1g4bVlYTmdRSlNYeXFqMlBCY2dDdEw3emlMZDN4K0NrbXY4?=
 =?utf-8?B?aGRHV1EyYkVNZnJwTVBrWlh1ckcwQk9QSFFUN0pENk9DRHR0ZU1vOHg0Y3Ni?=
 =?utf-8?B?Zzlqa05qaFNxME93SUxiZk9zTUNFNlp1T2hTL1FDVVpINnhhQ2xWM1h3Zll3?=
 =?utf-8?B?VFQyVVRSakZKdEluNUpyRytxckhmdWJ6REQ1dTk1VFl5VzFzNkdjWWU1QmNV?=
 =?utf-8?B?dmJFTE1wYkNDNTcydjEzKyszNjdYbnc3Tld4a2wrZHVZVzg3WVRZam5hYW1E?=
 =?utf-8?B?RzhMbkhIQkFSSmMyZ2tpQllYWGxkWEppNy9ub0VXS2dBOGxXVWxmcWhpUFZo?=
 =?utf-8?B?bHVLVU11QzVVRkN2bUNKZ3o1cnArOFEwVFExZ0xHdDM5QTdtYUlQMVlJN3ZE?=
 =?utf-8?B?REZGV3J4djBGZ01BYVlGL2ptTXl0elRXelNZSy9SWkRGd2Nrbm1LMUJLdVJ1?=
 =?utf-8?B?bkNhaTN2Wi9YTlhzZEptSVZBYWVETkpDOXVlS3lUSVRJUGFHdk1tMzVEeTBv?=
 =?utf-8?B?dXBackVRTTduTG03WjQrSEthVTRKbjh1eTMvZC9qQWNvMktFdFVMMnlITFBx?=
 =?utf-8?B?eDRZYzhOaldiME15dVRNTDRzTEt6cFJvU29icmY3QWZUZkdaYmNGUGFVL1lK?=
 =?utf-8?B?b2FxMms0cWxhemo0VlhVU04zWllkaCtWQi9FckFHU3FnRGNNWVNHZXdNWVdl?=
 =?utf-8?B?ZGR0QVdEWEVhdVZtaHFBSmJQM1RsQVlyS09uSksvT0FtTU5zQ2UxdTRqNnlm?=
 =?utf-8?B?RlZqd1YyZHNIRm40VUM0TmdNTzZnSUgvWndhM3BqMGtUaVV3VVg1V2VyQm5C?=
 =?utf-8?B?aDBGMjM5Rmxicy9SekRid3JWZ0FUcmJvMG5Teno2a0cyS1BNbDlTOWFTcHBH?=
 =?utf-8?B?eGs3THFWU1k2ZnBKdUJQZVFidzZVVXFQQ0JPOXN0VEhNWTE4ZDlkL1hvN1h5?=
 =?utf-8?B?bWUxdGZLOFdDUkFXUkVpbHFFb2g2aFRueHFJeVp0eUQwVE5ZQjZEbmlkc1Zj?=
 =?utf-8?B?Tm1hUmVFeStsQitFRXhEQXJTbU1NenVvSldiZlVBNHBTcHFGckNpNjcwMUhE?=
 =?utf-8?B?STRlblNma2N6VzZsc3k2OGRKTHhuYkxxZXgrZExybDZKT3pkZzBMdkxXODJi?=
 =?utf-8?B?UzRpdnFXUUM3RXBrUUxERU1GMEF4cTdocTc4c2dIYTQ0eFU5ZUoxWk54TDJ4?=
 =?utf-8?B?dENYVjk5b3lFTXRna3N3MldydzY4VnhQZFRQMEFReW9HTkdoRStXdEpUQ3dx?=
 =?utf-8?B?UER4VVRYdUwrNXZ6QTVHeUZvZDQxQ2RwWCtHRDZHYU9pSDNPTjgvWFdoYUZk?=
 =?utf-8?B?TUFiRDVFVDVHZ1h4WVRpSlRTSERpMHVoRFlpUk5ic290ajAySGs0dS9BaEpu?=
 =?utf-8?B?TytSV2hHWGMxWEs5Z1RUb2NpVzc3TnBJRFU4L1ZkekJ4dnRZdXQ1ekxWbitt?=
 =?utf-8?B?SnU5NlRRWmhKNGxGTmZ1VS81dHc0T0lyM3ZhUEZQL1RmZ08rbmNEME05cDU2?=
 =?utf-8?B?clREZnpxYStmU21OL0tORnB1OVF5UFZIQnQ4Snl4aDZ4RXpYZ0VBYjVPUTdG?=
 =?utf-8?B?MU9tSHRLNEgyMTBDcVB6MmZLRkQva05FMGVZU0R0OGVZV0hYUlJZd0g4R3ha?=
 =?utf-8?B?U3R3THhsOUZCSjJXbGNLeTJNZ1kzYU9DRTFDMDJNV0grNTVvcnZyblUwdWFj?=
 =?utf-8?B?Z3I5dngyMnRmcUhscVdhTjZRVWVVTCtUcDlHMXc5ZTkxSDFGa29rMFNOK2lX?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c21ef4a0-cd79-432a-aae0-08dad79c2fe4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 15:11:44.6762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /qtZvEbJ1zaNeP7XDOrtTKvzgZKxuQLjW1Twk/xUIJLGlXw8uAEMBWsrBXDmQMwXaNiMHJCkoTFwANRbP1Yet+gPmUGd6LfEV5ZfTFT7NXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670339522; x=1701875522;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZYOnQQ/XmZSi71ORq883wHIwsibFTrssrGilk0lyxTw=;
 b=Ck07UeLaSW0V+EZC1/YGCvEwDRgYIdxZvJAYF+EPstJuNCcuPTpisGRj
 mzoKRTfYnY28BU8dEL65asqZyd95f5uGSu+wZ30EQWFlkdKNaY2Y8fPm5
 YmRy11LcAboX4VeShVKEpErk+ukFINzGEtkU9dZMON+NsKCc2b8Ckq5/S
 HRjnLy+Ah/aJR7CLmlO7HMTL9rn5nG9ujkLHEPd7i3A7ZF3N4CMVxKvUA
 jxkgV7lI1rICl0yvCeOZ2X21dCj2/5BLboVTwCaJY31BiDpy3vP5Kxw7e
 Wh2f1KlrZgo2OTiWCeS2H8Z/buxz7bDyXwBxiumxIhjJgkGM2bG4Q5dnK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ck07UeLa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] XL710 / i225 / E810 : get temperature from
 Linux
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/2/2022 6:25 AM, Gilles BULOZ wrote:
> Dear maintainers,
> 
> Is it possible to read the temperature of the XL710 / i225 / E810 chips 
> from Linux ?
> Is there so demo code somewhere ?
> Our "Intel Premier support" did not help on this.
> Thanks a lot for your help.

Hi Gilles, yes, it's possible to read the temp from XL710 and E810 via 
IPMI (typically - it's platform dependent).

I'll reach out to you off list.

Jesse

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
