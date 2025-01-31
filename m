Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE6DA23842
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 01:30:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B42E60B75;
	Fri, 31 Jan 2025 00:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mV-iOZID3DbQ; Fri, 31 Jan 2025 00:30:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FF1960B89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738283446;
	bh=Vj2/H3PmiG2+CD7WQviFz31TeYQPkQR2uwjV11iPU0g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G0zIqO65mBmgOygdXfG5iAeydRgMvenLcCIYfPbOnhOYMtGhXd1Jg+kbFo75HcHcy
	 VsFbWwuMg0rHvpWGX3Urg+se8ynV4ZinnW4xRx30uBcym23Qaq8PdYk9EP4SK5KlOq
	 bUEBEC/gfoeMTt+kFH9tSbCdoDYAMut9nADPOeEdPlUjzpAyDUWeJS9+BSX3A2paZh
	 U3YuJl5jnarwPnmyxTARDAH+Hux0R2tAs8DwSxrD0HP1FVKnKUTEhgvoY15I1dbLhw
	 ymAU3VedKhj3gQMVsRV6Hggu12r6l4Q7j8eUxDLg3YlihWU7qCCxEUIb3eN2Jh4Emp
	 1EuSWtf0xsWig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FF1960B89;
	Fri, 31 Jan 2025 00:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ADC2316E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 00:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98CC740274
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 00:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwIk2uzJGiWA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 00:30:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 38D5440103
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38D5440103
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38D5440103
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 00:30:42 +0000 (UTC)
X-CSE-ConnectionGUID: nzNAe+FoRXiy2i4MXPHoAw==
X-CSE-MsgGUID: knoYI9U9Rsi5B/hYjF8LpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="49512392"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="49512392"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 16:30:29 -0800
X-CSE-ConnectionGUID: yZtSsIbqSWmY680hQvkIdw==
X-CSE-MsgGUID: kaaRyMyWQhiELvz8vwOHbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114627376"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 16:30:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 16:30:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 16:30:28 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 16:30:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gfs1LHrMh+3eueDXjInCMLaqFg7C/npVAXmR7At5CGVZWYX5rQLVUBsKHYnMB0vTEALWEKyBnRPyBZkq5CoK/Y7SVVxT1z+zTKdHxBoh7O09Wxm6wTCZau1//m5YgFutBvHr/p05bHOBMNfxZ0/19UKcKd9B3FZTdHj4GessEoWVSfAMirYl50DJCPqlxlHt/irFcWe1ooaB8BknyeWaKpmm15oAPO+4IQtRC0CdpB5MRtMxTZNAnkg3dKzo0Qx5xjvEkUx2YMj242vnwJmhRKjV6VO/urL5y014hl5BAqRD5aqMkJB/9s0hik+rnd19SIVeT7b5gjpA4Cl36oZQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vj2/H3PmiG2+CD7WQviFz31TeYQPkQR2uwjV11iPU0g=;
 b=w5O/tNWIV3/ZyKNinqv5/mvv85LWDWLdDb+iiN7FrrOxsBjB9u6+Ypo88esAl3cO2MQduyfZNrkGlhpyEyrRoAXqPuzT+9f9hJMTqVZCp8MrO2VK7aFZtR1k+fd1Z0B2oYEJAYQqUi4XrbHqp//AdeAbZeA+mvKIi2VSvXyw24ir4rycq59yP3uv6VD1j1IPDVc8AQcFGwOkLB45WwS2RWQhzwOUKgER5v0OB5oVWy3hnbvijLWS/g8+jd7gEES17B0mx9poERcSiiHVVXThEpJKxo8kxlFTZEZ3Zw4SFVZsK0hAEWSSN5tidz4JBzl/uutPOgMXRIdDA/tRuyPdgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by PH0PR11MB7615.namprd11.prod.outlook.com (2603:10b6:510:26e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.29; Fri, 31 Jan
 2025 00:30:22 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%7]) with mapi id 15.20.8398.017; Fri, 31 Jan 2025
 00:30:22 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "xudu@redhat.com"
 <xudu@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Simon
 Horman" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Maxwell, Jon" <jmaxwell@redhat.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "Kuruvinakunnel, George"
 <george.kuruvinakunnel@intel.com>, "Pandey, Atul" <atul.pandey@intel.com>,
 "Nagraj, Shravan" <shravan.nagraj@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-net 2/3] ice: gather
 page_count()'s of each frag right before XDP prog call
