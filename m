Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5B56189CC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:45:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BD75813B2;
	Thu,  3 Nov 2022 20:45:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BD75813B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508345;
	bh=latrnRzt5cC2QyfwLvpN+OiP6UVhWh90Cf/J6fkZzCg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1SrNQm4ObJDjIwioDJF1j+uFCsxxToxy09VsNT5NCkxnOgHgw3WqxqDe7sZG93ovr
	 9phkFzJdM8Udc/KGzgZBZAZ+JaOh+GpuLFcP0Jt/heXS8Zsbloo0RvoTRKzMVTqcS1
	 mtDXVvj1GhY5qvJP1Xov+lGidIvntDmK++vy4yp8N3XCWtWgk5F9XqK4qZvGxjz2Wj
	 VLWwj1VCJQD/l0FF+GlDfPLLi3V1ScfjGLxqglT1Lz9jRo5fNyzRpRSzPeB3Gu6QdJ
	 sa0GtCtQTImOmJMVFMwsvDK6TjgXRAQz5qr+HJi2Xc0SQsHeD3XZYrVy3wSazfP8bv
	 Jef6Kcb5DPWPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vXawlfLMEAjX; Thu,  3 Nov 2022 20:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2660881F96;
	Thu,  3 Nov 2022 20:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2660881F96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93EFA1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6ED7860B09
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ED7860B09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jk8dXg0wlHMh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:45:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7B8260F8D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7B8260F8D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="289518485"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="289518485"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964082494"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="964082494"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 03 Nov 2022 13:45:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:45:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+twrNtBa7sTrigCfAa8yakcoJrUpqWFI//ZTr0nrYNP0Ss/+eF/d6xWiqIJZ4iOiFs9y6wZzzp71otdbUrHdfw+53seiuI6EPustKS9qGTKYtVT/sZ0RmWpWHjrzrtaf/wj+Ss9S7ld8+pFeuFmgVEKvpH8wE1FHG9MgmCI4tcpEvCZKC8klw+BpCmBnwytAaH0KA6pJd3l4rkBoraIs/ps6h9hGzB8m9zNUP3pTW0feRo3HxudPGPWzS06yc2d7lURiU6Oexf1YA62+UbotCrYKLr/mymSA9+hzmRRI7TQG3V1Oz8gRAsYcTky/yTcfHvGRsu1Wz93+koN7Uw1Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFrQEbtLak1GCLuUz0X7BWd/8BuiobpbPW0l3qvJZ9I=;
 b=YxvcAsth/40rZj6u2/Ja2N9HNHPDMSpMMgYHhg6OuPjSyAnprdaAVH95FMJy6O1Nc7Z62TQjA8/wWE224pvXSj5snG48rxDMUqCgSU/hGjHFPnojeiwtGQAHFlmYvpzdXqIIJSgT5r5YF2dmrkq7UklHEQOvpjJwblTX8loLC1EvkWdP9SOgW5NJ42F8LBbctx9h2rleMB+L1CYvrUYuMsIwqCC8t5/lsQcJYkl6j7tLDQwLiQp6q6YwMzUZZAQaQxb0TLXXnuH14r9PvfbTTWzRHh1otz1KotNzNwvJMDwhGvxN28LhxIf7Mi8Tiqvfw6ho1rnCnmM4hCFjbL2lOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW5PR11MB5810.namprd11.prod.outlook.com (2603:10b6:303:192::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 20:44:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:44:58 +0000
Message-ID: <8d90d805-0665-048e-2578-75280c7355bc@intel.com>
Date: Thu, 3 Nov 2022 13:44:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-8-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221101225240.421525-8-jacob.e.keller@intel.com>
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW5PR11MB5810:EE_
X-MS-Office365-Filtering-Correlation-Id: 65589db8-960a-4d17-4636-08dabddc4583
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qKmjxVKEKggbIg1k4BHuE2FrOo3uCWCGZ2RiQpKokkaJagzy9jkZL1rR3V/wjFLw1VSSWoP13XLUYoPTY5MIBxmuhoLEGTYSvEwFslrnNc39U31jViRuk2nLYnMZX9wA6Nd9RnNixSJI6to7F733+mFzOdVNi3w/TwhwLGlr9FRwl+jCYYeEN5wDZDB3ra8AYbi3TJaMbfKrq2GQxDSlxBWJkDnku+/KCnZDb0kZULZQP68RNaejLM8QVXJlOvHJgwKOc2F5ZnBhTNkmou2qAy/hSFZDFnqsmm7M+vvtK/g+bwJpZ+9GHX/hTdt2pSEHWG50ewaT5GALRTTs/xzlI+VH1jPoTfOytEOj25mFGcSoEU8xBshbeRSS9GI7phNL2dORGqX+NEekNE8oO5qK5XBQC6Gn8LnbAUxSOYDkBzUsV1VqcTnbqGTqiybdImSNsHo/9GoHi6unOc2rKB4jNm5R0X64VQgAsQiNS3gUIOaD+Jz132yK8HVZqlxXIcMYho3x8pYyK7nn9PEcVzhd1oqcYHGJr0ecDkyy87q/a83m4vnc/phNAJppl2NVR4QnzLA6NwX9aECDlsIrvHppvMsPeEOwQjVxm4NPaIz6dfTVtxjhDsdiTVBF8W2kb17pnomjON93Op+OLUwqcfqL4nJb/fEQQFRE98JO+k9dl8pEdAqeCOx2By+SNe2URc+MDzI5LGiamjk3frELYd8nPHGL+I7giViNVKBm86TCkMgry5jMqkHQxwCQKDnuJTc7NaZz2lpCQjKMdmScZuIXJJTk6pVEeHYgFDILxZ8py88=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199015)(86362001)(36756003)(31696002)(31686004)(38100700002)(82960400001)(6506007)(2906002)(83380400001)(478600001)(26005)(2616005)(53546011)(6512007)(186003)(6486002)(316002)(8676002)(66476007)(5660300002)(66946007)(41300700001)(66556008)(8936002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akxnbnVGUVJ6d2h4V0Q1OUF0RGtDbmwvdnE4ZkhWZUZ3eWpuVEdZL2J5ajFG?=
 =?utf-8?B?cXh0MVRlWncvclpvdDJYb0RwN2dOZmcralYxS3ZYMFk2Yk5YNFg0T2hQWGdi?=
 =?utf-8?B?ZW1xKytRc0huSG8xSUliZC8rWTNiQWovdS9zaU9TM1FxQlM1WWhHY24rR3Jz?=
 =?utf-8?B?U0dYZVlnSmxZUE1tME9CNHJBbDVmb010bmZzRS9RTG10VTVtdG5sM2Y0ZElF?=
 =?utf-8?B?VUozRlNQQlc4aHZMdEV2L2lkUzU1VG4vZnFzYkhoQU5seFhUSS92ZHg0bkdq?=
 =?utf-8?B?dXhIUlR1STMwQitlUzFWdjdNWUl3QjgzN3lDdFVvWUVMWGx2RUxYVkdkWmRY?=
 =?utf-8?B?SzFMN3NROEtIZS9UL0pjZkVZaElSZ2tmUFE4MXh3R3hlWGVsaUwrMDhjNkpw?=
 =?utf-8?B?WkM4eVJNZ1BnVCtmV2IyYkFtR1prNVpZSlhFK25SRzVCZEN6RkQzbk1WRkcw?=
 =?utf-8?B?NGZMbGthbjBqMjlmYUpaaVpmZ05sVWZwOW1FV0hnNkUwNGZSMVU3K1FtYnl3?=
 =?utf-8?B?ODVXTS9WdTNBWWcySGlldHppVDZWb2dUUk5ZaGVuY1gxTHBGWWZqdngvcFlz?=
 =?utf-8?B?U08rOHlIVVRLMnNuaWxmbEdmVXErczVTcWJuSkErK2dWbjZta0lic25ORkpW?=
 =?utf-8?B?dFVwckNycWdJUklGbVB5WXRCbTMxMytKUStSb1lPSElld0NXVEVqd2lxQmVY?=
 =?utf-8?B?NHVsSm9oRlB2UVZ1RGtnTk5hSDM5dy8yR2tJcU1IdUczdEgyWnRyRlpDUFN0?=
 =?utf-8?B?WC8zcGM4a0xBVlNrZzU5WTdCN3dlZXQvNXEveVIwV04vUjVMYS90MVpiSkZN?=
 =?utf-8?B?Z2syZHoxSVpNVEZabGJyMC9MZTl3VHI2S3hER25pWmZMZGNBY3dMOEVxN2xC?=
 =?utf-8?B?V1NrNjlWemdRVTMxTE16dXluVnZFMXRZNkMyejIxSmdaK2hvVGhKSHpvNDdV?=
 =?utf-8?B?eERTK2xyUy9qc1pqL2tNdXAySGh6YVV6blpBTThyektnZUlhUFM1TklGUEQw?=
 =?utf-8?B?QnlVNjFTaHVpQjdyeW5lTVRMS1V3R3VBR1dSUytYMHhTaFR0c0MwdTRaOUIy?=
 =?utf-8?B?LytKdWcvUmhOYmFEbFZPSW1PcmgxbTJUaHNIMjVaeDFTdXdNcnRqbjZQalRr?=
 =?utf-8?B?dDZ2R3QzSnBFcUtSZmVVY2gxeW9lMTBIc3JrVnVHWkc1Q0JZUEFvblZGb1F3?=
 =?utf-8?B?d1NrUE1MR0xXWE5GMVBRMFRIcHp1aGxCSW05cXE5OHhZeFMyRXZkNTFGa3kw?=
 =?utf-8?B?djVqcEJodXU1czBoamlmVmU1Zk1HWFIvUDlVRXpmMW1WOEsvSFVWcGU0d3A3?=
 =?utf-8?B?aDlXWFJpYlFmdmJ5ZDRtYU5HOGt3N1N4Q1QrSFhnWWc3YW5lVzRqY3NlOXRS?=
 =?utf-8?B?MlNUV3FudjNmS3FjYTc3enZzaDZsc2RmV0l5WDd3TWoxUzVkMnBqZ2s1UVZL?=
 =?utf-8?B?MXBlZTZ4d0lNYlcwTTU3SW9zeTBBcnpXVzY4Vi9aNkxTZE8wN1JNZnFnNHlJ?=
 =?utf-8?B?UEg2c2JGMUdUQS9mZkJ0eTVVYmUyWlFTVVlMeUVtU1dnOGtpTk9qeUtnbDRN?=
 =?utf-8?B?bEJCR3VJQ3NPa215UXd3dkNnak04cjdKT0pWK1Ruamx3RHhrZDhCSmI3M1pZ?=
 =?utf-8?B?WU8zbTd2MzFKc09vMDllZ0c0c0ZMYVNzZ01XaGkyTWprMEhKZ0MrZWFGZ1Iv?=
 =?utf-8?B?aXE4bnF5WjZENkVWalFIQ1pWckVrWmNKSlJjY1hnbzFNTE9TVEF2cVFENGtN?=
 =?utf-8?B?d2h6TGxlV2dVUzB3N1BMZFFNWHg1RGtFRXU1VEhFbFFnbVdMOG5tQURUQVhz?=
 =?utf-8?B?Tk9LaXVTc0ZDT0ErVnY0ZGRlblZaOUhySWhYcldQMnVoVWttV1FhUmF0cW9i?=
 =?utf-8?B?SlpjaVlmRWVSK2dsVmdFWjZPTzRoVGdQNjc4M3NjeGlpeXlLc0RkK1ZkeGM3?=
 =?utf-8?B?RzJad0c4N0UxWEJBQW5JTU1XV2dZVDEzWEppRlY1ZlQwekdYYUJSak1TK3lM?=
 =?utf-8?B?cStFdTRkRmtmKzB5dDA4K0p3WVN4aVlHdUVTWFZEYVREbjNEc2dhWG1qYVhB?=
 =?utf-8?B?alZ1TVNGdmNYRThDeVR6TFNnL09sUWZqcUsvSlQ0U3hPOUFEam9lcXQ5eTNJ?=
 =?utf-8?B?c3EwN0tXSU1MZFl0WnY4NThDUjNGMGdWUVg0WkVRVEVzelpsVVJNYkl4OFdJ?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65589db8-960a-4d17-4636-08dabddc4583
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:44:58.4438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MOeuhkEvk4I46KBBgvGQy5o++pVrP7y83Bed6pGoQhPxR1WAvGGkP4A3pE5KJHG6PjX31iV9zUwjpcQPWOI4PO9+nDtf9dN5n2PdS7wF6GU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5810
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508331; x=1699044331;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0jBuEsLMOxRSMVD6Mm9jZ8y7a5Yl7V1gs5nJF4ExS1M=;
 b=S1DGoQdEKtrfS65cXFu1JST8VaAD5p8dU8gM/fxGKA/sU9W6xak0tsnF
 QVhZCgpUM2Suy8sSk4H2ncAfzkHoTQVTq2q9Qqe2klzGNI6PbOTClV8D1
 5kRBqMhQqb5dOdC6o6NWKABO3nyVZdrF4PXS31abJeFyESI4PlabWdis8
 sjQ8LJMqcqIl6ENA4wa7pI4FZy18Ii+GQcvvSdJa0J5kRfDKbmN/fY0D4
 mgP4l35ZJj0lB1i5piDbrk6IKE6KJ+IX4Je7KIemKzvIghMKKblaBDLIG
 DvrafrRaxb47C37/ETOBwZPxMEN0UshWxHDcQRsB1S7OSsMAxRIxrvhT2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S1DGoQdE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx
 timestamp memory register for ready timestamps
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/1/2022 3:52 PM, Jacob Keller wrote:
> The PHY for e822 based hardware has a register which indicates which
> timestamps are valid in the PHY timestamp memory block. Each bit in the
> register indicates whether the associated index in the timestamp memory is
> valid.
> 
> Hardware sets this bit when the timestamp is captured, and clears the bit
> when the timestamp is read. Use of this register is important as reading
> timestamp registers can impact the way that hardware generates timestamp
> interrupts.
> 
> This occurs because the PHY has an internal value which is incremented
> when hardware captures a timestamp and decremented when software reads a
> timestamp. Reading timestamps which are not marked as valid still decrement
> the internal value and can result in the Tx timestamp interrupt not
> triggering in the future.
> 
> To prevent this, use the timestamp memory value to determine which
> timestamps are ready to be read. The ice_get_phy_tx_tstamp_ready function
> reads this value. For e810 devices, this just always returns with all bits
> set.
> 
> Skip any timestamp which is not set in this bitmap, avoiding reading extra
> timestamps on e822 devices.
> 
> Modify the stale check to apply only to e810 devices. It is not necessary
> for e822 devices because the timestamp memory register will prevent us from
> reading a stale timestamp.
> 
> Modify the ICE_PTP_TS_VALID check to simply drop the timestamp immediately
> so that in an event of getting such an invalid timestamp the driver does
> not attempt to re-read the timestamp again in a future poll of the
> register.
> 
> With these changes, the driver now reads each timestamp register exactly
> once, and does not attempt any re-reads. This ensures the interrupt
> tracking logic in the PHY will not get stuck.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 41 ++++++++++--
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 72 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>   3 files changed, 108 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index ebe910326963..39c68a272c6a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -655,6 +655,9 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   	struct ice_ptp_port *ptp_port;
>   	bool ts_handled = true;
>   	struct ice_pf *pf;
> +	struct ice_hw *hw;
> +	u64 tstamp_ready;
> +	int err;
>   	u8 idx;
>   
>   	if (!tx->init)
> @@ -662,6 +665,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   
>   	ptp_port = container_of(tx, struct ice_ptp_port, tx);
>   	pf = ptp_port_to_pf(ptp_port);
> +	hw = &pf->hw;
> +
> +	/* Read the Tx ready status first */
> +	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> +	if (err)
> +		return false;
>   
>   	for_each_set_bit(idx, tx->in_use, tx->len) {
>   		struct skb_shared_hwtstamps shhwtstamps = {};
> @@ -669,7 +678,6 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   		u64 raw_tstamp, tstamp;
>   		bool drop_ts = false;
>   		struct sk_buff *skb;
> -		int err;
>   
>   		/* Drop packets which have waited for more than 2 seconds */
>   		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
> @@ -677,24 +685,45 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   
>   			/* Count the number of Tx timestamps that timed out */
>   			pf->ptp.tx_hwtstamp_timeouts++;
> +		}
>   
> -			goto skip_ts_read;
> +		/* Only read a timestamp from the PHY if its marked as ready
> +		 * by the tstamp_ready register. This avoids unnecessary
> +		 * reading of timestamps which are not yet valid. This is
> +		 * important as we must read all timestamps which are valid
> +		 * and only timestamps which are valid during each interrupt.
> +		 * If we do not, the hardware logic for generating a new
> +		 * interrupt can get stuck on some devices.
> +		 */
> +		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
> +			if (drop_ts)
> +				goto skip_ts_read;
> +			else
> +				continue;

Technically this else isn't needed since the previous condition is a goto

>   		}
>   
>   		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
>   
> -		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
> -					  &raw_tstamp);
> +		err = ice_read_phy_tstamp(hw, tx->block, phy_idx, &raw_tstamp);
>   		if (err)
>   			continue;
>   
>   		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
>   
> -		/* Check if the timestamp is invalid or stale */
> -		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
> +		/* For e810 hardware, the tstamp_ready bitmask does not
> +		 * indicate whether a timestamp is ready. Instead, we check to
> +		 * make sure the timestamp is different from the previous
> +		 * cached value. If it is not, we need to re-read the
> +		 * timestamp later until we get a valid value.
> +		 */
> +		if (!drop_ts && ice_is_e810(hw) &&
>   		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>   			continue;
>   
> +		/* Discard any timestamp value without the valid bit set */
> +		if (!(raw_tstamp & ICE_PTP_TS_VALID))
> +			drop_ts = true;
> +
>   skip_ts_read:
>   		spin_lock(&tx->lock);
>   		tx->tstamps[idx].cached_tstamp = raw_tstamp;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 6c149b88c235..55bbe76ce0bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2417,6 +2417,43 @@ int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port)
>   	return 0;
>   }
>   
> +/**
> + * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
> + * @hw: pointer to the HW struct
> + * @quad: the timestamp quad to read from
> + * @tstamp_ready: contents of the Tx memory status register
> + *
> + * Read the Q_REG_TX_MEMORY_STATUS register indicating which timestamps in
> + * the PHY are ready. A set bit means the corresponding timestamp is valid and
> + * ready to be captured from the PHY timestamp block.
> + */
> +static int
> +ice_get_phy_tx_tstamp_ready_e822(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
> +{
> +	u32 hi, lo;
> +	int err;
> +
> +	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_U,
> +					&hi);

CHECK: Alignment should match open parenthesis


> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_U for quad %u, err %d\n",
> +			  quad, err);
> +		return err;
> +	}
> +
> +	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_L,
> +					&lo);

