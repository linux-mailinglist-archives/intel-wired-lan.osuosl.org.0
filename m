Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC83580E00
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 09:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23EA983FEB;
	Tue, 26 Jul 2022 07:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23EA983FEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658821192;
	bh=oI5E+1pYeEfHALZ6k5CKOVrVCUR+63Kwa0JytFfBqcE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CLmOJHwod46KDyQmXwZSW7y1DAdrjhtt0j4tw4l92ABZAaIAKUwnx6G61NQFTiFpb
	 H+IAcPnZNScUjEVpCRV+hDTaeZPao68waPF65v4jHg5aYagfliie+nleWsctFwi7h1
	 ID3yUE8GJFfjvNq3xylQDKci8spU+fIjKdxZsZs+VLdZRYTMeTwnhz5hf+COKn7UaL
	 Hpeq8/jGpKSpAbEDzgBB5u9Me2csOyhh6shIACI5B/74uD7+8dUV+w/pg+70s0lACR
	 Jraf4LYtgcaecScs02/H1dQqpNHH0SEcmYyGVbw0gRdE6bN3LLkL+jyGot7k2e4rX1
	 xAuXDprAtg6Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nPy-9KkQb0rS; Tue, 26 Jul 2022 07:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1044F83FEA;
	Tue, 26 Jul 2022 07:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1044F83FEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 172FE1BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 07:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAEB841634
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 07:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAEB841634
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rcwyvzZoJ5h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 07:39:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C1B441622
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C1B441622
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 07:39:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="313646046"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="313646046"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 00:39:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="632655985"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 26 Jul 2022 00:39:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 00:39:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 00:39:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 00:39:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MOzcFmaGljzeTzSmWO334Cl5iQz4aQM7JqTXhtFRmQS4CjeTmph4O2QpcTXcZoIqAg3v6aIPTfypj46L8UXIGvVeo8OcITYGHhlYkKOAK5Dv8c/O8AgyqfVtWyXKiLTR7K65R4L+bYM8s0aTVp/SdB3iJpQAT6zLTLypg3upxXbTX5EmR19aj9oQzDSqH8aZ1+xyLdv+riMfaNVUhsdsVH4LxazfeKJTh6Bo3WL7qD6oEhIPTMPQn0bHol77VLHF3BF3NzDOv4xKoox11+5Rezr12u8G8RMsEKDz/vu98qKE2J48e/vHptX3JDhzADXns+wzVGGrn6CFw9lyCYnzUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHnIbpSWUuPhioBZoSt8vy+FxDWarbhOPmUJWtwkni0=;
 b=AgSnHhFAv5VjKXn6K7ziIrnh9EggucF0QtZq5lPYXe8laNujXO0u7HUDqdm1ngKvnsEHvOjnRPUpRhb+iDueCAfGh6Z3kjaibrkwORFOz+OgGi6Z5PtPxXJmeWmsW05paBg1sEIc4Mn1UiQ7iKwh4uk2ZGiDiY2jTOdfZ6pnG2gZRqKToQg3dYnuOxnz98fRJPBKlJP9ANq4p9tJT+YWduRd1/9wqIdofUoDrWBiCt3ylPL4ktAi90/CJHqZJvvLvnZrmjj5ulEjrl3qWJttbkD4fxfLYyOrfQAMWuQNpUtWXPJvMF4o+fqCP7Kk+3WRqCI8/8IdplGQwCiFE60Mcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN6PR11MB3456.namprd11.prod.outlook.com (2603:10b6:805:c8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Tue, 26 Jul
 2022 07:39:41 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.024; Tue, 26 Jul 2022
 07:39:41 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 3/5] ice: Enable switching
 default tx scheduler topology
Thread-Index: AQHYndUOlUkRyItEeU2kI/N3PDq1SK2QSe4A
Date: Tue, 26 Jul 2022 07:39:41 +0000
Message-ID: <BYAPR11MB3367005EB26FBEEC78A8E501FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220722141129.229436-1-michal.wilczynski@intel.com>
 <20220722141129.229436-4-michal.wilczynski@intel.com>
