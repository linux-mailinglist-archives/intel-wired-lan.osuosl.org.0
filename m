Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058477C4E7B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 11:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FD194183A;
	Wed, 11 Oct 2023 09:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FD194183A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697016252;
	bh=4IdQmwRk7siBrK97aox/3oCwRFDQLbGOrGZhuUQSW+c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NMxmw62noOFEOIeaKBUYTA8uP52LieTrJQ3zmrnUvGSt+A3SSDF8WxmrR1z9/hI09
	 Se5etR/eFmC+KF38+PbJc+2o1o+eb7yexdmVayM6Z+tYN8qBNhZUoQ8WhqiFt6hGHo
	 E7DMqX7hrt4FeF97tTgMe/PkqR2+mTeR2ucAV3vT+PimKJ0XYNl6dTA61p/6gXvLUr
	 Hr2S4CQQhx5rQ/Nb5t0L0K8tJRb3huR7+2Q0XCbunVe2Rjb37h60zd9MQZxaGmWYPJ
	 +VCoiDaLuYMYaz3CouRYorZ83KJ4uUpVPMT5mHLmCI1V4hJE+dZqnu1LVRJ8KxPSam
	 dv+xhj3jBzAdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t6avQZTJpfo4; Wed, 11 Oct 2023 09:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5425415B0;
	Wed, 11 Oct 2023 09:24:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5425415B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 781A31BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A67A408CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:24:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A67A408CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0BXUlWJ6omeq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 09:24:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 006DC408BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 006DC408BD
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384471452"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384471452"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="844488828"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="844488828"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:24:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:24:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:24:03 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZxvxLtL77aqU84OfsZkYtclC3XY4TFley+lEdEI0NmLDlzEwFoa0kafXg8z9lyrRpMR0ZMpBet6c1TWMICHnO7rTAYR9W3RHLw7brqOfKDUAPYyiFf7Sn3tZ4zHTs77gDwJYKEhGW3ceYR46tsl+bRcreJ32Cm40JMlBV1cI76wvh45aLFbpp1z0IkVh6Bc54oTmw3hh2BuudHfe7SC9ijjgfgXSc/NLc9uYLI0//DdL/nj0hOgNDGbF/d6ZZ2UaZmB8/ag6Q9V5fbcwlx5mWgsD+KZ7W8qYV/oemoSXojdL4YGXUPL9L73Zkoe6jkXenmJCup9R8D0PjxN2/0lE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGquBI7e2O0Ug6kgjTPg/QxeHyny6Md9J292pSJ3rQQ=;
 b=hJ4rWy6NipEGNnnMV3NDa6qOST1zvD8zu+w7l2NQExIEUvZWcWOYPdzYm2TozYFuIsHcifY3YLACCtMoj+ellw9yUQmy/yicp2pqqadjDDSwejJ/lTAlD7PoPOuMjd87VjYxf1LPCfCDKRdWy6aQM8v74zdQwEH0LpZ4Y1OThV2YbFbCotxp/ZhG7i7GxJos6rqSIso3OVt6rZubjIeZhSmMHGoMpsRIGMkq/tMokeYEa/TeEHonlZapTA6JktWZpzh+g3fZKb7+S8jTMzycc5MaFnshQ9JQAVsskHyheZ7pXwJE9myYLy59IxaAVW1hSg+sxxgKp9tan/Yy9WjuMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.42; Wed, 11 Oct
 2023 09:23:56 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%6]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 09:23:54 +0000
