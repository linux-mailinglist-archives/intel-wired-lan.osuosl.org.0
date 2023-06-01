Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CAF71F3F9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 22:38:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4EC061595;
	Thu,  1 Jun 2023 20:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4EC061595
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685651888;
	bh=00RhY9KUU5KfSr8iwtI/HSOStOmC3O8K4FQr4uh23ZE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4l8A0ZU508lpefewl/cL3JQsefbkx50y/Iy9uA4w9UdCQzgHGZuIEjLyVZjbrKarU
	 O1EgL/Es2vPQ3J/dKoNCIRdxQQoF+/NbLJeBR46tCn/Oi5Vf3CSSGEeyffpEb02N01
	 AHXGJ1PudcgBQsyQiXvNqylxl7fQkFNEH2IiUffKUQYs0cIGu1hIns5n6feTHpW/0U
	 XE/R//85h0m/U2uL4qLVATG02O7lmIva5XiI65bwzSg8WVeFaTBY0zsR3jyagxU9PY
	 eNGZedryFmAshfH8jmbb2DcIPkNbkQ5OuEV9+zR8JMfc0Dd5agwEIY89G4dK87U8kR
	 +IxPO1Yeu/8lA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEQP3usnWVMy; Thu,  1 Jun 2023 20:38:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75B1B61340;
	Thu,  1 Jun 2023 20:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75B1B61340
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16E5E1BF97C
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 20:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1B244012A
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 20:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1B244012A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bsSTOAaggqLT for <intel-wired-lan@osuosl.org>;
 Thu,  1 Jun 2023 20:38:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92F3D40516
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92F3D40516
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 20:38:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="345243371"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="345243371"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 13:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="707533503"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="707533503"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 01 Jun 2023 13:37:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 13:37:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 13:37:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 13:37:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 13:37:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROgEq4rcVQIXdfEqrJdoo7rmTHBk7SXUWAQiB+w2jVD2V6bKLrhtCk+aN1r0zsOnqQQMroY91ricqiTT7H85h1EnM9HmUZJ19ikPbu22Y1UhMwwpvEfClLH0bBg5/YOTilGfoJrwc+rQlsrgtL/W7REMg0lgPk4tCYhwtOt4U4gwdKI1rnOfiIM3qHBOFVJ3cE9Zoh76fovCglHUJN5ke0JP53Pk07WLjABxLJH3vIP1O86Vrclj362OUq1Qt2JAMhdFjKvrhODPbIW+5oR1upYRA+OFJW3s094A+nsoxny91nJhB0lyEW5tydZm41e3Bf3LSLlUjw+YceedIkwCQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=saJZCh4KKLlOVQjtqCqKsRnGhbIJnWIo/rPELgUuvHw=;
 b=ap/yokBp7oQFZtSbOKKraG03cRkw1ZVTw4NMVMKGMiWeo3n59sKyYWcKAIz+NilLMtfHUZEwgqDj2fdDjgWE1fQaYa9PkNASd8OO4AR5pxyxK5eH8zrvqktAjjd4g9y7KQS4s3N18jQMMcQ3Vh7dxDLuEo5u/J9my1yCEQwzI+SwDG0lntXvbh8Q+EI9o4tDWOo2n8VqWmaIFbMkeIUa5w7o9JUlaaaO5IyNA0Rso6E4vE/K8dIe5qnlaDjqefl9r9KJojr7T1wp7gUd5U4KhgIX5+Dvyhg7oMQtWWvYv8Asp0P5w94RTiDc+XAqRgZVxB1piSg+d+Io3OoKDSauiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Thu, 1 Jun
 2023 20:37:44 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 20:37:44 +0000
