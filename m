Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D66816E5F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 13:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53BE282479;
	Mon, 18 Dec 2023 12:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53BE282479
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702903691;
	bh=VepHgvwGm9YiyabbW6yp2iYoTxKs35JHGRtK3RdeRqI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DAM4W/V91BcoKe6+oN4ArjmJX4JLRHJfq4NjtE/mSzg22mHgOqIpYcEsZdEPaeVjq
	 781rWZQiMrGoLirHyFJz8oYPmPmYEvhxKN+oF4FLpMUsvSPqEZjXVS23bszeWFd85X
	 b+TfF/BO+ARBOXNtIeL5riDKdHM/u9Krrjd1J9sKX8+ssx5/mny3Ix78VhybKEm64z
	 /3e4tTp4IPMqABxOBNUKc8x+drPPFzfVuv6usjgrr2Ph6YK73phD8zpJfL2ZPRZ+Kx
	 tLjpuR/CSnpuZkDF+je7pxJHpA/is2dip+jOhZbZuhQYgAuQ2F5vwTtRqImbDn3gJB
	 2Cmivc97nX4kA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9x61-huGTMxs; Mon, 18 Dec 2023 12:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 285C5822B4;
	Mon, 18 Dec 2023 12:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 285C5822B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A07D1BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A53560F04
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:48:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A53560F04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MGj6MPaaEp0c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 12:48:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4723D60ECA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4723D60ECA
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2592131"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2592131"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 04:48:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="804511575"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="804511575"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 04:48:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 04:48:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 04:48:00 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 04:48:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBuDTbi7KLYnrlkxRrJp5KCu8F7V0vcatj2Zx2s10SMkCZq/1RbRdP0QWAL1fR65cHJNsE5xCERKCG+TVrBQvhVa3V2eY9YezahNHFBRNhevXR2kzd4xdYZusUjXRAiRUtrjOop7N5B8jngQG/dS2jjqIggNxh8SRWtT/oXJhnlfKYGKSjjWcez+98pQyM+MZZc8TfGRETlK2tKABAUbmHcRLiKJDoNBurpgEKg9tzBqeg+jze1UNN/MxZ2PAlyg6NkWp1VOcT5G0o+xgHMQXpcDwapOXdynMQsyMz9JTtjuWaRmie6y/PsGC8vIWPfmHzMDyMLSP4o7wpi00QZK5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SqJdGCBUp1bjGzEV/wDe4oVmk6ovraXgti9SGIbjrus=;
 b=M8e0HK/bnvisCERIzscqaUwQDAmXkupVblvt0UQ8fBtwMmK/f/00KwkE4g2SarLXmh1uWX0PGTfoT5foHG08Pf30Efe5ZHuaHjyqdNpoKlztJnHziCD5gdBd63BM8v+/cnJ8jz5CO4t10PcgP+NCevVTfH9/yU7zhyeNOwmSYmxOpejoswwi3lQ1wAcweMAZ0tiGNDgy1gUcqfIHH1ezP2r/x3Q/Zx50tTTPfdHR2lCbP79zagU3Z2MCT1NNHg+CL9psuE+H2cUi/qV1/oer20uUN++hMdelSRvXqE/ClG2jHVGCgeaEHfv7/ivfWd/+2Z+AMPLThQPZaHufEluHxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH8PR11MB6729.namprd11.prod.outlook.com (2603:10b6:510:1c5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 12:47:58 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 12:47:58 +0000
Message-ID: <1eb475bb-d2ba-4cf3-a2ce-36263b61b5ff@intel.com>
Date: Mon, 18 Dec 2023 13:47:01 +0100
User-Agent: Mozilla Thunderbird
To: Yury Norov <yury.norov@gmail.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
 <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
 <20231215084924.40b47a7e@kernel.org>
 <ff8cfb1e-8a03-4a82-a651-3424bf9787a6@linux.intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ff8cfb1e-8a03-4a82-a651-3424bf9787a6@linux.intel.com>
X-ClientProxiedBy: FR0P281CA0241.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::19) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH8PR11MB6729:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ede4574-9f67-445e-6f59-08dbffc78fbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FTun/lEteHzFGQFa4K5Yc1eTaoMeY34fZ90A78pV2d7W5ZQX62/w/vUfs90BGAWXal7IASMjtmbtHaHUw3Oijke32KI+nDK+cQMIyhfdpQPyqxlKeP4SyGWZmIDlW9wmdI7XyWzSkKOVuux9BpHt1T1TqKMoVrDL3sHw2J/VaZ15wLpA/o5YUFOSNmOQ26Jlqw1EYcVxIcB/jlSRtEMZXUgdBwpjfuA12Z5x5NKDr7VXPTc9WV01zqWpvIJqzIjNQJDdRNn++lOQF/BwY99xdkzUWmlx7xIEoPP4ecDf3L7X3B9LhEobBLOegMpS0RVhaPXXKi24WIVtiikDGK9LKTDnJN25pa54EZJSll/ghGhLgTKsFD1/nf8HBqujL6WW0lMB+Qn0yfSUQ7s1HuntGBFP+7lUKK3pDGzk2Xu/qvXM+T44U/yqeiMQuPtyF/GYrIzuqocfu2+bfA9H+s8a2/49ir9cLutWDSg1zGRKAAEHDX8DO2coYDBSC05U1gkoL/GjOmn2SygS+T48/5LEKD+HZ92qQzgq2bPuMDhf0/C+OHt7fUWMtnKhyLKxY/aPxXNC74tHiCFKEkMETAtHsnFpm9ZL0rFjA7KtYqybmI3fqe2dhuhfyn6e5S4EAF2gB+/RLOpC/R8HhePWJ/hK1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(136003)(396003)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(83380400001)(66556008)(66946007)(2616005)(478600001)(6916009)(54906003)(66476007)(316002)(38100700002)(26005)(6486002)(4326008)(8936002)(8676002)(6506007)(53546011)(31686004)(6512007)(6666004)(7416002)(5660300002)(2906002)(86362001)(82960400001)(31696002)(36756003)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azdZRVhJazlnRHQwd2ZBenlkaVFoSXgveVdZOFAzVG93QWkrZGZVRSt0djdm?=
 =?utf-8?B?OUdKRllZZGwvNC8vbzlVWEFWOVJFMFZEZ1JDUmdpUG80UmJPTms3b24wRENG?=
 =?utf-8?B?MkhtN3gxdEFQREQ1WG9mQlRFcGlvSXYxdndWZzVobG9PSVkyT0VJeDdsL2U1?=
 =?utf-8?B?Q3B4TlNpQjFIQ0E5RzBPZTFFR1VwNXBWTG43T2NyVUpzeFJqMlhKMWZmYkJK?=
 =?utf-8?B?b1FUWFd4c2J1cVhqU2J4MGZGWHdHMWlqOFNJMzB2QVBKaFk1N09jUHM5ODJM?=
 =?utf-8?B?WEwwNXlBT3p5YXRqUC9Fc0lldjd6NUN1c0UxVCtCbjRGUi8yelZFNzRMTFA1?=
 =?utf-8?B?UHVFRW11a3k3dkg1UkJhTXMxRTZTODNHY3JaWFJRczlTK2tzcVZDUlZwZXdq?=
 =?utf-8?B?SW44Z1B5bGJzNjJESVR3RTlVZVJOdnpBeFlXVXdoTTE5TTN3UXNubzdzcW5O?=
 =?utf-8?B?UmY4M0NaRWlCbEFLOVIxc3h5V2hpalpkNXNGYzExcnRVcS9PMFBlNis0QU9W?=
 =?utf-8?B?bTQzcDIzN1NnTXdzMXRhN3dhMTlOa1FER2N3eXl0S1E2TnF3YUYyWHlqUWMx?=
 =?utf-8?B?emVOWUsvRnFaMjE0RjhGMDV5Q1VrVzRYRFJMMmRBeXpjTWc1ZDY5Q2c0UjhL?=
 =?utf-8?B?TjJSQnMzV3g3R3llMWVXQ0x0ZnFGeEkyajRndUVzZDlnSHdyeUJYS0pXMStU?=
 =?utf-8?B?Q3ZnMGNuc3JiL2FWU2lTTkFHVFg5ZjZZdjhsR1NMRGhESGxTY2hlSXZ5QW5a?=
 =?utf-8?B?Z2wrVDdtbkFHQS95b0NRRTh0d1d4YnZrckVnT1lZai9Ybi9KQ1lpVnRjUHR2?=
 =?utf-8?B?MjVHM0RwY0hrelo5U2FsU3pFQnZoVzk2MDNObXhzSEhRVWRDbldZbTlJeEdt?=
 =?utf-8?B?dHI3bWdodGJ2bmhTZm15YkNURzhYSVBNVXlYZnR6eUI1WkNnWUFjbVg5OSts?=
 =?utf-8?B?NXFTdnNkK0hkajMzTlp2THhvbFVtRUNKV0ViNDE0YmVWVG80c1hyRDFKTlZE?=
 =?utf-8?B?ckV2TUo3TjlJR3JIN2doSUI1T3F6clhBOGVXWldreGpGaDBWL3BvcGdxRlJq?=
 =?utf-8?B?QXVUSWJyZzRDS2d5SWU5NEF6dnNaakhGMDBsWXF0TEtLdGtYRmZ4QzZNMk9J?=
 =?utf-8?B?UTFJSVZpU3RVOWI5TzFqSkkwN0NuNjk3QUlkVWlTcko3QTNFZTNQTFp4NjZ4?=
 =?utf-8?B?V29KaVFzQXhaUjFZdUg3eGFXR0d0U1VQUEJnU0czMHNYVkZHZ201OUhUbjdG?=
 =?utf-8?B?NVZFemM3S0FIN2hidytoWCswWnlPVXRQRVREdHRHMkVFVGZFYVlHbmEzOWd1?=
 =?utf-8?B?LzlIR0lFbkRFeGpWNnpFR210NWlIVHY1RkI1NXJtQWtSRlZRZGZCd0VvUnBM?=
 =?utf-8?B?c1dwSU9FMnNBc0I5UUFlazJYelpwQTRYa1pKOTdhNjBncHpabzUvVUltKzE5?=
 =?utf-8?B?UFBTaSswTHNiZWxlOS9heDNzYURKNkEwM1pYTGZTVkd3NWFhV3lFemYvR3pp?=
 =?utf-8?B?REZMekdLNU1DTW9IK1JYNlRlTitvWEFlRS8rTmptaHpiRk12V2t4RzdTZDVY?=
 =?utf-8?B?d0JHdlUvUXVnTXM5L0RyZFVzOTZkY2l6YldkSktSSUcwMXpTRHd0RFBTL2hX?=
 =?utf-8?B?Q3ZnOGxYL2VSektQcjJyMFZLaXdxeThPaXJRU21VbkQ0M3l5aDh1aE9Yanc3?=
 =?utf-8?B?OVJiS1lIWFdlVWxObk85cFNmSGp6UnMxZWgyamM1Wk8vUEVGeElCdm9kQmJC?=
 =?utf-8?B?M1F0bTZnZkd6U05NVWxiZkd4Ymh2K0FNQk55UHFZRDBYS1Q5Y2xGQ20zcllw?=
 =?utf-8?B?cEJaS0dmMXBEWmgxYWFobjVkK3ZhQk5HaVJPcmpsRkxyZjJHcHc3T3hNa3Jt?=
 =?utf-8?B?Tm1OYnRhT3FQOGczN3FIb2lNUUJKcjBWVUVsMUtHWU5jNVJLenE4UTNEZytx?=
 =?utf-8?B?SFA2c0ZzZCs1czdZZnBaazBMZjhsOU5RalpvWEhmNGxSTURtVHBsKzJETnVO?=
 =?utf-8?B?bXVGV0kxUGpXdFNnT0ZZb3hydkxtSDFzdXUwaVozdHM4dm1BY0s1TFo0czdr?=
 =?utf-8?B?emRoa0ZISHN6K3hCNjNwVkVCanI1MnlhRHkwVnE1TWtzVytERU1ocmRXemY5?=
 =?utf-8?B?Ty8xckhRU3c4T2RMUWtEcWVkZCtYcTY4WlRES0pPcTF0b09VMDMzeGN1eFJt?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ede4574-9f67-445e-6f59-08dbffc78fbc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 12:47:58.0608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wUdgUsJTIAUSPIwH8vNsuV9HEEv+RVu6+88t8WX40SbcWr8aPnixlHji5XPiVZcv9zGtnQmdv5wxq8QNiIXdWYfvnANuH4vk0qGt9ugX3Fg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702903683; x=1734439683;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZpTAUUyl+5osEaOk6LxbG3Q6jUJN4EUOmWibTH3hjXc=;
 b=NeNQvBLFt48FWHP0z6ZSyuwkdy4D69SvKQD0s4C06vWt01SgCrhTB3yU
 SFHEflBBAlGGQhHyo6ZS2AvBpmjR6zO9Tm3EoS5stwZwirmkfw2EQcGrx
 nDWkNRAQ/2C2uskfQkon+qJQ68Pd6nRttpDyZ37RWVIQYRYbOrQ8b21bJ
 IPgXee/xiTA2lb5KLU9MMg8nFSrYNprpHPfFRanweXXaWipZuLKqGmxhG
 UqBWHBcFimfBgcSNjSI40ZUQH0SbxPy5I4gu+fD7SbiqC5wnn/A0IeQPW
 eLQIl4yp1SblM9GiCeOV27iqaOmN9Nj9zwKAd8230N4oAnDiPgEPJSNxg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NeNQvBLF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: jiri@resnulli.us, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Mon, 18 Dec 2023 11:04:01 +0100

> 
> 
> On 15.12.2023 17:49, Jakub Kicinski wrote:
>> On Fri, 15 Dec 2023 11:11:23 +0100 Alexander Lobakin wrote:
>>> Ping? :s
>>> Or should we resubmit?
>>
>> Can you wait for next merge window instead?
>> We're getting flooded with patches as everyone seemingly tries to get
>> their own (i.e. the most important!) work merged before the end of 
>> the year. The set of PRs from the bitmap tree which Linus decided
>> not to pull is not empty. So we'd have to go figure out what's exactly
>> is in that branch we're supposed to pull, and whether it's fine.
>> It probably is, but you see, this is a problem which can be solved by
>> waiting, and letting Linus pull it himself. While the 150 patches we're
>> getting a day now have to be looked at.
> 
> Let's wait to the next window then.

Hey Yury,

Given that PFCP will be resent in the next window...

Your "boys" tree is in fact self-contained -- those are mostly
optimizations and cleanups, and for the new API -- bitmap_{read,write}()
-- it has internal users (after "bitmap: make bitmap_{get,set}_value8()
use bitmap_{read,write}()"). IOW, I don't see a reason for not merging
it into your main for-next tree (this week :p).
What do you think?

> 
> Thanks,
> Marcin

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
