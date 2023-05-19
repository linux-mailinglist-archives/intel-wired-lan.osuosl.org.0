Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF42D70A125
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 23:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BC1242596;
	Fri, 19 May 2023 21:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BC1242596
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684530007;
	bh=DJGJJLWUrlwC6NdSfkOVPk5akjnBFNBZIzdDwk7PPPw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nJuhmB8fpBjpewwXvx3mBNBPJ161ofz1RmRMgTBvLVjoZzKiu3AzpoZEau0X5LWI+
	 yIEXVaMeZISNnL8EIk/9D/iP6CsIMvIKhntQF28TaNYtitODpUiZlhybThzSLLBJ2H
	 cO31EHse2wdadtwyp1FpO8AzAVQSJ65or0ynvt3dcDhZlP9JffFO7oSZAj6KXHe8eq
	 3+UwGQrspVmcApldj8aiX+mjEojso48UZs9sP1bD66i18bG/sVqCDbjYvsePoWoZab
	 qFrpnj8hk+BX69YEuh1llL/nP7O21AvQ4KAPigmarQY80lCwLQCr8J+vzf6X7b96XW
	 uGaid0rxFPO3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CrbhIvl2iBpF; Fri, 19 May 2023 21:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01BB4424F2;
	Fri, 19 May 2023 21:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01BB4424F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A0F51BF215
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 20:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 116E8405FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 20:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 116E8405FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r9mBk0fHVMhH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 20:59:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23E5440424
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23E5440424
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 20:59:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="438835236"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="438835236"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 13:59:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="696852505"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="696852505"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 19 May 2023 13:59:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 13:59:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 13:59:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 13:59:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 13:59:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5NxGnDtJ7Oj9DyIXoc4sWKxvHtv0YquyjTFAiIFXyvPygTTE8nCIxYTqdXhkjscRJyr/BfKlO1jeXz8H8vQLVzmESilY8yGymQqbuGsxBmATk1WcoSCWsUt4iqJNxR0GaMb/UaceYCw6EnX5Wh/wmpCvdmKYEL2uToSlLNCgXCaXC8tQHCYT6Dh4b6g/QRC0IP8c4TXHTAY+MrdrVzPVWkZ48YPM4V75CsKqVgnrgi8buACc4QNGLD9jzA6mscnfm2uwKqowk/0gXXOqDI+QnCDGzf+uIdhC+28dIaw8Lz6dvnf8ETl9O55NLYKstHMd+1olCGN9pZzKw6YSzc6Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jTweWeD2Lezq9lBlgsGEuqKMITUE//UKXqxmL1yyQ10=;
 b=b9YyCKTWVjZ8Z3YKKWa0DLtPAc5lPMC08T8V9RjBXY6znu9f6D5DEYAk0pNCy/5gbhnFgdttW8aXKst/coPmyjsVwIfTOyaHh2tZ8026qbZEBRAjpVI0RD8/VE52swRXFuXWt8BRt6qS0w6MGPwuw+UFabqy3FhQPSj9NBHZfaS+Hb1JHxEXa+dxJxEuGONXdMr50ctpb3yWqfYh0Eh5gPzhwW7XWK58qHU5JlDS4rDcyvmbFERzvyIMSfdWirCAuDX6a7ly3mHo33NrWUrQ+nIL9TnDPaPVtUdx2St12U0ieYLJQG707xi0H580QmDPFx14W/pPF/c6KOQ+lq555A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5557.namprd11.prod.outlook.com (2603:10b6:408:102::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 20:59:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 20:59:11 +0000
Message-ID: <6b5cccd2-8da8-6aed-1c01-371cfcf4ae34@intel.com>
Date: Fri, 19 May 2023 13:59:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230517191043.3914946-1-ahmed.zaki@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230517191043.3914946-1-ahmed.zaki@intel.com>
X-ClientProxiedBy: SJ0PR03CA0216.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::11) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5557:EE_
X-MS-Office365-Filtering-Correlation-Id: f26c41dd-6d65-490c-ad03-08db58abe539
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OBqfeYy3ojOlJ4wRnGUtsmjM81QSMnCieQNQDQ7oZi9no0/z/UBQuaxerqWy2AioqU57qqv4ZmhhSxGlHM0WUew2LPY7PIzyj6fOrPRd1XpRqkLE5ST70KVn4YdpJhpPlU2mBrRpJg9rt8/7x8SyJii7cxpNYWhDxYaoSVoTUCdfHBVRfzZte7J2ADmGNFMqwQjmc8njBJtl9e797Stj/kJZaMqVOdqQhv0tuopHGFuBh+WM5W03nRCf5pvZuRNFM3RWNMZBSCzPAGhJcrqM5wkDjEGq6NWztkUMkhjRKHJhjPiLFQZqTJ5/zNlIvxZYhTWG0JVV9DPGpiqdKtNSRBPYwTXkhsi0IbQ7Sej2ACX2vjeshsk2hlAne0qgKDOMSdrilPtF8vDTma4JjJZ+i3X7IgB1dy5OnIa6WSFiDcHbCVCg+F4XnoBE1WB0lancsu+zeVOkBaCjYvS3PuCJ0krHOTzCrnwzDfxBKQwjSEpaJjn4oWMQI6W73UyPS9rhsOh6NnPGRFqfPA4eeOebR/cd6Po2JGRJA2Iaqquf8DtZfF2ulk8fbq0GibRqFe/EdbjAPWAsaAT9juyQUovYiIloN6DIfu/VlSVSQGSgBPIG8tGf5MqpgVNmksqksDz9jXodSLfvIqSc44fcsJwt9Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199021)(31696002)(86362001)(36756003)(316002)(66476007)(66556008)(66946007)(478600001)(6666004)(6486002)(8936002)(5660300002)(6512007)(2906002)(8676002)(38100700002)(41300700001)(82960400001)(26005)(2616005)(53546011)(186003)(6506007)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTl2R1BhQnA1bkc0akRxc3F5dzhoa1REcWhBUHgvQzlzVEVSMjA0d3dqeGVP?=
 =?utf-8?B?bjg0Q3FRVkRCcEVZNGRkbGlLamFlcDl3dWloWFZUWjdtQVRkWjl5K05lTWV2?=
 =?utf-8?B?KzZPM3k0a3RYZGN5VjhIcXNHNG5BV2NUVmxCZ1hTVFA0YjBaY29KaUR1eTlU?=
 =?utf-8?B?eDhhWXp2eThIT1IvbXVXTGloNDdHVk9SRWZPem1OcHBNTVpsK2RZZnp4L3JQ?=
 =?utf-8?B?RVFrYU1Xb0RuY0w1N3RzaS9IdGhTN0pxbWk5ZlZwSE4waCtmaldwMlpJWlgy?=
 =?utf-8?B?aVZVcVJqSmlHMG1OY3dyOWJTR1QycUxXcWw2UHRhckhjcHpoS1BOdDE3d0kw?=
 =?utf-8?B?YUlUanhmME4xcGpoa2hwNmJGU3dIU3g1bTVyaGVSaDdXVFN0b3pLZ3U4RkVG?=
 =?utf-8?B?Y1IwakxsMmdkMEluYlJZSFJaK1RYN0JGRXByR29tWUpJNDhxM1dleEtVVjg5?=
 =?utf-8?B?Z2xQREI5NUxUQ1ZvT3R1RnFlek8wRzRVN0hGazk1c0JhQ25vY2Q4Ylc5eE5H?=
 =?utf-8?B?UmwzdlNtZG94dG5CL1Awd1RQR0tHM3prd1F4a213alBUREpSSzQ0YVVmRGNZ?=
 =?utf-8?B?T3ZjaUp4VE9MM0ZJalNTZGhhVGJLQjFBQlMydStzL3lGTytnVlgzWTk1V1Ux?=
 =?utf-8?B?VWFSSXpBUTZnYWRNcWlEcUt2NFZqY001alc0MVh2WjQ0bzlDSkJHdHpNcXF1?=
 =?utf-8?B?QXNyKzlndnVlZDBHQWpUTjB2OEJlT0dsTHYzelFsZ2xpVG05WDlQQ1h5Mkor?=
 =?utf-8?B?eEQrcEYyZ0J1UFNrTmt0aXAwTEs1RURralBnRHBkaHYvbzl1bnUwR3RwM3RX?=
 =?utf-8?B?MXpna2I3WEFPbXFzcE1XbTNiUUtrTVJtSm1ZT3J0SmFMMC9RTUgvVlhtV2o4?=
 =?utf-8?B?ZDV0dHZQMXByZ3FtM2xPU2NUNjBVV1krUSsyTmo4SVdPOUNFb09vaXd3bGNq?=
 =?utf-8?B?M0dDUXdVVDZYVlhVc1RqMHpWb3VmWW5wcVg5ZEtFWEk2ZlNKMDJaYlB0NHpa?=
 =?utf-8?B?WXlwQ0pXYWZzb3Z2R0k1aHpYa0toZ043dEU0T2tGMUIxTGVtMWNIVldGeGUv?=
 =?utf-8?B?eHpQK1JhL0ttZWtQK2RvUHRibFhhOHVQVXhFYkN5NGs2T0l2NnNBcS9kMUwx?=
 =?utf-8?B?Y0tVWTVxM1VqQmR0VEkrWWtYSkpRa1E4bklCYnpUYyt1RjhuNkRaUFpiUXJI?=
 =?utf-8?B?NWRJQkN1dm5nQi9JNldQaHRuLzZYL0N1TTVNN01jaGd0Yk1CZG5rKzdvakxK?=
 =?utf-8?B?cWk2bmtBN015ajJ3blNhd2tIWHNPWldCRnN5bnRGb0NDR0loQTM4bEptdkFB?=
 =?utf-8?B?N1lUQy9rek5HNFlabSs0dS9WclFLdWZ5bHZoTjBMRG9oYlh2RlN3aHRUYjJs?=
 =?utf-8?B?b0tpTVFFMWpldGxNQ2VWLzNrZ1VJYlNKUSs5S0g2K3dhRnAxQ3o4S1IvTUta?=
 =?utf-8?B?WHVwYnJaSEVZQzEySjFTQkp3amI5b0ZhTitGQlNPUFI4bWppcmJVVHR3KytB?=
 =?utf-8?B?elkxMXlwRG00U1pXaUpDVlhBUFdabkVMbldVRDBhaWJMVXFPTTFDdnVySUZW?=
 =?utf-8?B?MkluR1p4SWdqclF5YWh6VzFQVm56QWlBS3JxTmZ1bkdxY1hWRWtITS94Vmdx?=
 =?utf-8?B?YTlHVVBMR1N3ekF0ejdScEVreFpaQUJwQzhaOFpOalNHdGhhR1lpMi9lSFVK?=
 =?utf-8?B?WERrdDQzOThZMzBxRU4veGVSMGVRYmdMbHp5MmMzU3oyMkhNVTNQa0wwQXhR?=
 =?utf-8?B?VnpqYVlLeE9aRzhTWUVRWDdKZ1k5dUZXZnlGZWxsVFVHbkFMZ3ZtVFpYMDND?=
 =?utf-8?B?YWNJYld0WDBxYWtBWVdoVjA3TXpLaUlYYW85VUEyUlc0WG5XaXNUWmdQdTZ6?=
 =?utf-8?B?WThBUUtDckhka2pkdEFTcExhRllHb0xabElBUDVBakhoajhiL1FuSis5OFpJ?=
 =?utf-8?B?VFVqSklrVkdPTnN4c2xNSnozd0NFTG1BcTVUU01sZjF5WDluMHR6ZlJDcFBZ?=
 =?utf-8?B?ZmtPQ1E2UlRRSzNMcnVvOWpUbHh2eERnQ0U5WmNpNGxDZkZLRkZYd1luZkdF?=
 =?utf-8?B?eUREdC9zRDV5RncrV21pUWpyOW1WbUlIMXplZnNBMkNVallYY2ZDV1h5aytF?=
 =?utf-8?B?alNYV3IrdkdNbmV5WEZWcUJlcmFvWEl4bXo5RkNuY0tTNzAyRFg5KzVpZktZ?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f26c41dd-6d65-490c-ad03-08db58abe539
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 20:59:11.5612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JxAL6rsyGlc/It4EntQ+Jd3/bBehi9ON0MlX5phmPNGH+UtDjwzbgQmorArB0Feg+KcjtS7RQFJpI5aNang6/lcfEleLNN3Ohe2yet/Csbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684529968; x=1716065968;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bIlQrFeqzItQpLUNzfTgSB0k/1iNJ7O6jM+PdZAqaNI=;
 b=lB2RVyJZQkIWCcpfRa9g0OihfMWOQY8MMMtYswoEeIUDTjot9ASyuTM3
 8nBf3n5adbkZSykeT6kNAcihkLMKEG+EFa6T0dZWXjhkFaXAKRwaWEkEY
 F4Ty4FHbw6GodLSRSkRXFjbTx8g70jWAzUYX19k7+5ke0ZTgfvfLwjnDu
 Xj2xgaoerdVcII6N5acmyVzps5wYgu3Qo6z3bvgw8l5whiflA/TK+H/Wm
 R4G15jNAPCSQjdONEwJ4R3tJsRqViySbmJ2+QeTWQlHUYgUBg5of4m4jU
 gEEW6WAT4hCgY4NsvfQZ4P7eWwqCyHAEPO8hhfK98xvLXLnkdKoyS1Djn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lB2RVyJZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: use internal state to
 free traffic IRQs
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

