Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C3E43D311
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 22:43:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 134B860627;
	Wed, 27 Oct 2021 20:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uaoh1_l8AOHe; Wed, 27 Oct 2021 20:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F35ED607AF;
	Wed, 27 Oct 2021 20:43:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 879201BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80174401A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rOcFY4Dbx-Vn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 20:43:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEEA240192
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:43:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="210330191"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="210330191"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 12:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="635862298"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 27 Oct 2021 12:54:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 12:54:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 12:54:46 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 12:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KrQ/jJWCvyMBJgGvmGPV+0BrfLmtnavg/veNqFcyUZ1rKHMfHTLOyxcja2PvFx6BznpyOgBbD7tFViHrVf6FqZjUe3aGt1Io55cyJ0D0Fkwd06LkDZ4rko+E3cMEhMdDKdLIA8wsYi1htOxYzZUjsBcULEj65DoyuvymvOoItJacMv31QcYvgxk+HT8ZnCflIVafJva9lcdp2p/IxgEFL6EP3qZ7Elv7iWoycI/YVSrrBtddraFuJojbYFMqJk+RKOTvrWt8gDUB1GsLl/uavNqZ/3YCH2QYElPhXffTxkZr8g6OLrvbHW/MwQJpUNT1xZZQdptjW/SmV/qPnLd/Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=njDfgKm9YDgoPit3tju/K/pZMb5vpfAbjX2uBTKCcmk=;
 b=EUlFod5JLHxUlxoTeIvVRMh+eaFW2fAzFXVcgNIE2qOUkn6ccHxx2cXW3cY/xu5HZS/F/iz8RWB8jhK+j4JSPAjSYkO0/iI8AfDOI6Et/+sYMwOlKW1WNrHn4hZ7xJMlkJQSQnU+XQYJMweyhEiGsOdUyYtuUEN9iH5p+LQKK7IBepb7KlQ1uXtj1Cwo4kOvjkgx2XbVsFnuGQHtSbWCc+qEtLhdLQ/AVMYdbFmF/Og2tCaJH2k2BjhjjJdnwtXnrWYH1yZ9Mjyp345JF28/r9seKhCobbfjNiacEXVFx+VV4ScSroREVa6j6agNbZ4t2dOZy+1GKg8zEj/317ssRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=njDfgKm9YDgoPit3tju/K/pZMb5vpfAbjX2uBTKCcmk=;
 b=DHbDtquw/8VBUtgm4bbYBuwOu/I+/4bRQg1qWKKjXyoUYytz0UcHH9Qf6eV6jyjBDhX+JCik6LRASHLaa0QWFiwrGyXkBp4PFQ/8+nlQpWV29hK4bj8fUTZcPtW46zT7umCAD4LZmCs0A3dMZp9+NaETxQ4bKL0BCs8tt1+H/2Q=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Wed, 27 Oct
 2021 19:54:40 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%3]) with mapi id 15.20.4649.014; Wed, 27 Oct 2021
 19:54:40 +0000
