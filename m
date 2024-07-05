Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6EF928983
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 15:25:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38D0741445;
	Fri,  5 Jul 2024 13:25:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hEnXaEpjXDPD; Fri,  5 Jul 2024 13:24:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41C13408B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720185899;
	bh=5pmSMds3dolA2kVlj9q+guORJpsxFcEiYPAl53HOw3Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uDeRJV/PDpVUsfSkmZORzg+tf5PleevVl6zzdZ1cFzn0TMVWy9O446bCofXEesgMo
	 e6t9Jk6FaKSqZ4sDioECB+CuQUCV3hizyuuyZOcr47r4mxbA8YVILL4e+CfJrSSk0e
	 pyzHwr99yiMFv3Ei9btXDhPf/6OwdLeiLL4bkRpkHF8VTGC6wylr0fADqpNm3ZCSWr
	 nkjGSFIdBPi/FbS9itWkoq8ZINyHbszOQNw4H7wI2Ad6Mmu4Cm4Z6P1ImxtRuIOaN2
	 ntOs5NDrjNfeXrRVK2BgdE6bzGRmcwedDHauExultLFuq5s7vrUpkhEjnMj5Y++73/
	 SuOH+kLAeADKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41C13408B4;
	Fri,  5 Jul 2024 13:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70A031BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 59881408A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:24:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q_BIzN8f0Mpw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 13:24:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D9FD4077D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D9FD4077D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D9FD4077D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:24:55 +0000 (UTC)