On 5/17/2023 12:10 PM, Ahmed Zaki wrote:
> If the system tries to close the netdev while iavf_reset_task() is
> running, __LINK_STATE_START will be cleared and netif_running() will
> return false in iavf_reinit_interrupt_scheme(). This will result in
> iavf_free_traffic_irqs() not being called and a leak as follows:
> 
>      [7632.489326] remove_proc_entry: removing non-empty directory 'irq/999', leaking at least 'iavf-enp24s0f0v0-TxRx-0'
>      [7632.490214] WARNING: CPU: 0 PID: 10 at fs/proc/generic.c:718 remove_proc_entry+0x19b/0x1b0
> 
> is shown when pci_disable_msix() is later called. Fix by using the
> internal adapter state. The traffic IRQs will always exist if
> state == __IAVF_RUNNING.
> 
> Fixes: 5b36e8d04b44 ("i40evf: Enable VF to request an alternate queue allocation")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index e18d7cacf99c..bf522002dc42 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1943,12 +1943,12 @@ static void iavf_free_rss(struct iavf_adapter *adapter)
>    *
>    * Returns 0 on success, negative on failure
>    **/
> -static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
> +static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool running)

kdoc needs to be updated.

>   {
>   	struct net_device *netdev = adapter->netdev;
>   	int err;
>   
> -	if (netif_running(netdev))
> +	if (running)
>   		iavf_free_traffic_irqs(adapter);
>   	iavf_free_misc_irq(adapter);
>   	iavf_reset_interrupt_capability(adapter);
> @@ -3064,7 +3064,7 @@ static void iavf_reset_task(struct work_struct *work)
>   
>   	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
>   	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
> -		err = iavf_reinit_interrupt_scheme(adapter);
> +		err = iavf_reinit_interrupt_scheme(adapter, running);
>   		if (err)
>   			goto reset_err;
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
