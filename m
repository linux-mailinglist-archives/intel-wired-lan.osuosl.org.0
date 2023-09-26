Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6957AEA1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 12:13:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E369416AE;
	Tue, 26 Sep 2023 10:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E369416AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695723213;
	bh=I7B9/jyQX1/zA9dE46uuhjhlKOiLkgRNzuT2xekGuk4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A8gNPNWtmgSSQMF84J2Odmx3cnTg4L8QlbOfb5yMzNKh5RqlwAC09Grxay+Ia+IrH
	 Rvh4OUBasa0SQ0En+tTHwTOZsrEDWFrgQp9TrCwZVV5lvdHhWIVEra48IP7qqQw+bz
	 eADEq5CY5TT2KZ+b5HGTrSC3ZmV642L1keawgbz1/FpktoJqsbeGTpvRXZFWkRENaC
	 m+g62ULH1wqAms8N8P/IEzWHKGcEr/7C/I4IMMfgMrj9KtC2ZvtIj+sexkEsxYYFwr
	 BxFwrs3gi4KWU0dWKkDhc2qhPXpWhW2eIAlogCWUp9+gaSUtu548C8zJx1LeBty+62
	 29Dl3HOP8uzxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlGiX1D2AA-a; Tue, 26 Sep 2023 10:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DAEF41690;
	Tue, 26 Sep 2023 10:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DAEF41690
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 639251BF30B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 10:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3692B40C6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 10:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3692B40C6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phPSTzEgGv3c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 10:13:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E3E040AF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 10:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E3E040AF4
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="385381314"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="385381314"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 03:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="814415648"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="814415648"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 03:13:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 03:13:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 03:13:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 03:13:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 03:13:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ge6olcFDru1UX5uUxcf8wPttXAK4rgqfszN5D4kpgfr9HILZhwxvBCo/kMnwf09j5lFg7pgQoAaj2eV5IjyNeav7suLPbufFnroYloTDi3KsAaEYYvU/rnYu7/IpadBHRz4m9nAqe8OHp2JCg9CfE69VulASLHcAMxBiZ7CDczKQVbjYJsfacDJ+vk6BUUxZjoIYBDsuOo1YsEYC2dVr95qGf0fa/3yUr9O+Cfs/H1EUO4H/AW3NS8cX+EjtGdTxP5wZaGOQ9l301ISa5MnlDJtJy2I0TTwMo7KLC9m8zOuM+lqwxoy+J5kcSISyXtYuS+RUXhxTo65rr3iR83a/UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JU4g0ynuK7qijHCqRItoVjDk24gzoE092B5vXlmAhb8=;
 b=n2VPNc6oKwHh7ld3VOGxvBK2gQFdgcxWGiJrvxITZhV7omx8z8LgUYooIlL0RDJ2EefLtP7vO7z4ie8SSUxi6P9yokXeMAttNDnez2PYyF+qkWHyvbk/5Ms8PtOC87L2ivUZNFIyncWAfzZ3jI+HzrELeebq8rDCBR2kddsORSSip2N4KpszYvD7DbxMltfVMDHgLIjr06st0Ou8W9zvbj7vzu4yGoG/IttGl1qReFozzell2O4Js2l60Osobt1v1/8fHwsfvJbYIuDhi3mgQQPGef8N4lgcPfdDmvuT+//jRhSqGwS+Gbqjfqy1wqdaMSQc2D+vTiRjnxRVBW5Big==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA2PR11MB4843.namprd11.prod.outlook.com (2603:10b6:806:fb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 10:13:20 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 10:13:20 +0000
