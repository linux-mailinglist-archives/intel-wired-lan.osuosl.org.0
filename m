Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A636D5D86
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 12:31:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B93EF61059;
	Tue,  4 Apr 2023 10:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B93EF61059
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680604260;
	bh=LZDGP0eZvpcJCKKX6+33fXffWow+LC5eviVtFETed7w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xjhy0qqO2/QADIRLSarb2zq1r1sS3CbAbEmuSRx41mtezGQCVPo6782vD7ysQtWua
	 nt4PyZutJmdVtyGTvryYu3dDrAKWzCz1IPy7Tn/z9+eSdSJjg+zcn//Yxw0WFBKHu+
	 ICQ9hyV4jsIcXC0i22+Rj07w4EdZibrznucpIp6aUTyaZxYb6i9QCakA17n6zpTi6Z
	 ID7k8l/TO3nf29F3ssZTlKpqsSAQwUSTgvgavU8asMJST/yvcBqgNl7j60AhGWJ6/q
	 hdZV+U0TKUuJPbynzjyZvz5Gf6XXZc7jMnquK3KooZxAh5LccqhEiH5ZLm4fqbYmdh
	 mWVVm0Y6DWDsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fi9NjOkIPRY0; Tue,  4 Apr 2023 10:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DD5760B99;
	Tue,  4 Apr 2023 10:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DD5760B99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5B721BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 10:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C37C817EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 10:30:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C37C817EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8za0PDdW8ii for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 10:30:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B70DC8175C
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B70DC8175C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 10:30:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="340876127"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="340876127"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 03:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="829927316"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="829927316"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2023 03:30:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 03:30:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 03:30:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 03:30:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 03:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwGSgtt1Hc4Y1MbTIqkj+cgEVsBqibA4iUxaFu3HAMqSOIrfLIti0R92D0eLaaCIfPIJexPz/gOhNDyhchkwmqRRWzb4wP97lHY1ckTy6fQxtV1pqNXIjQfiEPsmPnvjPQc+oiOu6fA4pzT10CRk4rbkVeYUG42hB+KQPLrdeM2EL5Pc1k7rBkqmSV6ZIFlGw+eVXf/dMnXkzAApiBPif+SRLI5I32DuZZUCmB07fXWhwQoApdol4VbxJ2kypcooC2gbz2iix7a9ioRRopQoPkcsk9EosVQgBvjOgXSCm8y7n2LZVm51c3HxyuTniGHVCloS5zy7uS59o2BN7cXtAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UGrKZ1gMtwy8Wg1S7zWGvZASNVuGx/hADMc2L3G+ps=;
 b=ODmJ96xR+8qUV2ZjiitBbkt8GeX2NwOeWap3PhT5vLPXhER++2oGB7x5yi8PfawPUDblUhLHhUCIFpa6gDuXZ2ByiYd1CRhIbY6+jo1VkU/0NK+qlBGgc7r4tMn2Y3X3ET8VfYuZ132I0FbOtIx0I8ZgkumQQrGBMLQ3wloN4MTYnUeoegyDFQTjUSs9fxfonAtvj7KI/ano6vr17RpnvvJl8hBvL+U1bFzXBf+90pHvBB/+CgMnBWlr0xJTv4REl94uJ3yGZ6ntfWtOQTRXbciRbNpHbCsgEtnl91Q4ey9RShcxCXBO2lHqMLbs/cjF+/KZwihMENtLSNpvBNC+WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB6790.namprd11.prod.outlook.com (2603:10b6:a03:483::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Tue, 4 Apr
 2023 10:30:47 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::7911:de29:ded:224]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::7911:de29:ded:224%5]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 10:30:46 +0000
Message-ID: <43a33d1a-3b04-86a1-b538-d906b517b7d0@intel.com>
Date: Tue, 4 Apr 2023 12:30:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
 <20230404072833.3676891-5-michal.swiatkowski@linux.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230404072833.3676891-5-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: FR3P281CA0119.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::19) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB6790:EE_
