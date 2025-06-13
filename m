Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C06E3AD84CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 09:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A37444095B;
	Fri, 13 Jun 2025 07:49:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oVoF6nNnoPTz; Fri, 13 Jun 2025 07:49:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B8EF40945
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749800948;
	bh=MxPfCvF0xPQ5a+x8rH+tC70weKzS4EygV4f4OqMZ8II=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2Uj9aTYk6OdYGIVyO0NxS9hH3tW7cDgVVDRpKx01Jmt3RqIE0rc9vbhiHkiF+Vc7p
	 poPRrtv3d2tfdH/88He2iaxaUO6MqXm6hC937adn42uHkK82hmh1RIvZN0YbRIMIoZ
	 VYf5IbSGFlWNQzoQCRcSlMEsaARNyonAmPXWbZ/5Xi9AMJ4xQFIFp7OqyBY+4axaXp
	 2ZdeHxEN9UzJMoe30d/DDqK/DANu0UnbKHLgbeecr273H20fDEMMDikRBh9ERcBi73
	 mh8GKhoQtsyYfQAH05ErFV+joQVy4XbxBRUJQpETwfvi2JZFHj8S3+bcpxdLY4m3nl
	 bEXjwzD38UI+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B8EF40945;
	Fri, 13 Jun 2025 07:49:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EE551BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 105BA40936
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kIUGurpLqw4S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 07:49:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A801408C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A801408C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A801408C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:05 +0000 (UTC)
X-CSE-ConnectionGUID: 3ErPOP5ZSYKNstMT4Q8V1Q==
X-CSE-MsgGUID: lrXnfVzoTbC3DP8F1meDcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="69452417"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="69452417"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:49:04 -0700
X-CSE-ConnectionGUID: /dG6dd3jSVO3ao/v5MTeqw==
X-CSE-MsgGUID: VDIJSrK2RyuiUgRhg2qCjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148646250"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:48:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:48:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 00:48:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KNmDAzCGMtyFbqsRon99BUt2GDMEvlBXYOTcxkC6sTjlZ8g7KSvnAI/cV0xCEs8wG0l/spE7Rb1n2n6c1wWv/3cO5VblbYXSx4M2GVEuYczJJM8yxA50J2CH0cdjT4tLHxGlwgkjv34ceGneYY1vQw+HVKicYF3q5aWwJ5k4YBWSmwDW5MI4qT7FFaaZVnsBlz+PNfzhR0G0dk2EcQm8slnslmz4Zi6C8A8I+81RTgL7KSCoqAlgnzM0n38nl7rLScNHJqfNAadUTKsKuvBh0xoJ+aK24/sjnIVsHCWkLjADdzCrhgG0TkroVcqhOlZJ96qjsxJgyBECmVnykMCeVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MxPfCvF0xPQ5a+x8rH+tC70weKzS4EygV4f4OqMZ8II=;
 b=lf/ApxtjR5yhC0gtNAWdwGXf2fLZzWQ3WyZNh2+/rULf+0a941xzokHDu7sUYLc+C5h4p1mE3RbrONxHmFTuw+QrWFGttHXOZU4egPbkrFaKu1BHtMeV4peqRSTyCGGrQdCEoNtXkDBRFKA4K4psVWgTeqNGS35GmauevOtD2BJGsIV3y6BGLa1CWhdtVwh5BWmqN2iq1tyo6sJBRdbUR9AkCk1J8ijAs7Cak/Z3PRFYCpMcnnjvZlgxpuQuZ8G2wpsoX9OknRqKlgBEpUK8bCZdHG1L5BBIAnK0genCdLfm9n20aGB2SoXy0WQKaxzpgHBb9UnxfYUHTiY1DbogUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF691668CDD.namprd11.prod.outlook.com (2603:10b6:f:fc02::2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 07:48:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 13 Jun 2025
 07:48:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/7] eth: ixgbe: migrate to
 new RXFH callbacks
