Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6DD9F6662
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:03:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C251061455;
	Wed, 18 Dec 2024 13:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KNiOM2vFGtj; Wed, 18 Dec 2024 13:03:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B7F460863
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527005;
	bh=6CPEjkncSWDsLvXZQWG2m0wybGhvWg30DdTkxF8fdvw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eLMJyrL9FfOdlRRF95wFrdeA9rHmCyttx5Qg+EiE247twIya/x29CaFBiqAp37QJl
	 ojD4sPefGoPLmzP7wOE28XkeBeApAKRJNZ/zJZZg1eAUw1eHJpCaQfN6bTsCq+4rT+
	 UZF/lQReJgUfwCOG1Ns1/Et4/CFV4kJszrZ3Z85ABPKPWdoOvMsTtZyXyzvraERnyp
	 YGlRH+6d84bZT5gFyJBsMI1JcYggI/j3uG4Bd1IplFwH3QdHu9ynHDy7gkq1QojTjG
	 bUhv3FL19A8ZBeRI+7klxbq37XRmMwefW6uSn4tCWiwIyWODEWQLzkeeLhRUUp0s7I
	 Q5qa5+YfP36SQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B7F460863;
	Wed, 18 Dec 2024 13:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D9E0CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C6D784E3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_wvjh1NYALa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D60C84E36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D60C84E36
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D60C84E36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:03:21 +0000 (UTC)
X-CSE-ConnectionGUID: 1Rx3ZvUgQ+y95GHHLfWjsw==
X-CSE-MsgGUID: dD89VmHSSDCIHPSSBOq3WQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="37835743"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="37835743"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:03:21 -0800
X-CSE-ConnectionGUID: uVjhx6ShSr6j743vGze7Jg==
X-CSE-MsgGUID: m+5jDFYsRZO5gjtZpebV8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135196454"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:03:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:03:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:03:19 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:03:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n3YkmOZWQXCpBBhqkBvOXSV8RWSjNCULO6vfTtSjSWFQmTHrW2jXhD55d+7SbuKSolUSqbZwBo601FSR5qw59aClY4COuecygEqBWP2r5R+i7FhSYxFeHH/5vTx3ie6BMPhNtvLWmQJ/ClPlr8x0ky93q4iUf56aMRGcqDhsAwHRNRa8FwMKkjJrl/HI69XjNrrs7P2qM9LJcvpWqHxew6wA0A1Ka+0fGn1dptTl+DeGbNR15aOLvnygFJydPVsaw6+39h8o4hNfeA+APg4TIhIDdLhJMuL5yzhJUKcmSx2VdGDj6Ahuu0QrD51kfb3aQbWc04w2BsJWEWAGTBvyQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6CPEjkncSWDsLvXZQWG2m0wybGhvWg30DdTkxF8fdvw=;
 b=ppi+YUxfxMBncBGUbX+DkccD/vmWNl47i6aQl+R6ogcAY0Jb4yAO6BM06L6rvGCQXUI3mV1q/kcGfDnH4KxgFJnIZEpV5ohJIdKXz3xwlVCisdgayPJQ4yjPtwg1mIIIZx+wP8RXiOcTZqVGFVDupykLEFVpiDTZsAKjLW2c8eov1B+ZUyhyMo43OSnlxPyH4jIkMzituGfXpm7ZiVZXOgr1idktgX5mN+iga/ELTf1MW7mRCHb/C1mo1eXWkatAVMXcbgzjR3GHIyv1wABiv3HMZazTLJl6aRKc6MZCMxK5htKgeu+ojcT7MvlAYsIZj4O7uBlzTjdUhPdk+tpURw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 13:03:16 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:03:16 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 6/8] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
