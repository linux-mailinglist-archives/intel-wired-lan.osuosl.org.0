Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CE477DFA1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 12:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E34E612F0;
	Wed, 16 Aug 2023 10:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E34E612F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692183299;
	bh=hqMyaa3h4dod+J0sfN6meLAlKiatrU4AWY/6znvbQ5Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FxrS5XUfzNmyD+Bk2FM3Ois1VgPm3mTBa2t4mtl5DAI7mpa+Cyw8U1Y9mjvmbCfzZ
	 3CdnHdxlNDsaubKTWH70dp1jR4e5nuul7R6ec4Xutdyb2oupe1AEnAbZnBCFSuCVAD
	 3+ZveU091tQ+I9C8pObtsBWcBSD+7fDB4cU0pwarxzfunzCLU7SfoK8Z3PN4GQcDNc
	 0vgzL3soqQDdx2ZofEVTGFd803WABCIJ9GL+H+LYOXKoJyeoweJWlpbMPyxQtmDWaU
	 F21PrzS2Too4b3dmgSh4rkYIqkb9HbwqY8myxbI2GWDTphoaCD+aQHPZedsFDlu3R8
	 +9xzeLwEQnoWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AGSQ0liO-FQx; Wed, 16 Aug 2023 10:54:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4095612B4;
	Wed, 16 Aug 2023 10:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4095612B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0E901BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 10:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B277941F4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 10:54:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B277941F4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITffhf61RfZz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 10:54:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15BE341F4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 10:54:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15BE341F4D
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371408765"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="371408765"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064791696"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="1064791696"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2023 03:54:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 03:54:49 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 03:54:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 03:54:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 03:54:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmvnCZ9k7XWAnqm1qfY6NaQN82bawPcL0Xws2BZMupbxECe5y7Diry7cEjvuBYyTiFEZlFdpIFO5AGAjZ8yeqc7KZj3kceh8fFf7VMHOV7FDL9a4DsW1Z91ze3eXZaBjU1nFrgu7EaLlZr0UL0TkTWZz8OeVCCi1WhS/BB9HpuMoY91Z9zmgIU3ZpF37iLNG1ngAMp4iRff4oAwV3H4tPJPxzCL3Gurd1NMPrQY6pCgEc8DUMLuvB2Eje1mwEjNqwoz/YhvCJq4ooCGMwoq/2PMoufsJR68NQ7W9BbHsDa8y4f+34vFmPQnPywOJdK9ItlXbErGom5a6eBFhvMe/HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1cbHMOR7rwqGLS0/hCJfcKyEyxzKgb4f3VuxrMsC17I=;
 b=gCu2nPPL/z3eGQpZrJawVfU7anhPFe0Cj/axmY5SZynB+CUrHAjJIwvEntm+vfl+7G6M9Ue6sbt8tNsZFw48zKqHX9+Z5ovXRfF9rwKgcFmzPXAN+jV4NOxls55wILNb0IMjNZAImdClec3DX8VvMRmjHzqlXHK8x10G8nKOuAb7VfOklOvngmkgZXhtSiTQ1a9wn7Zj/ueQaOV7x/a5st22D8l78I8CovrBxtF3VrsX5eYB1kUYegBOpdsDGc7vXVVV94p6wUyawyug6fo8A9QTeabNU/su8jSE0p4WIH/cPXtqDIO0ykt5A3FqyqNkEbYtYXLnccWSVtDeFGxuqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW4PR11MB5909.namprd11.prod.outlook.com (2603:10b6:303:168::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 10:54:33 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 10:54:33 +0000
Message-ID: <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
Date: Wed, 16 Aug 2023 12:54:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
 <20230815223551.1238091-4-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230815223551.1238091-4-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR0P281CA0165.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::13) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW4PR11MB5909:EE_