Thread-Index: AQHbbafSWd/VdIiosEix9vbGupfDS7MwEv6w
Date: Fri, 31 Jan 2025 00:30:22 +0000
Message-ID: <CH3PR11MB831368FB5B682650AB612C6DEAE82@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
 <20250123150118.583039-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20250123150118.583039-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|PH0PR11MB7615:EE_
x-ms-office365-filtering-correlation-id: 1c2a5fac-562e-4ed3-9b48-08dd418e730d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?D3ycrsjLOMv+xl2l0vGR04CtOlzSLl5iDNKCZPJB4fqc88nDvlRVTnAzXyYo?=
 =?us-ascii?Q?jkThB1S1fY1NzfByRy79Q5Y1CZhxg93vsYfO8OnOPlfilTJA67r9FaZf7PqK?=
 =?us-ascii?Q?tZVX3POqc9RaBB4I2JmgJzBHtQeb9QVKi07cJjDEbZAhixGfWB6Ahseh24yw?=
 =?us-ascii?Q?+I5mRBzxzGBTpig2DYC/9FRWMzD+DPFh2OXoOSJrSpCjhGrz7kx02iRtXsAT?=
 =?us-ascii?Q?ZTV6RHG1b0eaQsD7jpRzsAbmV5yR8g877+bfBQn4gDVSGdqfviD+HZ59aY8L?=
 =?us-ascii?Q?Y/BZx2R3XFZljQrfYVOl1jVnsa35tr5x5QAAo0oarF2ipb6Y2GIlD9jxP7gc?=
 =?us-ascii?Q?Ow6f7CuL7uH6QnSGvVKu2qZs+F6RIa/GO9P5FXINxWhVEGqEehsjS4pDqcjZ?=
 =?us-ascii?Q?oELjEWoualxMHC95f2gokSUn9YgUo4WJ6Ry8wVgAi1NUJ99cdPvo2CyDzMcQ?=
 =?us-ascii?Q?4qhPhJ68xL4ajCzbeaPkyHDrWK4DlJXu+ft6NtwrRChG8DAdi/ad2cHvJqfa?=
 =?us-ascii?Q?7vH6v4zmSfGSpdxDCjwjRG3rbvR8kkVk7JUrseWD/XwZMjDx8QH0jfmHvRBk?=
 =?us-ascii?Q?w8y+tUYh0wOBIqHhYOwJChOaw8uBrf+7alByAe7n66wbDwcnS8cFh8zJcnx8?=
 =?us-ascii?Q?Rq1/NKtPyYuSfRY3g/Utr97MkaTu46/2oa2w8Rs9jH4YxL3kUk6D2os1GWPC?=
 =?us-ascii?Q?uCjGrhhvDk8GPCkb4Z+4tRFBCw74Lswt94XLeHd/wmzao+EXBjqJzo7YvDvM?=
 =?us-ascii?Q?lYWrmV4nNAqYc9HiFPWJ+cxhyqUMdHU5eaeM9DALvcZDS3en5MHPpgVrutss?=
 =?us-ascii?Q?GtoeSeEqfhVopam4J5ygr2ZaQpqSE8wxLvaKllSbwFQHc8/+ZpHHLAKevBOt?=
 =?us-ascii?Q?VnKmta6Eka3P/I9jWc7GA9c/rpVgIKZxHGvcN45PcE/LNlR/lkCvz6LPWfgE?=
 =?us-ascii?Q?xFq59xInBZVsVfyU+9U1pfEoYfEgag1aJjnq7exRlCgIjPxQ7E06ygXUuSTw?=
 =?us-ascii?Q?XHoTU1JVgkBJAcVMwuC0iQK0SYcNCoU0zLYzLzRtRo7miHFLVd2IHGqZojYV?=
 =?us-ascii?Q?aVUdgh/13QwHrMjcoaUjgOMUGBJBcVbOwyppK54a2+cb+6P/Z8/9m33NK/d4?=
 =?us-ascii?Q?CpcfKK27D/FM6RPIPfpY2MKV9+KvXOBhEj5IF3vHy62c+NI0jBKjHJIvmch2?=
 =?us-ascii?Q?SswzvuQta5V1NNTnymWkZaMhvwtuI7tcaqeyqPk/+hl3wUZ3+em2UTYPDfeh?=
 =?us-ascii?Q?sW2hHvkwQ4LsAgIDvJlrYhlk8PjpzjEW2yXQfD4anbJz3ZONsyFW8S/lmYoO?=
 =?us-ascii?Q?aNynd536oCbu50fi//v90Ynqxx3WXL7fFj4Zo9PkEslzW0ChQpJkrEkr+7Hx?=
 =?us-ascii?Q?ioni7mwPJFWrHKsvEWHdJF8ZcjmrniOoB8xio4ItLCSIokgsn4tlzGDxETef?=
 =?us-ascii?Q?YR0/rANhiKD6ON5UKTh5uDbjyHI6LDqP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ibvVoz6tCpqsWSVub4wfgPndXkF9PUbwSP/Hn0FH2p29JPkDV7nywOCEP4ND?=
 =?us-ascii?Q?mMZyNOV5LihuxkGgqrPiYPdzpUHdviARax72nU9a3c9DTy+/gsRdPhyOWlzR?=
 =?us-ascii?Q?Qe7geBwj8xKHcoLwk3fPz9U0eCNzcXHan4qdbNaoxPVOgQOKRXNl2fsio+vP?=
 =?us-ascii?Q?vR1L9kgIxptyPoLaTyPHEqWagc/bbtmJaUuAqehg7aoCSLfqxQoCj7dQ9GuZ?=
 =?us-ascii?Q?BoZpZf+BH6MEKfgEmSlaVXAuGCQL/GnpC4rTdcWqy3sqUa87aBpDVaWrgy/w?=
 =?us-ascii?Q?wKTylrOz/qgjZ989CNFkXpZBEqpOKmME7L471ej9myosshZaPXWfPUso+Ja3?=
 =?us-ascii?Q?jNLg6YAWs8/X41l9Dm1HxQ/5pQX0RNT31fBWxpFI9wIWyEUiclqYQUpn0UnN?=
 =?us-ascii?Q?9XMMswOa4Tv34qXD0iKnqeRdM7rbLW/vHe5A5wqzaL3wrq8a+RRjPvbOEEZS?=
 =?us-ascii?Q?2FIUu9aHnZwI0YTIWMvo9WM4VClCsDltMmIMyaIOQaccnkJTYiaAEUki83o+?=
 =?us-ascii?Q?/97IZx+hXHsD/U99X+LhZ/dxz32KMJ/wlbvEnAmUHMemgV/F6R1I/3RtU2kr?=
 =?us-ascii?Q?3JK8OngP4IaGw7szmAGb7urhnGIApTY0P3rtM4cLkFjujR8LZEZWvX6oFSAr?=
 =?us-ascii?Q?dKHSkI9r9IPtpwmH5CKqR/Y2/doFg1T3ZXsaQZMwFq+AswnOshRhiec6f2/f?=
 =?us-ascii?Q?CduBgaJ7gFs64J49wOYs+W3YTarP823KsbHNJMG6lXtvGIRJvO+jVrywy85e?=
 =?us-ascii?Q?AdhouF1wIIVu41kMyaZbATz/wGXelVEr15kveFFTCb/Cs+UVjN49Yciki71Q?=
 =?us-ascii?Q?6vddaZBSzzf877k4xolQxa+72NewF1kYnU9Hr2BYk44o+7vduuf1fYV3Xt29?=
 =?us-ascii?Q?WjW3Sb42yxIn0FEbqUxm3DnjzzlvJRmQzXzR/NmgRi3XBzqnumWernE+ziyh?=
 =?us-ascii?Q?R5MwkmFabGMMgNMwwRMmYqv2sK1naiX9t9wTq5bV8l1mfg8qNE4HT1lN7dUE?=
 =?us-ascii?Q?tdv6zn5SOaoP83OU64KaFmgheVYfm02WA9RVlvkhOxOASJYX3nGux6xM5+mq?=
 =?us-ascii?Q?oCl91luv0MZBhmQj1O+KAp0zMiCzYrxkA+CQIVLfxwzRoAgt2f84GSb9xF4y?=
 =?us-ascii?Q?V09yF78UUBiHNCjtH432SKsGcGIV/+nFp3lk8gmijnFpF5nLcxVieJOJC4VG?=
 =?us-ascii?Q?OJgTqnNL0Tv5aY9bg0AK3fuwfJtVxxKFNoeULv4TTSSUOEBbGVaZNXh0icXf?=
 =?us-ascii?Q?XYK96V6jMrguXek64J07RZ5FuYN8vmgM+9NokQ2hguCp7+DiaGntAmLkdQCn?=
 =?us-ascii?Q?3yPCZkSThnQk+8af4F3q4r7eWOnq6+CGKfh8PB2kGJHscwv2uZRnTb6Re6Yf?=
 =?us-ascii?Q?1t38xHuo21zw2d3nDqOvVyuGTi5OpOOgeDUruTmibof4C1s1VHD2eIytqVSJ?=
 =?us-ascii?Q?7IgvqRC2W6guYQNqfYpwCYIsUMJ58v+Yk6kslI5aob0DAB25gPW9bd42JGyi?=
 =?us-ascii?Q?G/qYCqLoH5RcUvz+M9BAgQt1xpw16i8V3k2RRltR/chmdrIIPns5X1SV9Ip4?=
 =?us-ascii?Q?b2nCr99IWvgBSQoJzbgKCOhF/B9qAlUsFP1oMClb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c2a5fac-562e-4ed3-9b48-08dd418e730d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 00:30:22.7395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Of9Pv6XYg2f55TRZ4lclUi1jjPxM/fZftTn/hSTe3YqQQ/2gNAvejZDbGj3lGaZbglq9Q3wpu6ez+aty3T1XWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738283442; x=1769819442;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vj2/H3PmiG2+CD7WQviFz31TeYQPkQR2uwjV11iPU0g=;
 b=O29CCEp4a9HWVYT7UqTdhr4oaCa0SvHUxoCKjsR+u+xRuPTuqiZmhw8W
 f2sZI/dNRVp1xQtEXyaKT4Difz+K0ITBUIZ3NJTeTirDVnVg0V0vdQX6D
 PcyP6eNxT/bRECRNQvNac3dbKj2Oxosn8MLy7qnFZQs8ZDcs/Ai0coVfT
 PV0vNwcVVRE4wkRrLRS8hcRX2G47xiISdHAhY+m5WyFXHq7Af2R4a/4dx
 SqWYHut1IWZUjP7YagjyuzcoWZG4A+w0L9PgoeFpPjtysDpAoPrvZ5oqs
 wU3My5B04wNbYLuJnqjqg6clMMdMXKwVocKlxMDOlstXKBEgw7if6QRc3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O29CCEp4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net 2/3] ice: gather
 page_count()'s of each frag right before XDP prog call
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



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Thursday, January 23, 2025 8:31 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>netdev@vger.kernel.org; xudu@redhat.com; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel,
>Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
><jacob.e.keller@intel.com>; Maxwell, Jon <jmaxwell@redhat.com>; Karlsson,
>Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v5 iwl-net 2/3] ice: gather page_count()=
's of
>each frag right before XDP prog call
>
>If we store the pgcnt on few fragments while being in the middle of gather=
ing
>the whole frame and we stumbled upon DD bit not being set, we terminate th=
e
>NAPI Rx processing loop and come back later on. Then on next NAPI executio=
n
>we work on previously stored pgcnt.
>
>Imagine that second half of page was used actively by networking stack and=
 by
>the time we came back, stack is not busy with this page anymore and
>decremented the refcnt. The page reuse algorithm in this case should be go=
od
>to reuse the page but given the old refcnt it will not do so and attempt t=
o
>release the page via page_frag_cache_drain() with pagecnt_bias used as an =
arg.
>This in turn will result in negative refcnt on struct page, which was init=
ially
>observed by Xu Du.
>
>Therefore, move the page count storage from ice_get_rx_buf() to a place wh=
ere
>we are sure that whole frame has been collected, but before calling XDP
>program as it internally can also change the page count of fragments belon=
ging
>to xdp_buff.
>
>Fixes: ac0753391195 ("ice: Store page count inside ice_rx_buf")
>Reported-and-tested-by: Xu Du <xudu@redhat.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Simon Horman <horms@kernel.org>
>Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_txrx.c | 27 ++++++++++++++++++++++-
> 1 file changed, 26 insertions(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

