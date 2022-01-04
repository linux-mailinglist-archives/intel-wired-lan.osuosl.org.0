Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED4D483F38
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 10:31:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D46E960B72;
	Tue,  4 Jan 2022 09:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sZ32KfDmyYY2; Tue,  4 Jan 2022 09:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDEAD60B90;
	Tue,  4 Jan 2022 09:31:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C79D1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 09:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 23DC7404A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 09:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxMZdQUO_wQI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 09:31:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50092400E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 09:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641288686; x=1672824686;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0DQerkzjSxgMImTNz1q7ZwQrW3wyjBFLFNhXT/48uUE=;
 b=lL1EN+tFn7WJ9fQ14WXRjcF4Q3c7bNv8e28i8Iif6MpWY2m3MQ6uZCWU
 I3dMYSKoJ5NuetceKcQ4L0Pp2g71m/GGpFYyFgdP9k/t+x1PB3stnhgqT
 uoYwfO2m8KX8fK0UWyeVMu0j/UYu65Uf9RU89Zjlp9FgBqSRZl1Uv5aG0
 nG7/jQ1affgb9EbPQSAGbQSjp8lsvTrn+XB7AJ0dZ3U6JdE1DVdIGkswm
 ZM+JC+x6SKobMAGcAUkoONIRfn27AHtIO0vhIeHie4BdEU/93XjjZBoFL
 WSNHwMR9rc0eFuCJmvvkIA3JU6dfpLTgm0g+T7hQG17ECIyY8W7lDzdX9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="302944894"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="302944894"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 01:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="617508528"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2022 01:31:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 01:31:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 01:31:01 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 01:30:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EW0KeG1vboZiV5uHpezUBHrsxxNwpi7nbltM7H5F9QWxnHBybdtR+Ia/7LXNFc+7+Dzu0kE+oTDVDTUOjipUO20sWzKihIRtkeOl78B2aZn1SeZ7FVEW6I4LZTYNj69LJan0elHHfSni5LR1PmKwXFJaFAte8gW8QJhWXbJUnjA5dRWsd4//DU9A4yC2nkG3Big4KDVMvOJ6zn+FSbL+Q/05iGz3X68lvIF484ceXKdmruyEKDbuXjPR9Ovlvsmqk4uAwc6ltzvu3aMDYTaD9V84eqN7M9xwFqGMZUbubB5zP7OwfVVOcetffYATGFhL6ZlrYbTuXz/ZASy4RRDRYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeYsYPJALoqlbBAT0mi7eq8MOvU/B/5IjeThK9OvK50=;
 b=fo5WYiSfALHwT/9dbzLio5QjqU4ieTEWNfliRwpa1WeZEqMcba/hDODXlfxy9cDfllWFpWqYe1eDQTN4WX2p8bmH7rPrUK4oS7cdE/zhlp2Vm1Lh6Ya1z9BbqI2XO62hbI0amRE7fMmQYTCUqp9dPoKYHZ4pGWVLiy+HLMBSYkMbRYkl3TEr1loNDMWnwSbLTPQFMWAHJ+cmlLHjhRkrFxlBo0xyFOg76TJk2/rRrRaT/GKHOv/lbO1tCkddTK75cBf56BbNhYzxIB9E+2zB63ivRqeWjgeT34BBj9PPm2t3+UU81FDoCHRikk1zzXjCmRShz0Cs8Yyx8Cb2DPctdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4995.namprd11.prod.outlook.com (2603:10b6:303:9f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.14; Tue, 4 Jan
 2022 09:30:55 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::42f:73e3:ecb1:3b75]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::42f:73e3:ecb1:3b75%8]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 09:30:55 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: replay advanced
 rules after reset
Thread-Index: AQHXylXf8sVjS78IA0yHr+vOuXZmJaxTBsgg
Date: Tue, 4 Jan 2022 09:30:55 +0000
Message-ID: <MW3PR11MB4554E630F57284C934195D119C4A9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211026103840.11455-1-wojciech.drewek@intel.com>
 <20211026103840.11455-2-wojciech.drewek@intel.com>