Thread-Index: AQHbRvIt8DgMEhOftk2dz2D57OOhxLLsDDSQ
Date: Wed, 18 Dec 2024 13:03:16 +0000
Message-ID: <PH8PR11MB796544B32000C99C14EFE181F7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-7-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-7-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7941:EE_
x-ms-office365-filtering-correlation-id: fb219391-db56-441c-d47b-08dd1f64569e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?P9ieYcmi14MbgXQ1le+8F2NDQs5+mkDLlp6NKnZWYa/ZdfiKx5qjWb890Oj8?=
 =?us-ascii?Q?RsEEgywej+BVdAZn+I+vt5JQRBv/aar/dTD4iWmWa/ggoByG5mksQEhuQClg?=
 =?us-ascii?Q?PX781PBiT2EC4/ZCd0ljvTfIPampVtq+56ZVe19vit5St3q8VaukPDAp+7KD?=
 =?us-ascii?Q?qfuHxLNh0sPcOcD0mYDv7T7uSeS0G7QK6S2XKFdmgQxd1DoloygZ+rTPk/if?=
 =?us-ascii?Q?/QjkFTKGuO9J8LGaSQCTwRtmxCN5m4RGjHvOafTYZCxPN/dXWsacdNX8gbd5?=
 =?us-ascii?Q?XYOtrJkwFq/m6WaxkeSPUDvv+LSe1/uB59j+zjUhpUBjl8ZUPuG5dcuzO+0A?=
 =?us-ascii?Q?nTOPRV+8204x+xPMZAXDhu4NImzqq+JeGu/SBl/M7TaWnEJE4xqeG//LceZj?=
 =?us-ascii?Q?ba0vY/Gq99YzDvZ4uVG9WA0NL6CYIVwQFjyjCdETlKnTUf+uH2j0mNT8ZsWg?=
 =?us-ascii?Q?k9XdUQaGtvOV3Hnx37OYCmJhor/z8XG93nR//65lKLZYmzqMgCL2V7fKeNis?=
 =?us-ascii?Q?TPC4A7GEdTwFZxXKuo76UwprihPRPkpTDrXQXGJefgZ+JG4TgpYubD+IT2Fj?=
 =?us-ascii?Q?xC7B54pXJZ3kEM3nqP3iJxtkfTDjPs7Ht0p2vrfG4lo3R3IMnigdVYN7EXdg?=
 =?us-ascii?Q?18yo3MnoisUKB1Eqpqba5br/mp8TvNAK03+kbOn8IH707LwesyNR+Mh8vqrK?=
 =?us-ascii?Q?jSFQN0XD6TuHncj0Mp5TZB0UymXTfIQyqz87kslv05U/LhHPD+smWxpeVnnv?=
 =?us-ascii?Q?r5S4YabyVAWaDVyvIWZQzC9JCYKK8/Pl6FAKstC++M0LQZtBRiZprloKgf/M?=
 =?us-ascii?Q?146ImNJ1ou2Vkz6CLciVFErv2pcyHxMMZ+fV26efLBBhzTJ8l5yXN9npUmEE?=
 =?us-ascii?Q?jXNNL18nfjXXYu+4KQouT3f5zf+BgIEKijOadARUmWoGjb9asaWHhYfdJpUv?=
 =?us-ascii?Q?h0tJX22Wp2nlmdCb703uj85/Z1r9HJwK1kOs9J88iGJnCvDDL0LZeyEKYqmV?=
 =?us-ascii?Q?c55KxjAkP/IO07pwOZQX0WgGlKs0yPmpNX0JyfthKzN6TukGQ0k0YtPX9lHG?=
 =?us-ascii?Q?52y0dtw3xN6X+KPrW6XIfSdoLL0GpS9NafH0miNGT6ULnf46YAWNJOg2ZVwn?=
 =?us-ascii?Q?KY34wvqe93siTa20LA3l5zwXmx9q9zocDFpGLsHFyJdJGvAGiCew068XNZA4?=
 =?us-ascii?Q?HD9t/rQIttz1JXac7oRhj9Dha5fZfuUAcy5pcMypS5ML+Wz9YnME4f/FE4tu?=
 =?us-ascii?Q?5oDQdcfcMM4mPSKcdwUbAcHRHpxR8bAWjxqruCoeSu1JKGp6D5QaTR0AKvDj?=
 =?us-ascii?Q?C/pt68FEBWhrnkSfb4xVbqvWqYnkDY58e+hY84ooPx0v1LPuUJMFqOKfDRef?=
 =?us-ascii?Q?GTMFdmEzNI18jzRJct7Hyci4512vhdw706cggFDYYAQ0EIzISs/Oeh3x/xoz?=
 =?us-ascii?Q?/yzf6AlKXEiPhkgVhd++yGXCvMOtFlRq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2RR0d1vlZdARMNGmQXhRzSQE+GhyGXqmkjca5AoQxmB70z+PTMxQqmyVu+ib?=
 =?us-ascii?Q?z3yn7MiF3CW/IQA4lYdGz65Yvaps0C/tFVOky7ti9QOlIqBjqv6nQYbVnGcP?=
 =?us-ascii?Q?MqiMhsBRG5Ud/y2ykvfpQ6mZs59H5TX8HkY31tiQyxa3vOGhcFLAV6ETadnO?=
 =?us-ascii?Q?xMmjU2ddT2OrSHFhPbTssGScZJEyXPb6oGXSJyapKMkKpaLU3AAsRfjOyKHR?=
 =?us-ascii?Q?+Kmzc8WL+fIjcauyER1Jwbmci3aq8LCEwJ/E8TpzTvUVBdye6sL3CRE0+PB1?=
 =?us-ascii?Q?6NxsT8P4KqctfyeSgFxFXmdQvTnXbCCMKN444Cp6p2p7eE7Sjw4dPErBv/YS?=
 =?us-ascii?Q?+pe9pR5Ta/uzMPiSxQOV0ggHS8TCj2QtZYPHmN+5KfiSkzTIIQJCAfwZMg3w?=
 =?us-ascii?Q?80lwRPBMYnczKSB7sEIGisOkWBkYV0y/sn4KtrfLdgMbcExKShA7N6mxUQ9b?=
 =?us-ascii?Q?FjxOQqxPrPq9vyZJgkWL4xzOnw0EawmEIkZwtppUbX8ykCYevWfcWs3/2pmQ?=
 =?us-ascii?Q?kKjwnAMzZBI7L/MEhJy0jM45RoJQ7RY6S/Rik1Y23DwH+MMIFftxlMqswnH6?=
 =?us-ascii?Q?iHMpAJ9bWN8mZwWCFtnbbJ/7gFV3vFs8erMtLidDvOndsmHqhwLtqzgNgOUS?=
 =?us-ascii?Q?XRim7XjtX1a/wJddzlOfkQX1BB/sb3a4cIrDbmI7lw1p/sqGFQql1CHsSU3i?=
 =?us-ascii?Q?KWoYIXGdygCWqOZ4fRfvrT2HdUrxC6E/ua0h4fQEklFy2crqNDfG6TiThrtN?=
 =?us-ascii?Q?xHKYVLuU0/tblvJ06MZ515Cvs8+T89StvLp6yk+4Z0ATmklbWLr/dCy43GjL?=
 =?us-ascii?Q?+i0DU7aKzthPDV/B3OBB/qREi1qmGKEPzzzKs+sDU3U/Np/yLhn9OgMabIW4?=
 =?us-ascii?Q?xFq6WvBLoJirRL7ZW8Xb72nH6q1RLiKTgk+FixuSkMI4Dj+l9W3pHizboKTV?=
 =?us-ascii?Q?p9/CGJZmToRZBr/nNB/YClRBB/kCij0vSzKl+ybvHozD/eVP/QeBc4vKBCbu?=
 =?us-ascii?Q?0W6rrSysMm4iQhSTHJ1RnLHWJ/XD0Ip0SmBGcpXpAHQcl1IkyB2VE/Hz1UKn?=
 =?us-ascii?Q?+YQyVdYGd3vVfajGw3yy9CqlvWa+cEI2pjShcsbT+27Qz08cGREI9nqc641K?=
 =?us-ascii?Q?YRePMvaTQKWvYyHR4myJR05bq5j5CEIgHD6wFyHYAm8VoH6AiPnh6JBxOFmu?=
 =?us-ascii?Q?k72R7iA+5YmTWNYAOUO+J8hqziws0v6+7QKKs9Yzj3XnODDA70A9tZGHdv6M?=
 =?us-ascii?Q?Mj+ZsORr/dXT2fRxrDSHTbLi1pFnZZ7GakSf9q88X6F2ww3Is68gnG9wAP0D?=
 =?us-ascii?Q?lCp7xh3eMSREeCxotGxBXqenHYqmtq/6gyAcyztB4Dqm4+pLdVfY6cIwzTud?=
 =?us-ascii?Q?Q4RZNaJO/zWJlEDbI9vA1R5j0fo4wht4Kh2SUnAJrXwtnVr2BA2ncTZsPcDt?=
 =?us-ascii?Q?v9JUvAV1X/96MpbTNUuBcna0bjyzT+Cczf1ng+6WESBYaGf84rYUSS+eWp7N?=
 =?us-ascii?Q?sQ/rmfzfI0WPhbQXmNATdnPr2xz8Y4QYutJ62ppiea4I4p9R1oeou/s5hKFc?=
 =?us-ascii?Q?PyFQL2Ox6nICaFDZm05wPz8PGi4/IGQPMR+MD5aU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb219391-db56-441c-d47b-08dd1f64569e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:03:16.6694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 78YwgS9PMhmsCcl0mKir8oVPO98eDAlT5le+zky5WZnjkmfOODI8HF6sBwwDgmHzxjCRNbiqxtg224GzCS6JKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527002; x=1766063002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bUZOGo9tlJhl3curc0Hf5BVQM+G3jeyBg+qagWFxhvQ=;
 b=bs3U+huTf2Y/DMesrAjZd33kIICQmK50PuLE6SCgOV1UzlsZgE1Q3AD0
 aPx2R756uwpF6VuMXYFTCm0+0yhEelqD5deFooDayWvz92Jxmjsr+0TVx
 zHbunlB5khlmb9cf+2bGe5EUKXrQLC8lAUMcAw5G4TKqsiUBCuw4Ezg8l
 Bl8Tf/9up7R2k1jkp+0fZ9gOXT7vMw4kKEJ9L8H9GTyUDlQDYw9GMyH/V
 +zywCBPf8y3cWxOZERtHzVfJMapKxcFw0llAuij++vDIXdVxc1C7uEs1P
 3mcfLcDKyXowSXzeJKFfcV5rdhvtqIU+z61efqHi6i9/fSedNjYiatNEp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bs3U+huT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 6/8] ixgbe: Add
 ixgbe_x540 multiple header inclusion protection
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 6/8] ixgbe: Add ixgbe_x540
> multiple header inclusion protection
>=20
> Required to adopt x540 specific functions by E610 device.
>=20
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
