Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59152730129
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:04:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7A428348C;
	Wed, 14 Jun 2023 14:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7A428348C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751455;
	bh=xIstvgYYUnWpzYYG6lq3XzFsCdUoCAxCNoiZBkAKf3c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IFv6avdum6nxmQm+iDHQEP0nVSrSqw3GYTKWqvdHXCOLaN7S0E8SKX+oZGmDUEzzX
	 4HSVOAj1/aGtlAV01BPWjh5MmnhfYhYoCNTxlMBE+6/KKKfvEB0UaWAhUeq0ibWJ/r
	 0JCCQ/l8ASE68NI6shVKm080TNPM2vh5wopbl8HemIhKvkz/vhitKlKe80LQ5kjGGH
	 2XdN+DQ1LYuQTv6mmv46wGB7vIwlc8jcKlj9XByUhuNmdLe6biu1y6zVpPRavAHPVD
	 XRJyJASd9efeBG6emL+PSa1IMmCgvZR9YsElvxXPst6IBE0u7VCqJ64acn2/SV9Wq1
	 H7yQWa0mWRG1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zq2eQqXzAlqd; Wed, 14 Jun 2023 14:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE9E783417;
	Wed, 14 Jun 2023 14:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE9E783417
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBD7D1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF29183459
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:04:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF29183459
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dyuNcMXQP5X3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:04:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6A8183323
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6A8183323
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:04:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="348278421"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="348278421"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:03:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="745087932"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="745087932"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 14 Jun 2023 07:03:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 07:03:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 07:03:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 07:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CuYb1uO0rD/U5vsqnth3WWLkd0YfUijrY/gTnxsMF4BuveKdwGxJ1RXFi6uepBJkImMoWQevyDG+jFDdi1P20Lu6WDGrnbtHk+OcmD5VvDd/Wlp2CFEsQLlnK7j1h0wcjmKhfS3X+5mija7hBbK1C+HPrtwNBAcZ6OxOxQPqUw7i8xaBddVW6ma5dCpTyPdE+vmDJLkxc/8QotHztIHIIfHE2le9Ee+O+QRaTgyaOmQ+JZd8Dk03IB6dB7OHbp8jq3t9praoYua+nnxfW+pWJnldRFtkoFzAvgrS8a+VHEw+nLCaE1bS3JxrdgCBBdiJ4tz+ABgjtvb6xT30E4b8gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86e4Mlpy6/mV4RkAyrbFhzyQhSNSjPm2mf0PByJkFgs=;
 b=mBlEkt6oQSeEOHPJ+Z2EpV0rc7UhJ2jvBdRVIyXHmadBKm3pNEIOVHameVRwXecs2TqmRFTzBoPmRXTal3gLjojSuESC5MWVvsYaxbdy29/ZMFVZy40eJmkq046pz9/bbi3nrOtB8PVP2jTqwVrJ5lu9hd8hJ+/B5bRt3hOLF9F7wcA1LVNJsqCVd28ElmunIISQcx2T5sNsJCintosRmQhbhuQy6R+dXeV0g357fugkTlmoLhs5TozUVNH+HrZBgBf4K9aQYfXDXZbOlLj1SFUgXZpMwEZJFxXJ/md+9774Tzdi/sQWWSsj2B0Xx59BlfAMnt00gxStQSs+1XmYZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BL1PR11MB5556.namprd11.prod.outlook.com (2603:10b6:208:314::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 14:03:26 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 14:03:26 +0000
Message-ID: <238b1f8b-ba1f-0e8b-4fbb-66ab8639b042@intel.com>
Date: Wed, 14 Jun 2023 16:03:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.1
Content-Language: en-US
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@kernel.org>, "Maciej
 Fijalkowski" <maciej.fijalkowski@intel.com>
References: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
 <9eee635f-0898-f9d3-f3ba-f6da662c90cc@intel.com> <ZIiJOVMs4qK+PDsp@boxer>
 <874jnbxmye.fsf@toke.dk> <16f10691-3339-0a18-402a-dc54df5a2e21@intel.com>
 <ZIm3lHaa3Rjl2xRe@boxer> <b3f96eb9-25c7-eeaf-3e0d-7c055939168b@intel.com>
 <87sfaujgvd.fsf@toke.dk>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <87sfaujgvd.fsf@toke.dk>
X-ClientProxiedBy: LO4P265CA0237.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:315::20) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BL1PR11MB5556:EE_
X-MS-Office365-Filtering-Correlation-Id: b58dac9b-2e6f-4bf1-2546-08db6ce01f2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cz5lqqcYnk4eVrqtzAULoO1und5/Dc0kEK39tqRTkM5vx7X+AWgHzHoZwYqRSqFTJkP99uL/2PguypPBJeDrYOIPCKQNXIy2IDG8VmT+trzxBKqNCsrm2sMTiMgVphV0IgaVMuwG/UbM5vWbHnQSnQFfayhh8mnI4CaW+kIgqrJWXqDiNKgSub0vOzbJhkg3WelDZ1gTKlnmRnc434xoiRW+C0WPjo5RYqH7NA+kDyVKnFloiDBLvGQ/2ldZNz1+8f+kZmmx6I4yozW6sjQ2NgZwz5qYlH5BxjzTsSjlhUvCuUKF5Bs1AcqQHM6Eh6b/pWz/9CVgp3gGQvo10YOVByh1bEPLGtzjcy3VW2OwV7t5MrkxFM/ygWSLKavKQF3OCk3/Aao5pijR6l9ec6P6ptQlFJ6wezBhJoo58v5yfoBWWugCyRq7mtGAxE28vXeHkz9Z2XDD3/76fy61jdyeLxCCX8Vsd5NSb3gj2FBDTPuXKF9L/tutf0bhW1+Szjqgo0QWll/4fDEkdLjiLDdA4FbiGxf8/epsE6e3hnIcw/9uwfOMDLHBodbCuyQIndibxvIMNeSbydEwLLgA0tjqgbzTgV0tsKPyzOjuhUVRESatcKuP+ce9Nw2du6w/sFYK+nUEzmRi+yC7BEdSOx3mFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199021)(86362001)(6486002)(31696002)(6666004)(316002)(8676002)(41300700001)(5660300002)(26005)(83380400001)(82960400001)(6512007)(38100700002)(6506007)(8936002)(66556008)(36756003)(66946007)(66574015)(4326008)(478600001)(6636002)(186003)(31686004)(2906002)(66476007)(2616005)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0wyOUpYdE9zWWR6b0lMOUhOUE9OZ09Sakdmc0E4UUZKTTllTjgyek5zQUFS?=
 =?utf-8?B?TGxhNU9GbzBueXNKRzl1cUlxWVg1Vi9MWVIzRlo2VVFwV2lIcC8zbisyTThY?=
 =?utf-8?B?UGJvMmNBVDFReVVKSHJpeXc3MzZmVlFTZWFOL1J6OUVrRStjQk8wY1pqbWQy?=
 =?utf-8?B?WWEwZDdIOFpEVTE1eGFIQ3RLNnJabk5IZENaQUNZR2U4VHNNMmgwcUdhTHls?=
 =?utf-8?B?RjhoYmtnbUp1VGhDZ1QyUEVBNUN0Zlp5TG9pdlI2d083S2MxSWRBU3NBUnRO?=
 =?utf-8?B?YnNnZmh3aytpS2s2NHJqbWhJbnFhWHNTaEt5VkM5TXdHdzcvRmFkTnBoWXlR?=
 =?utf-8?B?SmxxQ2ViK0czRmhFb2VpeEpLSzVRTGZlUlVJMm0wVXJrVUlWeUxkT2RSSFNZ?=
 =?utf-8?B?NU9pbkZIbnFIT01WSjQ3ajJEYldYU0VqbUlHK3N4TjF2YlorL0pPcTlHdWZF?=
 =?utf-8?B?SlhzVjYvMlBBNEVnTmdMS3piekc4RkhaajhGdlVtT1hMVDZ2WTZxZ1JQNC9j?=
 =?utf-8?B?U09sVHZYQ0VBTUFnUnl2NVJWdTRNR2F4amIzTGhzbFdJc0cxK09pY2JlS0U5?=
 =?utf-8?B?Z2t1b3dYMU5SL0xIbkhqZjhWaXhuc2lKUlJ6TGtlclM0ck1uSGtYSEpCMUpt?=
 =?utf-8?B?OFFvR2Mxbld1UkpuYlZMRjNUeWErb24vZzN1RjJOYzJvYVV3L2RiL01OeUN6?=
 =?utf-8?B?MGIreHNJUkJuT0ZQWTdETjB6Mk5uN0hJV0NORk5Ic1Ridi9aYktleWUyK3Ar?=
 =?utf-8?B?TnRBblNqNFEwZkNWZ3UxZjBndnJ4RWV6WGFxbFNyZmQ3Rzk2Wll4bnBVakdr?=
 =?utf-8?B?MzJVUWYzNUtPSHZXbDgxWFlwQ0l3WS8yY2J5Y001KzBKRk9YK2F4WkdYZ29a?=
 =?utf-8?B?WllhUWI4WjB2VGwvYTUydnI2cTRzQXNqbGt0V3dpR0g1WHZrSkd4VEJwcENO?=
 =?utf-8?B?MHNyMjdUbm5lSWU5UHZ1Ky9UZkFzWHpKR0x3Yjl5VmMvcGJkNjZsUWRzbUg5?=
 =?utf-8?B?cWxGbFNnUWxOd3FmdG1LMURHU2lTam1idXAzZ3FFd3EyVFpod0lyeHZXb0cz?=
 =?utf-8?B?Ky9SZlN4azFqZTc1dU1KZXJYZTNCU05TSHQ4ZDVxM0JsR2RWOEh5SU14S2lP?=
 =?utf-8?B?QzBZTDhDcHV4UEpmNmRnQzB4RElQWWlPVCswQXFZWjJMUnVRS0xrVzJaYTJQ?=
 =?utf-8?B?S085ajdOTHN2L28zSjZZMTlEZ055K3J5cFh4TWNoekd6aWJRSk9NWm15enVK?=
 =?utf-8?B?cVZGZFhpN01sQTdJc2VTRldodU5BMU1YWmttR2lQbkFRZ1ZZTnZVdXEyUjFF?=
 =?utf-8?B?NTM0UG1ON1N3dEQ5V2UvRVlnZ2tGbjNiWUhWbldYSjJKa0ZIZ05rNFBQVlZu?=
 =?utf-8?B?SEdhbnlabVdtb3IvZmpnaS84TDNxd0piTkdJWjNHTXIrZVdEeFBiVW5rNk5C?=
 =?utf-8?B?NlZVVzBWRE1yNTBrNTd1RnVKSnpMWGV1Y3BLYnhEbVFoYnJteVl5aGFQY1Yw?=
 =?utf-8?B?T01sTkpheEFWRTNTZGgzclhtQkN1WEorMFNCaHpWN2VVc1FCNnNBOUQrSzRZ?=
 =?utf-8?B?Nms5USs5L2Q1K0FPYytpWXR6U3kyU29iejNkam5pSEVqR0l0V1AzZXE1QnlP?=
 =?utf-8?B?TnAvVDJqYWQ5OGQvb0pqMDA0Tmc1QkNQSzJpWlBVa3Q3QnI2KzBsMDg3djlt?=
 =?utf-8?B?dFFRN2tBQU42WVJack9wcEJPYmN2WWEzRUlXcU1mNVJORzJGVmZ6aU1mUk55?=
 =?utf-8?B?VS9XWTkvL1BBVUZqa2hLSFpYRWRwTEphdUpjNXRxNkpMdlJKM1UrRHgvME1K?=
 =?utf-8?B?Um5aTHFjRkZyZFFRUnRNVjE4L3BvYkpud28zN1dvSTdWeFQwdmdQbk81Vk5Z?=
 =?utf-8?B?SFV1UldIQ2s1K2t6RjRWYVA4VVBHNXZYeGRCcklDckxUZngwZG1UMTc4OGo2?=
 =?utf-8?B?c3AvK2NOeHhQc3hxWTNWd1YzNTZTeVJlc0IrSXJvOXVIZU9ZbkRUSWdtNVli?=
 =?utf-8?B?anpvWDlrM0o1Z1BHaDBOK0lFK1AweWRJa2U1M1dOU1NiS1I5b3M3VlVCNnBM?=
 =?utf-8?B?OFhNNERpdXJSc0pDNDd0U3psZi9Vb0x3N2dqdU1qamRLaG9CK3ZNK0tlYTFN?=
 =?utf-8?B?Y04rUEdidGxTcWNPUTVialdla2xWakFyTHlnbTFEcG52aDZYbERnc3BzcDZ4?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b58dac9b-2e6f-4bf1-2546-08db6ce01f2f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 14:03:25.8511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5iKKMx2wAzfyv9/dlpGdxOsvrgLkib9wVCc2rICz4bv/KWes7CygjGI/piE49bqwK7CQ6gmr6MMGplbCh8Fb+MZhtJxcp41OOSUDF/i9ETM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5556
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686751447; x=1718287447;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1xTpL0Ni6GfGS7fVuJRE+LFwHJgNDcPdDr2rf6KENm8=;
 b=ah7Ta3FVuuDEyAdmjr+G4+wo1UfxDa0rz6E4C4Uoej1dX6WV1DDLe8nn
 FFkO0XN+LgfAFQZGEDRQzA6GoHavgi5QHiyuD83/d/P6Tud/8QMnsuw1k
 YlLsYipVsCmLxv7IEQeBHYqJeJuI3OFcIUJs1VhgZRlMufV4q15Kdpw/m
 sg4YTTDCcD/JKiZtSgLTSLobq7MLlrbZBscmhF/eAhalOVFLDak/hlemB
 slB770/uAaSCPTIgxOL4WD0iEucmU0GYoNq8gi1KSobeO3JJPPambCEI9
 XwbZtdaB7y7sIuWOTbF4s3u9QtTgKPT69jlX3w88RE9ZuJhy9IcvUg064
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ah7Ta3FV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
 anthony.l.nguyen@intel.com, fred@cloudflare.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQGtlcm5lbC5vcmc+CkRhdGU6IFdl
