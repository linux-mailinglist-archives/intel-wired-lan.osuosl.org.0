Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6AF4599F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 03:04:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 205AB80D2E;
	Tue, 23 Nov 2021 02:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jVjKwOhCX7yl; Tue, 23 Nov 2021 02:04:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F232F80D09;
	Tue, 23 Nov 2021 02:04:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2C671BF303
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 02:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C698640293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 02:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBSktu4wOoIB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 02:04:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7687C40290
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 02:04:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="214957319"
X-IronPort-AV: E=Sophos;i="5.87,256,1631602800"; d="scan'208";a="214957319"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 18:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,256,1631602800"; d="scan'208";a="674283924"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2021 18:04:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 18:04:08 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 18:04:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 18:04:08 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 18:04:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXldkEDOwjeGknrNwt3T+zP1/W0xXO4tKxqCTzlS61J5ZTpObi1OuKqtZiIxmz6mYXVVXgeFh1ACL087phgewTLQcLfODREVRHw8jiHyaEWEywMDWyNgru3MpdwJhUdHXJGjZF2dQ/YEwnKtmLcZlVrMuY7fUw/0mB2Wg2IFlSPgZCtDig5417uIj6gsPXH5Cmgs+zrel5outb+F4891HMiz4dCxBHZcGGJtKYWnyb6qK0TDj/TsameaeEWxnmbjGSN6OsHjalMsLUBZ9/pbZibnJct1beLSDm3bN08whQxlXujeiL5CKDEFre7i34Rf9xkQAqzC961HXNtbrLk/iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yi3/JNIWsjiyy0Dn5T14jXV0ngDtaMwaWAXwDVrdpn8=;
 b=cOYBwjsQvVqMTI9QK+Duao/Z23Ga5S3VbiI5SEx/J6ROiNFC6XQYRflsrtGMhJNYxOXAiXxg9NcL28JqasyyZxnpTJXEgAU/iM0E4IN3JWQSs8IKKkUK4epQZh1ZHA1uZkrwpLg1nKXKIQso/Fe8Yf5XFNAqMH9j228y9dLn2ZtDED/dsMbx8TVwxCD4qiHShj5/oU28SBzoXpc3tKexqfiK9YZCMlbFq4Y7K4yFHRaJtMfykxluz0UdjW3/JBdDzx5mm5bk4TFA/HdrThbfaUolKas1IYUltsBgjejVsqwvo7luy+CKPYjVGSS6gz5V0GL79Q18tUQwKNve68YDdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yi3/JNIWsjiyy0Dn5T14jXV0ngDtaMwaWAXwDVrdpn8=;
 b=Oej8GFQDkD+EcnhT7GUEn/H+msTP+mafz/Cu8GrCwD1tnNq+EN0b45hz+DcSgHpJBmivuiypCdcgwxrAGDpVsubPWLEt294NF1lWmJm9jwUmKY0pDzkCWGMIf+4TSkZm8K9SeOi8/rOWXplQV4GgRDccNRluRf40VUT+N2P5xR0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR1101MB2349.namprd11.prod.outlook.com (2603:10b6:300:79::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Tue, 23 Nov
 2021 02:04:06 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a%7]) with mapi id 15.20.4713.022; Tue, 23 Nov 2021
 02:04:06 +0000
Message-ID: <65909259-6de3-e595-bbe8-f07693c66543@intel.com>
Date: Mon, 22 Nov 2021 18:04:03 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Dan Siemon <dan@coverfire.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
 <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
 <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
 <d3f0614118192ba0df5ec0e845f61e092f187744.camel@coverfire.com>
 <20210209120223.000041ca@intel.com>
 <5ff376e94c76a9b475242d829ca7b7d2e1786620.camel@coverfire.com>
 <20210211174937.00006632@intel.com>
