Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 179A262864E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:59:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC00404EE;
	Mon, 14 Nov 2022 16:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CC00404EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668445148;
	bh=g106bscOEstyEEQpKMD3uyQEQnESd23wbJElD070qwk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HuSoeWbzlt9XE26Grhb11LUDljgaXV8yV3ut9Y3m0zQhuGFGytaAR4U1jxEg+lIlH
	 Xdt0FMVpMdQTABWy8hZ2/2TWtEcR0TwZPmg9o8ZatiEDBlMfCoDo3JFjyOYmdZ+Pf4
	 jJKftNTmYWPuNOnMooSFnLa6dxebKdS9boAKzSvvRJJqUHkA0NVLapHiIgjCvrrH3a
	 0WA1yGdf0a7bBFGWlvv32o0ocFlpuYn5vby9y8W+5dnB3eQidDzDRnbPLOUsFX1XWK
	 2JHz+utXRHUoznpWmC1c8SdD6zLlb8l2mUXTZO494j/U38ZAbdZMJ3xFrKnGMkuEXk
	 O4KMq7fHv1O0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nESCQ_QdXFTJ; Mon, 14 Nov 2022 16:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3B3C40865;
	Mon, 14 Nov 2022 16:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3B3C40865
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6751BF263
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41DC181457
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41DC181457
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtgKg8mm-Jir for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 16:59:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC1F48144C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC1F48144C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:59:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="295384034"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="295384034"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 08:59:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="813329708"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="813329708"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 Nov 2022 08:58:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 08:58:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 08:58:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 08:58:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 08:58:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCidic4bI4vI7X1rsCsN43k4BNk5o03c4HVjWIBaIE2ryjpi5pQ4olaT1Tue+HIPbknL7uLcZCft9DMF7+lhkHWwgvnGQBRff0xKOJyFZzzuzHq4lmr8CQYzHOD6cm4kuo5eBFfQpQW7WMLZJWOrpFyZkvryw5f0ShUjtQpXR2l1J/SULdHcKwUiRhO5jg5sHCDIG+GB11HEVq2161zKLnuJ4MJ/PtyhI3p5vAz9TPi1NNvPNs2zh2rM837si52Av+JN42mFit6wnA9g3y+ccQJCzyCL/2j8RUk+AzD96p4gVlO9sDf6mORZpj0/anPDIyC/4Dr696oSBVFLH7Eq9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9iNyoapFlO0nSBaiykOKl8Kt/7IlR+odDeUSjsdQFvY=;
 b=HG5Hr4TcdcZ3UZuvzIUm1iKJPjkKxALji5fsHKbrFwFYJLNuRmIBv9tj1MBswj6HGwuH6skMdDTuDNUk1qoaUmuuPvJmH2MUw+TmcvDS4wZDrgnn2BQW5lyauTsc5BHBSjyMWeUhpP4+5kembxAeWToaSHxKfYny+nrkYzn004tWWl22P+Rgp683WWCCoEoRY7SNJFmk+VZq+gm4SFrfNiw6izLat2/xPi0RsvUoXEYr7MN/tg/EHGle4/0k6w0D9DRk13Sx0+rNSa0oatV45rCVxwho1cK7UKyBEhZgbqjw/dfCeWSTvn/BOmj+4hIoVwH/GXGtY7qd/EPfYnz7UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5309.namprd11.prod.outlook.com (2603:10b6:5:390::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 16:58:57 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28%3]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 16:58:57 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Leon Romanovsky
 <leon@kernel.org>, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Thread-Topic: [PATCH net-next 00/13] resource management using devlink reload