CHECK: Alignment should match open parenthesis


> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_L for quad %u, err %d\n",
> +			  quad, err);
> +		return err;
> +	}
> +
> +	*tstamp_ready = (u64)hi << 32 | (u64)lo;
> +
> +	return 0;
> +}
> +
>   /* E810 functions
>    *
>    * The following functions operate on the E810 series devices which use
> @@ -3091,6 +3128,21 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
>   		return ice_clear_phy_tstamp_e822(hw, block, idx);
>   }
>   
> +/* ice_get_phy_tx_tstamp_ready_e810 - Read Tx memory status register

/**
  * ice_get_phy_tx_tstamp_ready_e810 - Read Tx memory status register

> + * @hw: pointer to the HW struct
> + * @port: the PHY port to read
> + * @tstamp_ready: contents of the Tx memory status register
> + *
> + * E810 devices do not use a Tx memory status register. Instead simply
> + * indicate that all timestamps are currently ready.
> + */
> +static int
> +ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
> +{
> +	*tstamp_ready = 0xFFFFFFFFFFFFFFFF;
> +	return 0;
> +}
> +
>   /* E810T SMA functions
>    *
>    * The following functions operate specifically on E810T hardware and are used
> @@ -3306,3 +3358,23 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>   	else
>   		return ice_ptp_init_phc_e822(hw);
>   }
> +
> +/* ice_get_phy_tx_tstamp_ready - Read PHY Tx memory status indication

This one too

> + * @hw: pointer to the HW struct
> + * @block: the timestamp block to check
> + * @tstamp_ready: storage for the PHY Tx memory status information
> + *
> + * Check the PHY for Tx timestamp memory status. This reports a 64 bit value
> + * which indicates which timestamps in the block may be captured. A set bit
> + * means the timestamp can be read. An unset bit means the timestamp is not
> + * ready and software should avoid reading the register.
> + */
> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
> +{
> +	if (ice_is_e810(hw))
> +		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
> +							tstamp_ready);
> +	else
> +		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
> +							tstamp_ready);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index b0cd73aaac6b..b781dadf5a39 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -135,6 +135,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
>   int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
>   void ice_ptp_reset_ts_memory(struct ice_hw *hw);
>   int ice_ptp_init_phc(struct ice_hw *hw);
> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
>   
>   /* E822 family functions */
>   int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
