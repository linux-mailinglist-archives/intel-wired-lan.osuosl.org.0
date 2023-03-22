Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F196C4849
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 11:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E341F613DB;
	Wed, 22 Mar 2023 10:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E341F613DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679482396;
	bh=3VvqCu0JF1Ko/hIUNZ20yVl/VKO9hs5Po0wGyU9HOrg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FMvstBf7VMQjR6QgrSwpGff5oZ4NGyV2AFsjYkzUruAafDl8QWNVOG35ZBo34eRcC
	 qezmwuJs0UrWpLk6lzwOIAnsBhS564TphsTIfB2gGPL51pRthYuS69wFOJwe7R4WY+
	 0uhA0KYZD8DN1QoqRxPHK2iECr09K5b2pi2wEroWqGFxlfJrdcbHVgEEHMXXdx4OtT
	 rveIFksxxirubxuWWB6ITkjft8gkFJ55yRrSVb2teUb+Z7WWtNEXkfTm5p5HXsozzr
	 FMtrdG6evH5uFHg+i4t7DKcVCNBdNNwfFAMsQq5g/kr7fLTCoXQjBIS1fKwginR8yC
	 bW5rsUYuQRm6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 29cSJB_324vH; Wed, 22 Mar 2023 10:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0628613B8;
	Wed, 22 Mar 2023 10:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0628613B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FC061BF327
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 10:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43A3983ED0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 10:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43A3983ED0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YPsMXOtTksZS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 10:53:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAC1B83EA7
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DAC1B83EA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 10:53:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="425470263"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="425470263"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="684259783"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="684259783"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 22 Mar 2023 03:52:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 03:52:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 03:52:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 03:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PRGwPnZrHlaZXw77rS6YaFHZDiDFG840dWz3qqtDOwev7Ygj1gfyV3RRGsta+eFmYU+OFORr55NJoycJG+eQrhmRXCOjZQDDBQ02mcW/whSa7e+VkXlRM/e2Oigg7cynsoHuiveJDCbmMmHkHfCmBLG6qYBdLlurz15x3qGPs1Iyi0i3XaadKGLreo+Hoz2VvmVIztYDpKjwgNQ0iCgu6DL/L9moHUyokI3Gpni0I+kfdYx9hxI5vN3ZNDih1dcnNa7HBwvl5ObZjqqkpnubRtwpCdAAdiHprYR6ko1uP7Jkoa/LXQpHjnOZoUykd17zAwLiyO5DpYrt2aVC3gqlNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4DT049AO9dHdaZ0tfwtDSFL4UUV/qpQRwp4Sctv5Zuk=;
 b=cM5BNKFl8gpFiHDMoEmrXgc0UwQk4urLXlZb6/HcGlBdqvT3PUa0Fukvac2SwSzF5yx1aysbuE/FM25EpRAZHjBX2orz9+ERNc+bDsa+W9sEdEDVkwylFVjQLPkVlPfrHULX9JrlJmsU9Av7n9AuN7YyMwd9sGdjoIeRQtvy2PFVW3s6LiSo5ZwgMlWqltabQfR2Xuw69yyurI9LeNH4TAhfL3SRpOdCjHvcZZ567DIWD6Khxe1QTYe95RPPKktZDGRphBqNSlerN6dDOOFhldZ1Ulqh5Xe2TGhWCPIMytxaKwGyDpxYwPJ4m9gst9y1/vrNXm/HdqDD5pbLdppi3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by BY1PR11MB8031.namprd11.prod.outlook.com (2603:10b6:a03:529::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 10:52:50 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb%8]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 10:52:50 +0000
Message-ID: <910a321e-d545-6eb1-9a9b-58bfa1ac908e@intel.com>
Date: Wed, 22 Mar 2023 11:52:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-4-michal.wilczynski@intel.com>
 <a57f2fd4-e412-9643-953d-a41a690a55d9@intel.com>
 <4b194eb2-9944-8594-860c-d77d2b6d3a98@intel.com>
