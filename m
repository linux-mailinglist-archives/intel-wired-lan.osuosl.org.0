Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 085BF7AD2E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 10:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A8AC8188D;
	Mon, 25 Sep 2023 08:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A8AC8188D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695629521;
	bh=1mt922yyll7PJVQ9sOOyiQPGM+eh3VBVjFPJJ2W3cmI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MxqFDKC84VI+flg9ACvlDulLvNdgimLWlhVDfjy/2CssZ21MCIbZTbqmzVjFQfB35
	 9Av5MBDeUBWuA2iwbe3ByIJAuAFwFgwdOMroNE1+hxLUD/VWLOhO38jSFxu8JovPI2
	 niqkkHvZnLWptRpa+93h4DFj+NStsdfi4+byVpMHIbqiYXMhkgA8XDc6N8PsJRB/nu
	 v/qePVcKdi7bq0LptBHnpKVPSIBiX9CD/Yv61CmEL4GO4hSsEU1lWlxyNA3kImNgnx
	 C75m75DIBTqyh/td8ppybJWgAqmD1eNHofLdFaF4hLSCu3kSMlK72FwsnqVPtFl38v
	 3QiOD+ZomYI6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G_CaDM7D7Wfv; Mon, 25 Sep 2023 08:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32C55818D0;
	Mon, 25 Sep 2023 08:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32C55818D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0943C1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 08:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D83A460812
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 08:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D83A460812
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPy5WsZQ1XPr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 08:11:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DCF16080A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 08:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DCF16080A
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="361449608"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="361449608"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 01:11:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="724906732"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="724906732"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 01:11:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 01:11:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 01:11:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 01:11:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 01:11:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPBu7mYiMEYshlduhlbYCvBLb7OxM9+8lhbWZMCmKzHpFhnjDxvAh4JTAukrtFqfoCJg7wON/rrh63HYx9AXbsBWR9JA02huyy2HDG6TBqDmGNPFzEqlDUvcXdSxQwCsVYVGxJoCrPFD/Yj+8aRu0FkKbFyv0suZXOzTpXczb0aMmm9iPgrKWU8wqufQGxwNxl5cZHYUr2pmOf6x3b6PQ58yXDRFpLyYVXLVMYsKeXCXaifEU5n+h0MB7BQj4j9GRVwLyJ0qgkemY9kTxsx0/CFwxo7psZyibWS2i4xL8z5kcFMUIOkUagEF/f/UC9fbcba3xWsYB3QI6JPI+sJAoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OUnAVasfKUVjsF/euRye2FWM+vdsonQXOIkM/JqkE9s=;
 b=oT+K8dnVwTMCT8gX6H/py75yZ8DRTOUdYvkpO6cf2Z0nt7Lp+oZLUYi7DVv+sPx/7iM0WTjF8KeoIGHXlOlM/ml6e1E8G4UcdFu76uHpVOwhkS1IvYIe9rr9hGM/+PJJSQg2lA022j9U2jNisvnSC0luPK8SiZtgQqySMXqCXpVOLVSMdOC9fi+0big38yvsN4m43eWSanljR/JkBMlc0PE0vY/UiItmWoCt4PDoL5xfrBri9UADJzUZH/I0gZ0nKP7FB2RI05kYRMBmXSaeKmjYubRVeSMqQR8CoIbfcOgU4/qo4tAFGoq0nS4zbtup9paOtc6E+Acwof85KQHV2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Mon, 25 Sep
 2023 08:11:35 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.027; Mon, 25 Sep 2023
 08:11:35 +0000
