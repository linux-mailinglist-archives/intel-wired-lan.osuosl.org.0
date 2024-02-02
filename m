Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A818470CC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 14:03:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8E59436E9;
	Fri,  2 Feb 2024 13:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8E59436E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706878993;
	bh=b1EwF3dWTL0MX6SmtFQiAmpRVnHDqkEE3wsgsVt2lB4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OaP8h/FBQS74IemrZOltFZicWAFtcDWFOH8+T+iXbZ/6FnDpltyDqqLOG34r8R9cL
	 L/vW/uTS+V8EMgORWJgvYdfA93FarCGKCdRMNVGtksc8Yq2TRUpaCiNcOEqiLiToGd
	 0n56l32TzqfySCZZ7nbQXQuF10wXiAu+JM88qaaU4viXq6INLRpD1of/H3wA1duO5E
	 6AHH4kwZ6SjK5PfPM05i8BZ6skUNwAj+OQXP+/YOklaiCaFtLYcbLhOCTQkeKWEtd8
	 vq2KUOF4hZ53E834rt/c7CM+FRBWoX5OFQoJng8Eex7TJr7s6fPb20Q0Y/sPgldFtL
	 vow3p8NW22gXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7elOELtLrgA; Fri,  2 Feb 2024 13:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78AAF4051C;
	Fri,  2 Feb 2024 13:03:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78AAF4051C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8BF1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 13:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DA6B84DE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 13:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DA6B84DE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_l5FNEtbOko for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 13:03:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3214E84DDB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 13:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3214E84DDB
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="71585"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="71585"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 05:03:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="908566394"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="908566394"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 05:03:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 05:03:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 05:03:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 05:03:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q+7xvzYg0ZzOIgrH+ftuhQfpN51qosjynLjteVbLx22sRYFdMWui3lzvMxbcGNPEDhayVNTr0ezx8Jf3MXXjeZTj1v2BBkHGMDUMxaHf5uuUbdYxouBrkdbpuaDWz2qj3yFPdY1zdHekyx1zU0hYHpEXB+RdDKmH7V498AiWKTl1ujfnPN0CKkk/QyFB7yyzJ0FZZMRXgRa7UQL3I8Rt1g69PMWse1M7IzSFyUzoqIBVxKhCMlJfrI9f0DPPmkMmcuavUk3x0iZJoozgusGcXd3MiP+IJlqcVIINMF9uQu7jlBCeV/XftTTnGa2Oc9xb9w2NI6ow8ogqVrw5EMwrZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1EwF3dWTL0MX6SmtFQiAmpRVnHDqkEE3wsgsVt2lB4=;
 b=WTP7bkwj7cIxK6jLaj9NIuQESzlZICYvSq88Daynmik5PZvIqr4XXAGJ6FlfqcKbfLY/QV4c618OKlkf9VLpykkuxDIesaUrNii5V3YZ0OBRBFnwmKhvfpijvT4fX0sanm17rMOT+l3cyNMMJkaCGhY0ApsF7WfBDVTsWx0DdD7vijG88JAf8n52TBXf277bAPeGwP3xd/AqgLPwCg1QPhgIpH8h2Dsdq1TdYcUsfW4uBM3b/ui5GJf0QWaphkHiiVE8NcL+jI7TrtPS/HJ+a8p8m7Qmt+Io7tArWgVwN2GgQuRLTYpwyd8HsrURU1zdoGNkKDRHDaVDfLQKExe6dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB7423.namprd11.prod.outlook.com (2603:10b6:510:282::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.31; Fri, 2 Feb
 2024 13:02:45 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 13:02:44 +0000
Message-ID: <73e1f706-733e-4a2d-8897-78dd8f5905cd@intel.com>
Date: Fri, 2 Feb 2024 14:01:41 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steven Zou <steven.zou@intel.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
 <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
 <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com> <ZbznU+j2b4OIcDgb@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZbznU+j2b4OIcDgb@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR08CA0245.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB7423:EE_
X-MS-Office365-Filtering-Correlation-Id: 0134beba-5022-4525-ea54-08dc23ef3f57
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S2CaygF563KsQphYn6WUwFOcobsERFXn/Gd7rLKdT05gtTA64k4bba4e2LtYOxnJSdWnd2xXBZPPPOJko3F1C3vUsx9YHfiWarLaVPfWvaDuPbYZw62E9D2ziOyF1UfctMyujknmXLwVlTDCg/s+TD7LN1X/75himXKqeo60QKUGbPufL4pe3GII8OhJE8/eNd8CciwZ/60eTOujTrLegVOBA/wx0xUAbV0O4cMoncN2Wjn3wAtm+TyXKOx7OCxPCsaneRN9JfwnmqGRE8QFA24Ejr99vEkLU7kSfoTk36nGd/ukt3P1v3hc6rRiVIKW/ZsAoQ5u9wTqQCe7qjeyCGF0LJ750Gn5zTvd08YXaxvQZORsaIzTJXUEHifYLQUqmBAcE+ckR2c9Sqts/lx7455BcTRjSKYy6UiSsJhLYQoPlkGI61XpV/uFoSXAhaI3ZOGpBi0uAS5VDSTCTbAm4GxpqoOSSqqlE+ta7NmxT/T1Og19xEijwBxi7aqxw1tDvKlmdzSTsNYDtqOHsddO1yafXzJWax8hQHNZahK7jcFdTSFqF2N+3s8ka8/cWixKQtT4nA+2MQ9pKaaGkIPZYsr3kIpRh/DubbbEHCMiC/4DC3eH1AoxZLQWLGsJ+bjLQwWRC8bATbNOgrNVawsQVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(366004)(39860400002)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(53546011)(6506007)(82960400001)(31686004)(38100700002)(66899024)(26005)(6512007)(8676002)(2906002)(37006003)(54906003)(86362001)(5660300002)(8936002)(6636002)(316002)(36756003)(6862004)(4326008)(6666004)(66946007)(66556008)(66476007)(31696002)(6486002)(966005)(2616005)(41300700001)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTN6eVJGRlJYYWdzLzdOMThZN3FzY1h3L2x3b2YxYUFjN3BGdWZpaE1Fd0ta?=
 =?utf-8?B?SGlMd2dWVVZOZzNSNE9OOUhyT2JVdGZ0NHFxb0c3UEp0NzRmcTRWSXVqdGhl?=
 =?utf-8?B?NjVuTTJyS0diNFBvVEFBVDUwOGdka3lhUmhuVDZnMlZwQkRzaVY5MlI1eCtQ?=
 =?utf-8?B?NVpCdTkycFZCQm9ZOGt0S2orbXd6bVdxK1BJOVVHdnZYbXl4NzYzeUNqNk13?=
 =?utf-8?B?SENDVHRKRUpkTElnZCtCeGd4eXArRVlNV2lTZDFIZi9YUXV6NHpiRjdBanly?=
 =?utf-8?B?RXRTdEtRQmhxck9vZ1hxeno5UDVHMFluSjIzOENRNVdDYWlZVWZoR2VBWmdz?=
 =?utf-8?B?dHlkS2xGN3gxUXVpcndieU5jWjA1dy94Q1pId2RaRGxnd0Jma0VFKzRvQmpQ?=
 =?utf-8?B?Z0kvNTRUdGl2aVRqREtTQmh6VVhCQzFyNWFCeDBsZnRpbGcwa1VuOWVneXE3?=
 =?utf-8?B?WllsZEJkQlQzTy95SW5ZaCtCa2Z2R0ZzczR3SzJ5RWg4Y0tYekY1OXZmRVls?=
 =?utf-8?B?NE5tSmpyZ1FucDZFZlZPRWlKL0FWaHJ3Tm4ySm1ESE92MS94MENvbjljV0JF?=
 =?utf-8?B?VkhBeFJiUEdEZ0dBOElOdWdVVFFwMVI2bFZOaFBTNFplVTVZV3Z3eTRzSHhO?=
 =?utf-8?B?b3JvL29QcWR5Y3lwa21KMkYxWFF1QVZXNXJlamJtWElSY3YzU1FCbURYVkFy?=
 =?utf-8?B?NzVqa0c4TUFEVlBzSGhkN3dva2IzQ0R0MnJ0OXY5S3RVRVU5RlpXa01ESGxz?=
 =?utf-8?B?TzZBUEI4MGh6UVBKZnJ1Q2tOdzQ5Y3kyMG1zTmtqNjZEdmZUc3hYUGZvZ0hP?=
 =?utf-8?B?YTlqME1vWnZXL0tIcDRFaXpPa3R0c0EvMXZpNkpZQWZMU0NqSGdOb3IrVWVY?=
 =?utf-8?B?aHdwZndXUk5IaTZMSGFNMTIvamdiVlNpR3JDKzg4UTJvWDJlSkZDTnliN1pZ?=
 =?utf-8?B?OHlwZFMvdmtDNVREbElnNHlnanZUcy8yZC9uMUpwajdvUE1qcCt0ZjVXdUdB?=
 =?utf-8?B?SkYzTSs2dml2bUdDNGZYemVJcGdyZ1c3TFNkMkVwck4vMlR1VlRLV0xkK1Nv?=
 =?utf-8?B?VDVPZDlvSndLb0YrRVdnYlVIWE1jejJReWdvNHpWSmZYSmF3czFEOVphQlB2?=
 =?utf-8?B?NWNkcjNrTGxaMm8xMGlZalhWVFRxMHZiTGQ5U2U1aG5KaGVmQi9lMmtvcWlP?=
 =?utf-8?B?Sno4bGxPdVpWQjY1SnpIMDdNY1hMTFlwdXFCSk9kN0Z4MWk1NFJHREZGYVB0?=
 =?utf-8?B?UU5YN2V5U1ljOVZIUWkwc3dXcWxLZkxJaExBKzJJQ2oxZEFDdzVVdC83VHNP?=
 =?utf-8?B?MFlWNFRNcHRZeWFiZjFhTmNMMytyMTQ3clRFWms1TzlZekJWalkycFlqOTRu?=
 =?utf-8?B?eGhqTEhMTFZaS2Q1RFFaMG4xakdtZkt6cU5hT21NMzhnd2g3enBMcUQ1NWll?=
 =?utf-8?B?czh0dU9QTll0Y2tDMDZMTC9wNEwxUElleERsU200SG42NTVlMG01SnF4MG9m?=
 =?utf-8?B?cFB0UzFJYkphZnlMWnpHWCs1Rks3NEZMREx0eCtVdDlwa3o1dGxya2laQWxm?=
 =?utf-8?B?QUZrRmZsaFpzU2FKM3VKb2dPK2JXdjNDaUFZUi9JSzN5eWpUNXQyV1pHNmpC?=
 =?utf-8?B?RXZORGhJZW1uR3BNQjd3RHdHVndwZlFBUkRBLzRPOEc1eUppUHBUL2lGTjVD?=
 =?utf-8?B?NGtlSDA5dEFDdG1KRDZweFQvbTZqWDNVbVJKTFJpMUdPcm9UOU5PbXpFYVQr?=
 =?utf-8?B?VnV0ZVQ1ZytSeU5UR2QwbXJUUjREVmpYNmhrSmh3TVEwTHJwamNPYzRCTHpW?=
 =?utf-8?B?VnFlMFNjTlp1TUhzU20xTnhZRXppS3NPallQbVdnUHJ0M2VZNldmN3daWFE1?=
 =?utf-8?B?SE5JZENTb3l2cC9sYldkTkR3b1RQY3kvcndQVzJBM2Y4aURjdGFteVN1cFM5?=
 =?utf-8?B?TTQ4TXczVEROM25BRHlRUGtZemJhV3lNQmhOWjBJRmJoQmd6c1RLb3prREdp?=
 =?utf-8?B?SC92bE9vcFh6d09OQXZJZUh5bWIyL1dmaEhCeW5xWFZYTzE1QmNJWHg3cStm?=
 =?utf-8?B?UEcvbGRrYmVMdlY2eHFIRWlyYTg1WnpFYVVWb3FtRkJuRGJ3c2dLcG05YXA3?=
 =?utf-8?B?UHZKcGJ6NlRETGxuV1F0aXdzVGo2MG1vL0N5SlIxQ2JHRGdINHdIbHlkM2d5?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0134beba-5022-4525-ea54-08dc23ef3f57
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 13:02:44.7604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5REMoOBPUsZC6S2PZPXRGyiGD/p+HQvUpqQDZie91VvXuS4ykeO19QQuCqmsMO/QVRgvx6Y5b2oB9kPTyq3VMuZ/sQVVrUZVzIQK0l7z9pA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7423
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706878985; x=1738414985;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DuIvweluAwdAXR0l+lQX8siKxFAYcj8FVDd5+VL9Ko0=;
 b=hdCO8swTXMFfMcIZN38ZAao00rZi2WCjHSf42wWB883w7eyxzCRihBR9
 KFuO8LxX1vYEDsQWeYUS/NvdHIXYm45YMtozupz8/OaJsuJRz0+ZnaMAW
 RT5LEmVrABS8rulUPpsD1GFIRVWRzh7WWMq4JYaOX7vcxbXvQ3HD96U+y
 +2kLCt3Izfaq2BSqYLZJPWwCapjTMCjUfTDwIotHtugax+Hi2J3ud9WWg
 ji1FteH6CxlAroekwWB5H9yHdnfp0/dWRhy4p7orFMlcUQzeTLrOKx96G
 J9Mm7BTl+pg4Nm8hwe4AL7f3WRNRL5xS/hlfe3PzFIv7Lu68QNdn+zige
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hdCO8swT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Jiri Pirko <jiri@resnulli.us>, Daniel Machon <daniel.machon@microchip.com>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Dave
 Ertman <david.m.ertman@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 2 Feb 2024 14:00:03 +0100

> On Fri, Feb 02, 2024 at 01:40:18PM +0100, Alexander Lobakin wrote:
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Date: Fri, 2 Feb 2024 13:39:28 +0100
>>
>>> From: Michal Schmidt <mschmidt@redhat.com>
>>> Date: Thu, 1 Feb 2024 19:40:17 +0100
>>>
>>>> On 1/31/24 17:59, Alexander Lobakin wrote:
>>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>>> Date: Wed, 31 Jan 2024 13:17:44 +0100
>>>>>
>>>>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>> index 2a25323105e5..d4848f6fe919 100644
>>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw
>>>>>>> *hw, u16 *rid,
>>>>>>>     new_rcp->content.act_ctrl_fwd_priority = prio;
>>>>>>>     new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>>>>>>     new_rcp->recipe_indx = *rid;
>>>>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>>>>>> -            ICE_MAX_NUM_RECIPES);
>>>>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>>>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>>>>>
>>>>>> Looks like there might be another incorrect bitmap usage for this in
>>>>>> ice_add_sw_recipe(). Care to fix it there as well?
>>>>>
>>>>> Those are already fixed in one switchdev series and will be sent to IWL
>>>>> soon.
>>>>> I believe this patch would also make no sense after it's sent.
>>>>
>>>> Hi Alexander,
>>>> When will the series be sent?
>>>> The bug causes a kernel panic. Will the series target net.git?
>>>
>>> The global fix is here: [0]
>>> It's targeting net-next.
>>>
>>> I don't know what the best way here would be. Target net instead or pick
>>> your fix to net and then fix it properly in net-next?
>>
>> Sorry, forgot to paste the link :clownface:
> 
> IMHO 1/2 should go to net. Then you would have to wait for it to got
> accepted and get merged to -next and then you come back with 2/2. You know
> the deal.

Agree!

Hi Steve,

Could you please send the first patch from your series to net instead of
net-next?

(and add "Fixes:" tag with the blamed commit)

> 
>>
>> [0]
>> https://lore.kernel.org/intel-wired-lan/20240130025146.30265-2-steven.zou@intel.com
>>
>> Thanks,
>> Olek

Thanks,
Olek
