Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EelL0fSu2k4owIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 11:39:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 100972C9962
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 11:39:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B68C40FC4;
	Thu, 19 Mar 2026 10:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1jtHwf2U2Xo; Thu, 19 Mar 2026 10:39:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E15440FC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773916741;
	bh=7Gc9VmkEIXg8jsPZYz4Ke8c3/uzIUh5WiJHj5pkvY2I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cf2hLQw04X2GIGFFLg/vNAcAC9l9/Bw4fb4r0mz4S4H6QFGdjroEigDvRj6ALJFeK
	 1AMzzZJlzCuE47XwQKeByJEJWkR22WZ3e/0tmk5wmjvnwCEI7hcYpyhe21CIGz01fI
	 To/YoqXUuaqV40xUzC/wabQzPwEZnlZ1eVxRZvSVDqvqMcZ3x8hZjnnCoZn9ZD/+xM
	 hqx0y96L8cKjfa7+oa8qnYhxi9mKLdyYKOefhgydKY1JSwuuYvq7s/F3FDUUsp9B7h
	 VCsdnsHqrZ1a3tqs7eeUsAKpFjP7WfZHmNPkAGzVCF07INa9Pb2JWdO+xDrP0qSwiM
	 JbAT0ilVRLl0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E15440FC8;
	Thu, 19 Mar 2026 10:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48DEC1B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 10:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A12340D4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 10:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id suf_c5tOV3VH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 10:38:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E11C40D44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E11C40D44
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E11C40D44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 10:38:58 +0000 (UTC)
X-CSE-ConnectionGUID: e17RQS28QnSb/e2a7j/DAw==
X-CSE-MsgGUID: Gh6+j29QSAWucsxwD0dQMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="73998679"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="73998679"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 03:38:57 -0700
X-CSE-ConnectionGUID: aoJmje5rSAachocWeiOWGQ==
X-CSE-MsgGUID: VlcylwxAQAuTEwoPtXIE7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="219894216"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 03:38:57 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 03:38:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 03:38:57 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 03:38:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KmTPZblRQ9rE1YEjLiWgcJ0C7Cy4Og/eFjYN6RkhE7r7Q4OLjgv9mWLjpCWZy+v582AWX5oNd6EUo5HJam99R3TJRqy9ttz0W0gSJuLSmQ7QmOoa+mWT6cRRwY8xXSLMntBi9L7ARbWMf3ojQMvJiNdF9lCpU/uiUtZKKvzATDusDL8nTwQYVTkRCn8vk0LbDlafUzYORV+lyOu+SzcCXW/bLNi46DSC0d7YD6Q04TEtP0Jlm50VwON/DWYBwKvl72617K23fNIq6JWt0bix/yDOvIo++ixBNH/D1UTmcOWjHlNtj89gS4FJnFwxa60A5tgtsOoyacf0bY/ZoM2yew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Gc9VmkEIXg8jsPZYz4Ke8c3/uzIUh5WiJHj5pkvY2I=;
 b=OqE3jjqxeS3ywfY0w7WLlfV59Cu2M9M0FjNKn1xYm4+fT+rNJuD0eda483IYZ3ALu6Ty/8yqezIOCE7Gts86jV966bqK1UAEEtWoLtE60z9BrMnscqquPr/L5zFDLIl5+Q4z/FDLjUOlGVFRRD3TFNKLitQ9bvSnGdYCmkraa7sUEfESdfAtTxByqG6TCE2N7vJ/29oV0yfYhy/PVfFZk6ET5YHbH0lTPf+l41rPuGjuCLMBTX6DbNTRXH3aIq22dQ/SfBtDJvymqFuEKJoM9MUQzPxjCYUnF5N1apOfmho7Mbdhz1oUnWGfR9vlyxxOrY7kBYkFHZAKHMlcNQTbBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by CY8PR11MB6916.namprd11.prod.outlook.com (2603:10b6:930:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 10:38:51 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9700.010; Thu, 19 Mar 2026
 10:38:50 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Oros, Petr"
 <poros@redhat.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
Thread-Index: AQHcm/S7N2bP5X4h90W+5SzeOEMm27V+0TSAgDcP59A=
Date: Thu, 19 Mar 2026 10:38:50 +0000
Message-ID: <IA3PR11MB9301E2C2BF261F6A69A86FBD8A4FA@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <cover.1770882260.git.poros@redhat.com>
 <a76096058dd9b6d0cccaa5c2c699458351d02cec.1770882260.git.poros@redhat.com>
 <aY2hnyXFM9wplF3i@mev-dev.igk.intel.com>
In-Reply-To: <aY2hnyXFM9wplF3i@mev-dev.igk.intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|CY8PR11MB6916:EE_
x-ms-office365-filtering-correlation-id: 1f2bbda5-5ad3-4846-8ed1-08de85a3b5ab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: Kb9jF086oN5gTQyfY2UJw20N5747appN+U0/k13S8ccwzDIFS8lDtxUDrwz7tAvCymyh3plleMjWoekbfYg3cV/VivpVMzwyZverYY1tIJdmMzrSDjmkkKYleE4ZKnSz+/RPDPrD3kju47vw34wpaaYvRGEyvRlh4EKGmw8FccAPCMJmoM2Ohri1v8SWWQqyn10PZfMkcSyyo/8wSXj4+/3nhG4Cm9eKLEi68n9Y7H3PlozcgQc2+1rny0Sa0gNvFqXjinXL1hIVSDV0AuNdLn5UwrSK0d9+ju/IGPNbkl0iRfI6YAKBiLYYu/tpnKpXOkR87JgV1fFxq03Rh4LbK+A69sUnYSUjOPmxo9UYaEEsJLwpNfa/sDMi0wVD7ZfaKK9YoVLS/Sgzt/iZ4+Op8BMK3WY62Bv8f41yVXu6bEFR0zcuOlZ0XQ4N6cwp83WlZDPXBSlD19IT0BhhvIURj4RTD7MhkctLQrQygxcU/j0GIuFt7SifuI9DQCngrHzy/R/VQuhQpazzsxTotbf1g+Zr2Ei/aRwwkuCiFE8hNDsHsxtlEZsOFaMoFEny6FL4SiDXvGxJ0VWHugt8qk3KLvCZMXkom/Rha+9V/4KT9PD/BZAxfczghzOSvRIjqk8YmMsDQSDacJBluc59ACTRXBSBU5tro7/FjgPHXKkJvE2drhIzTsZ4nStxjO5NXWnrZ9EWewbQDd+RAV5hCcgyrBcO7BRNjzaJVLYOiqNaGW2HRQ0TCAD47mhqBy2fZBaR6f0uvviuIREAJIvkaG4LqRfmUuY3ssMLBXQrVvXbaL8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SYqpcVHZWB8GG0YL/QSBbc+uxPtZXdsvESttA+tSje6MH+CeIc/HRHtz0M?=
 =?iso-8859-1?Q?/SV82cpyHANTRyzQafN+Q//IovSQ/3Bb+xePB3nh31cA4JxDrLN2bdt48B?=
 =?iso-8859-1?Q?BJFPoAmpWSfJg4pQjDayZcCGm1CRtFQtBF+dVZ4NfJozViNQ+djiePqJ0d?=
 =?iso-8859-1?Q?FCNPho4FdxpAPrzO9Lbi0NNysFIIqmyV6iJ14WwxLTw122eQFz6qHBAMAW?=
 =?iso-8859-1?Q?nykC1EzIokPMJ9EHLCcAKm7TYQDy+kSvtvvObrcq3QiCzI9CLcJYY73k3f?=
 =?iso-8859-1?Q?oXOXuw37flQiDzKlaEUGeLbsHnCpBUhGilav4R09XyYrB+ytb8BYm1mTQc?=
 =?iso-8859-1?Q?JZjrDYa+ct2XVBEqEyWPyspLQav5qi9CI+cF1SYdJqrGVksbv5NC0thjHV?=
 =?iso-8859-1?Q?PI6TpAWmtL0Ws+4FZ8cnb+OO5hCq4jo/PiFmsL+DbWX8sSzlsaXh4ml8xg?=
 =?iso-8859-1?Q?4bxmn4gITTrkiNAyWf+YCw1Krq0PYw2YctTuMb16tmrD1WJG6XSDNIuAh5?=
 =?iso-8859-1?Q?k3nlClMnDvSaDcl1TKCMtacd6h2JQFb1f64/10xILKsZuXSPbtpYEWcJGZ?=
 =?iso-8859-1?Q?2wgC4E0/hJh2JzOGhmuA/kIEvKwIXKeEQdcEbvojZK0a+RJ2+VcGHxu1AD?=
 =?iso-8859-1?Q?QQmdQf1HXHRQ6u9aHWNlm8Kb1k2pq1fCqWyPU2dwvqlbHQPe7m23CQj0kL?=
 =?iso-8859-1?Q?mupdhmpsRLPOIu2V5NKlycQkmbZUqMFxYX3wfahJWEiH67r6w05Z9AH5jA?=
 =?iso-8859-1?Q?v7ppCJFdEH01M/1IeigUQ32lH6CijBCMUg9Hlb2Yd1dg0BWHs8IU6hBaHD?=
 =?iso-8859-1?Q?zGFRVDWvhag5S6xAKXK0imIva92P5ptUwWR6aIdcXBuDQeRDPzyF7tQDcj?=
 =?iso-8859-1?Q?+0wi8XF1lLIK90kHY+ZKL4ZBz8FtRfsPsIud9wPPEfExnrqbWJMyiqHmEh?=
 =?iso-8859-1?Q?c6N3gvpf2vIWawEZ7/gEvoGlxxD2DWIz62MqvXr4EVHtsfpttSaXaZ637z?=
 =?iso-8859-1?Q?j8gfxWaaZVWuzx+exCnKhRd8kIwqw0olrGbNdZRd7JUElAsKGgXF8v2uab?=
 =?iso-8859-1?Q?miwEGIcCixjzIUqNB1metp7JthJuHytm3ig/xZFYfIHSDl8TvBIVEuL9ag?=
 =?iso-8859-1?Q?n2vOyi0iLdHrlID6Qgl6UhL2xt9bisUiGRvia4uBOlMfqRN9lehxxk1sTa?=
 =?iso-8859-1?Q?+uKSzdTO6wcFrGggYWlL86EBQjlfCzeJoCNV3wyBC3SBY2wHguzZng1NLD?=
 =?iso-8859-1?Q?njNbop7DpR5HXvsfalfYp2PWsc7BTz5zPlbVly9JpQD+2ioCk2naKP0t0z?=
 =?iso-8859-1?Q?lGPq2nEwScata6NLw5YDwKxamCefIqUlpdHpd/4TEqWw3SASf2sexAvdnn?=
 =?iso-8859-1?Q?+vGPi93EcPnBFvedlzJ44f4q31AIzC1J8UetmZcgNC67MrQmx6cbJAkcXm?=
 =?iso-8859-1?Q?ZKGnpK7gJ62PMjqUQAYX+Rw3tEaPj3LSXmHVpX2KPVIyTf4fu8as85uijz?=
 =?iso-8859-1?Q?sLFOaR1himJaPLT1DRsjKP5dhNnsNHQ28Noc2HoKIVAFmWuOjAIIauhgHx?=
 =?iso-8859-1?Q?FXHiW+E2L+w2pVjvtR3IxLJpUT9NncdvPb/L0zv8bC9l1JGh9cbubXhcuV?=
 =?iso-8859-1?Q?AcRTGI/miXdhDKvNm7z3nYI+GmPXHauRJVbzFUYHcs2TUFFf4Ck7nfntgd?=
 =?iso-8859-1?Q?OmYX/nsqS+dULVQZRn70RD4qhvZxPF1yZmljSz0HYjRFYWgooGR8h+WgWL?=
 =?iso-8859-1?Q?S+cIVp6wfQbRL0Kp+b2m4z9gZ25iLqNALjwIYG0VzG8ugn1FYTEIWZQPGz?=
 =?iso-8859-1?Q?MnroULRBPA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: psGR+qzs0Tq7wdCJuTibw4rmqBT9csag6Pb34+4728kQjRqacnpzvqIdLSM94r3lz452OaAjGgvLliEVoAUv1V1lDr16GWF0KzlYR8xHAII3/3Tod7beEQ8Ba7KHgPNwnu4P+KEuU0u8WaZym7pMj89VHT7iaQjYfJUuKzkF+iDSg2CRvR0MuAGgdO25U+TaaNp1YJSabMHfcbW+dnTDGaw+kAgHFcCi2q1TeewsPhLNbWulgQjM2Jufl+OwDPzztLANjAS2+m3uj5RxMxht6/jQbQ1Ws12qIFxsR4IwlZD/5w94vcFDa219lVpf+3eoVm8eq3fsLlSJP0zvXEyKeg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f2bbda5-5ad3-4846-8ed1-08de85a3b5ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 10:38:50.6970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TZ9L2NTEafipq4KGO+v8lxzAxlMd8hxnf9Xhh5j8frgV+/qUbTBFpOmOgBn5ZQl1wbSAsPIPNIDRHel3cOCRKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6916
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773916738; x=1805452738;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rIs47jnTf3QnWkET8sbNslyKVDsgKhRn/k+vVtIJhps=;
 b=a/1YPTUCyoxj/iTt9HomYpZ9gY/ZJLSfmMzwbf3gbXJbukYHBKkSTRSP
 jYL4XvoUWbYlC1CHKrKr3g4oDg/sB28iEmE//tY+And5oN4qUNh4RMwUk
 ueGfCMEo98U+U6u8ScPJl9pxUkaHGBSq60cOX17mp5rU6zCbRq5Q0dqai
 LbnVs7E2A498h3YKn7n8GgQ7JwKcxS0maUmVXW1nade7kGFnrL78NTW1i
 D2E+9Y2PHo5MUOWjQBcDgB/m3So9nP9+xp0Aa0DnWIPsQOBtomVsVNOpB
 WkjmkoStuFbYHGWQJ6CNm9aREkqd/cdx6q1Ftdj4q5/F8q4xNmzEv1wNZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a/1YPTUC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:wojciech.drewek@intel.com,m:horms@kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,lunn.ch:email]
