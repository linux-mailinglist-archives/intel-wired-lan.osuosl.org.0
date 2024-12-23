Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE459FB387
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 18:15:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 972BB81948;
	Mon, 23 Dec 2024 17:15:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHsZ_bUygMdZ; Mon, 23 Dec 2024 17:15:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6439818BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734974107;
	bh=i1wglauG6ePfaWw+bwQpARxEY/Icsj/CPZ9TM9NQtfM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sur0y944rjqoixYJ+QuG55D3dxD6v54qImHLHP5PwvMxT1Kdsvvx2ss6cFs8+v2d7
	 CEUB2IFFki1qlsYDqARUj8CpgVXMt++HHaR8zveRrFdADJrchg9KFCXr+2W/84l0yz
	 7S+3tG6FnDS+72vKGdBLaMp3U7Psk4a/OCKqgBZizmZXQczN203O9IUcYcwtdQZK4q
	 D39q/kG2E5sLtEiUtfLePauLSkZ+fUBi5Y/PB7/z2mBE3fXshryZmekXZekgwKf5SL
	 upUq1+xAkqtU5B1k6BYtSFJNMX2NLCPy3qOtAjOwOCAJXrvnFRpnh6o/2tP378ve1o
	 0CLwAOVec+22g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6439818BE;
	Mon, 23 Dec 2024 17:15:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2457EDAF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 907384019A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:15:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O35S0Fehzr8Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 17:15:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FE8640120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FE8640120
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FE8640120
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:15:02 +0000 (UTC)
X-CSE-ConnectionGUID: 08FMPF1FQ1OCEjTBc0pGAw==
X-CSE-MsgGUID: inXskd9SSkGIRBZsSDaA8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11295"; a="35661009"
X-IronPort-AV: E=Sophos;i="6.12,257,1728975600"; d="scan'208";a="35661009"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 09:15:02 -0800
X-CSE-ConnectionGUID: F6t1RmChQPCzBWEGrpNOAg==
X-CSE-MsgGUID: kkReimOUSfGdpbMD7KlyMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,257,1728975600"; d="scan'208";a="104234657"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 09:15:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 09:15:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 09:15:01 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 09:15:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UOWGLEACzVEvJtL5phFWKFc0n36BsqUe++/BEefy6G0erhWLJJVTSkCeJREujayEkZF3dt8lrYRya+2mSbyfouIypMTqJrhYU1Hlpbad1gug89siIWacLYmY8qFfUxV+Q41mlKX4H0L+SYTGbgrhdRNxHDOMKA5EPBObKiXeGPBfYdctVb95h1bsA/NdWwANxt3zieuTM0vFYZPllJnfsf8Jduyur9dezGP8sVM6Ma21PNzJeyVDggJGxGfbl+KI2nYmV0f6WkWT3PbdRwa8Aqf5CQybl9GiCAO7NoBGuWbJy43/4dqLiVIavSbTyQMTaJ7GfeLntwzI8mia+kvEnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1wglauG6ePfaWw+bwQpARxEY/Icsj/CPZ9TM9NQtfM=;
 b=CdRJA9PIA/TiD+a7ZtMPgVpSL/zhhdYSbdZu4xBmDDUHXRkwGd1cd0OkF37tn5B+Mu+A/RrD3+Gx22K5hhrBEVPAo0rdz5NKeHG8PlxZVLL9SlRpshdVbt73lBmjoiWkMl9MvDN6tt64rvL/dWKo08m7LgIeDPfpFNXoMpad3WJUMN5h2pLLvDGD+eXfu7J7QcD9GFbHo8uvyIHKXdicds6Dk4g5nyDVWBZH1OQdBv/WKaOeOgQG2Y1DkaamgZgru/vviv5gvaCtPO/PEWv3HQFpFbsI4Kavg4z9G5ViieFaYGn+FiL2tU7805C12eroNOCfMpmMwesHpaXGGdGNkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Mon, 23 Dec
 2024 17:14:54 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8272.013; Mon, 23 Dec 2024
 17:14:54 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: rename
 TS_LL_READ* macros to REG_LL_PROXY_H_*
