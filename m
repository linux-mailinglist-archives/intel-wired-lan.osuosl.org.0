Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB31172C849
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 16:25:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37AAD41028;
	Mon, 12 Jun 2023 14:25:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37AAD41028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686579912;
	bh=GNWZf/IXEtD9+5v8537XzvcPXcDJEPiCwvz/kf7p2ZU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lI6DZhaSqQtkfWuqXDTn+YcaatbnjhbKiQqEGSfSx9akEENC1KiD92Rh9XN+Qda38
	 PKnVAle+VO1DrVlFasAmLj6dmLAjy1QiQw2N84KHFuaO7KaxbXVd11+ljzu8/Eepjs
	 MUGobUTKguuYTdLT7NNLq8cVOkUB1FpOOqwHuAqpRHhekNDf6QCaFh3Fp3N0z/EYxa
	 uqa9gwIEsTW80bRonp2W8JL5CHFciDOb+HDd565hp+vjq6aczGrmF9LatNEr318tif
	 XAsIaCNpM96X94jeIECUA7SzFaVYxZcBpEO4R2LoHzJVHYze+3lkdZIHc7CscvISyz
	 fyBClge2DQ9GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5lcaRUKjK8h; Mon, 12 Jun 2023 14:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A98140CBC;
	Mon, 12 Jun 2023 14:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A98140CBC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CABC41BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 14:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEF99405A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 14:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEF99405A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PaQ5_Oun4gpS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 14:25:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98D6240C6C
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98D6240C6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 14:25:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="356938023"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="356938023"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 07:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="744344506"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="744344506"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 12 Jun 2023 07:24:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 07:24:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 12 Jun 2023 07:24:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 12 Jun 2023 07:24:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1MdKzUaVCPc7+7Qm/QXxCFlkgXg/wIvjXtNxx/cEftzLxA3zuIn+8rt2CimRdemYvYboUvoH7kZX8yn/FuaBmcga/3Ckk3UX+DzFh5ePCEhR/WU3DGv/uNP9MiwbWOP//p0vZXTHpOeMMqMRWdpJnXzFZ3elgEafEowk5TjOE3f2g724m61RzMZbf4rTKBShVKtdW8RCWpoeK/ZwtJkzYjhxlqNLokUgbSW79O7WHrq4pV0LgnIkjrC9Z2ozlxa2r29VgnFzj6EJzCARehFmVnspAOlmZgE8uacslpI7b2lmg+V5wLa5b1/zH9RcavbpMGjPZW/9o37fLe0SlVsMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYjkThkm9m20Le8vZ/QgL8v/0wig6Dy7jm8wy8jQf3I=;
 b=KoysUX60YKlSm3Uor9A9fvosA7wRSPzS0eYPmO4dNUCc9AMX9SZhaynzR4EcTTegvtZy/ReoZFU4RtDJkh4dbP7xc0+yFrn1U5NV+32VeV7VlkL1H7ynlZTfXM+CxNcZ6LAebmTq4hNnaBHy1G2sw7Ry7EFeHcjdh2+BsZANvLdsA7Jq02Y7NpGnokml5fMTc+o1ivBL5Y4lq14+Vls3Srv5boaZZ7ckE9UHHwE59tZLyIVFbQn1TG7U5utWS6aw+gwZAZrZo0Gg51BAlKPMztCpGzOvRh0hMZZDC4SVzTRZSVdy/6kYZ5FzElkXe0yGVzUL96NvmphxQSGVef/OBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH8PR11MB6707.namprd11.prod.outlook.com (2603:10b6:510:1c6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Mon, 12 Jun
 2023 14:24:51 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6455.045; Mon, 12 Jun 2023
 14:24:51 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>, "kuba@kernel.org" <kuba@kernel.org>, 
 "jiri@resnulli.us" <jiri@resnulli.us>, "vadfed@meta.com" <vadfed@meta.com>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>
Thread-Topic: [RFC PATCH v8 01/10] dpll: documentation on DPLL subsystem
 interface
Thread-Index: AQHZmszoYeH83BxaW02EVqODRhjpgq+DYA8AgAO2eGA=
Date: Mon, 12 Jun 2023 14:24:51 +0000
Message-ID: <DM6PR11MB4657AC9959F58D51A918E8DC9B54A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <ZIPsiNrWm0hDIZUV@debian.me>
In-Reply-To: <ZIPsiNrWm0hDIZUV@debian.me>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH8PR11MB6707:EE_
x-ms-office365-filtering-correlation-id: a4fb4381-64ec-4967-cd55-08db6b50c90d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cvn0VIUVGP0oYyTk/SFjwBJwP1RtwnU/8FglGn6UrZ88XVzZqaWymdDkCTY20Ot4zxiF0aNhRNVMCBuDmXLB/u224KyakqKrZS+wuFOt7alSMO4POUvAhF4zC/O4rj4q8TRdL47Th+Ab+ZYrtlgOK4whSzyrJGmTDAIKsqrvwLPSv2VVbe5/Ywv8mCYemNaVEyy8F21HEEFZEfCauvKnojjM0oOufKYhXUghpplYakOQsP1pIBTD4v20ZxKFYenDanDea2Ya94s80jVE1YCrOz8QDO0CUWFJdxi9Q6B9tH9lLcNnvswX0EknQQ8bmif9o4I/MK0yOi8U181DJVDyX7ouvX81bwCv5iljJmM1SpKED/Xx4yOLbQvxdAFGjdhGwe/1/M21VxVBxj90SZbgy7MUDVcSXdu37F+360OMIWDWHUPze5AW6Sqy9/3nyZ6ZsuNmMh8qUZbIFYHDJraEK9+Yy1w44ZpjY6n5adkA0ryy6jILEz4VmGiE0EIxN1avn7oEua8nHvR1C5Psf1PoaMsZBwuqla3KVf1ctKftYiblOTUFJ02GX4nvhEmr0IE8wM11yJxPf4DIyTjW8DCU3frox9tuoPaMvCyB8mwFWKTXr60V8yoFIxyaa59/+sLf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199021)(83380400001)(33656002)(30864003)(2906002)(86362001)(38070700005)(82960400001)(122000001)(38100700002)(71200400001)(55016003)(316002)(41300700001)(52536014)(5660300002)(8936002)(186003)(8676002)(7696005)(478600001)(110136005)(54906003)(64756008)(76116006)(66946007)(6506007)(66446008)(66476007)(4326008)(66899021)(9686003)(66556008)(26005)(7416002)(7406005)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFhVSU5qOGpkcnJVUGgrMjI2NDU1YWFqeVBkZjBFcXRxNjVudFV0M3NvWCts?=
 =?utf-8?B?dkR1b0dUcU9sZHJ3Tm8rVzRmRG85VzRWWEk2ZlpCL3A3OHpmSmdKZENITmEz?=
 =?utf-8?B?YTk1Y1NaRHVHbGNONXpoN1VIUFZ1ODhNMjAvS1h5NEo2NkQrOStueEhVVEdu?=
 =?utf-8?B?VGpNYllTeU9nNVNQMUpTeU5QbmJmdko3bkZGOEtrQU9yNE81aGJ6SXlDMU1n?=
 =?utf-8?B?VGVCNEI3VEZiclVBNFZjTERJVmZsVTZ4Y05MOWloNXVKWUEwSmt3VHNyOVhM?=
 =?utf-8?B?VFo0aXczYUh2RHY5QlhITytsOElBU3pKWkVyRGxGaElOWi9vbUpJR2s3Mms2?=
 =?utf-8?B?TU9TMGd0YjVIdlRKWHM3T3pEWklhOG45am5tcTVqM3R1Q2pYWE9oYkRIemZO?=
 =?utf-8?B?dkNWUVAwZEtxQzUyMFk4VnZUbFJIdU9JMXoraVhjL2dmNXVIUEh3UGJPVG10?=
 =?utf-8?B?akNINVBuOGYwbjdUUDRydTR1OHJiVU9sbEJiN1QwT3U5MjJrWlcxQUFDNTY1?=
 =?utf-8?B?SzFYSHBDMVdlc1VCNE5NSFE5RkhCbzFGR0hNKzkwRWgyZ053YUJvS08zYkN3?=
 =?utf-8?B?MmsweHIwQS8zZnRzcVcxc3Z1S3dGV0RaMCsrK0orb1I3SSt4V0JybEFJQjJQ?=
 =?utf-8?B?VnpQNUZBd0JkOXRadUhMWXhpN0t1L1dYMEtrKzRraVFmSHhaT2NRMUpCUk1K?=
 =?utf-8?B?ek1OV0hkOEluMk9SN2t0V3psb1lCbzY3aDhDKzBQeFlickFqbmZ1OG1DOGlU?=
 =?utf-8?B?cXhySWFBUHVGN2NxQzFicEVOSXUzZVBoanR1MVJnczNaYTI1T01wQit2Sy9n?=
 =?utf-8?B?R0VxQWptK1RvMFBmakJoeGU5cUhPVjJoNHp2WUorT0lFdS9ad3RpbkpzRGR4?=
 =?utf-8?B?OUtGS3N4bXdMMW42bXRjS05BRklNRzVLb0tReFhEZTVvNWxwcmViSjBGcUo3?=
 =?utf-8?B?aWIxMVJiM0dsRzQ4b29INlczUGxDcW95ZzlWTnVXamJUQ2VwQUVESFVBdUxP?=
 =?utf-8?B?T2VndHZRRTU2dDV4UnZWcVBwbzVpb00vNllqREkvTVpkb2J4WXN4Qk0wMzJZ?=
 =?utf-8?B?MHpCaTVOeEhDbnEzTVRuWlFoeFBzbmlaSEJKa1dWVGM0U2lRWEVlem5keVcw?=
 =?utf-8?B?d01TTTZJbHBLYU5JUmhkSVZDQVp6eVgzV3FCdlhXR3RPVGpwMWRiOXVSbjR1?=
 =?utf-8?B?dWZrVmgrZUhGZXNjQytoaTJMeUZKK2dwUll0VkZDVW03WDlPRHFpZWFTcE1O?=
 =?utf-8?B?RS9ReElaYlNNVmp5TEt2Y1BIY2UvSHVkUFRCUUVIMlI1ZERtTHNHTVlxT3JS?=
 =?utf-8?B?UWVwZHBiYk95ZHd6VU1yODVhUmI1WFJsUGRqRXZqaE5TZU0vYmRWRHNZVmhZ?=
 =?utf-8?B?Vm9MR240aG1PcGxnckF5elFSSUtIcyszdHNPb2JKWllkQW5za2ttaDAxbXBs?=
 =?utf-8?B?Q3d0NnlQcENwb2hCUVZ1YzJWT1lqam5CRFh6SkhVZXc4S0NFcGY3aFVBRWZM?=
 =?utf-8?B?UlFzWTBWZSs1cE43QS93UmNhZ0t3S3JDUTJSeXFER3dOeWh3MEl0ZnV1ZVZX?=
 =?utf-8?B?OXU4c1E0SFdGbE1VckJ1Y1BoK3hXYVFEU3loSFk1dlNpT3dXQjc0V2NKOWZF?=
 =?utf-8?B?MFVBQnIzQlhtd2JzQ0IycUptK0NJMDNGY01oNmlXMmFKNE5oQ0R3Q3IwNWF3?=
 =?utf-8?B?aXNiR2JuMEZmeE5qUCtSdnd1ZEp5OHdEbEJwak9YQ3ZScHNpUmgyNHpsTHpN?=
 =?utf-8?B?WXk2SGIzWEs3ejM2c01jcncyZGtZMjQ1U3ZDeUptTDNPZTZ6VDNCbjYzc3pi?=
 =?utf-8?B?Sjd6QTRtaGVlOEo0bUJlcEVoNEU3YlEvalRQeUZqQ1ZDYzY1NmgvZ09JbDdj?=
 =?utf-8?B?b0VvT2x4cTB1WFVyNzNBNElTRGtFU0t4Vk9pQ3BJYjJKbEY1cUJTMmxudHBL?=
 =?utf-8?B?a2ExMlpnMlRkYUo5a28rMzNGK2pkanZHcDFBNURnb1MwYUZ5dEpXREZnUUZ1?=
 =?utf-8?B?dXIzUTZZaFNHUkM4enB4RElxVHVRTko3Z3NmanpsM0xKTURGZXNwL3R5NmlU?=
 =?utf-8?B?MXdDQjBmaTM5R0toZXYxcjBtMExHSlZrd0RWRHI2S3B5TWtBb0drNm1VRFh4?=
 =?utf-8?B?WXgwcnA2N3hSeDFLRlpEZS9aanZ6MjNydXBrVnAvOGozMHdVc2daM1pFcWVO?=
 =?utf-8?B?K0E9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4fb4381-64ec-4967-cd55-08db6b50c90d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 14:24:51.7317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MwMeNoMqdhmpTrYOr3gHidp6x7aa11698s8IZzH9GAvUYiyikMaLqnL9d+0Rh0wGdCskE12FeWYenIRHnTHNBqcwM8+qxdvPf6HTvAWDkAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686579901; x=1718115901;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PYjkThkm9m20Le8vZ/QgL8v/0wig6Dy7jm8wy8jQf3I=;
 b=R/hdpAH5G1U75FwHN9Y+43/f2wXZI91fBDY5CKrUW5+i1LHaMHS/Xp7c
 lNuxP3U2t8Fzz/qGYJ7JqPRdIP6zPKSfyKbfJbOsRrN3elq8xMxCR95fX
 8XRn5YQ3hBSJeRSOwtpqeFLxpzP6vQALC2D2D/c1fN1k5YVtuaB3vodsP
 L43G45sGZvX++dwqPSvqPcsFuJY8vmUehw4GGTt2uEi1hnZWt6KdDrGvM
 hhDKfFY0Ax3fp7ozeOzFJZgk7hU2Bk6KMn5Rebi3yxIFSYmSTRjSXjpvo
 /ziFS3QuDD9XVPmNsFior36DGHXIUlqzJF+5XKhtlVB2flvQNXTpQ2g2H
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R/hdpAH5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Bagas Sanjaya <bagasdotme@gmail.com>
>Sent: Saturday, June 10, 2023 5:23 AM
>
>On Fri, Jun 09, 2023 at 02:18:44PM +0200, Arkadiusz Kubalewski wrote:
>> diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-
>api/dpll.rst
>> new file mode 100644
>> index 000000000000..8caa4af022ad
>> --- /dev/null
>> +++ b/Documentation/driver-api/dpll.rst
>> @@ -0,0 +1,458 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +===============================
>> +The Linux kernel dpll subsystem
>> +===============================
>> +
>> +The main purpose of dpll subsystem is to provide general interface
>> +to configure devices that use any kind of Digital PLL and could use
>> +different sources of signal to synchronize to as well as different
>> +types of outputs.
>> +The main interface is NETLINK_GENERIC based protocol with an event
>> +monitoring multicast group defined.
>> +
>> +Device object
>> +=============
>> +
>> +Single dpll device object means single Digital PLL circuit and bunch of
>> +connected pins.
>> +It reports the supported modes of operation and current status to the
>> +user in response to the `do` request of netlink command
>> +``DPLL_CMD_DEVICE_GET`` and list of dplls registered in the subsystem
>> +with `dump` netlink request of the same command.
>> +Changing the configuration of dpll device is done with `do` request of
>> +netlink ``DPLL_CMD_DEVICE_SET`` command.
>> +A device handle is ``DPLL_A_ID``, it shall be provided to get or set
>> +configuration of particular device in the system. It can be obtained
>> +with a ``DPLL_CMD_DEVICE_GET`` `dump` request or
>> +a ``DPLL_CMD_DEVICE_ID_GET`` `do` request, where the one must provide
>> +attributes that result in single device match.
>> +
>> +Pin object
>> +==========
>> +
>> +A pin is amorphic object which represents either input or output, it
>> +could be internal component of the device, as well as externally
>> +connected.
>> +The number of pins per dpll vary, but usually multiple pins shall be
>> +provided for a single dpll device.
>> +Pin's properties, capabilities and status is provided to the user in
>> +response to `do` request of netlink ``DPLL_CMD_PIN_GET`` command.
>> +It is also possible to list all the pins that were registered in the
>> +system with `dump` request of ``DPLL_CMD_PIN_GET`` command.
>> +Configuration of a pin can be changed by `do` request of netlink
>> +``DPLL_CMD_PIN_SET`` command.
>> +Pin handle is a ``DPLL_A_PIN_ID``, it shall be provided to get or set
>> +configuration of particular pin in the system. It can be obtained with
>> +``DPLL_CMD_PIN_GET`` `dump` request or ``DPLL_CMD_PIN_ID_GET`` `do`
>> +request, where user provides attributes that result in single pin match.
>> +
>> +Pin selection
>> +=============
>> +
>> +In general, selected pin (the one which signal is driving the dpll
>> +device) can be obtained from ``DPLL_A_PIN_STATE`` attribute, and only
>> +one pin shall be in ``DPLL_PIN_STATE_CONNECTED`` state for any dpll
>> +device.
>> +
>> +Pin selection can be done either manually or automatically, depending
>> +on hardware capabilities and active dpll device work mode
>> +(``DPLL_A_MODE`` attribute). The consequence is that there are
>> +differences for each mode in terms of available pin states, as well as
>> +for the states the user can request for a dpll device.
>> +
>> +In manual mode (``DPLL_MODE_MANUAL``) the user can request or receive
>> +one of following pin states:
>> +- ``DPLL_PIN_STATE_CONNECTED`` - the pin is used to drive dpll device
>> +- ``DPLL_PIN_STATE_DISCONNECTED`` - the pin is not used to drive dpll
>> +  device
>> +
>> +In automatic mode (``DPLL_MODE_AUTOMATIC``) the user can request or
>> +receive one of following pin states:
>> +- ``DPLL_PIN_STATE_SELECTABLE`` - the pin shall be considered as valid
>> +  input for automatic selection algorithm
>> +- ``DPLL_PIN_STATE_DISCONNECTED`` - the pin shall be not considered as
>> +  a valid input for automatic selection algorithm
>> +In automatic mode (``DPLL_MODE_AUTOMATIC``) the user can only receive
>> +pin state ``DPLL_PIN_STATE_CONNECTED`` once automatic selection
>> +algorithm locks a dpll device with one of the inputs.
>> +
>> +For other dpll device operating modes there is no pin selection
>> +mechanics.
>> +
>> +Shared pins
>> +===========
>> +
>> +A single pin object can be attached to multiple dpll devices.
>> +Then there are two groups of configuration knobs:
>> +1) Set on a pin - the configuration affects all dpll devices pin is
>> +   registered to (i.e. ``DPLL_A_PIN_FREQUENCY``),
>> +2) Set on a pin-dpll tuple - the configuration affects only selected
>> +   dpll device (i.e. ``DPLL_A_PIN_PRIO``, ``DPLL_A_PIN_STATE``,
>> +   ``DPLL_A_PIN_DIRECTION``).
>> +
>> +MUX-type pins
>> +=============
>> +
>> +A pin can be MUX-type, it aggregates child pins and serves as a pin
>> +multiplexer. One or more pins are registered with MUX-type instead of
>> +being directly registered to a dpll device.
>> +Pins registered with a MUX-type provide user with additional nested
>> +attribute ``DPLL_A_PIN_PARENT`` for each parent they were registered
>> +with.
>> +If a pin was registered with multiple parent pins, they behave like a
>> +multiple output multiplexer. In this case output of a
>> +``DPLL_CMD_PIN_GET`` would contain multiple pin-parent nested
>> +attributes with current state related to each parent, like:
>> +
>> +``'pin': [{
>> + {'clock-id': 282574471561216,
>> +  'module-name': 'ice',
>> +  'pin-dpll-caps': 4,
>> +  'pin-id': 13,
>> +  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
>> +                 {'pin-id': 3, 'pin-state': 'disconnected'},
>> +                 {'id': 0, 'pin-direction': 'input'},
>> +                 {'id': 1, 'pin-direction': 'input'}],
>> +  'pin-type': 'synce-eth-port'}
>> +}]``
>> +
>> +Only one child pin can provide its signal to the parent MUX-type pin at
>> +a time, the selection is done by requesting change of a child pin state
>> +on desired parent, with the use of ``DPLL_A_PIN_PARENT`` nested
>> +attribute. Example of netlink `set state on parent pin` message format:
>> +
>> +  =====================  =============================================
>> +  ``DPLL_A_PIN_ID``      child pin id
>> +  ``DPLL_A_PIN_PARENT``  nested attribute for requesting configuration
>> +                         related to parent pin
>> +    ``DPLL_A_PIN_ID``    parent pin id
>> +    ``DPLL_A_PIN_STATE`` requested pin state on parent
>> +
>> +Pin priority
>> +============
>> +
>> +Some devices might offer a capability of automatic pin selection mode
>> +(enum value ``DPLL_MODE_AUTOMATIC`` of ``DPLL_A_MODE`` attribute).
>> +Usually, automatic selection is performed on the hardware level, which
>> +means only pins directly connected to the dpll can be used for automatic
>> +input pin selection.
>> +In automatic selection mode, the user cannot manually select a input
>> +pin for the device, instead the user shall provide all directly
>> +connected pins with a priority ``DPLL_A_PIN_PRIO``, the device would
>> +pick a highest priority valid signal and use it to control the DPLL
>> +device. Example of netlink `set priority on parent pin` message format:
>> +
>> +  =====================  =============================================
>> +  ``DPLL_A_PIN_ID``      child pin id
>> +  ``DPLL_A_PIN_PARENT``  nested attribute for requesting configuration
>> +                         related to parent pin
>> +    ``DPLL_A_ID``        parent dpll id
>> +    ``DPLL_A_PIN_PRIO``  requested pin prio on parent dpll
>> +
>> +Child pin of MUX-type is not capable of automatic input pin selection,
>> +in order to configure a input of a MUX-type pin, the user needs to
>> +request desired pin state of the child pin on the parent pin,
>> +as described in the ``MUX-type pins`` chapter.
>> +
>> +Configuration commands group
>> +============================
>> +
>> +Configuration commands are used to get information about registered
>> +dpll devices (and pins), as well as set configuration of device or pins.
>> +As dpll devices must be abstracted and reflect real hardware,
>> +there is no way to add new dpll device via netlink from user space and
>> +each device should be registered by its driver.
>> +
>> +All netlink commands require ``GENL_ADMIN_PERM``. This is to prevent
>> +any spamming/DoS from unauthorized userspace applications.
>> +
>> +List of netlink commands with possible attributes
>> +=================================================
>> +
>> +All constants identifying command types use a ``DPLL_CMD_`` prefix and
>> +suffix according to command purpose. All attributes use a ``DPLL_A_``
>> +prefix and suffix according to attribute purpose:
>> +
>> +  ==================================== =================================
>> +  ``DPLL_CMD_DEVICE_ID_GET``           command to get device ID
>> +    ``DPLL_A_MODULE_NAME``             attr module name of registerer
>> +    ``DPLL_A_CLOCK_ID``                attr Unique Clock Identifier
>> +                                       (EUI-64), as defined by the
>> +                                       IEEE 1588 standard
>> +    ``DPLL_A_TYPE``                    attr type of dpll device
>> +  ``DPLL_CMD_DEVICE_GET``              command to get device info or
>> +                                       dump list of available devices
>> +    ``DPLL_A_ID``                      attr unique dpll device ID
>> +    ``DPLL_A_MODULE_NAME``             attr module name of registerer
>> +    ``DPLL_A_CLOCK_ID``                attr Unique Clock Identifier
>> +                                       (EUI-64), as defined by the
>> +                                       IEEE 1588 standard
>> +    ``DPLL_A_MODE``                    attr selection mode
>> +    ``DPLL_A_MODE_SUPPORTED``          attr available selection modes
>> +    ``DPLL_A_LOCK_STATUS``             attr dpll device lock status
>> +    ``DPLL_A_TEMP``                    attr device temperature info
>> +    ``DPLL_A_TYPE``                    attr type of dpll device
>> +  ``DPLL_CMD_DEVICE_SET``              command to set dpll device config
>> +    ``DPLL_A_ID``                      attr internal dpll device index
>> +    ``DPLL_A_MODE``                    attr selection mode to configure
>> +  ``DPLL_CMD_PIN_GET``                 command to get pin ID
>> +    ``DPLL_A_MODULE_NAME``             attr module name of registerer
>> +    ``DPLL_A_CLOCK_ID``                attr Unique Clock Identifier
>> +                                       (EUI-64), as defined by the
>> +                                       IEEE 1588 standard
>> +    ``DPLL_A_PIN_BOARD_LABEL``         attr pin board label provided
>> +                                       by registerer
>> +    ``DPLL_A_PIN_PANEL_LABEL``         attr pin panel label provided
>> +                                       by registerer
>> +    ``DPLL_A_PIN_PACKAGE_LABEL``       attr pin package label provided
>> +                                       by registerer
>> +    ``DPLL_A_PIN_TYPE``                attr type of a pin
>> +  ``DPLL_CMD_PIN_GET``                 command to get pin info or dump
>> +                                       list of available pins
>> +    ``DPLL_A_PIN_ID``                  attr unique a pin ID
>> +    ``DPLL_A_MODULE_NAME``             attr module name of registerer
>> +    ``DPLL_A_CLOCK_ID``                attr Unique Clock Identifier
>> +                                       (EUI-64), as defined by the
>> +                                       IEEE 1588 standard
>> +    ``DPLL_A_PIN_BOARD_LABEL``         attr pin board label provided
>> +                                       by registerer
>> +    ``DPLL_A_PIN_PANEL_LABEL``         attr pin panel label provided
>> +                                       by registerer
>> +    ``DPLL_A_PIN_PACKAGE_LABEL``       attr pin package label provided
>> +                                       by registerer
>> +    ``DPLL_A_PIN_TYPE``                attr type of a pin
>> +    ``DPLL_A_PIN_DIRECTION``           attr direction of a pin
>> +    ``DPLL_A_PIN_FREQUENCY``           attr current frequency of a pin
>> +    ``DPLL_A_PIN_FREQUENCY_SUPPORTED`` nested attr provides supported
>> +                                       frequencies
>> +      ``DPLL_A_PIN_ANY_FREQUENCY_MIN`` attr minimum value of frequency
>> +      ``DPLL_A_PIN_ANY_FREQUENCY_MAX`` attr maximum value of frequency
>> +    ``DPLL_A_PIN_PARENT``              nested attr for each parent the
>> +                                       pin is connected with
>> +      ``DPLL_A_ID``                    attr provided if parent is dpll
>> +                                       device
>> +      ``DPLL_A_PIN_ID``                attr provided if parent is a pin
>> +      ``DPLL_A_PIN_PRIO``              attr priority of pin on the
>> +                                       dpll device
>> +      ``DPLL_A_PIN_STATE``             attr state of pin on the dpll
>> +                                       device or on the parent pin
>> +    ``DPLL_A_PIN_DPLL_CAPS``           attr bitmask of pin-dpll
>> +                                       capabilities
>> +  ``DPLL_CMD_PIN_SET``                 command to set pins configuration
>> +    ``DPLL_A_PIN_ID``                  attr unique a pin ID
>> +    ``DPLL_A_PIN_DIRECTION``           attr requested direction of a pin
>> +    ``DPLL_A_PIN_FREQUENCY``           attr requested frequency of a pin
>> +    ``DPLL_A_PIN_PARENT``              nested attr for each parent
>> +                                       related configuration of a pin
>> +                                       requested
>> +      ``DPLL_A_ID``                    attr provided if parent is dpll
>> +                                       device
>> +      ``DPLL_A_PIN_ID``                attr provided if parent is a pin
>> +      ``DPLL_A_PIN_PRIO``              attr requested priority of pin on
>> +                                       the dpll device
>> +      ``DPLL_A_PIN_STATE``             attr requested state of pin on
>> +                                       the dpll device or on the parent
>> +                                       pin
>> +
>> +Netlink dump requests
>> +=====================
>> +
>> +The ``DPLL_CMD_DEVICE_GET`` and ``DPLL_CMD_PIN_GET`` commands are
>> +capable of dump type netlink requests, in which case the response is in
>> +the same format as for their ``do`` request, but every device or pin
>> +registered in the system is returned.
>> +
>> +SET commands format
>> +===================
>> +
>> +``DPLL_CMD_DEVICE_SET`` - to target a dpll device, the user provides
>> +``DPLL_A_ID``, which is unique identifier of dpll device in the system,
>> +as well as parameter being configured (``DPLL_A_MODE``).
>> +
>> +``DPLL_CMD_PIN_SET`` - to target a pin user has to provide a
>> +``DPLL_A_PIN_ID``, which is unique identifier of a pin in the system.
>> +Also configured pin parameters must be added.
>> +If ``DPLL_A_PIN_DIRECTION`` or ``DPLL_A_PIN_FREQUENCY`` are configured,
>> +this affects all the dpll device they are connected, that is why those
>> +attributes shall not be enclosed in ``DPLL_A_PIN_PARENT``.
>> +Other attributes:
>> +``DPLL_A_PIN_PRIO`` or ``DPLL_A_PIN_STATE`` must be enclosed in
>> +``DPLL_A_PIN_PARENT`` as their configuration relates to only one
>> +parent dpll or parent pin.
>> +Nested attribute of either ``DPLL_A_ID`` or ``DPLL_A_PIN_ID`` determines
>> +if configuration was requested on a dpll device or on a pin
>> +respectively.
>> +In general, it is possible to configure multiple parameters at once, but
>> +internally each parameter change will be invoked separately, where order
>> +of configuration is not guaranteed by any means.
>> +
>> +Device level configuration pre-defined enums
>> +=================================================
>> +
>> +Values for ``DPLL_A_LOCK_STATUS`` attribute:
>> +
>> +  ================================== ===================================
>> +  ``DPLL_LOCK_STATUS_UNLOCKED``      dpll device is in freerun, not
>> +                                     locked to any input pin
>> +  ``DPLL_LOCK_STATUS_LOCKED``        dpll device is locked to the input
>> +                                     but no holdover capability yet
>> +                                     acquired
>> +  ``DPLL_LOCK_STATUS_LOCKED_HO_ACQ`` dpll device is locked to the input
>> +                                     pin with holdover capability
>> +                                     acquired
>> +  ``DPLL_LOCK_STATUS_HOLDOVER``      dpll device lost a lock, using its
>> +                                     frequency holdover capabilities
>> +
>> +Values for ``DPLL_A_MODE`` attribute:
>> +
>> +  ======================= ==============================================
>> +  ``DPLL_MODE_MANUAL``    input pin is manually selected by setting pin
>> +                          state to ``DPLL_PIN_STATE_CONNECTED`` on a
>> +                          dpll device
>> +  ``DPLL_MODE_AUTOMATIC`` input pin is auto selected according to
>> +                          configured pin priorities and input signal
>> +                          validity
>> +  ``DPLL_MODE_HOLDOVER``  force holdover mode of dpll
>> +  ``DPLL_MODE_FREERUN``   dpll device is driven by supplied system clock
>> +                          without holdover capabilities
>> +
>> +Values for ``DPLL_A_TYPE`` attribute:
>> +
>> +  ================= ===================================================
>> +  ``DPLL_TYPE_PPS`` dpll device used to provide pulse-per-second output
>> +  ``DPLL_TYPE_EEC`` dpll device used to drive ethernet equipment clock
>> +
>> +Pin level configuration pre-defined enums
>> +=========================================
>> +
>> +Values for ``DPLL_A_PIN_STATE`` attribute:
>> +
>> +  =============================== ======================================
>> +  ``DPLL_PIN_STATE_CONNECTED``    Pin used as active input for a dpll
>> +                                  device or for a parent pin
>> +  ``DPLL_PIN_STATE_DISCONNECTED`` Pin disconnected from a dpll device or
>> +                                  from a parent pin
>> +  ``DPLL_PIN_STATE_SELECTABLE``   Pin enabled for automatic selection
>> +
>> +Values for ``DPLL_A_PIN_DIRECTION`` attribute:
>> +
>> +  ============================= ====================================
>> +  ``DPLL_PIN_DIRECTION_INPUT``  used to provide its signal to a dpll
>> +                                device
>> +  ``DPLL_PIN_DIRECTION_OUTPUT`` used to output the signal from a dpll
>> +                                device
>> +
>> +Values for ``DPLL_A_PIN_TYPE`` attributes:
>> +
>> +  ================================ =====================================
>> +  ``DPLL_PIN_TYPE_MUX``            MUX type pin, connected pins shall
>> +                                   have their own types
>> +  ``DPLL_PIN_TYPE_EXT``            External pin
>> +  ``DPLL_PIN_TYPE_SYNCE_ETH_PORT`` SyncE on Ethernet port
>> +  ``DPLL_PIN_TYPE_INT_OSCILLATOR`` Internal Oscillator (i.e. Holdover
>> +                                   with Atomic Clock as an input)
>> +  ``DPLL_PIN_TYPE_GNSS``           GNSS 1PPS input
>> +
>> +Values for ``DPLL_A_PIN_DPLL_CAPS`` attributes:
>> +
>> +  ====================================== ===============================
>> +  ``DPLL_PIN_CAPS_DIRECTION_CAN_CHANGE`` Bit present if direction of
>> +                                         pin can change
>> +  ``DPLL_PIN_CAPS_PRIORITY_CAN_CHANGE``  Bit present if priority of pin
>> +                                         can change
>> +  ``DPLL_PIN_CAPS_STATE_CAN_CHANGE``     Bit present if state of pin can
>> +                                         change
>> +
>> +Notifications
>> +=============
>> +
>> +dpll device can provide notifications regarding status changes of the
>> +device, i.e. lock status changes, input/output changes or other alarms.
>> +There is one multicast group that is used to notify user-space apps via
>> +netlink socket: ``DPLL_MCGRP_MONITOR``
>> +
>> +Notifications messages:
>> +
>> +  ============================== =====================================
>> +  ``DPLL_CMD_DEVICE_CREATE_NTF`` dpll device was created
>> +  ``DPLL_CMD_DEVICE_DELETE_NTF`` dpll device was deleted
>> +  ``DPLL_CMD_DEVICE_CHANGE_NTF`` dpll device has changed
>> +  ``DPLL_CMD_PIN_CREATE_NTF``    dpll pin was created
>> +  ``DPLL_CMD_PIN_DELETE_NTF``    dpll pin was deleted
>> +  ``DPLL_CMD_PIN_CHANGE_NTF``    dpll pin has changed
>> +
>> +Events format is the same as for the corresponding get command.
>> +Format of ``DPLL_CMD_DEVICE_`` events is the same as response of
>> +``DPLL_CMD_DEVICE_GET``.
>> +Format of ``DPLL_CMD_PIN_`` events is same as response of
>> +``DPLL_CMD_PIN_GET``.
>> +
>> +Device driver implementation
>> +============================
>> +
>> +Device is allocated by dpll_device_get() call. Second call with the
>> +same arguments will not create new object but provides pointer to
>> +previously created device for given arguments, it also increases
>> +refcount of that object.
>> +Device is deallocated by dpll_device_put() call, which first
>> +decreases the refcount, once refcount is cleared the object is
>> +destroyed.
>> +
>> +Device should implement set of operations and register device via
>> +dpll_device_register() at which point it becomes available to the
>> +users. Multiple driver instances can obtain reference to it with
>> +dpll_device_get(), as well as register dpll device with their own
>> +ops and priv.
>> +
>> +The pins are allocated separately with dpll_pin_get(), it works
>> +similarly to dpll_device_get(). Function first creates object and then
>> +for each call with the same arguments only the object refcount
>> +increases. Also dpll_pin_put() works similarly to dpll_device_put().
>> +
>> +A pin can be registered with parent dpll device or parent pin, depending
>> +on hardware needs. Each registration requires registerer to provide set
>> +of pin callbacks, and private data pointer for calling them:
>> +- dpll_pin_register() - register pin with a dpll device,
>> +- dpll_pin_on_pin_register() - register pin with another MUX type pin.
>> +
>> +Notifications of adding or removing dpll devices are created within
>> +subsystem itself.
>> +Notifications about registering/deregistering pins are also invoked by
>> +the subsystem.
>> +Notifications about status changes either of dpll device or a pin are
>> +invoked in two ways:
>> +- after successful change was requested on dpll subsystem, the subsystem
>> +  calls corresponding notification,
>> +- requested by device driver with dpll_device_change_ntf() or
>> +  dpll_pin_change_ntf() when driver informs about the status change.
>> +
>> +The device driver using dpll interface is not required to implement all
>> +the callback operation. Neverthelessi, there are few required to be
>> +implemented.
>> +Required dpll device level callback operations:
>> +- ``.mode_get``,
>> +- ``.lock_status_get``.
>> +
>> +Required pin level callback operations:
>> +- ``.state_get`` (pins registered with dpll device),
>> +- ``.state_on_pin_get`` (pins registered with parent pin),
>> +- ``.direction_get``.
>> +
>> +Every other operation handler is checked for existence and
>> +``-ENOTSUPP`` is returned in case of absence of specific handler.
>> +
>> +SyncE enablement
>> +================
>> +For SyncE enablement it is required to allow control over dpll device
>> +for a software application which monitors and configures the inputs of
>> +dpll device in response to current state of a dpll device and its
>> +inputs.
>> +In such scenario, dpll device input signal shall be also configurable
>> +to drive dpll with signal recovered from the PHY netdevice.
>> +This is done by exposing a pin to the netdevice - attaching pin to the
>> +netdevice itself with:
>> +netdev_dpll_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin);
>> +Exposed pin id handle ``DPLL_A_PIN_ID`` is then identifiable by the user
>> +as it is attached to rtnetlink respond to get ``RTM_NEWLINK`` command in
>> +nested attribute ``IFLA_DPLL_PIN``.
>
>There are countless htmldocs warnings, so I have to fix them up:
>
>---- >8 ----
>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-
>api/dpll.rst
>index 8caa4af022ad82..5b2d3e3b9f8893 100644
>--- a/Documentation/driver-api/dpll.rst
>+++ b/Documentation/driver-api/dpll.rst
>@@ -63,16 +63,19 @@ for the states the user can request for a dpll device.
>
> In manual mode (``DPLL_MODE_MANUAL``) the user can request or receive
> one of following pin states:
>+
> - ``DPLL_PIN_STATE_CONNECTED`` - the pin is used to drive dpll device
> - ``DPLL_PIN_STATE_DISCONNECTED`` - the pin is not used to drive dpll
>   device
>
> In automatic mode (``DPLL_MODE_AUTOMATIC``) the user can request or
> receive one of following pin states:
>+
> - ``DPLL_PIN_STATE_SELECTABLE`` - the pin shall be considered as valid
>   input for automatic selection algorithm
> - ``DPLL_PIN_STATE_DISCONNECTED`` - the pin shall be not considered as
>   a valid input for automatic selection algorithm
>+
> In automatic mode (``DPLL_MODE_AUTOMATIC``) the user can only receive
> pin state ``DPLL_PIN_STATE_CONNECTED`` once automatic selection
> algorithm locks a dpll device with one of the inputs.
>@@ -85,6 +88,7 @@ Shared pins
>
> A single pin object can be attached to multiple dpll devices.
> Then there are two groups of configuration knobs:
>+
> 1) Set on a pin - the configuration affects all dpll devices pin is
>    registered to (i.e. ``DPLL_A_PIN_FREQUENCY``),
> 2) Set on a pin-dpll tuple - the configuration affects only selected
>@@ -103,31 +107,32 @@ with.
> If a pin was registered with multiple parent pins, they behave like a
> multiple output multiplexer. In this case output of a
> ``DPLL_CMD_PIN_GET`` would contain multiple pin-parent nested
>-attributes with current state related to each parent, like:
>+attributes with current state related to each parent, like::
>
>-``'pin': [{
>- {'clock-id': 282574471561216,
>-  'module-name': 'ice',
>-  'pin-dpll-caps': 4,
>-  'pin-id': 13,
>-  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
>-                 {'pin-id': 3, 'pin-state': 'disconnected'},
>-                 {'id': 0, 'pin-direction': 'input'},
>-                 {'id': 1, 'pin-direction': 'input'}],
>-  'pin-type': 'synce-eth-port'}
>-}]``
>+  'pin': [{
>+   {'clock-id': 282574471561216,
>+    'module-name': 'ice',
>+    'pin-dpll-caps': 4,
>+    'pin-id': 13,
>+    'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
>+                   {'pin-id': 3, 'pin-state': 'disconnected'},
>+                   {'id': 0, 'pin-direction': 'input'},
>+                   {'id': 1, 'pin-direction': 'input'}],
>+    'pin-type': 'synce-eth-port'}
>+  }]
>
> Only one child pin can provide its signal to the parent MUX-type pin at
> a time, the selection is done by requesting change of a child pin state
> on desired parent, with the use of ``DPLL_A_PIN_PARENT`` nested
> attribute. Example of netlink `set state on parent pin` message format:
>
>-  =====================  =============================================
>+  ====================== =============================================
>   ``DPLL_A_PIN_ID``      child pin id
>   ``DPLL_A_PIN_PARENT``  nested attribute for requesting configuration
>                          related to parent pin
>     ``DPLL_A_PIN_ID``    parent pin id
>     ``DPLL_A_PIN_STATE`` requested pin state on parent
>+  ====================== =============================================
>
> Pin priority
> ============
>@@ -149,6 +154,7 @@ device. Example of netlink `set priority on parent pin`
>message format:
>                          related to parent pin
>     ``DPLL_A_ID``        parent dpll id
>     ``DPLL_A_PIN_PRIO``  requested pin prio on parent dpll
>+  =====================  =============================================
>
> Child pin of MUX-type is not capable of automatic input pin selection,
> in order to configure a input of a MUX-type pin, the user needs to
>@@ -254,6 +260,7 @@ prefix and suffix according to attribute purpose:
>       ``DPLL_A_PIN_STATE``             attr requested state of pin on
>                                        the dpll device or on the parent
>                                        pin
>+  ==================================== =================================
>
> Netlink dump requests
> =====================
>@@ -303,6 +310,7 @@ Values for ``DPLL_A_LOCK_STATUS`` attribute:
>                                      acquired
>   ``DPLL_LOCK_STATUS_HOLDOVER``      dpll device lost a lock, using its
>                                      frequency holdover capabilities
>+  ================================== ===================================
>
> Values for ``DPLL_A_MODE`` attribute:
>
>@@ -316,12 +324,14 @@ Values for ``DPLL_A_MODE`` attribute:
>   ``DPLL_MODE_HOLDOVER``  force holdover mode of dpll
>   ``DPLL_MODE_FREERUN``   dpll device is driven by supplied system clock
>                           without holdover capabilities
>+  ======================= ==============================================
>
> Values for ``DPLL_A_TYPE`` attribute:
>
>   ================= ===================================================
>   ``DPLL_TYPE_PPS`` dpll device used to provide pulse-per-second output
>   ``DPLL_TYPE_EEC`` dpll device used to drive ethernet equipment clock
>+  ================= ===================================================
>
> Pin level configuration pre-defined enums
> =========================================
>@@ -334,6 +344,7 @@ Values for ``DPLL_A_PIN_STATE`` attribute:
>   ``DPLL_PIN_STATE_DISCONNECTED`` Pin disconnected from a dpll device or
>                                   from a parent pin
>   ``DPLL_PIN_STATE_SELECTABLE``   Pin enabled for automatic selection
>+  =============================== ======================================
>
> Values for ``DPLL_A_PIN_DIRECTION`` attribute:
>
>@@ -342,6 +353,7 @@ Values for ``DPLL_A_PIN_DIRECTION`` attribute:
>                                 device
>   ``DPLL_PIN_DIRECTION_OUTPUT`` used to output the signal from a dpll
>                                 device
>+  ============================= ====================================
>
> Values for ``DPLL_A_PIN_TYPE`` attributes:
>
>@@ -353,6 +365,7 @@ Values for ``DPLL_A_PIN_TYPE`` attributes:
>   ``DPLL_PIN_TYPE_INT_OSCILLATOR`` Internal Oscillator (i.e. Holdover
>                                    with Atomic Clock as an input)
>   ``DPLL_PIN_TYPE_GNSS``           GNSS 1PPS input
>+  ================================ =====================================
>
> Values for ``DPLL_A_PIN_DPLL_CAPS`` attributes:
>
>@@ -363,6 +376,7 @@ Values for ``DPLL_A_PIN_DPLL_CAPS`` attributes:
>                                          can change
>   ``DPLL_PIN_CAPS_STATE_CAN_CHANGE``     Bit present if state of pin can
>                                          change
>+  ====================================== ===============================
>
> Notifications
> =============
>@@ -381,6 +395,7 @@ Notifications messages:
>   ``DPLL_CMD_PIN_CREATE_NTF``    dpll pin was created
>   ``DPLL_CMD_PIN_DELETE_NTF``    dpll pin was deleted
>   ``DPLL_CMD_PIN_CHANGE_NTF``    dpll pin has changed
>+  ============================== =====================================
>
> Events format is the same as for the corresponding get command.
> Format of ``DPLL_CMD_DEVICE_`` events is the same as response of
>@@ -413,6 +428,7 @@ increases. Also dpll_pin_put() works similarly to
>dpll_device_put().
> A pin can be registered with parent dpll device or parent pin, depending
> on hardware needs. Each registration requires registerer to provide set
> of pin callbacks, and private data pointer for calling them:
>+
> - dpll_pin_register() - register pin with a dpll device,
> - dpll_pin_on_pin_register() - register pin with another MUX type pin.
>
>@@ -422,6 +438,7 @@ Notifications about registering/deregistering pins are
>also invoked by
> the subsystem.
> Notifications about status changes either of dpll device or a pin are
> invoked in two ways:
>+
> - after successful change was requested on dpll subsystem, the subsystem
>   calls corresponding notification,
> - requested by device driver with dpll_device_change_ntf() or
>@@ -431,10 +448,11 @@ The device driver using dpll interface is not
>required to implement all
> the callback operation. Neverthelessi, there are few required to be
> implemented.
> Required dpll device level callback operations:
>+
> - ``.mode_get``,
> - ``.lock_status_get``.
>
>-Required pin level callback operations:
>+oRequired pin level callback operations:

This seems wrong here? I mean the "o" in front of required?
Added new line after the sentences, like:

+ Required pin level callback operations:
+
+ -``.state_get`` (pins registered with dpll device),

> - ``.state_get`` (pins registered with dpll device),
> - ``.state_on_pin_get`` (pins registered with parent pin),
> - ``.direction_get``.
>@@ -451,8 +469,8 @@ inputs.
> In such scenario, dpll device input signal shall be also configurable
> to drive dpll with signal recovered from the PHY netdevice.
> This is done by exposing a pin to the netdevice - attaching pin to the
>-netdevice itself with:
>-netdev_dpll_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin);
>+netdevice itself with
>+``netdev_dpll_pin_set(struct net_device *dev, struct dpll_pin
>*dpll_pin)``.
> Exposed pin id handle ``DPLL_A_PIN_ID`` is then identifiable by the user
> as it is attached to rtnetlink respond to get ``RTM_NEWLINK`` command in
> nested attribute ``IFLA_DPLL_PIN``.
>
>(but because the fix diff above is quite large, Co-developed-by: from
>me may qualify).
>
>Thanks.

Many thanks for pointing this out, will do.

Thank you!
Arkadiusz

>
>--
>An old man doll... just what I always wanted! - Clara
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
