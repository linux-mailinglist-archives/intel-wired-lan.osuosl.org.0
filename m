Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A77F77EDD9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 01:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 407ED41776;
	Wed, 16 Aug 2023 23:34:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 407ED41776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692228882;
	bh=20Fin+WF4tq0ckApg3YBdMP+YQTRI4e2kpL+NTh50+E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BGtP0e96y2cSsHJSdQoRx8IwtqOVCXquKFLMQq0QOVIxRxMfm/WO95dyT/Yj+jdbg
	 njku3QfqfiY3rUVabR5B5BkILvGBNLawqYxebKVfnSIYsMM+3Ws3QnX7QFk1+6N75O
	 HyKkvGRz2VdqIuxvJfTXT7u2yNci/l0uTz07tOvxX0Q5WbfHONDua5RsXHdMqk78Bn
	 IqFaZvH2KJC/e+zmIKGupp31zxQ0XlGNjYWBaqZ/6BynFdbAzURHoTnZjRCn3ghHwJ
	 tBQXHukurcsD4DGdef1PvImkNU9hcdoSDXsGrk27Hr1HyClzvBnklKAhO+DxsuNUCc
	 omAkVTMUtVoMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4eO5uiLmH-i; Wed, 16 Aug 2023 23:34:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AECC84176B;
	Wed, 16 Aug 2023 23:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AECC84176B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E75D11BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 23:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B4DB82356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 23:34:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B4DB82356
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfrRHCSRuQQx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 23:34:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8382482341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 23:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8382482341
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371563877"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371563877"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 16:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="734420943"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="734420943"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 16 Aug 2023 16:34:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 16:34:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 16:34:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 16:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bl/HpTCfPgTZg7pm44AOeZJTZcDgFQa9X/AAk0S4iLiaJFitkOlsrMwAKFAhqcPxUE2jMXgXGBL20e8jxL6liPkRvDmNNK42/f8gM0fgqOQKE2o2Yzgrk1P2JPB229hvJlVA3znQOIyjvLv0K1B8rHF8o3SgXaRyGsS3W5nd3w9ReweRgwEsI04tpFz6CvVV8pQFnDHWNjANwhVHfOms/Tb539flFuZBYeNudvvETvht4gR2lWyNRIapCJ3q1p+QjtXEYVIkWUOy0IIemoSRGYH4wXcQs+C0OFphb/w516qja9va6AtWZNJ0OxQ8Ep12fsx64TUDF3lU8C82z+iAkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bz2+Zq1cXM9HcmCydU45DYZg1sUHEDzgzhefnmhi3pk=;
 b=avUzP5Eegvnuz65U6imAwv5ejGCcDZzu2rHSfEPHqiZe/q3TSvB9x6OqHg4FjZ8OlkV4+Z/JJL84sVcQ5CC32qjExPIaRwJPY4VDlMIUn1r0gOxZrJ6mneH7asRq+tYf6bOcZU7PLqF9gDI1ACwo+COLuvQE5F+7wIQyyEiLfgXqiXlt8BqBeQPOUjPPMl8sHp0Oaw2EnBip1HyensQPq1+y0V/lAsk+HyjnUw25vn+14nxheAySTlXFcuo5bsZSj8bLJ3ML3k+NIUy8b4QQpqYrnYUnm8x91twYwaWk/iuvrHawlqXybwl+0c/MVWDESC4xRG8UnwcFVN38sEGJMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.30; Wed, 16 Aug
 2023 23:34:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 23:34:28 +0000
Message-ID: <b4fdfeaf-bb6b-e3e7-4b0b-79b5820e9283@intel.com>
Date: Wed, 16 Aug 2023 16:34:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
 <20230815223551.1238091-4-jacob.e.keller@intel.com>
 <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
