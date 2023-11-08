Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8B67E5CC5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 18:54:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E74D64012F;
	Wed,  8 Nov 2023 17:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E74D64012F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699466069;
	bh=jazwkdYzF59G/VEEI3Ylfnju6gQRfgHsyNfGytKghDI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RyE8x4B3n34hp4qlyZSQ57t6ydbBxZy2q/ekyrTky6gGKuzsaf0Gk54MdxFay1rMh
	 /mO6Z7303G448smS3rgKPgh01hsYa1OW7AomUHfP8qMphR39bXySt09fQFnV+2otC+
	 x8RVHn4BN1oFlF5P1jqZh8b9Xo/+kpoKqJBQgkawy7TZc+2xzWcOrn8pLVy/Vrqetw
	 FpkfzXOGlB68BNuN9q9sR5UsAxhVhQ8TchLKxQadSf/r27ArDCfiJrfxEvaCRUxx5a
	 p9tr8juLeoobwRQe92MJKrS1SMqwZi+W2l/SC2MeWRITYKZ+vwDsiGAutVVvYZl9ry
	 weKAOOUlLDHIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hjcJUgmGV0Yr; Wed,  8 Nov 2023 17:54:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AEA340123;
	Wed,  8 Nov 2023 17:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AEA340123
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D114D1BF576
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 17:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A67D060A91
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 17:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A67D060A91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DecMojsD-cUA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 17:54:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEA8B60A84
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 17:54:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEA8B60A84
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389628654"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="389628654"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 09:54:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="713010922"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="713010922"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 09:54:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 09:54:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 09:54:17 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 09:54:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCe/+plA5y5uXB9why7vEeFNx3I3wu8uFU0Kh+ISM84L95Ah9ewEQUwnwBK9ZHbpbKxfvvjADNoFZd5GUPKxlygmmJgjQvR7iZu1Cm0W8Yv7h+GEB4FCP/bAnpwHsAFVhwaT5kkbuKvxmCEPQxJ/d5zNIzeOG866fKGr2b+Y939edvWTWgRMwOl5D9LGNU0an836jZ9JRo7RJmyFeI4JXF1BuYAkJ6VuL4HoA1lQtJgR82CDzuBd4GBgctvf6LZopWrK2gnP0jHscf+7QQJ4YuFNQ6fonsBrH/D5eyAirDCRmpQ7nJTm6ohP9et2jjcQLr8LxsCtdyszSxaJBlldIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1QmiblKkIGachKbZ2fpnQkGCd631Dz2JKmfoESTSgw=;
 b=BoDp68KbKfw5BR+03374/pdPXa5IpfVaBvyqFSVkaJDMCYi7UUJD23ExIEARhIHKdAxig4cclNT47LC23VeSdbndzc9LwE0U+/2TOpmqt3xqqtHc02/qIYEam1BreT+Ojp5biKkBmLo4+NUIo6Y30XRIL3hLfEnBfN17F5J/QpO3NSwjT6YNCYPrHXSEmtALnP3k+Rn8nQ4IrUYAJaV9lx7f0N6tH8zVAc85eL9djJkhsTvjBEvES9/m8gHY1PsnBJhZJHiZEPiVlnH0UnaGXZ6q6k5BH/qTG7krDqlhiZCglhj0fX7lztK/8WyMZGYAauHj2QGDgHbJk8n5NH38qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB7453.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.25; Wed, 8 Nov
 2023 17:54:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 17:54:09 +0000
Message-ID: <0a203988-1062-4dc8-96f6-cab800c03026@intel.com>
Date: Wed, 8 Nov 2023 09:54:07 -0800
User-Agent: Mozilla Thunderbird
To: Ivan Vecera <ivecera@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231108160104.86140-1-ivecera@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231108160104.86140-1-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR03CA0307.namprd03.prod.outlook.com
 (2603:10b6:303:dd::12) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB7453:EE_