X-MS-Office365-Filtering-Correlation-Id: 7df64059-0322-43cc-6611-08db9e472cb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8ZNMV4865DYmzaxFbBKwQPizqqQU0an5VPO5H7tsEfnevvvyMhR1CN06q4M5Vh8bD/mJBUaVqYtf+AkTIqE61qaV3AE4LQgFHABS22tWrG/kWR/xWUBOaQ7v/wNZnGSxIiHCQwExIF8/psMFhcm0apnOckTE65wPVlYHFQ6BHHhBnMHlY5aE9SjSJMOfWeSaw+SBsazUtaGts3xV3d+b2IxasnPYGpJ5nIIDhqgiYPpW9r6nKqw4fXz1CXC8LdoJsDF9X6dd7ui5bI9cjhe3N+SoY/tqkuIQl2wOvXSNvFMUV1zhQ97qs365AbCohK1LV+6FIf8Axwlg2h9atI4J6a5UwgKvKCfGy26pbp5rM2zZSKOcxoDcyejKYO1LN2o7ByQ96DTxtGU+b6+UBkWyB0ZIbUXlMBpww+oHJrlLJX1Z04H98/qEsZIx0db/ve9IvPm9fn/G9urgENst/cB8X3BYJSVGU0/DwJ3XhBD2w+RCNUjkZD95pIfexkWgiPZHKNTh1zrVds6fkMgWyiZNVZg+hdFKlGK5W8DNGaY5X3ioWYZN0H0OGcPbHvJwipd40RuBda+uXTB0onlDSllOAIs1oUlZ9IYQwSO45tMAVYzBLcPTyEWkaDirpf1FipqNnMzwp1iEHoLbiCnihwEhyQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(346002)(376002)(1800799009)(451199024)(186009)(316002)(54906003)(66946007)(110136005)(66476007)(66556008)(41300700001)(5660300002)(38100700002)(31686004)(8676002)(4326008)(8936002)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(6512007)(53546011)(107886003)(31696002)(6506007)(36756003)(6666004)(2616005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEEzZGlwS2lMbFZyV0pCRjk0RDhmdEJDNHZCekk3WjRLSmVYZUV0NEd3Yklw?=
 =?utf-8?B?Zi9abEw2M25aTEg3S2ZLb2wvZTZPQXd1NHY4djhTZHl6ek1rMkpsbGYwWUlI?=
 =?utf-8?B?VFF6L1NBeHc0NmxiWnl0OElEU0FQQVpXczRwUER4Mk9tb0ZuU0JCdVUzWHF6?=
 =?utf-8?B?Nk56Q0sySGR1TXBXK3ZtbDBtQ0t0WDVRMk5XbEFpcnk0R1Z0UmpMdXNYOC9r?=
 =?utf-8?B?bmM3MGF5Y1VxZFR1cmUwSGwwMGtzRHRPb3QxTjVZRXhveWNja2JORzNmUzI3?=
 =?utf-8?B?c05XRmhOSStmTTBLOFRaUnN2bnFWcHdYRWRQZFNVM0JJTWt4MTZGT0hweVRU?=
 =?utf-8?B?S1pwZkJkRkV0VzR4UmoxT2U4a2s5ZFMvN2ZwY2NKS01Sak41Ni9pc3pvYld3?=
 =?utf-8?B?WXlMTjQvRW4wcnRtUWc2d3JXUVpSY0FrU0RvTS9UbFNwQlk0T0hJR2pzSFlH?=
 =?utf-8?B?enR6eDh1ZTNkMktEMlhrN3ZxV3FNN3pIdjFVTUs1Rk5oSG1pQitLdFR2a21L?=
 =?utf-8?B?NHpyTjhMQXRsZGF4V1QzMVZmeHRUZzBZQ204R0Uzem91UkN2WmJPNEtWcEpG?=
 =?utf-8?B?RFRoNVQxNCsvTlNsM1BwT3BxRkRkVjBHTFY5WDlqRXNYTWgxYnp0NDV5S3ll?=
 =?utf-8?B?c3ZDd2Fyd1l2R0RYTVJNclVWY1dXNkpidmlhL1pOenI2S2hCUHNhVy8vYzRy?=
 =?utf-8?B?SUxZaXpTRHJyT1pybEVYeGJDTG93WkV0aUdCcEV0T0pJaGpsYnZwYmRNamJS?=
 =?utf-8?B?cXlZREFKK05xblQ1bGJGc2NvYXNlYnZjTEhremxSZEpHc1I0V0ErQ3ovRkRp?=
 =?utf-8?B?SEp3eDNHWWNOS29YWVFEckdXTVoxMjJXWVB3K1owTnBnSkJuUTJtc0pCWTR5?=
 =?utf-8?B?SnBLWHVhZTM1VlBOYmdVOWtaMFhlYjh1dk9yei9ZdWhzTkpveG44YkNxQWJo?=
 =?utf-8?B?RmhFeE82ZmxZTXhXbWdTMjdGVTA4YlNzcHNnelhHQUZPQndaS3NOSWhHOHJR?=
 =?utf-8?B?NWpKbUFqMkdGWWNPRTByMWJOcFhSZE11Z2p4WXVOMlNYV3pBTjFhY3UzeW5z?=
 =?utf-8?B?M2RQc0lDQm5wT0ZaUlVoUlE5aDM2TzNJd2NpT1dqZExsWklYUU9YV0hmMzI4?=
 =?utf-8?B?MmFSU201QUxZVm9xTEl5R2FwSHdONnpCczM2ZUs4a2RRMld6bXQyalNFZFE0?=
 =?utf-8?B?M0VjRzBvMHpjbFI0aFBhVklHdHBmdDA0RnNPbXlSbXR1enJ5dEJkZ1BtUllE?=
 =?utf-8?B?RWdEZndFS244MFpJVFRSY3VlOFZ1WmxjUG9OL2w1SVdvZlJJaFMyd1RKVEtn?=
 =?utf-8?B?SWQ4RFRYMlVZalF0dFFkR3g3c3FMTXlmQ3hJTDdDUFprVnBaWDlKbTNjbkE0?=
 =?utf-8?B?aWZteE1ZZ0dETENOdDBpVGZQeVZoSkZuSjBJYkM5MWxobUdiTHBqa2Q1ZG5X?=
 =?utf-8?B?dW1veFdRVng5S3BreWxpU2V1MHZZNnUzTXd3MVYxR1poTldEMzhZSVYzTngy?=
 =?utf-8?B?a0ZsNlMzT3VZSTJEVCtpS0RSWkUwSUkwOGd0QUpsQVpHVGlkRzg2MkFXazdH?=
 =?utf-8?B?WjJaOVVvNWVDNFFHYXN6VjBhYlZ0M0Y5b3pyZExScU1iQTZQNjFVaU5iVklR?=
 =?utf-8?B?VC82SUh4Z0RGeCtQTnViK2l6N2RHVTFpREZaQzdFLzlwOGlhUXUwTzNFRGlk?=
 =?utf-8?B?QlhaYzlSVWVTR2tYQWJFUW9VMUhyck1uZFpibksxT0NUT1F2cTdhTndicmFl?=
 =?utf-8?B?ODZic3R4a2lBOHJ5YndoNDVFZ3VZWVh6T3Z5NXFFdlZXanFtOEtZcnB5a0tI?=
 =?utf-8?B?TUxrZU1QYSt0WjFxK3lRRUVmUSttWGpVMSs5TTF4d2tpdHFnbEk1RjBhRVps?=
 =?utf-8?B?b0planJXNDFoVTRIZzVZdlVJbTIwMnNQK3pEcFN3Q3FIQy9pTkEzTkwzQXN1?=
 =?utf-8?B?dUU2VDJUL1IreUt4UFM1YnpxSEJLMjdqSjBHUUdZK0QwMytVaTZadzR1MlFv?=
 =?utf-8?B?QzhWak12MVIyZW9McmRiUnR1YkFTVXk4d0gvdWx0R3ZSQldHRHFIUXlFZmZJ?=
 =?utf-8?B?U01WM3lWMjhURmcvTVgwUnZMeVB5cXF1bVp3bHFmV0hOeXFxYS92YmFmRDl6?=
 =?utf-8?B?VWRzZFNPQ2ppaEdzN3N1ZnNDY2ZITlpSWTBwaFJibFZGNzF1QzZSWDM2V2VS?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7df64059-0322-43cc-6611-08db9e472cb3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 10:54:33.5411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEk7eDG60OYwddyJbl7OiUHBpKKUbDj9q7eokdplus5CcoRewwnM8QsX+w04xiaYniH0CDPuPhD9zP7gnT4YlGp8KvWexvB7BG+kURZUFok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5909
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692183291; x=1723719291;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sXMxi/DVin8NcaARp4vg/HX37J8C5i+ga1J2Y/DjjhI=;
 b=kJYKA+3L5kOaiqWcj9BLhmb2Ckz+t47fqOVxHBjicU/5AFDhB731onIe
 ZZBEZNCNuhgwKUayMtD4Y52DATigFN3txJkj3bUJai/AyFUVOJ9y3Axt0
 bK2vlGvTXuahLuDFh1zapO+Uz5EVPEO2dlvZV1UM9LLXCJPqjsBg1LkQq
 cDQz6sEUGeEIJ+P+CrN37ZMmAhcv7m7iFlGnmcx4rieIE0f9zFy2ls0rL
 lVFPe3gjZ7OqC5/2pesbgKsUgIPegRHwua35XsJ25riBOFTV6bbJ/J6Hc
 CxfXA03i0tiS/JOD2bY4qmkt6urUmfgwzfGqVZ3u4LPYfETd3A2+ygZ0q
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kJYKA+3L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/16/23 00:35, Jacob Keller wrote:
> Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
> E810-T based devices. In some cases, the SMA control access is not
> available in the netlist firmware component. In such a case, the driver
> will fail to setup the SMA pins. When this happens, the driver prints
> "Failed to configure E810-T SMA pin control" and forcibly disables all PTP
> pin configuration support.
> 
> This results in failure to use even the fixed pin capabilities of standard
> E810 devices, resulting in reduced functionality.
> 
> To avoid this, check the netlist for the SMA control module before enabling
> the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
> feature will not be enabled. In this case, the driver flow for enabling
> periodic outputs and external timestamps will fall back to the standard
> fixed pin configuration.
> 
> This allows supporting the software defined pins on a wider array of
> platforms.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Overall it's a nice series!

> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
>   drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
>   drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 16 +++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  1 +
>   6 files changed, 72 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 90616750e779..82c4daf0a825 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1367,6 +1367,7 @@ struct ice_aqc_link_topo_params {
>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE	6
>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
> +#define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
>   #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
>   #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
>   				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
> @@ -1403,8 +1404,9 @@ struct ice_aqc_link_topo_addr {
>   struct ice_aqc_get_link_topo {
>   	struct ice_aqc_link_topo_addr addr;
>   	u8 node_part_num;
> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
> +#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
>   	u8 rsvd[9];
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2652e4f5c4a2..9eeda3f5aa75 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2503,6 +2503,52 @@ bool ice_is_pf_c827(struct ice_hw *hw)
>   	return false;
>   }
>   
> +#define MAX_NETLIST_SIZE 10
> +/**
> + * ice_find_netlist_node
> + * @hw: pointer to the hw struct
> + * @node_type_ctx: type of netlist node to look for
> + * @node_part_number: node part number to look for
> + * @node_handle: output parameter if node found - optional
> + *
> + * Find and return the node handle for a given node type and part number in the
> + * netlist. When found 0 is returned, -ENOENT otherwise. If
> + * node_handle provided, it would be set to found node handle.
> + */
> +int
> +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
> +		      u16 *node_handle)
> +{
> +	struct ice_aqc_get_link_topo cmd;
> +	u8 rec_node_part_number;
> +	u16 rec_node_handle;

I see that you are using separate variable to 'do not touch' 
@node_handle param if it does not need to be updated.
But perhaps you could consider to just pass @node_handle in place of 
@rec_node_handle below, and have less code?
I do not see any non-null usage of the field anyway.

(rationale: our code is so self-similar that I needed to check wheater 
you are basing-of recent changes by Jan&Karol or re-doing them ;)
answer: we are fine here :)).

> +	u8 idx;
> +
> +	for (idx = 0; idx < MAX_NETLIST_SIZE; idx++) {
> +		int status;
> +
> +		memset(&cmd, 0, sizeof(cmd));
> +
> +		cmd.addr.topo_params.node_type_ctx =
> +			(node_type_ctx << ICE_AQC_LINK_TOPO_NODE_TYPE_S);

I would FIELD_PREP() here

and perhaps convert @cmd scope to inside the loop, that would enable = { 
.addr.topo_params = { ... } } declaration

> +		cmd.addr.topo_params.index = idx;
> +
> +		status = ice_aq_get_netlist_node(hw, &cmd,
> +						 &rec_node_part_number,
> +						 &rec_node_handle);
> +		if (status)
> +			return status;
> +
> +		if (rec_node_part_number == node_part_number) {
> +			if (node_handle)
> +				*node_handle = rec_node_handle;
> +			return 0;
> +		}
> +	}
> +
> +	return -ENOENT;
> +}
> +
>   /**
>    * ice_aq_list_caps - query function/device capabilities
>    * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index 2250a9c5f61e..f7178a5686a5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -94,6 +94,9 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
>   		    struct ice_sq_cd *cd);
>   bool ice_is_pf_c827(struct ice_hw *hw);
>   int
> +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
> +		      u16 *node_handle);
> +int
>   ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
>   		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
>   int
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index f29ff54383b5..4ac8998cb964 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3989,8 +3989,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>   		/* If we don't own the timer - don't enable other caps */
>   		if (!ice_pf_src_tmr_owned(pf))
>   			break;
> -		if (ice_is_e810t(&pf->hw)) {
> +		if (ice_is_clock_mux_present_e810t(&pf->hw))
>   			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
> +		if (ice_is_e810t(&pf->hw)) {
>   			if (ice_gnss_is_gps_present(&pf->hw))
>   				ice_set_feature_support(pf, ICE_F_GNSS);
>   		}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index fd19afaf9c85..bd3f32bfbc78 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3018,6 +3018,22 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
>   	return 0;
>   }
>   
> +/**
> + * ice_is_clock_mux_present_e810t
> + * @hw: pointer to the hw struct
> + *
> + * Check if the Clock Multiplexer device is present in the netlist
> + */
> +bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
> +{
> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
> +				  ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
> +				  NULL))
> +		return false;
> +
> +	return true;
> +}
> +
>   /**
>    * ice_read_sma_ctrl_e810t
>    * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 4e3c1382c477..3768e7a01920 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -195,6 +195,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port);
>   int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
>   
>   /* E810 family functions */
> +bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
>   int ice_ptp_init_phy_e810(struct ice_hw *hw);
>   int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>   int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
