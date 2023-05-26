Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E23713010
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 00:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7B9F83B9B;
	Fri, 26 May 2023 22:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7B9F83B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685140154;
	bh=oEdzxZsLE3tm+BMDP++9UhY4DGxBewJp3KqvBJ/48Ts=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FIEzyNHJag7bzYZt/SiIlMxNWUQZONNjxJyGXPY6u2na/PPdgcpag7JORciOZGPtc
	 2SiuFAGU9zXS2wXZChOuc7dlE9tiRUuuZDjh0BwyXyDXKxSkRboK/ca+tREJHd4dhz
	 8QD/VQSKBdBZBqiML2Atm9/Db9yrJk2Q7pPUuXfG26H4soums5DCZtbS4nJwmSDIT5
	 F0MxZgJQUyzXBjULc+MFkUXtziH21d9DinuwXad7SLBEAekmQ8uxc9c0ECn2+Jmgqh
	 +IyW9mSyIpqfYPNdur7vLeYwe4hm5lL9nguViPz9nzioVYpuzibE0dk8zC+I1CO5k3
	 IXrm2JnpqJaGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2r10H5HWrvR; Fri, 26 May 2023 22:29:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2C3483AF0;
	Fri, 26 May 2023 22:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2C3483AF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED8DF1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0B3283AF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0B3283AF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfu7jeVevGpG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 22:29:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDC2983AD9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDC2983AD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:29:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="357572571"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="357572571"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:29:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="1035513181"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="1035513181"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2023 15:29:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 15:29:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 15:29:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 26 May 2023 15:29:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 26 May 2023 15:29:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3XjMYzRAXHDjak3nd+5aNYtFwL9Vvgjx5DfMdgy2klRSfa2nTgvxjv5m01zcW6jA6WqbUBGy+lJblQ3kN+osPKRpioDaiY802zT2lkawg0QbkRrtkA897JPtPQVS7NKv8KbHXF967Pb7rYOmjSX7lRPUT8WCZac3l8ZsrK8ZaQHVWZBZEJyfcIsL864DAjqzUYcqP3tM99kq7VFOjbO4ExDbPWNeNoksn+pJnE7ps9XENdCSDiO1KnyNXiYge97ClkJFpDd8mHI1njltFOTCeIM1qECe5MUErwY6hAgz/YxlLfsTtjbwOIWR3va97tOEn6vFFDF46cwPjqGfLaA8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6+agSa75NWuKP+lTUZgGwgBbFXHeEm+Ul8uvOKm9Gc=;
 b=V4S3In78xqkBw4VnjdXwsGnHJ7GjF2o2P0ExjJjymfjPPI1mS5HUQr8TAatK5CgXIOUxBGL8kw1nFwiKTYo4+3d3SF/r4FEkWU3rexgoaR64hoEUFJOoYdH35cuPtZl/OekAUdSBAD4t/zWiiBv+bZqfH4WTpAqQXAOswlgePTCQkHmCH9cafHymZ5g4hxoRLVzkNaRHu2S2sNLAGoY7L+KYPvQ8bmwvbbeqb19VVjmGwOv+xL+qUGEVuUyxBGa+NxjyAHDYM4iNYCiJFA34F6tmQu02LSLgqQ9UViHX3S9lI461+De5y5SY2DBGRJNSbZ8i7NKHm3ATB3FkyxExBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4919.namprd11.prod.outlook.com (2603:10b6:510:34::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Fri, 26 May
 2023 22:29:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::27fc:4cc8:6fea:1584]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::27fc:4cc8:6fea:1584%6]) with mapi id 15.20.6433.015; Fri, 26 May 2023
 22:28:59 +0000
Message-ID: <b95db8f1-86d7-1fa4-4b7a-6a90d7ba7a57@intel.com>
Date: Fri, 26 May 2023 15:28:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
 <20230526222158.2685796-4-jacob.e.keller@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230526222158.2685796-4-jacob.e.keller@intel.com>