X-Rspamd-Queue-Id: 100972C9962
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Thursday, February 12, 2026 10:47 AM
> To: Oros, Petr <poros@redhat.com>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Simon Horman <horms@kernel.org>; intel-
> wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted read=
y check
> for VF representors
>=20
> On Thu, Feb 12, 2026 at 08:53:10AM +0100, Petr Oros wrote:
> > Commit 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")
> > refactored the VF readiness check into a generic repr->ops.ready()
> > callback but implemented ice_repr_ready_vf() with inverted logic:
> >
> >   return !ice_check_vf_ready_for_cfg(repr->vf);
> >
> > ice_check_vf_ready_for_cfg() returns 0 on success, so the negation
> > makes ready() return non-zero when the VF is ready. All callers treat
> > non-zero as "not ready, skip", causing ndo_get_stats64, get_drvinfo,
> > get_strings and get_ethtool_stats to always bail out in switchdev mode.
> >
> > Remove the erroneous negation. The SF variant ice_repr_ready_sf() is
> > already correct (returns !active, i.e. non-zero when not active).
> >
> > Fixes: 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")
> > Signed-off-by: Petr Oros <poros@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_repr.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c
> > b/drivers/net/ethernet/intel/ice/ice_repr.c
> > index cb08746556a670..2a84f656405828 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_repr.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_repr.c
> > @@ -315,7 +315,7 @@ ice_repr_reg_netdev(struct net_device *netdev,
> > const struct net_device_ops *ops)
> >
> >  static int ice_repr_ready_vf(struct ice_repr *repr)  {
> > -	return !ice_check_vf_ready_for_cfg(repr->vf);
> > +	return ice_check_vf_ready_for_cfg(repr->vf);
> >  }
> >
> >  static int ice_repr_ready_sf(struct ice_repr *repr)
> > --
> > 2.52.0
> >
>=20
> Thanks for fixing
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0