Message-ID: <3a99e26a-1649-9ea1-cdaf-a670341398a4@intel.com>
Date: Wed, 27 Oct 2021 12:54:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20211027144855.53214-1-michal.maloszewski@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211027144855.53214-1-michal.maloszewski@intel.com>
X-ClientProxiedBy: MWHPR2201CA0058.namprd22.prod.outlook.com
 (2603:10b6:301:16::32) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR2201CA0058.namprd22.prod.outlook.com (2603:10b6:301:16::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Wed, 27 Oct 2021 19:54:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d958545c-e179-4b5e-ad38-08d999839d3a
X-MS-TrafficTypeDiagnostic: CO1PR11MB4771:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CO1PR11MB4771B1C67F585DA9EEBDBF0097859@CO1PR11MB4771.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T9gkxvdNdD76SV2HKsStr00USGNscwREUpaRRzyuI5MuW/QDp8TXTFXRGR4OwTXxCwKDwmwPdnH5J2Pynoq5oC4f6R0vOV9sZY1x+toVV6aGJFX3qFCUJHGrqUDI7JhFYBdI6byT2q6Se9+8ofnatR6Qg4JtDaK2fpfT8RIWR1+39rkCmKqmgudOh/Y2fSTzYTZZV2rAR8sM/sntPpiaidKIScC0lE5ay3X72MwaXsw+1ixh5gEx4dd4aUSYHiRulhPy5FQs+aYoIWjwHn4okunHO4B5xCNo3GdozzA0SC9XotTJlTd1z8xd32U2APF8N/5ohPowK66JCQsnUp+kqb5yO1cgYLAstWb6btRfODsZ7dlQ54EZqXsIr5Nt9ZeQySExk+Doq2JjczeUJTk0m2tUGdoq3BmJHeT8VfPFiFHyDNwq7Q0/vYxEJxxjLtPh7tg566mZB6quQm7gAu6uZhE56FN6BJJZR1sQBMd4RVrlZl2QYjZuCX1A6T7mzkmngaguuOoj1RXj7UjPjDPrnyua4vkTUSpVJVx2Qx6ONF+OKwBTIVR9G9RfUIxwICVYoSAAyZaGELcWUVTyjznEjYO93cfbLlLFUiPbcC9kIWgvQXiTi6TxGyG76tEp4Ga819jUaEm6yyHHPMqpxM4M3F0OW1l6bDW88Uaxt3HCuKxN6s0fMTtLPKRHKot0ArR3+tZBQWZWAAx2Vy+HTxEVK7MalCw3zmstIg7BqOjJr5sbRmjyL/7eW9M0miAde/YQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(82960400001)(26005)(31696002)(8936002)(6486002)(4326008)(8676002)(5660300002)(66556008)(31686004)(16576012)(36756003)(86362001)(316002)(956004)(2616005)(53546011)(66476007)(2906002)(15650500001)(44832011)(186003)(66946007)(38100700002)(83380400001)(107886003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFVvQlhoQ3dSSWZBRlg4M0FRN3VwN0pvQk9wSGt6Rm5GRXdkTDJrdCt1ZkQ2?=
 =?utf-8?B?V3l0aW9wT2N0bk1GRC8zK2pFNW9wZDVzVnJVaDNPak1iamZiQjl6OEE5clB1?=
 =?utf-8?B?eXRQQlJpRTNmOUdmMEdNMFcrdko4blBZajhaOGx6bk9wd1pNUWtEQTNFczhY?=
 =?utf-8?B?bkxRYVdvL2xpanErMUl1a0tHT1ZKZUpmY0pnRk5EZnFLOGhrUm53Q1ZpeDFo?=
 =?utf-8?B?TmpNY0swTzZ3YmFOOGFmUVdlZnlMbE9tZlZPSGtxL3JWTEo5VXh4ekNETHBY?=
 =?utf-8?B?ZFJYUGhQcE9YWWFpYzAxd0hndWd4WWFrOUk2WDhJeEFES09MaUFkczZBMDVi?=
 =?utf-8?B?ZGNUT1ArWktXbUJrN1NETGxlTnNyWkRXT1ZjRGRVdE1GRTI1QWNjbjVyWUpl?=
 =?utf-8?B?blJIN2gwMTdVMGlvUks0UTk5bE1mcWx2QkE1QlhES29FUUNMd052Z3dVNmNk?=
 =?utf-8?B?NUFwenZMU1B1QjMzbjh2NXFyTWlQTjZiNzR2RVJwb2loaWkzQnNlTHRjWDBS?=
 =?utf-8?B?ajhIK0daVURrRy9xTmcxR3ZQZFpZekJQaE12L2gzOVJHVG1rUFRVNjhrK05m?=
 =?utf-8?B?ZlJ2R1AxYWF3QmdoOW9MaEd5Tk5ibnRNVGdHclJLVmxjdllyNnJqOWhadUwz?=
 =?utf-8?B?OHFWV0o2cXM1MlJwb2ZyMUJmZ2tGbTBwem8vQldvOEZzWTlVd25JM1ZxTVdR?=
 =?utf-8?B?OTJDYURFeG91WjdXY2ZMWlFVS2dFSy9UcDdGcWMvVDdxRW9vZjdNUFlxNWJw?=
 =?utf-8?B?Q1dYSWVuNnNZVVZ0MWtuOGdkdzJXQ2s4MHl1K1VSbEl2Zkx6WWxPNTNBV0NP?=
 =?utf-8?B?WTFma3pHM1hqOGdVRzBzSzNmSkErMmJNRjZVY2o0azFmNzYwMW55cHpORFpI?=
 =?utf-8?B?eGZNcDFsTmgwSlFrVG1UYWRSYkhWYmJDbVBpZVRXVkJKeTlrY3dMK1JnNmNp?=
 =?utf-8?B?TGRYa1FYRlB4alM3MDk3S1NGcDF6cUpNaTVUUCsrUjhNZTN1dVVCVzdYTDBi?=
 =?utf-8?B?SDFUNFI4SEtVNDArMVdxZENIVUlOL2g3MWNMb0VObldUSC91akV4Uk1OcUR4?=
 =?utf-8?B?U25PZi81ZHMwQU9zLzlQMXRtNUNNdXlhd0s5MW96RkhBb0tXaTNleHBZQ1lV?=
 =?utf-8?B?NTR5cndIVDQ5dllkOFI0aThxTGtTNjBsT0RocWFtNk9sbG9mS01zc0J2dk8x?=
 =?utf-8?B?c1VjcVNGbHdWd3ZlY29uSVNkVmo4SUdHTzY2MEpTTHRvSWNSTmFad0hQTTUw?=
 =?utf-8?B?VldwL1hTaU92dmJiMU1IMnFtbHFyVnZHY1pvQlVZSkJudW56RFY2MjNSUWdn?=
 =?utf-8?B?UzVZT3BLWFV0bDVzN1BhaytBa0ZYRDVBakN1ZUpScVlFL0FRV2ducmJncXlP?=
 =?utf-8?B?R2JydlordG1uK0JaZ3NIVzdkY25oTFg2VW9YbmpGSVJlYVFRMlF6N3c0WExz?=
 =?utf-8?B?b2pGTGR4Vjl6WTF4blNnMCtnSXk2U2VIY1pmbHUxS0ZlR05zeTZEYU5Td0V4?=
 =?utf-8?B?VWxLTWw4emFDZitWaDJWVHpWTGcxbTBJS0tJV2haRVkrQWpSSy9TRkM3U2Z4?=
 =?utf-8?B?UjBDSFRlZ3B5bTdpNmtVd1Q5ZmNBdjhxbjg0akFRVEJKWTJOak1VbTBBNGxD?=
 =?utf-8?B?Ry9rbSt1cXFGOWo5V3FpdEwwTy9UZmNtOUtLSmNhamlNZm5wWERESnJzN2JQ?=
 =?utf-8?B?NHRVUWh1c0hFR1dVdHYzRHVFRU42MXN6eVhGYitmKzQva0JXQ21YcUVmcnho?=
 =?utf-8?B?QkRlYmlUYXZ1bWpUdExscko1cVNZczJIZUQ0OWVXZzcvUHZmbGl6dzRiN0pX?=
 =?utf-8?B?cjlQV1F1OVJaWVdhSHp1ZVBxakJFaWZKQkMwYi91VCtoQnFQMnhENjdWL1Nq?=
 =?utf-8?B?Q2ExeUIvWXRXWXUyM1c0a0JqTVo3cnF1eWg0NktORHpTYWhYTzg4ZGVUdVNX?=
 =?utf-8?B?L2ZHR0tOempTTGVIdU0rMlRpOHhCWnVMeStUeklBMWZUU0RoTS9aSnFxU0VH?=
 =?utf-8?B?TW1vMStxYjY2Q2g5bXNrYnRPRUorZmNNR1YraWVtMWNrck8vdmwyTldkaFNF?=
 =?utf-8?B?QXB2TlhGdFFwbkd5MGdFcjNOamJuUnlTS2ZsWDNUbVA5a3g2Z2NiMnZTb1kv?=
 =?utf-8?B?R0w2enMyeDJSMnVNQTQrYkt0VG50UVZ4MTlSQWNLVXgvRUJuSDZxVVpQRnRw?=
 =?utf-8?B?ckd0N2VGNkFZZWV6TkQ5RGJ2RDdvbUNmMFljUjFKYnh0b2NoMHN0OHdlTS9D?=
 =?utf-8?Q?FW+MKN9s3AfBOKAPbsgU4cMDKCXtwL8eIv8j4GWJlk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d958545c-e179-4b5e-ad38-08d999839d3a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2021 19:54:40.8623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IbGAYxZ4ziF72IDULNGGVhxWDN1F/TkRa/u2r65FqRyzsWWTATTENAbuTUKtg+v9Qbx7z8UFSf2vumiMfWXFgdNXockOjeTj2TXLUu79+S8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: Norbert Ciosek <norbertx.ciosek@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/27/2021 7:48 AM, Michal Maloszewski wrote:
> Modify netdev->features for vlan stripping based on virtual
> channel messages received from the PF. Change is needed
> to synchronize vlan strip status between PF sysfs and iavf ethtool.
> 
> Fixes: 310a2ad92e3f ("virtchnl: rename i40e to generic virtchnl")

good so far.

> Title: Fix handling of vlan strip virtual channel messages
> Change-type: DefectResolution
> HSDES-number: 1809974314
> HSDES-tenant: server_platf_lan.bug

remove the above lines, not needed or wanted upstream.

> Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 42 +++++++++++++++++++
>   1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index bdc6040361..dbce5c17ab 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -1456,6 +1456,24 @@ void iavf_request_reset(struct iavf_adapter *adapter)
>   	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>   }
>   
> +/**
> + * iavf_netdev_features_vlan_strip_set
> + * @netdev: ptr to netdev being adjusted
> + * @enable: enable or disable vlan strip
> + *
> + * Helper function to change vlan strip status in netdev->features.
> + **/
> +static void iavf_netdev_features_vlan_strip_set(struct net_device *netdev,
> +						const bool enable)
> +{
> +	if (enable)
> +		netdev->features |=
> +			NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_RX;
> +	else
> +		netdev->features &=
> +			~NETIF_F_HW_VLAN_CTAG_RX & ~NETIF_F_HW_VLAN_RX;

you're forgetting a call to netdev_update_features(), and without that, 
layered devices won't know about the change.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