Message-ID: <ba7040d4-337f-56a1-0f87-cc6dd70228ec@intel.com>
Date: Mon, 25 Sep 2023 10:11:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
X-ClientProxiedBy: FR3P281CA0209.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SN7PR11MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: daa8c91c-7bf7-4762-05f0-08dbbd9f0903
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 29L0HQtO0Azl2ThD4vkZ4E1g0K1I1Xsds95HyO51OyVwSGk/f4VYutRmeeDtNoCjE4KGQe42YUGtmthXY09PnXMRb1xC/Cb2+yEv2/H+05daw2aNCa8YMM8r4ujuIfVWgd3cMsOoj/sWcdr/5oY3FfPFMw/KQ//iLo4e0Y34WcabyqMZV7uaNH8tQT7tYyJEvWPdpq4h8B6UO1sO7G1krDn4EOqEnI6f/JO5Qw2ET/Pxl35sN3u+ubkdrMWSlNxwdhMPbL3Krr5H0aF+s/MntNTTkfGxUvFZKA477Pd/x9aV9nAlEuBGVvJIDVhUYqF3HtOJWsNxX+7njwZIxCWjrZ9VeFq2kZDOQgURXLy9NPvBWdgoeHnM4u6+xH3M4bbfOh+VubbDISJKINfRhmGVU5LucEj+afU61ziWxFhLPzlNBarzF9IPnWsnuhpGz2bamJGiqMcdxqAEgguzWpRXzjwishtLLDyoPojs+tYCx7+w5gUsD1FYZkXndybdNbF2D5/+EoFusM6hc/yoI1EwAn7lvuPWEFD1FjJ0IUtA3eqhbT9dG8+sRX7AHzBt0mkBxhIUWyTzuJcBg3CoOtx8+xxFKPxFZ+zxt7Vx57gptd2UZf9FxarJCL5DIFzQHEuML2jBr07U/Ma7msAvukdwKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(396003)(136003)(230922051799003)(1800799009)(186009)(451199024)(66946007)(66476007)(66556008)(110136005)(478600001)(316002)(31696002)(38100700002)(82960400001)(36756003)(2906002)(86362001)(41300700001)(8936002)(5660300002)(4326008)(8676002)(6486002)(31686004)(26005)(2616005)(6666004)(83380400001)(6512007)(53546011)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWM0OW5nTHpNWk1WdDN6UXZFS1IxMEE1bDhIVXo3bXRzZHBURjVZcUpJZm93?=
 =?utf-8?B?QUlYOFdKWitjVzBuUS92dzFoMS8yWG9Wek5lQ0wwNmU2MVlwV3NiREppRlBK?=
 =?utf-8?B?VUtRTlhHQWQ3K2NuZUNXbjcrcGlUU0JUcy82aDBZVlVUcmFFc21kSC9pRVNT?=
 =?utf-8?B?VDlNemtWUWlWNHg4UVJIVDNRaGJaZjFyZm1JNWhkTWxLdGx4WlI5elYvMWhJ?=
 =?utf-8?B?SDh1OGpTRzg5V1BOTFhNYm1FYWYyRDlHbzlRT0ZJVmZBUjRDbWtycEVVZ2Vq?=
 =?utf-8?B?OXN4OWxRelIrT2t5ZUh3UmhYR3V0c3Y3eSs3N0s4bFlGZkRrT01vM0UyS3R4?=
 =?utf-8?B?MklYWnkwQU56WkJOeDk4ekFDZmdpL0l2c3EvWG1tUE1GaFRVcWhXR2tTUkdT?=
 =?utf-8?B?aHJpcmpybFgxdmVKM3FQTGVCWFBxWGVUckhBOC9hTUNKdlh3TExHRURHYWI3?=
 =?utf-8?B?OTh6NzJQemsyM0xIVllvcmJ0Ky9yTXBIa2ROd0pMeU9MSDBpRXA5SW8vbG96?=
 =?utf-8?B?S1ZyY1lGbXJVdy9jT29UMnpXUW0vZk4rU2V1V0NlNXRwdEJGcDBjbEZPT013?=
 =?utf-8?B?aC9BL09VWUROTmovbC9WVjB4RVl4eHUvMENSaHNDb3RqSGtQOVdGdVFvUUJu?=
 =?utf-8?B?UTJocldodGxkZXFNZlVkNVBPdElIZ1NWd0gxY1hReUJOeFJzVG4wRkhMb0cy?=
 =?utf-8?B?a2tvVGJoVC9Fem9ZbXFFc0d6MEZXTENSYUt2RkhTOXpxdHB4ZmdFOFBuMnlx?=
 =?utf-8?B?ejk4ZW5mYmlkcFhkdWFXanh2Ukw2TUEyQ084RStKNW5tQmxsMXVnTlM0V3hn?=
 =?utf-8?B?UUluRzdqVTZCYmJOeVJaNTFmbzNNT002RjBVZDBrMjhEczEwQk1uOFBqVkxP?=
 =?utf-8?B?QUd2eHBheE50dEQ3bXY3T2VPdXJKTzhhWnhtdHRCaVRkNkZrRHpZUFMyNkRr?=
 =?utf-8?B?TTVldWp0cW9UT1N6NjA4cU52N1dMc2NUQnhLYnhIS1pZZUtGTW0zK3hWUE9Q?=
 =?utf-8?B?Zlk0YTB4ekFndzNxVjNFZDhLV1Bxb2tiTHZaOWt1dlVoMGJIV3JrMDhlVWFT?=
 =?utf-8?B?UTg4TzAySWFSdHozbndCM2lDMWNsVnJTNkZ3QXRWQk5xTHhuN3NOOGM2S2I3?=
 =?utf-8?B?SkkzaVNuOTNNOUQ0NUFJcThrSVgrY01zbVRDMXY1blRON0RaMU1nZFM0S3Ny?=
 =?utf-8?B?ejRKNkd4YmpwZkZiTU44MmxjOGJJQUNoMkk3d1UvRlNQNFVOd20xQzZxdTA3?=
 =?utf-8?B?bVJEQU1YYmFNVTZmVzllNGNYdjE5bUZVTEJBZXpISE9ic1RQOTNRZ3pFTlhp?=
 =?utf-8?B?OUpNT1IyM2ZBc1Z4anYzT25OMGVENWRMNjAvdU5mcUx0ZHg0aExkY0k0UnEr?=
 =?utf-8?B?V29XeWtiYmNHSXUzeHRtQW5SMG9aY3d2WDFUV05DemQ1YjI5azhxUEtaNGRE?=
 =?utf-8?B?UmpkanFGMUxwcWdrUHMrTU5mclI5UGdmWkJFeHdqNEVCamxodlJhRnpqOUwz?=
 =?utf-8?B?NGRVVHZBV2JOazM0OUNqdlA3TTZNSEpzSmN1emNEN3drb0tRR2w0NmIvS1FO?=
 =?utf-8?B?cytESVlXWHZ2QTZoY0szc2xhbjdxQ3dCN1pDZHlCTkdocHN4Qmhua1I5Mjhy?=
 =?utf-8?B?RXVwMEFvcHFrM0xYMy9IY1l3aWFnYjZ4L0FQR0dIbEE5dFFwdWZNTUVBVldW?=
 =?utf-8?B?aGxTWXhKalBtWi9vZ0h5ZnFDRHN0Nkthc2FQckV5MW9wT0kwZS9Rc250c0xq?=
 =?utf-8?B?eHZFc2ZCdGdvTkQ2c1BVZHJ3RjBNOVUrVWxlNmNZU1RPQ3VmOGg0VmczNmJs?=
 =?utf-8?B?eFN1L3oyL0pvY0U4Ty9nTno4dFlrNUk4cWovR1NreFNCMG9xSjZPYUwzNGMy?=
 =?utf-8?B?RVJkK3R2UkltSktJNFQ2YnpUYkpCelQrV0RkSFNBS3NFMWJ5d0R2UEQ2MVRN?=
 =?utf-8?B?VzVpaWI0WUlaY0R3d2NUMEU5aFBMb3RVdEdpVlZ3bnhtYVc3bzkrZWdsRUdr?=
 =?utf-8?B?cytaa0VIVVIrb3I4Y1lISm0rVVQzZEN2QW5xTjJ1blZBYUpCME54RmNRRWVJ?=
 =?utf-8?B?N0VXYUdCaG1ubHRFNko0dHFsQnFieVhCV0FPcWM5bnNPd0tLcWVWeWVUQmtv?=
 =?utf-8?B?WFhZais4WFRNTkxrb3VhcDNPUE1heUVjL09Fd2YwT0MvckdIY2ZickhDWWJw?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: daa8c91c-7bf7-4762-05f0-08dbbd9f0903
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 08:11:35.4396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0xnNDWDSSACQsXAd3+cBCOw2UH0aDl0wb0o5jUEJC9QXEmlQvgo7xhQGg8urH+PgLnQNLffU/+t45arIdGveur14xZWXtg9QcFuT7siDbJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7639
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695629513; x=1727165513;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aX4KQDyLeo3AOznGIdR75xSDxBA3JriF4YSAX5+jfss=;
 b=WmMmRcYDF2FhQy66I7pVA/buSv9LDb4Pvlz8Fop+hrlM2rOv9fofZdFW
 hqXVceQ3lim8POmS8s7RYBw/V3wFCgMV8HHY2YjCVi6Q+sW1uXG8bTgMi
 Oah8ACp2ZALlXsuJk5NyD9d2JsYHL1VINYS6x14/fuqKhwwoxe8f7Gdke
 IPWMPuJmc7ofSNZgcIxmrDESC9EwtpSyto1uRar0un25G/w8Z/ERa8Lyh
 VTCu2luMYWTWhqo7jGFjv7J6/eEieqxEJ/86M+WhqATCqPJetdH/8eJwN
 ib1R41sE/Dx4AI14DFvz/nsvVyTN1A5BccYHbuOj4yD2cvZPLqwpjmmxu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WmMmRcYD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Avoid a memory
 allocation in iavf_print_link_message()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/23/23 14:17, Christophe JAILLET wrote:
