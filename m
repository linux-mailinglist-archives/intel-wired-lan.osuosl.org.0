Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A322B724B4A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 20:23:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A5D9408AE;
	Tue,  6 Jun 2023 18:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A5D9408AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686075826;
	bh=iN4jT3Mpj39LTq/AA5gN4qDyvdC15CGak8q6onvs7NE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aT8YXCY3TXwb052FPb4vte4XH5KOfDyyh3I7cmuGxkc6wuSPxswuzAtPJU1BdG2nZ
	 MSdVERCMYdUUGEMD9VunkS+hEFpRiY8h0WjQdJ4eNsjJajuQfdl1bh6Phg41QiiAGF
	 uDv9v8Ajz0bEaR/GhmkFYyTrVKTV+E0neegtjIftcHXuzOs1qwh81N5XS52UPNunE2
	 FxeLbahqulc8U1mnWA4ObYULDTS+JXWiVvdpYqpr/dkfffD7bCQPW5baW7k9xWyA9b
	 deoRmR+4JlSxNtVlXxDo60Tk+C9k9+AixEYpYDoLTUxHTGcWyazhuxiHeooQdHxObp
	 AABDFkxAvKiKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TBZiwXHb1jgN; Tue,  6 Jun 2023 18:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EACE418B8;
	Tue,  6 Jun 2023 18:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EACE418B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38D771BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 18:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D84C4089F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 18:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D84C4089F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3WU_i323iwuC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 18:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D8D4077D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8D8D4077D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 18:23:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="354259419"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="354259419"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 11:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="738892336"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="738892336"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 06 Jun 2023 11:23:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 11:23:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 11:23:35 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 11:23:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQdAo9x8OxVvKlZ5NOt4LVHw6jeSMcOwa2fW2narHBC0ahD+aY/CeJloo4eBYC5yRG6w1h0e51Zor3x3vYdviTQRGnW2/OXpP2qG9JjlD2bC6GCogxNi52PxB8KpuHSwSFeK94Iu/BmySrpBOektC5cMn+QYHtyctdAe+Hwess1TWjfy3+ZfGQi+1kqtd5uD6wyAGfTxFyKXy2R0RS9BBbdOVnoTIivAZOua1yNMxZ6+HrPrZINJbOR9QFjMcae8kd6L32s+B+a4xb8XswExyXt6yNqF74+7DJn6er1VSQZx+YjM7bEro9Lyx/7qmHJplEg5nkNTiyjWXdIghdQ+Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQ/hIoAcDWIsR/a7MT/vGQksha5Mz3P9CidQwW4+T58=;
 b=cKIZrN+dboSimD+BWJqFaBPmpWZr0/JpuUxDwilbuy2THDws2AE6EUr03YEAzFi8bCX8wzmQSbjYn/hclzUayBdE3C4E1VJUtan/5Oa0lTJiwG5DeaQKiAN021Y84s+o6AHGE7e4TF0NiH9eNFBjR6YnoKgkmiT9wM+IEM6Nei6RqNKHrUVaJWCsedxsFIC+Evlt7tKC2kaG1hCxJZH/sOPCxOHXFjOMBeF43urHYJhnMdNJJ/OIHmHB2o5LI5K1ugiT0RELgNDyP/74ZU3345mkormWqs0UxKFqjjA4WraCX1zITpGanZHmkDJNRTTsqamIORIF4ja0ln16HyrlTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CH0PR11MB5394.namprd11.prod.outlook.com (2603:10b6:610:b9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 18:23:34 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5c8b:6d4d:5e21:f00f]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5c8b:6d4d:5e21:f00f%6]) with mapi id 15.20.6455.027; Tue, 6 Jun 2023
 18:23:33 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [PATCH net v2 04/10] ice: implement lag netdev event handler
Thread-Index: AQHZl9q9eW/s0EDCokmX1bL3NmoYW699irUAgACMTiA=
Date: Tue, 6 Jun 2023 18:23:33 +0000
Message-ID: <MW5PR11MB5811B2361A466FAA3094C4D1DD52A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-5-david.m.ertman@intel.com>
 <20230606095648.xy5d7mdzqyhqwqdg@DEN-LT-70577>
