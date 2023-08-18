Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 950EA7809EA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 12:22:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2138A84050;
	Fri, 18 Aug 2023 10:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2138A84050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692354135;
	bh=Fo4B0+vOeT3yHPn9+V7xQFMq6fetYMBkUIYMw+QdCMw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pWinboDizCyIzfusOhXUG/sJOsn1MYrcFK3evphNe7qgYZ63Cus12YPkRgKHQAaNC
	 HY5x/UCe9fOgoYNLvfefKBfZMD7IqG0LWWSY39s1QTwHhyPbB4bOXFOrymeAGEG65E
	 m5NyIgM31/coGyaX0CCgM1TyFI9/je2YboipY42Yu/FI0bRLX2dNcN+zI4QfA/3Zdi
	 D23w3aevR2uxdBUWiRqJQqA4L4AgNfOsLGIXQlSm+hpTIxjQq/aZS/pAo8H0FW9bPt
	 XP9S5KGYYJPraXaATnDAljhNjsB8y89BNM1mL3PUorPHas44oXFtWkRuojLTstUAKQ
	 MKH6WEIoQxWxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_FDq12ZPjCQ; Fri, 18 Aug 2023 10:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E5B18403F;
	Fri, 18 Aug 2023 10:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E5B18403F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 478CA1BF364
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29ABF8404F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29ABF8404F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94LzgNnwWs17 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 10:22:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BFA680BB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BFA680BB8
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="353370512"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="353370512"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 03:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="858628956"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="858628956"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 18 Aug 2023 03:22:05 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 03:22:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 03:22:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 03:21:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmrIPPgKInK5h8+bY8/39qEZN8xTbDLGCsRPGqFw/4qTY8zQOWHzEbDuuiUraJ9hOFlbeJVp0VXw0GcdXmUKL9Fk8HYXtYLpN7XxlrFE15EkMb/YXaWgqQijhShWlOzELFx++nkOPuSdh3HGc219ZS8McV/A0I33DNZTWfX3ohzgzLF1ILKkBoP3FGTYLuagXQdsL7onfm5vvqzjGm/k+lwYyOqNyU2DRAzuK4iCbuFLYJ4WQl9r9jSl73Dr+L+XPo6ZinDCuk5u8TwcL9wKHH8ffRkiBdBCL/GTMzBbaoBjDGXFpd1C6vmNAOMi0ZAggiP8L27NaW+ekOB5Sh2USg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwT6u8W874MaCfgr86Ld/d27BPh5e2tzE0GELGS0LvA=;
 b=AQublDrb2Yw8e2cMZtME5t0W6gQ+fIMarqgmgeIe1PvbFiIadWdB6P1PoFX6cqgRO/N7AOKd+dHpBDqmpy5muu6Dnx71haULLw50BR4uWPETUe1/OLwhVBZkTpKpEXtYktJcMSHsoHYfghmhxtwspee4+zRIbXIdd7+Ot4CnHco94MUtTxaCpJmpUZgGdvTqlCrLFbkYSJfsAzSdsCaRiS/p6IBvlGzwzBTXqaZ5tPSKzAdv8ZvM9MAiIkb/xwUSDyR56Z4w49sjBGl0Or5jF5r/ku1pXXyslA9Kycw3yPBNhl+gf8gbYHHy/nWqcOvlirCGtVpeqNtPacC52Wuf4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 10:21:51 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac%6]) with mapi id 15.20.6652.028; Fri, 18 Aug 2023
 10:21:51 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential NULL
 pointer dereferencing of pf->vf i40e_sync_vsi_filters()
