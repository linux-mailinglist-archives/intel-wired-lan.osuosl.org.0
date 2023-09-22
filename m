Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2008B7AB157
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 13:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91F2383EB7;
	Fri, 22 Sep 2023 11:52:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91F2383EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695383520;
	bh=R4OY0qn6iBXa+nYwvfLcqMC/bZ+SHbGrblnlzo9Ptkk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EB5bdrwAmUeV6Lam7Ddw3O6136mDdBudCi/IQh7PDpUscAaUnx4ZSksP7MWhPADNc
	 IM/EZ9IM2+WNphdtpX/kOOOocOwXN+NLul2+3vF1U7eRtPCW3Km0ODQ8VHv8iAS3xt
	 sCz5Q++tYEa0rN1ZFts1ZshutaWYJ6xWcHAJKjBYaDhYg+hWHAHyJfLXlj3h4oCqzp
	 0caUPhv2hHQpq67+OsHDzUjm2Tu6Cs8bKxxSa2m+YBWJfjQ+K0BvgYXt7IBMoteC98
	 otkjqsFek118eRzwFxXIGUixoUVWis0i52FeknEY9P/WYGVWQDO4nqopQn8lB4ebT8
	 jEyb7A0dcB7Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t4Yn-s5YcxkG; Fri, 22 Sep 2023 11:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 281E283D38;
	Fri, 22 Sep 2023 11:51:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 281E283D38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02D711BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 11:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE31D4038B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 11:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE31D4038B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NttKYxEkfTlI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 11:51:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C2E3400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 11:51:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C2E3400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="384644640"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="384644640"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 04:51:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="871217841"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871217841"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 04:51:52 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 04:51:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 04:51:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 04:51:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T7W61WwY6w80WZTfrm0V2efMjitMTwFF3DbJC+wNAJCdxLuedywHmp2D6sWOsTQDJBCTpbTvhZL4hq4IVrJ042+rRFcfaolMCAHyCBFLN8ri6Ir+5BOk7t0PsNgAOju1yIbgkodGLHYYL+UxepimXYGg6lGqilyzu2ibp0ZPmLUyvxmutNezHHXxaRm1NWe6/y30FH3YB/+FggaW+0QoWdbIYikizK219lSDxH2vptbfCdaNZzRO3wfMvcBRusQ/q9KL4v89zisl0k5/VRD8yZK95DlF31/wRuNmag6Idwk5zFZ6Gdx2+qOcbGTSbGnzWejxmyTRNK8Xe/lnsAk9gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Teo0FLlBiBB6IHBROZWFUeo7t4GSJ2ECUXZlA9KfU/w=;
 b=QWT8rTcPJjGsM4ob41BrLI0j39behlBRJfY6XtYi0KpKpkgpeITg/Dww/Vy0H9EWWvCB9mhjLSNtrRv6I7vtVXUqS8yLLW3xaQ1zZdi8jPP0hXw95kfURAjym7bv7OTl16LCb5KZDf0BOaa5GOA8qGaneLf2J2437//tKf13EEB3oiPckWbqnJPix2febPYhQDwGGz/uI5rloVcxRhkhr28iFFvpPFFl9ZCrQ52SRS4Ahv5nCCz25rj7BbNQkO0QyBV9oTa8q5W8gG5CsT9UwnKitJo0qLD4ivN/EdLvWSo3/DiOIsowS0c4HPHYJaqHnmoeAIYnSNz6FvReyvK2Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB5946.namprd11.prod.outlook.com (2603:10b6:806:23a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Fri, 22 Sep
 2023 11:51:49 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 11:51:49 +0000
Message-ID: <79dd1087-f815-d15d-cda6-ea60cf2a27c3@intel.com>
Date: Fri, 22 Sep 2023 13:51:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, <netdev@vger.kernel.org>, "Intel
 Wired LAN" <intel-wired-lan@lists.osuosl.org>