In-Reply-To: <20230606095648.xy5d7mdzqyhqwqdg@DEN-LT-70577>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|CH0PR11MB5394:EE_
x-ms-office365-filtering-correlation-id: e70d1a9e-e670-4221-8754-08db66bb2343
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WxydX9/Q3FiNhASQVcuvmMVwzbn55X/5VBswG71XYWlkGhJc5L2kubqwXSgQnKqjYi2r1dbYn+c6WukbMkKJ2UVXYu8q4wreYHsY6sqLHdjLV4/MU4o68tT1HKwpexBEKBrs0djpS9rRuxpzLlnhlHwtyGlXV7z35gspm3mY+VZijFfrsKVAyNYD8oARlREMfW1zhpyMtRcZ/SzjA7s/CGPmBgtRMQ4D9kVPNZruhNaMvKbVBTIoIjdBBt4kSIHpjiuu31PbVfRXCfkOomdt2BQ614T/DuS0S0hQIhDfLzAvbtPe61te/vJapAL6QMrl+hF/xanl3B0nsMbmtLvq56zC7U6reeDfP9bN2vyL71l3wLcvH6jmE6SBYqPCEKFa4euhfqWl7tu60qWisRe7pwmb4H1L1D285ytgT3X12+IIPFcs8Xo1/Emi53Qrylmsm0de0UukyEbPjpuOJrZDLg2XxfD/rdavFA24318GmQQfaBCpRxd/901+/XAhjuvhpyWtgt4da2FrD8rsWxb1plrLqyS0/N5jKZvveJTuXys+SLd94vEpc/3ex2L80AHRYGWnSj0OJQ99YAuMUDbyBs2bTJET0FkPU1HixXS1KDLFqqTHRxrTkddmWLdHkNma
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(396003)(376002)(346002)(451199021)(478600001)(2906002)(7696005)(33656002)(71200400001)(83380400001)(38070700005)(26005)(9686003)(53546011)(86362001)(38100700002)(82960400001)(6506007)(186003)(122000001)(52536014)(55016003)(64756008)(66476007)(6916009)(4326008)(66556008)(66446008)(66946007)(5660300002)(8936002)(8676002)(76116006)(54906003)(41300700001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R7DOTNFS7jcoOmSanManhqTBSzCeCvgmzVWaUn4hYd9ASYKzd5Vyqw7d/q25?=
 =?us-ascii?Q?G6OeynC84BKjI9YK+GOPqRIS47WSpngyr9osh/8rCZG6CrjGJLsTFfpZPHVm?=
 =?us-ascii?Q?JQc1rp7aXu9IbQHV8W5u3opiw3cBleQYIk+oI2AsXE3PxdFPcWg6qGqdShW1?=
 =?us-ascii?Q?suWrTQKEd07B7zGTJi/M9Ezx6jVmoY5LmKmXNGifZkRztS4vL1/MhxIFvhzB?=
 =?us-ascii?Q?p2O1YGv8n72J0AS4SlCZtq5sU4qbjb4aJUTFXJxAtWSht90KHhmUXBZq9ixd?=
 =?us-ascii?Q?T8rp9PSt/nidU/pTlngdMxV/9jb1oIzUzsDwCh4Oxus4p+vlQVh/7GpVRpGT?=
 =?us-ascii?Q?6mDxc/bTLCiwFc9ln0LIaCvNfBQ8/9kn1SYTcqXQfBQCUF2h3Kk467HKKZja?=
 =?us-ascii?Q?a44mACiKoHNCBw7ewY10E3R4p2BIlekKjX5FWYTCXA87rVVN7Jh7tNGuGYTI?=
 =?us-ascii?Q?RpVKJMW5direx5vbPK+MzFn22Wc4L9/lK+uBBJuQcA6eG2UYePGGcfrUhyrv?=
 =?us-ascii?Q?vCP6yk358I9y0pZgGyCs+5UBR7ASWHlPryQEQZSKjI8YS9DfG13cOMQ4iYBp?=
 =?us-ascii?Q?qUlDzCkehx8JK5m59paRj0xeDq3+41M2hIxdyCQTWkmYf/wnlWKJfWYuXwG9?=
 =?us-ascii?Q?7NZi9HoVcD2rUntiz6bCbksY8k/exXlad8PXDWCVB5l4JD0J41jqHrk5jtt3?=
 =?us-ascii?Q?snmqD2MAyYCMvyxMh1aQPttWeCLVbceGxs/wKjxwm7jiSVbw56kXYLn/u5t3?=
 =?us-ascii?Q?eS2Monh6H/jAyIskyOU1QG3t8fBq1k0ezPJsviobUHHeeA5UV/4hUxLUKz9m?=
 =?us-ascii?Q?ydDOLakpfu2vYFajadNOY3UnsT4GZKlSthHXrP8kZqgCcWH0lUi9A+DXatxr?=
 =?us-ascii?Q?JCDD4bz4ILOyn0BUz4DzJuWziMamet9YyWsv2UGuygO9YcU73YOIxLQQnDs9?=
 =?us-ascii?Q?52CX5nhmAO4mudpudrPB7chg99FHD5FALdBan32UD7h8/v6VAZM2N/cESNPN?=
 =?us-ascii?Q?mGvw2lL8cNLbcYhoNR4cL0lD8mZVmHlTO2dMQ0OY6DW34PqSqu/a+FtfYtTk?=
 =?us-ascii?Q?Ca+VvPYqNA0wNz2lYLiNvxO7m96dGf7bBGZnwWqGsJbLKgOyArZ49Yqp6Q6I?=
 =?us-ascii?Q?wksvxNawd/1SQjA6Rx1Us0rimskhW+oBw5qsxJItWnouRS08ujcwf5d/0RKs?=
 =?us-ascii?Q?Q37FUYeBYGso5F96S51b8iTWPor60vlI/Q2wcakuRyNz2xtaHe3RvzIsTbtH?=
 =?us-ascii?Q?hsIeetPPDrFujJGsfbR1pKjP/FllsbLPGCDn/hWNiO2bFArpXXhW9uqjhMTJ?=
 =?us-ascii?Q?AuZmmGm3+wovU0vvfqKbfJKoNm8oz3PgZjwvl+wfs7kxznLkYFAMKMuGEMja?=
 =?us-ascii?Q?R+dmlhGtC88H47DS6VSior93aMjHF1xlECMrut6EFQ1314KhB3YXdU5nhqou?=
 =?us-ascii?Q?BGEb6fkTCu7kILQ1xtjX1bKpzhTKxJ5mXQXYaJ2cjFXmdui+qFnuK38UGJf5?=
 =?us-ascii?Q?dq03DNOuVy5664YGiynrpfY35tD5MV5MAlBXdwxoiSVqo+b0f47IJArEEepg?=
 =?us-ascii?Q?4iOtZ1Y0tdfWGez+EacSS4nJPYT2k/4q3UrAyAsv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e70d1a9e-e670-4221-8754-08db66bb2343
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 18:23:33.9036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WRy0WSVRDb65eG4BGWiXHUkp1NJ0Fbg1PMXOxKwjBQvJOJTs4zi3NXubWB0HgiV2tZpiRxkaQsXY2S2Uf7sKAMH/WEjOw3solu7mCvGvziI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686075817; x=1717611817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dRcyG6Vt7T7U1PBo5Ea6Nnf2cxfCPwW0MNrAFtAwvmY=;
 b=G2VunQSZghYW2ubu5SEtrtkrS9+mNO8oguG7Fhz9eD/1yUQwwsTEf9se
 ud6DCE2N8zBD2oFLl8xYZGNce2Z8VVrZoU6h49I1NVzQAqDuQFUi4N0P+
 bhBTAaQqhp0074RxOqbH7DtDBI5y4ajA3Aq8N9ZAnGl9F2qmhyLeR7rLJ
 1BtGk1jLtlas9Ice3qH7GxEnpaVSJF+AkvACs92U3As4xy/s5iAn6YIBf
 Pq7qUexFSKIUoBikrXfNyF4e9OalWdduoXG1dTjlyEkhhx2ERi3rM4vvj
 o8IHYh5fqm4YIpH7jJYCXf2APD92aE6p6/YSWEOkw7TjdheNV2MD+5O13
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G2VunQSZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 04/10] ice: implement lag
 netdev event handler
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Daniel Machon <daniel.machon@microchip.com>
> Sent: Tuesday, June 6, 2023 2:57 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [PATCH net v2 04/10] ice: implement lag netdev event handler
> 
> > The event handler for LAG will create a work item to place on the ordered
> > workqueue to be processed.
> >
> > Add in defines for training packets and new recipes to be used by the
> > switching block of the HW for LAG packet steering.
> >
> > Update the ice_lag struct to reflect the new processing methodology.
> >
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lag.c      | 125 ++++++++++++++++--
> >  drivers/net/ethernet/intel/ice/ice_lag.h      |  31 ++++-
> >  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
> >  3 files changed, 144 insertions(+), 14 deletions(-)