Message-ID: <88c61903-1dbc-070a-3f25-9bb704076f2b@intel.com>
Date: Thu, 1 Jun 2023 13:37:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230531075907.26251-1-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230531075907.26251-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::9) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: ce2f45ad-42f7-4558-f544-08db62e00db4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yhPp0Y7jFQ0WlPEl13Jle5OQMEmCwhc/bmlhlII50yjvGe/BNpi/zkHauwcYQHRMlQQ8L89HDi+Oqi25tTVndNiwUmcapeESex/156tQjZYBMYA3kJcW0cLTMm8Fk0ivXJmDDnldD1ttt8nUSl6wp+I+7uL+cDjcEQJQZeH5QKWMvlLE5P0FwjGEIl2XPCrhnu3IyAmrCUBnlUNtUT921DNeL0yyLTu0MRfm3qP/bWJG0PpaDV1w3q3V6Dol7xlHMmitg6TXOHi0sptDJ0kH0jF8v9zE5uSHqU5IQf2NH5UEro4s3POkxEARpYMp0rFDZ4JL5zVM0UJLaQ26lFtIWpItHw+iLer9I3PYGBRxNHl5OCjDkxJV5QrZ458tK6LsE3c8LH0e36Oyzfpex0dN7yLYgrYcFr+9KEelB7riGjp5BTmOqsAA0wiPGQ+QvrESM54Uo7dzX9TofPwY6dKXpP8P/IazP80MKUh68zpzNAbcYaho4PKcFTSU/Tlsp446bC7yjdoJoR74taqIyu5mly+tz7Sj2Hn7YN4EGgMGLH1r6Cr35eVl0Enu81Xzuo6f7f8rQ2qGXkbUByM/VVqkK8lKvu7vE4A+quRkdTQ4Ui+WiN9yEV05u+di6RqhfzSpdg7CFZ2PHmwpdGQdTNkxwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(136003)(376002)(39860400002)(451199021)(2616005)(83380400001)(186003)(6666004)(4326008)(66476007)(66946007)(478600001)(66556008)(6486002)(316002)(26005)(6506007)(5660300002)(53546011)(6512007)(8676002)(41300700001)(8936002)(2906002)(38100700002)(82960400001)(36756003)(31696002)(86362001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnhBQmd1UDVvUG41c3VTSFlBeDRaU2RkMDczY05KdXpOU1ZnY3hQZk1uR3Nl?=
 =?utf-8?B?QU5RY2dBNnkreURYR1pmTVdCdGhzTWFtT2VKREVQd0ZIWndxSE1EbFJZM1Ni?=
 =?utf-8?B?U0VVQUVYZ2lpU1J2WWNCd2NWWjhSR2JzVjVucmJ3RzBjM0lBdFRLY2xwN2Fu?=
 =?utf-8?B?MjFnVm9lKzVCNDZtdy9uaStxNnRicWVFQU9XbUNWYVFqTzRyd1BEekkxL1ZZ?=
 =?utf-8?B?c2VDS0Nzam1qU1NGeXZwc2V5djVRR0wwQkNobmJDQlJKY1FCMmRuazhtTi9S?=
 =?utf-8?B?bkF1Ukk5Yjk5UDVDN2ptaFFjcWtIMS8wTE1YRldHUHVYSzROMUU0NUc1ZE5J?=
 =?utf-8?B?bjlQS1g5amM1bGZVbUZuVCt0N1l5Q0F3Q3U1RFNtWHpBTTR6WlVuKzIzeE5r?=
 =?utf-8?B?WUdOOEl3cnNGcmhFY0xiem5Xb0dpTERTeEp2TFRnSXpNd2VQRDFIaEpKOFNi?=
 =?utf-8?B?UXZQV210TU93KzNwMG45RmlKN2FPNXJOd1FhanJhUHNHa2VKRDQxKzl5WWpp?=
 =?utf-8?B?b280MWlCRVFzOWtDdlhUOHdIZ0cvOWFFSzFOeFVyMWlhc09SZWszQVNLUWpx?=
 =?utf-8?B?TG5keG1tS2JBZUtuM1FWeENMMUVLandRVE9sdzNnMC9kVWJ6RElHVCt5Q3o2?=
 =?utf-8?B?ZUpNN2w1Y3ZKYjVRVmsrRjlpdFpnMWtkdE02MklXRHZXWW12WjN2OCtsVFhu?=
 =?utf-8?B?cElLZ1FnUkFGWHVYSk1LMC8xSkFNbTZ0VkZkYjRaUE9iOW1TQTdGUUZaQjQ2?=
 =?utf-8?B?UFMvcXhNRlowUy9jcTdUYkR4bng1amJqMUlRb1kvNE5BdHRKNEwvVUF1UFIr?=
 =?utf-8?B?U3o1d3JtS0ZUN3Zha1pPK0VZUXJtTVpHL25OWWVGZ2gxRlR1RFVBZXFDcmUv?=
 =?utf-8?B?RmxmSVR3dVdtR3orUFpqcXBlSXZoay9vME1DcDhTSzV6Uys3QloxMFpZb3Ux?=
 =?utf-8?B?L3puc09qWmhyS0tRTzBRL0d4Y29IQVlwemlSREY5bllHeEI2bkxZYlQrUWFS?=
 =?utf-8?B?M245LzJjN2VBK0ZXWnIxZm5OVHROd0xZM0ErdGtoSFpLazRUT3FhSWZFdm9Y?=
 =?utf-8?B?ZGsyOHUvbFNvS1dyZnkxQkk3eENjOGtqYzVEZkJhaTI2V25JYXgya21yMjkw?=
 =?utf-8?B?aitBVzBGRlNOVVlwaEFXSUhWNlJ2RjdKVTU3Mm9wcVN5S3RoaGpweStoYXhX?=
 =?utf-8?B?QjlkYmVpUnJCbDlqQXUveFNxVTlDZGpucXViK01zVjIrRW85K1JyZEU4VlR5?=
 =?utf-8?B?ZzlPa0NsMFMyd0lyRUpQeEJxQkh3RkR3UExGK0c0SGxrWXZUM0J1KzE3N3Qw?=
 =?utf-8?B?YzV2Sm1DTE14eEY3WHQ1dnZBYUJDZE9tZ0dXUzhwSllHa2pBaENlRGdCNGVv?=
 =?utf-8?B?S1RUc2lreHQ2YXdLWXRndXRVQ29VT09MdjJDbFdFUTVhMURJWlZKdnlhNXNi?=
 =?utf-8?B?a0Y1Z1c2eitpbUpOaWd5U3Z2REJQQVBwUFdndGRBbG1QU3JRRndCazFENmZk?=
 =?utf-8?B?OEV0N0NieVVOelhpVEVnTGhNVSs4bUhBcHhtaGlUeENBWFprdERFYXBFUHdu?=
 =?utf-8?B?Q2VJbi96a0tHdE9nbUhsUFIzb1NQTkFtSVRJa1k2NkRyeWUyT1haT3RoMGZz?=
 =?utf-8?B?NTkydHVzQk4zaXZhbHhSenF2b2RSaWNQSnJOT3ZSakx2WUdkRFk1Z2ZiYzhZ?=
 =?utf-8?B?WGxyU29xWndEWmwyTXMwbkZQM1hjMCtZeVpGV0pZTUVTemtGVUZGSGhwNnRL?=
 =?utf-8?B?VXljcHFVZWhPZFIwYUhiZEFRa0J6azdwUEZORFpnRXVLTXdnMjlrWGQ3OTRu?=
 =?utf-8?B?TW02QkVnWTNPMzV1dzNXK0haWjFlV1BtcTB5L2tIdFRvVENSZmJyQW5OR3hU?=
 =?utf-8?B?ZVdBK21qa01TM20yS01VdW9jR2hhUzRRQ0o4MEJOMG1YN3ROQU52WHIxMHM2?=
 =?utf-8?B?YjcwbWxhNW1ybGEwVE1PSUZVWlMwVHE4V2NqSXZsdDhJdUFrc1U4WHRsN0FP?=
 =?utf-8?B?T0pDZUkrOU1TeG50S3dyQURPTTFqZGZKTG9VazRFL0NUOGlqZjNpeHJ3MjUv?=
 =?utf-8?B?SndHeTNoU3hqZkRwOEZhVXRORjgydjVEWk0vb245eG9kTDl4SEtuQ3BjZTEy?=
 =?utf-8?B?WFlJdDY5ZFBsSWFtWjhGOTB4d1BqRENIWmo4alo1bUlzNE1LMDRvR2txLzNp?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce2f45ad-42f7-4558-f544-08db62e00db4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 20:37:44.7677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xZDYACH89y1Emi+EWPqS0kczvthAUJcXx6yKUxCWxgsL6DyuVDOEVE6FPaqUwV9wj3qarVF2pMNVDAn7KqmQ30zvzTarSs5nz3qJyl4+Xuw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685651880; x=1717187880;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CLZI7VRLrAx3r8TVGGxB5BaRVMUmXJuG/QGG7SoPHGw=;
 b=fm623B1fLvR1GEbOii0D4obqloOPxO1eXG+IyXQ8GuwDWOxhsVTNGjtm
 3WTimcqllKw9JjOmQT4XLGKGbr557kttmZRId5/NrXVRkl1cJZCdgR5hd
 L6C+FZ4rzvWN73JPQQvpoixTp656t55drH+J+wH0+LXnY4DgFHBKTXsAR
 DZdFiMdfoMkgxbNwj1huIdSk0a3zfb6dSh6rQ6pJAzKoSsxPDhBEqTNo7
 vfbZDj36f+2o2NcxlbMyMnYwJ76306rhVR3YVzHnvhHE4M6udWWMm+/FA
 NYFb/Zu04VJAyveZSf+befn3wYnfbU3kmBRpFkaxLUxrVWz9WuGipo4BE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fm623B1f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix TX Hang issue
 when QBV Gate is close
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
Cc: chwee.lin.choong@intel.com, tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/31/2023 12:59 AM, Muhammad Husaini Zulkifli wrote:
> If a user schedules a Gate Control List (GCL) to close one of
> the QBV gates while also transmitting a packet to that closed gate,
> TX Hang will be happen. HW would not drop any packet when the gate
> is close and keep queueing up in HW TX FIFO until the gate is re-open.
> This patch implement the solution to drop the packet for the closed
> gate.
> 
> This patch will additionally include a reset adapter to perform
> SW initialization for each 1st Gate Control List (GCL) to avoid hang.
> This is due to the HW design, where changing to TSN transmit mode
> requires SW initialization. Intel Discrete I225/6 transmit mode
> cannot be changed when in dynamic mode according to Software User
> Manual Section 7.5.2.1. Subsequent Gate Control List (GCL) operations
> will proceed without a reset, as they already in TSN Mode.
> 
> Step to reproduce:
> 
> DUT:
> 1) Configure GCL List with certain gate close.
> 2) Transmit the packet to close gate.

This patch doesn't apply.

> Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
> Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Tested-by: Chwee Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
