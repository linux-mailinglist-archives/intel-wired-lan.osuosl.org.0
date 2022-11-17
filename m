Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF56D62D866
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:50:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AD0A60B49;
	Thu, 17 Nov 2022 10:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AD0A60B49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682223;
	bh=hPtTANBfsz87I0/3SFOo5gM3Myzj41lcxhtm0m2LTfM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EeMDwM7ZkkybydeHO+CkDRgsBYrV5n4GXHqB4lm9s/Y2aYN0SFJ8948dc8OJUKEaO
	 t3ziolSccK0e4GFNhVXS4mhUt1H8ZDwR5c97WddYuKgb+AJLHnDequei2ovxjtcUIh
	 62jeDGka3gIy6FFnKJ0EhdwcxJq4J1PpyK/7RMdX/27+C80JNqjY/GctTkFOzhMvrY
	 DKa6PCDvmI8uaaW2BFDAP/qb59DnhKON9eb0bE5GffQSKIvtlu8wDGX0Z1cyjUNpOe
	 R/NYFnwrArjbtnWAjtOCvH3Xf9aGdof8N1ALBy7ADIL7Y9RpTp7vtl7jVbja2/auu2
	 j1rCpUeEfLNsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WI4hH7IiF_O5; Thu, 17 Nov 2022 10:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A73561032;
	Thu, 17 Nov 2022 10:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A73561032
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DCA41BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 580DD405AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:50:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 580DD405AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7LZRmN8VwJu2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:50:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5EFC4051D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5EFC4051D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:50:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="310450100"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="310450100"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:50:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="590577044"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="590577044"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 17 Nov 2022 02:50:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:50:15 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:50:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:50:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cj9icPirRwZEA+b99GdrT7sbLduIhWPgurPIJbPNK6y00b0jfe5FoGN5OWjfUley4rA02ge4yE6gzeqI4QOkDadU2lWNLaPaQrAjJ5B1rSgf52oPuvBP78qO36HPGz08EYcEzB6pLa0Jq/q58xQ4Y+JSeIdtV77gAYxHrcZKuSicpo1iez4bOVp/5zJUDmg3JW090RVTzSCpJhUWGCYT9l59p8OQ0+3HKztNYkAqWJVcw9rgexNOLpBVwWy2wmPvQEO3UDHxsr8yhodsh4jWC93bq1RPXfODD+93vrE58xR0b4bFgpQK/+pA5Mxa1qm4esgKYhGBpWDtvqca3TVTDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPucconlcz7nmOmui3n6rSrZ0AoveaHaWsEqq4vPi8g=;
 b=UNfcKG53XSuVBwjMDWC5hCxUcWDCPgf3bJpOSMqgbxh/RH5WYoRGG/EeRo6lC6qtHzTjEGM5UgnCXtq+IBpoSWP/xPsUrpiZTLDgCysddHTw3T/Qgo1wE2S+U5D4BzRdOiEbKqtrXf+3olnf9sd0SqRByVtKnhkurfbHm0WPEkynEkoinE132A8O/awBFiwePw8BY5RexVtbe6Kqb8SYoHM1eQTKdqL11g+zQ5b9idCGcARZu+Fgqo6x0kBblB7ZkZH5tgRJxRm/ELJ4ZA6LZ89Nq6W87y/qICIdHC+PM1603xJTiJI0GLoiExurkij27Fr5QNlBR4Ip0ItuhKBPAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:50:08 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:50:08 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 15/15] ice: reschedule
 ice_ptp_wait_for_offset_valid during reset
