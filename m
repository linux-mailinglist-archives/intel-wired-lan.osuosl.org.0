Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCD6606C75
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 02:25:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E09724114E;
	Fri, 21 Oct 2022 00:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E09724114E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666311930;
	bh=0cG+wLQqrVLh8jOI93e8XKRaTblmu34W7lyp99Hnpow=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8kahRY5nBNzowaHt2KZ9900Lw775bvrYDX6wqycHrtJB5FOgg21K02n5iDdcjQ1Dt
	 +XjQ+517dJLL/wm9sUdY1WxEERifOlXPH2Iqps4MgxLvmypYbyMziuWKxHKfim7Y3L
	 ytm6/X7wrXkLnm0bdJ6GCZYmDYlBWESZClEW6mq9fqIYX35OacV9rbVYRlEl610KEz
	 LIaVBMhwCYNqa+0QJQmHJU0TOWMj4bCWZCynda/0tA8YkX7zEzKHrBzmiisuI7wIH/
	 6h/hWvttfoVv2hwO9Q9mwmCichxBqO04pHm9Ekg77BK4dhEzJDs89WQtbF8HrzqBub
	 qCNimsJ4OFR3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXOoLjzayJXD; Fri, 21 Oct 2022 00:25:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91E0C408C0;
	Fri, 21 Oct 2022 00:25:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91E0C408C0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 493651BF2B9
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 00:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22A91408C0
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 00:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22A91408C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qfhEq7IYMAb7 for <intel-wired-lan@osuosl.org>;
 Fri, 21 Oct 2022 00:25:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB13B400D9
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB13B400D9
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 00:25:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="304487392"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="304487392"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="772704974"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="772704974"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 20 Oct 2022 17:25:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 17:25:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 17:25:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 17:25:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 17:25:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/lY3wUhPn46jhQ531iXBxUc9QF6jf5veYm3s28BF2W80PyJ37QaxGMj7iqajTzi/whCqOwbTqC/VsRXYb9Lqs0d7c2l/u/YbIRYXq1AcITLmc5G5t37YomCi0ewa54x4anq86ZPTXiykJJxIAShXMPoUPxZlxgCz3CdTKwnXWu+BW0ZU7bebdYQgYP1gfqGL2fcw7icMeJDhDQSSWjg322mIzu3zJ9V2J7QoSfQGRsBaYp2sD88MbtT16PxzWfJpDMQ0iO9i/r/bQFdYysK0aDQvQbMH2dKOHuc5SIwHLizwVyvKctphxQcVjppS7eTv481v4X1L7f9a6anq6ZULQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCgRCWbV2IwQMQaRP/iujR0gt9/3MvZoio5cJ4XuDVU=;
 b=Vvp9UUijto6uun7YacDEGQ0CFnAL+gg7gT7H5kyD9KSmui4bNKwLE9K6N/Q9O0ZqEyvIxc6VEFqX5WvkaX3BI098JA+IJ0fvasn5Akk7NLR6q9xkf+bGBi0CgzmUgTScZvDFNf3piWQga6U2P2HmJydYPJqv44xr1UzvRrKwy8SUX2IHviJIYnSN2EvAS591x/iJA0BgsejcRlKlwEMMjkmqc2lkDKKerZ3rWgn1loXQ2pePV3EE9ke12BWfyNX+SOgd4Do8Wc38R8r2uC9eNQNoB5ZIqNXkaS7pI0GLW56GYUYadejkS805AzdXLZiLqwfvkylMPbbBOaNiyEqblA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS0PR11MB6543.namprd11.prod.outlook.com (2603:10b6:8:d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 00:25:13 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60%4]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 00:25:13 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH v2 0/5] Add support for DMA timestamp for non-PTP packets
Thread-Index: AQHY4o49ev0KReGUxEyWlnOqPWSac64UCRKAgAAniECAANGqgIAAx/LA
Date: Fri, 21 Oct 2022 00:25:13 +0000
Message-ID: <SJ1PR11MB6180F00C9051443BCEA22AB2B82D9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <Y06RzWQnTw2RJGPr@hoboy.vegasvil.org>
 <SJ1PR11MB618053D058C8171AAC4D3FADB8289@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <Y09i12Wcqr0whToP@hoboy.vegasvil.org>