X-MS-Office365-Filtering-Correlation-Id: bd87a3fb-15c0-4760-8ee6-08dbe083b545
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uKEXaMA9y34L2802sxZBkSCHdaY/OuVGy++RtpeUQBKgrUi986MXD3Hz5K7/d2OsGQ4Nwc0OEpBPRYhz9Cv5IW6jjtlPM68gdikYKfqdHnC1yasttbuTDGOLGhhxE5tHWvWviDHNzs4dn0G/fgULNfNGnK6zv38czDtgW1pLfJfIW92zfALvCiKLGHO/GI8yGZz+CL/VHahGankVH1TRPRi0y6y1YKFVv2v/Lble5cxWnfbr3hfxB6aUFIaMv3jqUP7ekLAJa0jbqqlSe5JEKSEMQqIbwg9m9fJ//ehzrPsk3tZkqWwRdRi4i/lpEn2nKmMVbyIWnADEfyjvVumZ4UGDyZ5qHOweum2QA7QzsTF21jgb4go1+yJ1eBAT7b9LuREmBeoKz8h1sBF8vi0CagGUz0WEry1SfWnUIKK5f2um2F14sNvxxyhnN+oWiB+CYJ6h+JG7DYx8lDlw2e0MtB0t61iNUKJuYC5HRk+5kNpGctzcPPdakFS3yB3TwFKBEhD0A66RmMZCfQTGD9Hve8trjdYbYMSuIbqZhk28eEtIvMmAEmvOt72jVBdaT7Njpq3y1ph4NqbT3OWcVeF9FECAyhcOe3TIYaeCLtQP9PlnrfxK2mOkUvldE9EXc6a+rZRZsORMXCdeSVBnrlT27w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(39860400002)(136003)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(6512007)(82960400001)(66556008)(54906003)(316002)(86362001)(38100700002)(31696002)(66476007)(66946007)(4326008)(2616005)(26005)(6506007)(83380400001)(6486002)(2906002)(53546011)(478600001)(5660300002)(8676002)(36756003)(41300700001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGREWmdOdDVaSDVXcTJENER3YWhCQkNMUmF4WUFZemh5MW91alk2YUU2Z21W?=
 =?utf-8?B?MXZxbHhXY1ppeUFETkgyc0hVNEJqMXZUZG1JUTJJcXlDUitoVnFYYklmanI3?=
 =?utf-8?B?SUFCWEtoVEJBZURWRWhsUW50VG1jTDJQMUp3MkY2eUFlb09TSXdaN2FudXJv?=
 =?utf-8?B?QU5tZTFVWDZvZWlUOTExaExja1E5MGo2Y1JOTzI3R3p6WWFITkpPUXpZQUtk?=
 =?utf-8?B?QXVsSnJiV3lpZzJVZWFjendNRUlPWTZBNjc4djF3bnRqdXBHUW5kSVVJSzRY?=
 =?utf-8?B?SGY4WEF4RGowZ1ArTlJFWTNzMWZmbms2a3BmZXhTVlU0MS9LcnVHZ2FGL0hx?=
 =?utf-8?B?Y0Fkd1VHR215ajRoaUlnSEhnTVdwWHQ5VUUvR1FLMnV2SnFwUUdNbk5OZHZL?=
 =?utf-8?B?ckRTSnI1b1RkcWpabFhxeFVGWk5WMS9lZWdJYldHZ3hYTmhuSTVtd3pyK3h4?=
 =?utf-8?B?cFFYdHNaOUJ5SUxiall2dkJjOXF2SGQvQUQ2dmpwOG5OQ1VNR3JCY3lIYTdq?=
 =?utf-8?B?ck4veko0NERjUkx6NW5XcW9JaG9jKyt3NVVEVkJPNEMzRXQ5aHpZdGxteThT?=
 =?utf-8?B?d0VJdFhacHB0SkNxUncrUUpqZUtQWG9pTnRrM2o2Mi9xaFA4M0FHc21qcFVN?=
 =?utf-8?B?V0RqQlFabmVxTFlZUkx4b3J6Z0NtM3VncCtxd0JLZGdjVlR0a3NBWmUxekt1?=
 =?utf-8?B?SThWM05aK29CQnpzZ1JLOE8rYllNbUNabXhWNVpSQ1g5dWdud05vSVFUVm9Z?=
 =?utf-8?B?QVpSSFNKK2g4RU5wd2w0WXFNMUtFb0ZVUGFxbkFXT2pjWVpXaEN3NkFBd2p1?=
 =?utf-8?B?dUd1ejZXVExWN1ptbjhEd0VIYVVXbFFTcmZ5Q1E5cVBjYzdlQk42aDVhMTNL?=
 =?utf-8?B?VjNraHdzUWJiMnRnV010cDNzYzhyeEEyT3dqQk9JR1RsanowWG5BdlNWTnpG?=
 =?utf-8?B?L0NIVytyRCtIWldoSGZMOE1Bc2JqQ240MzJMa0l3dE5IbjNXMDMwQzFJdEtS?=
 =?utf-8?B?QzlTc2xKMkUwbWtUSGRwQlROdFgySE0zMm01MUk5aWFHaGdhNVRuNUZhVEdN?=
 =?utf-8?B?bVZLcWtNdkJTVDg3ek95Z1A0SVVLNVowOVQzS0lkakF0OU1XNnQwanJHWU1a?=
 =?utf-8?B?RENka0FCdFdHeGJOckhSSHBTRWttMVZmaUIyS205czhlNm9VZHYxVzlXYUly?=
 =?utf-8?B?dU9mSGEvcEJJa0lFYkI5ZEpCTG5GUHBmcWZwYU9aSVBMZDJ6ZWwrdzB1eGFI?=
 =?utf-8?B?dE5jWFNoTGQ5NVlkczMyRnJUUmh4NFdTdVRja1BNeUJ6L0g4ZU5LaGpEMEY2?=
 =?utf-8?B?K3kxOXcvaGliRlFzeHh2alBBQVdVckdZWVJMa0lWbXZKTUtNZktmTU40Q1V1?=
 =?utf-8?B?TFZDS2JuUlVUTEpmbEk5cXlTTW9xUVJoWExKNUJRNHJhcjdtSm1SaW1XWmNw?=
 =?utf-8?B?SXNqNXlwcjNQNjZBd2tSV0JkTDRtSXZ4SGFtKzVPNWVXR3BQQzNlSHJkenUv?=
 =?utf-8?B?L3F3NXlwKzdCcG05VGtKam4vUzg0QW5ZZjZIaG9ZbkVsd0l5d0JtQ2hCNGJM?=
 =?utf-8?B?SEYwK2pPYW8wcXlwbjl1ZHRFem4vcDEySTZzUElMMjcxWjdheW5FNmtKSyts?=
 =?utf-8?B?TGpzaGRORHFiUHNQRkllMUtHRS9rUG9WaHQwZzdKZ2pUdXRvWW9nbmhibm5q?=
 =?utf-8?B?RE9TZTNnY3lWWTF4ZFpRRXRuRU5LWnUydEpybm5nVnZhMEN2TTdkOWN2MnJV?=
 =?utf-8?B?d0FLRTdDN2tvRFo1eUJ2YjVPK0FzOVNzckJVRzZQMElDUDdGNlpmeDczZEV0?=
 =?utf-8?B?OGJXTEFUQWRtbkxtd0tvOVVPbjBFZFdXYXV6ekliOFVkcUxDZU1vTThpeTdR?=
 =?utf-8?B?S3ptRVQxRUsyRy84bnRvUWY5aUlQSzZabDVieWl0WkliYlU5eGdkaUpvN0E1?=
 =?utf-8?B?dGhqbTFFa2JZbnNGVll3dHRxYVVDRmpBdkJKN0E5eVJoVHE2bWRuQ2ZGQzFt?=
 =?utf-8?B?bEVLc1Foc25GalFzd1BEMERpNURHMUNINTZad0FRaSt4SkxQa0kzV3ZmeTJ2?=
 =?utf-8?B?ckV1bDBrcGVLTzR3UFQ2M2tHckVKVnZrZ0x5dFN2MEpmVWUvVHFZamhJYWJO?=
 =?utf-8?B?bUhKYjVaMUN5dEhzSHdMdS90dHdMSVFzYUtCQmxlME5GbTJiMWNrV0c1RCtS?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd87a3fb-15c0-4760-8ee6-08dbe083b545
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 17:54:09.1443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q04e3hMF6B/9dKGjmjFr2p5RowbkKAoDaB1GqHp8/ngDltRt/X3Ly0nYs0D0A9/WVrFqj1wTufZzJAZBcXXdr4jAIkezVbRp6wQnF1RcPlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7453
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699466060; x=1731002060;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WIL7julJhFCkhUwdQ4fjCZrcFfmTmm7Rt0Im9odKDMI=;
 b=b3QhN4BURPDSJkAjPv71RjJVJUXsZD+natNjPDVx4uP91fBcHvr0HosJ
 HTVPQR9qYmLcIvWjBd0Rsi0QNvEhZ4uocRyN1vPzA8oXqC1xRPiqC+KIs
 UbWglHTleK9tRJeEWDWBw3lupt2oLJSsDnI8g7Tlw0lVi4QQi3pEiQKTh
 lPp95wR1cqbD0fkay3CzllBWg6mzFhdiIqbtZNrEUWmWQOcuN7vFY4V+s
 AhlL67tVyrpSAsRro5iannwygB9SAkrpROwmrfjbR9zugXF2iE5gSQBwr
 DmS7S0EjqhiMGJBDhHVKNYPU5gBYdpxnTdMSJSmqzJnIHDCInpxPHctfK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b3QhN4BU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix waiting for queues
 of all VSIs to be disabled
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Neerav Parikh <neerav.parikh@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jeff
 Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/8/2023 8:01 AM, Ivan Vecera wrote:
> The function i40e_pf_wait_queues_disabled() iterates all PF's VSIs
> up to 'pf->hw.func_caps.num_vsis' but this is incorrect because
> the real number of VSIs can be up to 'pf->num_alloc_vsi' that
> can be higher. Fix this loop.

This confused me at first, but as described in i40e_probe:

>         /* The number of VSIs reported by the FW is the minimum guaranteed
>          * to us; HW supports far more and we share the remaining pool with
>          * the other PFs. We allocate space for more than the guarantee with
>          * the understanding that we might not get them all later.
>          */
>         if (pf->hw.func_caps.num_vsis < I40E_MIN_VSI_ALLOC)
>                 pf->num_alloc_vsi = I40E_MIN_VSI_ALLOC;
>         else
>                 pf->num_alloc_vsi = pf->hw.func_caps.num_vsis;

The func_caps.num_vsis is really a minimum guaranteed amount and a
single PF could get more from the shared pool.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> 
> Fixes: 69129dc39fac ("i40e: Modify Tx disable wait flow in case of DCB reconfiguration")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6a2907674583..de19d753ba83 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -5340,7 +5340,7 @@ static int i40e_pf_wait_queues_disabled(struct i40e_pf *pf)
>  {
>  	int v, ret = 0;
>  
> -	for (v = 0; v < pf->hw.func_caps.num_vsis; v++) {
> +	for (v = 0; v < pf->num_alloc_vsi; v++) {
>  		if (pf->vsi[v]) {
>  			ret = i40e_vsi_wait_queues_disabled(pf->vsi[v]);
>  			if (ret)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
