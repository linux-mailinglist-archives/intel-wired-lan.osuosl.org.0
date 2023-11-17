Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E3C7EEFE0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 11:13:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B653A6FB05;
	Fri, 17 Nov 2023 10:13:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B653A6FB05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700216033;
	bh=fT7iB+EZ67jupnm1GYHlorL80n+1l/jn/Z9BR3QHqOI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DP4hrTvpjD9ff9OX5JQV6q/UoySztrKEDn4DvvhmjsCEw/wsb/v1PsS/xNWgqjxX/
	 MG6la12j9F9vpX9uru/Jv2lkIoYdmNtaDfr16rLb9LqYindtKBQV1cpRwNuS44YGT2
	 p7fnFf362BkBcyvKiZpOhUBpsFslVjXzf1sB3c69qg6bHsbwlCqanaU6e55ZEj9+ei
	 Vwg2TNQtgW4+oxC8f2Jx8i8zo5/Tdg3XHNOXr8jov76xBdbxvmA0ZhNdxOFx2AYf6W
	 admiOPBkCtoaBdtfgUlg42cD06sZcnecNpUJXox002jCt3pEuNJtRCm53/Bwwh3ct4
	 H/4oDJ1ccLSog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8niYk2sf_OsL; Fri, 17 Nov 2023 10:13:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E45261203;
	Fri, 17 Nov 2023 10:13:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E45261203
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CEE31BF31D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 10:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9B4340523
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 10:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9B4340523
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id imwl5hgtq70g for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 10:13:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 593F0401AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 10:13:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 593F0401AE
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="395200476"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="395200476"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 02:13:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="939110071"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="939110071"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 02:13:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 02:13:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 02:13:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 02:13:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 02:13:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsgK08otZQftGmXDWAdx+gjXJunanv3XPeKRgzqz8Qh09Lpewg5ylsfQKYRbIny9fzTwKBO+9wDh/DwS96s7bLqhxnObyAOeNgTYfv0pBl8YqJEWxJx7jAjUQvS+X+HxoSJNZ43PKZQ0FuOhW46NVGMcF7QTk0N9wwZ/63p/1DBfLIWlDl8GJtyhW1kkSTVed8n0Gj3+N335WwT2/sMiWEcnDOxpQ56CPjy/LEQJ7cUXXRX1oBbrcB9WZFPvSqyjkPUCZO6IvRA8VNH/snfeK+cO87+qELxgZkGKe+OM1uXr4PEWnwiFimdOKQdkuh9XxWvf5fNSD2V8zz8UFQZAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4VHI/yh25wmm9D+J2ziRMOmAuVyHovHd4CmJU5unxxY=;
 b=m0Ufc9NK7jMaO5H9LTi02JK1yKs/PEu1soadt3z/6MYiLdC10JB+CK4fw0SER59GOM+KZ7wUuoqZw1d2eijFkLwiljCXEu5HtIIPPIdYjqCwynn/2NEFWd68ygNCVE3ND6TwvsgQvAEnwSUz2DFv+dW1COfshN0zDprlM9muL308AQ3jY6IP4/ZgMORdr8rdUsxegEqeauIQ3WYLBsDooJ+7P4AnK342CLsw8VBzspqF9oXNPnCPLKftJ9mZ2n+0l1zo3B01w9Hf8CQke0H0VrpWm0Tz3ug2DPCk+Twov0vHB2ehuAKgSEnd5CArvcgerF5+JgEJRscvwUKUA1whlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CH0PR11MB5217.namprd11.prod.outlook.com (2603:10b6:610:e0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 10:13:41 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%4]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 10:13:41 +0000