> > +       lag_work = kzalloc(sizeof(*lag_work), GFP_KERNEL);
> > +       if (!lag_work)
> > +               return -ENOMEM;
> > +
> > +       lag_work->event_netdev = netdev;
> > +       lag_work->lag = lag;
> > +       lag_work->event = event;
> > +       if (event == NETDEV_CHANGEUPPER) {
> > +               struct netdev_notifier_changeupper_info *info;
> > +
> > +               info = ptr;
> > +               upper_netdev = info->upper_dev;
> > +       } else {
> > +               upper_netdev = netdev_master_upper_dev_get(netdev);
> > +       }
> > +
> > +       INIT_LIST_HEAD(&lag_work->netdev_list.node);
> > +       if (upper_netdev) {
> > +               struct ice_lag_netdev_list *nd_list;
> > +               struct net_device *tmp_nd;
> > +
> > +               rcu_read_lock();
> > +               for_each_netdev_in_bond_rcu(upper_netdev, tmp_nd) {
> > +                       nd_list = kzalloc(sizeof(*nd_list), GFP_KERNEL);
> > +                       if (!nd_list)
> > +                               break;
> 
> Further up, -ENOMEM is returned in case kzalloc fails. Here the error is
> silently ignored - is this correct? :)

The lag_work above is the container struct that needs to be present for any work
to be done for the event.  But, as the list of elements of the bond gets built, if a single element is
not present, it is still possible for the event to be evaluated.  There could be the issue of
complete functionality if the wrong element is missing, but that will be handled in the processing
of the specific event.

> 
> > +
> > +                       nd_list->netdev = tmp_nd;
> > +                       list_add(&nd_list->node, &lag_work->netdev_list.node);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
