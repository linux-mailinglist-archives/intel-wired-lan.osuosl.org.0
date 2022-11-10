Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCAE624BD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 21:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABACD40544;
	Thu, 10 Nov 2022 20:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABACD40544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668112260;
	bh=pbR0c3al91ZqEFE6jjN/tG09Dvt/FCmZAvjLbgz+6tI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sLl0zkhLwj/yeBGYefyharBNcIQdYxgidxtY73nVMWOp1Wt56TJfPMUMafmoATtFl
	 A9CX8lxNmSX4iN3+fPigDWtsHHTIP1FuBBN5OL3D0B+x9A7GKrQ1PDx8ViZ7qt4Y2m
	 0ZaxANMotUz4h+wk9MmFocDiIyJ5FOee+Yn40qaQJf9WOOh6GCSoPjHHOZsPkY8dOf
	 iWUZyXRzEL80AELphRzv73/qJI92zr1It2si/VQVKYp4fCFJviDJEheqtaP66DhniI
	 rXNn/e+a7kU9j2lw3+f3i0LZvP0FlwNzEiN6DTATs9mmY0ly9cGWd/bCRibwCdIV6P
	 GsWyKIsXG5Sjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSJ6ZsANENN7; Thu, 10 Nov 2022 20:30:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D96A8404CA;
	Thu, 10 Nov 2022 20:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D96A8404CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80CAB1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59B3B81E7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59B3B81E7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3DypYrtIeLS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 20:30:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E59381E70
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E59381E70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:30:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="312575129"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="312575129"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 12:30:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="726532983"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="726532983"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Nov 2022 12:30:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 12:30:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 12:30:51 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 12:30:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwRsk9xbx5ze3Ehk4tyfQjscUrkFagjAyYZUoSQqh+R2J7q8ljNtu239DaHeiSVLTnanDqCAie+SHjB4M/nt/jCao/mLy4/prIaQEq3/L3r9OWDATaUBcc6l09cYTSEASFHyLpubS4ame4PCtk+AILG8Nu6TSHABuMX+P2gE2afFOJefN++K1d2KtyRF80M+lxiBvGgX5PQsgbNBbw+4IIUjMZOViU0Q1WUnaywBL2ICQnNpHQ0HL/dhumjZv/7AlPzx3YhpIkkmPc1ZZ2F3hkoR5noGDSAyoQjKiWWNqjtfI71VMbD+KlUE88Ksw809RkUtxnSO6p67dMN6ii/IkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m2NCIqOZsuZfSFBn4LBMjwlUgtX66F7xDa0AivPV4Nw=;
 b=eNBleterr58rDrRmQ19JTkD45DVea+jn1F2PGJFnOSiHrc5Xs+qqYwLhr9qZ5F+Ihtin/jbRhsvxnu/QOJUftzh7ebjQN2C7pwrGuYwM+2XwA0N5YhQGT8AzDwUVA3hpbWdwHPhDd3KgM71bRIgq1Lg5JRjDimCPaqazmOAOz/fn4CByXH0ROkap8IptYR779Tl6dIVyp6nv4FmCaFWxaPugVShuZVI/FIY+1E1ala26SHmDZPgbPGlaPDu6pQ7aY60EppvmVcTQE07XVTdYDnXz3jpzs2Tr8sWrFHReig5Kt2uLSSez2ooYktSnYlvW9NdKCpBBG7vLLrTs/XhVfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10)
 by BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 10 Nov
 2022 20:30:49 +0000
Received: from CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::9c6e:32f0:ef8c:999a]) by CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::9c6e:32f0:ef8c:999a%4]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 20:30:49 +0000
Message-ID: <34fb5ea9-6fb5-337c-f288-19c9ff2995b2@intel.com>
Date: Thu, 10 Nov 2022 12:30:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
 <20221027152401.30801-2-benjamin.mikailenko@intel.com>
 <d73f08d9-c0f0-0023-454c-7f085c456bc5@molgen.mpg.de>
 <9602c529-3474-cef3-aaea-8da8eff287e7@intel.com>