> IAVF_MAX_SPEED_STRLEN is only 13 and 'speed' is allocated and freed within
> iavf_print_link_message().
> 
> 'speed' is only used with some snprintf() and netdev_info() calls.
> 
> So there is no real use to kzalloc()/free() it. Use the stack instead.
> This saves a memory allocation.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 8ce6389b5815..980dc69d7fbe 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -1389,18 +1389,14 @@ void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
>   static void iavf_print_link_message(struct iavf_adapter *adapter)
>   {
>   	struct net_device *netdev = adapter->netdev;
> +	char speed[IAVF_MAX_SPEED_STRLEN];
>   	int link_speed_mbps;
> -	char *speed;
>   
>   	if (!adapter->link_up) {
>   		netdev_info(netdev, "NIC Link is Down\n");
>   		return;
>   	}
>   
> -	speed = kzalloc(IAVF_MAX_SPEED_STRLEN, GFP_KERNEL);
> -	if (!speed)
> -		return;
> -
>   	if (ADV_LINK_SUPPORT(adapter)) {
>   		link_speed_mbps = adapter->link_speed_mbps;
>   		goto print_link_msg;
> @@ -1452,7 +1448,6 @@ static void iavf_print_link_message(struct iavf_adapter *adapter)
>   	}
>   
>   	netdev_info(netdev, "NIC Link is Up Speed is %s Full Duplex\n", speed);
> -	kfree(speed);
>   }
>   
>   /**

Looks fine, thanks!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

I know that Jesse is fixing snprintf() calls currently,
but I bet it's not conflicting.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