In-Reply-To: <4b194eb2-9944-8594-860c-d77d2b6d3a98@intel.com>
X-ClientProxiedBy: LO4P123CA0617.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:314::18) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5603:EE_|BY1PR11MB8031:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aecb192-5e47-4eed-68a6-08db2ac3941d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gKQUYcUEPiEU6xT0+nH04VY5+S9owXubWBj77TrgvjWWRcohERk0N3++zc66A5N1zSdikKdeCO1vLVanLavVKOOY49hFsYaaXnNRHte8u4I+6ZLP9UytsO5uaBKJfXAn4Iy+097EtiDP89L7vfOohE4W9uklt1WhSahOPx48IsfPX6H+oEryFKJcOPXTbhqR71/X+efVxG/1BKF2ERFyXDWBqsRPkfMMncosjjyQh4K5heebsimUUaUieqZ2I2b7VaGpwdCb9xpvU9LllsbvS0NZUayWThoZyU396E3iNvLs73RZCV0hWwik7zOJ31DbMsKdHV3/G75ND4bf/E1pv0zmnm5qxNR01/2nvT7JvzapilEJ1Vo7y3DBrAyIOz5Dh19Wp2XvUrYo5u2zazV/Q+D3NlmGdinAlqo9ZncSZDf7YIvBi5fm4DtY4ASrxsTa9j+gsn3uaG/23VVmrie+oUMONAwqfJIZHE15aBWYPu9cwb6w35oY8OiZCVZ0LBEUGSkDLkPGGzmo7hELcVyyc4x9tSXneyISULZL/iahlQUveCuvIpTyuShaY/8eOBCjMwRbZmQf2fU9PFnkBDx3dzI0oRfeUv9KCsWYgwfxgQaZ/sMlpz004aFN6Naif+bU3HqB2mTHVnox4gJBy7k8BW2rCYO1nm+xoEVhYt3Wvga4KvqY3fEbBEXzQZdiHDpRs3GGwl7DXFTed0EtdK/OgoGhxrj68YQeIT0tQVPOeiQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(396003)(376002)(136003)(346002)(451199018)(5660300002)(41300700001)(86362001)(38100700002)(8936002)(36756003)(31696002)(82960400001)(2906002)(6666004)(6486002)(83380400001)(53546011)(478600001)(2616005)(186003)(6512007)(26005)(6506007)(8676002)(31686004)(316002)(66946007)(66556008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QU1meHYweng3dnZQSVlUVWY4ZnBFVm1OWDJwVWlkOXJLZUoyTUlkejkyQTZU?=
 =?utf-8?B?b0JIMk13OHVLTUQvM1gxOG02TWhLV21jWGdWMXBwUG9hRitZYkZGdFpOQ3pU?=
 =?utf-8?B?ODFYWEVLNkYzVy9rWWdMWVh4ZkFkU25xa2wzWVNDKzBVbVJiVmZTNWNvWHdX?=
 =?utf-8?B?Z1hWWVV5eTBTRERBS2trd0FIM3lKMVdLbUlGSkJmQmd6aXRUdDlReWJuV0dV?=
 =?utf-8?B?ODgyMVJSMHhFZ25WdUlpZWl3S2oxbkU1aW4rRmV0U2docmYzN1A5ZzZkNkVh?=
 =?utf-8?B?amxYVWdLYnM4R1FpVklEVnQraUxJQzZlOEk3QkZZMUVCcnZPWXgyWlZvMmkw?=
 =?utf-8?B?bEF0eUZZMG1DdXZGejRrNVZCcGlvdlA5MVZES3d6Vk1oQUY0RENEWWg1czFn?=
 =?utf-8?B?Q09jTEpXZk9HQndVTE11V3BYZElvMWVzdjNWZERkL1hKRllzWEZJZFF1Y1lv?=
 =?utf-8?B?V2FjZGhmNGpkbnk3bFFXcWl2aDkrazczZE91bGNpMkZmR1F3cTRtdzUybHU0?=
 =?utf-8?B?eWNGd3pDZ243MDRTUERLTlFPTHNEVW40cDQ4eW4vTUNrZ2ZXcXhXUXRac1Nj?=
 =?utf-8?B?M1BlYUVhdTBVaHZIT1BPMFltQ3picjZsUnFmNkQvTnMzNmxzaEw0NmNBWGdl?=
 =?utf-8?B?VHZBZXovSm9RZmpTV2VxaDFlVEUwbkpPUWFFN1pOQjllUDVrR3JrZkVscU04?=
 =?utf-8?B?dE54MlJMNko3azE0REFPRUJjS05kV3BxUDBlb3htYVJqQ0YyWnduVlFvQSsz?=
 =?utf-8?B?RG5xMFRIRU1lTHgrTFMwK1JiSFg5bGNiUzVxMlVRcElOaVF4SitXR3ZVN05j?=
 =?utf-8?B?M3BXRlZVQWNLSVhwNFNrenhTbm9qalFSaHBKUlVoU3hhSDhmR2pUZ1dpeG5z?=
 =?utf-8?B?Z0szdUozWE0yOUQ4andrRTNZTUIwWFZLMDhMNE8vdWVXamFTcjFFeldEMm8z?=
 =?utf-8?B?VEtGVnNpdEJuakY4VzNmbElCaVJrNmZncVNtQXdwa2JCZlFXaXFSS1l4T2pp?=
 =?utf-8?B?Q3ZjdnowQWdZUHRuWHNqdjdaTWVmYU00eXVQeEdOZW96NGtYSjJyMnFsYmJM?=
 =?utf-8?B?TStOWUE3WEc3bVNjcXd3QlJ5cVJSajc5NmZsT1lCTXArU0t0R1BKKzBMaG1D?=
 =?utf-8?B?WUthck11L0YwUDhDWURZWVUxeFNqcFUwaTZXUmEwRFcyR3FvSjdkWlpLV09n?=
 =?utf-8?B?N0hqL2N3NnErT1NSaTVtbWZtTlhSa0lCT0F3NHBsSDNXSHF5ODl5bGhLR2pW?=
 =?utf-8?B?OHRJUk1LYXVESXFhc1QzNTZNZEw5WUthMnI0MFJZd2lKYUxRZ0U5OU55MUFD?=
 =?utf-8?B?dmlhODlKVlYvVmErMTJmRkVPZFJwZ3ZIcFZubC8wdnFFU2FnQ2tIZnBFM1BV?=
 =?utf-8?B?Q3lGRkUvRWVCcUZvOEhCV045VkJPRWQ5WSszUktZVndWeVdsZ3RKN2JXTVcz?=
 =?utf-8?B?dDc4MkRsd2FxMWVndzV1UWFnYzZ6N3RNWld0bnhhY0pRY2kzZFJBK2FqWU9Z?=
 =?utf-8?B?NjRqVXd0OHhramNjMTNCOXJWaStUVWQzZEx1WWJyVXRHSkVTTEVuV2V5RDVh?=
 =?utf-8?B?K25tTjI2UDlQQVlObnJOeG8wQ3pRc2tGYUtuTVpxams1VHQzcUFjT2RVUTJP?=
 =?utf-8?B?UGtTamM5RFFPRzgvQUFlWmxWbW9qSHZnYVJyRHhQanErcWFUTTlJZ3psVUIw?=
 =?utf-8?B?MTR1ZzRXOTlQZVhSQWRFY09pdEQ1Q2tYK2MzQkt4dldPWWNZMXBLUGYwMjVY?=
 =?utf-8?B?bFBNallXSEZnK25WaHRWcWt3OTJsc2hCbnVKQlJyZTN5a0JEQ09IUksxT0lE?=
 =?utf-8?B?UitucGxoQlBZSE9zV1ozL1oxWkpUbzVoNVZFSEdUMStZUGY0SWZlb3hBalBo?=
 =?utf-8?B?cjluZWpocGlWT1J5MWpGWEVEY0FqRG1pYkM4T21FazVVb09UcVN0TzZmTUNs?=
 =?utf-8?B?QUhZQUN2OGxpQWxxZWJ2RXpENHFua3lCSGgvakh5eC9TQzV3THZYYXVBdjIw?=
 =?utf-8?B?UCt1bXI4MkVnV09QR0lIdXprSjMrU1JUQ25ialYvUWVqSzhjMS9HRzkzMVc3?=
 =?utf-8?B?OEtaQ2dtUkZCb3pxUVdRU3dpVk9qRy9iNkpJYUJBRkZKRTFIeWhXNG9vYmJD?=
 =?utf-8?B?cGZPNWN6N0VhanRNeGVrOFRFR1pJNUwraHNZakZNZDRFYmk0R0F4Y2xUL0k0?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aecb192-5e47-4eed-68a6-08db2ac3941d
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 10:52:49.8906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXa6/g5QuBe+6yfrF7stOW2keOeD03oqFatkFXsLA0CCeVzR/DwOn8LFnkBBEMQUQhgW+smbWajawNGR++Jjl9AArejF5sxcGPJF1iT1xog=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679482388; x=1711018388;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4DT049AO9dHdaZ0tfwtDSFL4UUV/qpQRwp4Sctv5Zuk=;
 b=F1P7jQVdCKlF12Jc4gCtl8hhvpeW+QoErW1n+yGdIuWRK7TmWQe0s95Z
 zqQp+ZVJIiD90DgcK+PPb8/whbJWk4QELLPhQAvHRDi/mfQOCI/YTwigQ
 ddeDpr30e6Z7NcuNrOeztN99AAs78ENEYwrkG0UiuWAf1NH03fnOWVocX
 QxiRQUHInzVYFZZkLuNNGhevb/1MVncmj3aSz1RH7IE7NftvFcPje8Sid
 jg4zdvEFJoYK7zqUWtt/iSnNpVSAq/2vGAaw83V5glbjGXSu28idjbivL
 GVcC4TdKdUvwCgcHPGr9GODXpJiY45JhlxVfFexwSJIjW2p2QlvHVyrRV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F1P7jQVd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: Enable
 switching default tx scheduler topology
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzLzIxLzIwMjMgMjozMyBQTSwgV2lsY3p5bnNraSwgTWljaGFsIHdyb3RlOgo+Cj4gT24g
My8xNy8yMDIzIDY6MTcgUE0sIFRvbnkgTmd1eWVuIHdyb3RlOgo+PiBPbiAzLzE0LzIwMjMgMzoy
NSBBTSwgTWljaGFsIFdpbGN6eW5za2kgd3JvdGU6Cj4+PiBJbnRyb2R1Y2Ugc3VwcG9ydCBmb3Ig
dHggc2NoZWR1bGVyIHRvcG9sb2d5IGNoYW5nZSwgYmFzZWQgb24gdXNlcgo+Pj4gc2VsZWN0aW9u
LCBmcm9tIGRlZmF1bHQgOS1sYXllciB0byA1LWxheWVyLiBJbiBvcmRlciBmb3Igc3dpdGNoIHRv
IGJlCj4+PiBzdWNjZXNzZnVsIHRoZXJlIGlzIGEgbmV3IE5WTSh2ZXJzaW9uIDMuMjAgb3Igb2xk
ZXIpIGFuZCBERFAgcGFja2FnZShPUwo+Pj4gUGFja2FnZSAxLjMuMjkgb3Igb2xkZXIpLgo+Pj4K
Pj4+IEVuYWJsZSA1LWxheWVyIHRvcG9sb2d5IHN3aXRjaCBpbiBpbml0IHBhdGggb2YgdGhlIGRy
aXZlci4gVG8gYWNjb21wbGlzaAo+Pj4gdGhhdCB1cGxvYWQgb2YgdGhlIEREUCBwYWNrYWdlIG5l
ZWRzIHRvIGJlIGRlbGF5ZWQsIHVudGlsIGNoYW5nZSBpbiBUeAo+Pj4gdG9wb2xvZ3kgaXMgZmlu
aXNoZWQuIFRvIHRyaWdnZXIgdGhlIFR4IGNoYW5nZSB1c2VyIHNlbGVjdGlvbiBzaG91bGQgYmUK
Pj4+IGNoYW5nZWQgaW4gTlZNIHVzaW5nIGRldmxpbmsuIFRoZW4gdGhlIHBsYXRmb3JtIHNob3Vs
ZCBiZSByZWJvb3RlZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8
bWljaGFsLndpbGN6eW5za2lAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIHzCoMKgIDIgKwo+Pj4gwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuY8KgwqDCoCB8wqDCoCAzICstCj4+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uY8KgwqAgfCAxMDQgKysrKysr
KysrKysrKysrKy0tLS0KPj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgODkgaW5zZXJ0aW9ucygrKSwg
MjAgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2NvbW1vbi5jCj4+PiBpbmRleCA0NzdhNmIxNTEwMGYuLjM3ZjI3YjE0NzEyMiAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMKPj4+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMKPj4+IEBA
IC0xNjk2LDYgKzE2OTYsOCBAQCBpY2VfYXFfc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0
cnVjdCBpY2VfYXFfZGVzYyAqZGVzYywgdm9pZCAqYnVmLAo+Pj4gwqDCoMKgwqDCoCBjYXNlIGlj
ZV9hcWNfb3BjX3NldF9wb3J0X3BhcmFtczoKPj4+IMKgwqDCoMKgwqAgY2FzZSBpY2VfYXFjX29w
Y19nZXRfdmxhbl9tb2RlX3BhcmFtZXRlcnM6Cj4+PiDCoMKgwqDCoMKgIGNhc2UgaWNlX2FxY19v
cGNfc2V0X3ZsYW5fbW9kZV9wYXJhbWV0ZXJzOgo+Pj4gK8KgwqDCoCBjYXNlIGljZV9hcWNfb3Bj
X3NldF90eF90b3BvOgo+Pj4gK8KgwqDCoCBjYXNlIGljZV9hcWNfb3BjX2dldF90eF90b3BvOgo+
PiBTZWVtcyBsaWtlIHRoaXMgc2hvdWxkIGJlIGluIHBhdGNoIDE/Cj4gSSBzdXBwb3NlIHNvLCBv
cmlnaW5hbGx5IEkgd2FudGVkIHRvIHByZXNlcnZlIHRoZSBwYXRjaCBhcy1pcyBmcm9tIE9PVCwg
YXMgaXQgd2FzCj4gZnJvbSBhbm90aGVyIGF1dGhvciwgc28gdGhhdCdzIHdoeSBpdCBlbmRlZCBo
ZXJlLiBXaWxsIGZpeCB0aGlzLgo+Cj4+PiDCoMKgwqDCoMKgIGNhc2UgaWNlX2FxY19vcGNfYWRk
X3JlY2lwZToKPj4+IMKgwqDCoMKgwqAgY2FzZSBpY2VfYXFjX29wY19yZWNpcGVfdG9fcHJvZmls
ZToKPj4+IMKgwqDCoMKgwqAgY2FzZSBpY2VfYXFjX29wY19nZXRfcmVjaXBlOgo+PiBbLi4uXQo+
Pgo+Pj4gKy8qKgo+Pj4gKyAqIGljZV9pbml0X2RkcF9jb25maWcgLSBERFAgcmVsYXRlZCBjb25m
aWd1cmF0aW9uCj4+PiArICogQGh3OiBwb2ludGVyIHRvIHRoZSBoYXJkd2FyZSBzdHJ1Y3R1cmUK
Pj4+ICsgKiBAcGY6IHBvaW50ZXIgdG8gcGYgc3RydWN0dXJlCj4+PiArICoKPj4+ICsgKiBUaGlz
IGZ1bmN0aW9uIGxvYWRzIEREUCBmaWxlIGZyb20gdGhlIGRpc2ssIHRoZW4gaW5pdGlhbGl6ZXMg
VHgKPj4+ICsgKiB0b3BvbG9neS4gQXQgdGhlIGVuZCBERFAgcGFja2FnZSBpcyBsb2FkZWQgb24g
dGhlIGNhcmQuCj4+PiArICovCj4+PiArc3RhdGljIGludCBpY2VfaW5pdF9kZHBfY29uZmlnKHN0
cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNlX3BmICpwZikKPj4+ICt7Cj4+PiArwqDCoMKgIHN0
cnVjdCBkZXZpY2UgKmRldiA9IGljZV9wZl90b19kZXYocGYpOwo+Pj4gK8KgwqDCoCBjb25zdCBz
dHJ1Y3QgZmlybXdhcmUgKmZpcm13YXJlID0gTlVMTDsKPj4+ICvCoMKgwqAgaW50IGVycjsKPj4+
ICsKPj4+ICvCoMKgwqAgZXJyID0gaWNlX3JlcXVlc3RfZncocGYsICZmaXJtd2FyZSk7Cj4+PiAr
wqDCoMKgIGlmIChlcnIpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4+ICsKPj4+
ICvCoMKgwqAgZXJyID0gaWNlX2luaXRfdHhfdG9wb2xvZ3koaHcsIGZpcm13YXJlKTsKPj4+IMKg
wqDCoMKgwqAgaWYgKGVycikgewo+Pj4gLcKgwqDCoMKgwqDCoMKgIGRldl9lcnIoZGV2LCAiVGhl
IEREUCBwYWNrYWdlIGZpbGUgd2FzIG5vdCBmb3VuZCBvciBjb3VsZCBub3QgYmUgcmVhZC4gRW50
ZXJpbmcgU2FmZSBNb2RlXG4iKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+PiArwqDC
oMKgwqDCoMKgwqAgZGV2X2VycihkZXYsICJpY2VfaW5pdF9odyBkdXJpbmcgY2hhbmdlIG9mIHR4
IHRvcG9sb2d5IGZhaWxlZDogJWRcbiIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIp
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJlbGVhc2VfZmlybXdhcmUoZmlybXdhcmUpOwo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIC3CoMKgwqAg
LyogcmVxdWVzdCBmb3IgZmlybXdhcmUgd2FzIHN1Y2Nlc3NmdWwuIERvd25sb2FkIHRvIGRldmlj
ZSAqLwo+Pj4gK8KgwqDCoCAvKiBEb3dubG9hZCBmaXJtd2FyZSB0byBkZXZpY2UgKi8KPj4+IMKg
wqDCoMKgwqAgaWNlX2xvYWRfcGtnKGZpcm13YXJlLCBwZik7Cj4+PiDCoMKgwqDCoMKgIHJlbGVh
c2VfZmlybXdhcmUoZmlybXdhcmUpOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gZXJyOwo+Pj4g
wqAgfQo+Pj4gwqAgwqAgLyoqCj4+PiBAQCAtNDcyNiw5ICs0NzkyLDkgQEAgc3RhdGljIGludCBp
Y2VfaW5pdF9kZXYoc3RydWN0IGljZV9wZiAqcGYpCj4+PiDCoCDCoMKgwqDCoMKgIGljZV9pbml0
X2ZlYXR1cmVfc3VwcG9ydChwZik7Cj4+PiDCoCAtwqDCoMKgIGljZV9yZXF1ZXN0X2Z3KHBmKTsK
Pj4+ICvCoMKgwqAgaWNlX2luaXRfZGRwX2NvbmZpZyhodywgcGYpOwo+PiBUaGlzIGZ1bmN0aW9u
IHJldHVybnMgYSB2YWx1ZSwgYnV0IGl0J3Mgbm90IGJlaW5nIHVzZWQvY2hlY2tlZC4gU2hvdWxk
IGl0IGJlIHZvaWQgb3IgYmUgdXNlZCBmb3IgdGhlIGNoZWNrIGJlbG93PyBJIHRoaW5rIGZvcm1l
ciBzb3VuZHMgYmV0dGVyIGFzIGNoZWNraW5nIHNhZmUgbW9kZSwgdG8gc2V0IHNhZmUgbW9kZSBj
YXBzIHNvdW5kcyBzYWZlciA6KQo+IFdlbGwgaGVyZSB0aGUgc3RvcnkgaXMgYWxzbyBjb252b2x1
dGVkIDspLCBvcmlnaW5hbGx5IHRoZSByZXR1cm4gdmFsdWUgd2FzIHVzZWQsIGJ1dCB0aGVuIHRo
ZXJlIHdhcyBhIGJ1ZyBpbiBPT1QsIHNvbWVvbmUgZml4ZWQgaXQKPiBhbmQgaXQncyBsZWZ0IGxp
a2UgdGhpcy4gV2lsbCBmaXggdGhpcyBwZXIgeW91ciBzdWdnZXN0aW9uLCBmZWVscyBzYWZlciBh
cyBwcmV2aW91cyBhcHByb2FjaCBpcyBhbHJlYWR5IHByb3ZlbiB0byBpbnRyb2R1Y2UgYnVncwoK
QWN0dWFsbHkgSSd2ZSByZS1yZWFkIHRoZSBmdW5jdGlvbiBhbmQgaXQgc2VlbXMgdG8gbWUgbGlr
ZSBpdCBuZWVkcyB0byByZXR1cm4gdmFsdWUuIFRoZSByZWFzb24gZm9yIGl0IC0gaXQgY2FsbHMg
aWNlX2luaXRfaHcoKSwgaWYgdGhhdCBmYWlscyB3ZSBkb24ndCByZWFsbHkKd2FudCB0byBnbyBp
bnRvIHNhZmUgbW9kZS4gSW5zdGVhZCB3ZSB3YW50IHRvIGZhaWwgdGhlIGRyaXZlciBsb2FkIGFs
dG9nZXRoZXIsIHNpbmNlIGl0J3MgbXVjaCBtb3JlIHNlcmlvdXMgZmFpbCB0aGFuIHNpbXBseSBu
b3QgYmVpbmcgYWJsZSB0byBsb2FkIHRoZSBERFAgcGFja2FnZS4KCj4KPj4+IMKgIC3CoMKgwqAg
LyogaWYgaWNlX3JlcXVlc3RfZncgZmFpbHMsIElDRV9GTEFHX0FEVl9GRUFUVVJFUyBiaXQgd29u
J3QgYmUKPj4+ICvCoMKgwqAgLyogaWYgaWNlX2luaXRfZGRwX2NvbmZpZyBmYWlscywgSUNFX0ZM
QUdfQURWX0ZFQVRVUkVTIGJpdCB3b24ndCBiZQo+Pj4gwqDCoMKgwqDCoMKgICogc2V0IGluIHBm
LT5zdGF0ZSwgd2hpY2ggd2lsbCBjYXVzZSBpY2VfaXNfc2FmZV9tb2RlIHRvIHJldHVybgo+Pj4g
wqDCoMKgwqDCoMKgICogdHJ1ZQo+Pj4gwqDCoMKgwqDCoMKgICovCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