Thread-Index: AQHZzDZOfgzK5zMWgU2xRdhqgwucx6/v4xeg
Date: Fri, 18 Aug 2023 10:21:51 +0000
Message-ID: <BL0PR11MB35213E3539CAB1AE0D3D709C8F1BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230811092822.1706691-1-andrii.staikov@intel.com>
In-Reply-To: <20230811092822.1706691-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS0PR11MB7262:EE_
x-ms-office365-filtering-correlation-id: 8cbdb928-0d5a-497a-cdc6-08db9fd4f061
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lUhP1KHC3DZP7SdUr2kwr/UkIZui1c4+2YnlMcYh50yxCkmHrBuQYDRnuplYlK1TiquyzNEkTinajczr/R17a4AUzTWVlmBPNBgsdta7/T7YtGz73OzpKobt7k2TuIMAx87HEFRgp7chYDczjW/JWyPBWxC48hcQzFD/SkPeMTuQFz/hqOO9NMTs2ZCDn+rLi0RAfN81p0CnN63F43PriIO2d2ugAZiPAHPlzv8vNzXiuYRuHgh02UajmJohLlDpKQQTMWgfgWf0pNEgbymz8nd7uj9cgIGMWsoV7Hb/w5LggAFGv6haNQEhVhTXggZ1jBc1sNwpLURvSJrAwR7nEk8RMQ5uOLZhE02QLY6sdXXApIUq+RC3+vXmdMMyVVQSk8v0boUcmUioucgMYZYNV/uBUdXbDVOHnwNFy7QQGbFK/zxvFjtVspdUV606LleKI7FytTpR4g+4QkXKhGGWUZlEWzPxyi6l5zOIGrsHllWkh9e4BPQuBMoY0UNVih3ZPhCpYbOyCRYxDModtOOgXmI/aIJSxM4TXms/6Z5A2BT18ey9wc5AGCRFhrocS39kj+ZVhhZdh7YO3uzlCdG2KvC9WYOstJOCBleyi0bwOT1jjQsO7gQs8o3CpLqDQu4B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199024)(186009)(1800799009)(86362001)(33656002)(82960400001)(122000001)(38070700005)(38100700002)(55016003)(478600001)(5660300002)(107886003)(110136005)(52536014)(76116006)(6506007)(66446008)(66476007)(66556008)(66946007)(7696005)(71200400001)(26005)(54906003)(316002)(53546011)(64756008)(4326008)(9686003)(8676002)(8936002)(41300700001)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?KxPdpdDlqxabS/Dc3GZp1Qb2Org8I2Feu8BMmMYI+LpyFH3XlCxztqkxhu?=
 =?iso-8859-2?Q?OXKm0VZGtYpdVMv3Z5Rmma7qz4JgIm2vc3omn+8uqE8NYGvD8YHKe/hECW?=
 =?iso-8859-2?Q?zwbJMgwtIuU2hBq821CT84zZLTB0shd4Y8Fl3I5fDsx6pkSqEYnVvNUUDF?=
 =?iso-8859-2?Q?7TI00FcAvX/bYwerSthfEh3Rygvc/tRL6vR+CFKZINxb5jmTL3v1ruSBjc?=
 =?iso-8859-2?Q?5+Kub17BSaoWML24wm4kXdqd3TSzKRYMEZBlXKx8VMbxsjysTWwTitSs+3?=
 =?iso-8859-2?Q?zAEchL+tLImgETbC+iphOg0Xx6dotnX7HL67IYvZbMtbFcVzmbP0pGgpYd?=
 =?iso-8859-2?Q?LHDp+sQbDYqc+kQ5vzAcxgGm6vUmvBG6LS/CzqHP8VmfF4rNQFVjZOZvog?=
 =?iso-8859-2?Q?wQyG0VMT3f+JC3t8o/53wurmSY00YzH9A0GXE2faSZpIcR3W8eYyxWYUaM?=
 =?iso-8859-2?Q?/gNT5MaryemVdGV9BKEiJ0keED+40zYOhXdLr+F6ZeWZ6EqO3MkJzApIdU?=
 =?iso-8859-2?Q?W9XL8MBOnw1dQyjU2mI3g3QuVzKIPwSjvAbjNL2ZZOxRuSIVcWQGGODht9?=
 =?iso-8859-2?Q?9j1XCntkllpMtCr+9LFmL3GgAYLQ5cOZjsYtgDzbC200hfeWXL9BAVMqif?=
 =?iso-8859-2?Q?7df2j/Q5gjUj7nUl2n7EN/93mD+SNQ9JV3EYfjZ2SqqnDVVUHDmM08VcGg?=
 =?iso-8859-2?Q?p42cb0Psu/biAtUVrWRXY0CvpSYdXELWd/JZTSV9atNUEk4mdSsJIITIlh?=
 =?iso-8859-2?Q?NlDUZ5rdc/7zZbIsQqPeqLBMH5VNs625hYgSuA3U5+wumy5jpC2RKZWfwE?=
 =?iso-8859-2?Q?wq+0CGW8I3B0Q72Rq/bZ6nqVlw4ciuBxhVJOQCL9XQ+Z6VJv9wg89lhP0v?=
 =?iso-8859-2?Q?8SbO0U5S4M+piHkerBEGUo09Gi0jTkP4Tvt0JB0bvRTDSrjOa0cr3BqfaT?=
 =?iso-8859-2?Q?p+NCdQ41PK98+hpwwIJGbqDpGhjz7fSkGd0ZjSFfeOwG9groehiPM5xnpy?=
 =?iso-8859-2?Q?cFkXzCZxpGs/1x0zLh8lIpRIygHQ5YtIG4l95b6UOnOyBXhZGUeBcTh5OL?=
 =?iso-8859-2?Q?s9BrfXfYRIJo8/hzO+GiAg0VYxEazdrGo71u+E1LPjwJxjSEfp41Z9C4YH?=
 =?iso-8859-2?Q?i+vW3UKvckoy5E1C0rvTyivl8LGknqWrxdXBGk3qGE0iPvJ4JZbAJAc1C4?=
 =?iso-8859-2?Q?nAG55AmepCCM5N4bXNf/YCD2uQ2GMR1egTZPJjiCa+xDBKp0OZ6bY+2sR6?=
 =?iso-8859-2?Q?aPrEVs9OdwoGyoeWXi6KK0saEvlroKUH03qssuGPZqAsw/x8LRN4cqAA/t?=
 =?iso-8859-2?Q?Prelr42qTHi9KwwcOsfLwmx/gsvJzrYhk1VVk77NOW/qR6XcnMX+X0Ul6C?=
 =?iso-8859-2?Q?dzVgzFkS24OIarKOZnEKIJmelNYkU5a7jHQPlTG7Uuxd1y5pwfcyecLeg7?=
 =?iso-8859-2?Q?2LyM+ZJPo4OgRQlqCYuo0pG3+6C6gjftGG4O3mvMm6CklYYnT2LXGOuUAr?=
 =?iso-8859-2?Q?nt8vazZgc1cmHQ7x50m5Q3ezPnwmN1KxyrizMgJ5G6Bv88FSsG4GCvefnK?=
 =?iso-8859-2?Q?njJnfLcPk/HVAOp8ihONnJo48qqgZhdL20suD9HZdlYffretlLEfiFel6i?=
 =?iso-8859-2?Q?J0C+o9OoncgGBQ6xBLSioNeLEkAW5x0+J+n4QELTvjHM14AqcQD0BLgw?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cbdb928-0d5a-497a-cdc6-08db9fd4f061
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2023 10:21:51.7628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0NSBdxnR41ApO+nMlWH4VQ2T9gCtCjtmsHML6VjXy//xM8V0/GL2Grf68YBO9d7wE80sEgrldDWzXMo6lRewUvNVc4UgY5HcDUGqvRg7B2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692354126; x=1723890126;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+5RfXFgFvMYeghr71rUpSAQkawwPfNuG7lmUrpYW6Ew=;
 b=L3kMT0ef7rpok9w7A7GSTaV/mSP1XOBi4VOiekQynv1/9KjZlNgVKN0C
 BcqQmb2v+mjZECct2xtSZpiqkaB44TZ+ea+UqtoWOLj3J5/8bFn8Cm6IY
 kHrslPqr5r5yzRRwohXv6lKDr2p9uNDvGJGkC558b+9An5VJG0x3Tu3BS
 srZAec3jy+mKXycJgUZCdKOvyCuw4faHnVt+kqIGXpuroskj+wW7J2Liz
 elHoL7cmtvYFeqXNkh5nWjOHpA8j9gGMMttBmXZkLhLz8G9QskHVmADDY
 OXgW+Sj95lAwVAPAmBauybP6f7fGc7lPEirC81Vl0LJeRE4+89Zaopd/J
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L3kMT0ef
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential NULL
 pointer dereferencing of pf->vf i40e_sync_vsi_filters()
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andrii Staikov
> Sent: pi=B1tek, 11 sierpnia 2023 11:28
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Staikov, Andrii
> <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential NULL po=
inter
> dereferencing of pf->vf i40e_sync_vsi_filters()
> =

> Add check for pf->vf not being NULL before dereferencing
> pf->vf[vsi->vf_id] in updating VSI filter sync.
> Add a similar check before dereferencing !pf->vf[vsi->vf_id].trusted in t=
he
> condition for clearing promisc mode bit.
> =

> Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2: Changed title and commit message.
> v2 -> v3: Fixed mistakes in the commit message.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..a86bfa3bba74 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
