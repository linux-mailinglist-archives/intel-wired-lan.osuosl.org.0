Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7F96ECDB2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 15:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56CFF4176B;
	Mon, 24 Apr 2023 13:25:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56CFF4176B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682342749;
	bh=lXTKM7eaOKreek3QDpZpBwahz9rHqCAsZ/Yk/64KlHc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1IR9DU4Ycdq2o3hsTVeoOr9MUMRyyGrfTL3oW3syJBrTWyPUjXeosQI30rzJu6/6A
	 XZlkwA6raAxJmCXBwIzWshtdMY7ts+o3ntuZ3vP7C5ACyyMzOTQGPf4D9CKn3HVEwd
	 z/ZwboOxJswLxf7vRG1Gs+p+0g6DFc5XTrK0g7QcjRuMHabpAgTKs7k5cSGdheglE4
	 bkBVeWHbjkzbf56TL6fNf++Sas3Ud73v6xrErYObHFBx9QLiDwQ3iy5OBzw5+CCUKz
	 hhPaq8mu28jR1i4rIryv9SNSSpLDjyCN02qL50FsprxEGvO9uDUCvRiQ9UzfHqZwpy
	 WKzWdVbW43tkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oz_Js1kkW1Xw; Mon, 24 Apr 2023 13:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E57AD4173C;
	Mon, 24 Apr 2023 13:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E57AD4173C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3A2E1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 13:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 880A74173C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 13:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 880A74173C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RsnNhk2sxpu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 13:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 440CA41733
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 440CA41733
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 13:25:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="343935165"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="343935165"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 06:25:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="643362739"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="643362739"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 24 Apr 2023 06:25:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 06:25:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 06:25:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 06:25:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 06:25:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a7qSosK7+Fs3002uzassKcobNHviwZrH24Lim3ZmWAbZbISg7CWDhWdpzNgmzXyx0GjOnLnXZLktQ9iP8u4Q3G4vRDACNIQh9JNSf6ICxmQevGuv1srH8eI8ft/oT+Cc3SOMIq48nSDPA9ke78hRROPE1X+KxVVxGw7Al4hGcyWHqEs1DOx9BAlmzTM3FQAMSQyaBxSgj9lj5B2DvUMYvJfgq2sf/kzgVv7spHBkIEVPIyDhm53l9/yvpt2nfxWBrFX9mZv//TbW/MB5R1NOFUnn1vVkiTypokg0+RWJc/qC4nFys8YxNNcELbEUG7w09XhChAmzPMJMN4EB+C4zOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bk+iZSpfqyhUY1opU6EWXNS6KCaflyntAA1FTxPuMY=;
 b=LGnisVNqvihycXjhyI4t4YE0fLcqbxsKDXNmNXe9J5MWWzM7KhBo4A6Yu4jqw/siJ3Qel1ysUCiAU2XOlUP/YBqHOSsUE459QNQ5EbbYpKpt2B9F6gv+hFTL1zCR0Du1YOGx8dzGd8hZaZG7jqWTl7gIYxTRG5WGxae0W/gK/m8mrMfejGgZ19rX2jCNtNjfipMewIOlGtSp+zQOHIGiRa0F1J521gE1Sdw2leQofbvvLD8vdSXsVEnq9W7sM46C9Fjw4I0mTKYZPz7xrvLG64kzV5EBD9ptlxfkKxg/PdUdoMNMCkZl3eZAL1QURzGaeX/OPq2RScD+DZnZxEMXBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CY8PR11MB7034.namprd11.prod.outlook.com (2603:10b6:930:52::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Mon, 24 Apr
 2023 13:25:31 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::8398:18:e174:6afa]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::8398:18:e174:6afa%6]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 13:25:31 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix ice VF reset during
 iavf initialization