Message-ID: <4ab9d2c8-05bc-40f2-90d5-303aacdca5e2@intel.com>
Date: Wed, 11 Oct 2023 11:22:21 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20231011091342.251204-1-aleksandr.loktionov@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231011091342.251204-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: FR3P281CA0140.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::12) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|IA0PR11MB7257:EE_
X-MS-Office365-Filtering-Correlation-Id: b1c2a22e-429b-4cb4-5bec-08dbca3bbe88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ED8TBxldNM4NryipRmPbBMGRIOXomhMJntALSceK18FRL0G0bkFIYp0u9c1wdDMjNRY8KepOM+RrhCKchHPeZ64v8ndMVO+oVVZuA0UQbzrQ9hIsO19IjndWVPN8MU88ltXtOyxo+997AI88LScqQjtjXhTpZYWlRnocl+2ZrHf39w+qlkLqn8tyRU8FyW+Xbd9qaXc72cv9OjghFJNiY6hD2O54podSmeNOhm+o0FTDphfrlSq3KC0HZxCx28ZdH8V4pSuWQL/RKxBFZrp4z5D47zNcjk1I26LW94Vg5Tk6wJ2K2LKoDZK9dVsQNl0JoZ718d/awwp3Lh/moJxke5lsoux0kNhNEwNRbcJ9FBPEYsUI4F7EFFGBzlg/Jc7nV+Cli1I5NMdbyLjEIaeJ4fXyKNUAx2ZaWTHYtBEupB4VeeLgYTUHn0VvJCTISmvCXMicPb5w1YKLNdWOwwEXISlz1hJTyXbSVTyvk+XOHTsmxcvmTEvEiCWFyb5ww/k5136FsL5vph7laE0jjSh7X0YMlGE+MsH+OugUNqvC/StXO+QBJgk1bZJV+bl2nEKsv/f+Zm1CXTyOSh5nqu1gZaH8nOu1D2kYT5EcVGcfdHmT0LXUkrBB171NFLa2dvXFUb3pyyrV1sY14Xl/eRa2pA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(83380400001)(2616005)(107886003)(26005)(36756003)(86362001)(6486002)(4326008)(6862004)(38100700002)(478600001)(2906002)(37006003)(66476007)(54906003)(316002)(66556008)(6636002)(66946007)(31686004)(5660300002)(8676002)(8936002)(41300700001)(82960400001)(31696002)(6666004)(6506007)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWRVdVNZeWNEVkF3UXBYZngxaW96Z1VhYmdjQnc2QzJGL2tNVXJPV1A5anBz?=
 =?utf-8?B?bnNjSFNYKytqWTlOSCtqd1VPbmtWMjdNNFR2QVJQdjhxZ0lEbTVTS3RPV2pP?=
 =?utf-8?B?enR1ZU1ySWxvT3k5MDJuS2duOTc4Qjc2M3VKYkRmczdSM3pQaFZPaHJXUkhC?=
 =?utf-8?B?SDEycEx2MEltaE9FNW1xTUsxNllXUFkvako1YTR6NWoxSVQ4UzV5ZkhaNEQx?=
 =?utf-8?B?U0hyc21Kb2ZEaHVrZEhQWW45MXYrUVk1b2dMajNOS1ZrNDJrY0U3cmRBY1lw?=
 =?utf-8?B?V0lvMTcyY3ZoNG9nZVBFaGRabWxpeXllUVQrN3RPZ0pYK010UnA4cDNlV2d1?=
 =?utf-8?B?RlRpQ2ZFTnNkSmtyeFFZTTlMUW8rL1dBMjBqOTVXc3BZTkVOaGd2TE16VWM2?=
 =?utf-8?B?aU9nRmFCQzJPY0dQMllCNGZILzI2KzJtYVk5K0JOV1RodjVpQUhjK28yU2tH?=
 =?utf-8?B?THpNaXBrTm96RGtuNldDOFVFbzljRzV1M09UNDBjZWFGWTU0em8vcS94UW9Y?=
 =?utf-8?B?OGtRMk5GNWZ5VjE3WGpiM0hFMGpRMWRsQUdMdHRYUnR6aGx1UkNpUEJ2TEdi?=
 =?utf-8?B?OHIzQ1JoOFpIYWpwcTNxcitibk9qZ3BuMkVVVHZjVnM5VjdhVTRsQ2hPTDNx?=
 =?utf-8?B?anlnVWdnaEtGMFp4bFR4bHFOTVFKTG10SVZ3RUxIcUJ0T1RqdS8veEhtUlFG?=
 =?utf-8?B?VFhGZVZLeVNnNVZBQU5nN2d0V0FkbFArVXo2T0pLanVhM2RtVGxCc2JkYjNF?=
 =?utf-8?B?QitsaDZkc0c3ak5LNzUrQ0pkT3dRVTZqZ3RHV1ZmQkxxK252TUdCR2xLYlBS?=
 =?utf-8?B?VCs2cjJjRFZBc25MNTd4bW1tVVE2UFhIaHJkMHU5M0l1RytXWi9lOVhKWXZP?=
 =?utf-8?B?aHcwV1dFY0thbHlpWTVETTRiZkVILzh5NHgwVGZHV0xNQWk1QzhXR0poQTBp?=
 =?utf-8?B?SDIxTTNGMnN6UkRCRHdJRGdJamdSS1hPTXo4L3NmZTdhMUtQdHdBT1JyQ2hh?=
 =?utf-8?B?MWJldktXeVAwTFZORVJmT0pwbEhveEZkM3U2VENYc3BjUE9IZXpPQjV5empB?=
 =?utf-8?B?cng2T1o1MXlobmJubFlPQkt0cGtvTlF1Z0dzT2lEMEc3RkVBQklYUEV4TlVP?=
 =?utf-8?B?SHp5aU9hYkNTRGh5Vy8xRFoxNEN0VUF1clRQUHd2L1NCZUxzZ28rTEk3R3p3?=
 =?utf-8?B?elBNVWJyL2VyQ0J6UmRYYjR3UDdmRlJodVJhMG9ZRmdhZ2ZYRXkyKzI1REx2?=
 =?utf-8?B?TVZHb0NKTXU1U0ZCVDQwZmZQWXVmQW1oUFFaOHJRSkp5T3hkcmh1bGlpWjVt?=
 =?utf-8?B?OUVRNjNyaDdCbTZvMUVEa0t2UFNoY0ZhWmN2djVhd3ZKUjdjTmozY3lLcG5x?=
 =?utf-8?B?V1VjN3F2cHk3M01WdWNUWGFvT0M0WVUrL2kvR3Vvd2t1ZElSczFsRUE2ZVlm?=
 =?utf-8?B?YTY4aFhpTDErUm81eFllaHBPVlliY2l3a1RPa21FMjMyaTBDRnRVc0NSeW53?=
 =?utf-8?B?VlB5YU9HRk9qZUh1c3FyMHpYNWswalZJMXdlSjQ3U3I1bTFoZVBBVWZUbTNC?=
 =?utf-8?B?Tm52OTZMSmtkdEN5Vm81VkhyZ1dWak1FTFRpN2ZKdy9JL0tpUHREd3dHV09n?=
 =?utf-8?B?Q2ZDVUlzYkNiUGltTXJoZkt3VFJMRG9vdHJaVGNMdWgvWkRzcE5EWHloTUpM?=
 =?utf-8?B?TXNuVFRQSE9Bazc4bDlsU2VyeHFKd0x0M2xOS1B0N243TjB4aFdvOEJoWkc2?=
 =?utf-8?B?NnpidGVDVVVVcmxLNWJ1L2lVejRxZFUweWtUbk8yNlpHZ0g5RVQ5QS8vTy9X?=
 =?utf-8?B?VVQ3dkhHS2RsSC9sMEVUSjZIU2dFUi9GWnVjYzNTRXlLMmtQUGxLWEx0SnVK?=
 =?utf-8?B?b0JnV0d1QVg5S2wvTStzdENMQzBWUG9jK2oyMytEVnZoQm5IcUU0bFFpZGRk?=
 =?utf-8?B?OEJIZ1UzMHB1Q1RzTmljUGg2MHFxbmpvZ1MvMEdhSzB0eTV2bWl6YnVJTTlx?=
 =?utf-8?B?YXRIdHdHS3gyb1dGUk1VSE40WjJnd0U3WlJYOG5SdUhHUmFTenZ5RXNiZzVi?=
 =?utf-8?B?N0NzckVKc09XOUdaY2JXcEpiZUhqY2NUQ2lZcTJkeEYyMldUYkR4b1h2MGta?=
 =?utf-8?B?bTlKZktEVHcwUDVJTEZSYlVSY3ppc0pmNVBiSlNhZzdkVGdsUjAxT3NrM0hH?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c2a22e-429b-4cb4-5bec-08dbca3bbe88
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:23:35.4738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Duzu0Ayaps8tYsPkGJbb50fIbYaeCxOZD+quiSugodFRFaakSWf+F4Jrv0BpQfoXh/JPjGcno1EsA7YgfMFDLdtZ8ei3pa3LORKgziiksY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697016244; x=1728552244;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KyOIEUmutH+nUcGLLxK3akV5fwW8LW/ionubybRXGp0=;
 b=kz7cgVx1eLmVsXxkIhC8Bd+/EuLUcnPsDFeHUvbSPnZFhoPYeiDgkpsy
 bKKzoktUawLJZwln/B0MIjMP6nzz/hnLoyQC3e/VDcLAmCAD7MdptYVEp
 rkpRD8kvzUNNkz99kTVDR8YWjJPQLh6Owa8j03SpZ0lCOW0OCsV/WThrZ
 n7siw5nw4w5UiGjYEcCyXxs/Z3TvMqBlxDPif5QvTpiXo/iml3/luydUD
 qzV0gA0OhWsVQbcwtN+62vt2dEhy0ILDVE7+7skqJvewXiI9OvZJcsNOX
 J1xiLJIinokWcXJUr1uv1Vh487npBDbjJ+8UADwwt8ssg9KLTA65qhmmW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kz7cgVx1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 11 Oct 2023 11:13:42 +0200

