Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A18D757E8BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 23:14:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1ED2A8488E;
	Fri, 22 Jul 2022 21:14:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ED2A8488E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658524459;
	bh=EbfeRjeRU5OuFSttTmiWiV4AADVbdGHSfYKrqM7PnpM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jJr2psGKGLMNaI4dcFwdtstkaUuXmn1fsK4jh9c4kDgVEUhOhCGinKFvNN+kMq6g2
	 Klc2Jag42yqoMGkQrYjKbhM2KFcB9Gd7TnTW9D88gnLfYOQh8igPDIHssdvZLhQpJI
	 cQ4oY2VMBgJKaA2Ip8Uw7+a4P6ovlvRpEPMi7BJTj7QqsrcpMCpCC81jwkH+lM/p23
	 u3lawlpAPTVYvsIRNn+DwLg82MppaExHjUdeHwfJbPATWa9mIqEFidtVh6Uqdgbvgr
	 +bxjMJXV5ODrfuMFgcMjCPMc7nSREUbgbjJuMRnpHdW1cd3U85EFN4oPyvjAmfjTtd
	 lmk9P6DplYUPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKjavORASCZY; Fri, 22 Jul 2022 21:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD5D4848A4;
	Fri, 22 Jul 2022 21:14:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD5D4848A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7468E1BF215
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 21:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AC11848A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 21:14:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AC11848A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WG4Km86RyW2p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 21:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AF6E8488E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AF6E8488E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 21:14:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="284955372"
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="284955372"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 14:14:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="626709001"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 22 Jul 2022 14:14:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 22 Jul 2022 14:14:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 22 Jul 2022 14:14:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 22 Jul 2022 14:14:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Jul 2022 14:14:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENdwDhgiRcDyNl8LNCCShFEebevMbSrDpJpho9ms/njqlr0+8gAHehf5yjvOKcg/S6bznpR1uPSyfVbzmYfAAKPQ+5J8XPqoIWoKZCowOjTm22ij/Bmh0DCCJDHkEC3an98jZPzWzjCgcTUdmXNY5xyOO2dCiosDmZUiyojG7kx12cOHijAELCxz7LUIdVuDs8T3jjAAYasJWkXoZ9Vx4u5SFUmTfecP4O17+ZtykZ5VGf3wZK/5yazSgbo4RCU2HGwL0XvQ2To/h9uX6R0LmnqKQFTAem/QB9/VZWdctJPE0NX093NHtBgPJm9KAMlgSHXqFw2MwuiP/t7WLEtZ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S1eZwj09fcg6l0sMU9Oc+wZRaZS/6VrFnJuuVs1WtNc=;
 b=YtZE5Xg88Y+iqaMcL2542Pimmxc7IcfPQCyMqsnc+Xx42+Q1MgId0664mhQoDw6EnTbUjbqDtO6LYfHAxjXx0z2nVqnP4VOSOzHUuLNQNdzXjL5B47JRGJ3jx/ICMQBmfom2YF3RyfB7lc1Rw75uGna8xMyWl/NZva4rzzV90i6XfSskI5PvSdl/b4OqLWjsbIj/7QwuRXb8l/nFkpsUTQcZdjKwGulCg6xfio6F92+sWj7ZkCkirh6FfM+V/5my0a6lcaVv1nQD1+BNgn4AQY0VsjmcZe79xloZRgNQT/7sCHFFj1/7Y9lM/dknCX+P1Mwe7nP7Xy1Cf0dR7d05QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6359.namprd11.prod.outlook.com (2603:10b6:8:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Fri, 22 Jul
 2022 21:14:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5874:aaae:2f96:918a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5874:aaae:2f96:918a%7]) with mapi id 15.20.5458.019; Fri, 22 Jul 2022
 21:14:07 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [iproute2-next v2 3/3] devlink: add dry run attribute support to
 devlink flash
Thread-Index: AQHYnUcNPol+uQM140OT3YxoZkJdo62J7CUAgAD5IGA=
Date: Fri, 22 Jul 2022 21:14:07 +0000
Message-ID: <CO1PR11MB5089EE7E12F259C0B8DBDA56D6909@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
 <20220721211451.2475600-7-jacob.e.keller@intel.com>
 <YtpCCFiXSAFWoUdg@nanopsycho>