Thread-Index: AQHb2/7DWj1aGu2iH0yf4BGK6CMKVLQAtzGw
Date: Fri, 13 Jun 2025 07:48:52 +0000
Message-ID: <IA3PR11MB8986B1E6B6A62DCEDA928240E577A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-4-kuba@kernel.org>
In-Reply-To: <20250613010111.3548291-4-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF691668CDD:EE_
x-ms-office365-filtering-correlation-id: b51c33e1-80f6-4f1c-67d5-08ddaa4ebe23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jnG4W+ngrsmM52gNyUCkzqz81R4Id0OIS99WGWGnh5OahTX/KaWaf8AJmqhf?=
 =?us-ascii?Q?ZHwFB67CW7VRy+j0uTiTg7CV9rFWs29lefQpi5sk9GRrTxcj5ndTWTbmfP+R?=
 =?us-ascii?Q?IY8ORjgO0Qqm3hT6byipHa7Bz2qzGe4o0MfM08ClIj0A/IQfzbhwTH0E3wjm?=
 =?us-ascii?Q?/M3MfK4QlpJkpkn6uq0+wCPDdPf2uK7tLagxHbOOyu/GCWjJA2vsPjsthkd/?=
 =?us-ascii?Q?7USRnEEk673QRDRcBmo4Zb/9lp92CyohhcFTDKZ7nAtBwz0LGZ+GKey7CRpv?=
 =?us-ascii?Q?FgFoCEYqNYrLh4fWHcdG9QfN7H7TybDCs+tZRv9KVz1ct0+ed2VmFAw5bNfA?=
 =?us-ascii?Q?iiugGyg/ZERJJZxrLZgKSArro2iiPxp8anKlKZyDvT3177K5fkE1DCmxv6nS?=
 =?us-ascii?Q?u5hBWpEhkd+FVKgK6Pq50o4agtOc0A6af+HFxfUiFRvY1nWTO6BmATY+iCys?=
 =?us-ascii?Q?TKpkvHcyHnX8M2k0RXJa5ro0U78O81glsAqPtqNPk6IdfX3TE2+seW4iEfi4?=
 =?us-ascii?Q?sf0AdVRM6CK3gUw0H579UlHs8ycvOMMsZ2IQM7DqzGHnnJfYhFCgTxvg++Uj?=
 =?us-ascii?Q?3hwmpO4RrVFOPVR5yKmRjy+BNJ0u3QYxLn4rbBXdBdlxuPpyYHGUOf039aaz?=
 =?us-ascii?Q?HMU0eztQ3AxnrJMLLz1GAgGdjH2vj/d+f5g5t/ECwH0sstbd9ZaHPHnarxfB?=
 =?us-ascii?Q?xK+bIvZJjV3O+50JRpDbfMMv6gEwlePIQhijx09EBZIfVm1i8/F2Ki7W1a5n?=
 =?us-ascii?Q?oQcAQwaWx9Xfwy1efERPhuobUNwkAuQirv/OAANGwcdCmsldT02EE8cfJbHZ?=
 =?us-ascii?Q?mljQLhwozKR8C5PVQGfu5/Nvbh+DKPj7BQ+XVNODRTHI7gVRXite4kWsV/W1?=
 =?us-ascii?Q?Zmpw9PvfeYmf1e2WTBRsRa48YRaVzTOxl31J2xi9vXNCN2isysvNBqJy9vKc?=
 =?us-ascii?Q?eI3AcnolydcdVEdpUs7QxIgqN8fclAsNz2QKg9gwFpvuDfkRy/kmtDHRhKWD?=
 =?us-ascii?Q?wzlYzFOvH+M1lOs/uBEq9FxvTPiNDvuVEMiowWCZhg5yfsU3MaMmC+H6bmnv?=
 =?us-ascii?Q?uccTlfJbIUhWPux9GvIJ4bUb2rVHgNZanZ5o8oUhXtGU86FrvBQTL3oFfsCK?=
 =?us-ascii?Q?YbTIm6uQNaapwaCC3jqTo8y56LBwfZKOmSxipPZzT2loa2VygUmoDHi/CLIQ?=
 =?us-ascii?Q?cRumivbzGU1oEw7ZGRkVGlUz+JHMl0g78B979OqxFUpy0ltkfnjSkej1m3w3?=
 =?us-ascii?Q?pA2elMpiyDjNOyPdOsJxTVe3BROulIGam7Cb8vwaUqLPMs54Kaha7q4z5doW?=
 =?us-ascii?Q?1FM6L4inlaVvm1u6EeJFJmWvo61emAaQHnJztvGkMcP0Q5FVTwauL5+e6fZ6?=
 =?us-ascii?Q?AQnRrOSeZPlp9v0sfaINYuYAnbcQBDpt1GUDL0rx+CJeQmi4FtUwcOcjmUWU?=
 =?us-ascii?Q?r/oq3MWDjm24ScylMjHZ6aW7obzUZfIbeGLHLGXu6ECB7uHAFFDVvA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H123mArDEnuL5wsr5mLZ5FiE8W3HMpvBpWctHgtYDlV3P2cnOPKAsa77g4MH?=
 =?us-ascii?Q?OWrNK2O4o2Uub7czIMoHVho2VXSFGcFzGZheq48d6C1fguG7+0+X3+mODX6i?=
 =?us-ascii?Q?tNOFFfnkeEFSObyoeItyDrCp9l4AnOjZMf7CMw/G/YQ42D/o0TnA8ajw7FAI?=
 =?us-ascii?Q?f7USgCELz7PBr99Ew/AVNL7Cvd9Km0B+1oAEx49MRGd/uYaGy6kCRl+jNHWc?=
 =?us-ascii?Q?ew+dxxtZ494XvyDbosnjoSMERJKEgzJ7+9fyfn/AClP4W05ZVvoi9X8TNtX+?=
 =?us-ascii?Q?OwBYUbLCvte78ILmmPqTCAolaY/VnsZbyDA63OvvxvhLklJ3cDBt1rQ4xbSA?=
 =?us-ascii?Q?SyJKbq2gsZY04c1f/iXZDelu0Put8wfS1sm0Ex3w6Yae0y+Ysvx323EPyR77?=
 =?us-ascii?Q?medioIxddtwrDsLXz9urgsfDMm6I1j+S4vAn8n3peNfzAJWsPzZ6iwBCL5Yw?=
 =?us-ascii?Q?2KVkVuTfh3BTgDvjwCw8ilhMUJaSAZ2MVDR6IuRBy+8N/XXiLxmtJ9iG7JTh?=
 =?us-ascii?Q?TXF+ubiwaizBPpktH5Ql/+ci+ncqUMzQ3oDtr25BTrWQm3ErEJgUxzM46lU9?=
 =?us-ascii?Q?LWlKyXyWeNbHaZt6ImnvPPlQFyEbI38pRJuRgbcqj8rrUNgVxVfbrYpc8x8M?=
 =?us-ascii?Q?8Sn7gaErczg0hAMnOTy0qu1b6sdYWI3uIzONsZjlJUxLiM8L0QnU2ujGEQHv?=
 =?us-ascii?Q?S4WIA3ILNOO/VhjFP3JW5IcwGBFRcEw4toUHl0vJRiLGlcMIKlt6tNZ4Ro0o?=
 =?us-ascii?Q?sAZR5mgEuYr3y1YWFwoDjoesEf5vJNRNfoyyjUL6i0QIGKrWsXpaOlR27ePm?=
 =?us-ascii?Q?8/B8N9ziNxaj9fzPLTHMlZzJTCwSRRioPS/tpb5sgyBasACcbLXWtszH8V5X?=
 =?us-ascii?Q?srTouQqG2no2ofTpuDJ6jw2LKgQz4AFLU8lMCQ4RF5EPStetgmJRfTEMKjWZ?=
 =?us-ascii?Q?s7NZmX14fBrqbvMrTg0Dd3TBsiMVAw5KaE6XneDuSHECN32HTKl+LCvDQ1RQ?=
 =?us-ascii?Q?CmVO5Xt24Px+BidWKZPCSsoLXbWAjGuCUQzwrkPXOn3DqHJlXFMkNFiv0asz?=
 =?us-ascii?Q?ICKA921mmbJFKpO455dEzM1Qyvujle+qYfbpNzIM6Lg+I03yX9yQJFnNtV59?=
 =?us-ascii?Q?655oFEHa63hxmOM/IPObzXv54KdLuiKWo4RVMfChYr+yJ07A85mRXiLJp0gZ?=
 =?us-ascii?Q?Nv5Xe7upeMrdj4LEtxdoQumCkhjBRl/j3mRD8CQH2vqpf6XF3EZDzrZCGjy2?=
 =?us-ascii?Q?WahHPmP/orBumc6xWUJGyPqb19Yt9ctg3hsKE9CdHdgoTzBHXzzW+1XtILDC?=
 =?us-ascii?Q?DGiyFP/Fie9CfEjuSuPSzZ+dP+Tg5/C2HJmAmJQijCUrzaGdTrKY4xo4aEb6?=
 =?us-ascii?Q?b7a8f4N2a6dB8iahG/7w67lySL39VmJnG8H/GEEbaVgjiS5CVy/ipXbhJk3Z?=
 =?us-ascii?Q?DB1yGkOgH9lmvwOT94cnMJGcKk4wJodMnp/IqnfDfE/FHILrVptriffIYP81?=
 =?us-ascii?Q?wL5ODmHWDeyG04yJnqUV/Iz9u5nNTzHn6Mfhx9pXO5bLJ9NZXE90uWjFNVpn?=
 =?us-ascii?Q?9rOUsY4ItCMbNlJ1nF4vSAKqouWzPIw6P4PpIQeLEcd4+vpClbOqlE/S+lgQ?=
 =?us-ascii?Q?vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b51c33e1-80f6-4f1c-67d5-08ddaa4ebe23
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 07:48:53.0272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 17cE31s7AtJkvAyCCTmgSImYCPuHO5KppwrWDoK75k+OFpc79yt6aWZUDmPDEJDawm0oBNgR8DG9W8i+95nJ6yXRjhq3lYowq/FIfaQXYd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF691668CDD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749800946; x=1781336946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sYu3x+yZytpqVJCMXWLjcXkw5wjIIhGcee/JLSiVZqY=;
 b=Z9iYKszApUbtR2wp9vmPFMiyT2UU8x2aqXzDD8kgivatbNGiGCIap13m
 G16f9vmMSmlUeMD628yca8OmA/8Y8TWoQ6BalsrrgygT3rowDFkWQ+Hig
 DCtRgrst/IPlL00OvKig7BbHaHWxWVVZnEboeQeBay16IFAuvUyRl7sS8
 sHF+fQvd2W+Zj+xtRXRoAZz1Lc37540kaDoomEGRFHxkfUVDfLwnLlxuU
 /UIRIjdqR+yVIniU8E6X3+u62SoG/wx4T+jlJqPEdwMSm0rrNcwfWb4Pk
 cho7aKwEa7YElDlFWmUztvNuCjl8l6J7qLwzPnoPln7SWabL1uCAeH142
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z9iYKszA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/7] eth: ixgbe: migrate to
 new RXFH callbacks
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jakub Kicinski
> Sent: Friday, June 13, 2025 3:01 AM
> To: davem@davemloft.net
> Cc: netdev@vger.kernel.org; edumazet@google.com; pabeni@redhat.com;
> andrew+netdev@lunn.ch; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; michal.swiatkowski@linux.intel.com; Jakub
> Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net-next 3/7] eth: ixgbe: migrate to
> new RXFH callbacks
>=20
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
>=20
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 20 +++++++++---------
> -
>  1 file changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 1dc1c6e611a4..8aac6b1ae1c7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -2753,9 +2753,11 @@ static int ixgbe_get_ethtool_fdir_all(struct
> ixgbe_adapter *adapter,
>  	return 0;
>  }
>=20
> -static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
> -				   struct ethtool_rxnfc *cmd)
> +static int ixgbe_get_rxfh_fields(struct net_device *dev,
> +				 struct ethtool_rxfh_fields *cmd)
>  {
> +	struct ixgbe_adapter *adapter =3D ixgbe_from_netdev(dev);
> +
>  	cmd->data =3D 0;
>=20
>  	/* Report default options for RSS on ixgbe */ @@ -2825,9
> +2827,6 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct
> ethtool_rxnfc *cmd,
>  	case ETHTOOL_GRXCLSRLALL:
>  		ret =3D ixgbe_get_ethtool_fdir_all(adapter, cmd,
> rule_locs);
>  		break;
> -	case ETHTOOL_GRXFH:
> -		ret =3D ixgbe_get_rss_hash_opts(adapter, cmd);
> -		break;
>  	default:
>  		break;
>  	}
> @@ -3079,9 +3078,11 @@ static int ixgbe_del_ethtool_fdir_entry(struct
> ixgbe_adapter *adapter,
>=20
>  #define UDP_RSS_FLAGS (IXGBE_FLAG2_RSS_FIELD_IPV4_UDP | \
>  		       IXGBE_FLAG2_RSS_FIELD_IPV6_UDP) -static int
> ixgbe_set_rss_hash_opt(struct ixgbe_adapter *adapter,
> -				  struct ethtool_rxnfc *nfc)
> +static int ixgbe_set_rxfh_fields(struct net_device *dev,
> +				 const struct ethtool_rxfh_fields *nfc,
> +				 struct netlink_ext_ack *extack)
>  {
> +	struct ixgbe_adapter *adapter =3D ixgbe_from_netdev(dev);
>  	u32 flags2 =3D adapter->flags2;
>=20
>  	/*
> @@ -3204,9 +3205,6 @@ static int ixgbe_set_rxnfc(struct net_device
> *dev, struct ethtool_rxnfc *cmd)
>  	case ETHTOOL_SRXCLSRLDEL:
>  		ret =3D ixgbe_del_ethtool_fdir_entry(adapter, cmd);
>  		break;
> -	case ETHTOOL_SRXFH:
> -		ret =3D ixgbe_set_rss_hash_opt(adapter, cmd);
> -		break;
>  	default:
>  		break;
>  	}
> @@ -3797,6 +3795,8 @@ static const struct ethtool_ops
> ixgbe_ethtool_ops_e610 =3D {
>  	.get_rxfh_key_size	=3D ixgbe_get_rxfh_key_size,
>  	.get_rxfh		=3D ixgbe_get_rxfh,
>  	.set_rxfh		=3D ixgbe_set_rxfh,
> +	.get_rxfh_fields	=3D ixgbe_get_rxfh_fields,
> +	.set_rxfh_fields	=3D ixgbe_set_rxfh_fields,
>  	.get_eee		=3D ixgbe_get_eee,
>  	.set_eee		=3D ixgbe_set_eee,
>  	.get_channels		=3D ixgbe_get_channels,
> --
> 2.49.0