Message-ID: <316bb887-6445-9a56-3082-db0f1f33baea@intel.com>
Date: Tue, 26 Sep 2023 12:13:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Aniruddha Paul <aniruddha.paul@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230926074545.1725910-1-aniruddha.paul@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230926074545.1725910-1-aniruddha.paul@intel.com>
X-ClientProxiedBy: FR3P281CA0024.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::15) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA2PR11MB4843:EE_
X-MS-Office365-Filtering-Correlation-Id: 3af713ab-060e-47d5-8707-08dbbe793588
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z/Xh8/3kqAUjTOg52V5wKpLhiu23wsZ+2KgyY9d8Acb8i8ArYW1ebD6r/Gt7D/54cT9XF+kqovfMaagsWd0QOYblm4UeDAJQY1D/h11iO1pyWfQpo1eQDLq/MhLijbW0R7IM0oxX7K7SKsDAodo08tweEwQ6uZ8EmBkhm6gBKk/ngh3MSG2VBSVVBtMJsfmrYMqrG2niw0hZo0Up31mCn3MQPOhq9tabZx2RTOGi+26/8DcMIUk8c1HZx02kHepn5tNsfxMsi9b4yJYFwzBTUKbJ4HujuLHGoS16roxiU2/1hgiHTYm108cZytz0+sIrHZ5vj9o8sU75qyC4CeLpUfdRw2LAHUo6k3K9zZWtl+ukiG8g9NBA84MCT1oU+XhAdxL84F4dzAx644ZkmNQCofM6RefC7ylUubT6OSlAK/hTgJ8GvxDQTecbtb+b+GMkA0TR7CczkUbk5plKfnNm7jfIai1BbnVWL+aMCAPb8U3ni6+Vv6yc+0qI6X6IDMjAWcPG/jt2mAACJ0kGKTKQ4wp03kIycpBfF4chmaxYJeeFI93B9hO6LWlIMcviu4ED91An9Ksk2xCCI4kl3TYJSBHbUL/tW8gnmRWY1Qnt3qOLXgqJGEvVCw31/dawX5yUX0fH67YxZzmIAv96x15RaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(346002)(136003)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(53546011)(6486002)(6512007)(6666004)(6506007)(478600001)(5660300002)(36756003)(26005)(38100700002)(41300700001)(2616005)(107886003)(66556008)(66476007)(66946007)(316002)(31696002)(86362001)(82960400001)(2906002)(83380400001)(8936002)(4326008)(31686004)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dER5WmJ5Z3AwWDFldmhRK1U2MXlXN1RXd05NRzBFR2FMeDg5NVRSWkdidXEy?=
 =?utf-8?B?T2Myend1RVl0cEY0bCt4VDZvRjI4dlZtUldPN3lqVUhBcjJOWkJndUV5K2g1?=
 =?utf-8?B?WGJyWkhoOEZjRkdDTXVnclJGeEZCTjFRMkR3ZVEydjlWaTRSbnJQOTh1THVu?=
 =?utf-8?B?SEZvVFA4M0c3SFNSVDkwTFNORThrQUJiNWdDeW5JeCtBM0ZBM1VKRzhoTEtG?=
 =?utf-8?B?VkhoY25hTHoxNmY0c2Jhc2Q4UWdOekVzYnJrNmRBWStwU0YxTmhRNTlKK1h4?=
 =?utf-8?B?OHZjOHBUSFZYTDVoYWcyNjZ1Znc0ZngwVUtMaTdCbnEreFZiYS9lV0M0WjJa?=
 =?utf-8?B?RlF2eHpvMmFRTUIyS01HQ25rdkhMU0FWRklIeGt5NXRhTGJIRVg3MGhGcUd1?=
 =?utf-8?B?aFBrenhDVldhais3cUhQc1g5elcyWXhubUtMRnBoQzBZMVFpRmkyUGpPbnlD?=
 =?utf-8?B?WVpuL01RMHcrTC9HendkakZ4cndiYWlhc0Z6bHdncmRKYS95ZFZaS0dKcFVj?=
 =?utf-8?B?SHl2a3BCdTlDYnRiZno4NU9WR3Bka1pqMEhmcFJrZDB4QW90clZZN3czS3hO?=
 =?utf-8?B?ZzFLVWdXWlExbWRHaitpeWEweE9VNHRwV1NoNEgwL3JOSGJ6RHhCZzNCTlpm?=
 =?utf-8?B?Y1pIZHptMVVhd3F5bEJGdWRmT0g1WEREeHo2d0QyUk1RNjZlaFNUYmE3Z2Y3?=
 =?utf-8?B?NW1zZkdWaXNYYkw2N0VSSzFsUm16WjF0UHFIdit2S0FVQWhVcXVZRE1WVkQ0?=
 =?utf-8?B?N2tmbjhRZndiODJJRSthbUVLUkhCSVlUVnZxRlJwcGREUFFpUXFpeFhKL3Fm?=
 =?utf-8?B?MVJIb1FqOExodFllMG9nR2ZYS2R2ZEtJSkdENG1GeUpZQXY4OFJCVko4bWI2?=
 =?utf-8?B?eUFGL2psM2p3QXQzNlpGZjVoazNncVhyQktmaXZmU0pwdk1qU01ma3ovdFgy?=
 =?utf-8?B?RXBObFZqMVFKUHFlUWZYQlVaTTlXVUx1SnZRa084emhBOVBvMFdOSkllSERo?=
 =?utf-8?B?N3QvWHg5dHVNaEJyYWtqK3IrUEZKcGFWOVYrYTI2aUNXVEpEd2RYVjFMQkJW?=
 =?utf-8?B?WmtrSzkyZjA3UFJmV2lKdTZkT0huU0orT3pQMjdZOUdBVU4yazdtaXY5ZGVz?=
 =?utf-8?B?UElvL09pZXduVkczZi85WjJRVlgzSmY1bE9GdnJkWTRqbUNqRkNIMDBhayta?=
 =?utf-8?B?MWN3QkNFNW9XTXRocmhZNU1JazFkdGJCU3hkZkI1a0NRWGVnV2tSeSsrRUZM?=
 =?utf-8?B?TnpXR2dTUHp5U2NDSDI3NEl2SWEwUTFzOW41R1M4di93emlNZHhIZWRaMjVB?=
 =?utf-8?B?cFVhQVZSb3FJblVvbVpOWklmbjhMbjVzc2dqZlFNVzRpSVp2VEJOM2l5OEJZ?=
 =?utf-8?B?QjB3UzllVmVNOUJXYjhjbU9iMkQ1YmpmeDhsSHkxUnk1bGhGeG00QnZaY2lS?=
 =?utf-8?B?RGRGSGY4NGpCaldZSGZwOXp0L25zdllMN2Q0aE43U25KdmtGbmo2MG00VVpq?=
 =?utf-8?B?dmlCWk45TXdhWU5MTkxGNEp4ajNWUGxPZnhNT0tmZHlRQ0lXTWp2eVVaOVlR?=
 =?utf-8?B?dnVaWEdVbkd4MFpvS0ovcTNvY3hPUEVCVkVtMnhzR3U5R2doRHRqZmhKeTQz?=
 =?utf-8?B?ZThEOEtBUWxFWlhhVEZGcFF1S1N0dzczcXZjeHdZYlVpcWRKdnBCUHJmNStJ?=
 =?utf-8?B?ai9UY3JJYS9iRDRuVkl6NmtSVDNBNkY0VHhWU2hWd0xFN2EycWY2ZTVoWEtw?=
 =?utf-8?B?L1hGWjB1MmlWNERDdlM1cVlQWXpaancvSTJZYzJ0OVNRL1Z5NTBrV0N5aWVj?=
 =?utf-8?B?aTZTekRXVWlENE9oNFlBcGY0S1Y1T1haS05iaXpTYWxoK3JndGNhL0FwZEg0?=
 =?utf-8?B?cGpRUjU2eWNxTE1EZnZPQmkzUmJZU1J2bWJKUlppYWUzWTludk56Z0dkU0dl?=
 =?utf-8?B?T0V3OVRVb2g5a2pidlJkeTNuOHR5SHFMa2ZXdXJvZm9ueU1raUs5WVFLd3Rh?=
 =?utf-8?B?Y3p5S2tPaXg3M2NtWjdLUFFRRUdqaDk4SjNOOVFkNXljUTFLdXFBMFRPa2xi?=
 =?utf-8?B?Z2lFa1QrV1Q3dHpSZUNTUWJuN3Y3OXpob0piUlNMT0VqMEdrZGNOd28wOVJC?=
 =?utf-8?B?UEdiWTgyV1BkU09YdlpnbEtmOGpNeDE0djh6d1VBRjdzUFBCQ0R5WHc1TExs?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af713ab-060e-47d5-8707-08dbbe793588
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 10:13:20.4281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vRP9JXmbnmqnE7EyI1jNdhH6CNqT/bBt9Rm66GynjQ6udqgP/SEF7yaVf8DR6NYuRM+p+J+YU1hLiHlIVsEpcynENBV1moua6FJOY/TxaOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4843
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695723205; x=1727259205;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8p8FGwgschQgCaCk4fxL16W5/xV20rmCtplzN8NR/+o=;
 b=boLBZ4YZLJla5ystk5odAv1h/6+WW1L6BeV5B5ON+N4KWQPBO6bfCqyM
 TrBHad32h7sTmQbWT0s82rAUWN8/ycRKnF8lgbKsscadDk7zjpucr3Yc5
 WFQeG8psnM0DsH9soOH2QE7rEppfIneSdh1sunsziJ9VpSKd1ju/xSoJZ
 O0cdlz2HEgR2U4gqB+9/7HNS+AFowVmy+DMN69eGlMIYcjbW4c9VoA27o
 50mnnTg2/2mCAwgGrQnOibdqZY8wCEfLdaJ8TYOJ7hQFYc+wS01Y/+l3Z
 NIQwHGUc+yD0KZx8jbll2a0Iw+W8u5q5mmAa/iHW4wAif1iGJBjwoZSNy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=boLBZ4YZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: Fix VF-VF filter
 rules in switchdev mode
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
Cc: marcin.szycik@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/26/23 09:45, Aniruddha Paul wrote:
> Any packet leaving VSI i.e VF's VSI is considered as
> egress traffic by HW, thus failing to match the added
> rule.
> 
> Mark the direction for redirect rules as below:
> 1. VF-VF - Egress
> 2. Uplink-VF - Ingress
> 3. VF-Uplink - Egress
> 4. Link_Partner-Uplink - Ingress
> 5. Link_Partner-VF - Ingress
> 
> Fixes: 0960a27bd479 ("ice: Add direction metadata")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aniruddha Paul <aniruddha.paul@intel.com>