Thread-Index: AQHY+CqyTgSbGNoSLUuYMvV8aTzrpq4+aFiAgAAjkYCAABfdQA==
Date: Mon, 14 Nov 2022 16:58:57 +0000
Message-ID: <CO1PR11MB5089C5B17D186C6FF17C5599D6059@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal> <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
In-Reply-To: <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM4PR11MB5309:EE_
x-ms-office365-filtering-correlation-id: dec33f2a-3e30-44fa-d8b7-08dac66184eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PSuNnxQcCMW9wS40I3uq2pYmlhUeqB/YAs9lel++lp8V5A1lGQcxCr6OvX2b29WdqVur7hTZRWJgQOaDB1xQyZXMlNqtEEGU9iepED+/tRDihNRa29bKPqHxqL/Gd3u9caK09QcElC7hkUImU7FScocvikeV7/uzhR1o0x7mOZP/087vl+WKg+/UoXt3rxSJxY0OKmOavmJ490bWjm9R6Gneu2cHovIkMVl+7IX1XVRCAIAbAqrnO/XNFlqZ82+t5fU24CNXMK4HE+Pst2ri88RYK0Dfk+c4GzgSdmIyUqlU9yNygIQTdIbRx6JQWychhnhpct2C+r3rg4YW/dSZDzPpD98lVf0KpThMDgpMAwfEMleh2EqM38JiehLgxDLXdkBnvKeqjNio+o3HdnH+1CtdhetLfv+9Zgk/opXPbFVgWBmB/38zal18H4Olqt9832g4OQZ/puMvIOr9mjkGHv+JKnLcEDyY97uq3nTV9ws9Abyamy86eJ2fKd7lkP8jcwDtURzfS9DZzH/scX1n+BZF584pVOnK+Hd82ws+Pnm1QxXUJhp+SP1U7xxfVieoTtay/1v+Zz1DteDO1trzfqJx5WWXjYN2WeGp8z1gYYfmOKKVbgpF2giC/V/cLEbU4T3uuLQdC2W38aK7DInL3olfzXFRanwPtNTQ3foe5fDttEr/fCh1VSX1s3li/bEFjDar/+sG8lWoiHYmtuF7OE4w3TgfkvEBRgjW05TteIhnJ/BJwapQCfDc0+2c0HEqUoAAwV2sqJ/4EkJDiWZ9/iStqPvqUepDWUMTZX8/3xA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(396003)(39860400002)(376002)(451199015)(55016003)(9686003)(83380400001)(82960400001)(26005)(122000001)(38100700002)(86362001)(8936002)(52536014)(41300700001)(5660300002)(186003)(2906002)(33656002)(478600001)(71200400001)(53546011)(966005)(38070700005)(7696005)(316002)(110136005)(54906003)(76116006)(66476007)(6506007)(64756008)(4326008)(66946007)(66556008)(66446008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REI3UjhrcHFEVGxPWm5IdXVzSXp0MHJCcDBPUURTdEFnZHJTUVowcmU0RS9E?=
 =?utf-8?B?dVczVFU4Wmxha1dVMjZTM3djWG1EK2k1OWdRZUNjNlY3NmdaUDBJbWh1ZW9M?=
 =?utf-8?B?YjVrT3Yzc05NNysvclptZVB2Wjl4WTFmOU9oYkFkdjV4d2FKRGFzTjkwUEVY?=
 =?utf-8?B?aG5JL1hCaWw5b3Fhb1dhTzhYRlRpeGwyYUFwMHErZU5zSDU4TkVoMzgrNy9T?=
 =?utf-8?B?c1JDUkdDZmtULys2MXIwaGdQQ0k0Wmwwdnp6WUdreWFCdytNd3hTMnUxcVlv?=
 =?utf-8?B?MFlJaERzRzhBejlrYnU3YytWb082YXlkb2pSMnVsVDdNUlphd3hrYWJiajhS?=
 =?utf-8?B?bElHc0NLUE4yc0lvaDhmMFJRYmZsRTdnNStWUGhBUkZtUy9tMEdOSGJUK01N?=
 =?utf-8?B?dS93SVlEMjJpT25VNDFFTnExazdocWJPalcrbGRhWEtYeUc3T2krcFREUzZr?=
 =?utf-8?B?dTRJZXVrZjB1V0dZSWV3dVNkM0ord2FzRzZBVTRSSlVJRkJ5Nk0vTnREaHFS?=
 =?utf-8?B?WkFZRllabGhNQ0V3Mk1GcjNobEQ3WERTUUo2V3NpS3Jpd0JueDBoTkZOWE9T?=
 =?utf-8?B?TEZ1eXBxcVJRNEhXYlBzcGgwVUNqREV2eFBtaFUramRtZTFHaGE2b09nTkVV?=
 =?utf-8?B?UXVlNUpFNGcwcHlYNW9sRzhKYjRwdXdEeVp3U0ZKcE5wdGoyeCtxNGVIS1VD?=
 =?utf-8?B?aisvSXFyMVlQR2gvWGZjenZ4ejM5OHJkL0RmUE9pYTdTWTQ1ZC94V3M4TkRB?=
 =?utf-8?B?RnkxSjU4cFBicjlJcTJ5SWxTRVRmQlNXbFRIclJsV20rZ2hIZ2ttTjZVam04?=
 =?utf-8?B?UUloQ1l4cjc3OW1MVG5aSzBVVE1ZdDlmWHAxamJBUEFSTWVkRzRtUUdoSGVY?=
 =?utf-8?B?THQ1OEFPQU5ySUxoRmZKa3pJNmgxVG8wMUdjcG5RV1BSUlN0N1ViSGRYcUVS?=
 =?utf-8?B?ZXRUSGROWFY2bUlhRThtYkRBSFZUa3JvbU5NRW8xOGhhNkhzMm96czFMZUdX?=
 =?utf-8?B?WnNRTm1JTDAramF2c3JJZzNyMCtMTVZHMnNXU3dHcHVwanI1NjJaYVpyUk1Q?=
 =?utf-8?B?Mi91eGd6RERsakMyaG16b1Y4c1BHQTRjQjlBNjMyaUFXczl1RXRJbG5OLzgz?=
 =?utf-8?B?aEZaRGQvbjVBcTdmTVhmSTRNODAzbEJzbEI3MGpTNmFVUHBtL3hwNkU2Qmoy?=
 =?utf-8?B?TXZOd3krUEtMZ2pKWkJwRkcvNm5WT1dpOHU2dDVNcTlMVkZzUTBNa3J0ZXhU?=
 =?utf-8?B?RTdjK3Y1YUllZlYwRzJGOFMwSVVyV2dobU1hZngrSU04WlIrcC9XTU1kRGNw?=
 =?utf-8?B?WGNtc2lQcG5aSzNEdVRiNEd6dzRHU0JHaEorck5wSjJuUDhqSVFKaS9LZzY5?=
 =?utf-8?B?Q2E4aEFxRjFMdkNQK2hUbnNySUYyWjAzZjAvYldaMFFyMlEyakUyZ2NLelpx?=
 =?utf-8?B?QU84YWhBeFdoT2E2eTFWazZIS2hRelpMeXdHakdYL0VyWDdOZ0FyQ2xtZ2tG?=
 =?utf-8?B?QWpXdzd6R1J5OHhWaC81SGlIdHZLbnhGUzVBdGVhWHR5QVhHVkE2Ti9Bak5W?=
 =?utf-8?B?N3lUSWJxNU90a2kwY2NaSXYxM2hubUVucGFESkRzYjFha0NwTlIrdWF0Mkoy?=
 =?utf-8?B?Q3VhTVZVeUV0b05JVHlReXNabTBScEZXdnJwWkVtR0docGFob3FDdks1RU1N?=
 =?utf-8?B?RGg4dFBoMnIzT0t6R252dVFhSXlDRWJaaThzdHpPNCtuZDFWa1RDYVpHTlhp?=
 =?utf-8?B?WHVRcU1Sa0tUQVA4WFNIRzBzVU14MnV2NU82NjZFTUlQSVQyY043VkM3Rytn?=
 =?utf-8?B?VTlOY0QzU3ZxWUFkVUJOdy9BZ3F6WDBJdXJQajQ4QXVud0F3QnJsSHdialF4?=
 =?utf-8?B?UGhEOS9qR3hhaEtaUldGcXY1R1d2RThoaGMvVFhtenVNZDdUYXZrQ1AxdmEx?=
 =?utf-8?B?ZzJXY0ZEU3FxeTR3U1ZCMlJCRGpsVksxcUpxSzBHMDFQT3pZM0VjTkUrYmZ0?=
 =?utf-8?B?VHErZnBiSVhlRTBEM2hhM3JsemkxbnBodXVpYUhZMmxPN2NKN2ZrVUQ1NXhz?=
 =?utf-8?B?c240VHhzeHh4SFRvOXFib3JYV1NESm1EZG9weStVaXppaEZ1cW9oOWxrTWVZ?=
 =?utf-8?Q?ellu0q75rLDV0Cw9E54ndbW53?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dec33f2a-3e30-44fa-d8b7-08dac66184eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 16:58:57.0210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yhi19VUUo2Zn1H02KifdUAHrenClXNzTjlfwpOmyn5KCpqqGnn1UH/sIMsSUUWoKIVu6tgOG2lQK8G88vaE9GXAYggwI2XZulIV44RlrZWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5309
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668445140; x=1699981140;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9iNyoapFlO0nSBaiykOKl8Kt/7IlR+odDeUSjsdQFvY=;
 b=EaV2PP26TpXIu69BH5fDDhMX4OU1G7HAK+zsAzWmJjZp9z0hb6+DdPxo
 cnB7KSSV5liGa6Y5rii107sJLNR73bHl/E8XYrAbmR1YtsCGjzQHQ2Vql
 SOqohP+qRLhhuB8L2ZAuj0Hxn2ocSA0DIuxA3vbUssOlunDQLaUdkUf4z
 +D2xEUOd0ZI643axICg4rNpqUxaC6VDZg8fQlURboOxv62Mn8wlJC1cXq
 7w0yjUvYAZdLJElaObIuX9d479+5wFiuPMhpfrgEHnv0VDIYR0mdqwpSk
 9HnRC9yHzm26R0JoEqy7V+zy++O8FWyB6Nz8wOuLvlOsYkhqxrdaXSMyl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EaV2PP26
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Samudrala, Sridhar <sridhar.samudrala@intel.com>
> Sent: Monday, November 14, 2022 7:31 AM
> To: Leon Romanovsky <leon@kernel.org>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Cc: netdev@vger.kernel.org; davem@davemloft.net; kuba@kernel.org;
> pabeni@redhat.com; edumazet@google.com; intel-wired-lan@lists.osuosl.org;
> jiri@nvidia.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Lobakin,
> Alexandr <alexandr.lobakin@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>;
> Saleem, Shiraz <shiraz.saleem@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Ismail, Mustafa <mustafa.ismail@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Ertman,
> David M <david.m.ertman@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>
> Subject: Re: [PATCH net-next 00/13] resource management using devlink reload
> 
> On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> >> Currently the default value for number of PF vectors is number of CPUs.
> >> Because of that there are cases when all vectors are used for PF
> >> and user can't create more VFs. It is hard to set default number of
> >> CPUs right for all different use cases. Instead allow user to choose
> >> how many vectors should be used for various features. After implementing
> >> subdevices this mechanism will be also used to set number of vectors
> >> for subfunctions.
> >>
> >> The idea is to set vectors for eth or VFs using devlink resource API.
> >> New value of vectors will be used after devlink reinit. Example
> >> commands:
> >> $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> >> $ sudo devlink dev reload pci/0000:31:00.0
> >> After reload driver will work with 16 vectors used for eth instead of
> >> num_cpus.
> > By saying "vectors", are you referring to MSI-X vectors?
> > If yes, you have specific interface for that.
> > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> 
> This patch series is exposing a resources API to split the device level MSI-X vectors
> across the different functions supported by the device (PF, RDMA, SR-IOV VFs
> and
> in future subfunctions). Today this is all hidden in a policy implemented within
> the PF driver.
> 
> The patch you are referring to seems to be providing an interface to change the
> msix count for a particular VF. This patch is providing a interface to set the total
> msix count for all the possible VFs from the available device level pool of
> msix-vectors.
> 

It looks like we should implement both: resources to configure the "pool" of available vectors for each VF, and the sysfs VF Interface to allow configuring individual VFs.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
