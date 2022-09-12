Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAF35B63CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 00:43:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCCB341559;
	Mon, 12 Sep 2022 22:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCCB341559
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663022589;
	bh=EjxegR3rh/oNYGXXdANK7DhPoPf4BQmoKkd5A8ze/Co=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G9xnxzK+oasEBaDNA+hKIjBTu0kkb+0+vyQR9SgWvJyR6hRkpNPjiSXwAx7Cp/OUn
	 9LOtgat/uFbbE7dgszz2gFY0T9yL0A7VuX3GgW+qrblw8EmzGYIAHM3pGfOw5+epPz
	 1tcJK4VanscrbbntQCDY4p6HFsnin3S82drltz7IbFYqvehMhUd25ASF3H7OBkzN52
	 o4ucM5u3GbJxYr7izv/ZbTBlfpMtW4k+gmCq5qJpi+pFZ/sqnfNcxgrmdQDu4alKmj
	 mc7mJpRTnnrCTQt5z/QIf81+sJeBRJ1rv71mBAztEmC/zh+740GSCf8ZLCiA/ANFbS
	 p8Mf5a2ydQWEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJXDAbRBIOFZ; Mon, 12 Sep 2022 22:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01E5240995;
	Mon, 12 Sep 2022 22:43:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01E5240995
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CD1E1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 22:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53F56414C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 22:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53F56414C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRWRZ5qQviDb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Sep 2022 22:43:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ECCB40995
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2ECCB40995
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 22:43:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="278379772"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="278379772"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 15:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="861320635"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 12 Sep 2022 15:42:59 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 15:42:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 15:42:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 15:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrXEfF+ryVyuuoct1ne9eTd7uBpZD6e1uyOHzaTidfD/5edO2ITKi+Emcv4giB8WGXzYb32sG1cT2/HP1lIBpOqr5QfiZRfNF16cs40PHU2cpT2vyOLsZyNaYW0iKWeymr1QgkR4NacasQ+bUerzjF/qO+t/0HGZPqzOzOq/hxqucWn5dbJK/aClR+lILwRvlzN4LEFtOUDdtaJTUgeOcu0xHtnuVRif2COjyQKkYsKflMXgzMVH7GrmPHlFNWlWvD7rVY8WbP912PgtrPcWwswAenMS7G9m3ZJS9tz80UUhWoNrk4fGvtqZ3pfbvTfBYqkB5wVldmttiasvRJLlsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xtFD+NruDxsrWzAm7byEGXv6Zzf5rEnf3Jfy/Z4QO4=;
 b=bXkYMUujlOLzMsTwYWad8lT1PsRNJDqLrwCiDTuh9i8ik0En1KssGmLMpLIL9n0AkVW/Kwhwdm02PITqltrua70myWSewBaN1rcFhS+UPu/g+ffgYRnHT18jAy8b5+q8hE/sq6L+gKr6r7GpDmATDS5rBq7CryjG5gJxkuSPHnhmLS1tVr7zyAfZCoCVf8/l/Zqyq6kGQO/VcgKj0UAIliAQ0et8VhxMfKKEh7Nu62ciiTBL69lowHHUmviakTM7lOFpg6foUXnarP2rJ5r/ERlHJxWOnmhobTxIbBVszwBlJn/k1hEdoUOls7+0xxr8Qk0S9Bo4G3R/nWIxtn4Wvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH8PR11MB6831.namprd11.prod.outlook.com (2603:10b6:510:22d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Mon, 12 Sep
 2022 22:42:52 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 22:42:52 +0000
Message-ID: <c31c8400-a71c-4489-a5d1-3482be590c8f@intel.com>
Date: Mon, 12 Sep 2022 15:42:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
References: <20220909083326.344027-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220909083326.344027-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0167.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH8PR11MB6831:EE_
X-MS-Office365-Filtering-Correlation-Id: 90ba3ccd-c814-415d-a6a7-08da95102048
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SBzNmiUADTwoNuXmT6DkQT3HdQvghoFUKDQdqqmsRFgnz8o0z9rjZVt4osN8pnbHezRzg9FvgeMXvi4CyE8iCaUBtDMejPf4DJdUHDD45/XQH1Rqn4rjakCmv638fPUWICSYjv2Ke4eW2trKKgnuf6OuJp2P0qjasQJOVOa2alzbeP50YzLQPX0YSPXqHfGI8upizvM7cDRuoSHyjd9TUKobFsmt0U5Z+j3xEH5fKUQH+R6gCeTVwcOQ2tbFPRljk5pRtIPkFfT+UBNA+3xa8TD6jHS9kiJ5zbBiGyVWil3b55JzafbfuuXrRL5jSHJjZnWRmVPYaS9xhUJzY/dp6BxXzvb1lMNccAVGma5iXdskdMQAo1MTnmS/jrXiYIbNF/mIywTeWI3GGTrNPsbmXz//iCvHaaz/ptxNb7g5X6ZpH6XikjiUUXcBju+AYsQPgbGlRWVF1M9bPh69HqSV7wG56qMw1WFjrjRATbSekmu44zlNCP/ocKapZgXywOoiNczIVoXAFoYsITTGIaed9+41B6DK+x3f7N0hJ5iDmQ5leb61Av2SJ7x2gbcR8QMmkhv2d2SzptY6hvwBtuOSHOBgMdQbTahq9CFodAu9Apf52rZfE5x4JIJrVnBTKC9i9MtaaUrfXdodzttPit8nigxdVRnCwM6YuFsk1cF3qOBrQdECGQMGkdp+px4yXGaQwhY2HCzxFy82A3wySbt1zUVLO/AXRyvE2vvqj0rd+aUjBHNl7a88AGXv63Fc3Y+2kAr5YG06Xk1tT21P7HBdg4t3pI/XCySe4XLVfgda4rY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(136003)(376002)(366004)(396003)(451199015)(66946007)(31696002)(6486002)(8676002)(31686004)(186003)(478600001)(5660300002)(66476007)(66556008)(82960400001)(38100700002)(86362001)(8936002)(6512007)(26005)(41300700001)(6666004)(6506007)(110136005)(53546011)(6636002)(316002)(2616005)(2906002)(83380400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTJQTi9aMFV3SFdYTVpyVHU1OUdRWDdyTGsvcjZyV0dYUXdQVjdOdjdqVHR5?=
 =?utf-8?B?Y21MeUExNjQ4RllpYjZaVEwzaTF4MkpSaGRLbXpUczkxWW1sR1paMTFCQmdN?=
 =?utf-8?B?ckt4MWVEcCtXUVVWZGIzNG9GUHNIMU1lam40eDZWK2lwbFYzb0RnWHd2SGVU?=
 =?utf-8?B?RzNyMnpVWWhNT1pwOFRGN25EYTJ5K3Q3V2p5RUdRdnovc09jYVJQNmRwYTJ3?=
 =?utf-8?B?NWZyQWNzakJqUk91RHRGOVFYR3JuVmpsN0VwV2VQK3ZBbFE2Mm5kYk9BQWwr?=
 =?utf-8?B?aS83OTQ2KzBNNDB5UXlGT3lUamp5UHFqOWE1NmhoeWFDSlN3RVhCVjJ0MUtX?=
 =?utf-8?B?cnNvbkJpTGhhTnkwZk5RQlZIYzNMdSswdHI4SHVKRHU0a3ZKMTVYeVhvcWE4?=
 =?utf-8?B?Q0d2UUNKNHhLOXAyWGN5MFVnUDNQbHFtRzl3VjFHVDZucXNZWVpTMUVMNGtp?=
 =?utf-8?B?MGkyVVp3YkR2ZjFYd0VpQm9XZjMrTEdsZWpNVFZteVFraGVyeWN2aFp6U1FR?=
 =?utf-8?B?VmYrWGV1dDNWSEdYV094MU8zdi9YdXl3ZXBhVS9WZHpac01WR29lMHdrZ0VX?=
 =?utf-8?B?OVNzVU9IbmNpRnh4VDZWS210UnNDUWd2c3Q4RzcvdWhTSlgrQkF5YU1wZEh0?=
 =?utf-8?B?N1Z3UHpGYnVJWUJrNmd0TC80U3FOajNPbC81VFVkTmZqY3NIMW5qc2VNWHRR?=
 =?utf-8?B?Q1JEelBOdUJ0cjBVUHR6S3pKOXpGczdOZ3lpUlE1Z09XclZRRTVPb1hURE53?=
 =?utf-8?B?aWhoMnZaTFFEN1oxZVhnS1Q3d1o1NjNkdllRRHlWM0R0OWFHZENQcjVGcEdu?=
 =?utf-8?B?aFVNMVRuL2hxK0h1cjltbjRwd24zVGZ6RldnVnVxQUZTN1ZUY2ZpaFYzUVY4?=
 =?utf-8?B?b1Q5R0JCSUdWSDBkU09CQlVFS1VCQmhqOE0welE4cW1IQWVMa01xN0JyT0p6?=
 =?utf-8?B?bnh5RmVKL3VvclppdGdFL3lRQUwyVysvYUMzcUlUb2g4VmtUMjh3cVYvMzJR?=
 =?utf-8?B?aXJSTjB3b2YrM0xkazBSSG1FMFJhQ2tLNXRCd1JSdk9JTjkvdHFtSllMZWhI?=
 =?utf-8?B?L1NPTVQvMDV5ZjFHcEpndzQvY2loME83Mmo4UFZPcXhiM3Y4eW1uWG1keUhu?=
 =?utf-8?B?bWcyRUhPSE8wTTAzZ0FjeVBBdzFMVkxvb21KaUE3VGZ2eG5OVk5pU0F2a1Rw?=
 =?utf-8?B?ZmVibExVdmwrWng1dUxFRXZDNnU2RU5jby9TY1huaWVuUWNsYjEyUEorZU1N?=
 =?utf-8?B?aVgyQUZHWnBtWXZNNnFSc2pLdEptRE9peThNaWNVTlZyN3IwTVNmNmJkWEtD?=
 =?utf-8?B?TnMwZmJWOVpJWHZmbWFMSTVnajk3Rm5QUmdYajNscWFnRlhSMnFiM0NoczBs?=
 =?utf-8?B?VmRSdURYaG15ZUhPNzllWVVFTStCVlp5WlIyc0hoNkk0K2hJNi9raXA4M2kr?=
 =?utf-8?B?cUhYYkExNGduNkFDUVVXZkIwamlmZVF2UDlLWm8wM25XZ0lwYVdzQlphQzFy?=
 =?utf-8?B?MVJHSzJyRy9LZ2lxb3RNY2xlajBtdlBMZkpZa1pqOXltZFhyTHlPUkxmUUdG?=
 =?utf-8?B?dHdPenkxRXcvcUUzdk1aMy9JS2tqVDZFc1hTODVWUGsrVWZ0Smprckg5d2h2?=
 =?utf-8?B?d1gzdjhZeTFqNzR0OVFaNEVhNUpIeFQzTW1XRHNlTmczZUUrbmRQR2JkS0tl?=
 =?utf-8?B?R2dBSm9vQWZ6Mk44Z0p5SytYMWtIUE5Kb2NZaFREZWovcTZiZ3hzSGlhaVkw?=
 =?utf-8?B?cHlBRXcyTnJZVG4va1NKcnZJbjAzWEx1dmY5TE45WXd1YXNCOHRueVZzdWdK?=
 =?utf-8?B?c0dIWG8yQ2hBalVFaWVVN1dRVm5EV1JMMm1MYTVZMlBsK2xWUGVRNm9yWWV4?=
 =?utf-8?B?R1pQS3k1SmVBNUNVNjRFRC9NTHRULzdJS2l0Si9KRVgyT2Z3VVp0dzFxQXl6?=
 =?utf-8?B?ZnEzOEtoUnVaaTA5c3hJS2QzWTRCcGMyclFjclZqN0FZeVhOMXltbnRXdElh?=
 =?utf-8?B?bUtPWW93NVJpQzFvRFEvQzZlVmlkbXQ1YWpDSTY3Mmx5YmJuSGgxdlJuOTJv?=
 =?utf-8?B?ZDdCeTZISGdyN0pFY2hFNG9vRktNdFhjdVZtVm40UThhb09qUDlJbENwa2xt?=
 =?utf-8?B?djhHT2c0dDg2LzNpS0RUZXc1aWFwTVZwRDY0bjRZZWJqenF5UmZMQmdvWWwx?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90ba3ccd-c814-415d-a6a7-08da95102048
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2022 22:42:52.2025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sy9cP0gdaCYZJhDkGFZNj5jPQv6mvJ4DwGbgl6FF+p0+hItfnIG2xYt08M85P+k1lYyHvYK/BIY8fIcU1AT9Kq2g/3+0BjJ9Un0mFn8q7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6831
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663022580; x=1694558580;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d97HtmpWtjPwKEWTje5G0J/OzoA7K3n3poy8HxCu6dc=;
 b=jyBdYl4sIyS2CGXRR4KPChtaIOjBTpmqZC4guICfONmQXHJExmuhvpy2
 qz5oBtu6TlUuuKw4jrDKXyozWGufsgup9gn+bNxXGIkw0fxWKholULxNf
 Cedj+SwgrJrBxzdOsPI8NAWoENwNvDPqFYiNStARVdS0eBudbEcen35/E
 98/oGtBgO/R15/EEAvKYVW9oi15nmNZRAiMio/2c92i2HKZOBkWPzv+cq
 dcK6LVP1Z+UbFTZIs5rL/4PjtD3OfmJVik3vXwwC0hzbB6kNEYPxa8Q80
 ucvGNdBZPtUjw/GTWhcWsyzbrjtKrkXsn2zogjPIWvW9T/CBLJbMoWe/h
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jyBdYl4s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adding Maciej in case he wants to review.

On 9/9/2022 1:33 AM, Sokolowski, Jan wrote:
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> During reallocation of RX buffers, new DMA mappings are created for
> those buffers. New buffers with different RX ring count should
> substitute older ones, but those buffers were freed in
> i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
> thus kfree on rx_bi caused leak of already mapped DMA.
> 
> In case of non XDP ring, do not free rx_bi and reuse already existing
> buffer, move kfree to XDP rings only, remove unused i40e_alloc_rx_bi
> function.
> 
> steps for reproduction:
> while :
> do
> for ((i=0; i<=8160; i=i+32))
> do
> ethtool -G enp130s0f0 rx $i tx $i
> sleep 0.5
> ethtool -g enp130s0f0
> done
> done
> 
> v2: Fixed improper kerneldoc that resulted in a warning
> v3: Applied commit msg fixes reported during a review

These should be after the '---'

> 
> Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP rings")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 14 ++--
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 70 ++++++++++++++++---
>   drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
>   6 files changed, 74 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index e518aaa2c0ca..0f2042f1597c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct net_device *netdev,
>   			 */
>   			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
>   			err = i40e_setup_rx_descriptors(&rx_rings[i]);
> -			if (err)
> -				goto rx_unwind;
> -			err = i40e_alloc_rx_bi(&rx_rings[i]);
>   			if (err)
>   				goto rx_unwind;
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index e3d9804aeb25..ad15749a2dd3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3565,12 +3565,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   	if (ring->vsi->type == I40E_VSI_MAIN)
>   		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
>   
> -	kfree(ring->rx_bi);
>   	ring->xsk_pool = i40e_xsk_pool(ring);
>   	if (ring->xsk_pool) {
> -		ret = i40e_alloc_rx_bi_zc(ring);
> -		if (ret)
> -			return ret;
>   		ring->rx_buf_len =
>   		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
>   		/* For AF_XDP ZC, we disallow packets to span on
> @@ -3588,9 +3584,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   			 ring->queue_index);
>   
>   	} else {
> -		ret = i40e_alloc_rx_bi(ring);
> -		if (ret)
> -			return ret;
>   		ring->rx_buf_len = vsi->rx_buf_len;
>   		if (ring->vsi->type == I40E_VSI_MAIN) {
>   			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> @@ -13304,6 +13297,11 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>   		i40e_reset_and_rebuild(pf, true, true);
>   	}
>   
> +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> +		i40e_realloc_rx_bi_zc(vsi, true);
> +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> +		i40e_realloc_rx_bi_zc(vsi, false);
> +
>   	for (i = 0; i < vsi->num_queue_pairs; i++)
>   		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
>   
> @@ -13536,6 +13534,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
>   
>   	i40e_queue_pair_disable_irq(vsi, queue_pair);
>   	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
> +	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
>   	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
>   	i40e_queue_pair_clean_rings(vsi, queue_pair);
>   	i40e_queue_pair_reset_stats(vsi, queue_pair);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 69e67eb6aea7..c5a7e3819ce2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
>   	return -ENOMEM;
>   }
>   
> -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
> -{
> -	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
> -
> -	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
> -	return rx_ring->rx_bi ? 0 : -ENOMEM;
> -}
> -
>   static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
>   {
>   	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * rx_ring->count);
> @@ -1593,6 +1585,12 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
>   
>   	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
>   
> +	WARN_ON(rx_ring->rx_bi);
> +	rx_ring->rx_bi =
> +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);

This will overwrite, and, presumably, leak rx_ring->rx_bi for non-null 
values.

> +	if (!rx_ring->rx_bi)
> +		return -ENOMEM;
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> index 41f86e9535a0..768290dc6f48 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> @@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size);
>   bool __i40e_chk_linearize(struct sk_buff *skb);
>   int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>   		  u32 flags);
> -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
>   
>   /**
>    * i40e_get_head - Retrieve head from head writeback
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 6d4009e0cbd6..ba33b3b7a2bf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -10,14 +10,6 @@
>   #include "i40e_txrx_common.h"
>   #include "i40e_xsk.h"
>   
> -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
> -{
> -	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
> -
> -	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
> -	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
> -}
> -
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
>   {
>   	memset(rx_ring->rx_bi_zc, 0,
> @@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct i40e_ring *rx_ring, u32 idx)
>   	return &rx_ring->rx_bi_zc[idx];
>   }
>   
> +/**
> + * i40e_realloc_rx_xdp_bi - reallocate for either XSK or normal buffer
> + * @rx_ring: Current rx ring
> + * @pool_present: is pool for XSK present
> + *
> + * Try allocating memory and return ENOMEM, if failed to allocate.
> + * If allocation was successful, substitute buffer with allocated one.
> + * Returns 0 on success, negative on failure
> + */
> +static int i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool pool_present)
> +{
> +	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
> +					  sizeof(*rx_ring->rx_bi);
> +

no newline here

> +	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);

newline here.

> +	if (!sw_ring)
> +		return -ENOMEM;
> +
> +	if (pool_present) {
> +		kfree(rx_ring->rx_bi);
> +		rx_ring->rx_bi = NULL;
> +		rx_ring->rx_bi_zc = sw_ring;
> +	} else {
> +		kfree(rx_ring->rx_bi_zc);
> +		rx_ring->rx_bi_zc = NULL;
> +		rx_ring->rx_bi = sw_ring;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * i40e_realloc_rx_bi_zc - reallocate xdp queue pairs
> + * @vsi: Current VSI
> + * @zc: is zero copy set
> + *
> + * Reallocate buffer for rx_rings that might be used by XSK.
> + * XDP requires more memory, than rx_buf provides.
> + * Returns 0 on success, negative on failure
> + */
> +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc)
> +{
> +	struct i40e_ring *rx_ring;
> +	unsigned long q;
> +
> +	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
> +		rx_ring = vsi->rx_rings[q];
> +		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
> +			return -ENOMEM;
> +	}
> +	return 0;
> +}
> +
>   /**
>    * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
>    * certain ring/qid
> @@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>   		if (err)
>   			return err;
>   
> +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> +		if (err)
> +			return err;
> +
>   		err = i40e_queue_pair_enable(vsi, qid);
>   		if (err)
>   			return err;
> @@ -107,12 +155,16 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
>   		err = i40e_queue_pair_disable(vsi, qid);
>   		if (err)
>   			return err;
> +

Why this change?

>   	}
>   
>   	clear_bit(qid, vsi->af_xdp_zc_qps);
>   	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
>   
>   	if (if_running) {
> +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
> +		if (err)
> +			return err;
>   		err = i40e_queue_pair_enable(vsi, qid);
>   		if (err)
>   			return err;
> @@ -131,7 +183,7 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
>    * This function enables or disables a buffer pool to a certain ring.
>    *
>    * Returns 0 on success, <0 on failure
> - **/
> + */

Also, this one. I don't mind this, but seems unrelated to the patch.

>   int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
>   			u16 qid)
>   {
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> index bb962987f300..821df248f8be 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> @@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
>   
>   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
>   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
> -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
> +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
>   
>   #endif /* _I40E_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
