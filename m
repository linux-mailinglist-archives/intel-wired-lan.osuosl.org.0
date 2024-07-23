Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E24E939C06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 09:55:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1275980BA7;
	Tue, 23 Jul 2024 07:55:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OhTwGAQRwUiR; Tue, 23 Jul 2024 07:55:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2242780BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721353;
	bh=fPVaGHMumx28ot0K/TzDGLFmu4jZstWf66IPNLXAw0k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PJaYqC4kGb5w2D7Na/S4mKJVOHdRH3uLapfgapWKfD0iC+C/aNZHsGekMbwUojwSl
	 IfkCGbRd5g6mxuiE3CX1f65PYMiGF0bW+KePvRQuiV/lJ5WdJrXVGMzW/b3bNlyhbr
	 P/FgIA0Q/+f+S3i8HyCzLoy7eaLP0xhiYckOYFgUtaDRQcOgn8jGtD5Qzslpd98Tdc
	 +vne+v7VjH0GocTiCPjNL44AQIN6lirdWx+l0RHZulzgynVoydVrUs9df6ayJSvPmz
	 SJW1AKyfaKuiAOwsb60w6O7MfZwr2aS/lNnKUpokndGEqrUmJRnHNVVSYWWRS5/zhy
	 KgQbiO5FpmVpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2242780BBF;
	Tue, 23 Jul 2024 07:55:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE831BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95FE640219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:55:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYyvfl-cFPsY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 07:55:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 87B9B40206
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87B9B40206
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87B9B40206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:55:50 +0000 (UTC)
X-CSE-ConnectionGUID: QfIddHJJS96AGFJ6wPETXA==
X-CSE-MsgGUID: 70JQNA2GQa+z0kNwSYRlWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="36772122"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="36772122"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 00:55:47 -0700
X-CSE-ConnectionGUID: lzp4jYOkS1u0xy1YxyCDjA==
X-CSE-MsgGUID: Vx2HCeXwTT2BYlxcn/PFaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52151919"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 00:55:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:55:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:55:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 00:55:46 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 00:55:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VzXS6zOND657Cc0hF4MhVhYMN6SgxkpbxPwxKe6OeVYL2p+3DHsGla0Xg2ljTc/9hlAQ+heF/eg8d4bKJRSsoLTZ3xKZW/ULg0xOa1gsaqUO4Pj1RdWSWg0aN0MgGoPHovw3S6Wai+iSajNkxz/IUxeKVRvY9440bXeX/3MxexcT9JX5WghIK+1wWm6pQ19mXQwHAxgJJZV6TU5yXYKf/TBDZNegxyJJTtiJBBkcZhMTREwtrpgnRQwnrziyqEortnZk8XlNL6rwYx52RuwyL7fws+iFAPvcOY7XTmp+Fqf0ypPlLICv6nVruGuqXhcN1SfR7W06BeaFHCoRdBn/Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPVaGHMumx28ot0K/TzDGLFmu4jZstWf66IPNLXAw0k=;
 b=b29TShglIod3Wr+kfbj9PBf4VowhK7BRi1jsPmZeZ4C3vHeTxqtvXJkF8nWJaCJJ7LoD4BVZXPY3U482pKcXX9J2Xmt3L3+DKq51SoxJc8nxCDMbI9FC0f66ORYS00ftGXHP/w8Coa0nmOHrDh0cuVYOHWLJi55SpqUaI0vyILxh3BgljbcIPKoYVER5l1lTKdz3wp+y5zPnpfbpaxsjs4ad+wBwiuIMqGj0QG3Fesi3lNtEhyGLfobOrWp+0SrNYlrsVjKp6e9KoPcnNCP7MCx/sSTk/fcLFywPavPCF5RJyucLkndpGhM4DO6H1Nhb2G0i4coySsBzzuJJpyS7oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 07:55:37 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 07:55:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 03/13] ice: add debugging
 functions for the parser sections