In-Reply-To: <20211026103840.11455-2-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77e2a9d5-b025-4f5a-7065-08d9cf64e8b8
x-ms-traffictypediagnostic: CO1PR11MB4995:EE_
x-microsoft-antispam-prvs: <CO1PR11MB499519392BDB3BE624E1FC449C4A9@CO1PR11MB4995.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I31QSEPwIvyVdKMZBRzKz55hQWQXvKPmPDshtPkSHCKAAT5Opc+P1jjGDUt4GLfRJw0s841xLU12Dfmhagn42v34aBC9tJr5RgVSOL7aLWVpnTUjMQf/IEQe0w23MqzPpbvetLeXuyf/0BDYXhwaixASkl0LM4J/N/PSp0HMPmRJVJZkY10MYqK6icgrERIotJpGQArZvSfRwkrztUpEG0b80xwQWrxjc9E4by1SXjWy84SaNT69Pdug/d/q1fgVHOeZI4Xs1JtOWnHsUXBnhzj89JRU1JYe3fayLIA4d7npZP05JRqHeFO0yeTYaNSO38fK0dFIRvydr7RK/YoEHsTtz5NRd6gSzYB1ycF4f3yoXCjeUoT6NJXbpjUTC8iMCO/dOY42d9qgXK3wUwVvoSdF8bGr0pe5rk7+hEsE849hJjQZdOks0P0iSqKy+Ec9KU8f/JDmlkLgwvk6uKyNBNTgjbEhMWr03OomWlzWixPWQzQiplLBlxOmNA5epklZaLi9VZ3aftbFS3lCoh2IFlo/HOs1F/JecWAZ5Z/eulPOsW+gvcylJ5PNYJ/BW7MtgpkBqH4rbr4t6scd4u7IMmjNY54WAdeVYqpJ9R1IMzwZ6Gjck1BweURTkPqepiLOmcE4o6Z0crIQ3BjqA/079I9yHHTbUSKZsR4I40uuGz3IZcDiGEL58IOCbcjtmyMiCNf2n6wpnV4zWzCawU11qg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(8676002)(8936002)(4744005)(9686003)(66446008)(2906002)(71200400001)(64756008)(82960400001)(66946007)(122000001)(66556008)(26005)(33656002)(66476007)(86362001)(76116006)(55016003)(38070700005)(508600001)(110136005)(83380400001)(5660300002)(52536014)(186003)(7696005)(6506007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JARCzfNKNJs/1eJnYiveecjRNQErL+ducj+x6TPs2W5KgOHHzvtdU/zMxYQj?=
 =?us-ascii?Q?dEUEpYMSn6DbOYaKua4Lcj49vqM+yWid2PA+qHqSkSBJAXcijo9qkcdqX0dL?=
 =?us-ascii?Q?ueGJP0qZRePYSVp4Xud26A4Z0d1wiM03YmmJC6MiDa6f49+pTNA8UNKAZdMx?=
 =?us-ascii?Q?HWrWAi7kAWzaxAGvQ5k7o2b/V+V2zHicFJzNkrkqrhZ6kmabYRsBaua9Gr2Z?=
 =?us-ascii?Q?3WAmvIz5hEhq8mYpA//BdmwjhKmrO8dIfGiVc0Y/NLKoCiUenqAfarlNmaZt?=
 =?us-ascii?Q?coeVHvz9309tvX2BtJJ/RzVTTvlzsyhk72sduBoIsrL4nFE4ItMtV7ydZOlZ?=
 =?us-ascii?Q?hoOkiQR1LQa601vRQACmhtBe6m0AOadbNVD2dgBnJNDyKCaTSh1lMdwyOE9O?=
 =?us-ascii?Q?9JBqgEdh+Z83NN+zRO2g5ZQCWz3Yn6f61dgFk4reNflk4L/UrY3hK+oMjlzO?=
 =?us-ascii?Q?l0C1a8ChKHJFjwfqyw5IVd0ByzdmUEHVZV6fv8oX5qE35SJ/HnYwmCBV8sh2?=
 =?us-ascii?Q?Sv7pOe4gqv+Bb0vpbS3mxF7Z0kz7DwxWfkjHFgTOdl7iMbegfj3+JJ/5oT7d?=
 =?us-ascii?Q?WsdbfIgG84QAnRrllvj5CorE+to8XSgtdW5LOCKqklqMHswMbNjxomoDeb0O?=
 =?us-ascii?Q?2/YvvEyCDQueDQgOONgBYcuT0Akz1mwO/uh6U8JnH/XkQuUvw8RiumbejX4N?=
 =?us-ascii?Q?wyJ8ULVbeJTgvyt/kVg6TJilwgKX+zNzgwfSbx9sokc2+yl59KqWnoUj+iok?=
 =?us-ascii?Q?GJxxFVloLpIX/SfFOAyREVNy1BHs0+HCOAPe2B/pi7mPnJXgFNMYG0xOf/wO?=
 =?us-ascii?Q?9W7CU89KE2ibtIg0CjFdZrr/B4Zo8QXTSIdsqiGnKwHBImBs1mQnT/wX+q6S?=
 =?us-ascii?Q?wndUCow4sSn9Jx+tBVgMqgnD0mN3kS5VIEp8xq6C5CsqhQZhXIyH4ACQLXcM?=
 =?us-ascii?Q?rCSNUe9hGwAcFI+bW3dxi9bLh2QmS8dTOWuv4vJ3lnQFh+IbVefHRF5yngk5?=
 =?us-ascii?Q?1Islipw7Dc08Phc/WZm7jU6Ip1buKfyyXkVdVcPUaaAG/3sAQG0V/5HtLIpm?=
 =?us-ascii?Q?OxnTPL6uRpKmHdsV6c6XZuehsIgCLl0WQMAnhDJ0LBfsuVj52zYWss8YuSmo?=
 =?us-ascii?Q?AjnDveWREZBCyclAVn92D35lb8rWsXr1hc8gpGjQUPFFCckV/PeI3X37xPUJ?=
 =?us-ascii?Q?ze4lfEdyc66PjFMpdjzVuVGup6vI8A5fXF8uDmKZrMmXKZX6iSOrKFA/vCbU?=
 =?us-ascii?Q?EzWkG8etnbp0wFWrchrtJ2KZdAZw7Kb7H6kOOSHRdvcxKb/Q1iTfvaykaayK?=
 =?us-ascii?Q?4ZFtthUB3y+wlLJKSnl6WrZYPyAsgUWER1S11Oqox8GByW6/butLA7M+3d4U?=
 =?us-ascii?Q?xrZGo2yZ0beJoZ+sg3sUrCHne2WldOeZz3S8y30fPm0v6Metnqaw+dMCx8B6?=
 =?us-ascii?Q?t9I3XBms77iWQ6w4em+imFHrU2FyibcnF2FN0tNHRD41X710tpYgTb8Imx5H?=
 =?us-ascii?Q?a0cO76J/P6Ysl7fAEVdCW4nMNorz4JGJ8M0Xw8k+d0Xr4uOp06QkZT7vJayW?=
 =?us-ascii?Q?FAeUmvhqRekHvk49DKZ3cAad79AIiZE7jmsJo15mQhQUYn/wNb7q/BTEA9JF?=
 =?us-ascii?Q?2IHG02qdLF8WtqsK8TQWJqrka8cmRCvxGUQ6d+aw0O9fSupRo88Qq4TlsAtl?=
 =?us-ascii?Q?+eNP0Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77e2a9d5-b025-4f5a-7065-08d9cf64e8b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 09:30:55.7404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gTERKLAi0nhbREtTOFuJG2VTaTJjsallcaXSYBp88JSmz7Lriw0c4rk0Mo0D9aYGoqT8w2OKXvhTwV7/K6h3pQa4g0st2wEbfSQrEoAFkFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: replay advanced
 rules after reset
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Tuesday, October 26, 2021 4:09 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: replay advanced rules after
>reset
>
>From: Victor Raj <victor.raj@intel.com>
>
>ice_replay_vsi_adv_rule will replay advanced rules for a given VSI.
>Exit this function when list of rules for given recipe is empty.
>Do not add rule when given vsi_handle does not match vsi_handle from the
>rule info.
>
>Use ICE_MAX_NUM_RECIPES instead of ICE_SW_LKUP_LAST in order to find
>advanced rules as well.
>
>Signed-off-by: Victor Raj <victor.raj@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_common.c |  2 +-
>drivers/net/ethernet/intel/ice/ice_switch.c | 41 +++++++++++++++++++--
> 2 files changed, 39 insertions(+), 4 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
