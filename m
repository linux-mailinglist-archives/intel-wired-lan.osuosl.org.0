Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2F37032D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 18:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E37B641C87;
	Mon, 15 May 2023 16:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E37B641C87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684167753;
	bh=nIUWyTKnax0XCZAnCWpbOUbmpZCVnwEfwTej50wBmAQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J30j709Uus+ohkIpSKyV7bvCqHaK1mE+9k7rxBGhNjUjN/4pUIgCK59E5ktXm0hAZ
	 Tn0ekQxTTaPQuUhRp50cKtryIgDfCh8EY0JqY/41Hgbcin7xYJL9PW/QevlXo994wI
	 dkbwweEPLTRkoFukMMKFOjovq+QWKa1s+j7XDN+2Chd6eReFi7FUZuFarQ+7xju/cW
	 v7Drtwcviyx3eMGeA2mlGaIPW/9cxzNcSFYb4QHEguIGvkW3pHC8zdI0kdvu/Sg8TC
	 2+ca/ErlluNOsSlXbHLXunGKTH5lbtb1ddkEGG5hrrOlxHDY8ifuDoMAUyGWsdz+TE
	 q8yGZSt7y4jRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLOCFWUCelRN; Mon, 15 May 2023 16:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F605403FD;
	Mon, 15 May 2023 16:22:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F605403FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6711BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 511D341944
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 511D341944
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id skPcoY5xSkki for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 16:22:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ABCE41899
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3ABCE41899
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:22:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348738285"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="348738285"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 09:22:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="695068327"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="695068327"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2023 09:22:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 09:22:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 09:22:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 09:22:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 09:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdS8Onnn1AJC0mngfbhboNr8QTE2WEdWo8xCwJNCBbvfpJ+H4sldDFt3CJ2v3r+fiTsDrEuybOfWZ8ZoQmH6cJE2oHq01bHyp0WKndMHPwYcTIu9NUkoCDo0EON9dT/MJMit7tjH1nul3RGMYy/eKuIsTikuw5qdqjXUGXLMr2GDu+eJBp+nY22VrzpjlB1Zc2TckpjdO1O56AwoDnFWQS991+7/1s3ZwYq0jB5r1X2DqiD0MCtLeHgrjhj8pM5YJCAfYQbmOjH4qTxUXKXd9s3jxD5FPDa0evDQrZ/i9z9rejzfjR18fzj57Ba1xDxLkj6z2xh0AdT2ozZLKISEcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I84cmeRzXsALVIiAEnURrCCXad1fLuGmUCYIB2uJnHY=;
 b=OA9l8lbpmcNmy7PUoirMIp2uNYNTk8kjmLqazLNZztlcdm5lxGOir/fHEiQ+U+2Dflms0l4jU8GqmWn66hZl+kJQ70zmbD68Q9d4afoqCIGTXzMeSoEjjRDj6fR/VoWEUiJ/IgZnN2HfaYj1gAT9q0JHDfSimN89bjfQjfEmzJcTcX84rOUUYREzhG8fSe7LPB60ccIrwfMU3z9haosBVTKQZzZnv9ZJYqN7lxK362PwAmc6mOqooafMjiljnspz+kS9b8g1mmDfwcbOht9MacG3Ie77VwjjSz5Po7eXgv6r+6ESUJPAxddB2TlEfHK4JvScWF8wt+CL8cCZe7yUbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB8479.namprd11.prod.outlook.com (2603:10b6:510:30c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 16:22:18 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Mon, 15 May 2023
 16:22:18 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Deb, Shekhar" <shekhar.deb@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 comms package to 1.3.40.0
Thread-Index: AQHZgog25YD+h/HVzkCOaivzoIM7ea9bjcAQ
Date: Mon, 15 May 2023 16:22:17 +0000
Message-ID: <BL0PR11MB31226D15245E01A5767D9EB3BD789@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230509051017.683046-1-shekhar.deb@intel.com>
In-Reply-To: <20230509051017.683046-1-shekhar.deb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB8479:EE_
x-ms-office365-filtering-correlation-id: 05bb4373-328d-4140-b0b2-08db55608d4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DIiz3BDt8SJbsdwTCh3Ds6KckhCSY/Io0xrKB+xuuYhcD0yW0xFhfo9hDm6JbH5/3/SrmV+Q56yDag9W/Ld5Zc5owSTQwTx9jYWQLgV83plCX+E8myqzfP3yxUDLNb2S6yARF8BlAKTijEkrhTuwpJXDz8ku7E5k2PBbSOiEkMUgsXXShQTWYnGlg52uma2ElE981FESF7qG/MjWfdex4hh8zJFpVAbfQX7wCbYhHQaMQFHBCIuQLmMRCO1bLFK53ZDS2jFNXhiOaL52HmlZO1S/dfxZoLl0t1M5i4AAR52WJAUJQeZPgJtCZlWQxJDzegiAyTnpNd1JHeHxdBrvn39I4k/ss5qu4XHKVyNnRiLjjq6kPd0O1avDamDaMLj6B0mrciHmCi57IwfqtoMP6csIL601SrAM9fHoWYaItzC8oo2vYY2kDH3VX0XDL2HiepsdKuSqhbCyOrEtHfbkF3XDa9sImkw5lrPr+kaezkttcud81pQl2R9UGP05cOXf9jaYMawF5eG/1gKXMGrd0m6ZxLqMm7P7OnyISPReeF0MOOd1mLmzDXSDHAatZ2p1sXYPwX8/5RKSAoWUa9Th1MT2eO8YxKTCdtBofQ54H2wPQa/oWosaVVjgZ9B8cefU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(366004)(376002)(39860400002)(451199021)(33656002)(86362001)(110136005)(316002)(64756008)(66946007)(66476007)(66446008)(66556008)(478600001)(76116006)(7696005)(55016003)(15650500001)(5660300002)(52536014)(8676002)(8936002)(2906002)(38070700005)(38100700002)(82960400001)(122000001)(41300700001)(186003)(53546011)(26005)(6506007)(9686003)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/9qIZ2O2kzogdGwjpZLRACbqNapxY+6gVRdLMYMJDpu+AohI8sY8PpzJJ7jx?=
 =?us-ascii?Q?kXjXTFwAxzdGzEnpDeb7NjnWMlfztAidi921lWN9ie27/6yLKhyqRqGrE76k?=
 =?us-ascii?Q?MGZNnAur2qf7uW0VxIvqJEJOn1YAg+m4KuJHK3g1PxPFtXoo0GoxVsXsk4Qt?=
 =?us-ascii?Q?rEtgl9q8nHPAxr8qz3gwfaZdZ6uYGD2p//iQpFU1LMGeDFlt4M07edox5Adf?=
 =?us-ascii?Q?+UjuuLAyFDNyxFnuH54oV1Zjv+rvLgNAhXUEpmAmvMeSn20B6s2JYJqTHDWV?=
 =?us-ascii?Q?X5W14E6orZgoDxE2fDMh0ALeJM7T8+YgjaHj0TRe2YPtzwAy85yxIPkyFqO3?=
 =?us-ascii?Q?fp/XDzQegBQb/ItIVX0OHsCJzxQqATkT0igP06J5j2qvtViCZENJLX0ypwfq?=
 =?us-ascii?Q?HmZdmW25+WliaKsreCDCxUE6xrymp/qJH1D7J1M9YMOTzhQAV9L80I6Fp/JZ?=
 =?us-ascii?Q?pwN5wtgU5XpWDDGK/HrvjXqS6d8Sjps9VaW6nU5fj04f9hSXJtuW6/fCO89O?=
 =?us-ascii?Q?y27fxAY5HIajTiXCie3dEHerPQYUmVqvd0vmVlc5RGZ11UOQGkbiwL+L7ZwO?=
 =?us-ascii?Q?owafMzacFLdZgVOn68WCeaa5caYkorrrCiW373MgjMJayMSGTRV66N6Q6xZx?=
 =?us-ascii?Q?m1xU3KTvyCfTsn8ABzbuhCmDS9WPYjiMOZI4xSXdEAq9odS+G/TPyC/VOi63?=
 =?us-ascii?Q?v7s895+TNJqTsWY4VglGD3rghjZj//oHa3GTca6n4WNA7PATAPI/KaLsJcY2?=
 =?us-ascii?Q?laSDOr4L8//5OkIXX5L9pkGas3uFJL0AFmT4vgM+Xod3KvAy5gKWYVTSYiTO?=
 =?us-ascii?Q?xq+kFI2eIiGeBgF750TtkFcRbb4XkPPunq0vrl5UmqAlTSztT2taDmEnryMY?=
 =?us-ascii?Q?fVRz3IQp1IRQeWt8IhlaANLXFouPtuDiSersPN4fr0b9Q2MlupuQS3nGXlRv?=
 =?us-ascii?Q?T6dD9G2Yp2VPzuv1kKUVtkmi4wdANgrKenF5YqCI6c7Zxx40V2uI5eh5071V?=
 =?us-ascii?Q?7kALg860S8V+i41npYrivZDIIA3pvKmRu9C8V+qKzA9EWFdYaUHKpWNJ3+DW?=
 =?us-ascii?Q?9g5nLwnqnVURFhEHoAEtSHNk/gc5fps6d617AFtH4eYEnOMHTMpGPG+cZ4EI?=
 =?us-ascii?Q?HMpn4ePux2R6Tp95EdOjXrH+hWVMtxaNUp7DHRIeQVssSGeKunChmz7yXUFa?=
 =?us-ascii?Q?iE9pyaEWRRVsGBDKs74nFbglYYKOW0UZNS68Y8QapxjQyXPBBihzuYbEbgnH?=
 =?us-ascii?Q?zGd/ujPynpuAJcNHjzapTcRHE9yUJZkJp+xacVo+9yy/p2AfhOOROn0aGbKx?=
 =?us-ascii?Q?dvr8DH4lRN/+ix9m+5r7QKNha+1YvJCzBmOH4WsSQWmtEaK6wlS7OadGQewV?=
 =?us-ascii?Q?QiCUlwfS3xN87nLJL6q2nSIyo0OdwHcIxOZFHJTSK+GLUa2IWnnkp+32V9N4?=
 =?us-ascii?Q?FxnjAi3s3S4txp8eAwwFrCALmLgG4nxOsYdgt2/GELu1TcxJfSiejw0Hh72A?=
 =?us-ascii?Q?munf8LL/RZnKw/nkvxF0Q1BX5PH8BNXFeKG+se0VhYc1g05Xw16L9FPNEP6d?=
 =?us-ascii?Q?fY/F/P5CDwEEN3AQoSQQLKzYvO2KJ4Mim0wuhhlBOBkotMZRc+HiJAsw+Ekb?=
 =?us-ascii?Q?vA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05bb4373-328d-4140-b0b2-08db55608d4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 16:22:17.8758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wow2GEzQwubJJDvvl36kZu2T4/yFZJbF/0q6Dmfa+FJGVwi+ucTbSqA661KinBD470OX0kZmTasROOmUYpc9WHE8dERBKjp1UKPJscHT4sEpLzFmDGKGkjaX9tE2lhjX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684167744; x=1715703744;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4PigTS2FIKX8mvMXmk9g8v+t+ra8cASbpWkt5tc8Fqg=;
 b=JXPlFY18mvVhdgD7psm44QpTLWRMlAbvQ3XdS9bOeO9R+NntRpOzAmHq
 0ZkodwhoGepcRjydeuGa1WageBdFyy+K514gucYM8NHh1Q8OmofVXxqE0
 gdomLpKR1hTP0Uzqoxohpe2G3hTPEOpBUlJ6cZW9ccaH4U9tVtnKOVcyO
 E3+RUfe9o5nfHN68yJjGgxzXBwkyuks2uVSNfI8TLnfo6ThfHm31XeVRS
 ZTXvcojFS9EcWmFDWwO1KdtloxmvnADX9sacL7+K909XCp2CEz3dNCkgV
 tFyVGl1x7RXzXF83eup97yrdi49v6Xzq1TzEKhcIZ7y9pthlhCw0sw+Df
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JXPlFY18
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 comms package to 1.3.40.0
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Deb, Shekhar
> Sent: Tuesday, May 9, 2023 10:40 AM
> To: intel-wired-lan@lists.osuosl.org; pmenzel@molgen.mpg.de
> Cc: Deb, Shekhar <shekhar.deb@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP comms package to 1.3.40.0
>
> Update ice DDP comms package file to the latest version: 1.3.40.0
>
> Highlight of changes since 1.3.31.0:
>
> - Add support for Security Group Tag (SGT) header
> - Provide Separate IP Fragment Packet Type Groups for Receive Side Scaling (RSS)
> - Add support to allow Receive Side Scaling (RSS) and Flow Director (FD) on Multicast packets
> - Add support for parsing SGT-PPPoE packets
> - Add support for PPPoE version 2
>
> Signed-off-by: Shekhar Deb <shekhar.deb@intel.com>
> ---
> WHENCE                                        |   2 +-
> ...ms-1.3.31.0.pkg => ice_comms-1.3.40.0.pkg} | Bin 717176 -> 725428 bytes
> 2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-comms/{ice_comms-1.3.31.0.pkg => ice_comms-1.3.40.0.pkg} (74%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