Thread-Index: AQHasGf34JbhT/Mu+UKypY3jbc3WOrIESnag
Date: Tue, 23 Jul 2024 07:55:36 +0000
Message-ID: <SJ0PR11MB586518166F94F3E900F736C88FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-4-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-4-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 14fb3bd6-4a90-46aa-9d5c-08dcaaecd657
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MYDrcrUXuTwDSX7tF6hXy8zhScjNIAMmW4DGR7iR9a/N30u5VLcFrh/QITlJ?=
 =?us-ascii?Q?z+7RY9bReyK736npdbPhDk2op2Wxy7swBAhU9Ow2G0NlS3L0CxuP9FEeWcf5?=
 =?us-ascii?Q?aNDErA63f6sOB9FlzkYJcgAbL7/dfCybx62B2tXPn9fd32TFMtdYBCW6lm49?=
 =?us-ascii?Q?/f88XP4Mkee+MJ5B1aMHrByWRnDDIXm3mutcgtIwLEUEvZE9qN6ty0yLpHhF?=
 =?us-ascii?Q?m/Wt8lALLwaSZcSDyVG8BCmYrSbrnMVPyG4eRYh37KqFBl007zK8MgKC1vdY?=
 =?us-ascii?Q?Zig4hgWvfVIwbZnSPW8bi9QsCMrZLbzJLcsLCt4u3VVob1sbO6VPz1MVblHo?=
 =?us-ascii?Q?cVwXcPZAgS9tBsVscQ5UCZQHsrVvvzfUNX8N3U+f5vW39EtRggyBgQJEVnjh?=
 =?us-ascii?Q?i4DO14qbHRypIz0Vw3JTlLTsKDV6+MrToZo+eUDEbhhLU1OJANwLrWhpwC7W?=
 =?us-ascii?Q?nj54n9RUPAuX5teOnCgb/jjl7fsnJB+qTJqbaovIE5gDk8WtD54omR1XB8VX?=
 =?us-ascii?Q?ouFKxn9fzKNDwzWQKvEAxmwHP7ZPsL9If3XEeP9Pz6yNQBXxlkdAKCDyFucW?=
 =?us-ascii?Q?BHRGugxZ76iMP+xW0Gi1DmGiazgjg6cEMLMdVU5lVkq50E1M7QBb4zsTEovk?=
 =?us-ascii?Q?RYDz4+ng0oRAnxQ8MnQFLxXzUy5idVmNlOV3rNsNklTpFOBZTHQuGwhIjzrO?=
 =?us-ascii?Q?mMrQoMkfdPgixwYJutxQ3vnizn3227ILDu1X3gBOwXNR4+vgnBrUXx7Gp+cX?=
 =?us-ascii?Q?ZRO4kKLPo6cOzsSuwbpmmvZg3XR4aKwHhafOtPnaqVdaJWad5WOc8hNkQ5Sr?=
 =?us-ascii?Q?SNavBE+EkE7sKi938FqW+qyf0X2OB63b+DXipNr0rUXSHv0ZntTwGyZRP4zn?=
 =?us-ascii?Q?/+P7Q+aDIxJMmb28te9j+0r3kkWbGjCEelZlVH1ykXXXBavW+Pg+a8loc+CB?=
 =?us-ascii?Q?I4YIqwwg/miuZKuIbop9+efopZqI0HjQGfO+40KY2iwXeKAS4AvkR25baSoa?=
 =?us-ascii?Q?nXkyZUb6tSg5wyggfTb6+daH1wAfOfi/Td66qfYraZji7rWQ5KFuEELu1Coa?=
 =?us-ascii?Q?PnwOMANbYdGXvUYu/QZA97iA6vPts4bm4ATCHAJpUS91I6+AmeL0U9OlvYd5?=
 =?us-ascii?Q?eFsQrqKSk0l+in5JyDdIDFoNR8n98Q0nmtdf4D0wthUuZzVWrkLj8+xOE/X5?=
 =?us-ascii?Q?8G3ph1ntgjEruNNRoneJvjgsMGFwJ1/r5jhzjwUYhDjDl0QfU6ZYkvXyEX8W?=
 =?us-ascii?Q?yCXKRVBqBEjV+GwPBDda1x4G/nS80+BohnFqK7a/jAenqLk5jeCyrxaZqlKv?=
 =?us-ascii?Q?A5eWgBcyZZDRJvZkDzNNoURCivOyqc0gMjgt5sJq3+qf+bgZig1tGn9EtEWg?=
 =?us-ascii?Q?A+aEU0VSwsvYt3oE9D9nsggkxirAvWaiKI67RMjWz8A7/jc1iw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RErGySQ79jFp3QQO7gsPTn2VtS7IroY3KWGX2L8nUQMzZ/0Sva+SNUcZDbcR?=
 =?us-ascii?Q?WQU9Luo+54vCkJvLyCQI7Uxe29so70OObsdcISO4/OuiG5dmXS/zPWh0D8VO?=
 =?us-ascii?Q?QZUq7uUTYN6dgSUXCAKahyYF40jqwrM8MUlB6j7rMRi4tzHk+soUPqMuidHx?=
 =?us-ascii?Q?PPe92sfeqgr2QG49ajLQJeUAJGsPWX3bkAmlpG/RbDxTxlQxnaRh0DeoPlJk?=
 =?us-ascii?Q?h9W3AnZBrkZYNse/jGCJaGiEujpyCaaDsuDnpRBx01SJ+8vZCvfN0i64D1De?=
 =?us-ascii?Q?yTSpKv7liuIIUDzprOJGmC/vO8er+XFnOpzVXfuqLRjL0WPLSXV28SvED5VV?=
 =?us-ascii?Q?TXlOntixCSR1hIyv/wlh/2Ybp2KO/MUB4Gjwo5g47s3B1OZKYzJ0SSTRcRSu?=
 =?us-ascii?Q?/847qvz8hvFBzhzYAtukuC+iJHMUx0D6FPVFMviVEQ3Wc5BAn4/ckV6U7Qb6?=
 =?us-ascii?Q?G/eyAgaVJfYj5gHz1cRjivTnBsSQR9LNnW6ErIx6sKYme7NjOwC9+i1NhY26?=
 =?us-ascii?Q?JQcyRbAT437/7mp48Qleu5VwBkkqKwWLXjoXalzCqjrBJCQXT8hT25Hwo9pM?=
 =?us-ascii?Q?e1dF2D3IkBosoXFNisPyCNpnXityiU/HLTD1KbnLuVUlFhpDGmIfitryq2B2?=
 =?us-ascii?Q?hTMt3BQ2jKZt70pUkCbO/CGWDNt2VOL0qfl9qS9gK1jBzTG4Wt/TtABd5LBj?=
 =?us-ascii?Q?QpM9sajz9bI62qDVj7h92r1ltYrwm2WX5J1UUsB08/oBUcIvl8KMQIUUw1Nz?=
 =?us-ascii?Q?I6oSNZgQ2YEu9xxq4Tb7gszzKFQu/JudTxy7rCjzB3+QxqJdBv+mTYMsM8A3?=
 =?us-ascii?Q?mjJA1vvBPY5dETCDVHcsqU5ZCwFl28qeSkcRNpFGmkjCKVT8S7ULhGuu7iTW?=
 =?us-ascii?Q?MVST2hf2drX2+gUWB+7xtofNLn4ST8Ay9cwjfkW8svGFCU4zvai/NJvx37jS?=
 =?us-ascii?Q?v6bRFyp+F5c2Qv201q8jR7lpmt7GuG+bTGqXdbBAUVYYUucATIhVzt5nGPfy?=
 =?us-ascii?Q?3OhT4TTXCFZiRltXrNnfjPIX9PabyLuitN+vKgxlfBE/UY64cNau1Ho+W2NC?=
 =?us-ascii?Q?psoImHSrJg8QbaZ6Jeq4yh8sIB8/k+uaiDfrU/cpaWgwXYEzWaqHgH4QmLGi?=
 =?us-ascii?Q?2j0VWSNukhJQeiduCghPZ6B3636tSjuB6FgpK2Al+QXUqtdOVZciSvk75IKy?=
 =?us-ascii?Q?rWwcHxOoG0FFO0YySEhgdrgMiEo4dQjRnxqE/2m1nqO7Kw3j49eGROau7RPD?=
 =?us-ascii?Q?x5LwwvGkEC1PmYf/y+BND4yakLfc3VV35sn9SeqSrLK5yd4UmP5zS8Sq+Ucw?=
 =?us-ascii?Q?B54pu3HOX4YJx7OoNRoQmiM/+Cy/HJbdI7YR2CKlhqSvAbLDuW/U6pJI3oyI?=
 =?us-ascii?Q?40LCj89KQHQFirzBTbn9tAp/gGVVcGcMq/X3UGHvnOJdp0VIgs+s99hV2+jh?=
 =?us-ascii?Q?HtfxfYtr8sK/JF4AHVAES6EtmvJWjdKqSzKm8DQ0yHsdIlDDP64tUxbcDTZk?=
 =?us-ascii?Q?5L+zXTxm/M6DEmKdPdgU1moF7nAZrJ7sWyQGfWSwNhC3Am1Oxh/KdayrdPiZ?=
 =?us-ascii?Q?VEXQV1kZ0RrOJkmMMkiCH6F3lckO9PYKCv2QPIkYmpUDeR01hNrTViRUEInQ?=
 =?us-ascii?Q?gg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14fb3bd6-4a90-46aa-9d5c-08dcaaecd657
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 07:55:36.4278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 04e7+k+bmQHWYurvO4NNkBpo6NVeqXeFR6zHKmRcaCeAjPBnOnwECUqrqTgR9hMO/vNlwuifI6lOLWpLCmXoT0jPAtGUQYfy5PGPpm6Fo5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721350; x=1753257350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=04HNlLKgp7QYZ0B6QfKSHSwPyHZIAHnR7roGHhXdiq8=;
 b=jCpuqymLO8/Qnba/lFlkBALkoeBMJO0sEHytZl0Aq3bt+p51FwL9Sw/a
 1s9V4xNqidMQmKaxlUCUzpa+lx8IFDZcq1xm4BCk0kgOURY+d3TwcWzSY
 1glygEz57c+SVx267sPWpKpjHeFHCIHfUzZSYyxFh+73ntjxKaAY4StkO
 uG/AvwaR1+tMvZTebzbOeX2n7vKtU+BztwRWZBwF21i4ikjCe8jizh4pp
 D0laud57xIz5xEqxFl1WYPr9upiKfL2nBEVGoq08eBHdnPSV2xHGu3j6z
 KnAsbyBHYR2k8IjYKCZEtQDaSir3OUeYmh0yq/1hp13BD+GiDnQUUih98
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jCpuqymL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/13] ice: add debugging
 functions for the parser sections
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Monday, May 27, 2024 8:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 Guo,
> Junfeng <junfeng.guo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/13] ice: add debugging f=
unctions
> for the parser sections
>=20
> From: Junfeng Guo <junfeng.guo@intel.com>
>=20
> Add debug for all parser sections.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_parser.c | 470 ++++++++++++++++++++
>  1 file changed, 470 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> index aaec10afea32..19dd7472b5ba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -126,6 +126,100 @@ void *ice_parser_create_table(struct ice_hw *hw, u3=
2
> sect_type,  }


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