In-Reply-To: <20220722141129.229436-4-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e91a74f-d682-4b22-a0f8-08da6eda0070
x-ms-traffictypediagnostic: SN6PR11MB3456:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hAh5qMH1k1NF4yIicreJpeD2pba/YH3TDM7khOrk4h80TQ05MG4MdKYQtNvPpsNh3YZsjvHGM/zAUi40ISbeH9Yuny9nWhVRegqxQuoqdqUPTpVBKEpPYAadeuEzxyTxEJ5Lduwdjp4100/jwlZeh6wkYOtgnsvkKXBbAAC7XBRkdia1dBsYwrUyTwbFosozLgHkezpazflRNCITktTOxa8SKB8B/AbaIShzNXVh0RzwJ8RAYHhoK6ba97NZJzS2tZZAXaINUKGq1LTo1j/mqF4ebRgSzjhw8qW5ALYEDQEr675vltwn7uxSp74MIdX18e81KkBvIznL7VmdsoX/Gww5+fb9lfqGaUzvTud81jkQUkZ8C6W7WvCDHZQNS/mIOIwYONdI+DD25IZKuT895/O+jNosDdliX+Pwptupp0R/Rpyv67vFGmeqh4zAF7RnywIEoLM3MjRFZHNpWjMpdOpG6AiFtxw8Fw6VHlZJDpH23FGhxh7cfD5KCmQlrrNVGO7mOfC9zdel6em6Pdhbk/m2ZPBpdfskcdL7TYVTcO8RKt6aT/OSqtOgUVFAKGCPvqxerRgxdLhWeIfWFnyGjKUQ9K22D4iBjDnZVj/bUu8viShDfNXhjXgUzEkTbVEea23NQZpP85ciLVgGhOAYwMX6BJtrwqN1wVAaqlPTMOnbKijuOf2dXMrSjNpPkuYlxIYIYfAv8nSkmY63iVbq3F8wwZ7orPkxlPR3zQjoKaTeTurk+7ivBH1FH8Kr5D5iLgXfTX2eDxWRGeiC/bHPwkqCDlwSMfDiO+Z7/OPKIyjN4d1g5KzEOON5uC95v9/G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(346002)(396003)(136003)(366004)(186003)(107886003)(38070700005)(83380400001)(38100700002)(71200400001)(76116006)(4326008)(110136005)(316002)(8676002)(66946007)(66556008)(66476007)(64756008)(66446008)(9686003)(26005)(478600001)(6506007)(53546011)(7696005)(5660300002)(52536014)(33656002)(8936002)(2906002)(55016003)(82960400001)(122000001)(41300700001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YbUyKPovXqZUUQbAek4fUajcG0NYcpXqQRuM4GGGPRAY6kfVgjF1aGaPT4SV?=
 =?us-ascii?Q?ygehAQd4Vx8sm3DY8N1zxTPXOUARLKKMwH0t24YzQ75WFPA/Gacl0d3VHdmj?=
 =?us-ascii?Q?gQQyAaK3izsfUZBETgJp/pW7Y3KP5HIO0WeGW3kLmD9GIE04GL4pZhfpxQhM?=
 =?us-ascii?Q?zJ6G+NxYB6pQWw4fESNM+xwWjE3ryJuGC4wLrWB6+eAQtmcDv7I/TK8dqUpG?=
 =?us-ascii?Q?3BaPYue7gdc1CJIYeQ4AyNT8I+p4dM3qlGOQn+sDWwWDgRQm5hN6KB/KKpLP?=
 =?us-ascii?Q?WOKMxChrt9H5++VxON7REFAWj2Xzys+ri1ZvhkEnW1X1JhNlYadggTA9kN1P?=
 =?us-ascii?Q?rLmsff94oiy1kNZgxXixaDlxOnu/EVAu1zfbbH7y+0pKLJF7q7Y+XKHJOkFu?=
 =?us-ascii?Q?M6qMKPjn17uONXXTVVtOh3V+IlicvlQ9iHSaFuzpNKbwvStCL/D6sZQCz1Cm?=
 =?us-ascii?Q?zfq+Icsj5eqgBXyUyNWqlDnEqCywq5IUbBFzTnr69dic+JF9J7irqsSPa0Sx?=
 =?us-ascii?Q?INCmoofOkh7RT67lkXtZjzafSql6IKXSDHR4MGo2VEjDSj/+RdVvMjkcBHhv?=
 =?us-ascii?Q?HnpyRwp/xywBABAzSOcbfZUB4fNVydA1ImiMvnOxDMgJt0J4lGKLp75lYOrX?=
 =?us-ascii?Q?JTFmZ2V+ivWGEuWefoGjM/aCREuywTuxqaeyNOEY043inJWTXTxplHE/UJSQ?=
 =?us-ascii?Q?f9BdWX5nrZ7PChWPlHBzFAWi3EQDPkV4MXEkPn2U94IeSR8ajmr6jXwoCwlS?=
 =?us-ascii?Q?gFuF1Y2BzrG4GWjvCirrop/Fvi/JccOOo3kIT6mU7v4A//3CS8l/+Yq3lWj+?=
 =?us-ascii?Q?CR1pD2RXw3i0PRAbXgSSNpU50aw9wVIJv7v1d1uFrp2VUVkPenhh/6NkKQ0Z?=
 =?us-ascii?Q?cBKx5XSMR9NoOKq/mA/Yw2Io4PLhvFZVBA397SkrdHuy2fIcsVIVJnxgIpwf?=
 =?us-ascii?Q?ZSEEi0+a6Bi3wc6ZBUYQs1a2yFup7peYm6M+vkGKuZZuMTSsNIcwMlDbgiTE?=
 =?us-ascii?Q?r/VlQAA9GQnhc1lFyiefHmppylHGmyPPCOOCyWlSVe9xUhyPBjcD3yr4pJIi?=
 =?us-ascii?Q?Py0eP71X7q6dQWX1JSz5p8eZocyMbyIdUsndZ6ahibrFFBv2qWE8zpJQALxf?=
 =?us-ascii?Q?EYpysD1ek/Hf/mPyGN4q515o3zXE8hPFob2ITVyIYvUJMEMp0yd5O9ffK/Au?=
 =?us-ascii?Q?EjKB1i6hzfLN2tJWXmAf1gEckmu6uZNNKzMuD3tmt53J6VG+DQUGcIiq7Io9?=
 =?us-ascii?Q?qhGhbA033D+aNaXNox3yxWLjdWGDTFLl6MGaCJDO5D1TUY5bfuvujtPWWwEX?=
 =?us-ascii?Q?gZnM+XLi3wUJRoksgRKsIMvXejUVPId2v2yzg6qeGI9t6x1p5DFxlhYu3oAM?=
 =?us-ascii?Q?y4amW675d9tlTVQz5Nc3OCmdQxT8KsDe9fFxUw7PV7JnGP+VpEnT9st0t+0Q?=
 =?us-ascii?Q?CnzB+y01Em7lw6jnOquGgOG8KzHbaR02IC+m3hj1i9OB2AbSsGHZ8drepuwX?=
 =?us-ascii?Q?YEVCyi+v5Qx34xJB7OGQVYxzh4pY2Onf1PKHoecAO7BryZ+5ZZ8WxtjWxAcV?=
 =?us-ascii?Q?eBiHWa/r+rHKfyC9HbaJY+hhnzUjL5db/j63Cnm/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e91a74f-d682-4b22-a0f8-08da6eda0070
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 07:39:41.5028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2bbRC2XuV4VjigWTPKH1b7+kExl5L3LWNhgSNKFt7BJGUeh9mi2QxEGmFQ+zHFoP+L79rWlZYQH+kZ04LVZsUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3456
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658821184; x=1690357184;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wx1X7jkOWgDEvs9pNFMV+zIA7t88gvZKTJbm0nOCv3w=;
 b=Dwih/wTUGj1nOJq+eE+9YhVyPv78bu6c9aF5y8RKPlukq2PvJaYdfp8N
 t4ofYDBkrKrLSmWPR8FJp8LEIUwOe2xqnPw1Rp41MgvTL9MpAaG91o6/E
 D4/zOWv4MGmS3581NRo/WKfZ6wRoo9YJslwG6XZjKlibBuWDgLKA1NRL6
 9BFW2/ROfq5xs8JMz3IGFGqtlXbdO9Mtb/EUbUPFkZ50jkci3ceQrh7Oo
 QP61d3oV7iWo/CB3bT9NMe9S2oEN3o88wZ/YHpNlGlJJnCLmOxECdlPLY
 aozf5Pr4qe3gClajtIc130QeaFGcfSTBZhkoMefe3mYYqlh3D1iFKCAVb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dwih/wTU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 3/5] ice: Enable switching
 default tx scheduler topology
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Friday, July 22, 2022 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v8 3/5] ice: Enable switching
> default tx scheduler topology
> 
> Introduce support for tx scheduler topology change, based on user selection,
> from default 9-layer to 5-layer. In order for switch to be successful there is a
> new NVM(version 3.20 or older) and DDP package(OS Package 1.3.29 or
> older).
> 
> Enable 5-layer topology switch in init path of the driver. To accomplish that
> upload of the DDP package needs to be delayed, until change in Tx topology
> is finished. To trigger the Tx change user selection should be changed in NVM
> using devlink. Then the platform should be rebooted.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 113 +++++++++++++++---
>  3 files changed, 98 insertions(+), 20 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