Message-ID: <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
Date: Fri, 17 Nov 2023 11:13:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Christian Rohmann <christian.rohmann@inovex.de>,
 <intel-wired-lan@lists.osuosl.org>
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
X-ClientProxiedBy: FR4P281CA0129.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::12) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CH0PR11MB5217:EE_
X-MS-Office365-Filtering-Correlation-Id: dfed8e62-ebcc-4fc7-aac6-08dbe755ded9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 50Jxtxc2yX1eQ92L4MTwgGblbaPLIjOpGP7hTVVMYZhBCpo8ldzJYG76Zck5euv0F4KaAf9E9T+AGDEBOwjvwQABjIlhz+ttGJGSPXs/7kJ1vq+WBI+ltS1EBwDILYn1l3T/f6qyOimM1vyH7KlK30918jDDsMxjmkeInIHg4yxV0ViZ3MOYKF56+G94U4C/fQuttbUTCmWvts6fV/p4wapHrUMgOqaPYB/4zEYL0wKgq8KBSnDzJmJeODKZFk0Yza2yblqN8bFjfilYxMDJ7Gvb3wzZC8ZevRRV2+4bSvQEw4rG41kUrd2MtgSeLtB1ZZQVFlt5rwNRyJvC4aP5TvuuesppEQHBM4Z+c63ZXriqqgzAAsg6Kk+27TH9Rnu3Az7YqcfH08QmjsuQ9wckeDX0PwjcgX5jacFPOxs8szUDA23L3qmDF9bmyW/PWYogyTPa7sMaeSRaKVl4RnKhZ9FTsGtIA7aUOzsazH3Ri0Ofvk7qiyR/xiI11xtjEKkD46bG3JbkVV4aCYX3suYyQW8+yx5Dd5peDzw6HKo9841PANtUWNkupvUuVVcGhaJw8RGA+/YRM5w7Q0AD128IwArowwkVDXj6uHKzE0BPihEkkbAxVUFc9B6EX2ltOILC/sXQ8aX36oUeDP6xkEQtAgwxUF7x3iy7HT339UNBHOU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(396003)(136003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(38100700002)(2616005)(41300700001)(6666004)(86362001)(6486002)(966005)(6512007)(66476007)(478600001)(82960400001)(66556008)(66946007)(107886003)(2906002)(36756003)(6506007)(53546011)(31686004)(31696002)(26005)(54906003)(316002)(83380400001)(8676002)(5660300002)(8936002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UW84UHhPb2dwN25SbmFYVU1PWmVTUUpnQXBNTTZQUHllTHRGRWxYekc0TC9x?=
 =?utf-8?B?Rk8zZ2FDSXl1RmFrenA5NFBiUTdjRmcwVVZkZnFVdmFpb0JqWHFteDY3eFMy?=
 =?utf-8?B?MVg2d054R01TWm1pVWMxeFl4ZVRIVTVqb2pndDhpZHZHWGI3MEZmRUhXREZN?=
 =?utf-8?B?c0N2SUxPdkFyNnN2QXE5dWxPUDFMRVEyMmUzdVlKQ3ZPWFU4eTFGSVFtbGFu?=
 =?utf-8?B?NmdqYUpsbmFMNWlXNHBoZWRuV2NPdmhvdlNiN1FIWHBTY29DS1l1ZTN1NnVH?=
 =?utf-8?B?dEFqWElFdjkwZWpZT1RzUnpZRUR4YU0wVkFOLzJLRGRiR2phN2hKbGFhUUw4?=
 =?utf-8?B?NXh5SUtQSzBiSCtRcjgrczZpS25Ka29SRGQyN1Y2TTRtNjdDMmxSR3BzQXZr?=
 =?utf-8?B?YUFLdFIrS2tMbWNMYXJtUi9rVEJoMjJQZGdzZWsyK0xDUERkajNVUTE3V25x?=
 =?utf-8?B?STRlQko3TWxtOXFDTnQ0WkZGdXhCaEh4S3RtZ0hVQXRoN1VDR0R5dzMwUlJ6?=
 =?utf-8?B?MjBwZitWVDJGaVRqMlkyaTdncStVZUR3bWM5TDJqZEYwOW1ydjNleWt2TGZN?=
 =?utf-8?B?WGZiNU52Tk43U1JOcjJXZG9hVmJubzVjQlNGNW5GY2haSjRiWndLUnhab0Vy?=
 =?utf-8?B?VUJQU3c0S0k3aFA4dUVDU1JEaVk4QlJKbDlwYndTbVhCWjk4NEJ5OUt0Z0VB?=
 =?utf-8?B?K3h0MmtwTFVWUVNSQ0ErR0I4Z0xESUMzVjRLYzJNOUFwa0JSN0NVeGd4WlVv?=
 =?utf-8?B?eVA4TEliQ1Q2R05YNktsWjZVMDBzMCtZUEZwcFpoWFlCNVRKM1A0ZGsvNStm?=
 =?utf-8?B?ZVFtUEdoNTJTaGVHNVhDWGhNVXNFUTNFWWptSGtVNmVXN083c1NsRVM4MXMr?=
 =?utf-8?B?bGltbk9KUDEraytDcWdCS3ZrQzFiOGFkQk9qRS94N29MTGtSbkRlQ0ZSbDQy?=
 =?utf-8?B?dVgxUkh5amsxbnhCZmg4RTQyazhUaVc0OGcwM0NkNXNNLzVXNm9PR3hTVHBn?=
 =?utf-8?B?TFI3bjVKbGRGU0xvbmRiNTM4SVZTb0NGamltMktFRERXei9jT0RueXNlWFAz?=
 =?utf-8?B?K3RBbEJpNDNyeUpLQU1HN21ndEdNNEFSNFJKOFdjdWQ3ZGNVSHlDSE8zbXZn?=
 =?utf-8?B?THdScVJNZURwK2pYSmlRSDVjNnpmYnFqOVFjd0hLcXZXVEcwdk9iSmlFMFVE?=
 =?utf-8?B?dFBVZ0hSKzRVSVZtQ2NRV2VsNDQrYWF3VWRFVHU5KzVwU2o0NmI1elNLT0Jl?=
 =?utf-8?B?WTgrWDF5L2dVRGVCZ21VVC9tMG5DSjNTYkJwcDBickp1VHRqWWZPa1hpSFZP?=
 =?utf-8?B?NXFnL0VZVXFJWHE2c2xMdDhOWTQ0a2FrYmJEV0s1K29xdjU0NUQvdUNOelgv?=
 =?utf-8?B?NGw3cDNrQ0hKRHl1eUtpUWxGNjNPM2w0V2x3dC9PaW9RSU9lQnY0Ui9pR3Zk?=
 =?utf-8?B?Tk9YYytzOVRSaUtBQjhkakNGSWdEVVBORFF2ZWpuaVUvblpQQUhKb3lGUklX?=
 =?utf-8?B?aVVWQXVMdDV2ZEg5UFB0QlRDemNZbEcyWkYyeUFzSGZwQWY4MGRIN0NkSWxx?=
 =?utf-8?B?K0NFcDBEMVN3VXpndWtLWG5KdjVpOFRFekYvUDR6ZHNGLzNmVWczaGE5bk5Y?=
 =?utf-8?B?SExzRXFyQ3JMbCtpcG1XU2tZb0FUV0RWbXhaZHY4MkdGcnRQeGVBbHRKUDdL?=
 =?utf-8?B?WFd4YzhGMmhudkw5UjlnUDArYzdnaFVzcGlzdnlRK05OenVHd3V1eUtQa3hr?=
 =?utf-8?B?Y3ZjQkpsNmNXMVJXTEVPRHN5eDhvVUZ0clp4aEE0MkRIT3h5RlJXenFUMzNj?=
 =?utf-8?B?OFNDekdaVUhRQ1p6TExBbjUraUxUWS9ieWJwM09wcVZUWHVzTnlFNS9KSkxz?=
 =?utf-8?B?cm5IMHBxdHJzY0ZOMGRNZWFtYjJFNHV1MTVlM0hNNFU3K2g1eU9DTGpBWUQy?=
 =?utf-8?B?bUhaUS9kQVVycEJSZjlhMjRlZ1RzWjdRTVZCZWprRisyYXdOWk1EcDBDOFFu?=
 =?utf-8?B?aVFRQ0QyLzh1OUxIOXFidHFGZFlJZzFHSUdJRWZpb0JHZGl5QWVrckhMZjkx?=
 =?utf-8?B?RHBJRG1mblhYQ0w2VFliYVZUaHpGcTRSelAvU2R1YmdoWUpiNDdVZUZTOVl1?=
 =?utf-8?B?dnhzQUlFZ0RYSWVNZTFxQmVHSHBuL3JZTzBhY1RKV2IycmNpbDhiWElXdEVs?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfed8e62-ebcc-4fc7-aac6-08dbe755ded9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 10:13:40.4011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8dijwSRrCFzTlBAVhRxlpq7jXycc8MeKbKts+tfd2DBsmDRq/UwCuAld6AUm9d3wqBH0t/2OfgoOtVpV3Ja7k0tL/Cf+yZEg5n/TJYCFOLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5217
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700216025; x=1731752025;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y41mICrgHpHwG1VxvYM7HJr1R4DEuhroDNDlZfr85DA=;
 b=j1JZMLMZFrm6v4HimOntOECyrsWPZL4ZO1amorbOsKb4BJlxcWSUrV8y
 a52hfNGTqaaNxZO9eaP4itW58DtABo4kzZlOIcBCqfCU9GcSPT9AhxDvc
 ALNQswdi21m5uV7dLVYOKZGOlKDjNs8GOnoAy97Nbn2zKZ8pbjk8X7m1m
 gKkgZ8PMC1/tX+cgWe/YtNwxZLMMFbLDcKmZUsIHkJOhIWwE8qw4WjEJv
 owQyy4gIW5wh4IEeHbjfj5eOzxSysfZ3+YOcN1h/BFh6OX+Z4X9Ciojd3
 aJRqs1DTDeuenPrmL5uyJrRXLOVQzn9JnSJHKTpdEa4sfKQiYdq54iSpu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j1JZMLMZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: leszek.pepiak@intel.com, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMTYvMjMgMTc6MjQsIENocmlzdGlhbiBSb2htYW5uIHdyb3RlOgo+IERlYXIgc2lyIG9y
IG1hZGFtLAo+IAo+IHdlIHJ1biBtdWx0aXBsZSBJbnRlbCBFODEwLUNRREEyIDEwMEcgYWRhcHRl
cnMgKDJ4IFFTRlAyOCkgaW4gb3VyIGZsZWV0IAo+IG9mIHNlcnZlcnMgLiBUaGUgbWFjaGluZXMg
YXJlIHJ1bm5pbmcgVWJ1bnR1IDIyLjA0IExUUyAoSmFtbXkpLCB3aWV0aCAKPiBMaW51eCBrZXJu
ZWwgNi4yLjAtMzYtZ2VuZXJpYyAoVWJ1bnR1IEhXRSBLZXJuZWwpLgo+IAo+IFRoaXMgaXMgdGhl
IG91dHB1dCBmcm9tIGV0aHRvb2w6Cj4gCj4gLS0tY3V0IC0tLQo+ICMgZXRodG9vbCAtaSBldGgy
Cj4gZHJpdmVyOiBpY2UKPiB2ZXJzaW9uOiA2LjIuMC0zNi1nZW5lcmljCj4gZmlybXdhcmUtdmVy
c2lvbjogNC4zMCAweDgwMDFhZjI5IDEuMzQyOS4wCj4gZXhwYW5zaW9uLXJvbS12ZXJzaW9uOgo+
IGJ1cy1pbmZvOiAwMDAwOmExOjAwLjAKPiBzdXBwb3J0cy1zdGF0aXN0aWNzOiB5ZXMKPiBzdXBw
b3J0cy10ZXN0OiB5ZXMKPiBzdXBwb3J0cy1lZXByb20tYWNjZXNzOiB5ZXMKPiBzdXBwb3J0cy1y
ZWdpc3Rlci1kdW1wOiB5ZXMKPiBzdXBwb3J0cy1wcml2LWZsYWdzOiB5ZXMKPiAKPiAtLS0gY3V0
IC0tLQo+IAo+IFdlIG9ic2VydmUgc3RyYW5nZSwgdG90YWxseSB1bnJlYWxpc3RpYyB0cmFmZmlj
IHNwaWtlcyAoTXVsdGlwbGUgCj4gVGVyYWJpdHMvcykgaW4gb3VyIG1vbml0b3JpbmcuIFdlIHVz
ZSB0aGUgUHJvbWV0aGV1cyBOb2RlIEV4cG9ydGVyIGFuZCAKPiB0aGUgbmV0ZGV2IGNvbGxlY3Rv
ciAKPiAoaHR0cHM6Ly9naXRodWIuY29tL3Byb21ldGhldXMvbm9kZV9leHBvcnRlci9ibG9iL2Vk
MWI4ZTNkODg4NTE4MDY2MjdlNGY4MjYyZWUyNjIzMmNhNTZjMmMvY29sbGVjdG9yL25ldGRldl9j
b21tb24uZ28jTDM5KS4KPiBJIGZvdW5kIGlzc3VlIGh0dHBzOi8vZ2l0aHViLmNvbS9wcm9tZXRo
ZXVzL25vZGVfZXhwb3J0ZXIvaXNzdWVzLzE4NDkgCj4gYW5kIGl0IGFwcGVhcnMgdGhhdCBvdGhl
cnMgaGF2ZSBub3RpY2VkIHNpbWlsYXIgaXNzdWVzIHdpdGggdGhlIGNvdW50ZXJzLgo+IAo+IEkg
aGF2ZSBub3cgZHVtcGVkICIvcHJvYy9uZXQvZGV2IiBvZiBvbmUgb2YgdGhlIG1hY2hpbmVzIG9u
Y2UgcGVyIHNlY29uZCAKPiB0byBhIGxvZ2ZpbGUgcGVyIGludGVyZmFjZSB0byBzaG93IHRoZSBp
c3N1ZSBhY3R1YWxseSBvcmlnaW5hdGVzIGZyb20gCj4gdGhlICJpY2UiIGtlcm5lbCBkcml2ZXIK
PiBhbmQgbm90IGZyb20gYW55IG9mIG91ciBvdGhlciB0b29saW5nLgoKR29vZCBtb3ZlIQoKPiAK
PiBJIGNhbiBwcm92aWRlIHRoZSB3aG9sZSBmaWxlcywgYnV0IGlmIHlvdSBqdXN0IGxvb2sgYXQg
dHdvIHRpbWVzdGFtcHMgaW4gCj4gcGFydGljdWxhciwgeW91IGNhbiBhY3R1YWxseSBzZWUgdHdv
IGp1bXAgaW4gdGhlIGNvdW50ZXJzOgo+IAo+IC0tLSBjdXQgLS0tCj4gSW50ZXItfMKgwqAgUmVj
ZWl2ZSB8wqAgVHJhbnNtaXQKPiAgwqBmYWNlIHxieXRlc8KgwqDCoCBwYWNrZXRzIGVycnMgZHJv
cCBmaWZvIGZyYW1lIGNvbXByZXNzZWQgCj4gbXVsdGljYXN0fGJ5dGVzwqDCoMKgIHBhY2tldHMg
ZXJycyBkcm9wIGZpZm8gY29sbHMgY2FycmllciBjb21wcmVzc2VkCj4gWy4uLl0KPiBOb3YgMTYg
MTQ6NDQ6MTfCoMKgIGV0aDI6IDMyMjQ4MDI3NTI0Njc5NSAxNjEyMDI2Mzc3OTEgMTIyNDUgMjM5
NjIyNiAwICAgICAKPiAwwqDCoMKgwqDCoMKgwqDCoMKgIDDCoCA3MTIwNDEyNiA0OTc5NTg3OTc2
MDk0NjQgMTg4NTAwMzQwOTA3wqDCoMKgIDDCoMKgwqAgMCAwICAgICAKPiAwwqDCoMKgwqDCoMKg
IDDCoMKgwqDCoMKgwqDCoMKgwqAgMAo+IE5vdiAxNiAxNDo0NDoxOMKgwqAgZXRoMjogMzg2NjE3
ODUzMzgyNTY1IDE5Mzk1MzY2NTgzMCAxMjI0NSAyMzk2MjI2IDAgICAgIAo+IDDCoMKgwqDCoMKg
wqDCoMKgwqAgMMKgIDcxMjA0MjgyIDU5MzU4NjYwNjkzNTk0OSAyMjM4MDI2NTYxMjDCoMKgwqAg
MMKgwqDCoCAwIDAgICAgIAo+IDDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqDCoMKgwqDCoCAwCj4g
Wy4uLl0KPiBOb3YgMTYgMTQ6NDk6MTDCoMKgIGV0aDI6IDM4NjY2Mjg0NTkzNjgxMCAxOTM5Nzc1
MDE4OTUgMTIyNDcgMjM5NjIyNiAwICAgICAKPiAwwqDCoMKgwqDCoMKgwqDCoMKgIDDCoCA3MTIz
MDk5MyA1OTM2Mzc0OTUzMDYwOTIgMjIzODI3MTk3NjA5wqDCoMKgIDDCoMKgwqAgMCAwICAgICAK
PiAwwqDCoMKgwqDCoMKgIDDCoMKgwqDCoMKgwqDCoMKgwqAgMAo+IE5vdiAxNiAxNDo0OToxMcKg
wqAgZXRoMjogNDUwODQ1NTIwNTM4OTMyIDIyNjc1MjQzODM1NiAxMjI0NyAyMzk2MjI2IDAgICAg
IAo+IDDCoMKgwqDCoMKgwqDCoMKgwqAgMMKgIDcxMjMwOTkzIDY4OTMxNjQ2NTEzNDQyOSAyNTkx
NTQxNDAwMDPCoMKgwqAgMMKgwqDCoCAwIDAgICAgIAo+IDDCoMKgwqDCoMKgwqAgMMKgwqDCoMKg
wqDCoMKgwqDCoCAwCj4gWy4uLl0KPiAtLS0gY3V0IC0tLQo+IAo+IAo+IElmIHlvdSByZXF1aXJl
IGFueSBtb3JlIGluZm9ybWF0aW9uIHRvIG5hcnJvdyBkb3duIHRoZSBpc3N1ZSwgcGxlYXNlIAo+
IGRvbid0IGhlc2l0YXRlIHRvIGNvbnRhY3QgbWUuCgpXYXMgdGhlcmUgYW55dGhpbmcgbG9nZ2Vk
IGluIGRtZXNnIG9yIG90aGVyIHN5c3RlbSBsb2dzIGF0IHRoYXQgdGltZT8KCj4gCj4gCj4gCj4g
UmVnYXJkcwo+IAo+IAo+IENocmlzdGlhbiBSb2htYW5uCj4gCj4gCgpUaGFuayB5b3UgZm9yIHRo
ZSByZXBvcnQsIEkgd2lsbCB0YWtlIGEgbG9vay4KCldlIGhhdmUgYWxyZWFkeSByZWNlaXZlZCBz
aW1pbGFyIHJlcG9ydCBmcm9tIE5lYm9qc2EgU3RldmFub3ZpYywgQ0NlZC4KClNvcnJ5IHRoYXQg
dGhlIGlzc3VlIGlzIG5vdCByZXNvbHZlZCB5ZXQuIEkgd2lsbCByZXZpZXcgd2hhdCB3ZSBoYXZl
CmNoYW5nZWQgaW4gdGhlIGRyaXZlcnMgYmV0d2VlbiA2LjEgYW5kIDYuMiwgd2hlcmUgYnVnIHdh
cyBpbnRyb2R1Y2VkLgoKQmVzdCByZWdhcmRzLApQcnplbWVrIEtpdHN6ZWwKCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
