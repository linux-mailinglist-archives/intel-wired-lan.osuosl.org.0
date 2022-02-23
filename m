Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBF84C0F6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 10:43:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F02340602;
	Wed, 23 Feb 2022 09:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lSCxxYpjxpn; Wed, 23 Feb 2022 09:43:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7ACD40414;
	Wed, 23 Feb 2022 09:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 616311BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 09:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BE82405FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 09:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sGtg7UizPzif for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 09:42:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5E7140414
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 09:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645609377; x=1677145377;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9dAHiFm0mn4D8+CkNnAOeanjc9G4rY4rFjR9yenx7EQ=;
 b=lwj3XgtbaNcTay/qqCJeZuokai7/+24GdWWBIz6xqruIBtAzFatUf7mm
 gvbwV7L4tZDh5rMyC/+auENwbsczF7CeXLvwxhWDIMWBbI966vwGCjE6U
 Qez3rPItF+AhbUxLxKTmw6r+7JRgZs1DoZA4FjuHaB1hwxhAtQfV431dl
 gea3ThKL6wAWRIBvB/2d4jdZ64N/1VZafnXqDVnXq25500SExLeu0nPZX
 Xf95hcGcmrJLMEbjkDFcYQm0V7EL3oV6CVJcDSdZeqXqmlGchCvU/xAQN
 mMZ9u9i8GYsvaaSQ3E0GsB3WuCvuJgtZYArpoI+mAup2pcGzJfC9Gt6KN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231899757"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="231899757"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 01:42:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="543257219"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 23 Feb 2022 01:42:56 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Feb 2022 01:42:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Feb 2022 01:42:56 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 23 Feb 2022 01:42:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPG+/Kz/2T49InXHtelkIt85SsnI9kBtj8pXMVUQC0A2l5KqUJFbDujmloEcKasbgSv28Gw1RxLAV1+xAd+sCNDEEHNmZeCIPNvCSEjJkuWkz8GITed/S7qwO16baO6+iqIH19QAm0IdSHU6xttUkxXjtvjm2mT0wpYZxw1bOmxVefUI4PhSkMRU3wYHEfl4CQVILAGKqRP8MD9HoZUQg8oTgFIiTiVvokbYK3K01xFeLh+Ld4/XHSzmxWyOjXxEjYX/OY+ET34bNE9auadO4CGhRILSSZPGEop/21oL9KjUVd7pjHXPdQP0YJTxqnPsaXu0z9cMrcMHK1Fc4j7x8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9dAHiFm0mn4D8+CkNnAOeanjc9G4rY4rFjR9yenx7EQ=;
 b=gjXK9XpAP/WJ5z5R4IH5XKYLSVmYn8QFdXQWOVHBJv7GmWliP42DeWo0fJF24iqK4YZcR5w1VYbXEIZWIGSyicd43zrTjiQzPU2fwjP07jwGgHLXbpbDP5vACcv7xxlW8ojUpvCD0tz+V314Toz3r1soAUYdIBvfOB2FdbuZup13AwdxlMRtJYVISmKmsKKbnOsl3tNHraxrrg7z9CCaldqMV9IhD1gZzO7yKc95NowMRqMFL1hTig+DszWeND5d8Q0YLvhR7HgKZz5xt5RCpbZdveMAy3KqhNfnSemqX8M6Xw5MZfJsbJ02D4BhE/JtZUaijo/K89xl/gqBT0qLtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB5222.namprd11.prod.outlook.com (2603:10b6:208:313::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Wed, 23 Feb
 2022 09:42:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a%8]) with mapi id 15.20.5017.022; Wed, 23 Feb 2022
 09:42:55 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long longs
 in ice_sriov.c
Thread-Index: AQHYKEwnE5u3AJq3vE+KLUHjSW63lKygXesAgACE1wA=
Date: Wed, 23 Feb 2022 09:42:55 +0000
Message-ID: <CO1PR11MB5089CB5838DE2F54C51A079DD63C9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-24-jacob.e.keller@intel.com>
 <bcba92ad-d159-2abc-f7d1-92043c9c44bc@intel.com>
