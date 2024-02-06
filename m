Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEE484BDFE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 20:19:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A832F831DA;
	Tue,  6 Feb 2024 19:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2jty82BCDcr; Tue,  6 Feb 2024 19:19:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9BC7831C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707247142;
	bh=BRskUFS47v6i9c/xrn3wzi/nzNY60Qc7vUr7ABq8kFw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yZ0/oJ1n2Fe2aXcx5DMX/+4k3AFl1gN3lQJ5eqdx4c768N19Z5rFySTrW76s2PTMP
	 UeZme+WlBT3/z82WqYd+qRL3Rgh0YR3TAntdO/Nrl7Gwew9aeQb1pgXr6zrVB35aaS
	 +llsZbOCiYaqhi6o/5fPk4FTBMIx7NgaK5EbFh07PJ1XIWeKfSSF5K3Mn9vCNiWXnQ
	 Gjyxx7/BS/gDyCpjFehsGMo1qgLteZaaTZDyTMvpiR2B2RLMo6jGy+ioqRuELbGqq2
	 3/md7ZXIU8iGbw53WDQ2WNiaf3p/1dH0HGlAqyG7sj/9ZlseRQEla2+o0+itbkwwfl
	 /k/b4ovpuAyPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9BC7831C1;
	Tue,  6 Feb 2024 19:19:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 680621BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 19:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 524E942068
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 19:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMQ8HWA9C5jP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 19:18:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7270E42039
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7270E42039
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7270E42039
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 19:18:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="23305932"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="23305932"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 11:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="5726487"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 11:18:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 11:18:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 11:18:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 11:18:52 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 11:18:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKo928HHxNoaBkQdCYLR06LhY2XEqsda6dADE0qDZ4N6L2BcLsVAP73CWv+ku39jA+mJ2hX6SUn9Vok0krFKCZAbMtHRMhXTSp2U4EmZxrnF0maTvmNbZCoUGplPPpIUZxcHCjqA4GbCk5yJs7BA3eLFyDN3P/FOhDwA/+oVKdUWC8V3GD/u46NYl8pzRi2KBAcGkvFKZnAQ9PgsWBp75vPsGJpc8+FJcc1KCSkAPEtK4JGDhbF21/oSdnu130K9nhtfxdL6/3wNHXEG4w+cmbstEf2pqMYY0clH9fMJ00UEOfTed9SSslSc7VdW0xSB1oLTUJSNSufpYXBeEJIQtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BRskUFS47v6i9c/xrn3wzi/nzNY60Qc7vUr7ABq8kFw=;
 b=J8zl+siW2daQYBDZa6Ie25vrwpoBecqsQP/eW2QXIfbF8wds2gt1kMmzuhowLlChD4hlo5Ma0mcv4zzbVy1MXNkZFX553IeRqiBl0Vcqqc2YKB72GnayZPh6iEM236s1tGb8Q13wrR0Wrt0OMH/sHWI9NbkE2qEQ8Sp6JlFq7J/xxHNz1eJyZqURNQScWrCC6+PNdKV4C7f8vBN6cOlhPu+4bXsQkJ1tjEcarj3hfrnzsE8jfRJ9xz7dieBMTXDoDEzCdU1jcuh1VnPTdIh+ysuCbGxmwtsZl4dCaawJLumvUOVx4U07m7xD0BZkL7R2HNyfGr2riZgJwRJIjVAEEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by IA1PR11MB7870.namprd11.prod.outlook.com (2603:10b6:208:3f8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 19:18:50 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bedd:e757:f922:119e]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bedd:e757:f922:119e%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 19:18:50 +0000