Please add netdev and linux-kernel MLs to CCs when sending the next version.

> In order to avoid no link after plugging a different type PHY module.

The sentence is incomplete, it tells "why", but no "what".

> 
> Add reset link speed settings to the default values for PHY module,
> if different PHY module is inserted and currently defined user-specified
> speed is not compatible with this module.
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>

How did Radoslaw participate?
If he's the author, he must be in the "From" field as well. If not, his
SoB tells me nothing. Author, co-developer, reviewer, ...?

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 fixed Reviewed-by tags
> ---
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 65 +++++++++++++++++++--
>  1 file changed, 61 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index d0d0218..6829720 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10076,6 +10076,55 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
>  	rtnl_unlock();
>  }
>  
> +/**
> + * i40e_restore_supported_phy_link_speed - Restore default PHY speed
> + * @pf: board private structure
> + *
> + * Set PHY module speeds according to values got from
> + * initial link speed abilites.
> + **/
> +static int i40e_restore_supported_phy_link_speed(struct i40e_pf *pf)
> +{
> +	struct i40e_aq_get_phy_abilities_resp abilities;
> +	struct i40e_aq_set_phy_config config = {0};

Prefer `= { }` over `= {0}`.

> +	struct i40e_hw *hw = &pf->hw;
> +	int err;
> +
> +	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
> +	if (err) {
> +		dev_dbg(&pf->pdev->dev, "failed to get phy cap., ret =  %i last_status =  %s\n",
> +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));

If it's an error, why dev_dbg(0), not dev_err()?

You have @hw pointer, but dereference it manually throughout the whole
function :D

> +		return err;
> +	}
> +	config.eee_capability = abilities.eee_capability;
> +	config.phy_type_ext = abilities.phy_type_ext;
> +	config.low_power_ctrl = abilities.d3_lpan;
> +	config.abilities = abilities.abilities;
> +	config.abilities |= I40E_AQ_PHY_ENABLE_AN;

