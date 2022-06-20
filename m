Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 725535511C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jun 2022 09:47:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6866840AC6;
	Mon, 20 Jun 2022 07:47:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6866840AC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655711229;
	bh=WBG0n1b3uC7IHYNOCQEdX4QsVALu3Faf3IbN2RqT3jU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n6EHOdGjwK1X+/gqsCj8w2Xhv05tIOXjYUId7dze66bFHsK3FVlO9FGyK8yrz8zBH
	 OcLUeXxtQnKBWdOPqNacnc4gxNxmKGYAh17gVajMBa/0VY/EurEyMHcFycdjRjXD4S
	 C3o9ezFA/5ZemIKhhLm384BK4rXk+1k88seOdlRa0Q0A6tpeKzudZIe0EIG5EYyrbv
	 bLkrFkML1BFc0GLDd79B/P0andJ/XdW+Qk9peNG3+ba93rKXuRcaN7RBJea9nTpJqV
	 OLVaIRa851yjSWzmqoX8ZmUt417A5J+QG/oK8pLz3IutxxC+dIPDgkbt7zF9NANk2w
	 RkzFoWQ1wFJaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkgqWNkTBjlm; Mon, 20 Jun 2022 07:47:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EA38401D2;
	Mon, 20 Jun 2022 07:47:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EA38401D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3639B1BF471
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 07:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E89960F28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 07:47:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E89960F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bU-qkYnYQ_x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jun 2022 07:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77BF9605B7
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77BF9605B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 07:47:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="260260880"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="260260880"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 00:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="584788686"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 20 Jun 2022 00:46:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 20 Jun 2022 00:46:59 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 20 Jun 2022 00:46:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 20 Jun 2022 00:46:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 20 Jun 2022 00:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hStEmObqVQpQLonQBkxx6b5lH4PR4udLoLc+Bh+wX2FMQ+x2dXBLR9mGBTYsOKj+R73g+OnrZ7XrW7sjMA3vP5xQD/+ACoZ/9RBZdKyPMaij9h/O0UTuOhrJLS965q13giCVR7cibVWtcpT7m9SQoPFXIy4qnGds0liZrsMsbbXxxxQRIU54n1fHt9hhMmC4wZ+W/Og6tplPO+zbcAWFSHxi0xF+FKEZ6Ry2YennTy1YLEvgZpPaikopdEURRHaKpsRa24P8PMuWKqd+g2h1768uYJqJHsChYRke9f24hmouvTYAZ6CgykOXXekdwFhyRzsGhcSIqbXMkyKEfyH1rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJCfDqU33xOfNB54CXtubinumMOY6FpXSwwUHqj1Heg=;
 b=jRH+cLhyfKlXMkB8zTqou1h8rc/66D665G/bylBxbWaD6isTHZFVBgyozWenrNUNrjHPkm8z0kO3RneJrnbaJqOll6CbDPKvtat4q1KamnJkwv5KWcZNeuCMSF5dTMURzvAkCen/6GmA9DeG2DQnxJIMFXn63vhVCe8p84jPb88eO3HLwgBpKjFRo7N1HoCg5qEK5tXhZ6y4qvcEwCF0oV4CH4oNFvmKbzBcTGctxb/9gFDsKz33l2y+8t1Vv8JMjSB4prK24w/lf031ThwHpHoEbX0GFg2WRwDUnnBJPNLEXNm0cIhhWxNjxuBtNZnmIa9wSJO9nf7tpOJikHgo5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by BYAPR11MB3062.namprd11.prod.outlook.com (2603:10b6:a03:92::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.14; Mon, 20 Jun
 2022 07:46:56 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8%5]) with mapi id 15.20.5353.018; Mon, 20 Jun 2022
 07:46:56 +0000
Message-ID: <a616ac1f-eefd-cdee-ca83-f56a9b2b36ed@intel.com>
Date: Mon, 20 Jun 2022 09:46:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220607065556.3192203-1-anatolii.gerasymenko@intel.com>
 <2c962740-4941-cd4f-4528-3d2465ad50e1@molgen.mpg.de>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <2c962740-4941-cd4f-4528-3d2465ad50e1@molgen.mpg.de>
