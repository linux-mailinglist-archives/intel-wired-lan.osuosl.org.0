Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0A6599A1E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 12:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0DC640183;
	Fri, 19 Aug 2022 10:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0DC640183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660906387;
	bh=ZQgJFmdeQU9WWXG5natY+KPORZsP2P1bzW/IZNtQj0g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lvZ76GHEa3HYtTxUC1128irl/pBCwQIbflnBjLBBNbA8lq8rB+q1ptgr4eqAs4q7Z
	 NX7JiO2EM9m06+cXdLSFIYGibs/feldOdOFk1qoMKO9Fm0AU1jxc9z21PCexyP9gfO
	 DDpP+JhJTUwAOJzDDVGfEQ5G+YKGvywDVRKhB5w1+J3D37KlVjOhwC2CLqlMNnwZHn
	 ld3Mg7SMQABefsu76/RqOk/keqcrlUncWaxye7pL6kvQAXjcxzpv9TnOg4WxVCbZQs
	 4nlPMOeMUEbuEdUgVu9PO7LUyQrb+C5CoDKlWDUZ8+6NuVB+SH843c3unhIp0LKtt3
	 8x5wGifl+7AGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLK_pBpFoezd; Fri, 19 Aug 2022 10:53:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E4DA415C7;
	Fri, 19 Aug 2022 10:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E4DA415C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD7001BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D2C740283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D2C740283
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viarIg7EqVkd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 10:53:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E78B40183
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E78B40183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:53:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="379283255"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="379283255"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 03:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="711305423"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2022 03:52:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 03:52:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 03:52:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 03:52:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgLOlrRvO7gcA9vabv7TNR7pN3w9XHbV3wL1QCasgVbThuCCB5Z+fc61wnPlgp9dvaleqfCbo9sQKqyQyfnp4NsNqELO77drwU5VY1wU3bSK4y4RXmVFSKSi4cVxCGS6IfSYlcUHeyiht04+9/krOdViqMnYfkmyUv2SgHT/TZle92s8mVg0fc1CuPTOxv5lExq0uosKRF1xPraC64t+UCcoyq9CbRmcLt0NU5x9a7e2o3407zMp1hK7RIg7eo96dMpDt+vuKhWNRb7UwjDcqiDgTSuYX39NC4EYAgcPfQVkxzL1wP0A+N/E0DfSq6tAXmr06elKjGMxhgJs+dgIpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kaHMRaIHmLU6Ndkukqtqyggb1UbnBTpJv7b45qzKzaY=;
 b=AOICcPK7kxz94HQkXsqBveIqPt1WJuO7LQD1SsDb/DsgJX9KNNf/uRuOBO/jXEu9/8l7NsdKAiy0cnLwWFRNGxQtywIF7XC68mRDyo5XaAeB0WFfbeXsU8B9rlZ+duX6rkve4TfEpAXCeNWpZvC0ZMLOpAOtJLAWRmfbifyz/K39IkzzPDscKpKitkAZ8qAoZDRI/O4FuOErSooBeQEhC1vRESAEPjnwRiaLxDU+8QgX0yERkKPa+D17JEikEnsNbWLth1QmkFFqE7jWSMBUGIAaup8O/m8RLWf/vToBCM4GSS2BeIa895zayvVV1bYCC0RwBpAz5Vc4x7HTmESkyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH0PR11MB5784.namprd11.prod.outlook.com (2603:10b6:510:129::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Fri, 19 Aug
 2022 10:52:57 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82%7]) with mapi id 15.20.5504.028; Fri, 19 Aug 2022
 10:52:57 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip
 TTL & ToS offload