In-Reply-To: <Y09i12Wcqr0whToP@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS0PR11MB6543:EE_
x-ms-office365-filtering-correlation-id: 55da6801-eead-4dd6-a59f-08dab2fab8a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v2shKWKduRnlM2JnDZ1bGiRaJWm/pzvgmB2ChCKmNJtSbo6OllWliSr2PxAKMgreDoX1IDTmNNdjo7/TOe1ybuswON67Wyg7QHqLsl5XOZ/v+Z3jNW9FntQfHD67admkSgXFQgKcY+jHGVqGpQeNCly8r3gGr2f4vz4whcyUujoUFGrKRwgWa4QYzztF5t6r6EKURy8cwo0ZSvzlO2Y3yFOxgwM1hhhYu6sIGI43klNo3j62zohPSIypz4AVKSAxBfC2XVG3YKA9+iuqPCQnTTrjbiBZ45VQAwbQMt8dQLa/trZJRhXGVe0S+yikpweQvYusJVExysdM6IS0hGb6gRvNZJZ9A2XIm94Av9HXLpGYh8XwCFqPAHAkXrV3ohM8CQuDrTqfCE6RFt0eldjAdBYJQ4namXrOesKi/I1natV38EBnCC7ccshgg34GKxDnyXJkw2sM7rffkfehmElT0VNL+bwuMDDO8KbeE6EAOdmr3X7RaYr43GF/MYuXy42pd2fN+43fhZFbxWI76BBgb/H7qYFeNshoZdTg95WUialgYIDtgl793nOd82kPhqxrpSeCxfEWr+V1ngCvkeSLZ7n4njgnLtPTQVXnXxrhTxA8iNYNB0YL4cuEtUmEQzaPfuqBkcmaE1mV8r6qK6PJOH/zDjtSbAigvcI3Cpv+nY1xgOVXIwEkvk4Q1lFXGHLN3whELKV+D80cVTB7DMF5dS9LK7LtyJpjeS3c/dL7hKqqW6ZQ6IVl0pDMaRy7GBs7ooIgtuoB8ngXzwvb1pjBHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199015)(76116006)(66946007)(38070700005)(186003)(66556008)(107886003)(316002)(6916009)(54906003)(2906002)(66476007)(9686003)(86362001)(83380400001)(66446008)(33656002)(122000001)(53546011)(41300700001)(6506007)(4326008)(52536014)(64756008)(8936002)(55016003)(26005)(7416002)(7696005)(8676002)(38100700002)(66899015)(71200400001)(82960400001)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OJq5CFt5w2u/1u+j2R6akIrqzqDl9RZOHaSWv7Jub5yyjohmgIaaZci/zJFE?=
 =?us-ascii?Q?ywCVRRXu6pcNu33NMshkrH0b6iCUWJ5F8J10itq5XiS6WswNPbeoFCzJT6cY?=
 =?us-ascii?Q?jZacIxX7Yvma2FNmg6ucJo11s1zHLvVWGxJY7d53d/sG5Zq8dxHoRva9X7ym?=
 =?us-ascii?Q?8BcdafhmycWEEh6Uw2Qn5vX084uLeRwmzqGulB/bNs4qgtSKpagOm3HloaR5?=
 =?us-ascii?Q?SRMj6uZs4uON2ncbj8rs50M/FPNj8kyk8S0w9bDHSURMhm641YDw5RUhGbqC?=
 =?us-ascii?Q?3yP0/T3vihWtaavbFq9f5p2MTjsqKdpUXn/aNMlRHzydaCBhtyns4UB4IU3Z?=
 =?us-ascii?Q?1JsZMA8TaPjy7717IE1mPuBTHemQL04GLT6JfKxnFIeYdMvoGYRfiwDbc+lh?=
 =?us-ascii?Q?eG550XXK4M/txBgkt77sDP9ZfrTtmMZJijbVsGRwaHb8pPwG/G53m6v1h0W3?=
 =?us-ascii?Q?4/ikRqguWFX4FFCZ0vc4fgJUyeySZjMX7qJQNsgGBSblLKFm3t/f5cmZXI2/?=
 =?us-ascii?Q?dU0pK35t1xkqlRhBPrls5XRIE1wW891O5Ommpmx06tVTRjgVW3g7Ugmi4ZDM?=
 =?us-ascii?Q?Ch2/ERjASRb1bQXhFXuFJ3Q9hgSgavN1ZpfLiuWm9lHDBc/M8vI0xs+eoDhH?=
 =?us-ascii?Q?9BU9YmykXH4dsdO6wLol+RmZk4wc3q/7KpGgIPyZoTCbMuJLjdUe2ZuieHDk?=
 =?us-ascii?Q?aDaxa0WI8wKHvVfZdqRCCzlIoSEBtIgAjA9gzxLv9ECz7+b9fVIZoAg5qi2W?=
 =?us-ascii?Q?xtMyxR3J/IHKsxkgQcjfQ3IRpMzO3fO2RLlUpSA9eNCPGXzAbG2VDa4G15Qh?=
 =?us-ascii?Q?yNCxWCBJaimYkAnEJg1BynS/OiRx6jp4Ti+XSEfFB2XM1pHZLkL2LBMHM2Mq?=
 =?us-ascii?Q?iZ8iKRy+cm0KXrzXY31cSxtImtUgmSDY1uma2QnIPDGuMpsVwW32xSgRnKVH?=
 =?us-ascii?Q?RXicuWUmdKw0FY1M9SeKApxbvFeCQTAlK6VFYISDxEsoF8pOrx3J2CT7BGdS?=
 =?us-ascii?Q?/w48XwnDjxynhI2ZSbYd6tyuDLP6O+mwVXvRAf970MERwdkrgLz62OOBNi+K?=
 =?us-ascii?Q?94/l/ppVhKfkBU68SWUTso8hu1beMYbfejtAPD7l62pcQHTZILnzyx8fbq/E?=
 =?us-ascii?Q?dZXc6GYnra8oWOYRfRBBsRPPJyDrQjWW4/vp62S2z0WEuB3QJTA80dH4wVId?=
 =?us-ascii?Q?jgfPbIqdgvTOWgjm8q2lCygEem2gNqKGqskh/q10CD1qWWUfvK+cf+oJ3HRl?=
 =?us-ascii?Q?/pWKIr0ChHKX0h+yxw1AC9lRKweriJQBYKktcDuMR+BGJfNbUKUD+OpnhH61?=
 =?us-ascii?Q?CpQQkhlFfgHyLLBaSJpaT+YspeLZYjZBCs8VbUnTlKYRUb88zm4qe5/5Uq5+?=
 =?us-ascii?Q?r4eleSYYX23WkWuFNJAGxP1npde6aCWts0wNyjWNBEZPq7lk6QXsuTLp9pfr?=
 =?us-ascii?Q?wvGkqFvG2gi3W/BiFukZi0r9zsI3OuzkPEdQ0NCh6h5jXQ9lY+RcY0gct9+C?=
 =?us-ascii?Q?Lmj7MKUuHsJRvgZbqpMOsBnkgNNN49YoVTJtkA2/5iliIzcFqXvFvsh0Tt2k?=
 =?us-ascii?Q?ocMmLBSKMhio3hMRrcWezrE6YMVRbqq0O35qRjosh//OJqR9AUDMq1coxjTM?=
 =?us-ascii?Q?Jn8OzWtH7mDDI0HNbHIOS0Q=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55da6801-eead-4dd6-a59f-08dab2fab8a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 00:25:13.5490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JzEzoOJ6eZYVW8tP6ysFlRMEYpP4qidij3KGEv4r+E9gqOp2UR3QEc+x37Zdwfyhx0jSo9x4XHOAPQxWaG1QtZrw00z0zr+zLDqwieEUROShmz27enDSoaJg6Y7S59Am
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6543
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666311922; x=1697847922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VCgRCWbV2IwQMQaRP/iujR0gt9/3MvZoio5cJ4XuDVU=;
 b=nWtdyzLUlb02mvZI12Ik7VyDekb273BTKGBG9O6MlzA1reqpnLFdPDbq
 rsJHrpYNOvdvKhssgmVy7mHqIxfn+2I9vsyN/uMKHj1TMqPKlsSBxY43x
 12ZUEzeBdoaftb6qXHCcWw+zwH68SW2Bf5/CAlGY66h6T8nBHZM4LnHyl
 ylQJhLiVWllgt7pqf9Eshn8uzYZUAeQeYsxdktO1r/dHbhI5AOLk99ZUf
 uQWTHwa8RCVKNOSAyX5Cs38DSOgvC0ba4aDyP/KDbbybq9lkQgvT4Pd+5
 qRtJ025K/dg5j/Fpermj+WMxRceimXU37LjjX8ovxFubD5U/giq9Opmed
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nWtdyzLU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "gal@nvidia.com" <gal@nvidia.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Wednesday, 19 October, 2022 10:37 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; netdev@vger.kernel.org; kuba@kernel.org;
> davem@davemloft.net; edumazet@google.com; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>; gal@nvidia.com; saeed@kernel.org;
> leon@kernel.org; michael.chan@broadcom.com; andy@greyhouse.net;
> Gomes, Vinicius <vinicius.gomes@intel.com>
> Subject: Re: [PATCH v2 0/5] Add support for DMA timestamp for non-PTP
> packets
> 
> On Tue, Oct 18, 2022 at 02:12:37PM +0000, Zulkifli, Muhammad Husaini
> wrote:
> > > What is the use case for reporting DMA transmit time?
> 
> So the use case (mentioned below) is TSN?