Message-ID: <d93d8608-be23-401a-b163-da7ce4dc476f@intel.com>
Date: Tue, 6 Feb 2024 11:18:48 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <20240206105737.50149937@kernel.org>
Content-Language: en-US
From: Alan Brady <alan.brady@intel.com>
In-Reply-To: <20240206105737.50149937@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0318.namprd03.prod.outlook.com
 (2603:10b6:303:dd::23) To CO1PR11MB5186.namprd11.prod.outlook.com
 (2603:10b6:303:9b::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5186:EE_|IA1PR11MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: 288dc834-769a-4db1-1059-08dc274872f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jSK/Cm3RrNHOkG9fRNEEV40AmLMOyZP86Brxv0TL33Trg/uz7aaiFtsCsk5x2cFCaZ6Y8jz7AFbmBzCm2CQLDhjq8U9oCToywp+/GNyNKBtq5NW054gG7urg6Gr0Vtd3duw7QOsXJQ1o+6AG4G4NPwqRb7WpojF1SE/cuLTr/h7rOam0bngXopnRY/3nuW/mYdCzFqDoJhtu74mQQ0Y7j5GPAm0TZuUteE9vxDQod9oyuNojq8hbXljWi9X8DYMGWeL5hNhWPEByccIiAfgVefvdkZEzW3mS+JQnA0BmopueXlVNeWUburB8sJ6JjJiQJn8YzQoABLdyTfp3RX+0oGtof9zJyp5FP8LZ0kZQSNFi2bBTz5A8KGIEqD3UPohvu0UjCKdnMGyCwC8INUdZE2k4L+nwn+g1ICy9cO/gVV6cuobciRkhBcz7k/boFHDC/M8UfEig3GuGZ0dwaBfAj8bvaUz2Tyrk+ZsT1k1gYBEKyvjX7iENjcKHQ7aj40Pw5Mu4lUgSYF6B/OeA56Dgi1r5LJZB9gbdVQvpDlJS/HB3T4UlRK0TFTFxgW2/EeNPiNXaT1dczeE/oFQQnp5Lva+Jj75uevmF41c6eXiqoh2yTQitIIGF/roMTokU4NWrrQEfI/+PhdytaMy5hzn+qA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(366004)(136003)(230922051799003)(230273577357003)(186009)(1800799012)(451199024)(64100799003)(31686004)(83380400001)(2906002)(38100700002)(82960400001)(41300700001)(316002)(26005)(66556008)(6916009)(66476007)(66946007)(53546011)(31696002)(15650500001)(86362001)(4326008)(8676002)(8936002)(44832011)(2616005)(5660300002)(6512007)(6506007)(107886003)(6486002)(478600001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1NKa0F4cmdzcmtORVJNL2FIU2tLOG5vWmVJMTB6SlhWTFEwSXQ5R056ajg1?=
 =?utf-8?B?blBuaDY4MmhRZEdkRmpKYWNYOHhlY2g5S3UwYkNidzE3TFhCK2YxamZONjJG?=
 =?utf-8?B?Q1NVbEc0QytwM1lsZm1qTHF2bUk3ME1yRlNWbFJ4V0R4blFsS01VS0pUTElw?=
 =?utf-8?B?RUdEZDZUaWJtNTFxdWZwZVRwUWZNc2gveXV2aGlCY095cmhPNzgzNzdqTi81?=
 =?utf-8?B?cjA0cFh0THNGMUZDcHduQUxZQ3RBRWc0SEtXSVc5T05JOVh1MmUxQXU0ME9m?=
 =?utf-8?B?TllyTm5rV3ZNbzl1MTBwSWFheDF3cUt3cGcvakJuc25tNGcrU2JNQmNraTIx?=
 =?utf-8?B?aXpXcTl1Y0lBYWpmOFpmaGdXdkN6ZDRhTkU5NTRpVWxya1cxOUdWd1ZtRFRu?=
 =?utf-8?B?SXRqV21ZQ2lUaFZpTmxsTlBSdjJwR1ErSm1qZ1p4N2dHRGJLVGtmSmEwNS9h?=
 =?utf-8?B?NDd0SkN6WTVSM2xjVTdoR0RHVWZYdTRRTmgwRDcvdGdHNzhnN211UGpxanhI?=
 =?utf-8?B?aVY3enpWaUloTkFjZzl6VGxBTTlyZ05zZGVTZWRTNTYxaTJrdHlmVVN3b292?=
 =?utf-8?B?SmtoSmllMUl2dDBjVFUreUxXWjkxNDFrSU45Z2Q1RDJZRll2aVF2Z0o3VHZ5?=
 =?utf-8?B?amFLSkNxZXBBS0lYb2d1NEVxakV4ZGhFMHNUNk9UaHpmYlQ5SVBBVEJWdS82?=
 =?utf-8?B?NFBKbkliTWFOZHFka0hKUk53eUxlOStsQThaOFFOc285ay8yOVE5VDk2R3RD?=
 =?utf-8?B?R1VqTHgwMGZ1TWVTNmNENjNKK09ZY2hVOGJNS054QS8xSUpLemJlV2tjZFov?=
 =?utf-8?B?VVZEeElLbDduSFVZNGx1NDZoclpKSlJrL0pEb0N3b0t0Vlg0TXZSclJaOTUz?=
 =?utf-8?B?T0pCYTN1bGptaDRBeHllamVvM3FDdExvSThiY28xVFhNY2VyNjh0V3FvaHkr?=
 =?utf-8?B?UEd6M2ZpRUtUN0p6VEtmeWVNd1N6eWZMMFdQdWxzd280MllwK2FnQ3ZQWFJN?=
 =?utf-8?B?MUlBazhWdUVFbHZFZm1Na01EZUo3YUc5ekxXdytnSHdsWmErbnR3TGpvOXhB?=
 =?utf-8?B?UTFwd2FHaTJBbHVWV3g5R1FpQTRPd1JGanhuaUVPT1ZOcmpDcHhnTExBN0Zz?=
 =?utf-8?B?U3E3VUd1cXNYd0ZkNzBYR1NxSVpaeG94TEFUS3dFQmYvQU4yWFhxRHRqRE95?=
 =?utf-8?B?dGVFcXkya21jZmYrdlFaKy91SEpPdzlIM295N0MrVy92YmptMjVLdmY5a0s0?=
 =?utf-8?B?MDZNZmovMEY0TFcyWFZCaTIvaGRFbUxlNVZKRHUzaW10VVdnUEwrTEwwVnBz?=
 =?utf-8?B?RFQveW1HS1dCUFhtaUxpQ1hvdFI2eE54Q0ptMnRIUlVmNDFTZ3hWL3duWWV4?=
 =?utf-8?B?YXMvQXBPemFVdW1TV1FUYWtOZHgxbUdpUnRBdkE1b2ZGWUd2ZDFyOW85UmpV?=
 =?utf-8?B?V0htZ3ZHNmUzTm0vaEZmOXJXK0FxK0JZdnZUSDhGeXo1VU5LNHEwK2FqSVda?=
 =?utf-8?B?S29HeGNnOXdtM01WdHJFNzk5dkRkQWwzbVk0anBCbHdtWVFhTGlhTFd5Y0g5?=
 =?utf-8?B?eHRyZmZlNThrdUJuWk9oQU1SN1RhOGozeUFZbCtUbTdjYkVvNUI4bnpFTTMw?=
 =?utf-8?B?dEJLenNzY2dOaXlXb1NPQXJrK0svOFpXcDloTUxpdU9mb1BYdno5RTdtNlJW?=
 =?utf-8?B?T3g2VktNalc2Z3czMmEyR3VYcFZNTUlOT2d6QkZtQUFTRlRPUEdsWS9VWXJP?=
 =?utf-8?B?ajlHWTlsQk4yb0s3ZHJyYnZTeVlXUkZIUlhsUUxONWRhN3U0Y1dDYjROWmVN?=
 =?utf-8?B?WUErVitGWWYyZkZqRStlYXdWcXROeVNyZVYvUlN4amNHTW1NYkdnZFU5Y2Zr?=
 =?utf-8?B?U0NQVUtXakJCVC9WMUVrZXpwTUlLM2V0bzZNbGdQNjlIKzQrU2duY0lhN2pT?=
 =?utf-8?B?dS80emI3Nm1adFYyUEMvWGhvRFoxR2MrbFFjb3QzTHpBQ09QRVZnaEdtOFlv?=
 =?utf-8?B?SnU4and4Q0ZCOFZUVDc1dTM2MVRvM25RbHZKbG1WOEJhVWRiaFB0V1VCQzhp?=
 =?utf-8?B?YW9ESXdFenBDbUpxRUp2U3lycThOUCtnSEdmZlh4VnhoVlVkNjRmQ2NjQ2FF?=
 =?utf-8?Q?7dlkyyEJvFCGjaLHqDRB9lK63?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 288dc834-769a-4db1-1059-08dc274872f1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2024 19:18:50.0590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xqGF4ARNeSu9zkz5BB/GgRZsMJjf5KbiThLT73rVbNvJLIxsCd/zTmHxqwiLyO8zVRgtOFiNmcNleRx119rg/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7870
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707247139; x=1738783139;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6q+yVyii1GaAOQd0aQXy8Iv3xeNU3KfZ6jUoru+GkwE=;
 b=azZRUjAPOkfDPlLVDi9WJ76iTPHedvfi6FgQcrmAvS5sdt86au75T0t2
 FXNY1a9H3vVZA+A+kTVdumH+Zd3AzoMBZ7wzCwMkPjVS/O9SBF81JSHbZ
 s4fLrl8juZ7mlIzSN6CIm7Natwk8DXKIKgPoceqKYCv6x8yehXYsm6I4n
 ZNwmU5QtWo/36Yp2XXeJ08Lszn6S0sJ8XX5hh1jqH4vukmo4BFNgYlTlu
 OJYUWXAXZDRU4TyVTwQHP+PoA0TA+czp9NBh37J6lCTyAzaVXUweNUWkY
 fmwZsvMxkKNoR4VJi1702BRkHwx1azPkI5M6HNKp9f3YBefe8EimxYnD4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=azZRUjAP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: willemdebruijn.kernel@gmail.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, igor.bagnucki@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/6/2024 10:57 AM, Jakub Kicinski wrote:
> On Mon,  5 Feb 2024 19:37:54 -0800 Alan Brady wrote:
>> The motivation for this series has two primary goals. We want to enable
>> support of multiple simultaneous messages and make the channel more
>> robust. The way it works right now, the driver can only send and receive
>> a single message at a time and if something goes really wrong, it can
>> lead to data corruption and strange bugs.
> 
> Coccinelle points out some potential places to use min()
> 
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1956:17-18: WARNING opportunity for min()
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1271:17-18: WARNING opportunity for min()
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1319:17-18: WARNING opportunity for min()
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2640:17-18: WARNING opportunity for min()
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1295:17-18: WARNING opportunity for min()
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2157:17-18: WARNING opportunity for min()
> testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3582:17-18: WARNING opportunity for min()

We did run coccinelle check and see the min suggestions. It's triggering 
on these statements I added:

return reply_sz < 0 ? reply_sz : 0;

A min here would change it to:

return min(reply_sz, 0);

I didn't really like that because it's misleading as though we're 
returning the size of the reply and might accidentally encourage someone 
to change it to a max. Here reply_sz will be negative if an error was 
returned from message sending. But this function we only want to return 
0 or negative. By being explicit in what we want to do, it seems clearer 
to me what the intention is but I could be wrong.

We can definitely change it however if that's preferred here.