You have forgot to apply Wojciech Drewek's Reviewed-by (was on e1000' v2 
IIRC),
and for public submissions we should CC netdev.

public versions should start at v1 :)
(it would be best to resend it tommorow, after 24h from first submission)

please

> ---
>   drivers/net/ethernet/intel/ice/ice_tc_lib.c | 90 ++++++++++++++-------
>   1 file changed, 62 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 37b54db91df2..0e75fc6b3c06 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -630,32 +630,61 @@ bool ice_is_tunnel_supported(struct net_device *dev)
>   	return ice_tc_tun_get_type(dev) != TNL_LAST;
>   }
>   
> -static int
> -ice_eswitch_tc_parse_action(struct ice_tc_flower_fltr *fltr,
> -			    struct flow_action_entry *act)
> +static bool ice_tc_is_dev_uplink(struct net_device *dev)
> +{
> +	return netif_is_ice(dev) || ice_is_tunnel_supported(dev);
> +}
> +
> +static int ice_tc_setup_redirect_action(struct net_device *filter_dev,
> +					struct ice_tc_flower_fltr *fltr,
> +					struct net_device *target_dev)
>   {
>   	struct ice_repr *repr;
>   
> +	fltr->action.fltr_act = ICE_FWD_TO_VSI;
> +
> +	if (ice_is_port_repr_netdev(filter_dev) &&
> +	    ice_is_port_repr_netdev(target_dev)) {
> +		repr = ice_netdev_to_repr(target_dev);
> +
> +		fltr->dest_vsi = repr->src_vsi;
> +		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
> +	} else if (ice_is_port_repr_netdev(filter_dev) &&
> +		   ice_tc_is_dev_uplink(target_dev)) {
> +		repr = ice_netdev_to_repr(filter_dev);
> +
> +		fltr->dest_vsi = repr->src_vsi->back->switchdev.uplink_vsi;
> +		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
> +	} else if (ice_tc_is_dev_uplink(filter_dev) &&
> +		   ice_is_port_repr_netdev(target_dev)) {
> +		repr = ice_netdev_to_repr(target_dev);
> +
> +		fltr->dest_vsi = repr->src_vsi;
> +		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
> +	} else {
> +		NL_SET_ERR_MSG_MOD(fltr->extack,
> +				   "Unsupported netdevice in switchdev mode");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
> +				       struct ice_tc_flower_fltr *fltr,
> +				       struct flow_action_entry *act)
> +{
> +	int err;
> +
>   	switch (act->id) {
>   	case FLOW_ACTION_DROP:
>   		fltr->action.fltr_act = ICE_DROP_PACKET;
>   		break;
>   
>   	case FLOW_ACTION_REDIRECT:
> -		fltr->action.fltr_act = ICE_FWD_TO_VSI;
> -
> -		if (ice_is_port_repr_netdev(act->dev)) {
> -			repr = ice_netdev_to_repr(act->dev);
> -
> -			fltr->dest_vsi = repr->src_vsi;
> -			fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
> -		} else if (netif_is_ice(act->dev) ||
> -			   ice_is_tunnel_supported(act->dev)) {
> -			fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
> -		} else {
> -			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported netdevice in switchdev mode");
> -			return -EINVAL;
> -		}
> +		err = ice_tc_setup_redirect_action(filter_dev, fltr, act->dev);
> +		if (err)
> +			return err;
>   
>   		break;
>   
> @@ -696,10 +725,6 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
>   		goto exit;
>   	}
>   
> -	/* egress traffic is always redirect to uplink */
> -	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
> -		fltr->dest_vsi = vsi->back->switchdev.uplink_vsi;
> -
>   	rule_info.sw_act.fltr_act = fltr->action.fltr_act;
>   	if (fltr->action.fltr_act != ICE_DROP_PACKET)
>   		rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
> @@ -713,13 +738,21 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
>   	rule_info.flags_info.act_valid = true;
>   
>   	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
> +		/* Uplink to VF */
>   		rule_info.sw_act.flag |= ICE_FLTR_RX;
>   		rule_info.sw_act.src = hw->pf_id;
>   		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
> -	} else {
> +	} else if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
> +		   fltr->dest_vsi == vsi->back->switchdev.uplink_vsi) {
> +		/* VF to Uplink */
>   		rule_info.sw_act.flag |= ICE_FLTR_TX;
>   		rule_info.sw_act.src = vsi->idx;
>   		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
> +	} else {
> +		/* VF to VF */
> +		rule_info.sw_act.flag |= ICE_FLTR_TX;
> +		rule_info.sw_act.src = vsi->idx;
> +		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
>   	}
>   
>   	/* specify the cookie as filter_rule_id */
> @@ -1745,16 +1778,17 @@ ice_tc_parse_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr,
>   
>   /**
>    * ice_parse_tc_flower_actions - Parse the actions for a TC filter
> + * @filter_dev: Pointer to device on which filter is being added
>    * @vsi: Pointer to VSI
>    * @cls_flower: Pointer to TC flower offload structure
>    * @fltr: Pointer to TC flower filter structure
>    *
>    * Parse the actions for a TC filter
>    */
> -static int
> -ice_parse_tc_flower_actions(struct ice_vsi *vsi,
> -			    struct flow_cls_offload *cls_flower,
> -			    struct ice_tc_flower_fltr *fltr)
> +static int ice_parse_tc_flower_actions(struct net_device *filter_dev,
> +				       struct ice_vsi *vsi,
> +				       struct flow_cls_offload *cls_flower,
> +				       struct ice_tc_flower_fltr *fltr)
>   {
>   	struct flow_rule *rule = flow_cls_offload_flow_rule(cls_flower);
>   	struct flow_action *flow_action = &rule->action;
> @@ -1769,7 +1803,7 @@ ice_parse_tc_flower_actions(struct ice_vsi *vsi,
>   
>   	flow_action_for_each(i, act, flow_action) {
>   		if (ice_is_eswitch_mode_switchdev(vsi->back))
> -			err = ice_eswitch_tc_parse_action(fltr, act);
> +			err = ice_eswitch_tc_parse_action(filter_dev, fltr, act);
>   		else
>   			err = ice_tc_parse_action(vsi, fltr, act);
>   		if (err)
> @@ -1856,7 +1890,7 @@ ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
>   	if (err < 0)
>   		goto err;
>   
> -	err = ice_parse_tc_flower_actions(vsi, f, fltr);
> +	err = ice_parse_tc_flower_actions(netdev, vsi, f, fltr);
>   	if (err < 0)
>   		goto err;
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