ZCwgMTQgSnVuIDIwMjMgMTU6NDc6MDIgKzAyMDAKCj4gQWxleGFuZGVyIExvYmFraW4gPGFsZWtz
YW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyaXRlczoKPiAKPj4gRnJvbTogTWFjaWVqIEZpamFs
a293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPgo+PiBEYXRlOiBXZWQsIDE0IEp1
biAyMDIzIDE0OjUwOjI4ICswMjAwCgpbLi4uXQoKPj4+IEhtbSB5b3UgbWVhbiB3ZSBzaG91bGQg
ZG8gYnBmX3Byb2dfcHV0KCkgKmFmdGVyKiB3ZSB1cGRhdGUgYnBmX3Byb2cgb24KPj4+IGljZV9y
eF9yaW5nPyBJIHRoaW5rIHRoaXMgaXMgYSBmYWlyIHBvaW50IGFzIHdlIGRvbid0IGJ1bXAgdGhl
IHJlZmNvdW50Cj4+PiBwZXIgZWFjaCBSeCByaW5nIHRoYXQgaG9sZHMgdGhlIHB0ciB0byBicGZf
cHJvZywgd2UganVzdCByZWx5IG9uIHRoZSBtYWluCj4+PiBvbmUgZnJvbSBWU0kuCj4+Cj4+IE5v
dCBldmVuIGFmdGVyIHdlIHVwZGF0ZSBpdCB0aGVyZS4gSSBiZWxpZXZlIHdlIHNob3VsZCBzeW5j
aHJvbml6ZSBOQVBJCj4+IGN5Y2xlcyB3aXRoIEJQRiBwcm9nIHVwZGF0ZSAoaGF2ZSBzeW5jaHJv
bml6ZV9yY3UoKSBiZWZvcmUgcHV0IG9yIHNvIHRvCj4+IG1ha2UgdGhlIGNvbmZpZyBwYXRoIHdh
aXQgdW50aWwgdGhlcmUncyBubyBwb2xsaW5nIGFuZCBvbnN0YWNrIHBvaW50ZXJzLAo+PiB3b3Vs
ZCB0aGF0IGJlIGVub3VnaD8pLgo+Pgo+PiBOQVBJIHBvbGxpbmcgc3RhcnRzCj4+IHw8LS0tIFhE
UCBwcm9nIHBvaW50ZXIgaXMgcGxhY2VkIG9uIHRoZSBzdGFjayBhbmQgdXNlZCBmcm9tIHRoZXJl
Cj4+IHwKPj4gfCAgPC0tLSBoZXJlIHlvdSBkbyB4Y2hnKCkgYW5kIGJwZl9wcm9nX3B1dCgpCj4+
IHwgIDwtLS0gaGVyZSB5b3UgdXBkYXRlIFhEUCBwcm9ncyBvbiB0aGUgcmluZ3MKPj4gfAo+PiB8
PC0tLSBwb2xsaW5nIGxvb3AgaXMgc3RpbGwgdXNpbmcgdGhlIFtub3cgaW52YWxpZF0gb25zdGFj
ayBwb2ludGVyCj4+IHwKPj4gTkFQSSBwb2xsaW5nIGVuZHMKPiAKPiBObywgdGhpcyBpcyBmaW5l
OyBicGZfcHJvZ19wdXQoKSB1c2VzIGNhbGxfcmN1KCkgdG8gYWN0dWFsbHkgZnJlZSB0aGUKPiBw
cm9ncmFtLCB3aGljaCBndWFyYW50ZWVzIHRoYXQgYW55IG9uZ29pbmcgUkNVIGNyaXRpY2FsIHNl
Y3Rpb25zIGhhdmUKPiBlbmRlZCBiZWZvcmUuIEFuZCBhcyBleHBsYWluZWQgaW4gdGhhdCBvdGhl
ciBzZXJpZXMgb2YgbWluZSwgdGhpcwo+IGluY2x1ZGVzIGFueSBvbmdvaW5nIE5BUEkgcG9sbCBj
eWNsZXMuCgpCcmVoLCBmb3Jnb3QgdGhhdCBicGZfcHJvZ19wdXQoKSB1c2VzIGNhbGxfcmN1KCkg
OkQgVGhhbmtzLCBub3cKZXZlcnl0aGluZyBpcyBjbGVhciB0byBtZS4gSSBub3cgYWxzbyBmZWVs
IGxpa2UgdXBkYXRpbmcgZmlyc3QgdGhlIHJpbmcKcG9pbnRlcnMgYW5kIHRoZW4gdGhlICJtYWlu
IiBwb2ludGVyIHdvdWxkIGJlIGVub3VnaC4KCj4gCj4gLVRva2UKClRoYW5rcywKT2xlawpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