X-ClientProxiedBy: BY3PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:a03:254::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB4919:EE_
X-MS-Office365-Filtering-Correlation-Id: 2de70d49-5daa-49a4-f2f0-08db5e3899db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: efiqrNf+pXyF0OWqOeIbOD7/D+SM7BSZQEyH/jaYrGrInaWxJfXNpXGxdDS2lCo4GYIg3+iVZ4SY1ah+7lz3Rs+GboNkgSAYLUt62eo1Ob4k/M8Ftb84d7esX/yOvuKSxPJZ+AdokCr1HBrhVI205xdMvbpVvJT3BjibQUuDZptKSuCd9HOduvhrT0kw1u6lLwovjdKB+ZhZjIAElTVi+73dn98pCYctF22t57p9KDiN50F8JtbO2hvJQ5h8sV+xPZZqGNWgEprKIiJ8GSAna9OTBT6bkg9UGgmZFj4On343Nfpjlbw5Bufrr8bSpNRGQWwwRHxwx0ARyGhdCmF/HF/KI0ppNWf+qi4quL0FuznBWCKMsnm7TuVCFD4Jkc74/PVx4o0hR8KfZPE99T/b2CwXZJI5WyKCuhgDCOsra/sL2MTDxUEhnAlgTqGKrxmTRNz8mknENWKntlXbz5EHgUqNjlcUknAbi969Mwjn9sQQsySCd8NCvlyMWjE3XWaRY8xZ9sLV6AiKiuwscbyj5tSCuH/OpnqOi+A4MZPMTGQ4oaK6ulEKIvf0Zoci0I6X9MIcwENSd5wRdQDOAX5Y/E2vXLNqzzKDP+2EtX8zhxRcsU6fUdHDcYqt+tVBrvzRoAj5ifI5FbbROB2pxfno3w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(396003)(39860400002)(136003)(346002)(451199021)(8936002)(38100700002)(5660300002)(82960400001)(8676002)(53546011)(6512007)(186003)(26005)(6506007)(2906002)(31696002)(36756003)(83380400001)(2616005)(86362001)(6636002)(316002)(66476007)(31686004)(66556008)(110136005)(66946007)(478600001)(41300700001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk53OThIUS9kSXFYZVJzUXo5YXdnVTZ3RzVYVXRFZDBwMmQ5ck5mcjFBempR?=
 =?utf-8?B?aVpuWUdhd3MwUXp6bHR2em1EL3JZS2pDcXZaT00zSDFVdkxWdXljRmc5SFVG?=
 =?utf-8?B?Yi8zMUFWcm1ZN2k4a1Bhcm1PUnhnYndidUkwS2cxM1p1ZjZUZ1RMTFpJWDEw?=
 =?utf-8?B?RWNmeE1GN1hoaE16RW9qSWRKeVVEUHhrcXBPd2NiaHkrMWxXbmQwZTB0Sjla?=
 =?utf-8?B?YW9PcUhyclIwOFIrb3c3QzNKQW1XYThVR0djM01wbTRiY043T1did21VZEJh?=
 =?utf-8?B?UGhNNXByVkZFNWIxTm1nRnRzeEZtYm9HMVhJemd4enROTmNWVWludDVFOWFt?=
 =?utf-8?B?cGRhZHRDakRTL08yVWgrYTYzekdtZ293RVVrUFUvaE5xZ3g5SC9pZzkrNjVU?=
 =?utf-8?B?by9odXpWRnl5ZWFDbGdHWjZ2dkcyRGg0RkI5MkthdUpTNGpMQ3kyL0lTcU5n?=
 =?utf-8?B?SnpFRnJlYXNDa0dMdGVWbDAvdm1mRjhwbjVFTmxrVXg3MXA1VHRITWFkZWUz?=
 =?utf-8?B?WDlJQ0NKSGFTVjB5UzNaRU9YaHZyOG5tZWgrQjZtb3JvaHBSbW9VU1Zkc3ov?=
 =?utf-8?B?MzMxNkhpQjZFRStpTHF4TUljOU9kdVZaWVFmemd0K0w4cFNhdjFMUHNKRFZE?=
 =?utf-8?B?S0t2Y1VrRWxkSTdnN2RrQzNTbUNCWlFoR0lXdXIxenpJSVNyZ0NTT1Z0b1l2?=
 =?utf-8?B?RVdWM0Q0dm5UaUNOa0ZNdG1KRzY5K2RPd2d4OUVNNEg2bWsvbGpEYUNtK1l4?=
 =?utf-8?B?SDBhZzZJVCtiNUpQR1FQQlpKTkxLTUpkejR0Q2lVOTdWbldMUTk3c2xRRmxQ?=
 =?utf-8?B?L2FKNXB2VURwUzFRSVlJOFRsNEpaSVZjU242dWR1MzBjNng3Zzk4dUEvRk9o?=
 =?utf-8?B?RTlkcHhFdHdpL3dnN1JwNDRjSU1UV05aaGNBNEFXTWZ6VHl1YmgwbWZSa0VX?=
 =?utf-8?B?VDhWS1NCQ2MrQ2MwR2FQTE5FdGVGS0dFQk1wbWNYRGRHR0I5NHB6STRzbk9s?=
 =?utf-8?B?NnozSUpHdHRwMVp2RHZXUFpwTzNpSEkvWVFhYzBiVnlaL1V1LzBBdExyOU1t?=
 =?utf-8?B?cFE4cjlUalhzb2JyR2Iyai9ReDFmcDhGY3RYZXgwdUkyUGZ2YzRBUmJpSVZ6?=
 =?utf-8?B?WHVUcHN4Q0w2T1cyazRFbWhVS1VnYzZmVkRpRzBpbmpwUG5xNjFEanpTdVJS?=
 =?utf-8?B?VjcreWdQUk9hd2tKQ0NjdWk3M2dFTkZEZXlTbk1OV0JBM2h0emhxUitGcVFQ?=
 =?utf-8?B?MVNnYjJ0SkU1K0F4ZVJWOU5hL3BKY3lpb3RLSm15NjM5c3FWRjlTZmtFWVdm?=
 =?utf-8?B?RE0xa1JjY0R5RE42WktPMTZTaDJ1bnd3WVF6d0RLalJkVEJySmVaTW1LckR2?=
 =?utf-8?B?VlNldnY4RFdhS1ByZ3VpLzR3c2lBRUpCV0RVSHVnblhXcjFPeWJkS0Vab0J1?=
 =?utf-8?B?UDRmZDhuWnQ4UXRCVGhGOUNNWnIvZUF6Y0taMVpWeG96NkhWT0IyeUJjNWhi?=
 =?utf-8?B?M1pZN0FoRVBHRno4bEUvcUMxcDNDWFN5VjlhSWNqa0plMWpFdyt3bFZWL2JW?=
 =?utf-8?B?OEY1Wk9oWWhlVzNvMTU4dUlOWTNIQytqTzdQYVIxVXV3K1ZTbTUrZkJlSGwv?=
 =?utf-8?B?bmtmUGE5eldWNmVjRG5nbk5lRzVaTmxibmVmR2NOcUdDTXJOZzVEcC9QQ0Q4?=
 =?utf-8?B?TjNuMW0rZVB1THl4V0szaHdObW1sVE4yMEwrbk84aGxkK3NzbzN5VTVobFBs?=
 =?utf-8?B?L0J2SyttQ3JKM2lvdzZIODBFMHEvekxXZFlQVVM2aUlCMS9uaGV3c1lrR3RY?=
 =?utf-8?B?Slg3MUhNVlc0dW9iVVFWQ3FLSEhmR29oRTVqbDBOSDdQMThNMGp3N3NUZ3pK?=
 =?utf-8?B?R0tWSUZhV0twZHhycG1EdGNMWHEwUnU4ZjNXaXFSN2Nqa3ExbjEvSEtiSFdR?=
 =?utf-8?B?K2RXQ1pXc3RidGlJRVpBc0UvZytQalBqNE15ZzhRVmZkQWN1TUZ4c2NCOXEw?=
 =?utf-8?B?Q3ZiSnVJYjBBSi9ETHNXc0JUVnZhdWRhcGlUaEsxRTF6Vi9FWFZFWm8wVll5?=
 =?utf-8?B?czR3RlhoMS9HTG5oQVM4RWV3RWFKRlY4NnNqSnR6Vy9lbXZMRzhwbTdFV3RY?=
 =?utf-8?B?SExoK2pFa21EZXQ3bzU2YXJWQ1Jaa3lNQ2ZzT3o4RG9HdHJHRUYrM0hWRTdG?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2de70d49-5daa-49a4-f2f0-08db5e3899db
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2023 22:28:59.7133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vayxpd7jfmDubHmYaPwuhCVwZsPbLoy9c7NSVb1Lc1axDPGvPZiOlHA6mjp0raGyPhhJhderq++QCmcqUDVGA8zUcCYlAQ9ud05pRqm/Dqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685140146; x=1716676146;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GN68Qs/Ivd8sxwg8wjPDQJBVyLr4XM74VsP8ay7ul/c=;
 b=YDNKvJ7wFVA+paUcnFEE5OpvHfeu997rQp+tShYqDRl/8HZfCFTiQxqK
 6GUFP63exG/h4scdWmOHiF5H05aKV/zRhrTavADNFtmhD+eQMiIdNq8QR
 aT+9JqD+CFgp544fl7P8Eca1H3IKkvar+dXCyvblPO61yoVi85T3Bjn4M
 QZ80xU8dn9SSI6+OUaervDbTgEChzGeewGFBgTJLYcOW1SCvY6YCqexYj
 ee6L7/Uj8GBRwQfZBYMnv7Exyoq7vAMIdW3fi026e7dIB4rJgd2AMcUQY
 /HDUufgImi7eh+jA66IqPTmhnBfBFpa9r20+99TxCVjQPFdCnkv1tth3V
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YDNKvJ7w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: introduce
 ICE_TX_TSTAMP_WORK enumeration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/26/2023 3:21 PM, Jacob Keller wrote:
> - * Returns true if all timestamps were handled, and false if any slots remain
> - * without a timestamp.
> - *
> - * After looping, if we still have waiting SKBs, return false. This may cause
> - * us effectively poll even when not strictly necessary. We do this because
> - * it's possible a new timestamp was requested around the same time as the
> - * interrupt. In some cases hardware might not interrupt us again when the
> - * timestamp is captured.
> - *
>   * Note that we do not hold the tracking lock while reading the Tx timestamp.
>   * This is because reading the timestamp requires taking a mutex that might
>   * sleep.
> @@ -673,7 +664,7 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
>   * the packet will never be sent by hardware and discard it without reading
>   * the timestamp register.
>   */
> -static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
> +static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  {
>  	struct ice_ptp_port *ptp_port;
>  	bool more_timestamps;

This boolean is no longer used in this function. @Tony, could you amend
this to remove it when applying this? If not, let me know if I should
just send a v2.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