In-Reply-To: <bcba92ad-d159-2abc-f7d1-92043c9c44bc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40dc85bd-baf4-4117-09e4-08d9f6b0de3b
x-ms-traffictypediagnostic: BL1PR11MB5222:EE_
x-microsoft-antispam-prvs: <BL1PR11MB5222DBEBF3F9655484E25E21D63C9@BL1PR11MB5222.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SJlG1anxpyYXtyV5SxUIvDPrlfZ5A/5Kj4XyLgIfjGfVF3R24thzMBJNksyapgS+6OTUVB8nfMafi08Vp0vWv325eDqjly8gmS9p3jOQdTaHxvAbPmBQ7PGzgmlT7jjn033Lk70Qp0l4Nt/N3J7FqEeqRe0xlX5qqp0wnpRgav0mV5bzj7ifPeN9aCXRon17QItcJmb4Al9UGicZznOj5DCfocwreLEOowR2XpRnIck2jiFSEhFNkcuIinAArK+XRhfV2GLkHe+dzZLjwlr6XdXqHS1I8kxheJcqtk3+KJ2xCGj0HxssVIGnkqfiNu1LQbXrLJI1VqKO6dMSasgaatgA7vh3IxA2ap/xRneYlm+3Zy6z/GSCozGgRqacl1CNsOhEjQASAG09sQXeH2srGIZLsQfq9e3m4+HpyuolIFXj4eK8ppWzbUjQxYCImGGIypq7RGAfWtI5OVSGst9MczXulkXKBhtRrCndP/bPjPEpMieDPPUkymR9BmFsiDh0bYlcZm6et8RQ1rInopwJeK826byiG3mIr1v/W0Sd0gRI0u7hYkxEVldr0M2itciDAijQ698m3mItR20ZWIeitban5vB1d8b+8bQVqu95hlpQK99OLOByKF+oFM04HWo/4BDhVvelfOb68qRJMP8EpcRqp0/jE1r1v+V0xlgIS2V/iAMlFOGw0HUcAqDqeuqkAMsDjOvuB84ziwaZXXTUIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(7696005)(4744005)(9686003)(6506007)(8936002)(71200400001)(52536014)(64756008)(53546011)(66946007)(8676002)(76116006)(66446008)(66476007)(66556008)(5660300002)(38100700002)(83380400001)(508600001)(316002)(2906002)(38070700005)(186003)(122000001)(26005)(82960400001)(86362001)(33656002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWhZc294QlFvYkI2TjF5cVU0OUJZQ2tXeHl1MTBLK1dsd2N1SVlsbFJYZ2h5?=
 =?utf-8?B?ZER4QzVQSHZWWExBa00vY25ocnFYdDFJRkJHWm1DTGNHMCtWVU13UjdQcUFu?=
 =?utf-8?B?UlZVQkh4b01Ubld1emticDdrb2VLMDRWSGY1b1lZbUlFTFVKNUJSa2NpV0xu?=
 =?utf-8?B?c01hai9ibCtCZW9nYkhZR0I2QXlsSlh4NUxCT0FSM2U5R2NnSSs0WWV6MmIv?=
 =?utf-8?B?UmhNKzRUakMyc0hPbU4wdXF2aVhiL2hXUE10MStGcTZqN0VUQk5kRHJqS3Ju?=
 =?utf-8?B?cDRyWGlFbU83U3NjWVl0QTlMNVd5K0dlMSttSTZQSWhmcmFYMFpNN2U1T2c0?=
 =?utf-8?B?cXdNRC9ocFpTQ3Voa2V3OGVDRjliaGo1V2ZpbHJTV245bXZEaWpBbnBzSUdK?=
 =?utf-8?B?TkNUbmR3S1Q4ZnZMbzh6OUdOd2YrWFlFdnBDbUZYUjF2QnhmQ3FvSjhLWFky?=
 =?utf-8?B?STNSMmVqNldMVklYZy9IMXpURGRMUGxSaUlzbE50emZYdFROWWFxNld3cTVQ?=
 =?utf-8?B?K0twZ2ljTkdoWlZ0WllqcExnUHdKa3Jyc3RZNGxhdUY2NVJwRi93WHZLcWpr?=
 =?utf-8?B?WTJWUDE2RVNSbmZQSGkzNlg4L1M3VndSZCsxMTVuK1F6RnVyK095ZlpKQjBS?=
 =?utf-8?B?cEgzTUJITHBZSkxaM2dvVWtuTHVqT2psMDMyd2k2TWFTRy80VFRjZ3Q3bFNJ?=
 =?utf-8?B?N0dYa2dNK3VLNmcvZzk0K0cyTHN1UndLSkpRQVM5Z2JzMWRtSTg2Z3BtWnRv?=
 =?utf-8?B?VTU3SEJ5VThEbWFQTTd1MG5VTDgxa3BNL3ptWWo1WUs2aS83Q1h1Q055L1Rr?=
 =?utf-8?B?RHpvSEw1dVhKekg0TnVaL2Y1NVZLN2RUdG42dW5nWXVBTkdDMDNhZVZHU1Yy?=
 =?utf-8?B?c0F6RUJaQThvUFFhbTJlRE4wdTN5dE5ZTFJsVWhuQ3M3YnFaeWhhMjNld0Vm?=
 =?utf-8?B?YUhlNDk3OXBCZGQzbTJGeVA5Z1BZN29CeVJsdnErbDlDYTFoMmtxWjVqU082?=
 =?utf-8?B?RDRKeGJNYUFrc04yeTNGRHhRQWpyblFkaTFnRWlIUi9hSUVzZ054VlphZ3hL?=
 =?utf-8?B?eUQyUjBXdHRqamRKNVI5NXRFbE1vRmxrL0JGS2R0WUxUd3B1TnZKN0hDWk5W?=
 =?utf-8?B?c09HNTdnNVpoSTNrdHZUK3ZYcUZqd2FKSHhGWTJpK2llV3JYVzA0NFpNdUVS?=
 =?utf-8?B?ZkU2ZDl3OElqdG9UbXJUdzk1bldYT0pmMkN6U2k2L3k0N245SmkrOXJkdTJa?=
 =?utf-8?B?enJFVDZla1NZdjQxcVNEOTIzbTdUOWMvZUJjZkc2RWQyRThlU3Vjc05hSk9m?=
 =?utf-8?B?aVZLQkRBbG1CWkNIRVk5VjRCcDVRSGlmMGs3bE1ZNHo5NXdwdHhJUlR1aWdI?=
 =?utf-8?B?L2dDT2VPMU9xQ0pBbGI3cFNzZEhDRjd1clZXUy9acUwrMkpzQ2wwRHNQZVU5?=
 =?utf-8?B?TnJOOHRoSGhvUnVzNzBLaUU4VlNaNkJDd1Y5eTMvM0FoSFpPdUpVblJ1SVVH?=
 =?utf-8?B?amhBakRLa2ZCenRjV2RCUU5ybVp6L3lCM3NNVUoxaWlPUkNUaVpLcHBmdnpu?=
 =?utf-8?B?SGpqMHgxU1FPbkduWXFmcUJ4MTlqV2JkU2lHSlNDa1I2MExxM1lFemhIM09Y?=
 =?utf-8?B?ODN1Z2RhcjlFYmFFc2lMVm9xYU1VVnFYNnBjd2c3RWxtOE1IS0hhdUhhN3hR?=
 =?utf-8?B?ekZaOHpmVE9HT1U1OS9OZWhFeFNyc1kxTEN6NjBob3l2MlpRUU56b0hSc0VP?=
 =?utf-8?B?TGJaSy93dEQvUnFPVkZoWHZHVG5vQ24xa21zaVVCUWk0SC9uRGt1cWM1Vm40?=
 =?utf-8?B?RFNVTytGeGdkY2kyVXNQRVVXQ0xvWUpVYjUvTHB3TmNWWFg3VEJyK0Yyckpx?=
 =?utf-8?B?TzlkekNUbWlKYVQwVytNcmpDUXFnMnFoOXhkQithWFovakpXbGx2R2hDRFp3?=
 =?utf-8?B?d3pYOXR2czNwRk9tTHZFNFRRVklkeGFsbVRndXBBaTFPekRCT2Rjc0lyZjBa?=
 =?utf-8?B?YW54OXhwVXE2Nys4ZUlaRHFLOUNTOHpoR2VUa0cyUkRabGVpUWNSZldobVBv?=
 =?utf-8?B?V0VDUDkrUlNzV1FKeFN3b2w2dWxNNFNsWkxqdUlxNzNTK0lET0N6bXNwK0d0?=
 =?utf-8?B?YkptVjBnam5nd1M5czJrVlF4TFZMWENWRkFaYkJoQS9ObDk4eXlOWUhaTUEr?=
 =?utf-8?B?VkRQNWhJK2tJTkg4T015UzI1aXBPbHRzbjhObGJtL2c1N3VnV1lrMHI0M1FV?=
 =?utf-8?B?UE4zczFyRnFtTU5JTzJUZnAxQkpBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40dc85bd-baf4-4117-09e4-08d9f6b0de3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2022 09:42:55.1942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /BD2RYhNXJ4+P+y7OYHsrN3ZsytJHYRtUjC6Udoh+0uc0Pemem4zeEyCpu7Pap7gXFaIUlJdgeLDLHFxquIfchr36fzXn2KLW3i33T0NPHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long
 longs in ice_sriov.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Sent: Tuesday, February 22, 2022 5:47 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>
> Subject: Re: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long longs in
> ice_sriov.c
> 
> Subject should be "cleanup long lines" not "cleanup long longs"
> 
> 
> On 2/22/2022 4:27 PM, Jacob Keller wrote:
> > Before we move the virtchnl message handling from ice_sriov.c into
> > ice_virtchnl.c, cleanup some long line warnings to avoid checkpatch.pl
> > complaints.
> >
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 

Oops, thanks for the review Jesse!

Tony, can you fix this up in your tree?

Thanks,
Haje
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