Thread-Index: AQHZcdugqb2xG02gQE+hcT4qPdKvQq86fKNA
Date: Mon, 24 Apr 2023 13:25:30 +0000
Message-ID: <BL0PR11MB3521D0C44F0AF0153BD896228F679@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230418095255.165004-1-kamil.maziarz@intel.com>
In-Reply-To: <20230418095255.165004-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CY8PR11MB7034:EE_
x-ms-office365-filtering-correlation-id: 0b081a5d-48ed-4e81-ed3a-08db44c76061
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WQNYnfTnyutQCL2xq4r9HNTEc/P8sFAJyv7n5bvFkazQ8GHMdBs23F4Vkfc+/EadjoXsCOGiUQCLGslDrS6pLR3Su+UL78Ec1me/+LfPT9YSHe68ucpzX0+stYC5mbz/aZV3lmWjI08Al7sas5bvC+eZ8xj6ZoBxMWJSN2SrHcP2/vYW5LH+m1lCirB9dRquz66aOnxfMVra3PMRTx1UwUVekNrcZpTFRg6n2NRizRYA+XwG9V1pSDCQfxzhdzAmsqFRJF4snv6ixpgPhcZabO+4I1AYIrI/NU4FesBQnXycjqjD9XQAD5NgpMSvNMdnHwX29egptktSc7gfe/rynHBPT864Y96c9bH4YDNr3lBN6aFNzJdY3hovmksnxUg22/elwicFLePJrfYmvDXGZpGt92NABaN12dDhImU0s9VTyki+QmA5sRiarFs7jn0wGHFziZqCD/3FZAmiGuKqQLHLgSZGzvJmAKa/S8kltOXR/+bo2aj03Z+pgcf2rLY3hIez/61FClDP5rzotWHak2GZUxIpgT7723ykHJwR3IoxGtHl0trBssqE5gHpJn1vdl2y+dnqEVlOvbFyOUbH//f47AdYPpRX+FTgexL0eHop2jCiDipv1m/CYWlheSY1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(39860400002)(136003)(396003)(366004)(451199021)(478600001)(53546011)(9686003)(186003)(26005)(6506007)(107886003)(54906003)(55016003)(86362001)(66446008)(66476007)(64756008)(83380400001)(316002)(4326008)(110136005)(66556008)(7696005)(71200400001)(76116006)(66946007)(52536014)(82960400001)(122000001)(5660300002)(41300700001)(8676002)(2906002)(38070700005)(8936002)(38100700002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cc8cnmOfawEaRGoVYCkzcvXzINU5bTkTi7yH6rA4UNhGvys8rV0Qtv00qj0M?=
 =?us-ascii?Q?qwQG2Fn3fb/ldCLlSfRlcrKa3oXIekABL/1VEgdmrjehEiw6+aC2i9jnPfMx?=
 =?us-ascii?Q?51ZgsV5ZWmzwyZxvLtFzADZG1Euw7sqAE1W/QA4J1S87DWeRn9qBwYEJHr8Z?=
 =?us-ascii?Q?BbTxd/OaIwJk4fd4ZmWvwKapOfRs1FTcUqol/EcfGIEltSUAARFO/mIWOksh?=
 =?us-ascii?Q?BztPTeBKzj2YRZUUMLQ8kW4PBTSsB6MEVukMJ4aIr+g1JLqKzuqNgeGOUAD8?=
 =?us-ascii?Q?QwOHVqVYUM8tej97oMNWdJKJe56bikee3irEEvuIbC59YDaFa2Fzr69KPJ5Q?=
 =?us-ascii?Q?W/Twtu6KhwpMt89YdKk5CplY/KGigBd6Nz++wlBeiqPMYsJ7LS3dSwdWNC8C?=
 =?us-ascii?Q?RBeka6CLgQPiTFY4ikhAe2DEMUKrXyxTRVIq92kfP4p4sztMoc2IhNBerWXe?=
 =?us-ascii?Q?wc4BSjRm8iZ0Ax8C6Zd+wiom9LoWOv6TaamCfpckP0OSi5zTk5Twyv3sLSAe?=
 =?us-ascii?Q?HZA7q5pzSiRJFtrsmo4f4a8I3OkdLrdzBML9J4LWxxGmTNwH+2XqQxM3JKWe?=
 =?us-ascii?Q?KZn81iiD4HAU1nLlfYUtaOnEFdnAo6N1lQWmRxFbrMqgGO3kPaS6FK6UNUlY?=
 =?us-ascii?Q?/z9okKK2xM5Pfn/ixy3mGM33GH5SWkQ2HPcT2P6FUX/3uHdYFc/6ykCYnHfO?=
 =?us-ascii?Q?jdROM1i4h7lQyWCHMv6sjaMnJjV9GIGa2bFWAZqrM50dmhMMouGwIlDr2GSR?=
 =?us-ascii?Q?CDvEFBB7vg/LCVp1U9LcWbsNvJc+1bdKWrbvKwFxauq+mfbDh3W9lnGz4yCT?=
 =?us-ascii?Q?9YSsfplUjrGCEzy+4NFYOq4dXDCp9xRFO5iZqU303xO/ADyRn11f+EhAhvgc?=
 =?us-ascii?Q?6iurfMuDlYx70DWFPRcHYxrjr+hNSB5owNhhLhZ8AZ1X/o0iBGrOwicG+AWz?=
 =?us-ascii?Q?RblpU+cE+L2oTm7geXHSpgLVcM4wkpLBLc69FXEa2iqqiegednh2ZFUA++rp?=
 =?us-ascii?Q?2ba2RbUqgGYfo2e+8H2c1Ea7OzW2Q9EkplANj3CRkGYhZIE6GCcETW+fM7r/?=
 =?us-ascii?Q?EIBMgdWZHSLNgvrScNQ8BVOKxyqVePnJ/5d8fg/RvuBAvg3drvibBAsOvhYh?=
 =?us-ascii?Q?3UEIWJ3S5SRXUhjFV0HEA5RC2kEix7Gt6KlcfG3/r+kUTwBuFzxqHj5fU4oC?=
 =?us-ascii?Q?UYrXRA+Ja7P4twFazyAz5opyxMPtT/r6nkzHOsNiPCAD7liL7Dl0Co7rF3Dy?=
 =?us-ascii?Q?QfSXbBTAuPdpKZQ83W9Ktk+xA1G/WTb/tnDxJeByYju7vTh7BvhOJWjor79N?=
 =?us-ascii?Q?/0VoxF1KovumZwIp6xGz9qfQfliYXInI+RKZnQvgh/yMFlyNBP/oG5/Pkirr?=
 =?us-ascii?Q?EAUg8irjE2332p3S8nkq7OfSyFKBEyX6HI7Qe9kiGSi02Q10ehaxX4zbxbNp?=
 =?us-ascii?Q?OjvWKb9IGf0M/FiPSGWZZhKzL2/jolKFg1MHHMTxTL454sDiYGi4p4I75CAb?=
 =?us-ascii?Q?qGNpY6T/PqLhhhrfBvEkGx4MZhmbL35h3cizkZ3VPy8iysMIHrnEMwvry7eC?=
 =?us-ascii?Q?3zc0GlkGoHZLZCEaRvfGz/wU8x5VrAxKWmEB3mM83sTOmhzFjZKhR/kKkH6s?=
 =?us-ascii?Q?Rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b081a5d-48ed-4e81-ed3a-08db44c76061
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 13:25:30.9206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9baRVoVIKGiWzywyltCYOd41m171QDx26EeODitnJiwDNTrkoX9/wsi5VnEF97poRNyQDrH+PP9gueuNi1/Q+PNNqOrxOB5pDirf26K9z1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7034
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682342740; x=1713878740;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XaibIMxSaMSJ97rOpfrX/pwq0FzlKexz0I3YMR/AGJc=;
 b=TbCJYm/acvVpMfej5TV+bGCaU+HXkUwFRBSaXhVy2k/DrP/eq2Vp7TSf
 3tZVQT+GDzDkrXglaUmUCzsz3joCi+9cO+l02vEMk+cPZG1uP2qC67ULv
 HN9BKY5gNAg5rbkYaX4vK/O/Xx4JF5C24SNoDe4BbeTLGfTIn2DE89bSw
 1OKL+50iFN9P3YHhJgrmuEIbxvsM1cwAqaJCKPHJ5NJQZ5vITxmPiggmF
 gYQunWrQOvNDhU8CVoatjhQYyjduaLRwLHvkECy+ti44N+MhKmSc3kv6j
 VRvrzTa9I1EOmpElhLSw0ANfVXBAwqo1u1Eq8mmIaLdC+7TMDKs5TqUFx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TbCJYm/a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix ice VF reset during
 iavf initialization
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
Cc: "Wesierski, DawidX" <dawidx.wesierski@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: wtorek, 18 kwietnia 2023 11:53
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wesierski, DawidX <dawidx.wesierski@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix ice VF reset during iavf
> initialization
> 
> From: Dawid Wesierski <dawidx.wesierski@intel.com>
> 
> Fix the current implementation that causes ice_trigger_vf_reset() to start
> resetting the VF even when the VF is still resetting itself and initializing
> adminq. This leads to a series of -53 errors (failed to init adminq) from the
> IAVF.
> 
> Change the state of the vf_state field to be not active when the IAVF asks for
> a reset. To avoid issues caused by the VF being reset too early, make sure to
> wait until receiving the message on the message box to know the exact state
> of the IAVF driver.
> 
> Fixes: c54d209c78b8 ("ice: Wait for VF to be reset/ready before
> configuration")
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Acked-by: Jacob Keller <Jacob.e.keller@intel.com>
> ---
> v2: changed "reseted" to "reset", changed fixes tag, removed space
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  8 ++++----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 19 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 +
>  4 files changed, 25 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 0cc05e54a781..d4206db7d6d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
