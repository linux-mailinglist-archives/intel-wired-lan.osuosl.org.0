Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D13576A411
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 00:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03DE240C1D;
	Mon, 31 Jul 2023 22:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03DE240C1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690842147;
	bh=9q1ChP3EgrQeJr9A86GzlrQzjNih0pXYZLFulU36m/g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bssxAX+1RebUJJOzQWLKxIviwxygfEgWXZkUXLMP7PhbdbpcFhz7DbK6EPRQl/XWq
	 3+BP5D/QwF1cjn21TQu5xQ7YHdBMxllYhr8s+mOgstHNFfefr2ymIOjGB1P2AeCM01
	 +l82eDkt8vy0YNSU0hrHIsfQn/GafZkLWrVDEaE82OB0UxboRD6Fm//vlKPGlvvsNz
	 bADhfmKIyE6ove9K0BgBNSSjUr1tCeKcj4WZmm6cebHFg5aoMoTMdIw6nzCueUrc5h
	 3RI5NWtQhWEokqcYOGF6VP6KW4ovLO9p2sTUvxykYcriHaKkKMBO19JJFIWBzop6+/
	 Z0Rv1ieMiXqCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M93cga-2KWEI; Mon, 31 Jul 2023 22:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6059440BC7;
	Mon, 31 Jul 2023 22:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6059440BC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C6F91BF378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A15A4011A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A15A4011A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id slRIpF264WBJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 22:22:10 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E60140339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E60140339
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="348736131"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="348736131"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 15:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="1059147159"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="1059147159"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2023 15:22:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 15:22:09 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 15:22:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 15:22:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 15:22:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CsMopKOjrAZS2xv3XCR4lp6Jm3j6OCoCZXX36S/Q3gmZeSvCMaYnDWyq92KiAgavhBafzNsQBZ01muV3schjQL4oHdukOm5uTzRTggL/J+oxK9C+4ZoRv5lqO69kkUc6/0c5oKBE1zUmC2flq7Px0AiFrTOVLFlOfvQXCF4o8diiEkD1+oE5EbVc4ZJ6zzeEbnddPrtIMgWKIt9KCnkm2Fkkp+WAP4ll9XyxYmONWsQl2AZL6iF5VdDplFssloU0WchAXkhFsC2igIhXVjoC3EHWlwle1KDDPowgRcyWsetkNjCfoo3rhfjdQr6I0lhUPoEstUQzY6eU2W/eqbDDjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GedOcPr5cyeu+pkleaN+7Bz/IaTZdN6HAiyavu4+Bz4=;
 b=kGu3DF4+zEAbBZZeKpwwHVP/+7md9qrOLq9Gyw1KpwRiM5Zs99XOe5Kxm5oXKms9H3/xggfzOrSvlDcKZ78kYbBcJfYqVYpTu/jX8rrlc/ieYunFGp0B6iFfEpJzkvrp4IlztOYyUuCBM9HKe7x00PLkkJmgAGgvzzi3P22nLlekBzzs9Qn20xCcmo8FlPtoEgIfi59qbJwAdhCjsSmETERcpvaCGxffW6MQft4/dszsgB/G7CuChzErlcoxFR16bkmBTd3iqTK9iQp1977/PIrZuHSL4SCfnwbkvsVzfSM0ZpTiuqWPXNroKUn2I50GNDyV6PH8+ZkbBBnwRG+TXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5340.namprd11.prod.outlook.com (2603:10b6:408:119::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 22:22:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 22:22:00 +0000
Message-ID: <9449d32b-7e94-71a6-fb62-47625bdf94b1@intel.com>
Date: Mon, 31 Jul 2023 15:21:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Wenjun Wu <wenjun1.wu@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230727021021.961119-1-wenjun1.wu@intel.com>
X-ClientProxiedBy: MW4PR03CA0088.namprd03.prod.outlook.com
 (2603:10b6:303:b6::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5340:EE_
X-MS-Office365-Filtering-Correlation-Id: 03c640ce-30d3-45ca-ee46-08db92148f5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6x2cPnZvNiIAkywr2bV4CrMy+QcACdPrck3jR7qnob+hlWRmAx9WH18n8XgRZdGDrEKsJq6IthYPzKAlK6UtxXQsyjpW0wUDyPLUD5Bk8Wu+Gg2FCXpHrEPHfB+spGFcjuF97tNYj9tXDDjLWq0WL8JeefgEMg4AkcW/IxCDXINzZ+ro+Vr+tiTKCN3KsWSdy4oechOU6q1ltE7WAKm5T8hHVMyPwGyvTR1a24u1LiL9MWKZ36GfseBUUUsM0/uL9au8FJW0T4btJKc8aUwgkDCz9Oiu5GqLBlqdn5yQXzBSWuF/pbwnslKB9TZi89ydBN/HJO1i6n2C2HCK0kpFpjrd2nUm6s8ROLLdWzrpkpa5ulj05l78qCaVjwPTBQJhUmrfB6emqzEZvLSVuxSRlcX8+Ue16PI3iN2fbeWSS2pyTFcNeZfshGMkHUD4QpVrt0jTIwqgxXdeDvNklEVHZ/pK6t/ST/prSJlM9zkTZV7nryn1gwOrlbfjmX2lNuwKDIdWy+vG0AewabRDpusxEZzPXaPC1ZiIdicuV7KhuDDg/8/0lVQJxM3ugcB4uDouS4oXCvxCWb+UrPZwISMej3zN7hgZtFMSd28w4EDg6qetkWstNAhi0r898xatltkVJ+3EOPgUwORIVNEMUrOjrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(366004)(136003)(346002)(451199021)(6486002)(6666004)(6512007)(31696002)(86362001)(107886003)(186003)(2616005)(36756003)(83380400001)(6506007)(53546011)(26005)(38100700002)(82960400001)(5660300002)(8676002)(41300700001)(8936002)(31686004)(66946007)(2906002)(66476007)(316002)(478600001)(66556008)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUtON1ZhQWtDSm9mUEdsZnZFbHpvVlZNekQ3cmZXdk1TTmJZOHRnQnBmR0x0?=
 =?utf-8?B?Q1dJWEtnOEtIOURVNUVueHhCTHVIN1gwdEhQYUFTWWRqZmNZSTRoOGhVZHpm?=
 =?utf-8?B?UWdXMW44N2ZSOGwwYU9ESXpvbE04ZnJ1dlo3T1lMYmpoaXkwOEpxMzdHQ2lO?=
 =?utf-8?B?eVpLOTFVVWZCSEtDQmhpOGxsMlNtSEZOTm1GOGVYd0JNZ3VZV3ZWY3ZSVDZ2?=
 =?utf-8?B?N2E1cEJiaHBRaEJPaHlGb3Q5QWxyNmxSU09HTmhkdWxUc3U5K2Z6dUNLaTZE?=
 =?utf-8?B?RlNZSjlDdHByNW9naEd3eDFETjNaZUx0aTc1cHFrdXYzc0xscDRQMnVGREFu?=
 =?utf-8?B?djhPWmwva2NLck5pTG9SVjdFazMzZFVJK1FZVUVVTUVHc0F2V0J3WGhDQTdk?=
 =?utf-8?B?dnBnNks5RENaVEZnaDhkUUNmM29oZHdEM0E5Y2pNZ044SVF2U2VzN05vc3c2?=
 =?utf-8?B?TVpFblIyMFNydkpHdEFQM05pbld2d3hQSFdIdXZWUGJOaXB6eDRmbTUvcS9E?=
 =?utf-8?B?VGFaVkNibHFNTTYvZFRpWlBkZkNBRm9WdFY4TVZaNklmam5la0FGZzhoU1hp?=
 =?utf-8?B?Q2Y5WHRuM3lYd3dhNVRJdENMRC82clh0cEVDZjQwbXVTY05ockxrUU5RQ2RH?=
 =?utf-8?B?VlRzeGk4V3VLYjJDUEwxUmh0RHQrcUxvOFFDaGlONGtSRllGR1N3TkFtWWxk?=
 =?utf-8?B?MlFHZ0YvZmFQTTlIdzdFQnBHTUExMVBjdVRHQUkzdjRnWkloZC9Tdkl4NTBF?=
 =?utf-8?B?TTR2R2NVR2c2aUdJQkxTN2ZFWVE0MVFuT0pFYkJPdjhHNkJaWk9qeWpJdm1y?=
 =?utf-8?B?c1dxc28rNUZ3OGYyTUsrazF6bjdMT0VsbG5Sb2hJN2VsKzdZZnFCV1IvUTF2?=
 =?utf-8?B?dG1pRDJPZkQrTjEyd3dBSERwOXBCbmJyNjhyVHZmK0kwRmw5dGhBdlhlR3Fa?=
 =?utf-8?B?K0tCWEIyR0V0L3Jyc3VOOXRGRFQzeVJHMGNmRUFXS3lwN3lXTGE1MVVQQzVm?=
 =?utf-8?B?Qlg3TVhpcUhza09VNmlUU2NaY0Uzck5BQzV6cUlHWDFveUNrUUpsMFdJdHBC?=
 =?utf-8?B?WUpiblNWSWdTYTBFZzJnUWFkMmpzTWtRUGJnMjlYc2hjTHJxbHo2bWdvWkM0?=
 =?utf-8?B?UktyMlZicHBCLzBMK0Q5ZlNMSkNnWHBnZmlPNjBBUjR2RDU3RGdWdWwvQkkv?=
 =?utf-8?B?RWhON255RHdNdkVVRjhhT1VvVHQxWlE3UTRoTGlBRU90WkhUUzY3K01DbFZq?=
 =?utf-8?B?WXVoMjM4Y1NiVExTempjYjIyeTVFQWFKbGY1WWdqK0Y0SlhxelR6cFhiZThM?=
 =?utf-8?B?ZXk2VzlRNnBZUy9kbHBTSXM0bmdSbEZJaXRNRUNRTHk4NG5JY3ZOT0JkVFF1?=
 =?utf-8?B?b0lyWUlYUFVhdEZsRll3RUVCeGptMzUvZm1mbkFMaHJwL2hYR2JTZ01DTWh1?=
 =?utf-8?B?dmNPaTZxN2hUcXZwRzhKKy9nSmhMNTZFQ1pocDBOaWZ2TUhHTlQvWURIcXcx?=
 =?utf-8?B?ZE1mQ2RDR1JseVh3RWNBdDN2bEh4Qkd4Q1RIZ1Z1WGExbWY4YnJyR0lvaFBW?=
 =?utf-8?B?RzdvZVVNOWNqLzNDbGg1cXRnZ0EvZnR0aXI3YjJVMm0rc2UzQUJ0Z2RSNWdC?=
 =?utf-8?B?cU9xVWt0RXp2d3pmM1lMR2FLTm5xWkZsSzVNNEk1U0wvdGdyQ1EvY21WZGtF?=
 =?utf-8?B?eXRheVlmcWxwTjFWQ0R0NDFPQXJTK2JUMjNqekNEeStkZnlLS0ttcmZCdjdZ?=
 =?utf-8?B?Z29na3N2SkF1Z3FFcHRjZW1PUmYrR1Q5d0RoRVVJN2dMdjRoT0lZQno3N2ZD?=
 =?utf-8?B?OGliY3o0Q3pPU015VytjaUc2eVBpT1dTaWZuTGxMTU4zVmY1T2d6bDV2T3Ns?=
 =?utf-8?B?ckFvaytoUXFWY29DUjloSDMyZWVtMWZvY3FHaStIWG83MWhlN3A2OXhhSk9F?=
 =?utf-8?B?ZWZnNjc2MlZUaHNZZGJQRnZqUnE1Zms5Y0x6K1p4UndYUkJQWGlsZU4xQzQw?=
 =?utf-8?B?bXVNTmxVL3VsVnp4REs0QlowUWhxY3dtMHEvZngrMmdsdnovRjRLdXM1eGg2?=
 =?utf-8?B?VlVkWlkxNVcyYnJ2K200VEFpZkZaZnVYNUlRV1J0YVNNaHovWlNHT1kreVJ4?=
 =?utf-8?B?cmFpMHk5ZXJldC90SUYzVkhNTUhhTktYQU1ZRWwyVzY3STBtOGFnMU9PWjVR?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03c640ce-30d3-45ca-ee46-08db92148f5b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 22:22:00.7192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ErLLI5EcKawVNATYvERGnOf2oiyxPbe7vze77tBbmEPyNObG7FdFSQLrtOeoLwROCpBry/2d4rlCbee+FcqIeML8Pmd9Voq0SJlXiZIQgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5340
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690842130; x=1722378130;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QxpybEgTqaM8/w1WNfLVXwBIlMjl2yA7vKXO/Kreg9w=;
 b=bLtPnOtCIxMZbGbI8r9Um4UCVFY9nINqnUJjHFGE8GESKoJe9Oq6GV7a
 EcZ1T3RzX2kumkfNKFso5YphAos2lwuKk7424VvxtNMbnlfqKk9hFSxWn
 QHpc6hh9fjUKK72Uiu0VgyRQOU3IHRB/86+d4ScHrWjEfEDePusqwZxtl
 7a0W5cr3slC7navy7HKhIfTi8yn6OjbIi1LXKwo6VIhsJJYM/9Mzmfn9M
 2eJbTRUqL0RP7oMRVM1cNdge+lc0Sd3uV5xRAxFbti7EWMiJ0oGLdLDDS
 /Bqf9n3XtSR/JdW0cb/iox3XN2preXUrWmWhswMxjEhJobTFyzFE4INp3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bLtPnOtC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/5] iavf: Add devlink and
 devlink rate support
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
Cc: mitu.aggarwal@intel.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/26/2023 7:10 PM, Wenjun Wu wrote:
> To allow user to configure queue bandwidth, devlink port support
> is added to support devlink port rate API. [1]
> 
> Add devlink framework registration/unregistration on iavf driver
> initialization and remove, and devlink port of DEVLINK_PORT_FLAVOUR_VIRTUAL
> is created to be associated iavf netdevice.
> 
> iavf rate tree with root node, queue nodes, and leaf node is created
> and registered with devlink rate when iavf adapter is configured, and
> if PF indicates support of VIRTCHNL_VF_OFFLOAD_QOS through VF Resource /
> Capability Exchange.
> 
> [root@localhost ~]# devlink port function rate show
> pci/0000:af:01.0/txq_15: type node parent iavf_root
> pci/0000:af:01.0/txq_14: type node parent iavf_root
> pci/0000:af:01.0/txq_13: type node parent iavf_root
> pci/0000:af:01.0/txq_12: type node parent iavf_root
> pci/0000:af:01.0/txq_11: type node parent iavf_root
> pci/0000:af:01.0/txq_10: type node parent iavf_root
> pci/0000:af:01.0/txq_9: type node parent iavf_root
> pci/0000:af:01.0/txq_8: type node parent iavf_root
> pci/0000:af:01.0/txq_7: type node parent iavf_root
> pci/0000:af:01.0/txq_6: type node parent iavf_root
> pci/0000:af:01.0/txq_5: type node parent iavf_root
> pci/0000:af:01.0/txq_4: type node parent iavf_root
> pci/0000:af:01.0/txq_3: type node parent iavf_root
> pci/0000:af:01.0/txq_2: type node parent iavf_root
> pci/0000:af:01.0/txq_1: type node parent iavf_root
> pci/0000:af:01.0/txq_0: type node parent iavf_root
> pci/0000:af:01.0/iavf_root: type node
> 
> 
>                           +---------+
>                           |   root  |
>                           +----+----+
>                                |
>              |-----------------|-----------------|
>         +----v----+       +----v----+       +----v----+
>         |  txq_0  |       |  txq_1  |       |  txq_x  |
>         +----+----+       +----+----+       +----+----+
> 
> User can configure the tx_max and tx_share of each queue. Once any one of the
> queues are fully configured, VIRTCHNL opcodes of VIRTCHNL_OP_CONFIG_QUEUE_BW
> and VIRTCHNL_OP_CONFIG_QUANTA will be sent to PF to configure queues allocated
> to VF
> 
> Example:
> 
> 1.To Set the queue tx_share:
> devlink port function rate set pci/0000:af:01.0 txq_0 tx_share 100 MBps
> 
> 2.To Set the queue tx_max:
> devlink port function rate set pci/0000:af:01.0 txq_0 tx_max 200 MBps
> 
> 3.To Show Current devlink port rate info:
> devlink port function rate function show
> [root@localhost ~]# devlink port function rate show
> pci/0000:af:01.0/txq_15: type node parent iavf_root
> pci/0000:af:01.0/txq_14: type node parent iavf_root
> pci/0000:af:01.0/txq_13: type node parent iavf_root
> pci/0000:af:01.0/txq_12: type node parent iavf_root
> pci/0000:af:01.0/txq_11: type node parent iavf_root
> pci/0000:af:01.0/txq_10: type node parent iavf_root
> pci/0000:af:01.0/txq_9: type node parent iavf_root
> pci/0000:af:01.0/txq_8: type node parent iavf_root
> pci/0000:af:01.0/txq_7: type node parent iavf_root
> pci/0000:af:01.0/txq_6: type node parent iavf_root
> pci/0000:af:01.0/txq_5: type node parent iavf_root
> pci/0000:af:01.0/txq_4: type node parent iavf_root
> pci/0000:af:01.0/txq_3: type node parent iavf_root
> pci/0000:af:01.0/txq_2: type node parent iavf_root
> pci/0000:af:01.0/txq_1: type node parent iavf_root
> pci/0000:af:01.0/txq_0: type node tx_share 800Mbit tx_max 1600Mbit parent iavf_root
> pci/0000:af:01.0/iavf_root: type node
> 
> 
> [1]https://lore.kernel.org/netdev/20221115104825.172668-1-michal.wilczynski@intel.com/
> 
> 
> Jun Zhang (3):
>    iavf: Add devlink and devlink port support
>    iavf: Add devlink port function rate API support
>    iavf: Add VIRTCHNL Opcodes Support for Queue bw Setting
> 
> Wenjun Wu (2):
>    virtchnl: support queue rate limit and quanta size configuration
>    ice: Support VF queue rate limit and quanta size configuration


This series does not apply.

>   drivers/net/ethernet/intel/Kconfig            |   1 +
>   drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
>   drivers/net/ethernet/intel/iavf/iavf.h        |  20 +
>   .../net/ethernet/intel/iavf/iavf_devlink.c    | 388 ++++++++++++++++++
>   .../net/ethernet/intel/iavf/iavf_devlink.h    |  39 ++
>   drivers/net/ethernet/intel/iavf/iavf_main.c   |  60 ++-
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 228 +++++++++-
>   drivers/net/ethernet/intel/ice/ice.h          |   2 +
>   drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
>   drivers/net/ethernet/intel/ice/ice_common.c   |  19 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
>   drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 317 ++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
>   .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
>   include/linux/avf/virtchnl.h                  | 113 +++++
>   18 files changed, 1225 insertions(+), 3 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