Thread-Index: AQHbT5h2/ytOKfwx6kSLkQVUfbOY87L0HLuQ
Date: Mon, 23 Dec 2024 17:14:54 +0000
Message-ID: <IA1PR11MB6241FC913FADEF72CDD7DF118B022@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20241216145453.333745-1-anton.nadezhdin@intel.com>
 <20241216145453.333745-3-anton.nadezhdin@intel.com>
In-Reply-To: <20241216145453.333745-3-anton.nadezhdin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6537:EE_
x-ms-office365-filtering-correlation-id: c35daa65-ca4c-49d8-dd1b-08dd237551b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?s4AEcdaaTdtTVNKc3EfLseq3OgpcaJiYSp3hpSk9L2B7Wuz4U0Q/ndzhjpyR?=
 =?us-ascii?Q?YLf7NJAsw0wZo41Cq16+l2UyMi+Kus0LF3j4y7y/h0HIBi4iEh2/udqxIYu+?=
 =?us-ascii?Q?EXCrPpLa/PRdFtv7dBc6TONMCr18mttBpHqLHqfSnWpsCZgwoY/iKvFVg8Ig?=
 =?us-ascii?Q?0g9G4aTH62P3n92olTuibJ9iaqiJEmX+Ub6lJ5te2hUXK1Ge4R85IzkPg6pK?=
 =?us-ascii?Q?iiLHFoLQzl/9tg3nMMPodav8YxCFJOIQkYjuWbwsTFQauubMVZ7ngFRCP5nc?=
 =?us-ascii?Q?VXagOai+aSk9udrwHimqoJYWviMSsVe6tUioAvdtb25u5CcpbQ25VA3rXLCy?=
 =?us-ascii?Q?nKwYrP1sIlEgRCN4HHaVNJbYo8/yGi/mXqfVwVnFL/FJPFYKQDCogmfzgyOI?=
 =?us-ascii?Q?iyQ8klVAliy/lKRucSIgkoVI0xNbeQWb/y3OIXZRKv2sXmbEpqEw8VGwAnL3?=
 =?us-ascii?Q?TPXS9ka6eXWe05T1D1AWQVwybza11oBaImbqD8DXY+9qHvveZOZYpqDqIb4l?=
 =?us-ascii?Q?M/lo8SeOJL6k1bjriauQwDazcidd52RzKsc0vtCCEocC4oV1m0LcMIvMGwhX?=
 =?us-ascii?Q?c+DqaQYRwi6gHrrGv6Qdi6L2dR80g5sJeBPsXUbTPDXE3T8g+trE6L7x5XuH?=
 =?us-ascii?Q?eFpcAYZD0E7vhbnDkBT2rfFSIhjTKACTsKQ3S98ltAV0CfTUJQylGzLZjVgJ?=
 =?us-ascii?Q?JEoaQPknip9B6LJT++Gn1h+4PSqzcMbjUNaOtEuM31sh/B+3uhXVRGf+AUj1?=
 =?us-ascii?Q?ufc6HEQMqp4wSUOCB9kAM4F3SXoYkTs3l5+nW+WmKRmd3poRVwuxiDmlWElb?=
 =?us-ascii?Q?2EmKTsQjvRlvu0k1G3JtCAzJEdNXgj1RxVVsAQH1IbbqT0rR527daRHpMc/Z?=
 =?us-ascii?Q?aWPzygrqp5U2idUy5Js7VvcqznyoxEXdQWHXtXaSEBjHQj20stJdvOs1X+6E?=
 =?us-ascii?Q?WXzjWaToBSfukAsf3SYXSvhCe4JjWoCi0zzDeoTTtLUuK7djz5kFRO8cbuin?=
 =?us-ascii?Q?joKCsCNJ4lwiBnLBZTf1NKDNrT35HgZA5c4L1oRUMoH3Qo6Be1EVMDSy8e1K?=
 =?us-ascii?Q?GDLer4In2q5/s8mXiUH1G90P9euhL6w+uoE75Ymj9JKbdnIJWWFOmZjbqhiY?=
 =?us-ascii?Q?A3k3k9jiGx0QIXVkY4xFPe15uvRgXvWVr8ULif2JrFH1kIWNjwPE1reP/e2A?=
 =?us-ascii?Q?sAQUSZk7UGI0behRCQWFd47n9YFdpK6GaxmZAxIitqV05elHASNHR1khFHro?=
 =?us-ascii?Q?hL6JAbmG8mVPsYKOxbysHmdPCo5gNwEPeE8VnkoZD17MYy7C7jgeF05LGsyJ?=
 =?us-ascii?Q?aRO/XUht1o7w38Syaq4qDO7/FzS/TbLCHpbe6ZIu8m/JxbQ4ycskFyaEU/qd?=
 =?us-ascii?Q?t5V7UDsuaRYzYnQCN2iW66chfU1eQginkR1XnuDSoLuwBuJsP6eHUzPSPypQ?=
 =?us-ascii?Q?AsZygjllzVnr1csgsVZddJpFQWKYBUZL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GfRqApDK41k3GKrcJa6egZZUIxFZjsPOK29Lj6bdpSC5OuGLUsRdmy1vrJz9?=
 =?us-ascii?Q?YGaJdLOwaomsEAHe51cYKTExCt6DSwlqBHw1PZV2HjHqJiScoeFmx5+oKoeU?=
 =?us-ascii?Q?gJ9K47PM3jWUSQbqP+SE9uS3mA9KnbABBBvMxYrycwdUWIe0N3Pdm7eRi7xn?=
 =?us-ascii?Q?mnGowY6GSbyzeIynBBAwaBMc5UePRwZYv3f7nhztGZrIYVl9uEjI7AXO1Eor?=
 =?us-ascii?Q?NcpLmRk5iBbDnwiEn3NEPO9gwXf+SUxBwXy+MRAjEsP5dZYb7HdXUE0Jt3zk?=
 =?us-ascii?Q?hDvSL38XL4q+gJhH5cM7z7Z2mgoJ+XklVtS65NnUushpbZYjQPxYLy6Z9HA/?=
 =?us-ascii?Q?3TXeS4SMGYIbyvLBUpzYRh1nmTMt3gcUXZjmxaERlOePnEFQ9pdgo1g8xisX?=
 =?us-ascii?Q?NXM+hde5V22BsdonaZydbzb401u1Y/IJbf1E2BjFc4iK2nolXoMNFPHpC4xo?=
 =?us-ascii?Q?E6Ufqdx+9oetW8Ew8umuuDl6XqWWVB7aEB7b1egOZQZG/HfpjwHsOZy+JV2v?=
 =?us-ascii?Q?KYiaDq8kxyHMxDzi8yx+v+I3ifmr8hsqk3hLSldpeV60WlD5qJDazk8oAhfo?=
 =?us-ascii?Q?2tGGAqT5jT01dFuKnU+qW+rNyla78C1udCRsl/Tj7XGj6Y8GTfOiwfjRZoHX?=
 =?us-ascii?Q?hYxOTqEHxGCFB65bSZ7vAUhDR7+LLwY81J8TAIZb8Ur5PC3GDiQrbd216HkZ?=
 =?us-ascii?Q?K9DBJRPDK/P3nWHRorEKdiQftdzIy7Kaq8YGOYHXg1IkOArfvW3jvZWSbzpk?=
 =?us-ascii?Q?B+mSTTLNMCDP11PMbWnjm+V/6s/e69RtCGa3ttpHVXaoJIovaYEbGETTL0aA?=
 =?us-ascii?Q?JMcxhqPgkCn/61KaAk9ta0CNkE6rSR8pWubp7i0sn92jQLOS9cA11zyZt0FO?=
 =?us-ascii?Q?056WSAvjqY6f0v13byrzl23HmEESSqbMpOnXgjjruWPG1Ojxlsh8Tvpi16vR?=
 =?us-ascii?Q?3EjFVvxmbaZcRkBC7At9tyqVEq2VXyEb1BaJAVrXpTW2lWDDyR88AUiAB+5m?=
 =?us-ascii?Q?MDnrXiAMBcb73JFefjI6Gmd02hJC8ht7OLbioMiBJ9WY8S30CiY7uDuFjiTW?=
 =?us-ascii?Q?p/eQpwgHKRt6wmqK00lbBSZIpEzU1oREyIgHpnMrDJLa+QOahw+r4gmDIFJt?=
 =?us-ascii?Q?GWLeKyLr+IpLZTd921TVsd6ngDBO2JUZWuQaZethE2USRdHM5xiEi6j+AzWC?=
 =?us-ascii?Q?lsO7r79waa8vNslIH8W8wv7J8pVBpvnAoiuFCwMY5p7KUGKon2Hgf6TSjG19?=
 =?us-ascii?Q?n1bkqvTYPo8hoPhojA99t/7v3Irv1+7c/vGgameNndmm7TLLqSAd5ZL81h7O?=
 =?us-ascii?Q?TOCCVRKYZhfQMCPMqe+3jUc9ppZnSw9jDc0GQWJiyyfEPduTzFNsH0aGg3wB?=
 =?us-ascii?Q?E4I1Zz/eBSKwSYkhC2E2a+4e8X6DQYawec7nmT0MnNrjkE4h045IpvsalOT3?=
 =?us-ascii?Q?fvH+FsVwEwOprTyLFSjzq0fGA2uEXhzdlrYtBya1wDKFvquDuh8O4Qd4ah56?=
 =?us-ascii?Q?4nXE9dhsIbwcFU25HHJji+XhxB4JcMdmzd9tr6OYhRosFQODaV8f334ntSxV?=
 =?us-ascii?Q?Cxy4xoEFr1xes1Stz0y1Chu4D0OvpoPZ9h+JjmAy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c35daa65-ca4c-49d8-dd1b-08dd237551b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2024 17:14:54.5107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bo7DXA9UQP3+8aqWImhnrAjr59dQT2yP/eSo+JZPABwXvgulVhvxlRz7jFsfRASuyhVGipMz1hs5/DGTtfPZMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6537
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734974104; x=1766510104;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tQ5g5ok2BZg7dFhzNaviveg2V9RrMymcDbE1bhYzUg0=;
 b=W7pCY9kWlt6bjJj81FehtiGdQyNttljRvdXUyFactQN12+ZVQWgywda6
 ul0Q9ND2upmA9zaML9R+MMzpSMh9hJlOhWJlHJAXHbD/DAfyFo09E46UV
 xiDgieu+DcGaRWAw8mt1BlSer2lZU4yAmHd95CBugmavM4di/9pMX3hjn
 DFYPl7Z/5BGS/UD2T3HQH4+Kc2ibuzlLH+4RA5IRZ0MWE4qXIEwkcE41X
 iZybJ6r734CoTVkmXZJ4/uDZGuPsyVUU0xHAS42gM0yfTIJoPTGXoc63s
 M24ncy7N4Qspeaidn/Znw3QY0ezDKfnC8nTTDdx4zpN923Y9zlM+FSv+7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W7pCY9kW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: rename
 TS_LL_READ* macros to REG_LL_PROXY_H_*
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
nton Nadezhdin
> Sent: 16 December 2024 20:23
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail=
.com; Keller, Jacob E <jacob.e.keller@intel.com>; Kolacinski, Karol <karol.=
kolacinski@intel.com>; Olech, Milena <milena.olech@intel.com>; Nadezhdin, A=
nton <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: rename TS_LL_READ=
* macros to REG_LL_PROXY_H_*
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The TS_LL_READ macros are used as part of the low latency Tx timestamp in=
terface. A future firmware extension will add support for performing PHY ti=
mer updates over this interface. Using TS_LL_READ as the prefix for these m=
acros will be confusing once the interface is used for other purposes.
>
> Rename the macros, using the prefix REG_LL_PROXY_H, to better clarify tha=
t this is for the low latency interface.
> Additionally add macroses for PF_SB_ATQBAH and PF_SB_ATQBAL registers to =
better clarify content of this registers as PF_SB_ATQBAH contain low part o=
f Tx timestamp
>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c    | 14 +++++++-------
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 14 +++++++-------  drivers/=
net/ethernet/intel/ice/ice_ptp_hw.h | 13 ++++++++-----
> 3 files changed, 22 insertions(+), 19 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