Yes. TSN/Real Time applications. The most desirable is reporting the HW Timestamp.
But if all real time applications in a heavy traffic load trying to use same 
HW Timestamp (ex. 1 HW Timestamp only available) there will be a failure event 
Like missing a timestamp. The purpose of DMA transmit time is to give the application 
a different option for using DMA Timestamp when this event occur.

> 
> > > How is this better than using SOF_TIMESTAMPING_TX_SOFTWARE ?
> >
> > The ideal situation is to use SOF TIMESTAMPING TX SOFTWARE.
> > Application side will undoubtedly want to utilize PHY timestamps as much
> as possible.
> 
> I'm asking about SOFTWARE not hardware time stamps.

Sorry for misinterpreting SOFTWARE as HARDWARE in my previous reply.
DMA Timestamping is definitely better than SOFTWARE timestamp because 
we sample the time at the controller MAC level.

> 
> > But if every application requested the HW Tx timestamp, especially
> > during periods of high load like TSN, in some cases when the controller only
> supports 1 HW timestamp, it would be a disaster.
> 
> But can't you offer 1 HW time stamp with many SW time stamps? 

Could you please provide additional details about this? What do you meant by 
offering 1 HW Timestamp with many SW timestamps? 

> 
> Thanks,
> Rihcard

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