X-ClientProxiedBy: AM5PR0301CA0014.eurprd03.prod.outlook.com
 (2603:10a6:206:14::27) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0508855e-cb33-4ab7-7d0b-08da52910c62
X-MS-TrafficTypeDiagnostic: BYAPR11MB3062:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB3062ED815AD884345DA6879681B09@BYAPR11MB3062.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K1EhKarrFLe60IrxAwYjwmXvsf8wetMdFmR9bolNRACMjnO1AEs+a8A+5okDgdFWGV4Rm+dOxyj++T8PMOgwzCGbAf7rHjQEvAlEni1DqPNvc+CQGlmLLUO/oDmOaS9YBYAkj1+kVvWmymt30zLFlw+epTtEhaN/eW1LrskdSOxPp0BqxpFNKjIRFGMdN3eC/JXQd1f8kzAnY1gSgAWnuNhRVUS68CqYm6+RiR3zsBKNSPDzhJdzT9UkBbqI+ddtfClF5vMdI96WL9LAz492UqnSBYKCDLcSEJ3ccp5HvDLAWDec2ZoD5e2azNF17ItJXykxmWJStGIiv7N2kzyKKOhntTvCyrgPcygcPWGHUoQfocY/uHq1pEVXVvaDqCIAcKJuP+DpmUs9b1K1qKqGo1Qd/gVYXpg9W4t3WY2QASy4CORxezzT6CxZ+KeENIR7CjYWBhee/bZ4nDfR1YVaI/W0cBG+8JRDZIUOhCAHSo8X9tv+SDLttsz9PguEooXWX714vhacVecias1xM7sbbLOXf8oEAci3Chsgy+j7n1NMMiHYSRr5cfZOcIGoddk5WnqSkfUE50f3UJiuGslYt0Nlif458ADip73+fvvwEgQ940x1UyLLdC04JmuIYp2NeDgpEm1cOu9+66qHHs2lqHzjpOfN8KjofMw9a1tTY+O4nTEMSVh0/0P4Dl5YtpPLp5jzxz97wFeidg4Vrg7lmN09ShzwY9yAgK43iyLQOyQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(5660300002)(86362001)(82960400001)(26005)(83380400001)(498600001)(6512007)(6506007)(186003)(8936002)(8676002)(31686004)(66946007)(2616005)(66476007)(4326008)(66556008)(6666004)(316002)(2906002)(6486002)(38100700002)(6916009)(36756003)(31696002)(53546011)(44832011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnZvVStYZS9LY3QxZVZkSFRhcTM3VFV0b2xoTzRQdGY4STFYdHphSkFyUE9S?=
 =?utf-8?B?RmdCU09oT2FnWHQzdk1Zd2p0NFhkS0lmOCtvOWdHNnZpbFF0SlptaXZYWDNR?=
 =?utf-8?B?KzdsNEZ1a1puT3FNM1U2NDlYdzdXaFlobGpiQ3F2ZzFvcUhPSEtmT080eWt2?=
 =?utf-8?B?TjhjZk5DbVBwZ2g4dTRKUkdBNFVLZHlyV0MyQ3FxekRrS0ZUS0J4enlvMVpw?=
 =?utf-8?B?MndOd0ZoTDIwYU5hWXQ2R2QwNlE1OXdEMzF0Tyt3UEVHSGRscjNkdFE2QVVU?=
 =?utf-8?B?QkRpcklXREI3cW4yZGFTamRRTVU1aUYzSjRBdnNXWXBlZ2NRYmo3WkJWUnVY?=
 =?utf-8?B?aXZEejRJUTBqRUFNaE44Q2NBK2tkdGxGV3hHTDRRSnhtWDE2Um9ra2FDbHVD?=
 =?utf-8?B?bmpvRWRiVmtPd1hlVlA3dFJnNTZWMTRhWWZsbXBENG9CMGtaZlE5VjFjMGxq?=
 =?utf-8?B?NERjZWhCd2NPS2VlcnE2d2plWDdKcWxJbHgwbVRxRkhMRG8zTTA5bDNLMTNw?=
 =?utf-8?B?aDc1VnZSVzlGYUdBQTdXZnFGTk1OaEV4UlVBdjNxMVNyaUpzQVJaSkZ4RTc3?=
 =?utf-8?B?V2x6eVZHM0l3RFFiTWZ0OGY0VnhCR2M1YUpQRXloNEpBTkJ6Tm5ZMjh0YXZi?=
 =?utf-8?B?ZXFnRlFFTlcxa082dS8rQVVTeVNDN2hrWGdPTCtiUWlxSWkrK2IxbTRGRWF3?=
 =?utf-8?B?U1FQaWM3M1RtNXdCbG9oODlZdkd6dnk1clhQeDFxMTQ1NjkrbHhHS2ptUExD?=
 =?utf-8?B?NmlCeTUrYmZiTy92NFMza0pwWVJ6NndUSzM4cnQ2UXdMYkNLMmdpVGk5Z29K?=
 =?utf-8?B?NVYva0VBY1BkTlQ0MGNjSjJhTHd0UzI0M1pMRmMzV0dhL093UnhwWElGVys2?=
 =?utf-8?B?UWIwYW1ycmFiaVR0NHFJMnNYNkpBaVhmeUQrOUd3MGVGTjVobGwrOUVpdVhC?=
 =?utf-8?B?eHVSRzJQdFB6blpFczZxN3JPTC9jcjRsTTBSc0NudlVNQ0pxQWQwKzRPaUYy?=
 =?utf-8?B?VlZ5K2pTbGdoUThkSzI0ZWNna042RmhqTlFGVlI4cFVPcld1VXpPV0QzbFZQ?=
 =?utf-8?B?QUVlSFE4WEo1YWt1VnhtUHNkK3Jid0IyWm9LVWFyUmdnNmF2R0RWN2NLNitM?=
 =?utf-8?B?d0VMbkd5M1huM243VlBQMXU4dkNBTUpCa0RqSUllcWZhUzNPNXRBeWZPSFJW?=
 =?utf-8?B?dDQ2NFc4MTBQNGozTWRaZGxmS25wTlMrbnd5MEdDNGZlV01vME0raU1qd1Ru?=
 =?utf-8?B?a2tRaUVocUhKQlUvaThPTEkwalZmbW4yV052cm5oWnhxL1BhTDRNRUUvQTZl?=
 =?utf-8?B?OG5kc1pQM3Qvcy96aSsyQzY4NzJCcTNnUlpheDZROVlEamdoRWIrb0s4Lzdu?=
 =?utf-8?B?RVdRelI5V1RlY0VoMkEvaW5ZMmYzR29PRzU4Y3hVR0R1L3UrNFJ6a2doTHBh?=
 =?utf-8?B?c1ZINi9sOE9UaVlGLzVmZmZvUzlWUUZIWTgrSzR0ZFBXK3JDbVdsYzFnYkJX?=
 =?utf-8?B?cXZvclE0KzU3c2RlQm5GbE5mMUl1akJwQ21UWG9PeXdPNSt3bHdPbCtFUWU5?=
 =?utf-8?B?MTQ2eGFlMzBZNHZidndzRjQ4ZStmZ3ZVTUx1ckVjSjVQbXFBc1graFUzNThv?=
 =?utf-8?B?Q1R0a0gvMlNNNnR3SXZTakVIN3NRK0lVV1NDVzQ3aVpiWURTbENvSVhQNDZp?=
 =?utf-8?B?Z0hFcWxMa1FSd1E3UTVsbVg5cm5CTVJ1RGhQeWJHL1ovNFV0dmJJai81WXVD?=
 =?utf-8?B?Q3MwR2IyTnJObm0xUTNkcTc4Y1lpTTlwSml5MGJLNmRqWmt5RnIzd2IzWEg2?=
 =?utf-8?B?RDBFd0tKTFhMVXk3QU9keUFtTElZUys0ZTFFbkJvbjE3SVoyZDdnOEl4RXpj?=
 =?utf-8?B?dWJIZHNuMWw0aWFwSEc4cWt4TWFEUk9NandOZTd6aUNUVTV1N1F4ODcrdk54?=
 =?utf-8?B?TnFRRlBjcEhPRHQxc1NUcCszZ0dHd0RiWjZiMXMzZVk2aVY0eVdWeGd5TGMw?=
 =?utf-8?B?b3BZSzgxcXdnUnM1N09aQnhvcmo5RUJYTXJzWDVlM0FNdVhKbzE1aWhML2tV?=
 =?utf-8?B?RjZaN29VbDR5TGVwV2JDOUpZVTNGWlVmQ1ptSFlqQU14VHlRMVBaT2NMc01M?=
 =?utf-8?B?Szlwb0pLNlFMUytwTHA5Y1JYYUdUMFFWVXYxcTBFQm5lMlowblBVbTB4MWwv?=
 =?utf-8?B?bmdXUmxZTHdlT2w2UnR6YWEzQzFiRW5ZME9MbU5lRmQ4ZEhyQ000bks4Wk1X?=
 =?utf-8?B?WmJzZ1M1SzVrRjJabmcxTXFJMzBxYmg3UkFKM2NEajVBZitoNnFBTzQ0WkdP?=
 =?utf-8?B?WEpmVDJsL29INm5vQ1cxam1aVUdGUWh3UHdoMHhyRFVtL2xJbnVQZUNaazZ5?=
 =?utf-8?Q?8kq5kDGvv8QUGfso=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0508855e-cb33-4ab7-7d0b-08da52910c62
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 07:46:56.0363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ngAw8jMPS8mbI4i1KXy+Wqa/n4SNgw8Xf9kPu+/ZMZIsvQMxASVCg2aVEgX4ocavB7bxcqahLYqO/s1n1AwMc7otuqycQQ+MpXuGrKOdjqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655711220; x=1687247220;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2YTeruhHWdTtRkrpAx6a+/2CCWS8iEQQTM9UUtIhKHc=;
 b=juawUnmLHBtq8ifslWUZzjSvAQxi9T+z7CU1MM7DAeR0IuyGfKCq+aTi
 kfTDZBMXdxSPmrTuYiU2DrJyhav9pzezLpWU5A0v+oEAISsyR7J0m3Dee
 amBbsOsTTCvscMPTyb3UV2uc6Fk++2JAyxvkOyMzGWzJp2j6FVvp9FQU5
 jXtK0e9XmgPurwG8yhmkA93A0vXWYsrOYGsx9+3NzfYmpOPnBkxbIDwfI
 KnDuZ+zONIN2mp0Bc9OoqoGFHvFSeWAD6OEN/jjSEk9JIluZfcclAEYAO
 K4y+Q926j0LiJyJDHmlTwwgnkksxUP7Hnn8DqkaUNHIWm5M3WipsL7A2s
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=juawUnmL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: ethtool: advertise 1000M
 speeds properly
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

T24gMTcuMDYuMjAyMiAxMDowMywgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBBbmF0b2xpaSwK
PiAKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiAKPiBBbSAwNy4wNi4yMiB1bSAwODo1
NSBzY2hyaWViIEFuYXRvbGlpIEdlcmFzeW1lbmtvOgo+PiBJbiBjdXJyZW50IGltcGxlbWVudGF0
aW9uIGljZV91cGRhdGVfcGh5X3R5cGUgZW5hYmxlcyBhbGwgbGluayBtb2Rlcwo+PiBmb3Igc2Vs
ZWN0ZWQgc3BlZWQuIFRoaXMgYXBwcm9hY2ggZG9lc24ndCB3b3JrIGZvciAxMDAwTSBzcGVlZHMs
Cj4+IGJlY2F1c2UgYm90aCBjb3BwZXIgKDEwMDBiYXNlVCkgYW5kIG9wdGljYWwgKDEwMDBiYXNl
WCkgc3RhbmRhcmRzCj4+IGNhbm5vdCBiZSBlbmFibGVkIGF0IG9uY2UuCj4gCj4gSXMgc29tZSBl
cnJvciBzaG93bj8gV2hhdCBpcyB0aGUgYmVoYXZpb3Igb2YgdGhlIHN5c3RlbT8gSSB3b25kZXIg
d2h5IHRoaXMgaGFzIGdvbmUgdW5ub3RpY2VkIGZvciBzdWNoIGEgbG9uZyB0aW1lLgoKTm8gZXJy
b3IgaXMgc2hvd24uIFRoZSBsaW5rIGp1c3QgZG9lc24ndCBjb21lIHVwLiBIYXZpbmcgYm90aCBt
aXhlZCBjb3BwZXIgYW5kIG9wdGljYWwgc3RhbmRhcmRzIGVuYWJsZWQgaXMgbm90CmEgcHJvcGVy
IGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBmaXJtd2FyZSBhbmQgaXQgY2Fubm90IGVzdGFibGlzaCB0
aGUgbGluay4KSSB0aGluayBpdCB3ZW50IHVubm90aWNlZCBmb3IgYSBsb25nIHRpbWUsIGJlY2F1
c2UgaXQgaXMgYSByYXJlIGNhc2UgdG8gdXNlIDEwMEcgaGFyZHdhcmUgZm9yIDFHIG1vZGUuCgo+
IAo+PiBBZGQgYSBzcGVjaWFsIHRyZWF0bWVudCBmb3IgMTAwME0gc3BlZWRzLgo+IAo+IEZpeCB0
aGlzLCBieSBhZGRpbmcgdGhlIGZ1bmN0aW9uIGBpY2Vfc2V0X3BoeV90eXBlX2Zyb21fc3BlZWQo
KWAgZm9yIDEwMDBNIHNwZWVkcy4KCkZpeGVkLgoKPiAKPj4KPj4gRml4ZXM6IDQ4Y2IyN2YyZmQx
OCAoImljZTogSW1wbGVtZW50IGhhbmRsZXJzIGZvciBldGh0b29sIFBIWS9saW5rIG9wZXJhdGlv
bnMiKQo+PiBTaWduZWQtb2ZmLWJ5OiBBbmF0b2xpaSBHZXJhc3ltZW5rbyA8YW5hdG9saWkuZ2Vy
YXN5bWVua29AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9ldGh0b29sLmMgfCAzOSArKysrKysrKysrKysrKysrKysrLQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYwo+PiBpbmRleCAxZTcxYjcw
ZjBlNTIuLmUzMDgwYzU2NDQzMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9ldGh0b29sLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9ldGh0b29sLmMKPj4gQEAgLTIxODksNiArMjE4OSw0MiBAQCBpY2Vfc2V0dXBf
YXV0b25lZyhzdHJ1Y3QgaWNlX3BvcnRfaW5mbyAqcCwgc3RydWN0IGV0aHRvb2xfbGlua19rc2V0
dGluZ3MgKmtzLAo+PiDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+IMKgIH0KPj4gwqAgKy8qKgo+
PiArICogaWNlX3NldF9waHlfdHlwZV9mcm9tX3NwZWVkIC0gc2V0IHBoeV90eXBlcyBiYXNlZCBv
biBzcGVlZHMKPj4gKyAqIGFuZCBhZHZlcnRpc2VkIG1vZGVzCj4+ICsgKiBAa3M6IGV0aHRvb2wg
bGluayBrc2V0dGluZ3Mgc3RydWN0Cj4+ICsgKiBAcGh5X3R5cGVfbG93OiBwb2ludGVyIHRvIHRo
ZSBsb3dlciBwYXJ0IG9mIHBoeV90eXBlCj4+ICsgKiBAcGh5X3R5cGVfaGlnaDogcG9pbnRlciB0
byB0aGUgaGlnaGVyIHBhcnQgb2YgcGh5X3R5cGUKPj4gKyAqIEBhZHZfbGlua19zcGVlZDogdGFy
Z2V0ZWQgbGluayBzcGVlZHMgYml0bWFwCj4+ICsgKi8KPj4gK3N0YXRpYyB2b2lkCj4+ICtpY2Vf
c2V0X3BoeV90eXBlX2Zyb21fc3BlZWQoY29uc3Qgc3RydWN0IGV0aHRvb2xfbGlua19rc2V0dGlu
Z3MgKmtzLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU2NCAqcGh5X3R5cGVf
bG93LCB1NjQgKnBoeV90eXBlX2hpZ2gsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdTE2IGFkdl9saW5rX3NwZWVkKQo+PiArewo+PiArwqDCoMKgIC8qIEhhbmRsZSAxMDAwTSBz
cGVlZCBpbiBhIHNwZWNpYWwgd2F5IGJlY2F1c2UgaWNlX3VwZGF0ZV9waHlfdHlwZQo+PiArwqDC
oMKgwqAgKiBlbmFibGVzIGFsbCBsaW5rIG1vZGVzLCBidXQgaGF2aW5nIG1peGVkIGNvcHBlciBh
bmQgb3B0aWMgc3RhbmRhcmRzCj4gCj4gb3BpdGljKmFsKj8KCkdvb2QgY2F0Y2guIFRoYW5rcy4K
Cj4gCj4+ICvCoMKgwqDCoCAqIGlzIG5vdCBzdXBwb3J0ZWQKPiAKPiBBZGQgYSBkb3QvcGVyaW9k
IGF0IHRoZSBlbmQ/CgpBZGRlZC4KCj4gCj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKgIGFkdl9s
aW5rX3NwZWVkICY9IH5JQ0VfQVFfTElOS19TUEVFRF8xMDAwTUI7Cj4+ICsKPj4gK8KgwqDCoCBp
ZiAoZXRodG9vbF9saW5rX2tzZXR0aW5nc190ZXN0X2xpbmtfbW9kZShrcywgYWR2ZXJ0aXNpbmcs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAx
MDAwYmFzZVRfRnVsbCkpCj4+ICvCoMKgwqDCoMKgwqDCoCAqcGh5X3R5cGVfbG93IHw9IElDRV9Q
SFlfVFlQRV9MT1dfMTAwMEJBU0VfVCB8Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBJQ0VfUEhZX1RZUEVfTE9XXzFHX1NHTUlJOwo+PiArCj4+ICvCoMKgwqAgaWYgKGV0aHRv
b2xfbGlua19rc2V0dGluZ3NfdGVzdF9saW5rX21vZGUoa3MsIGFkdmVydGlzaW5nLAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTAwMGJhc2VL
WF9GdWxsKSkKPj4gK8KgwqDCoMKgwqDCoMKgICpwaHlfdHlwZV9sb3cgfD0gSUNFX1BIWV9UWVBF
X0xPV18xMDAwQkFTRV9LWDsKPj4gKwo+PiArwqDCoMKgIGlmIChldGh0b29sX2xpbmtfa3NldHRp
bmdzX3Rlc3RfbGlua19tb2RlKGtzLCBhZHZlcnRpc2luZywKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEwMDBiYXNlWF9GdWxsKSkKPj4gK8Kg
wqDCoMKgwqDCoMKgICpwaHlfdHlwZV9sb3cgfD0gSUNFX1BIWV9UWVBFX0xPV18xMDAwQkFTRV9T
WCB8Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJQ0VfUEhZX1RZUEVfTE9X
XzEwMDBCQVNFX0xYOwo+IAo+IE1ha2UgdGhlIHNlY29uZCBhbmQgdGhpcmQgYnJhbmNoIGFsbCBl
bHNlLWlmLCBhbmQgYWRkIGFuIGVycm9yLCB3aGVuIGFsbCB0aGVyZSBjaGVja3MgZmFpbD8KCmBh
ZHZlcnRpc2luZ2AgaXMgYSBiaXRtYXNrLCBzbyBkaWZmZXJlbnQgY29tYmluYXRpb25zIG9mIDEw
MDBiYXNlKiBtb2RlcyBjYW4gYmUgc2V0IGJ5IHRoZSB1c2VyLgpUaGF0J3Mgd2h5IGlmLWVsc2Ug
ZG9lc24ndCBmaXQgaW4gaGVyZSwgd2Ugc2hvdWxkIGNoZWNrIGVhY2ggbW9kZS4KClRoZXJlIGlz
IG5vIG5lZWQgZm9yIGFuIGVycm9yLiBUaGlzIGZ1bmN0aW9uIGp1c3QgbWFwcyBldGh0b29sIG1v
ZGVzIHRvIHRoZSBkcml2ZXIncyBpbnRlcm5hbCBtb2Rlcy4KSWYgbm9uZSBvZiB0aGUgZXRodG9v
bCAxMDAwYmFzZSogbW9kZXMgd2VyZSBzZXQsIHRoZW4ganVzdCBub25lIG9mIHRoZSBkcml2ZXIn
cyBpbnRlcm5hbCBtb2RlcyB3b3VsZCBiZQpzZXQgYW5kIGZpcm13YXJlIHdpbGwgbm90IGJlIGNv
bmZpZ3VyZWQgZm9yIDEwMDBNLgoKPiAKPj4gKwo+PiArwqDCoMKgIGljZV91cGRhdGVfcGh5X3R5
cGUocGh5X3R5cGVfbG93LCBwaHlfdHlwZV9oaWdoLCBhZHZfbGlua19zcGVlZCk7Cj4+ICt9Cj4+
ICsKPj4gwqAgLyoqCj4+IMKgwqAgKiBpY2Vfc2V0X2xpbmtfa3NldHRpbmdzIC0gU2V0IFNwZWVk
IGFuZCBEdXBsZXgKPj4gwqDCoCAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRldmljZSBz
dHJ1Y3R1cmUKPj4gQEAgLTIzMjAsNyArMjM1Niw4IEBAIGljZV9zZXRfbGlua19rc2V0dGluZ3Mo
c3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGFkdl9saW5r
X3NwZWVkID0gY3Vycl9saW5rX3NwZWVkOwo+PiDCoCDCoMKgwqDCoMKgIC8qIENvbnZlcnQgdGhl
IGFkdmVydGlzZSBsaW5rIHNwZWVkcyB0byB0aGVpciBjb3JyZXNwb25kZWQgUEhZX1RZUEUgKi8K
Pj4gLcKgwqDCoCBpY2VfdXBkYXRlX3BoeV90eXBlKCZwaHlfdHlwZV9sb3csICZwaHlfdHlwZV9o
aWdoLCBhZHZfbGlua19zcGVlZCk7Cj4+ICvCoMKgwqAgaWNlX3NldF9waHlfdHlwZV9mcm9tX3Nw
ZWVkKGtzLCAmcGh5X3R5cGVfbG93LCAmcGh5X3R5cGVfaGlnaCwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFkdl9saW5rX3NwZWVkKTsKPj4gwqAgwqDCoMKgwqDC
oCBpZiAoIWF1dG9uZWdfY2hhbmdlZCAmJiBhZHZfbGlua19zcGVlZCA9PSBjdXJyX2xpbmtfc3Bl
ZWQpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG5ldGRldl9pbmZvKG5ldGRldiwgIk5vdGhpbmcg
Y2hhbmdlZCwgZXhpdGluZyB3aXRob3V0IHNldHRpbmcgYW55dGhpbmcuXG4iKTsKPiAKPiAKPiBL
aW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAoKVGhhbmsgeW91LApBbmF0b2xpaSBHZXJhc3ltZW5rbwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