X-ClientProxiedBy: MW4PR04CA0361.namprd04.prod.outlook.com
 (2603:10b6:303:81::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB4907:EE_
X-MS-Office365-Filtering-Correlation-Id: f191402c-ec1c-424f-3e4a-08db9eb15542
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lkLhwtmsicvikbF/7ydXKQnrCK7zck6wrlr+ipLlGmP6WPerbyJCFF7h3pOoKYHLolRxh5QSq+37XruN2NEljRnfgZBlDpeQaUZCt2o3kICtGrxxUCseA7bK+Fy2QaKw0AnsBP1XImpUAJJ4SW23poD06ZuiqVutucN05VY8xL8zI/cisCCNMHS9wb5FqdS4YCFNbsy245/wEKVquy7z7/iFRcBDsJKnbVpDSEGJxDHOB4CJLHOW+9FxZaNFByHPTXsWOWXbPkGsvAk1d1+av6ukQdjZcQfjYvw1IOhjZACRQDfGwZrwHHVNx8v7ycejafZlr7hp/j9xbG3kDcyk99WOETaWgKVf+X2kJ6bnpN4NFgyYS1lMJGFYJ+PN9K5dQgVBNwl2ve7TpzDkRHCqpzu0JXTk3T99Ut4L+QjdO6kHQ9pi5cnE0F3cNrxr7pTV8YF/mSj045s/OqmiX/fc8Q7v2dnmSHo8mhaWWU9fkJBTKNgPtPlB7VT5KneZeK0ydJYcah5223UuGo1uD/A6CvxdswF5Ebl9nQTauZXnzTs4Og7jfxFkXnew+VE3ttlyqPNWveYkY4GQ2f/DqiD822JKVrsvwmHoThFUKyWkw/V1LaQmqhQk8TpqMSciQzwwe5dCxpe4qO4dwnLsICI0WQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199024)(1800799009)(186009)(316002)(54906003)(66556008)(66946007)(66476007)(110136005)(31686004)(5660300002)(41300700001)(38100700002)(8676002)(4326008)(8936002)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(53546011)(6512007)(31696002)(107886003)(36756003)(6506007)(6666004)(6486002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzR3RUN4QmpmeFR6Smo1Y1BZTncxdnpiY3NIaTNoNVZDWWJCdUpuYmxLbVg3?=
 =?utf-8?B?cnVhUTNYWjJTVy9teHpXR2pXcEU3WkpabGtyMm10OEhDNTRRSDMwTG5ESzdj?=
 =?utf-8?B?NGFUUVFHTytNakRXT1RuY216Q3F0blAyOHhRN3Jka3djeVpkMkFzeWsyWUNy?=
 =?utf-8?B?TDBzU1lscXczZVhLVFEyMVRnTjNNVi94QlBtTTVzbnZtQm4rNmdleXFYVGE4?=
 =?utf-8?B?ZE1PTWVnRFlTVy9WaEFsZWovTkhlQU15bnJyY1J5TU9uOWpLbmZkSGcxcG5P?=
 =?utf-8?B?TEVzVHRDWVVOSjdVNU5LUW5HcGxGWDFXRmUvS2lFQngyYmx0eC9XTUszS01u?=
 =?utf-8?B?aHdwZVlkaGxsRmxGYmFpeVFCYldidzhaNkhaUlEzdFVRV0R4ZEJmSWhORmxO?=
 =?utf-8?B?cTE3Ulc1NEdXZTRRRU5rcTJlb3RwMDNDSnBVOWRzU3pKY3k4Q2hDQXMxSGgy?=
 =?utf-8?B?RWxSb24wekZBMzZjTGx4cVJ3YWlyTFFQNGRMQzE4RnkwVW4vdGc4cllqOVFX?=
 =?utf-8?B?MEs0NUxVeTAzQzNGVmkvZFV5alNRQjhqb0tULzZDOUlpQVJVVFl3SUZkTEdB?=
 =?utf-8?B?L3RoSEprZEtVZ1YrOHVMWitGRGdIY3BFeTlMaGtKQkFuUVhLNlY4NllDMTA0?=
 =?utf-8?B?T09kT1BFZnpYaGNySW5saCt4NWd3VDl3eS8wVkl1OVg0d1VhSmhFbllnKzFZ?=
 =?utf-8?B?KzZMMnhKaWJWRXBDeUJURHQzY01nQTNCSWx6V3djWGJwNSt4bXA2YzhOcTlG?=
 =?utf-8?B?N1MxYkVYZXk1Y3Z0VmxnUFNHMVE5VHNiVUwrRWNCZEhQcnl0UHlua1hzdkN6?=
 =?utf-8?B?RnJXblljMXp3VkRzdS9OdzZ2dUl5ankwM2F3OGY5ZExIdHIza3psbnU1d2t5?=
 =?utf-8?B?ZllWeDl1L1Jnam1IMjVhY0habEZzRzZyWmdrMFNLN0lxQU9WeG56UXBTdlNq?=
 =?utf-8?B?bnVNeVFBRE5wNjg1Zkw3K2ZDVUNtZEN0K2dzZWVJL2hCd3NTU2hHdjBIQjZR?=
 =?utf-8?B?UWF5MWd3UHVLdlFNaWVhNHNIbXYrSndVQ1BjTTRuOVgxS24zU1NUcWdKWjlF?=
 =?utf-8?B?L2JoSGhhdldQQWw2TnU3VTNCakhUd0dnZXZ0RUtlUVZLa045elFoaEp0dWhy?=
 =?utf-8?B?aS9JaFo3VFE1UHFXczE1WTdHcE5tQVFuN3AyMG1CenZRdjQrWTJXMXAwQWhp?=
 =?utf-8?B?MmZlNThPWEV4UVdlaUJWa05XMVFNRURTWFhlZDZScUNCTE13dEhGYTM5QnRZ?=
 =?utf-8?B?SmR3UktTajk3RVFjVnQ5TTVHTE9ybGw1aXg5WWNIcmRGZ0o3TVltTVNvaDRZ?=
 =?utf-8?B?Q1NEOFoyVUNaQWhqcXdkNzlLWGdadlZFdUMvZ1RPL3Y3cDI0S2d2ZXMwa2NK?=
 =?utf-8?B?b1VlQ2orMEx2dkt6UWJhTjlkNm42YlEzbVAxd0NOcGZPRnZzWUZaNzZtSkhY?=
 =?utf-8?B?aFI5VWVQYTNCRTNuTGpaZU05OUpPRU9QN0xBRnh2YU9SRThrUHJ0eFBPbitF?=
 =?utf-8?B?NG9yM0Rhb1dzc2MzYlhCKzdVWlFCaE1FQ2JPVVRhcVpseEdkSWdVN1FVTGtw?=
 =?utf-8?B?TWlneEg4ajFwUTFPaW95dEdGejBmSXIxTEx2YWsrZFFub0pJZDR3Lzl4NmQw?=
 =?utf-8?B?WXhva242RTQ0bVJLQ3dUb3dxNUM0ZnRQNCsxVE5pZDBkR09pQ2t4RkQxYjZK?=
 =?utf-8?B?QXBNS1k3ZHdpaXVvN3hkWVJ0dFB6dTBpaDVRMzhmOWVYMDZESVZGVXM1ZEow?=
 =?utf-8?B?M3lWOGoyK0RXQ0ZTTlduTHo4b1hGL1R3dE5TZHBiczljbUhCMFJZNFMyS3Ro?=
 =?utf-8?B?L2wrYnBKQ0hoeWZ0dmhtSWJxUk14VS9PZy9qb2pSbFZvUDFqRnBtSEFKeUZV?=
 =?utf-8?B?RkNLdXNMcEpLdWI4UDlIaHY3Z01ZWE5QQVc4QnN3NUxySTVkYXFrOHBMdHYy?=
 =?utf-8?B?bXVxQkpZTWpETEFiaWlEcmY1VjdGa05yc1BHSG1mZFNaaUt4YXZDcnZwZnkz?=
 =?utf-8?B?QzRPQ3diemxnTTJqZjQ3ZGtsQTZockxaYlluYi91WXhrc2l0UVhZU1hHYmhG?=
 =?utf-8?B?YVo5Y3VXOVA2ajhhVmpFV3hibDVZUXV2SXpmQ1E2dHprS005cFdLYXhsUDNU?=
 =?utf-8?B?dXNWbnNNd3ZBZnlKclVTVGxOcW9XTUJIS0NBR3NDbWdWZ0ZhV3NCV2FOWjVu?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f191402c-ec1c-424f-3e4a-08db9eb15542
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 23:34:28.1135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JYXTu5ZsHfQz/LiCqTA/N94tSaaO9nHipMxmNzcY7WlHlKcvQgbXmuYhnSz5cGi6r8bPmSwLEPI6/cpyFR8T2N014O2Se/ntZQIt4o0T+UI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4907
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692228873; x=1723764873;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9BuSeARGtSDfY6hSdvnwUrTpJoFMivkKpl8ncr6LCYs=;
 b=iTpDI53wyF12HYtn11JzJSxWPPxHQ7dHDHGK6Z44Xpxw/0vVo+MOgMXG
 EkLZHuzgbZZ0xBI18zlkfq6BDqz/DKngH33WCD33supVbmD8wbreIucMi
 SstuU+MYvK8dT3IsfOrL/yhCVw/mcbd12zkM1h+DIyE4Xr5Ns4152gssO
 XPBX8HfLTN5CZ2f1NIAKkPY1VlK5YRSuoNmGbQ2UZL5QbqGDN4MYXSixM
 JGLXsqbL206IDxo4/9yhtfvfJNjJvq0wxUVUPZclNHCGmI2lh+u1Xg3TQ
 8x1O/FynLuRqFtAhrMq3FpgFd7kDu6jThjV/p6GEo1ur8WvhVtzuYPpK2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iTpDI53w
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/16/2023 3:54 AM, Przemek Kitszel wrote:
> On 8/16/23 00:35, Jacob Keller wrote:
>> Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
>> E810-T based devices. In some cases, the SMA control access is not
>> available in the netlist firmware component. In such a case, the driver
>> will fail to setup the SMA pins. When this happens, the driver prints
>> "Failed to configure E810-T SMA pin control" and forcibly disables all PTP
>> pin configuration support.
>>
>> This results in failure to use even the fixed pin capabilities of standard
>> E810 devices, resulting in reduced functionality.
>>
>> To avoid this, check the netlist for the SMA control module before enabling
>> the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
>> feature will not be enabled. In this case, the driver flow for enabling
>> periodic outputs and external timestamps will fall back to the standard
>> fixed pin configuration.
>>
>> This allows supporting the software defined pins on a wider array of
>> platforms.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Overall it's a nice series!
> 
>> ---
>>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
>>   drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
>>   drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 16 +++++++
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  1 +
>>   6 files changed, 72 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> index 90616750e779..82c4daf0a825 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> @@ -1367,6 +1367,7 @@ struct ice_aqc_link_topo_params {
>>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE	6
>>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
>>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
>> +#define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
>>   #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
>>   #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
>>   				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
>> @@ -1403,8 +1404,9 @@ struct ice_aqc_link_topo_addr {
>>   struct ice_aqc_get_link_topo {
>>   	struct ice_aqc_link_topo_addr addr;
>>   	u8 node_part_num;
>> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
>> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
>> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
>> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
>> +#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
>>   	u8 rsvd[9];
>>   };
>>   
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 2652e4f5c4a2..9eeda3f5aa75 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -2503,6 +2503,52 @@ bool ice_is_pf_c827(struct ice_hw *hw)
>>   	return false;
>>   }
>>   
>> +#define MAX_NETLIST_SIZE 10
>> +/**
>> + * ice_find_netlist_node
>> + * @hw: pointer to the hw struct
>> + * @node_type_ctx: type of netlist node to look for
>> + * @node_part_number: node part number to look for
>> + * @node_handle: output parameter if node found - optional
>> + *
>> + * Find and return the node handle for a given node type and part number in the
>> + * netlist. When found 0 is returned, -ENOENT otherwise. If
>> + * node_handle provided, it would be set to found node handle.
>> + */
>> +int
>> +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
>> +		      u16 *node_handle)
>> +{
>> +	struct ice_aqc_get_link_topo cmd;
>> +	u8 rec_node_part_number;
>> +	u16 rec_node_handle;
> 
> I see that you are using separate variable to 'do not touch' 
> @node_handle param if it does not need to be updated.
> But perhaps you could consider to just pass @node_handle in place of 
> @rec_node_handle below, and have less code?
> I do not see any non-null usage of the field anyway.
> 
> (rationale: our code is so self-similar that I needed to check wheater 
> you are basing-of recent changes by Jan&Karol or re-doing them ;)
> answer: we are fine here :)).
> 

There will be users of this function soon which want to get the node
handle out, so I kept that functionality, but I did get rid of the extra
variable. No user should ever care about the node_handle being modified
on error. I'll note it in the function comment though.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