X-CSE-ConnectionGUID: c8haNkjpSnWAmJqYeTtKVg==
X-CSE-MsgGUID: P/jJjhNHQ1OmxFsmzC9gAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="28634173"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="28634173"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 06:24:55 -0700
X-CSE-ConnectionGUID: 7fiRU5fSTQiJH6nVDV0LSQ==
X-CSE-MsgGUID: prw3GqmxQx+3qVCXJRuXLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="84434915"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jul 2024 06:24:54 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 06:24:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 5 Jul 2024 06:24:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 5 Jul 2024 06:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTprXnk8pFBJoMGQrbNlSLRtgDDWLYFVIxA28WD37eIvWeCa88M+HeoNjvUZSFwrlRzn+bLGhD1Hg2DJ27p+kvUAifRdb4U7g38U1c+SEjC4KJXHrmqNasXQ8u0gDl3ClpcFHXnNnHGisFQGQOk40cm/fJ8SHlqGzyh4of4/aK5GK8JB2Hv6ojz0d73t/pY1ocOhzhbj4QhNGnNEbcs/bVkZum+Xo161rvmY2WD4y512hy4ESu8LF6ojCenOhGEw3Tsf9kL5MlPYky091fKNFY5e22L/q3qC+DO2Unc5ASdS3sO/1ZHOieoi6vGNUVxxD1UkN5xZhYhcHdgyIWZOcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5pmSMds3dolA2kVlj9q+guORJpsxFcEiYPAl53HOw3Q=;
 b=ky++WSmd1BaixXrg3pEhb/GfMfqN7c5QP1WazVC6l2lUW7AFUc7gWAnjKEKC14F8FibrtosoU3Lxo/k+HwvQVa1BYPXIqVyg8LRbOzxa6+Pqf1UhCOkCojViYdOyXSfqYgtI8o88A2mNIjghb2DS/SlcrnnUI8rUCbG8Gtp2l9EtYhtbudjTt0I7wbgQMjr8iwA1AtJxIvFfRRcQBumIUMb+qaRA80IQkUe7ukJGeAyl6JJxnQmjUMNatHInSds+5pkXm6L80Gku6f08OTbZOdh1aRtlzIVG+1QxL/PGVG/Qio3lB28Zh7qmQhYAr/N0Rgtkpw74YaRDQdvjBWjRHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY5PR11MB6414.namprd11.prod.outlook.com (2603:10b6:930:36::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.31; Fri, 5 Jul
 2024 13:24:46 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7741.017; Fri, 5 Jul 2024
 13:24:46 +0000
Message-ID: <9d38d987-6968-4495-8311-ad846d6cde89@intel.com>
Date: Fri, 5 Jul 2024 15:24:41 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240705-i40e-kdoc-v1-1-529d0808a1ef@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240705-i40e-kdoc-v1-1-529d0808a1ef@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0902CA0031.eurprd09.prod.outlook.com
 (2603:10a6:802:1::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY5PR11MB6414:EE_
X-MS-Office365-Filtering-Correlation-Id: 06b45ef4-e29b-42dd-ec64-08dc9cf5d6d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eVNxdHBOdVFKYmdIMzhET1hPL1IxdzV2UElZTHZXTks2b0hzNHpFditCZEdh?=
 =?utf-8?B?b1hkRW1ORXN6Z05LNnlsemhqVE9Xa2RIc3B1cUZlKzJJZUtHdVVYY0p1OEZn?=
 =?utf-8?B?ODA4SUNVU1dsWWxqN1BCMWZ4RGIzelR6RVZVWGlYOTJCUmU4cVZaYjJlT3V2?=
 =?utf-8?B?MDljNDhPeUJjTjhMUGRUQ21XSWNEWmxyTWhZY1I3ajBQbURiWTd1TUZOT3l0?=
 =?utf-8?B?MXlpa2tlRnhPVGkzcHhiNksrdGE4UU1Neml0U1Z4Vmx3eVVYWTJHa1Z2UGJh?=
 =?utf-8?B?b2NCaHBIK3JKVDlWeXpFUjhlQTlqeVNCVlp3dDh3YVQ3TmV0aVVmMWxHL2lW?=
 =?utf-8?B?Y2VXUDB2NmFHWGlSQlYrd0ZyQzFnWnBuRTk1WFZuS1Q3My9vV1NOeDBzejRW?=
 =?utf-8?B?NTFsRTEwU2YxbzhNK0VtbGVPaVpSWkJWZ291SUt2TmxmandJWHRiQnlBeUcy?=
 =?utf-8?B?RW10TmFmVzgzTCtRNHMxOUlqNVl4OXJBNkYyRWhhNHZrenkwaEtRUDUwdXNR?=
 =?utf-8?B?MURMeklQdlg4SjZrZ1RHNGhva1VGK0ZHaHJyUjZLQnRuL1F3NUJ0bVFFUHBm?=
 =?utf-8?B?UEt2dkZjYWk1WXJ1UDBBRkt0bHpQeS9DRmZ6K05yVTRJVDNuNytOVjI4dHpz?=
 =?utf-8?B?ZGRrM1JGSHJtTUc3MWZxZ1NLYUF3bmptbG9oMU1aQ2luODNMTndvV0tEQnFQ?=
 =?utf-8?B?cU5iUXpta2hmeFFBSXVpbDc5Q0xvWVdoWHRRNSt6Q3BVbWkzQTV6a20wb2s5?=
 =?utf-8?B?YUYzYXpMS2pwVGF0NVRQYk9tMlNZTzc4SEhXY3N2cDNvOUhMVEJSVDBHSXQx?=
 =?utf-8?B?THh1U0RXTVBKUWZNaStCT0MwWGxxaVNLUks0U05JZ1d5SUQwd0JmMmdDNUdO?=
 =?utf-8?B?N1dLQ1ovaHcxVWE0UmlkVEE3b0dRb3JEdmlpdU5HamZOTXhyTHRoTHcvZ2Na?=
 =?utf-8?B?bEdCYmcyd3hlcCtiRlNKRmFoWENwTjZaSzFhY0dQdHlxNXVyZ2lhUStIRUZI?=
 =?utf-8?B?QWVNU1BvQlY1RGRlbVhrSzN6aVNQK0p6dnMvdDVXNzIveUt0b2FKbGZ2bDVl?=
 =?utf-8?B?dmQ4S1h0SVR6UE1aT2lUeFAwZ25GNVdud0tOd0VSQVd5U1ExbFc2cGF2K2o0?=
 =?utf-8?B?d0NhWTVMZTFzcTExWGRMOTc0cXVnb2Mya0JlZjVOZnN1SEY4b1NzOWIxOFpw?=
 =?utf-8?B?NlRjMU11S0pIUmUxSUx4K0dIMlROOEhtTVFkTVgvc2paVjhsMDJZQzd6VTRB?=
 =?utf-8?B?OUhhbnFoaG9qN094TXVnd0FlcFduL0dRdEl2cExBenFLRTl5eHZwK1d1Y2RO?=
 =?utf-8?B?L3NxdktOVjRBUlBLYnN0NEYzOHh6b3ExZHN3My83VktjdG5jYktRWlg3TEpF?=
 =?utf-8?B?ZWZpYzNEMjl6djU2SVg1TXpSUmZLUy9ZRzM4QmpWaUpCcW5uckZod3liL3Bj?=
 =?utf-8?B?UTZ1Vktxc0IxeDQ2Z1dQQjdISnBmVS8ya3dyUnJTc1gycERudWp0MU41Yndu?=
 =?utf-8?B?TmNNOVdaK2VWaGxtRWs5dFA5S3laN0xENXpEZE1DNmRUSkRhVkdOZmJZaWNp?=
 =?utf-8?B?a01mNHd3RjBMSVd5Y0JCUUg3YjEycWFEL3J5RnZQck9pYjZMNjFINnpuQVZl?=
 =?utf-8?B?SkI5enF2WDlVWjZ2dW1mcVUyaC83RGlNdmxsclVMNHZsblovamdDLzJ0K2RZ?=
 =?utf-8?B?YmZzZXNKSjFhRnJKWEVaWTUzdkw3VzJxRUpmQmpCemh1Q3FET210QWxoazZm?=
 =?utf-8?B?WHJkaEtKc0Yxc295U2lUZGtmaGpWdjRQQXdFclV4dmo5OFJSWmpBLzFJSG1s?=
 =?utf-8?B?dXZ4YVJyTkYxSFhSa2lvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekRmWXo2RlRNblVFbmdxVUwxREV2Unc0dVRqaWcwVDFwRlM2SkRhVCtaNlNC?=
 =?utf-8?B?NXlTdVRJeklxZEI1WllyQjl4cUcrcWFxeWhWQ0t1cXJnT0RJRnVtdktzUHVy?=
 =?utf-8?B?TnZnSTFWM0puRXI3aUEzS3NLSWxuNS9nVUt0cUVQeEFkT3JBbXF3RVh1Slh1?=
 =?utf-8?B?b1ltZ0ljV3hDaDdCS3BTRXdqOU84R012aDk2ZnF5dlVBNnZLREtuSU1BREJW?=
 =?utf-8?B?WUIxM0hKZEY3SU1ZaTh5NUJqK2VKa1BxTnllNlprTE1oVWh6eldoa01Ueito?=
 =?utf-8?B?VEdxdUxkbDRiSmo2ZEJ5ZUV4L0ZqRkJUb3FVY2NTTFA3eUtYNTUwYkpsUVhN?=
 =?utf-8?B?cUg5Mmhhek1ybXZZbXJzVm9wb3B5dExNRlVVQVh5VXNpMEpPbUpxVzlvNUdP?=
 =?utf-8?B?SnVkNnk1WnFybjRKVGxIREhGRHh0MWFrQi90aER6WDJCV1R6eTN4c2k0MmRm?=
 =?utf-8?B?MWR3MkRDRUlpVFp4OEpheC91cjdVLzMxMUlCTm85RUZWWE1SeGJJczEzc1d2?=
 =?utf-8?B?S0ZOd0hhelMyTGkybVVIMHRQYjh5cGZQcDkwTVh6M2ViN2ZXVHFsOFhya0ZO?=
 =?utf-8?B?c0V2Rjg4eTNLeGRFYzB6SVpJMVc3QUszYmhsajNLQUdHSlo3SHVjalRXdTUz?=
 =?utf-8?B?K1BaMGJsMjhSckVpYTZMSGZaY2tnV0t4TlFKWU00M2h3KzhjeUtLZnIrZmZV?=
 =?utf-8?B?bjE4cmVOZ1FFOGV3Rkw2cm9QME1ndU5oQTVCNFQvTlpidFplNXExL0dKcEUv?=
 =?utf-8?B?MUJyYXRHZ3Q4SWx6THhXOW4yYkF1bHhhOFJIVGF0cmhRMW5kaG9ZaTNKbkdH?=
 =?utf-8?B?cTdmYTNUejZsNEg4TG9VcGwwNmVNWnlQMldOR2JDcXJOc3NNOGtXMVhJTlVF?=
 =?utf-8?B?YlphMFBhQ3NyNUtlc0dzSldGSm9wR08vajZzMGl0bW5pTUJBK2hGclp3eXhC?=
 =?utf-8?B?NVdlV0dRWEFWMkY2UUx2TW9aRmhSREJvRUFYbTNxUkhEUi84OFFvaGtGM3p5?=
 =?utf-8?B?NzVtU0VMRXRQQmZ1ajUrUEJ5T1J6RVVUSCtqOTRmMWY3QlVZQTVsQWRVc294?=
 =?utf-8?B?aC8zQndLMEI4dDBoUTlEUXZuSWxPbVJ4SkNrOWFkT0EvdHVrQUV6aDhhaEJs?=
 =?utf-8?B?NWJwSzlHdGZ1TzNPb05UZllobDVpbllXZEp1RWhqUTNyL0JFODBSeVVSbVpp?=
 =?utf-8?B?TWdKRkR6WkhYeWt4YTcwWFBHZDFKb0NMdzdKZHR2amlCYkJBR2s3Z3NPaGQ4?=
 =?utf-8?B?VGJ2YVNZNHVRSlAvM2ZIaTM5cFdkWWxpKy9HVTRRTkJVSjgybzlVMUtCYjRt?=
 =?utf-8?B?VTNOL2M1SDBuM0dqRUVaRnFQZHBId2hENWV4bUpIaUpoa2JQcDdKdUF2b0Rp?=
 =?utf-8?B?azh6U3RGUlk4aFM3N2VRMGZIK1BMYXZFcFhNcVh2Q0hQS2FVNUlYZFp4SDNk?=
 =?utf-8?B?UlRzYUdJdTR0OFcreFZTNUJZa2VUU1hxd1hSMzJidmZkWTFieWR3c3hUSktv?=
 =?utf-8?B?SjJvN3MzZytHYWhoTTBhK05WamdQTjNRTXBQNGdpZGVrTTFTYjlZd092T0Ez?=
 =?utf-8?B?eEI0V3g4MHNoQlhqdk1rcmFKZUZjVlUxSEx0UllwYmpydVlHbXJQeE9BTDdv?=
 =?utf-8?B?cUxteUtpYVh0V3JyZHNqczhBSGQxbk9aM2FYb2tNVTdzYW9Xei91d1cyYUMv?=
 =?utf-8?B?Rjk3akg4d3ErSzVhc0d4VGxUTVdRc3p3M2R4Slg2U0tzOVBlNXp0S1VaUjlQ?=
 =?utf-8?B?bS9RQ3p4QjRaaXBsaFhLQ0NxTDFUcWUwU0VaTVNweU51akgvNEZVL3dDaFlu?=
 =?utf-8?B?TDhVU2JNakxzNjR1WjhqZS9LQVFxRjFkWDRsV3hRTC9yemZSZks4eW43bGNY?=
 =?utf-8?B?dmZ0T0ZrYWw0L2FTdXBrNVkvUDJReVYyUVhrNnpqQ0hyLys4ZzZqeDlPN21R?=
 =?utf-8?B?RnltQ093SUg2cU5JU0RSREUzMG9Yb3k2VUt6WVl3VjluN2ZnYXB3UU54bHJS?=
 =?utf-8?B?d0dMckMrdHB2aGFPYU0wamR6Z2FsYnFxbk9UcU5KdmpkTVFNWmZSNUt0VmNR?=
 =?utf-8?B?NWF0RVdNcVRlUmxFSW5rcSs1RmI2S0NzZ0I5QzhDV0g3T3h6N2R1WTZ1Y1du?=
 =?utf-8?B?dDBTN1Fnak42N2VOc0tVcXFxVTRjMmpDNXFaN0FVRUlKOFFDalB1am53djFW?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b45ef4-e29b-42dd-ec64-08dc9cf5d6d3
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2024 13:24:46.6660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C0wTMy9yYwNP97RyqR8Pz1IwCks9gWKU0o/9TaQl3k6upN9J9lkerm1HroLhZSHBw3jKEamJCjcYl8QJLQNQ1ziFFSdGvV1QZG0m8j/vYEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6414
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720185896; x=1751721896;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iP5jYCvQZcMgH6o9rtRIAxO8DlPKr8HsnRP3RNHx8Pw=;
 b=djISFQtMPRNarCGh3ZaWgpg2IrCslDiCKQPShCafXDShgaAyqo4A0aDK
 P3SSqanjLRLPYI6H2W4/FN6+oOzPXd9J2TYOn1cTTNARIQFLcE2Gu4XzA
 l0ixCxhp9iUFhmNn8Quow3rihc48IYef8OWxkrv5+EpEA/k6HA35xHsiS
 jOf0ANC2nHlVwQ7/L+ZOblyRqximtIo2dLFpYbLvw3yCIQBC5xdU6shIi
 flDd0AlOXnpffDHIpOqSpNFdX429p5QMIed9AQeDtdiThYptsraTpGPJm
 Fu8RR2hr8tavbu0ROtpoI+l9WFbBcsY+scQqf0DW89RwLoXG+2HusBtFs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=djISFQtM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: correct
 i40e_addr_to_hkey() name in kdoc
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/5/24 15:15, Simon Horman wrote:
> Correct name of i40e_addr_to_hkey() in it's kdoc.
> 
> kernel-doc -none reports:
> 
>   drivers/net/ethernet/intel/i40e/i40e.h:739: warning: expecting prototype for i40e_mac_to_hkey(). Prototype was for i40e_addr_to_hkey() instead
> 
> Signed-off-by: Simon Horman <horms@kernel.org>

thank you,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

(unrelated digression below)

> ---
>   drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index bca2084cc54b..d546567e0286 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -735,7 +735,7 @@ __i40e_pf_next_veb(struct i40e_pf *pf, int *idx)
>   	     _i++, _veb = __i40e_pf_next_veb(_pf, &_i))
>   
>   /**
> - * i40e_mac_to_hkey - Convert a 6-byte MAC Address to a u64 hash key
> + * i40e_addr_to_hkey - Convert a 6-byte MAC Address to a u64 hash key
>    * @macaddr: the MAC Address as the base key
>    *
>    * Simply copies the address and returns it as a u64 for hashing
> 

I really look forward to the day that sender will be able to add
metadata to the patch displaying options - here changing context to 5
would make review an instant thing, as now there is no signature line:
static inline u64 i40e_addr_to_hkey(const u8 *macaddr).
But if Simon will send like that, this will be lost when applied to 
Tony's tree.

I'm picking such trivial patch to bring the topic to don't derail any
which will have it's own on-topic discussion, but this is for the
benefit of reviewers of bigger changes of course.