In-Reply-To: <20210211174937.00006632@intel.com>
X-ClientProxiedBy: MW3PR06CA0028.namprd06.prod.outlook.com
 (2603:10b6:303:2a::33) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.211] (50.39.107.76) by
 MW3PR06CA0028.namprd06.prod.outlook.com (2603:10b6:303:2a::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.22 via Frontend Transport; Tue, 23 Nov 2021 02:04:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55caaee0-2474-4686-95ce-08d9ae25878b
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2349:
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2349451D9D4B80CED5FC170897609@MWHPR1101MB2349.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VZAO9fu7KjaW3Vz4Y/0N1rP+1uQenNXQEV7dOTKHHoe7IM6oW+JtS7yiqT0TouKmiYJaO8LT0/Lz14YY1vrXWWKtjfmUpxxDY3MRmwH1ht0ok2x7As2EBZ5wF3jprb6DwwaFa8aMV1qqwO4io0hwdUf1vTjwkRA1Q9adx7r3g37fT1SFLok6srtTvis65ww2hMPwSWNKRaNpTNdlC5bjs0h7zTe1ctsLy5xzOm3LGPAdNcI7ssbKFZav8Ldph18TzIr0GdbB9RMMagEDS4hsEQm+kxQIAAoMV6ptmi0AMoB+tiq6nPwPv58y2fwL/j+pRp82Y/DcCukaLZOrx60b57jr9UG+hC4uR1N6QPsYSUDEmIFhMMQyf5UkF5nTg1zydLl6htrA68/WOkGm4a/qEAXv9xpuItxHUeRqwo16UsWkJTgzpP+PknYFhBtrm8P3Q5kmTjEIkoTsu8OASwF4850mF2dNY/pFOUi5RwjVOYCitIO0g4Wt+klbTPu/513qd28cZu281E9buRg1PxYb9urj6Vzj+PlweC8bH3QqPATLcMk25DwR6ERFLDFL33eRqwVEQo11GwZR0A2UY2pVwB1cVxwLK/fQbUtSUYvn8iL3DzoYWaZmuzVlX7/3wPbQq9ODw3IZ6cXJRWJpqZRTGiLCbGg3X0OO3PqV+fc2rGGAPXTLiIZZhporc2gla558YWkQqJowASs474IlRRLvZTOXjdYJAfraQmsDSjCsMuQJc4KBM2Z41nLnUrUMKBMgQdB2D4B/p14VvcKP/sp/05F27zsywFuh3hlyG0EfYWFzhskyRxmpBfnXo2anKCsw6VIxe2H59/v5fb6nCCW+MQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(316002)(2906002)(84970400001)(8676002)(83380400001)(66476007)(16576012)(66946007)(86362001)(36756003)(31686004)(6486002)(6666004)(5660300002)(26005)(6916009)(186003)(508600001)(4326008)(82960400001)(8936002)(38100700002)(956004)(53546011)(31696002)(2616005)(44832011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWZLUEwyMGE2OVJDY3RtRFFaaHQ1WnZwNTVZLzJocm5SdkorQUNYMWNKMSt0?=
 =?utf-8?B?RzZ0dzJTcDcxcGZwVktWVjJ0U2VzNHRma3VkZzFhZ29yMHVxb29SNjdYUW00?=
 =?utf-8?B?clB2SEpCUndBL3lvWEU4cmNiTENwdDRxSGZ1RHFWTlFVQ1hYdEZ6aGNtQmIv?=
 =?utf-8?B?VlQrcW9MNTV5eVVTZU1CdEh3UTVjMGcybjZGenVJaW9rSWt6MmkyRzlGZWpB?=
 =?utf-8?B?K010VDNMVzg1L1ZoV1lRbm1mSHpDU21kemhrUVp2a25ac2l3TWpVWWRCSTQx?=
 =?utf-8?B?SDhtUnAxMHBPS3YyRXZpL0x0U1NaZmVKMTROTkJNdmpjbnVRL0pISTlQNUZI?=
 =?utf-8?B?YlYwbEJPTnRyYWhxRUc1NTA1SjFNR0lPUDNsMVdjbnFKeTFiYTNVREpvbXBP?=
 =?utf-8?B?aEthSHJXKzVrM04xZm5uVFVDU2Q1MkdsK3k0OHV6cjdBMkNzR0VxT1VTbzJj?=
 =?utf-8?B?Ri8xbmhjbG1KV3JZV21zQXZlQmQveFNMRk1nYTB3dGk5NCt1QiticExqZlJp?=
 =?utf-8?B?c0JlZGIxV2RLK2xwYjN2K0pRK0FTb0o3MzVXWEZGR04wM3ZTenpoeVp3dFBO?=
 =?utf-8?B?VHJmTjN5SkhHSStxZkp2bkZTMmJHeklzQjhLMUlHSTJwS0lCS081NUNKWEs0?=
 =?utf-8?B?bkkrM2ZjcllUTStHaWFpa0pDaTd3d3I1TS9sYlFrWHVaaDlzeEQyVERxU3Zx?=
 =?utf-8?B?Y2ozeDlEdm5oNVFqSDFpUjUzelB4UGsramd0Y0lMbkRCMW1Ic003Mm9EVExC?=
 =?utf-8?B?cm14WEVBNHdMbmRwVHpjeTFwejNvZU1kLzc1ZEthMmZyTVVvQXF5WVBNS1V2?=
 =?utf-8?B?dlIwUld3aFAwYU5MY3JqMkMyZGx2akRqN2lnTTFMWVRxRDhXOW4vaXN5UCt4?=
 =?utf-8?B?UTJhNVJZcThJT0xkYWNyWUY1ajFsbkpkZUVuZ3ozaDM2am9nV1BSOTNQcWJi?=
 =?utf-8?B?aTBEaTJmeENkZDUzZWhBSm0vSExBWjBrK0hyTHRaY21nWTZQMUtEcnVBbno3?=
 =?utf-8?B?ekE3SG1RVEtIS1FOakJSMzB0UDRZNkhmRUNGV25vQ252NDJjVWMyRWVsZTgx?=
 =?utf-8?B?SGZQZ1pwcWZTNldHWXA4S2tiRFdPRjZWTE1qZUtXbWVyVkZScDh6UGdtTmk1?=
 =?utf-8?B?c1ZkM1RiR3FJalFCbktZSkdYWnFKYVVqM0Y3SzRxd1ZTcTZzemMwM2U3L1Nn?=
 =?utf-8?B?QnhCWElaaGx3NUJxRVg0SjdxZWpXK1hQbldwZlJWL1dPZ1NKdk00MGMyakhN?=
 =?utf-8?B?SW5aTkdicitNZ2dOc2Q2SW9EVHFlRXZ0Q216Qlo2WjRiajA2MjFFVmdKaDJV?=
 =?utf-8?B?dkFkQVdQMm9jems2UGI4MUJpcS90V3Z2OFYrTUJXYUFYRTdDd1Avb1IyZS9O?=
 =?utf-8?B?UXFOOWFQUnFwTjlwMEFIdW1hRHNzYnUwekc0c1lFQzBpSUprMkpSTit5Z0JH?=
 =?utf-8?B?dXUxejZYZTdwSnZ0WkVuV3pFbVV2OFRMMTdBeVdvY2JOdjFLQnc3V2IrdUpD?=
 =?utf-8?B?Q0Rodk1hcjlFUjc1OVJLYk1LWUZibXBmSjFWWklBV3hTaVYvR0NqVlVtS0E1?=
 =?utf-8?B?YTdIQ1NBdHZTdGUvMkY1L3JpZExqYkhNdFovQkF0aEJQeGx1UTdJOWgvMU5r?=
 =?utf-8?B?Z0pTa1RNUE5zQzhKeHJBd3UzbUczZ3BIaFJ1ZGhaN3p2eHlVVWl5UllkVHo1?=
 =?utf-8?B?K2hGNGk4QjkwM0ZYa1VMWHBCcFNNejZrd0MxWkl3N291RXcwWHE4NE5RQTY5?=
 =?utf-8?B?RzdFS1V4cTQ1bmtvSktlSXVHUmFuNlRSK1FLVmdONnZQSVVUQVFiNFRkQlFn?=
 =?utf-8?B?NmRmV3hmS2tQR2M2VmY4WWpTcHN3NUdCSE9oYW4wSjN4T2hIVEdnc250Qzh1?=
 =?utf-8?B?Z1MrLzVzTFIrVkt2RHhBQ1R3WHNSVHN6VnVCbkY0aGVJRTJQRWlmQXl6MjNR?=
 =?utf-8?B?ekV5anNwMjB4VmNwVVFIMDU4ci83QXFVcDJtbFFDbFlGamR0R2F3UlVVa1hv?=
 =?utf-8?B?WGlpOXBoVWRGMG13S25pMklMUDFGSWJQQW1MVnBRWVB3bHJDMkVwamFUcm1F?=
 =?utf-8?B?Mm9tWHhLc29wd2tEck1wMUYvbzBkUWNoLzFyOStHT3l2NnFNZUI3cTdMMm9j?=
 =?utf-8?B?SlNLRUl2VmVER0ZOZHRlRnJVRFV4MUdzTmt6V2xLUEYzeDdzYncyazR1Mytq?=
 =?utf-8?B?MWF6REVOVWR1djFYZjk0MUpGWkhrV2VTbVU3UEdQcHBmd1hONHhYSXRtU3ZQ?=
 =?utf-8?B?N0pROG1zajZqa1VJSWE2cHRmcVhRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55caaee0-2474-4686-95ce-08d9ae25878b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2021 02:04:06.2722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w3BumjBG3Y3zxp6/qeFPKMcmC/4qOSrIicBtZIl96vaxk7lZiTthK1pT9xVAdXv+BPht0Mfbl/mFEfVKbXkn364UQ5bD+6Zd0ryu2qJvlMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2349
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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

On 2/11/2021 5:49 PM, Jesse Brandeburg wrote:
> Dan Siemon wrote:
> 
>> On Tue, 2021-02-09 at 12:02 -0800, Jesse Brandeburg wrote:
>>> Please provide us with which driver/kernel/firmware you're running,
>>> uname -a
>>> ethtool -i ethx
>>> lspci -vvv -s < your pci bus:dev.fn>
>>
>> We are ok to update to the latest 710 firmware and we follow the kernel
>> releases closely.
>>
>> As we haven't had problems related to firmware, we still have many 710s
>> in the field that are on 6.01 firmware. Below are dumps from a couple
>> of our test boxes where I have upgraded the firmware.
> 
> Hi Dan, thanks for the detail, I think your firmware is new enough, but
> I'm pretty sure our driver isn't configuring enough (it's currently an
> unsupported feature in Linux i40e) to get it working. Newer than 6.01 is
> all I know of that is required for firmware based on what I know right
> now.
> 
> I've filed an internal issue tracker against i40e and sometime
> (hopefully) soon we'll have the team looking into details. I don't have
> any timeline for you currently, sorry.
> 
> I agree this is an important use case. We appreciate your reporting the
> issue to us. Based on what I found when doing some initial triage, it
> doesn't seem like a simple fix in the code, so I can't offer you a
> patch to fix the issue like I wish I could.
> 
> Please keep us posted if you find any other relevant details, and I'll
> try to update this thread if we find any info or get a test patch up
> and running.

An update to this old thread:
The current i40e out-of-tree driver from intel.com/e1000.sf.net has 
support for a limited use case of double vlan for virtual machines (VFs) 
but the interface used is customer specific and not upstream (it's in 
sysfs).

In the meantime, I guess your best bet is DPDK. Currently an 
implementation for the upstream kernel is not available and I don't know 
when it will become so.

Thanks for your patience on this one, I'm working with the team to make 
sure we don't create feature gaps like this between out-of-tree and 
upstream in the future. I appreciate that you brought this to our attention.

Thanks,
  Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