In-Reply-To: <9602c529-3474-cef3-aaea-8da8eff287e7@intel.com>
X-ClientProxiedBy: BY3PR10CA0027.namprd10.prod.outlook.com
 (2603:10b6:a03:255::32) To CO1PR11MB4852.namprd11.prod.outlook.com
 (2603:10b6:303:9f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4852:EE_|BL1PR11MB5352:EE_
X-MS-Office365-Filtering-Correlation-Id: ea226d84-d656-4396-e225-08dac35a73fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: annYGgwsGSoOQ0iIbSeSHStir/Ma75qsAlVZxdZRhI+Qb/RBNuRwFv8TrU00Eejg0p93STbHW8+ehOpF4FRRajHXkd5Z9VypP5ALIl+ciDo4W6EHinSDKdCiseV3sZGL0fuo16Ea4EdHnO5w/TdffaxepVEtFIJarRHyOACjgHGgmFHHLnMdf4u8zeQ3Cm15Nd/iHJfDhfGk2LuutPNsoNWs+9EEBuRRfiYIaRUbx5tudEcM7c210yN0n/ASiPtEvP0MuDPe+o4Xo43uQ1pk4osuGn1rhBug0VRHkff8AWmPBqAQc1iZpW1MOpv7nwJdRMNQBgYjEEiBwz2+Ji01gJWqP10utpPAdWQEaS3pqqM1J4kmrcU08Rjxoz4QpFLhnZ6TJZ30bxWqsUJ27SNPCMUZ4NkA3S0XY3zYHsfdJH1ivJE3NJipSNZz+HfQ5pa37KoGsNF92bDKSvDLf9VYk4wCLTBAknXE9iiCRF+Jm87RzRogO9LE1yVnrDNd8KrfLmV64yKWaUvJNY8b+rETG5BXP9CfQ7/He7tgU8N/GaHnXyOvZlUGAaQAtg9UhdUZCtTYxdTn3k0gg41ahxW19fY/URoUGgwAdwTWZyiwSy5PUmKXAJKnNIiKoXNx/WHlb22rl1ACx61dL6Fy+ktQ/LM5BdRA17AjOaCwdurNE+Ef0y4KHX37uv184lUttwpIYpdGFA0OqJlUgS5kBVlvh3YOhvgtRiU6T24h0d4A/gC3/OdkVZskYUg9K54czum8Ltz4uTCCCIUhWu2aviMSwSdzZB11oTYoiXZnWdqU17M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199015)(31696002)(316002)(6486002)(44832011)(2906002)(6512007)(26005)(8676002)(4326008)(41300700001)(6666004)(5660300002)(6506007)(8936002)(53546011)(66476007)(186003)(478600001)(86362001)(66556008)(66946007)(2616005)(31686004)(38100700002)(82960400001)(6916009)(36756003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXhJK1JjeVJtR0ZLSzF4TEVDdkplNm4ycitPRUVpczhjNTBUaVY0cEp0MWdW?=
 =?utf-8?B?MWhXZEdLZ1VtNVlNYzU0TEFoL0dBcVplNDBwVW5jQzFtNDVrck44NStlaWxU?=
 =?utf-8?B?cjhBQ2graThPS0txY3NQOUFzNkxrbTRtMVV0REJkcjR0ajA5MFk4TWVHeDJI?=
 =?utf-8?B?SGVxVERkQzN1VFJpbkQ4aEJpQVZqNDNjWkpIdzNVdjZkY0VGcWJndE9kdERS?=
 =?utf-8?B?dHRvTE5JRmw4MjdJSFBpT2doUm9ENGpaZStCWFlHUWtNQXA1WTQyM3J5OFVC?=
 =?utf-8?B?dzNKTUZESFQzN1dEaDZRZkdrc21jR2FmOTlIb0Y1WE1taDBlNmJWdEJ6bUFT?=
 =?utf-8?B?eVM4dUY1VHV5ekRlRGZXVVJQb0NDbWt6RFpRQjZ4NG1NMElWM2I4MkY1RnVH?=
 =?utf-8?B?WnlpVW5nVXFmQjVISWRTQm9lL2lMeHJqQk1HSXdWUVl1RWVCbDBJSU94M1cr?=
 =?utf-8?B?OERjMkMrT3NBaVY0d2RrQU11bGUyc3l5U1NCamxmZjY1b3RkRzAyY20rOSs4?=
 =?utf-8?B?VVpDcjQvazJsVzlTUmZqSkJudU5hRWNkYUFoZW9OaElBaUFtQTg1VHJlVG9l?=
 =?utf-8?B?YVpyZFN4L1dDTEdEQlVVeUFBcTJlMjIrQzM3OUNOR2NEKzVEUUkxVzJnc3Bj?=
 =?utf-8?B?eVdFeXJQWmNmNGRHc3dFVkJ6YmN6bGd4bTBaTFU4Q3JqZzIwNnovMWlTaUZv?=
 =?utf-8?B?SWpUcHhuMjNJTmRkL0oxeERyVGZ6ZzlFakNTTTd5STBPKzJNcDNzMnNpQjh6?=
 =?utf-8?B?aWw1aVZNRGJCeUk3djk4Nkc4NmVMZURLUW0vR1NkTlU4TitOU2l4c2dNUmZE?=
 =?utf-8?B?SzJpMVVJRUdubC9Fa3I0a3pwUFNKY1lROEZmSGtKQWlMNS9RT0Y1S0t2dnhy?=
 =?utf-8?B?RHFlZVViRlJjZUEyT2k4ZWpSZVkxd241eExoc0pVYTc1dFNSSXF1QVlFdTY0?=
 =?utf-8?B?SzlaTnFqOSt5L3p2dWpyUjdZK1Q1M3FPL0xkTFdzNHhSbGxlSWlKaHlrdTRM?=
 =?utf-8?B?ajNuOTJFelZlYjF3TUQrdDVLM09vL01nbWtVYnBzVjZ1NEdSUDl3bkswOUd5?=
 =?utf-8?B?YUdGMEtiZC9SbEhQYm5Scll0WTZKNG5jKzhWQXQvZm9KczBYNTlqbUtmbU5F?=
 =?utf-8?B?RlYzUEpHRy8xMzNVdkk5UE95eVE4dWpwWThzWmZRL0twcWgxMmNnamtneDFK?=
 =?utf-8?B?L2hKNU1KUk81c1B1ZnhXcDFjVUcvbTRCNkFOcEpLR0dDdU0vNjJqZlJ0RXVM?=
 =?utf-8?B?V2lhUTZZTzVKZitLMUZhWjJPWWJRbituZVNyaCtMZExzdlZPSXhLdlFKd2lw?=
 =?utf-8?B?WnZ5M1hHQVVuMS9hMjlXQkpKMlhPSWpZZDZjbStod2c3dHQrbmNXaVUvaHEr?=
 =?utf-8?B?My9QSzNaK3hLY3NsZDZQaE54NFZLajgrNElFMHZlQmVNVjhUanFSQk51WDdL?=
 =?utf-8?B?VHRoSjRrOFJwYzNqNTlEMlA5bSttN3puMjRIMmtiUnkyWnlRUFhPUkF1YkMz?=
 =?utf-8?B?YXhVVVRYTHZVSUFBdnAybWMwVjZwdFZNZHo1dGhrNjRaSTNrQ0V2MWxGRys0?=
 =?utf-8?B?NWFKaTA4Q3B2WXZQZk5DdDJpYkc4Q3VBT1I0aEVWNUZ0MlVwdkxSNVZ2aXVp?=
 =?utf-8?B?QUxzSmJLa2RlT0VncjhmNTUvZ2xqK2daemhOUFVQQnQrSkU3TlNmcnd4M3hj?=
 =?utf-8?B?UkxocW9VQi9rWDYzQzFOQUZ3WVhMQVF0YXNjbEMrZzNjcFNraTdXdk9xeGxy?=
 =?utf-8?B?UHFKUURLMkVwWWlITlJwOWx5R2oyUVJyZUQvVXd3MU5ibGd1VElHM29pWVZ0?=
 =?utf-8?B?aFFvNFZXbHhrMThuT21ydUlvcWNNbGRBbDduVlErVEdPRUVady9HaVNSUlp4?=
 =?utf-8?B?dXlPWStaMlhWVEFhK3hvdWRJdFFiTlB6YjgvSm9PQk40ZFVydURtdFdBMnpX?=
 =?utf-8?B?Z3k5YVRoak5qMWhFVXJleFJ6aXloSjRCMG4rZk9QSm9WSmhLMmxWWVhjTmEx?=
 =?utf-8?B?UE5DSEtudWlwZDNUWjgxU25QOExKVmZySHl6d3lFZzBwcHlpa0l2eUZDZDF4?=
 =?utf-8?B?YWlrNjBRcm94ditaRUdlamlvaHZXN2NnV3ljRWRVRmFSZGh3Y3JxRHMyeWEy?=
 =?utf-8?B?WktabWJtSyswcDdVRUhLMzJtVys4KzJ3KzdxNHpLSFQ3RHc0enVvTUtvNXRK?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea226d84-d656-4396-e225-08dac35a73fd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 20:30:49.0587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UCV4tBI1sHff2It8uPCo3Tl457Pihp5IY7vBEgNBKiqH2KFpBvCmUOmpQHWUWbpCl/jD7GbLaVKYTZHIQ33PkXV2syIP69WnY+LqBQH9E7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668112253; x=1699648253;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7D4X9Ih0cFrvddRmKfumvl0PRV+PAZUfW9XU46ePcZc=;
 b=J0b8z5Sc5vs/APcV/2CwLjBiqE5UStqBuzsLhEGRgzWKByISI8doysf8
 Nsw4rHeR7DYewHojOB0ufwYB0Be4GakKw4tet+T/i997SWXGzgIPAPoHp
 WjXt5YyPOzM4DqXfpeamH+jF4pAkXUShmfiWTKEZpkbE4PuCsfmofou1Q
 dqGQE9rAEyZJj7lRZhA1E5+QrvORBE9MnCR93FH2+0vuXJtEU/5G1gOkg
 7mcsGXFUOwKP1d/1WbHSWPsUTLr39Lwpn8IeIPwykAfoBJTQWZ8Le1KLz
 m3NVDwMDE3G8O3tD7AHVn5ns1zXLLItmP05IzIAEeG0cv8SY9MtAsX3V9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J0b8z5Sc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v3 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS85LzIwMjIgMTE6MTggQU0sIEJlbmphbWluIE1pa2FpbGVua28gd3JvdGU6Cj4gCj4g
Cj4gT24gMTAvMzEvMjAyMiAyOjQ2IEFNLCBQYXVsIE1lbnplbCB3cm90ZToKPj4gRGVhciBCZW5q
YW1pbiwKPj4KPj4KPj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4+Cj4gCj4gSGVsbG8gUGF1
bCwKPiBUaGFua3MgZm9yIHRoZSByZXZpZXchCj4gSSBhcG9sb2dpemUgZm9yIHRoZSBwcm9sb25n
ZWQgcmVzcG9uc2UuIEkgd2FudGVkIHRvIHJlYWNoIG91dCB0byBvdGhlciAKPiBkZXZlbG9wZXJz
IGJlZm9yZSByZXNwb25kaW5nLgo+IAo+PiBBbSAyNy4xMC4yMiB1bSAxNzoyNCBzY2hyaWViIEJl
bmphbWluIE1pa2FpbGVua286Cj4+PiBSZXNldHMgaGFwcGVuIHdpdGggb3Igd2l0aG91dCB1c2Vy
IGludGVyYWN0aW9uLiBGb3IgZXhhbXBsZSwgaW5jaWRlbnRzCj4+PiBzdWNoIGFzIFRYIGhhbmcg
b3IgYSByZWNvbmZpZ3VyYXRpb24gb2YgcGFyYW1ldGVycyB3aWxsIHJlc3VsdCBpbiBhIHJlc2V0
Lgo+Pgo+PiBBcmUgdGhlc2UgcmVzZXRzIGxvZ2dlZCBzb21ld2hlcmU/Cj4+Cj4gCj4gRG1lc2cg
d2lsbCBzaG93IGEgcmVzZXQgb2NjdXJyZWQuCj4gVGhlIElDRSBkcml2ZXIgYWxzbyBtYWludGFp
bnMgYSBjb3VudGVyIG9mIGhvdyBtYW55IHJlc2V0cyB3ZXJlIHBlcmZvcm1lZC4gCj4gQnV0IHRo
aXMgaW5mb3JtYXRpb24gaXNuJ3QgY3VycmVudGx5IHJlcG9ydGVkIHRvIHRoZSB1c2VyLgo+IAo+
Pj4gRHVyaW5nIHJlc2V0LCBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGlzdGljcyB3ZXJlIHNl
dCB0byB6ZXJvLiBUaGlzCj4+PiBjcmVhdGVkIGFuIGlzc3VlIGZvciB0aGUgdXNlciB3aGVyZSBh
IHJlc2V0IGhhcHBlbnMgaW4gdGhlIGJhY2tncm91bmQsCj4+PiBzdGF0aXN0aWNzIHNldCB0byB6
ZXJvLCBhbmQgdGhlIHVzZXIgY2hlY2tzIHN0YXRpc3RpY3MgZXhwZWN0aW5nIHRoZW0gdG8KPj4+
IGJlIHBvcHVsYXRlZC4KPj4+Cj4+PiBUbyBlbnN1cmUgdGhpcyBkb2Vzbid0IGhhcHBlbiwga2Vl
cCBhY2N1bXVsYXRpbmcgc3RhdHMgb3ZlciByZXNldC4KPj4KPj4gQXJlIHRoZXJlIHVzZXJzLCB3
aGljaCBleHBlY3QgdGhlIHN0YXRpc3RpY3MgdG8gYmUgc2V0IHRvIDAgYWZ0ZXIgYSByZXNldD8K
Pj4KPiAKPiBUaGVyZSdzIGN1cnJlbnRseSBubyBmdW5jdGlvbmFsaXR5IGZvciBhIHVzZXIgdG8g
cHVycG9zZWZ1bGx5IGluaXRpYXRlIGEgc3RhbmRhbG9uZQo+IHJlc2V0LiBUaGUgb25seSB0aW1l
IGEgcmVzZXQgd2lsbCBvY2N1ciBpcyBhcyByZXN1bHQgb2YgYW5vdGhlciBwcm9jZXNzLiBTaW5j
ZSB0aGUKPiBhYmlsaXR5IGlzbid0IHBvc3NpYmxlLCBJIGRvbid0IHNlZSB3aHkgYSBjdXJyZW50
IHVzZXIgd291bGQgZXhwZWN0IHN0YXRpc3RpY3MgdG8KPiBzZXQgdG8gemVybyBvdmVyIHJlc2V0
LiBJZiB0aGV5IGRpZCB3YW50IHRvIHJlc2V0IHN0YXRpc3RpY3MgdW5sb2FkaW5nL3JlbG9hZGlu
Zwo+IHRoZSBkcml2ZXIgd2lsbCByZXNldCBzdGF0aXN0aWNzLgo+IAo+PiBBbHNvLCBgcnRubF9s
aW5rX3N0YXRzNjRgIChgaW5jbHVkZS91YXBpL2xpbnV4L2lmX2xpbmsuaGApIGNvbnRhaW5zIG1v
cmUgZmllbGRzIHRoYW4gcngvdHggcGFja2V0cy9ieXRlcy4gRG8gdGhleSBuZWVkIHRvIGJlIGFk
YXB0ZWQgdG9vPwo+Pgo+IAo+IFRoZSBvdGhlciBmaWVsZHMgaW4gcnRubF9saW5rX3N0YXRzNjQg
YXJlbid0IGN1cnJlbnRseSB1c2VkLgo+IAo+Pj4gMS4gUmVtb3ZlIGZ1bmN0aW9uIGNhbGxzIHdo
aWNoIHJlc2V0IGhhcmR3YXJlIGFuZCBuZXRkZXYgc3RhdGlzdGljcy4KPj4+IDIuIERvIG5vdCBy
b2xsb3ZlciBzdGF0aXN0aWNzIGluIGljZV9zdGF0X3VwZGF0ZTQwIGR1cmluZyByZXNldC4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBNaWthaWxlbmtvIDxiZW5qYW1pbi5taWthaWxl
bmtvQGludGVsLmNvbT4KPj4+IC0tLQo+Pgo+PiBEbyB5b3UgaGF2ZSBhbiBvdmVydmlldywgd2hh
dCBjaGFuZ2VkIGJldHdlZW4gdjEgYW5kIHYzPwo+Pgo+IAo+IEFkZGluZyB0aGlzIHRvIHRoZSBu
ZXh0IHZlcnNpb24gKHY0KToKPiB2MjogRml4ZWQgc3R5bGluZwo+IHYzOiBBbGxvY2F0ZSBzdGF0
aXN0aWMgc3RydWN0dXJlcyB3aGVuIFhEUCBpcyBlbmFibGVkCj4gdjQ6IEFkZGVkIHJldmlzaW9u
IG5vdGVzCj4gCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmjCoMKg
wqDCoMKgwqDCoMKgIHzCoCAxICsKPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfZGNiX2xpYi5jIHzCoCAzICsrCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2xpYi5jwqDCoMKgwqAgfMKgIDcgKysrKysKPj4+IMKgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jwqDCoMKgIHwgMzAgKysrKysrKysrKysrKysrKyst
LS0KPj4+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZS5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oCj4+PiBpbmRleCAwMDE1
MDBhZmM0YTYuLmUwZWQyZjFjYzQzNCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2UuaAo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZS5oCj4+PiBAQCAtMzU4LDYgKzM1OCw3IEBAIHN0cnVjdCBpY2VfdnNpIHsKPj4+IMKg
IMKgwqDCoMKgwqAgLyogVlNJIHN0YXRzICovCj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBydG5sX2xp
bmtfc3RhdHM2NCBuZXRfc3RhdHM7Cj4+PiArwqDCoMKgIHN0cnVjdCBydG5sX2xpbmtfc3RhdHM2
NCBuZXRfc3RhdHNfcHJldjsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGljZV9ldGhfc3RhdHMgZXRo
X3N0YXRzOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaWNlX2V0aF9zdGF0cyBldGhfc3RhdHNfcHJl
djsKPj4+IMKgIGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RjYl9saWIuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGNiX2xpYi5j
Cj4+PiBpbmRleCA1ZTZkMTY4YmFjNDguLjRmM2E4NDhmNGU5OSAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGNiX2xpYi5jCj4+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYwo+Pj4gQEAgLTg3NCw2ICs4
NzQsOSBAQCB2b2lkIGljZV91cGRhdGVfZGNiX3N0YXRzKHN0cnVjdCBpY2VfcGYgKnBmKQo+Pj4g
wqDCoMKgwqDCoCBwcmV2X3BzID0gJnBmLT5zdGF0c19wcmV2Owo+Pj4gwqDCoMKgwqDCoCBjdXJf
cHMgPSAmcGYtPnN0YXRzOwo+Pj4gwqAgK8KgwqDCoCBpZiAoaWNlX2lzX3Jlc2V0X2luX3Byb2dy
ZXNzKHBmLT5zdGF0ZSkpCj4+PiArwqDCoMKgwqDCoMKgwqAgcGYtPnN0YXRfcHJldl9sb2FkZWQg
PSBmYWxzZTsKPj4+ICsKPj4+IMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IDg7IGkrKykgewo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGljZV9zdGF0X3VwZGF0ZTMyKGh3LCBHTFBSVF9QWE9GRlJY
Qyhwb3J0LCBpKSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBm
LT5zdGF0X3ByZXZfbG9hZGVkLAo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2xpYi5jCj4+PiBpbmRleCA5MzhiYThjMjE1Y2IuLmE1OTQ1MzE5YjYyZSAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4+IEBAIC0xNzk1LDExICsx
Nzk1LDE1IEBAIHZvaWQgaWNlX3VwZGF0ZV9ldGhfc3RhdHMoc3RydWN0IGljZV92c2kgKnZzaSkK
Pj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGljZV9ldGhfc3RhdHMgKnByZXZfZXMsICpj
dXJfZXM7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBpY2VfaHcgKmh3ID0gJnZzaS0+YmFjay0+aHc7
Cj4+PiArwqDCoMKgIHN0cnVjdCBpY2VfcGYgKnBmID0gdnNpLT5iYWNrOwo+Pj4gwqDCoMKgwqDC
oCB1MTYgdnNpX251bSA9IHZzaS0+dnNpX251bTvCoMKgwqAgLyogSFcgYWJzb2x1dGUgaW5kZXgg
b2YgYSBWU0kgKi8KPj4+IMKgIMKgwqDCoMKgwqAgcHJldl9lcyA9ICZ2c2ktPmV0aF9zdGF0c19w
cmV2Owo+Pj4gwqDCoMKgwqDCoCBjdXJfZXMgPSAmdnNpLT5ldGhfc3RhdHM7Cj4+PiDCoCArwqDC
oMKgIGlmIChpY2VfaXNfcmVzZXRfaW5fcHJvZ3Jlc3MocGYtPnN0YXRlKSkKPj4+ICvCoMKgwqDC
oMKgwqDCoCB2c2ktPnN0YXRfb2Zmc2V0c19sb2FkZWQgPSBmYWxzZTsKPj4+ICsKPj4+IMKgwqDC
oMKgwqAgaWNlX3N0YXRfdXBkYXRlNDAoaHcsIEdMVl9HT1JDTCh2c2lfbnVtKSwgdnNpLT5zdGF0
X29mZnNldHNfbG9hZGVkLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZwcmV2
X2VzLT5yeF9ieXRlcywgJmN1cl9lcy0+cnhfYnl0ZXMpOwo+Pj4gwqAgQEAgLTMyNzksNiArMzI4
Myw4IEBAIGludCBpY2VfdnNpX3JlYnVpbGQoc3RydWN0IGljZV92c2kgKnZzaSwgYm9vbCBpbml0
X3ZzaSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3ZlY3RvcnM7Cj4+
PiDCoCDCoMKgwqDCoMKgwqDCoMKgwqAgaWNlX3ZzaV9tYXBfcmluZ3NfdG9fdmVjdG9ycyh2c2kp
Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHZzaS0+c3RhdF9vZmZzZXRzX2xvYWRlZCA9IGZh
bHNlOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpY2VfaXNfeGRwX2VuYV92c2kodnNpKSkg
ewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gaWNlX3ZzaV9kZXRlcm1pbmVf
eGRwX3Jlcyh2c2kpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+
IEBAIC0zMzE1LDYgKzMzMjEsNyBAQCBpbnQgaWNlX3ZzaV9yZWJ1aWxkKHN0cnVjdCBpY2VfdnNp
ICp2c2ksIGJvb2wgaW5pdF92c2kpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3ZlY3RvcnM7Cj4+PiDCoCArwqDC
oMKgwqDCoMKgwqAgdnNpLT5zdGF0X29mZnNldHNfbG9hZGVkID0gZmFsc2U7Cj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiDCoMKgwqDCoMKgIGNhc2UgSUNFX1ZTSV9DSE5MOgo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChJQ0VfRkxBR19SU1NfRU5BLCBwZi0+Zmxh
Z3MpKSB7Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+Pj4g
aW5kZXggMTg5MTYwZGFjYWQ5Li5hYzg5M2NlMzllNWUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4+IEBAIC02NDg3LDYgKzY0ODcsNyBAQCBp
Y2VfdXBkYXRlX3ZzaV90eF9yaW5nX3N0YXRzKHN0cnVjdCBpY2VfdnNpICp2c2ksCj4+PiDCoMKg
ICovCj4+PiDCoCBzdGF0aWMgdm9pZCBpY2VfdXBkYXRlX3ZzaV9yaW5nX3N0YXRzKHN0cnVjdCBp
Y2VfdnNpICp2c2kpCj4+PiDCoCB7Cj4+PiArwqDCoMKgIHN0cnVjdCBydG5sX2xpbmtfc3RhdHM2
NCAqbmV0X3N0YXRzLCAqc3RhdHNfcHJldjsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHJ0bmxfbGlu
a19zdGF0czY0ICp2c2lfc3RhdHM7Cj4+PiDCoMKgwqDCoMKgIHU2NCBwa3RzLCBieXRlczsKPj4+
IMKgwqDCoMKgwqAgaW50IGk7Cj4+PiBAQCAtNjUyNiwxMCArNjUyNywyOCBAQCBzdGF0aWMgdm9p
ZCBpY2VfdXBkYXRlX3ZzaV9yaW5nX3N0YXRzKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4+PiDCoCDC
oMKgwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+Pj4gwqAgLcKgwqDCoCB2c2ktPm5ldF9zdGF0
cy50eF9wYWNrZXRzID0gdnNpX3N0YXRzLT50eF9wYWNrZXRzOwo+Pj4gLcKgwqDCoCB2c2ktPm5l
dF9zdGF0cy50eF9ieXRlcyA9IHZzaV9zdGF0cy0+dHhfYnl0ZXM7Cj4+PiAtwqDCoMKgIHZzaS0+
bmV0X3N0YXRzLnJ4X3BhY2tldHMgPSB2c2lfc3RhdHMtPnJ4X3BhY2tldHM7Cj4+PiAtwqDCoMKg
IHZzaS0+bmV0X3N0YXRzLnJ4X2J5dGVzID0gdnNpX3N0YXRzLT5yeF9ieXRlczsKPj4+ICvCoMKg
wqAgbmV0X3N0YXRzID0gJnZzaS0+bmV0X3N0YXRzOwo+Pj4gK8KgwqDCoCBzdGF0c19wcmV2ID0g
JnZzaS0+bmV0X3N0YXRzX3ByZXY7Cj4+PiArCj4+PiArwqDCoMKgIC8qIGNsZWFyIHByZXYgY291
bnRlcnMgYWZ0ZXIgcmVzZXQgKi8KPj4+ICvCoMKgwqAgaWYgKHZzaV9zdGF0cy0+dHhfcGFja2V0
cyA8IHN0YXRzX3ByZXYtPnR4X3BhY2tldHMgfHwKPj4+ICvCoMKgwqDCoMKgwqDCoCB2c2lfc3Rh
dHMtPnJ4X3BhY2tldHMgPCBzdGF0c19wcmV2LT5yeF9wYWNrZXRzKSB7Cj4+Cj4+IFdoeSBub3Qg
dW5jb25kaXRpb25hbGx5IGNsZWFyIGl0Pwo+PgoKTWlzc2VkIHRoaXMgcXVlc3Rpb24gLQpXZSBu
ZWVkIHRvIG1haW50YWluIGEgZGVsdGEgYW5kIGluY3JlbWVudCBuZXRfc3RhdHMgYmFzZWQgb24g
dGhlIGRlbHRhLgpUaGF0J3MgYmVjYXVzZSB2c2lfc3RhdHMgYXJlIHplcm9lZCBvdXQgYnkgdGhl
IGhhcmR3YXJlLgoKPj4+ICvCoMKgwqDCoMKgwqDCoCBzdGF0c19wcmV2LT50eF9wYWNrZXRzID0g
MDsKPj4+ICvCoMKgwqDCoMKgwqDCoCBzdGF0c19wcmV2LT50eF9ieXRlcyA9IDA7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgc3RhdHNfcHJldi0+cnhfcGFja2V0cyA9IDA7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgc3RhdHNfcHJldi0+cnhfYnl0ZXMgPSAwOwo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiArwqDC
oMKgIC8qIHVwZGF0ZSBuZXRkZXYgY291bnRlcnMgKi8KPj4+ICvCoMKgwqAgbmV0X3N0YXRzLT50
eF9wYWNrZXRzICs9IHZzaV9zdGF0cy0+dHhfcGFja2V0cyAtIHN0YXRzX3ByZXYtPnR4X3BhY2tl
dHM7Cj4+PiArwqDCoMKgIG5ldF9zdGF0cy0+dHhfYnl0ZXMgKz0gdnNpX3N0YXRzLT50eF9ieXRl
cyAtIHN0YXRzX3ByZXYtPnR4X2J5dGVzOwo+Pj4gK8KgwqDCoCBuZXRfc3RhdHMtPnJ4X3BhY2tl
dHMgKz0gdnNpX3N0YXRzLT5yeF9wYWNrZXRzIC0gc3RhdHNfcHJldi0+cnhfcGFja2V0czsKPj4+
ICvCoMKgwqAgbmV0X3N0YXRzLT5yeF9ieXRlcyArPSB2c2lfc3RhdHMtPnJ4X2J5dGVzIC0gc3Rh
dHNfcHJldi0+cnhfYnl0ZXM7Cj4+PiArCj4+PiArwqDCoMKgIHN0YXRzX3ByZXYtPnR4X3BhY2tl
dHMgPSB2c2lfc3RhdHMtPnR4X3BhY2tldHM7Cj4+PiArwqDCoMKgIHN0YXRzX3ByZXYtPnR4X2J5
dGVzID0gdnNpX3N0YXRzLT50eF9ieXRlczsKPj4+ICvCoMKgwqAgc3RhdHNfcHJldi0+cnhfcGFj
a2V0cyA9IHZzaV9zdGF0cy0+cnhfcGFja2V0czsKPj4+ICvCoMKgwqAgc3RhdHNfcHJldi0+cnhf
Ynl0ZXMgPSB2c2lfc3RhdHMtPnJ4X2J5dGVzOwo+Pj4gwqAgwqDCoMKgwqDCoCBrZnJlZSh2c2lf
c3RhdHMpOwo+Pj4gwqAgfQo+Pj4gQEAgLTY1OTEsNiArNjYxMCw5IEBAIHZvaWQgaWNlX3VwZGF0
ZV9wZl9zdGF0cyhzdHJ1Y3QgaWNlX3BmICpwZikKPj4+IMKgwqDCoMKgwqAgcHJldl9wcyA9ICZw
Zi0+c3RhdHNfcHJldjsKPj4+IMKgwqDCoMKgwqAgY3VyX3BzID0gJnBmLT5zdGF0czsKPj4+IMKg
ICvCoMKgwqAgaWYgKGljZV9pc19yZXNldF9pbl9wcm9ncmVzcyhwZi0+c3RhdGUpKQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHBmLT5zdGF0X3ByZXZfbG9hZGVkID0gZmFsc2U7Cj4+PiArCj4+PiDCoMKg
wqDCoMKgIGljZV9zdGF0X3VwZGF0ZTQwKGh3LCBHTFBSVF9HT1JDTChwb3J0KSwgcGYtPnN0YXRf
cHJldl9sb2FkZWQsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnByZXZfcHMt
PmV0aC5yeF9ieXRlcywKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmY3VyX3Bz
LT5ldGgucnhfYnl0ZXMpOwo+Pgo+Pgo+Pgo+PiBLaW5kIHJlZ2FyZHMsCj4+Cj4+IFBhdWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