In-Reply-To: <YtpCCFiXSAFWoUdg@nanopsycho>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adc9a1af-891c-42ea-94ef-08da6c271d0d
x-ms-traffictypediagnostic: DM4PR11MB6359:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sfk0M8wGb1HBgpONQQzhX+jLFMUkJ4LABEN8J6NLJAlLPIvvzgxxplC1SDbx2yl0o0uvj3bSbac4mmxt0N5ECRjYncpt6qHck6I+KGBfltODTEAqAG4JgReOC1v/VJ+GxDXdk8PyLj7jSSAevvkuN8d4O6NCHfb+Gvs6bqQtU8lN6cR6t6vSdOQMjjYI3Sxb4BNb9cs0NqoaOB1JYnGHMKB2osTXQnlZMOwBsiGsCwyWZ1CeHCLXexMhuPJ+a0p7qHnhrHT4IIwA+TMQWfrXYZdQo6W++s2h0YPIR+bij1Io/xVhMfO5xG604omqwwJ2+hRMo6IDCIyXCZHv/PTmAHGBqO3lgwyWoCSxTRQgf/ytax3NRt+fset6q5G5n/o8JxoxSM75fbeGLgJ50lm9lQHT3qBDfiHahUBP9VmHT4s1XvZQ7gwmRZ5Cg71xgHjBdxrpo2RHsxDx6tVmaozKs8Koa8nPQdCFhAYxHhY7WBdhLWg3FwOPVg07wZsqQevxWBn/0/u6XdYmR0dbkXmMhd3cL1HVkOqLZ/XauNBTqYxQvx+4ZwaH8aM/FSBJB5FJBZmA5U6WFUDlfx7eA2j7Qw011ibuxMQ1kYf4x/vZtaQJxi+PtiAge4LRlMy7bzhwjcEEIvDTQ75tTPf3w8MKwlj3hvXrVISQcqykgFXLMIPsxpV5ySTYqBz9TdKBtBIuo8sMQ4/tTrC8J25bpqVdb3aPyYiDkU9dVWPdFi4q/SmndY0SjVpgs2BcCpP1WQ69j+Er8IlndMZVXU0z1lSbA8candFRSrYyMtIwzYFjrMM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(396003)(346002)(366004)(376002)(33656002)(82960400001)(86362001)(38100700002)(71200400001)(6916009)(53546011)(122000001)(41300700001)(478600001)(186003)(316002)(9686003)(26005)(6506007)(2906002)(66446008)(8676002)(64756008)(76116006)(4326008)(5660300002)(8936002)(66946007)(7416002)(52536014)(66476007)(54906003)(83380400001)(66556008)(55016003)(38070700005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pCCipjZRYdakyEZeTOhyQxL7y3XJuPecVSdDvB5mLNBn83Ulhcz3k0LhLswG?=
 =?us-ascii?Q?yPk9r9/ea8JBGUHaxbwuUmrUxH9i8Xo/XUbbETog4aEwssIGQGqxg3RKn5cd?=
 =?us-ascii?Q?suAogPbmESi9jRoVrgDCD4RlTHEgNT8pJNE2NlQQ3zj+esASJ8Ux5c9e8YjF?=
 =?us-ascii?Q?Y/e1WwimRByeiNgCJW02BXu7XbcMUFesMCIPjioILp1UhORA7o7FyxIvrIby?=
 =?us-ascii?Q?MiBbK1y+idrNU1W4E32TOBaJzzJIivU4Sy8Ixmli0JIpNivOwJ3Db63WqU0r?=
 =?us-ascii?Q?XkVHCHVwfmoeJGzqMP6+UzyYyL9OKnDQJwHJB26zdKiSXN2xo2ZQR7oxH8zu?=
 =?us-ascii?Q?4e978joiMZw44Z8DEmoe8wrlf4bn0tDDm+EMm1IzebwZbfJE45QMfYreM1cE?=
 =?us-ascii?Q?DuJIXX09ml8nURi0agekeCoBunXodBqoD9OD0FIPY01F9Q21oy6dGwRAVzSU?=
 =?us-ascii?Q?FhdNBciGP68NXwJmQt7Bstb+Ik9KBsNgsOqLlALJgNWUfPexUXy52a8o10Ad?=
 =?us-ascii?Q?k9yANueThr7QTmypxlFYUKOFtq7ph8y5SoybR+LSwkIAhoTt7xff1YsJ2n1D?=
 =?us-ascii?Q?3RuMa3vGtuDVZ0wtopAl6H5KhDyuZEtAfrL9Y6QNdcGZspgik9Z9Adix/FM9?=
 =?us-ascii?Q?Wf1+yULa5iih8Y996W8UDFeJfLCKWj/X8SsS8sZLLlOX5Z2KTx1y6MIf7EiD?=
 =?us-ascii?Q?s3smJpGJ6OI9/LZUOIrpo9tcEyX6MZH/oNbv9jE9iYxOqQMoecKzXdkDDGgB?=
 =?us-ascii?Q?HfSEWwwhz9MGgdjnYWisMf5fQTWNwtY2nVWersBudvfukdMdAUFyYbDDqZqB?=
 =?us-ascii?Q?61gHxOb+l6Tb0PA1WYLfOVRdvnptl/ZxaoXkf3vNXEb/2epB4xIGFJc7TDH5?=
 =?us-ascii?Q?RTDuQu/LDuImzwjMeY0unVAAKjgb+8XSAcVSKEGEo7XO4tsiyLHo9tRkhp+Y?=
 =?us-ascii?Q?+Yf4cu7+dv316rRlqPx9eDvKgQAxVymBn11v+IIW05o66fHTYOIfFulEapSs?=
 =?us-ascii?Q?hBeZUzXWlwr4qjYDcufkRBMkPnMa68anz9LXNpj4qVwTYB9FzEHUWyrF+o/L?=
 =?us-ascii?Q?aPb+J3MdUBIwLjYdNAsrSICeaBGfYQcnuLA6qQp+p2j8rkttxMrA2ogBxtXe?=
 =?us-ascii?Q?6xTxzJky/+0fPG63vi+pXFJPSHyy/f40e/jymg7rYh2WIjssmsb5QD268BOs?=
 =?us-ascii?Q?gsATSJr5Y1+HsQdo92DzpU3MK319NNv775HABAHojv0UD6smaVrSVmkjdw7B?=
 =?us-ascii?Q?zMpTdeLQHJzT+piIBtuFtFL9hjc9a7JofEcJYgDOM73Qm4m2n5YBR5XD2IHw?=
 =?us-ascii?Q?4fgVPb2tj8LLKlPqWLrWzyWsRCGxHimaRVp1IZ5axHjYyG2cdYzsIn/0S1Mj?=
 =?us-ascii?Q?z1F1V2soO4oL1723CUBsgT9uh6y5Tw2ScWrajOeqfgeFixegMl1f/0LdN2sz?=
 =?us-ascii?Q?AdPZvFsBXL7CcgJJ50KhUbhGUTXYOxQQEBmeLr2ie+TyNS13+0Zyxv/106e7?=
 =?us-ascii?Q?f1uruxdk3BaCdERxrcCjbDf6c1cnKtvkZG4hQ1WDV82NX6zyfxUJkypTJ/Mm?=
 =?us-ascii?Q?P0I0340IjuCpQMWgQeodc3f1xoIwdDmFyjmjuC+D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adc9a1af-891c-42ea-94ef-08da6c271d0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 21:14:07.2987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vXdEkgIe5Vtkz0OpZC/kR7e7ZozKsakyQjrMkM6GrKeGHN/0X6NJK3sksaSwBD8h0bO+N/v8zZerR9OrIiSOPc1MvtvINMWpaA7hS+MPIF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6359
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658524451; x=1690060451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0D/EIb9+X+9fMesldyxHTwrc8okX89HC5IOuaaH0xM8=;
 b=IMS0JBFFdZVEL/3CUgkKTBcsyYWfgrtZVwmUblTiNRbQDKi2aKTDpHuO
 CtgY34j4MfZLg49jTc9h9nUyy7wQ7Pmz33ZDZx7Xre9utWpB73gWgmBl1
 HR6JJMz5fSDdOitjvVgd8hu5JuzmTiwMihUDdWkk/1dVpna03T1yfmodR
 BCqMhXflWnEXj8EdbYLLlXO9KunPFgtB428RWmS0Y0cfo9kdC/6jKERa0
 NWAZ7/rvP+AXdxbWPcaZx9cK01pYRudk75RhIMMi4NtVbPh5IvjlES4pG
 81B3cOolczZiYmyyOlGrpoEvKoUYVSMwEqQQ/HvDuGRTgtQr/wFFrrbix
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IMS0JBFF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iproute2-next v2 3/3] devlink: add dry run
 attribute support to devlink flash
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 David Ahern <dsahern@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, Stephen
 Hemminger <stephen@networkplumber.org>, Eric Dumazet <edumazet@google.com>,
 Jiri Pirko <jiri@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jiri Pirko <jiri@resnulli.us>