Thread-Index: AQHY78/8iY0wCF1/AUWXkaPtjFrhRK5DBPug
Date: Thu, 17 Nov 2022 10:50:08 +0000
Message-ID: <BYAPR11MB3367C303BC80DBCE2370791EFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-16-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-16-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: 0e9ce7ed-8d57-4675-601d-08dac8897e56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 68Oa2NOIgWTF1/lGSzirlAZBtPgtkTGjPCbhnldYZR6uNnKbk/bG60NPSXAZE0EV3PxMVeo8aXk3v4G+gdi9J9kSMYSIeciiFjawXzq2M+0vKllcTfGrLY/gCw6tXv3kpglEEv9iREPlsq0O4L3F5U4KTaye/nYbEb/ZvBUn9DfAm+hkKetxFnP/gSADPOTvK973FpXcxsvowmXtnlOGOv/DbiS1F//13VLNYaVGRCYu0VZdS59mihu4srnUJhxXUH5p/YxIzG7AyYw7vQnTeGF38P+bm9I//PeaCYKjPwXPVBn1cM1eYn+YhyDWfMqEvp7h7eCUETL00mI+G2tmqI2D9I3Fy+OlFUtUXRVWnTs/iZmEUtzD+WP7faC3N0hJu1yrqjyqAGizGlUSB+9fi7qZAZQdACKLnECL9Nh/rVVV0xNvFgAXxycymWCt6Bjh9WhH63qm9qMtD1iNNxs6TlfX+60djxNnEot+jTwRpjYLbOUEmA7AeU942DxfyZkQYXnFnfJ4Hp8bbNAT4X0Pylw4uK+20Kk7lkJyWTDEfwVAb7xsv7j/G1XCm0mN4HevXC5kJHmcL1yKvl97tvw0EVO7UZp023hH26htg1TZpmc8Taqbo7hgFmWFddbrZikcMvktvgdQxcFy8d3jq0S8XAOntWPWvTmQGHr4tZrCNw7gbkx293q/nVmiyXfRpxrjsS9zlJ4gsjDQACPV/6oJwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(366004)(396003)(376002)(451199015)(107886003)(6506007)(7696005)(316002)(9686003)(2906002)(26005)(53546011)(71200400001)(110136005)(66556008)(66476007)(76116006)(66446008)(64756008)(66946007)(41300700001)(186003)(4326008)(8676002)(52536014)(5660300002)(8936002)(478600001)(83380400001)(86362001)(38070700005)(55016003)(33656002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P3E4vNwKzGTRELG+f/giXoXXgXJPpJDyvFzKTNt1FMdq2BdMzg0Pd01LqB9n?=
 =?us-ascii?Q?uJhDzAYt4/xMwmoqxIhHCoWDb0oxFrqcJYi2dmO6VYdOu8OCtkRaG6Wk85ji?=
 =?us-ascii?Q?i6FJf1ZKMRdVAipupsIPM7KC/tmZ/VWQ0OabkPDsqrA/TNEWCihmHtiYKK8F?=
 =?us-ascii?Q?7ANErQzvbuywmHpujTs07l91dqbf4lAUFGYmC+gMwXBbrMLFL849B+zfLxQg?=
 =?us-ascii?Q?uC5HSDI2SW10dZBR1OK+I/LgbLNBrzlu6CoZqwSjGZYyED8eIaxflwZs8f+l?=
 =?us-ascii?Q?SUFGUbVbclHLpy/GiP3+iRd+iNsAVFg2BowjOyiUeoPHOxIr49D/3bkXCndO?=
 =?us-ascii?Q?Q3H1cosTfnAsvFoH0HK65p0je7tt9BCYtlx0xzepeZGXXodDz3amw9Z1sgVP?=
 =?us-ascii?Q?InHQ3xEZiyBUZgqFn4x5ANNU4mystiFQpI6NNw45lLLSAPucElZNC1zA6ZSX?=
 =?us-ascii?Q?Rm4oVYi4dkaIvyl5QfKHstH3An2ETB3epqBKVU7/nZ5m5/Ajqqvgs2BSyeK8?=
 =?us-ascii?Q?RtYBVYroK0a5eAyy/TMumHss7i4MHje9KNJ0LvFz++prapVNOw0wQja/DcuH?=
 =?us-ascii?Q?23xV7ubVkxF3/q0gSK2RY8sMi+dbJhRJQP0H4/aPOrrp0CUQZECuIF1ejFCw?=
 =?us-ascii?Q?TUq73LJOmLQ+glAGBV0hMWfNANImOfzGQjPeT+ss5QG0/CFNHN3Vw6tLYZjr?=
 =?us-ascii?Q?85/JoYsydT2NOpcRPbPZJ3DK/N9IeV+sYT9qj6QV8qQbSzhORL5VfNuO9GRN?=
 =?us-ascii?Q?mRYiA9Y2s4tIPw6zZhBwH3eiALDvkzZTsnLh5ki/y3N/KfbTD6Dgcz00JYxY?=
 =?us-ascii?Q?nDnq3EFG47qQAN5KzPF+U3TV9tk7/3U4yKZ4t4AEC1396p9fENKce0WXYjmJ?=
 =?us-ascii?Q?UP16Bqj8f0tlPM8FqyvBeL4W1XY26KRYvXPQVKC8reMtT1DGhP2irDV2UNhz?=
 =?us-ascii?Q?TGmwaaL8jE5RW3RaznTMhBcqEsi6J+ctrPCZI5jSqZzWfu+Kx21Ehish6JwJ?=
 =?us-ascii?Q?rqGsp06eyJq7QkpCUlbfO4/3e2yIEd17u6knOZQS4KmjaDwMdBh2/nn0mJ1T?=
 =?us-ascii?Q?hGGFWSGQYihL2HhlkZ5V3aYwcSZ5i6DH0zZPtpyWKE9M40dEGk++YV00nhVt?=
 =?us-ascii?Q?TohNZRTPr8zSGd1qnCaEmp5zp7zCBZnFWV5g4uPxZp5072gkO9/gds1oYzmF?=
 =?us-ascii?Q?S3m9qUSzgZfIdgKRcOyXHqYGE8GLZpYZxXlBnNl9n5RrkQGc2hfx0XCfCCbU?=
 =?us-ascii?Q?jfUlsmjQBRmqArdPuEu0D6agHojTnkIhl1zXH4cbayk+MGy+F2sm5K7osRp4?=
 =?us-ascii?Q?sam0zeroWyUzzHh8IpUtEY5AemnF2kDdS/UGCoraSWlqu/vg1bJQWjHDs4RA?=
 =?us-ascii?Q?87vNAx1+99fFEHJKpxl7itquw3bfD6z7R6ScNGprhXs9z1b1yJUtX6YIhKYS?=
 =?us-ascii?Q?pRz+4jzjpYiwVppiiYyufzNDprBYnJH0t+pQM5dng567AKQdw+bUscVWlOrN?=
 =?us-ascii?Q?y0zT9RGJLmWIqjH32aQpBB/pIuyBdSR+pTQesO54rSaQyFRuHK4oCUUkglh/?=
 =?us-ascii?Q?VX/Pka3tALwOa7SbS+YtEe/duGlqaBiQc0WInMo/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e9ce7ed-8d57-4675-601d-08dac8897e56
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:50:08.1542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ktWXSglsyohe6lSyDZdYoPdHWKl0vYzgZcBUSCb3hS/4CjP8TOwVpDXhNLZyVhhE6LYhM3amRvH84ZxJZctZ3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668682216; x=1700218216;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EOSDlKMWFyKbANe+LjOa+UjDV95SAIvon9l4O11H1O4=;
 b=gqel1QTktckWqCdwA1LpkeeQ3AK8l8SOAnU6UHBRvvxrnIgJ4vwmam5A
 l2xAvWtAM5YqohE8gCuvulI8bYfm+6VP2eobbqdALkvB6/spcABLoMj0L
 z/cMukRLsebwhdN7bycwypsGDbaCss5hKjxkfYSutiExCKrJbHmJsA1Et
 Et5Hgw7X0Ow3HcJswfzJ+OT7bQln6iS6WHKh9esVdfK6fTq0wE5lDvgjU
 nsllVtQ+LqLCNSiO6RUTqe65fnvrJ5TB5OY/0o3PcjAROBk5aCOWUYVI2
 xO/H9g8FsOvGS4HTCkRiZ5cKveD8w7/qiZ1r9IZpxXkeibJ2c4ATXvKwk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gqel1QTk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 15/15] ice: reschedule
 ice_ptp_wait_for_offset_valid during reset
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
Cc: "D H, Siddaraju" <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: D H, Siddaraju <siddaraju.dh@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 15/15] ice: reschedule
> ice_ptp_wait_for_offset_valid during reset
> 
> If the ice_ptp_wait_for_offest_valid function is scheduled to run while the
> driver is resetting, it will exit without completing calibration. The work
> function gets scheduled by ice_ptp_port_phy_restart which will be called as
> part of the reset recovery process.
> 
> It is possible for the first execution to occur before the driver has completely
> cleared its resetting flags. Ensure calibration completes by rescheduling the
> task until reset is fully completed.
> 
> Reported-by: Siddaraju DH <siddaraju.dh@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