X-MS-Office365-Filtering-Correlation-Id: d2650927-f70d-447a-2d47-08db34f7a6e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GaBIYRWtyfE7h3TH4hHhwyqODK4TOKWKEmS3kDesktUp1wyfOPTUoZW/p0zqpKi1ht5JLH1BDnxc0JW95d9pM7S5mPj+dr6AzuYy1bvQmv91BVUl+1sTlZaSo5CFcYwT4fJ1MYPVi0OlDjC5FxVShxRkb1TfRZJwIQZ+J86P5hyi26rJU7U1JT/TKJa+dR7VaUlJnf0e+iHf7TeWHasYCrdv+w30ZgNqjnpy/X2+k6TtrhFLogUR/UJPKB3xCuMSNDpY+OGNLfxWkNTv9hJNO7C7eAuEKveSE97g3n9EtD/hrJBDK1IUIo0atV8yKeFIbiUlJc/DxXR8H/MzhxNh9vwaGMbnw2nBEWTbzsFvVXpSR7j4rznqSml4+L/BLGBRQ57QE6W/l40wycrjqkXHfbdDqZwRmrYcNAHtgRznvKDfrT/lbZR3weizbitSJw0EJC7aEX4KB4qfftLG+egfVaEfZLt8bYAix2taNOLVrxA88QcAii3uEARAWREQxltwvuPhG6+bMgurQn+cwhWnCK3fYV2A+fVVP8BpFT+dSfvykRmV85bP0FWo8U+2yBWTmPKe6sdB3JhPzWEHITvaNgL1Hc7QsZgByW0r1HGkfRwXGXVsOZJMimjgPXOEaV5JYAFcoTxzLUgXzDYphClh9w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(39860400002)(346002)(396003)(451199021)(86362001)(31696002)(36756003)(2906002)(31686004)(2616005)(6486002)(186003)(26005)(6506007)(6666004)(6512007)(4326008)(316002)(66556008)(66946007)(8676002)(478600001)(66476007)(6916009)(41300700001)(38100700002)(5660300002)(82960400001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OW5nZUpZOFI0VTNmQWloVHZrdkNONjhidDI2cE9jeEk1T1hJK01LZHp0cEd5?=
 =?utf-8?B?VElFTGNtNlVUdE5nVVVaelBtRnl5TEJWd1R4TUxXZStZWnFiYUxiVnB2S1hD?=
 =?utf-8?B?Z21DUkJzWTR2UWJGdTdtRDJiaFg1SVNMdFloVzM5MFJ3ei9xTkp6MWtTK1Bl?=
 =?utf-8?B?ODhzU09HUkR3U1NVRXkvTWhFeStoUzk3c0crYXRzbDdaRi9RdzVIQjh4VDhP?=
 =?utf-8?B?TVRHV3oyRUhCUUlGZHBnUzNOdlR1MHpmeGx0TW52OTh2cHQyeHhWQlQrbGxI?=
 =?utf-8?B?SkttcUtiVXd6MWN5QTF5YTdEcHJXa3JoTkxRQnNsN3hIV3FUUXJHeCtYS2FO?=
 =?utf-8?B?Q21vMGtLY2NvRFhRTzNOTDAyZEtKeGk4eUhzcGtZVVpYZ25wOHJ2WEl4ZjRy?=
 =?utf-8?B?UCszWWpyRlNCY2thVVEwQzdaZlhBeDFvRVp6OEFOdXNVNWZ5akVodGdOcm1H?=
 =?utf-8?B?K1A3RDRkY1NzdXVPYWdNMGZEamY1QlVxekRkbEMzTXBqUTBXUHJhWWR3K29u?=
 =?utf-8?B?UkI1UERpQ0VTcFZURmlkK2lTbCt3cVRCdEFmMm52ZThGVFFxWXQrMS9ZK3BE?=
 =?utf-8?B?WHdkRDd4NTdHalJqYVpEbFNFVEt6YTVRU0lLU1hPQzFMekZYOU9TQVNNRkly?=
 =?utf-8?B?Zm1SVjRsSnRyTjdIWWVqRlJnbFErYkErZE5sZjEzbm9HSmN3UG13Y1JES0l2?=
 =?utf-8?B?NGNYdmFEREpTb2NGajFIbE02TG53MkhaU1FUQkd4T0NNcjg3TVEyTzZqSm92?=
 =?utf-8?B?cHpGRXJ3S25uOWNGVEhuT0RSK1N3cU1NY055UXZVMTY2RUE2QTIrVVhQR2xi?=
 =?utf-8?B?a1hOaTUrQ05JT25FSkxCZ084SC9zL2RUQzc0WWx5VWR6clczRjVGT2hrRkZw?=
 =?utf-8?B?R3AxUG54VkltSThMNHM0WHFKM3FwNWUrZTlxNHNTeCs5VmFRRk83MkVUKzFV?=
 =?utf-8?B?SzhlSEdhb2VYV0J6TE5YaHhOUXVHdzVQNVM5WVdUckFiMG9XMzhRWWRuYUtx?=
 =?utf-8?B?N2o3TTl0U01ZdFZWNzFaVkQrbFpqK3hINmZ2SmVMOENXY0hSdnV6Tm5PL2x4?=
 =?utf-8?B?NU1KRnc5TG82NVJyVExHMDN1MC9sOXRKMlpUbXJQK3JseHJORXB4aGhOam5W?=
 =?utf-8?B?N2F1S3l1NWpCc0pxSmxwNWpqMUFFN3QrYk55RlJSTDF1QXVyYlNBVXpBM2dR?=
 =?utf-8?B?amh5Mjl6RkFqbWlvWUVBcEZZejVWanE0VzRzNHdXamR5L0FjZ1NWOWJPSFdr?=
 =?utf-8?B?YnRCZjgvRWdqcDVTYnhmQWF3TGdzcFpYeU0yLzhxd3ZrVDRrSFQ0ZW5tWlNR?=
 =?utf-8?B?NFUvUzVlN2ZsL1RtSjZhNFpyUlBSTW9ubHNBV0tMVG5EZUplSDNtSGhpZU9B?=
 =?utf-8?B?a0pXeVBTU1NQMlRSSTdqdlFxa1JRWE1aZlVhall2MzFRMldidzZGeURkbExk?=
 =?utf-8?B?L0VRaVc3bHVmWkdhei9zNFVKTXZYUTd4QkY3Q3pCcXpQSVFIWlJ0Y0Y1ZHJs?=
 =?utf-8?B?eVpsSXVBZTdOZ3R6TjRXTGY3c3l3U0YrWjVRd2pWMHRmKy9KemRMcjVzZGlU?=
 =?utf-8?B?UlhLaDlodWRtdmJUcFJNMURrY3VCVnlvRStFd01SZFhLZ0E3QXVkdEFQK2hU?=
 =?utf-8?B?YmdoUFlTaDY4UFAzbXdRMW81c0NBaDdhQ2RVVFNDWmhqRXc3MFF0a2RveWpr?=
 =?utf-8?B?YVRmS2lWRE85OEZZWVFxTG1CYzJwbDI4c05rVDg0QytmcjBvSERCaUxQLzhs?=
 =?utf-8?B?eU82T0RrdDJ2akdCaWpYVTVRTkp0dmVMVjMzbnBLb1NWelNDR2V0SExoRkhS?=
 =?utf-8?B?TVJYNkRFNCtteEd2ZlBsWXZlSi9yWWdBeEo0UVlHTXlDeFFtanI1VFpxWnJj?=
 =?utf-8?B?dzJQVkdLSGwyeFVDVXQwcC9xTERaamJpV1dWdHlFT2Vhb09vZWp5b2s5R2VB?=
 =?utf-8?B?cU41L3VjcVpyV0tFSCsxY3VQc0EwMmM4SXhPV2FnZ2d5bnc2WXVVOTlRdXkx?=
 =?utf-8?B?VDdMbmZNL1FKOE1JSUY1UVJOZFZNTHhQeTVFT0tZUHlPVlRsVTc4cHdGakNN?=
 =?utf-8?B?R0Vzc2ZBdnhQQnljV09FYnlvNlhFR3lxdVlKYTVpN0YrOXF3WU13cUtDR1Nz?=
 =?utf-8?B?SHBPTmtFeDQxdkxubTEydzJkYlZzOUFnNytkdlgxN2JpbHdHUzBsTC8vQ1JJ?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2650927-f70d-447a-2d47-08db34f7a6e3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 10:30:46.7155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GopQIw5Da+rXHup91aFWv3IyWN0g1CWhLrB77Adesvq62+Bs9mZzj3+3WQKY1Ytj89QPmwp6OlKDpLwkMxFjOUqJA2SgHmsBhYB9r36GcLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680604253; x=1712140253;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0T8RXwqwGx+vFn0LB/yy0b+ad92xiajOSLlfP1MyZyk=;
 b=XJ0CT56nkr3pPncJVPhFFFvkBNu8vYYbJyFH8zWUNfKne6n4P4x952wr
 kKzAUk0UR9KbOtt4aoC3krdF3dyOPqRIRGofNrDl2VSshSB1QTc118zB4
 n9TDthzxsmSxDYWPS46u1lv+am2S/TM8G86PCdeWMrBpWBOHXrjufpPQ3
 +Tz1bd3UYjyds5+nBD7Kwi9aqNkREeOZ2uTWmwO1Z1FT1NUWbY6r/w9Nn
 mmllIrFlDmobhiEcudQl2YNimNCEGsLBP5Vzv/bZ7JZ8g4qNrtfPgN2cr
 Dj5TvHNAMbP/uq+0qEPM+h85mnOEfJYTyYhTKTjZgMEOx4lYd/ocReFX/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XJ0CT56n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/4] ice: use src VSI
 instead of src MAC in slow-path
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwu
Y29tPgpEYXRlOiBUdWUsICA0IEFwciAyMDIzIDA5OjI4OjMzICswMjAwCgo+IFRoZSB1c2Ugb2Yg
YSBzb3VyY2UgIE1BQyB0byBkaXJlY3QgcGFja2V0cyBmcm9tIHRoZSBWRiB0byB0aGUKPiBjb3Jy
ZXNwb25kaW5nIHBvcnQgcmVwcmVzZW50b3IgaXMgb25seSBvayBpZiB0aGVyZSBpcyBvbmx5IG9u
ZQo+IE1BQyBvbiBhIFZGLiBUbyBzdXBwb3J0IHRoaXMgZnVuY3Rpb25hbGl0eSB3aGVuIHRoZSBu
dW1iZXIKPiBvZiBNQUNzIG9uIGEgVkYgaXMgZ3JlYXRlciwgaXQgaXMgbmVjZXNzYXJ5IHRvIG1h
dGNoIGEgc291cmNlCj4gVlNJIGluc3RlYWQgb2YgYSBzb3VyY2UgTUFDLgoKWy4uLl0KCj4gQEAg
LTMyLDExICszMSw5IEBACj4gIAlpZsK3KCFsaXN0KQo+ICAJCXJldHVybsK3LUVOT01FTTsKPgo+
IC0JbGlzdFswXS50eXBlwrc9wrdJQ0VfTUFDX09GT1M7Cj4gLQlldGhlcl9hZGRyX2NvcHkobGlz
dFswXS5oX3UuZXRoX2hkci5zcmNfYWRkcizCt21hYyk7Cj4gLQlldGhfYnJvYWRjYXN0X2FkZHIo
bGlzdFswXS5tX3UuZXRoX2hkci5zcmNfYWRkcik7Cj4gKwlpY2VfcnVsZV9hZGRfc3JjX3ZzaV9t
ZXRhZGF0YSgmbGlzdFswXSk7CgombGlzdFswXSA9PSBsaXN0LgoKPiAtCXJ1bGVfaW5mby5zd19h
Y3QuZmxhZ8K3fD3Ct0lDRV9GTFRSX1RYOwo+ICsJcnVsZV9pbmZvLnN3X2FjdC5mbGFnwrc9wrdJ
Q0VfRkxUUl9UWDsKPiAgCXJ1bGVfaW5mby5zd19hY3QudnNpX2hhbmRsZcK3PcK3Y3RybF92c2kt
PmlkeDsKClsuLi5dCgo+IEBAIC0yNjksMTAgKzIzNSwxOCBAQCBzdGF0aWMgaW50IGljZV9lc3dp
dGNoX3NldHVwX3JlcHJzKHN0cnVjdCBpY2VfcGYgKnBmKQo+ICAJCQlnb3RvIGVycjsKPiAgCQl9
Cj4gIAo+ICsJCWlmIChpY2VfZXN3aXRjaF9hZGRfdmZfc3BfcnVsZShwZiwgdmYpKSB7Cj4gKwkJ
CWljZV9mbHRyX2FkZF9tYWNfYW5kX2Jyb2FkY2FzdCh2c2ksCj4gKwkJCQkJCSAgICAgICB2Zi0+
aHdfbGFuX2FkZHIsCgpGaXRzIGludG8gdGhlIHByZXZpb3VzIGxpbmUgOnAKCj4gKwkJCQkJCSAg
ICAgICBJQ0VfRldEX1RPX1ZTSSk7Cj4gKwkJCWdvdG8gZXJyOwo+ICsJCX0KPiArCgpbLi4uXQoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90b2Nv
bF90eXBlLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Byb3RvY29sX3R5
cGUuaAo+IGluZGV4IGVkMGFiODE3N2M2MS4uNjY0ZTJmNDVlMjQ5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHJvdG9jb2xfdHlwZS5oCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90b2NvbF90eXBlLmgKPiBAQCAt
MjU2LDcgKzI1Niw5IEBAIHN0cnVjdCBpY2VfbnZncmVfaGRyIHsKPiAgICogKy0rLSstKy0rLSst
Ky0rLSstKy0rLSstKy0rLSstKy0rCj4gICAqCj4gICAqIFNvdXJjZSBWU0kgPSBTb3VyY2UgVlNJ
IG9mIHBhY2tldCBsb29wYmFja2VkIGluIHN3aXRjaCAoZm9yIGVncmVzcykgKDEwYikuCj4gLSAq
Cj4gKyAqLwo+ICsjZGVmaW5lIElDRV9NRElEX1NPVVJDRV9WU0lfTUFTSyAweDNmZgoKR0VOTUFT
SygpPwoKPiArLyoKCkEgbmV3bGluZSBiZWZvcmUgdGhpcyBsaW5lIG1heWJlIHRvIGltcHJvdmUg
cmVhZGFiaWxpdHkgYSBiaXQ/Cgo+ICAgKiBNRElEIDIwCj4gICAqICstKy0rLSstKy0rLSstKy0r
LSstKy0rLSstKy0rLSstKwo+ICAgKiB8QXxCfEN8RHxFfEZ8UnxSfEd8SHxJfEp8S3xMfE18TnwK
ClsuLi5dCgo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcmVwci5o
Cj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9yZXByLmgKPiBAQCAt
MTMsOSArMTMsOCBAQCBzdHJ1Y3QgaWNlX3JlcHIgewo+ICAJc3RydWN0IG5ldF9kZXZpY2UgKm5l
dGRldjsKPiAgCXN0cnVjdCBtZXRhZGF0YV9kc3QgKmRzdDsKPiAgI2lmZGVmIENPTkZJR19JQ0Vf
U1dJVENIREVWCj4gLQkvKiBpbmZvIGFib3V0IHNsb3cgcGF0aCBNQUMgcnVsZSAgKi8KPiAtCXN0
cnVjdCBpY2VfcnVsZV9xdWVyeV9kYXRhICptYWNfcnVsZTsKPiAtCXU4IHJ1bGVfYWRkZWQ7Cj4g
KwkvKiBpbmZvIGFib3V0IHNsb3cgcGF0aCBydWxlICAqLwoKVHdvIHNwYWNlcyBhZnRlciAncnVs
ZScgaGVyZSA6cwoKPiArCXN0cnVjdCBpY2VfcnVsZV9xdWVyeV9kYXRhIHNwX3J1bGU7Cj4gICNl
bmRpZgo+ICB9OwpbLi4uXQoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