> Sent: Thursday, July 21, 2022 11:22 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; Jonathan Corbet <corbet@lwn.net>; Jiri Pirko
> <jiri@nvidia.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> David Ahern <dsahern@kernel.org>; Stephen Hemminger
> <stephen@networkplumber.org>; linux-doc@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [iproute2-next v2 3/3] devlink: add dry run attribute support to
> devlink flash
> 
> Thu, Jul 21, 2022 at 11:14:51PM CEST, jacob.e.keller@intel.com wrote:
> >Recent versions of the kernel support the DEVLINK_ATTR_DRY_RUN attribute
> >which allows requesting a dry run of a command. A dry run is simply
> >a request to validate that a command would work, without performing any
> >destructive changes.
> >
> >The attribute is supported by the devlink flash update as a way to
> >validate an update, including potentially the binary image, without
> >modifying the device.
> >
> >Add a "dry_run" option to the command line parsing which will enable
> >this attribute when requested.
> >
> >To avoid potential issues, only allow the attribute to be added to
> >commands when the kernel recognizes it. This is important because some
> >commands do not perform strict validation. If we were to add the
> >attribute without this check, an old kernel may silently accept the
> >command and perform an update even when dry_run was requested.
> >
> >Before adding the attribute, check the maximum attribute from the
> >CTRL_CMD_GETFAMILY and make sure that the kernel recognizes the
> >DEVLINK_ATTR_DRY_RUN attribute.
> >
> >Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> >---
> >Changes since v1
> >* Make dl_kernel_supports_dry_run more generic by passing attribute
> >
> > devlink/devlink.c | 45 +++++++++++++++++++++++++++++++++++++++++++--
> > 1 file changed, 43 insertions(+), 2 deletions(-)
> >
> >diff --git a/devlink/devlink.c b/devlink/devlink.c
> >index 1e2cfc3d4285..24f1a70a9656 100644
> >--- a/devlink/devlink.c
> >+++ b/devlink/devlink.c
> >@@ -296,6 +296,7 @@ static void ifname_map_free(struct ifname_map
> *ifname_map)
> > #define DL_OPT_PORT_FN_RATE_PARENT	BIT(51)
> > #define DL_OPT_LINECARD		BIT(52)
> > #define DL_OPT_LINECARD_TYPE	BIT(53)
> >+#define DL_OPT_DRY_RUN			BIT(54)
> >
> > struct dl_opts {
> > 	uint64_t present; /* flags of present items */
> >@@ -372,6 +373,8 @@ struct dl {
> > 	bool verbose;
> > 	bool stats;
> > 	bool hex;
> >+	bool max_attr_valid;
> >+	uint32_t max_attr;
> > 	struct {
> > 		bool present;
> > 		char *bus_name;
> >@@ -701,6 +704,7 @@ static const enum mnl_attr_data_type
> devlink_policy[DEVLINK_ATTR_MAX + 1] = {
> > 	[DEVLINK_ATTR_LINECARD_STATE] = MNL_TYPE_U8,
> > 	[DEVLINK_ATTR_LINECARD_TYPE] = MNL_TYPE_STRING,
> > 	[DEVLINK_ATTR_LINECARD_SUPPORTED_TYPES] = MNL_TYPE_NESTED,
> >+	[DEVLINK_ATTR_DRY_RUN] = MNL_TYPE_FLAG,
> > };
> >
> > static const enum mnl_attr_data_type
> >@@ -1522,6 +1526,30 @@ static int dl_args_finding_required_validate(uint64_t
> o_required,
> > 	return 0;
> > }
> >
> >+static void dl_get_max_attr(struct dl *dl)
> >+{
> >+	if (!dl->max_attr_valid) {
> 
> if (dl->max_attr_valid)
> 	return;
> 
> and then you can drop the indent.
> 


Yep, makes sense.

> 
> >+		uint32_t max_attr;
> >+		int err;
> >+
> >+		err = mnlg_socket_get_max_attr(&dl->nlg, &max_attr);
> >+		if (err) {
> >+			pr_err("Unable to determine maximum supported
> devlink attribute\n");
> >+			return;
> >+		}
> >+
> >+		dl->max_attr = max_attr;
> >+		dl->max_attr_valid = true;
> >+	}
> >+}
> >+
> >+static bool dl_kernel_supports_attr(struct dl *dl, enum devlink_attr attr)
> >+{
> >+	dl_get_max_attr(dl);
> >+
> >+	return (dl->max_attr_valid && dl->max_attr >= attr);
> 
> Return is not a function. Drop the "()" here.
> 

Will fix.

> 
> >+}
> >+
> > static int dl_argv_parse(struct dl *dl, uint64_t o_required,
> > 			 uint64_t o_optional)
> > {
> >@@ -2037,6 +2065,16 @@ static int dl_argv_parse(struct dl *dl, uint64_t
> o_required,
> > 			dl_arg_inc(dl);
> > 			opts->linecard_type = "";
> > 			o_found |= DL_OPT_LINECARD_TYPE;
> >+		} else if (dl_argv_match(dl, "dry_run") &&
> >+			   (o_all & DL_OPT_DRY_RUN)) {
> >+
> >+			if (!dl_kernel_supports_attr(dl,
> DEVLINK_ATTR_DRY_RUN)) {
> >+				pr_err("Kernel does not support dry_run
> attribute\n");
> >+				return -EOPNOTSUPP;
> >+			}
> >+
> >+			dl_arg_inc(dl);
> >+			o_found |= DL_OPT_DRY_RUN;
> > 		} else {
> > 			pr_err("Unknown option \"%s\"\n", dl_argv(dl));
> > 			return -EINVAL;
> >@@ -2115,6 +2153,8 @@ static void dl_opts_put(struct nlmsghdr *nlh, struct dl
> *dl)
> > 		mnl_attr_put_strz(nlh, DEVLINK_ATTR_RATE_NODE_NAME,
> > 				  opts->rate_node_name);
> > 	}
> >+	if (opts->present & DL_OPT_DRY_RUN)
> >+		mnl_attr_put(nlh, DEVLINK_ATTR_DRY_RUN, 0, NULL);
> > 	if (opts->present & DL_OPT_PORT_TYPE)
> > 		mnl_attr_put_u16(nlh, DEVLINK_ATTR_PORT_TYPE,
> > 				 opts->port_type);
> >@@ -2326,7 +2366,7 @@ static void cmd_dev_help(void)
> > 	pr_err("       devlink dev reload DEV [ netns { PID | NAME | ID } ]\n");
> > 	pr_err("                              [ action { driver_reinit | fw_activate } ] [ limit
> no_reset ]\n");
> > 	pr_err("       devlink dev info [ DEV ]\n");
> >-	pr_err("       devlink dev flash DEV file PATH [ component NAME ] [
> overwrite SECTION ]\n");
> >+	pr_err("       devlink dev flash DEV file PATH [ component NAME ] [
> overwrite SECTION ] [ dry_run ]\n");
> > }
> >
> > static bool cmp_arr_last_handle(struct dl *dl, const char *bus_name,
> >@@ -3886,7 +3926,8 @@ static int cmd_dev_flash(struct dl *dl)
> > 			       NLM_F_REQUEST | NLM_F_ACK);
> >
> > 	err = dl_argv_parse_put(nlh, dl, DL_OPT_HANDLE |
> DL_OPT_FLASH_FILE_NAME,
> >-				DL_OPT_FLASH_COMPONENT |
> DL_OPT_FLASH_OVERWRITE);
> >+				DL_OPT_FLASH_COMPONENT |
> DL_OPT_FLASH_OVERWRITE |
> >+				DL_OPT_DRY_RUN);
> > 	if (err)
> > 		return err;
> >
> >--
> >2.36.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