Thread-Index: AQHYozslML49A+grtEy53dI6hnctHK22LIRA
Date: Fri, 19 Aug 2022 10:52:57 +0000
Message-ID: <PH0PR11MB5013069DF015943664121739966C9@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20220729110337.11243-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20220729110337.11243-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1176ecfc-f9e2-420d-b3ac-08da81d0f9e6
x-ms-traffictypediagnostic: PH0PR11MB5784:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OroWnK9LUqEAfgbWsQ3UnI/JwV8vcsH74Pg+HfoCh2ADGS/vVisXcebC+d53bmz5iwF+In4OGB6MePz3BgkZx9sZYyJL5akl95HIk+Q8VvO7QbqNBNVMSrv/6uO+w8L/uTW6BKab1MNOrW6VSKN+WMXMihWl3ylsBlyJnV5FGbHV8WTl4YDx3aaNNfWie+/JKsMsMj2+aFRRFu2OHguD3whH37E+E03qjl0yZXCYURwa3vTdClCYo8zsx94uAKn6xKReHpSlDPKiCHjMbDOvB5eBhFS8QU95V6GCnix9HM6dcHE8MXnLrIopX0+mxUjL36LfR3EWbEEuu9t3y2X4YOL6cX5iloQqyd4PX+dOOvNDt8Bpn6cQ2g9Fd4YoFRafOMPlmRF5/Pco5Saa5hZJILV87bAh76edE0EF1eCh5s/suUgm8nxOEOfdlLMvhzqt6p7YRG9Xm9wY3zhnYdAI7IuhqC83eZGjrPRFqQ4U60Q6FMrPi2cR488sxqalN6JgQ6bfY39Sdsn6bVJkczffzZ8aDyTqYbBHMSxAOT7NHk0315/oG/furwVfP9hlmQPR593y3Lo/GcFti3uruw6sLB3+82SCYYmxnKKSG0Wqp5+fjTVJ7gI2sfrffxUKdpHlhlmF6fsh9slirQHdoT/yra1bSnDnpl+kEOFbxsy5YCRsQ41f/X3cvc/lRdWgrWk6yZ6xlBkkHVIIp0Be09uf/M0+sdoOcrv7Zv14OZUczb2WabO+AOmZbvMb6tjBXKv4P1dkDoxNqEYlVFMCEipkjA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(39860400002)(366004)(396003)(376002)(122000001)(5660300002)(186003)(38070700005)(38100700002)(83380400001)(76116006)(52536014)(8936002)(66946007)(64756008)(8676002)(55016003)(2906002)(86362001)(9686003)(7696005)(6506007)(478600001)(26005)(53546011)(316002)(66556008)(41300700001)(110136005)(33656002)(71200400001)(66476007)(82960400001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c4y8qIIdYJSFse3L/0zR41e5TVplpiF5QJJ5tNlZ7zNCGgvqGbpqkSG6qbxw?=
 =?us-ascii?Q?O8MRC1vxqs+BFpRH2uJqIurDwcK86XlEWrnleL3r9kkIq47KZhvN4hTT46ru?=
 =?us-ascii?Q?70CX3Nh3tloggOB3jSYz51h+EpguFVhBiTDf/Eb/sl55CbvL7dzRtvn8Upkv?=
 =?us-ascii?Q?K/XPwne0f4zaR3DshHZopX9FGW/cQa/tdxrUiOFrksVk3W+L9mlBQbvfKHjs?=
 =?us-ascii?Q?OruAkneg8GCO3Db5JEV8b3Gid+6QZDJia4z9dSK3/LQPrNuoNdYbxXk+mP5e?=
 =?us-ascii?Q?cSNK48734IrYpL06eGjZy8xX5WxSU+shUuXmwkIffJl0d3n75lKxqHrlubyw?=
 =?us-ascii?Q?Qv+vYmT1FHZFGYrs58/oOpXTtdjWmKXcOP/ldxPBv0ah9JAbURKZOanEU6aS?=
 =?us-ascii?Q?Yyt0hm+H/g0xio+xw88yTgm7RbfAYTRyuojg3vefFO6gG68/ttvTp4J5zSL9?=
 =?us-ascii?Q?PKatLHmrXiO/DEHIUVDQbicgV9VsjUOfs8wUqlvqlkQPk8k1QA7GUjSLYgZw?=
 =?us-ascii?Q?HU5hzGHe8zWw4lG/ty+4DksEubB3atawLN++EKCKNIeJ8hfJzdAwOH6QaIU4?=
 =?us-ascii?Q?wFDYa8xt0J8gpf7h3Bo3Rb/BSZU/vCib7jMJ4PuTLfsJR6sfeGdEVtfLVa0c?=
 =?us-ascii?Q?pTpGDmOTVcDKx3W2kGdt49UYE0x2m2n3q3ru+GS7qpJqOaXOtqoKiiIlBnUN?=
 =?us-ascii?Q?pGISQNIBtJ27CiVvdoCKvj31IIjj6vQCXyiUBnyjL33L8jj+HS5+ZnTX+xMv?=
 =?us-ascii?Q?XvkfmtjMbfC857W/spWeGpKrytTpJZDGx93eLOJQUazS9yh3+ywkancgbfG5?=
 =?us-ascii?Q?X0laZzYSfwpXbamhhiZ9kRuIAmX+9rxMbaIklfhWHuI7ILE+d5a3RUpVlBny?=
 =?us-ascii?Q?RlgptEODZG/a/+YM2eM0NZ1Pt+60rQ/nNxh7OPGaoRk2fMzN4AaSjCp1DxMp?=
 =?us-ascii?Q?An5mPVUT7PM5QxOm/rdf/alpCzZ3xnJh03y6ISaAE6fS9PSyhS5Tc6dzyjU6?=
 =?us-ascii?Q?m77AU/HjfJF8Y5yDdKKyM2ZAQLjwiLeHOV2L79wxqevhCOWaLidS37+11F7R?=
 =?us-ascii?Q?8WmnaIRy0AZ4r83fnrHaY98JqWd0KHEVoDvkdjMVicN5M0VJLCZFCeZ1L8Fr?=
 =?us-ascii?Q?J5tfKOk52dnGufo/tS32o+IfaZ+X8HVMejtBqvE3Lvq/dSlHBTzTGE9Nl6rr?=
 =?us-ascii?Q?zSk8UvCTbIDX5wdWg1wgA+bKcKhQcGElPfgGqmgq/Z4UvHEJ807xu+2Ksnq/?=
 =?us-ascii?Q?uwoxV6mJCGhqEBzzrvqImwgMeYBFA/LKu0R+WsItAZFxJUi0YKszY6X7977D?=
 =?us-ascii?Q?VkPliF2L33LX0golkkK8XorZof9SEijaMeHk6V0bQo4HxcFkdL8MX9z9gFnP?=
 =?us-ascii?Q?VLKBThCFkdPd1fxI0F5pkX3ZHCBb2xgL1CdNnewEWkiAiTXHyNOpSUZ4yf6b?=
 =?us-ascii?Q?bGSuyff3La4dhUUssPTGraCS+HvflzsJHkKD+BDYczD5jIJQeBMwi90j1XvD?=
 =?us-ascii?Q?wd66AFRln9YTZeuZFqnttzPAiQvT64SBkX4lX4NMdOFAVUmIQIHsIug2/6Vn?=
 =?us-ascii?Q?iss31Pi3G3S0C4+/bLRe6BQ0GSrw3rW0epxcWwg+G4iQrcEW+yci/0O9ca7X?=
 =?us-ascii?Q?ig=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1176ecfc-f9e2-420d-b3ac-08da81d0f9e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 10:52:57.2017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jTZ+Y4OguJVazjcixMF6yjweYKH8Vr2C6SIePpYz/tSlM6ob3jo+4tL9+HARGTbZJVw60PiixaLcapgGdrK8XabUqwOe3mh3XE3d28hfYEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5784
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660906380; x=1692442380;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q3PgksEaco4wEfLkFKAHG6ItSCzYtMJJtiDZ/QckJ68=;
 b=DUMQEqZagTr4j4ohb3BdZvg+H4t2/rz+2WiH9b6cGz2Ae7ftgassJvdW
 kFIz2p2kBf8+HTkvlwWFG/JAQqitcyMVe+OSPXZ6an9tvjoWlcit8/gR/
 i8lenwUmzeXdTnnH/TlonWW09R7/aQuYvclkplhW+griFOd+2EpFEawtu
 UPswOLW2nE/Hvt2mK8v8k63rzzV3Q7M6ZpFfa4caDCf579YMENhx1CwU4
 +rIi4t4FZeMOlGq5YOCKSC6MOIPiJgnHptWMWPAHI7wIzUYLyHMYVQwKI
 bOFscBOPY6CBn2GjxKdzUle4FGnMVQ+1vB9s1kEs7Pyj2BC6M/Gdi4q2C
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DUMQEqZa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip
 TTL & ToS offload
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Friday, July 29, 2022 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip TTL &
> ToS offload
> 
> Add support for parsing TTL and ToS (Hop Limit and Traffic Class) tc fields
> and matching on those fields in filters. Incomplete part of implementation
> was already in place (getting enc_ip and enc_tos from flow_match_ip and
> writing them to filter header).
> 
> Note: matching on ipv6 ip_ttl, enc_ttl and enc_tos is currently not supported
> by the DDP package.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v3: rebase (update ICE_TC_FLWR_FIELD_*)
> v2: wrap bitops conditions in brackets, use be32p_replace_bits to set
>     TC field in ipv6 header (thanks Alex!)
> 
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 142 +++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
>  2 files changed, 144 insertions(+), 4 deletions(-)
> 

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