References: <20230921000633.1238097-1-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230921000633.1238097-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR4P281CA0012.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB5946:EE_
X-MS-Office365-Filtering-Correlation-Id: 911c34d0-7359-4751-6e75-08dbbb624e0e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3wOQHcqDhbFI4reuOmSxevdGDcKWJTxKMFy7jmFCaObWOl6AsahVkfuk9zFMhRiRrCpUwazKNU+LLTKZACU/9wzVmF98sHkDSN0ndKOKGpFWwEtxIovWlDemFwnP8LRiO2lXB/3t72KCjHYKZaKCT10cI/Z8r6ox84hIwx7RVfmHiiA/qfgioii2UBu9rnh5VRM1/IH8cXIzREuvMIrNPfnAfzn9E5VEJdbpYA3WhHW0Y1+n7wkjVrt9jpdf3w85BrorhJpXtAjG7TfuzokoaoZzLoUzUZIk0LeFx2ztc4IXD1v+FueDxQGAcbRA7865WTRxqrDS5w3PhwFOU0OcaMaJMML6GWGk2KoEcGrRfm30l4Ff29Oh5brN/1CGcGYs0jv59sXRl5Evbdmcy2qpH+JYCt02cqCE7OAnfe3tSNT2iJkfMQ98rq10SwJCvPmmcC0voZxDC7m9nig1ZHTEvfFj0rm9NkCbMSBRvApUeTNDXqZsCtKyvpqDlHY3CMxeVP0u1z4VeQHvM2/fOEce/dQ+sZsdgHx7Cu0hQkNiYjwWenEYzEmd5llu1vefIwRuAY9KD1UQmMHoNPd4i97qlIXMhbWrjNy32eTlOS4R/jKr/Kk4tY4A069fpvB1YCi9OXA9AcTJyfwzq2lTc/E8ALgNSrEsxzWJJYjBGuzwPYRiL/ze3Ynxrl/FdvE8AhmF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(376002)(136003)(346002)(1800799009)(186009)(451199024)(31686004)(2906002)(4326008)(8676002)(8936002)(110136005)(5660300002)(66476007)(316002)(66556008)(66946007)(966005)(478600001)(6666004)(6506007)(6486002)(53546011)(86362001)(31696002)(6512007)(38100700002)(2616005)(107886003)(26005)(36756003)(54906003)(41300700001)(83380400001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTl6RWtvQ3R6dVRvNFZrQWpQOVNCS3RmWThCcDgwRTY4Zloxam9KVlljQUJS?=
 =?utf-8?B?alZQaWRIY1ZZWnJDL0t1Q0RtMnpac0FCQm9UdXdiUWNQckRmZUhVUkovZjNY?=
 =?utf-8?B?M1hTWEM1aE90dkZ3SS95ZzFIYzZjdkEwdUJYNkxaanBydFVyUEZNSjQ1aENP?=
 =?utf-8?B?TS83NXVpUk5jdEFtbUpEQXZOQWFrdjBNRzNoN0ZzcGMxMlVlV3YwVFBMK0RJ?=
 =?utf-8?B?Q25razJnMWdzYzg5RGdFME9mZG9NcHc3TnQ1WFB2MDBhT3ZwVHVQUXE5Tmlp?=
 =?utf-8?B?V2I2UDcrNG10S1hwZDJ4Uy9LbUFVZHp5bUVOSnFtOHRXNXdYbm0xZ2w3L1hV?=
 =?utf-8?B?K3p3bTZKUEZsR0Ywam42K0x2MjJFZ3dlK01oN1pwSnVJYWtGZ0dpN2tpcHdp?=
 =?utf-8?B?bFBEWi90dEZhUW9zRFAvSTZhOG1BU1dyb1llS2EvVU14dEFPc2VRNHVZNC83?=
 =?utf-8?B?c1ZhTlYyUGhyUFE0MW9wS2tNak1TTmR3STB3RUdRT1NtQmw2dG5PSWU5SGZs?=
 =?utf-8?B?ZmtHdVUwVmtGakJsbE8xM2IwUDFOUWJJek5rbEZ0QWx6SC92M1JISlBsTnBG?=
 =?utf-8?B?UUlYQ01oZldwdjNDZldjVklKaklZcHFTT1FvVkRqM2lGNjRtUnhXQlJCY0Fo?=
 =?utf-8?B?UjQ2OG12c3ZDdFpRcTJZbGJkN1pEdFJaN3F1eEdreHZGczdyNXFlRG14eVJF?=
 =?utf-8?B?YzlmYmQwNHVqMzJaemJnaGZKWlZ6WjN0Q1hSYlBiY1lEeVpHVmdTbEpGWU4v?=
 =?utf-8?B?alVwUlVUdnB2TE1qeHNhR1JmUjZObDNYSE9WbVJMRzFUSG1QUlByeXRoQnJU?=
 =?utf-8?B?SGpZUzlxR3BZaTRjOE1US0o3NkExVE9FRTZwZisrQnJOSm94eXZzcHlpQndu?=
 =?utf-8?B?ZnJrSUJBUXc4SHhvanVyNlZkaUxkNklwNHNtQUtVV0ZYajhXYmFyOEJTNGgx?=
 =?utf-8?B?OEc0dE9DTVg5QTZEcFA0OGkrT0tvL2laRlROQ29RNFV6S1pTS3RJNDVqVnJF?=
 =?utf-8?B?dnpaNlJlZ1VqdTFBK1Q4QStNUnRtc0l0Zm5kOFBjTlJPVFpPbUYyVXc0T0NW?=
 =?utf-8?B?UUtNTXhNOWtEZDkzeTZZbnBJa2FZaXQyMWwvQ2YrYVRITEpVWWpiemJTcmhT?=
 =?utf-8?B?Q2cvL3dFYkp2ZS9ya3laMXJud0NTOHFlQjkzbmo1S2JBWjVjdWIwZmk4WFZN?=
 =?utf-8?B?ZUVCVDhMRm45eEpES2ZpNEt5ZVlHc0pRQ1JPaHF2NkVicW5qaVNjY21LalF1?=
 =?utf-8?B?ay9JSWFaNDVhWGxBczhKdmpnMmkwSXgvUjhnRStCRm9hWmhFQnFzcm53ajRE?=
 =?utf-8?B?aElhVUJvbEw3RlJsK0wySUd6a2ErcDZoa2FrTnVQRFpKSzlFK1dCVHZ5cGZn?=
 =?utf-8?B?bU9Ea1RweDNjeWFRL0JPc2xFeEV5NzhZZHFDcEl0aDY2WThNV2cwYTM3VDRu?=
 =?utf-8?B?VVJEQXJZVm1DVER5SlgzaG1tMzJDOXFFc2FwYzZYb09JVGl3ZWVmTUlKd3B1?=
 =?utf-8?B?S2doVEVzU0lub1hQMGtvWENVczdUUHBUeU1tTVhzVGtGVjQvUC84YUVZc3J5?=
 =?utf-8?B?U0xkaWxXNDMrWGJFVGQ2UjhhYlFPcmo3K0ZvOU5GUmR5SEtMZ0dEbGxFZUlj?=
 =?utf-8?B?ZnJjL29hTEkvUGFzVHpUVHk3ZWJYLzExbVFpcnp5WTNaVGlUOVA3NVpMbWF1?=
 =?utf-8?B?Z2tlSlJWUVNtR1pIZ2tmTWptbUt6Sjl0RXZiRjhTcTVoRE5iUDFzdDlOamhE?=
 =?utf-8?B?c2Z5ZzZoZEhrUkZrWkFrZVhvTXlDSUpXOHhwY1ZrMW1vUWJUbnVLdFk2UDg1?=
 =?utf-8?B?V1pUY2hvWUFGemxTeVRtcHp0OXlwMWZTSHp5d2FYcmoydFRNMVlxVzVlL0Zx?=
 =?utf-8?B?Mk4yNUQ2aXJaSEN0UHR0bDBMZ0g2eVFJK1MvUXVyNytyNk1ET2t5S2lMN3NH?=
 =?utf-8?B?S0N1YVl3OGtaSVE3WFYrWi9tYlgwcllZTXBjcmFITGZsWVA4U05VRmx4Y0hq?=
 =?utf-8?B?SlgrNkZPdm9OVm5LcnJ5OVlRcjlIekx1S2RPSGV6T3JaK1g2bGhDemtmSjQx?=
 =?utf-8?B?NThvQWtpT3BMV1g4QWRLWnlQNEFuai8zQ2xpOGNVaEdmOTNXbFFzV2YrT3k5?=
 =?utf-8?B?U3hiWWdOZ28rT25sRzBvbmpudmRlWTNFOEM1TVZtWmVPUHk3cm9iNUNkeUpp?=
 =?utf-8?Q?tzp1slfcOCE6TTJSuYUXbRU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 911c34d0-7359-4751-6e75-08dbbb624e0e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 11:51:49.5335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I23XG7xapW5xD+cC9ORihO7OoB5c6yV71+4naa+HlOaEAugE3CSPyfW5NOn2Ko9YQ3jCzmjZGx3DxiG7eiijdEc61yq06MyLsSVnbTDEZu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5946
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695383513; x=1726919513;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bMkjeNKvYfgM0EQ+NCElwrWhBq6gO5lLgumyGEFoKwY=;
 b=m4gJkQZZC4mXq0TTwnNR9jYcw1+nOy4GSmXuIKO+VyRbAWWcUOoaV0RU
 E3lQ5itSpk2d72sMg9KZAmkGdDV5t5WojqRClCyETOi9VhiVQDh4xSZv9
 WMNBCjy5ZRh2upSCCXAMCAKsi/flzTXiUGBAHfi5jRwvsjcdcXk5kJJPb
 lggfL0SWB/74aDPKpv0zJFWGWuY7kwanyzqpdk4E0gIcUOqkOXWMngEWV
 SgsWNnl43AS2LzueeTUxCZ4BLAndFAqVVBSMvYfgPnRd/aCsu5WWG01Te
 DIPNPeUWKudXGXxd7WiYtxvwAroj1driaNCkTDdB9FWX7EHNkUeRI4LJQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m4gJkQZZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix linking when
 CONFIG_PTP_1588_CLOCK=n
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
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 David Miller <davem@davemloft.net>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/21/23 02:06, Jacob Keller wrote:
> The recent support for DPLL introduced by commit 8a3a565ff210 ("ice: add
> admin commands to access cgu configuration") and commit d7999f5ea64b ("ice:
> implement dpll interface to control cgu") broke linking the ice driver if
> CONFIG_PTP_1588_CLOCK=n:
> 
> ld: vmlinux.o: in function `ice_init_feature_support':
> (.text+0x8702b8): undefined reference to `ice_is_phy_rclk_present'
> ld: (.text+0x8702cd): undefined reference to `ice_is_cgu_present'
> ld: (.text+0x8702d9): undefined reference to `ice_is_clock_mux_present_e810t'
> ld: vmlinux.o: in function `ice_dpll_init_info_direct_pins':
> ice_dpll.c:(.text+0x894167): undefined reference to `ice_cgu_get_pin_freq_supp'
> ld: ice_dpll.c:(.text+0x894197): undefined reference to `ice_cgu_get_pin_name'
> ld: ice_dpll.c:(.text+0x8941a8): undefined reference to `ice_cgu_get_pin_type'
> ld: vmlinux.o: in function `ice_dpll_update_state':
> ice_dpll.c:(.text+0x894494): undefined reference to `ice_get_cgu_state'
> ld: vmlinux.o: in function `ice_dpll_init':
> (.text+0x8953d5): undefined reference to `ice_get_cgu_rclk_pin_info'
> 
> The first commit broke things by calling functions in
> ice_init_feature_support that are compiled as part of ice_ptp_hw.o,
> including:
> 
> * ice_is_phy_rclk_present
> * ice_is_clock_mux_present_e810t
> * ice_is_cgU_present
> 
> The second commit continued the break by calling several CGU functions
> defined in ice_ptp_hw.c in the DPLL code.
> Because the ice_dpll.c file is compiled unconditionally, it will not
> link when CONFIG_PTP_1588_CLOCK=n.
> 
> It might be possible to break this dependency and expose those functions
> without CONFIG_PTP_1588_CLOCK, but that is not clear to me.
> 
> For the DPLL case, simply compile ice_dpll.o only when we have
> CONFIG_PTP_1588_CLOCK. Add stub no-op implementation of ice_dpll_init() and
> ice_dpll_uninit() when CONFIG_PTP_1588_CLOCK=n into ice_dpll.h
> 
> The other functions are part of checking the netlist to see if hardware
> features are enabled. These checks don't really belong in ice_ptp_hw.c, and
> make more sense as part of the ice_common.c file. We already have
> ice_is_gps_in_netlist() in ice_common.c which is doing a similar check.
> 
> Move the functions into ice_common.c and rename them to have the similar
> postfix of "in_netlist()" to be more expressive of what they are actually
> checking.
> 
> This also makes the ice_find_netlist_node only called from within
> ice_common.c, so its safe to mark it static and stop declaring it in the
> ice_common.h header as well.
> 
> Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202309191214.TaYEct4H-lkp@intel.com
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> This is an alternative approach to fixing the same compilation errors of the
> ice driver compared to [1]. It does not include the fix for idpf which I
> have no issue with.
> 
> I prefer this over the stubs for the functions in ice_ptp_hw.h, and I had
> proposed these a while ago as part of [2], but the DPLL code merged first
> and had apparently duplicated some of the work.
> 
> [1]: https://lore.kernel.org/netdev/20230920180745.1607563-1-aleksander.lobakin@intel.com/T/#mfeeb599a95334e78dba08330a6bd8edee7843fbb
> [2]: https://lore.kernel.org/netdev/20230918212814.435688-1-anthony.l.nguyen@intel.com/
> 
>   drivers/net/ethernet/intel/ice/Makefile     |  5 +-
>   drivers/net/ethernet/intel/ice/ice_common.c | 66 ++++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_common.h |  6 +-
>   drivers/net/ethernet/intel/ice/ice_dpll.h   |  6 +-
>   drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 66 ---------------------
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 -
>   7 files changed, 76 insertions(+), 82 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