Why not in one line?

> +	config.phy_type = abilities.phy_type;
> +	config.eeer = abilities.eeer_val;
> +	config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
> +			    I40E_AQ_PHY_FEC_CONFIG_MASK;

FIELD_GET()?

> +	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
> +	if (err) {
> +		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %i last_status =  %s\n",
> +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));

(same re dev_err())

> +		return err;
> +	}
> +	config.link_speed = abilities.link_speed;
> +
> +	err = i40e_aq_set_phy_config(hw, &config, NULL);
> +	if (err)
> +		return err;
> +	err = i40e_aq_set_link_restart_an(hw, true, NULL);
> +	if (err)
> +		return err;
> +
> +	pf->hw.phy.link_info.requested_speeds = config.link_speed;
> +
> +	return err;

	return 0;

> +}
> +
>  /**
>   * i40e_handle_link_event - Handle link event
>   * @pf: board private structure
> @@ -10086,6 +10135,7 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
>  {
>  	struct i40e_aqc_get_link_status *status =
>  		(struct i40e_aqc_get_link_status *)&e->desc.params.raw;
> +	int err;
>  
>  	/* Do a new status request to re-enable LSE reporting
>  	 * and load new status information into the hw struct
> @@ -10109,10 +10159,17 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
>  		    (!(status->an_info & I40E_AQ_QUALIFIED_MODULE)) &&
>  		    (!(status->link_info & I40E_AQ_LINK_UP)) &&
>  		    (!(pf->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED))) {
> -			dev_err(&pf->pdev->dev,
> -				"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\n");
> -			dev_err(&pf->pdev->dev,
> -				"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");

IIRC we don't usually end kernel messages with a dot.

> +			err = i40e_restore_supported_phy_link_speed(pf);
> +			if (err) {
> +				dev_err(&pf->pdev->dev,
> +					"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\n");
> +				dev_err(&pf->pdev->dev,
> +					"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
> +
> +				return;
> +			}
> +
> +			dev_info(&pf->pdev->dev, "The selected speed is incompatible with the connected media type. Resetting to the default speed setting for the media type.");

This should be dev_warn() I guess. At least dev_notice().

>  		}
>  	}
>  }

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
