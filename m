Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5522E7BBB92
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 17:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E96DC8226A;
	Fri,  6 Oct 2023 15:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E96DC8226A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696605399;
	bh=/VYC2K0GJJyqC7dzvjxRU6IIioDdoYnv6OV2FdreO3A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BPBnx23ggcjI5p8/s8hrhPVJi8xYRM81hogHcPx0Enab3o6nnU+wRMtMrcgBZLZP3
	 CvdmGZoL8QmAQq0iGRBfR5VceKtFYSNhrbkAMgK9OyGkSddknDsSeag3FRYNyryc6G
	 jXyYV5/polkZ43cvlTOH642l28W3YxAG2bt1WFM3yQ/QceFECprnAmB2r8kOZxM5Ve
	 cEilvRvISYuaFAuGBMpWGoj/B+R3dYZEnNSKDZZhqrH+QJlof0EZLog0Dw3zgOgxjv
	 NT+R8A8tGvib1crTHn60d3P2Kvx32D0L4fHCP5ZspuvuIjFyptIuoSpBVNbf2CH/pL
	 TI5bfE9u3enTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnsBoNu7efCf; Fri,  6 Oct 2023 15:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A335C8175C;
	Fri,  6 Oct 2023 15:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A335C8175C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E59A81BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 15:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC48E4017A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 15:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC48E4017A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLPs95Q3H6Mo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 15:16:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5AC334014E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 15:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AC334014E
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="2371580"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
   d="scan'208";a="2371580"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 08:16:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="999353507"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="999353507"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 08:16:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 08:16:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 08:16:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 08:16:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 08:16:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/ps4UyxJIf4n75+VfVUxtuVm16MeKRif/Xh39JHmeXqntqCkA1PP65ZD0PNw1+kQ8QfDQCIzlNULQcqI/8FFE/QTgAvy+4hAr+rQ9ddldxtPLeTIdVuf7MNmeS2uOOnMbiRRoipyTSqp4CcCcWiXITf3tz7v3cLKYi8RXoUoh51HKMDvg/K7XQM1iiHtEdDcwvfT1+tBCxqbiXaHdiqAbacrzBb5HujakWe0hZWA/f6mPe/lLkCo+lv/6+U1P/DTTXgrBJAp4qgphs9RxGNi3yQhPNqLoDmi/RPVIyYavLZZyoHZsDUOA51nwCvm1BFv2xkFGSablSeOVO3XdEBgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fMImQZBc81uB5ITDlH6G5jJanVvP5eok1uwvY/ZeqoI=;
 b=c5ZynBiQnDpXOes6We8gcC9zP8l9vu4fibh8MIfbQJdlL0x2gcJNxm4ch5+tfbRCheTZCsOqhzTpTHYjkZsCZhCIR6vRnm65C+xlq2qxOaV4upuXGYfsQLeOmmUStJMk9qBUkiFIWkC9ATPnwpF1hv0B4A87mRN0wF0n/YZsGnIqz9JoR0z4PJ5PQeSk8yqSZu0gQ2Yp0GZSeEw/GVAeDgwDWS9o7dqFUizpshwZBsfxDtnJvFs8i6X6po1rScXwlF2wqeYDoNh+Ksg1elJrXGr9YLQrV+rrGRkL3RykQ7ppoIdXjaPJOTadkFIsmBQBws8pDbkDa1n9uSo2LaA8vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS0PR11MB7407.namprd11.prod.outlook.com (2603:10b6:8:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Fri, 6 Oct
 2023 15:16:16 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 15:16:16 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format
 specifier cleanups
Thread-Index: AQHZ9imUBhsgBp8lu0qqiq68v2AWE7A5pd8AgAM9zoA=
Date: Fri, 6 Oct 2023 15:16:15 +0000
Message-ID: <BL0PR11MB3521CB784A9F8B8265C45F108FC9A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
 <ZR1slAb0AQ3ayARW@kernel.org>
In-Reply-To: <ZR1slAb0AQ3ayARW@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS0PR11MB7407:EE_
x-ms-office365-filtering-correlation-id: 2542c3f3-cd74-459f-a073-08dbc67f2f56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R6R9EJN4srmV9Co+94xeKMLGMoPi0S+dax0OQuIZxSHL7ScLxLJ3GQv05UXaU4sGd/7LCWeX+UACSO0Zf5ztDE5Dm0+cKR3AInlYxo7TO81S9WtC7LegOxIEYOqunuxwGH9fuI/O7B1mkLyArcu3IVEuJujCtoTmJ36psXN6YmLXUr0ODx7a/qsPegKe1gQPZDRe4+HS85dIv3I/TfsNVM1Yww8LyRSYZsMo3xypaM6woHbhDuS9VCk6iGTwpArWYAKI7ThGSKXBUmgd1DxcNImnUiGa4hXTAGDSQ4UqyMEafPibS7hQdJnpEpEebR0iR5H69svMuo6CQsTa8sHt1d/7KbXhoQ0w8DYPFptVC6csuzNNEIQi2ypinM9COiglzCGgWqfSi4a19RD46QNbpl+esCIUVU7kBLSnCpaBDKvLN5FBjOV/xFLihJIC/GLSKenZlcUmfMeNlDDGv97xm740Ip+tcckvxbFMymQdYJHGdCI1UZ4KzkxlY6t2MYukCVSycPkBc/7lSuGmWVQlTnVZRuUezBY9MzHpIPEZzdp0Nc0cTXzuWJAboaGkvvUVf5u7vmq2QaB2v7w8CN9CKdvf3x703S/Tl+Voy2Tj0VY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(136003)(376002)(396003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(8676002)(2906002)(8936002)(4326008)(5660300002)(52536014)(41300700001)(316002)(6636002)(66476007)(66556008)(64756008)(66446008)(54906003)(66946007)(110136005)(55016003)(76116006)(26005)(71200400001)(7696005)(82960400001)(107886003)(6506007)(53546011)(33656002)(86362001)(9686003)(122000001)(966005)(38100700002)(38070700005)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Td/Rti8NB298ukqFKryi3SGpbZgEa6NRberuuTRVMdBU49V8wG6we6vv6nMp?=
 =?us-ascii?Q?5auV2hNMAmLuGtKwrfLeba9WDB70AFX/A67K2wzLkfwZIyjFy1Mej/5yLzl4?=
 =?us-ascii?Q?Ke94KaeC9Ru+E93YJULNLg8VoY9BBdObjeGpccLB9SGvZPScFgfy0MDsoCEv?=
 =?us-ascii?Q?XGsgIOkHLWjQCsYFWUhe2smtH/lWFd2N+MkG5fI+hp1vB+uk1lA7Y3ot04Vi?=
 =?us-ascii?Q?Q8X+YOjd9uyjv7yL3Sl7qlKm+aAWp097kPwTOo7zmrHLI+MpbNIQLtqFkNxS?=
 =?us-ascii?Q?CoCue+LtTajwXgTu9l/aa62WFwujFYjN/U1sDTKxFCiKVMn2C5nq34VHRGbA?=
 =?us-ascii?Q?gPmvnoGnIE2szZueWfNMwIdTb1B9/0p3Bpn/X27GsMvIgDeMZqr//V8estJ1?=
 =?us-ascii?Q?KDTOS3VDIGDP3pt9p8TgMHuRNVHmLjxXEp63HoB6LO142llTVAGl7wpHNHdC?=
 =?us-ascii?Q?DrI1Y6A3Cv7U79tM8BkLKmMCNI53WWePW4NviJyibdh5lnWMxwmFFS8bFO0V?=
 =?us-ascii?Q?l2upE+2nQE/M5v6lPz3aQ/OpbdpJ58b1Dbh7nTRUli9cymSsYX92nxSS3CZ5?=
 =?us-ascii?Q?ZCXt5xVjLRX5FgMU6HhshLqCwKb1PQVlwDHi8EN6rrWikUX6ONUj6AOTKAmg?=
 =?us-ascii?Q?I77F2ce19SbrgDFQ6NGoLm8POalpCEMvOqwimvRAee2s+HFpe9Qht5E/hxGY?=
 =?us-ascii?Q?ve2YMfHidmJb4ORELZZU/tU1j2CmywzuLV5xdrQ0IIO2B+CoqczDhC/ikHDs?=
 =?us-ascii?Q?1+6TL8wk7Oasod3ORkiCetwmn2dmpRvFUJkcrF+p7AoxM81rg5fDdLJeND2m?=
 =?us-ascii?Q?P01WHJW5bqtkAG1tyY0kCbRw0pv9+6QX+cKt0rh8b2a6cVHE14bY4s3O+foh?=
 =?us-ascii?Q?o7nK124mm/G3ul0+jVlVWtIP4rAEPbEgjkWPaGFl9Y8iTaomutwq+94m+F30?=
 =?us-ascii?Q?vQ3S8ZXv0cF8FueVNqRErepdwGexhDhBRuflfGNPOnfSmpyhsQTX/eUWRjO0?=
 =?us-ascii?Q?pnjJPOY4vGfQb2DNldm24XeA7QpBCf0RWIs0GlH8vro3ENuQAOJy4uAb47gf?=
 =?us-ascii?Q?GZVWj1oirzqADz0UCKwjWiVfjuh5J8/SEVScozS7QKn0u5x7svbY4FHEBXkO?=
 =?us-ascii?Q?mG76epocpAhRNlOgq9A427GcRLTWoW9m6k+TqyeOZxazik6QLVhsKDPAWQhM?=
 =?us-ascii?Q?5r+h1HYN7yTSxiOOAEcWAtYbl14ZYBrLfMoPB9FPxfEu26tJfUpolI46+Ylh?=
 =?us-ascii?Q?pc7HfQ1W2UEFtzGAmSjfjI7lNze9bYPz7SrsCmFFB8vuRlN9AbGBM4OYhp74?=
 =?us-ascii?Q?DA8gRYzmKV015FWjOiRTk3XnHvwUbrj8XNZ11G5SpklVCKvKgjU0vZ3Qd3Ba?=
 =?us-ascii?Q?TUwIvuadA4IdjuMN77XatTaGgeZF5fnVFI0jV+SX6ustb+wDHFbB6yCsn8uk?=
 =?us-ascii?Q?f6fWL1whU+HMvvS/jZ+FOHy21gw5B+gmoZYlnaUrf4qxRNHfnf8CP8y0GfMZ?=
 =?us-ascii?Q?n2zfqLJU1uuoT9kKaPDE2ltZqlKZpsPdfX5YbbuX8RoeEjkhNYxUhu4UMQSN?=
 =?us-ascii?Q?tgzCPQ0Hd1lfQTl9kvYQDQ/iNwGIUWpIYKebCLKWy0NI2jlaE+2LBReP1PjV?=
 =?us-ascii?Q?/A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2542c3f3-cd74-459f-a073-08dbc67f2f56
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 15:16:16.0260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ouihi0DGHgTC2eLBJCvpVO4/Q80ei27lNQ0IQsLaZjr91zEzTOt6dswFbE23xLQVCA+0bFHlz9bCUbUYLczq8aGjwWD8WMnCjrMTl279P/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7407
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696605390; x=1728141390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WTGjyMW2FIJC1/l3thBJWKsgE+/xODElBa5V4llWyIA=;
 b=JPh4UOzIbp5V33FVAyicbPBXEFVXk2x19E4QicH/izCFvW4aYAQic4QM
 fkJtoLDIy4Br6vAlj65x058sI/oUSDvaoOCISmVD9NT1ii7DxWaC9XCK5
 tzZdLIYf9GRt+6mjx3AxITBqniOyyF/GUvdv+i/wNKCIedWh89ORrf0AG
 8L6VYBpK7wrIkDDolEvVzBb9RzbDtLUxi3j9qTpNvTk7APYKLVsZn1zS1
 nd7aGugiR9BcL0xCeqg0F+JKYmFiYVSZHBz/TYETlhHmlzAQdmdHYqnDl
 I0nhvYPzaze9PFfxocECtgBx1683qNdp1YTb01BMH60Mw/Yc12Lw4XR+4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JPh4UOzI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format
 specifier cleanups
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Wednesday, October 4, 2023 3:46 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: netdev@vger.kernel.org; Christophe JAILLET
> <christophe.jaillet@wanadoo.fr>; intel-wired-lan@lists.osuosl.org; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format specifier
> cleanups
> 
> On Tue, Oct 03, 2023 at 11:36:01AM -0700, Jesse Brandeburg wrote:
> > Clean up some warnings from the W=1 build which moves the intel
> > directory back to "clean" state. This mostly involved converting to
> > using ethtool_sprintf where appropriate and kasprintf in other places.
> >
> > The second patch goes the extra mile and cleans up -Wformat=2 warnings
> > as suggested by Alex Lobakin, since those flags will likely be turned
> > on as well.
> >
> > gcc-12 runs clean after these changes, and clang-15 still has some
> > minor complaints as mentioned in patch-2.
> >
> > Jesse Brandeburg (2):
> >   intel: fix string truncation warnings
> >   intel: fix format warnings
> >
> >  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 ++-
> >  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  8 ++--
> >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 22 ++++-------
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  7 ++--
> >  drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
> >  drivers/net/ethernet/intel/igb/igb_ethtool.c  |  4 +-
> >  drivers/net/ethernet/intel/igb/igb_main.c     | 37 +++++++++----------
> >  drivers/net/ethernet/intel/igc/igc_ethtool.c  |  5 ++-
> > .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  4 +-
> >  9 files changed, 46 insertions(+), 51 deletions(-)
> 
> For series,
> 
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Tested-by: Simon Horman <horms@kernel.org> # build-tested
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
