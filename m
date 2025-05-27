Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD005AC5198
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 17:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03AD78108E;
	Tue, 27 May 2025 15:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CADe8eLQszOr; Tue, 27 May 2025 15:06:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EA7D81046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748358418;
	bh=RHXYxAayTU0RE6FyjQOFKyBUuOFiFCsw/7dtLzIgkfs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XT4MNbUX4g0c6U1yfsqWTMVIyIOeQkSv8hZ+eH8hNd9wx8RsOQRsy/iWoVAlIK7Ig
	 CSQu8WTBS2x+4vKOhQKXsSXvJ9qG2gGK8bRZNKnb3gp0PlFiTWsMOIICf2jrPvjWPV
	 C/LCmcQFVgGj6kvOnVJ3+j+F+yfWU8vN3U+EdJ1btFLAxPf2wCPEvSY14jUTs2d0T3
	 yRU8U93JQLs6nEgcH2L9JAUkQbkmIiocE+Yyixo9qkJVAJ4FG4TrnyJYh4qBVyZv/B
	 MuGP3HWRunUjgd0C4m7RnLkX3SZ+WwXumIkIMexnhUKWWa3FTUV57yvul6jNkAax6U
	 L1sswNT3JhpIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EA7D81046;
	Tue, 27 May 2025 15:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ACBB119F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 15:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E6E460B60
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 15:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gTmg2hQE-rFc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 15:06:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7FBD660AD1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FBD660AD1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FBD660AD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 15:06:56 +0000 (UTC)
X-CSE-ConnectionGUID: TEVl0mieTyeFCQJbDuYahA==
X-CSE-MsgGUID: pubJuN4QSS+UCM1qUUMp/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="75742566"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="75742566"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 08:06:20 -0700
X-CSE-ConnectionGUID: 7ySJeDsQSQOS7qSXiw2QqQ==
X-CSE-MsgGUID: 59WtbzSJRLCJGidOtp2OaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="173742519"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 08:06:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 08:06:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 08:06:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.62)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 08:06:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RpGMjiH/epaplzM8MMZ0v0oh6/m/DtWhddSh5VpR4LiYG3WdQmFidYQPhyttagkthsJMgmAO4J/pU8tNy8U2Kj8USlXUycfwbSql8OwHkrVUMzQWBQePLsW9JQy4m9WlvKOjqbPEYyACMxsg3t+e6e6WveRmbG9ytxULDVMdQmebwecMlEVpFFs7cErMBe7fGSWhYhZajgHVxZcEYAyFWm+r8+JEVJMDPR95MZKmcdCZ9cfZgy32fnMqJh0DtoJPHiQ1prBqGHHVPAr8/5OQEU30IMNrAS01Q2aK/cC3Hwn1amIs0ZsUL9Am1pjdi+hGP+7K+Jt9cuQxN3Xtyuyp3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RHXYxAayTU0RE6FyjQOFKyBUuOFiFCsw/7dtLzIgkfs=;
 b=m6GUCc3XtZ5nhuw6WfVdLauYiQA/Aljgd1WhYa9U9Ad+hF9Tq8qd1qharTjUuaF52wQPHo3qSLSxhdF0DQjEicj0ZgxvIGx8ydesN+2GRW2L7ChYLuU0qTLEmf9xyWGqep9qHS/TuK3hNxEz1r1GZE0GFrUyMAtSWgeRPWDJV9GK5cxUzjksPWFJqMTdEnx6MKa875FFFePVeLxFl+ig00emVErdvvbdtndnoHZmi1ytveZMpFy4iXeeb4TttOWIvNlkdpKc9c1jXfJeEdhnZ9oQuBxWbXQmZdttDf4iEH6I0iB9R2zGuRn0gmftDZ0SC/talQgQ1Bgf2SzBxa9EDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by PH8PR11MB6777.namprd11.prod.outlook.com (2603:10b6:510:1c8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.23; Tue, 27 May
 2025 15:06:14 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%7]) with mapi id 15.20.8769.025; Tue, 27 May 2025
 15:06:14 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] idpf: add cross timestamping
Thread-Index: AQHby/uIWdk1n1HcHEyFWOYO6BsF5bPi1H2AgAPBvHA=
Date: Tue, 27 May 2025 15:06:14 +0000
Message-ID: <MW4PR11MB58892725CDCE041718A7CE058E64A@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250523155853.14625-1-milena.olech@intel.com>
 <283f34c3-ac22-4484-9623-bd9c35d8b97d@molgen.mpg.de>
In-Reply-To: <283f34c3-ac22-4484-9623-bd9c35d8b97d@molgen.mpg.de>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|PH8PR11MB6777:EE_
x-ms-office365-filtering-correlation-id: 29691c03-b774-4bd1-61c8-08dd9d30061c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?C5sZHYyF76tEaakWCfhsAMp6gA9UIbGzrtQ5yxH+IOxWi5IuRqGD7F/bd/qO?=
 =?us-ascii?Q?3p/F5XG8eBMbAhSN7BVOfKfsxaLFR367C3ZglQt80ZLKjU/6FxNm3pTKnT8c?=
 =?us-ascii?Q?b1MeRLMBYFe6+6Ngkf0BylicmNy2cIwe395+wPKk8bMf00mSK7lUuvhH1xpx?=
 =?us-ascii?Q?EiufqKxQe9EXS4yASPSROVbHC6kL9Ed3aDgzJkuA8tO/bgAVFMSdQ440KamO?=
 =?us-ascii?Q?bMiOafLpj87vUffyhvoId3HoVpL7SI3G/SlBuzcyOsgIOKhEHgOwNi5TNoxH?=
 =?us-ascii?Q?6JBCRcecn8NNHeignMX669CXLuuOGL7vEj2jAsHh696ARROQKopxwTMBa8Cx?=
 =?us-ascii?Q?mKzHLy/j9FagMZUtTwST3gly6uZfHFZPZn4pf09CK5K8226K20glqBf/BrZJ?=
 =?us-ascii?Q?fCBOKGBWpjJydvKR4R6xQDcrL3/2+jc9bDgayjtAKnSJHHqFQg6r74VjYo/a?=
 =?us-ascii?Q?FsyvpqQZvIx5572h32JfgfS1z9wKw+zfOvY7QnaJ7ceG41O1ZTmxzIsGE57L?=
 =?us-ascii?Q?WkmiCYgDfV8+49p7lD2cMWtElSAilJHNrM2BGaqccRFS8cQS970+C5uXD08+?=
 =?us-ascii?Q?Q80dowfqxA2L7RydTaLFNxtQpNlh4NdNpozcA69ko/ZLTIg2pspERCSLCjo2?=
 =?us-ascii?Q?hoSQT2P7qhgo1I7N+cSA00r0eDALM2XfABrBO83aSKJ/RIVDAWV1CPCJGVG0?=
 =?us-ascii?Q?/QKyQ/XSzYz9C7/nC7MJI3Utq8MtDNEz7sublF7VRKH9bv0J+Z9W+qd6sn+6?=
 =?us-ascii?Q?sSNVusieUDvC7GhmOOwsFzeB7uG9bEA5TsOMl7aZnO6fKaZ1nltwcMkoVvFd?=
 =?us-ascii?Q?HsNg7sG06HOvRpgQSh2TG/AccvgSVk8X712vZebU9OPOKfcBp+ZDTIOaw4ts?=
 =?us-ascii?Q?wklGemHzPdOB6jdJzDVK8xIntcRYXfLIi+Ki2i9QwBHXwBiK36A6nNsyun3V?=
 =?us-ascii?Q?fPJv+Ev9gqrCM8xI6Iy+Yym65WnOjVSL8xVA7joRXuCI3yqbRubxHc6MCrSL?=
 =?us-ascii?Q?wt/n/8x3U+PC7kDxRQFZ8PhItE9YyuDjlqKI0cvJEN38EA64bSZ2qXH2s2BC?=
 =?us-ascii?Q?IZiLyYHTWhnYn060VUheinc8Tdfu22TCwSUlapEUR9IxuhlpeU8IXmacSMt+?=
 =?us-ascii?Q?nMktRgAlWfydA8GLYUWlvOoKXGLXlM97nf7O2pMIFISavdHfUsPwJLNdpQwf?=
 =?us-ascii?Q?5G/m9jPHBugx99gl5yi6qe9QnKcGbAD6QV+1uktzTmVwf+hoRGTqtlgXfs06?=
 =?us-ascii?Q?6tNIIkVan1eUhrGxI9sDG6ewKHI/5TvvxG6P6o9iLBeipu6s2bac1PVQy4a6?=
 =?us-ascii?Q?C5ieO2VcnlUv0eCuNK/EIhUKKx2S3WolYjDOdMbrqKLSEL7i8nJdgzV3gV/z?=
 =?us-ascii?Q?OtRkCK87kmOcmaxhcyNwI5SAT88r8HhHhKW02LwuWlk7A+5QPz04DlDjsK15?=
 =?us-ascii?Q?5JJ8StnShZsMnUKapRx91ZkLZ4aJGYCWcUH5PdrImkztD3ZCDT5gNfMRlKt+?=
 =?us-ascii?Q?td6chWsBS6LeHSA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ztgXfNeelfD4kUMbhEc3P+62n98ORXp5egNiHBLdrNZOpfSSpBZplne/1K0N?=
 =?us-ascii?Q?vv9ADpPo0VV87/BFRc6ZlNlsJqIdgMVES7vsBgD9OH/NafqOvhNjw48Bh7IT?=
 =?us-ascii?Q?PldXWhJLR1HOF77ZJQaPPMsR6SCADBFs3xQnzv0XNZ1Um+2GwyAtF/GLp9nl?=
 =?us-ascii?Q?wyczunQdae9W2W+GA7PrXYM4EiZoRXB0id87suQ8n9+OURe+tin6baEXM/te?=
 =?us-ascii?Q?DQ4ynYbJMPY0w/t6VtWHj8ChVN0I8d8Qu/ipbBWE7CEsoNoDO/O/AbKOWU0X?=
 =?us-ascii?Q?ObGp3PH3OoSIo9Ec0UgXnaqO2mI3dDeQDHhWdybMIj4BZaUUfjC3MxJtLagl?=
 =?us-ascii?Q?syQvlorjCNrKGTzCnoMjZSt+PO01dEAdS412+L8qMADgEbodU7uU1OSotG4Q?=
 =?us-ascii?Q?aA+g5QECkVh+JRJjN+kSB4BmsM6BXdw55ED9BFR8sW3hiocwuDWhehCIHrNv?=
 =?us-ascii?Q?GGPabfzSr1z0usik8QDf/KTtPscgX6nbUyma/bD0U8eeQ057UU5s665EGlZh?=
 =?us-ascii?Q?w6BbQl52xg/2QNfGCPfsQCSZkyG6kDJdB1Jn5FQ/ZzQ9svvsGlWjlf+Vop4r?=
 =?us-ascii?Q?XdXTFvBPK4YyCRUls3soEvagQo6+oHicWv3SAoya63KgM87mY7ysOqtPbSHS?=
 =?us-ascii?Q?AIKD++O/WOFHLyBvUi7v6G3hBf4SKx5VRnNmoBxBQgsU0GFh8psoJF/UtWZS?=
 =?us-ascii?Q?K+d7yrNRuZyD7gjZ3jsumBSDhxJLt5xLn06PLKXPg68uMJ/NPItQiysiAcpU?=
 =?us-ascii?Q?EobMZKBkEwnxNwjKp9+IVlQCVZpunoyWoT/6hMZMMD5HpbV/VMAY7bYQkrQA?=
 =?us-ascii?Q?oQyTUF5N+2bzi/4nCrJfwz/MaRWA6HR3MyKeRiiFAt4BiljCTozCI/QWBY8I?=
 =?us-ascii?Q?5xCp6mHdkX0ly8gb6HHcEynoKdUMRFBxjvVz+1aXwW4gtPL0C7NbMf2S8bNe?=
 =?us-ascii?Q?K7RA5N1oF9pcSSr35l/E+39UmYOuKiojFaUzBetGAdoscbI/AAohg65bbSut?=
 =?us-ascii?Q?lKiQJ5MMTMllqTeZQtlU61oHGpsT0LpAhvFjWRFNGuByfJeOk88tchsA6JRs?=
 =?us-ascii?Q?EVSGnpnla/mMxn6IUyuMcZj2sZFWYAYRcUI2QWkE6tXi/p+VJRXBnORrwEoa?=
 =?us-ascii?Q?rDIAmNdrmXqbN4NV7HttZT5fPRRb3gnYisIBedsysudDRvgdiaCJ/9Tb0uJS?=
 =?us-ascii?Q?ui01qxMjSHft8hJJWpxWtIiJK9JinliuoOGPKFU/V50nr6d73L/53FGV/hHS?=
 =?us-ascii?Q?Jax45eZkHD0z46RQL6Kf315zF5992y6Xdx0MmyJWkUW+Q5as+GOrQhq7Dex/?=
 =?us-ascii?Q?2oCiEnXS75Uoq6ftRuE+VNTvdUBkMp4LF4EC1aNicATVjGVSVwDKAOhx/l/B?=
 =?us-ascii?Q?zbBnJE6YAZmkG5RBU7TwfP/YCAMFPNDRUt4d2gHBh9Siy8mQvJ48OWmncCA3?=
 =?us-ascii?Q?XKHyAuWL+PjLJsEzFf3ly3ZaZ36p/CQCpPI1D5X+/CWBV566Zc5KAiWNBnN+?=
 =?us-ascii?Q?r7oIEzwPQYD9QaXOuE0HlJOssjWKfW6S8xZr3f/xDAvbS4RvzNtrDH8dN/i/?=
 =?us-ascii?Q?pO8yWv50QGbyO1DBWxiP6mbsr5SZLRpGu0GELY6g?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29691c03-b774-4bd1-61c8-08dd9d30061c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 15:06:14.2861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKacd7i6GnEaBHO5IwQLR9asSOL3Sfuw7Q4liATvIIRzCVqqLhAXpQcJqN2zSl7mtpMj0dyAkrIRVNwK04C9Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6777
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748358417; x=1779894417;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8HRWtZtKpVnC1tj48Y6vdSt3PT9W6esN5vBaujpFBgM=;
 b=oAri6I8m0Wp/8YYLuuIXTnMWhJ8CsEwbLakh99Qk3UnL9ED2v4daSNdP
 6xzpjQwmtZbc11Hg93tQyDe2FX6WGqaJE/9mP9XrgV19xMZYCN51znZxg
 gp6I+g5BQLkJje2t1VjJyf8BRnFnT1GBP0uv2qpj/CBH9uhGwTt+AlVg2
 XGzCz/POsk22hewrhNpbk7OSr8Z+98o5ZgBf2Jx4BL0KtEx9/v6XIeJJK
 HkhTcnM4OssCu0ZPUYEzopCVKtsXoCK4QLY6FX5ZZ5HSuBMgB8cUxGmLy
 h4eLNCEDp6in8Vr+KHBSeKskacI3JbiB28fh43TXSQdFyb3cj3DZY/zCC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oAri6I8m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: add cross timestamping
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

On 05/25/2025 7:31AM, Paul Menzel wrote:

>Dear Milena,
>
>
>Thank you for your patch.
>
>
>Am 23.05.25 um 17:58 schrieb Milena Olech:
>> Add cross timestamp support through virtchnl mailbox messages and direct=
ly,
>> through PCIe BAR registers. Cross timestamping assumes that both system
>> time and device clock time values are cached simultaneously, what is
>> triggered by HW. Feature is enabled for both ARM and x86 archs.
>
>How can this be tested?

You'd need - for x86 case - Intel CPU with PTM support, like Sapphire
Rapids and have PTM support on the PCI.

Additionally, there's a HW mechanism that provides system time and device
time latched exactly at the same time.

When all these requirements are fulfilled, you can run phc2sys app to
synchronize your system time with the device clock, and the "delay"
printed by the app should be equal to 0 - that's because there's no
delay between reading system time and device time values.

>
>> Signed-off-by: Milena Olech <milena.olech@intel.com>
>> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 138 ++++++++++++++++++
>>   drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  19 ++-
>>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  55 ++++++-
>>   3 files changed, 210 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/et=
hernet/intel/idpf/idpf_ptp.c
>> index cb46185da749..f8d320875eb7 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> @@ -42,6 +42,13 @@ void idpf_ptp_get_features_access(const struct idpf_a=
dapter *adapter)
>>   							   direct,
>>   							   mailbox);
>>  =20
>> +	/* Get the cross timestamp */
>> +	direct =3D VIRTCHNL2_CAP_PTP_GET_CROSS_TIME;
>> +	mailbox =3D VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB;
>> +	ptp->get_cross_tstamp_access =3D idpf_ptp_get_access(adapter,
>> +							   direct,
>> +							   mailbox);
>> +
>>   	/* Set the device clock time */
>>   	direct =3D VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
>>   	mailbox =3D VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
>> @@ -171,6 +178,129 @@ static int idpf_ptp_read_src_clk_reg(struct idpf_a=
dapter *adapter, u64 *src_clk,
>>   	return 0;
>>   }
>>  =20
>> +#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER) || IS_ENABLED(CONFIG_X86)
>> +/**
>> + * idpf_ptp_get_sync_device_time_direct - Get the cross time stamp valu=
es
>> + *					  directly
>> + * @adapter: Driver specific private structure
>> + * @dev_time: 64bit main timer value
>> + * @sys_time: 64bit system time value
>> + */
>> +static void idpf_ptp_get_sync_device_time_direct(struct idpf_adapter *a=
dapter,
>> +						 u64 *dev_time, u64 *sys_time)
>> +{
>> +	u32 dev_time_lo, dev_time_hi, sys_time_lo, sys_time_hi;
>> +	struct idpf_ptp *ptp =3D adapter->ptp;
>> +
>> +	spin_lock(&ptp->read_dev_clk_lock);
>> +
>> +	idpf_ptp_enable_shtime(adapter);
>> +
>> +	dev_time_lo =3D readl(ptp->dev_clk_regs.dev_clk_ns_l);
>> +	dev_time_hi =3D readl(ptp->dev_clk_regs.dev_clk_ns_h);
>> +
>> +	sys_time_lo =3D readl(ptp->dev_clk_regs.sys_time_ns_l);
>> +	sys_time_hi =3D readl(ptp->dev_clk_regs.sys_time_ns_h);
>> +
>> +	*dev_time =3D (u64)dev_time_hi << 32 | dev_time_lo;
>> +	*sys_time =3D (u64)sys_time_hi << 32 | sys_time_lo;
>> +
>> +	spin_unlock(&ptp->read_dev_clk_lock);
>> +}
>> +
>> +/**
>> + * idpf_ptp_get_sync_device_time_mailbox - Get the cross time stamp val=
ues
>> + *					   through mailbox
>> + * @adapter: Driver specific private structure
>> + * @dev_time: 64bit main timer value expressed in nanoseconds
>> + * @sys_time: 64bit system time value expressed in nanoseconds
>> + *
>> + * Return: a pair of cross timestamp values on success, -errno otherwis=
e.
>
>0 is returned on success?
>
>> + */
>> +static int idpf_ptp_get_sync_device_time_mailbox(struct idpf_adapter *a=
dapter,
>> +						 u64 *dev_time, u64 *sys_time)
>> +{
>> +	struct idpf_ptp_dev_timers cross_time;
>> +	int err;
>> +
>> +	err =3D idpf_ptp_get_cross_time(adapter, &cross_time);
>> +	if (err)
>> +		return err;
>> +
>> +	*dev_time =3D cross_time.dev_clk_time_ns;
>> +	*sys_time =3D cross_time.sys_time_ns;
>> +
>> +	return err;
>> +}
>> +
>> +/**
>> + * idpf_ptp_get_sync_device_time - Get the cross time stamp info
>> + * @device: Current device time
>> + * @system: System counter value read synchronously with device time
>> + * @ctx: Context provided by timekeeping code
>> + *
>> + * Return: the device and the system clocks time read simultaneously on=
 success,
>> + * -errno otherwise.
>
>Also mention 0 return?

Right, will fix it.

>
>> + */
>> +static int idpf_ptp_get_sync_device_time(ktime_t *device,
>> +					 struct system_counterval_t *system,
>> +					 void *ctx)
>> +{
>> +	struct idpf_adapter *adapter =3D ctx;
>> +	u64 ns_time_dev, ns_time_sys;
>> +	int err;
>> +
>> +	switch (adapter->ptp->get_cross_tstamp_access) {
>> +	case IDPF_PTP_NONE:
>> +		return -EOPNOTSUPP;
>> +	case IDPF_PTP_DIRECT:
>> +		idpf_ptp_get_sync_device_time_direct(adapter, &ns_time_dev,
>> +						     &ns_time_sys);
>> +		break;
>> +	case IDPF_PTP_MAILBOX:
>> +		err =3D idpf_ptp_get_sync_device_time_mailbox(adapter,
>> +							    &ns_time_dev,
>> +							    &ns_time_sys);
>> +		if (err)
>> +			return err;
>> +		break;
>> +	default:
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	*device =3D ns_to_ktime(ns_time_dev);
>> +
>> +#if IS_ENABLED(CONFIG_X86)
>> +	system->cs_id =3D CSID_X86_ART;
>> +#else
>> +	system->cs_id =3D CSID_ARM_ARCH_COUNTER;
>> +#endif /* CONFIG_X86 */
>> +	system->cycles =3D ns_time_sys;
>> +	system->use_nsecs =3D true;
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * idpf_ptp_get_crosststamp - Capture a device cross timestamp
>> + * @info: the driver's PTP info structure
>> + * @cts: The memory to fill the cross timestamp info
>> + *
>> + * Capture a cross timestamp between the system time and the device PTP=
 hardware
>> + * clock.
>> + *
>> + * Return: cross timestamp value on success, -errno on failure.
>> + */
>> +static int idpf_ptp_get_crosststamp(struct ptp_clock_info *info,
>> +				    struct system_device_crosststamp *cts)
>> +{
>> +	struct idpf_adapter *adapter =3D idpf_ptp_info_to_adapter(info);
>> +
>> +	return get_device_system_crosststamp(idpf_ptp_get_sync_device_time,
>> +					     adapter, NULL, cts);
>> +}
>> +#endif /* CONFIG_ARM_ARCH_TIMER || CONFIG_X86 */
>> +
>>   /**
>>    * idpf_ptp_gettimex64 - Get the time of the clock
>>    * @info: the driver's PTP info structure
>> @@ -664,6 +794,14 @@ static void idpf_ptp_set_caps(const struct idpf_ada=
pter *adapter)
>>   	info->verify =3D idpf_ptp_verify_pin;
>>   	info->enable =3D idpf_ptp_gpio_enable;
>>   	info->do_aux_work =3D idpf_ptp_do_aux_work;
>> +#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
>> +	info->getcrosststamp =3D idpf_ptp_get_crosststamp;
>> +#elif IS_ENABLED(CONFIG_X86)
>> +	if (pcie_ptm_enabled(adapter->pdev) &&
>> +	    boot_cpu_has(X86_FEATURE_ART) &&
>> +	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
>> +		info->getcrosststamp =3D idpf_ptp_get_crosststamp;
>> +#endif /* CONFIG_ARM_ARCH_TIMER */
>>   }
>>  =20
>>   /**
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/et=
hernet/intel/idpf/idpf_ptp.h
>> index a876749d6116..cd19f65f9fff 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
>> @@ -21,6 +21,8 @@ struct idpf_ptp_cmd {
>>    * @dev_clk_ns_h: high part of the device clock register
>>    * @phy_clk_ns_l: low part of the PHY clock register
>>    * @phy_clk_ns_h: high part of the PHY clock register
>> + * @sys_time_ns_l: low part of the system time register
>> + * @sys_time_ns_h: high part of the system time register
>>    * @incval_l: low part of the increment value register
>>    * @incval_h: high part of the increment value register
>>    * @shadj_l: low part of the shadow adjust register
>> @@ -42,6 +44,10 @@ struct idpf_ptp_dev_clk_regs {
>>   	void __iomem *phy_clk_ns_l;
>>   	void __iomem *phy_clk_ns_h;
>>  =20
>> +	/* System time */
>> +	void __iomem *sys_time_ns_l;
>> +	void __iomem *sys_time_ns_h;
>> +
>>   	/* Main timer adjustments */
>>   	void __iomem *incval_l;
>>   	void __iomem *incval_h;
>> @@ -162,6 +168,7 @@ struct idpf_ptp_vport_tx_tstamp_caps {
>>    * @dev_clk_regs: the set of registers to access the device clock
>>    * @caps: PTP capabilities negotiated with the Control Plane
>>    * @get_dev_clk_time_access: access type for getting the device clock =
time
>> +  * @get_cross_tstamp_access: access type for the cross timestamping
>>    * @set_dev_clk_time_access: access type for setting the device clock =
time
>>    * @adj_dev_clk_time_access: access type for the adjusting the device =
clock
>>    * @tx_tstamp_access: access type for the Tx timestamp value read
>> @@ -182,10 +189,11 @@ struct idpf_ptp {
>>   	struct idpf_ptp_dev_clk_regs dev_clk_regs;
>>   	u32 caps;
>>   	enum idpf_ptp_access get_dev_clk_time_access:2;
>> +	enum idpf_ptp_access get_cross_tstamp_access:2;
>>   	enum idpf_ptp_access set_dev_clk_time_access:2;
>>   	enum idpf_ptp_access adj_dev_clk_time_access:2;
>>   	enum idpf_ptp_access tx_tstamp_access:2;
>> -	u8 rsv;
>> +	u8 rsv:6;
>
>Why limit this? Mention it in the commit message?
>
>>   	struct idpf_ptp_secondary_mbx secondary_mbx;
>>   	spinlock_t read_dev_clk_lock;
>>   };
>> @@ -264,6 +272,8 @@ void idpf_ptp_get_features_access(const struct idpf_=
adapter *adapter);
>>   bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
>>   int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
>>   			      struct idpf_ptp_dev_timers *dev_clk_time);
>> +int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
>> +			    struct idpf_ptp_dev_timers *cross_time);
>>   int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
>>   int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval=
);
>>   int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)=
;
>> @@ -305,6 +315,13 @@ idpf_ptp_get_dev_clk_time(struct idpf_adapter *adap=
ter,
>>   	return -EOPNOTSUPP;
>>   }
>>  =20
>> +static inline int
>> +idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
>> +			struct idpf_ptp_dev_timers *cross_time)
>> +{
>> +	return -EOPNOTSUPP;
>> +}
>> +
>>   static inline int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapt=
er,
>>   					    u64 time)
>>   {
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drive=
rs/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
>> index bdcc54a5fb56..4f1fb0cefe51 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
>> @@ -30,6 +30,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>>   		.send_buf.iov_len =3D sizeof(send_ptp_caps_msg),
>>   		.timeout_ms =3D IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
>>   	};
>> +	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
>>   	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
>>   	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
>>   	struct idpf_ptp_secondary_mbx *scnd_mbx;
>> @@ -71,7 +72,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>>  =20
>>   	access_type =3D ptp->get_dev_clk_time_access;
>>   	if (access_type !=3D IDPF_PTP_DIRECT)
>> -		goto discipline_clock;
>> +		goto cross_tstamp;
>>  =20
>>   	clock_offsets =3D recv_ptp_caps_msg->clk_offsets;
>>  =20
>> @@ -90,6 +91,22 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>>   	temp_offset =3D le32_to_cpu(clock_offsets.cmd_sync_trigger);
>>   	ptp->dev_clk_regs.cmd_sync =3D idpf_get_reg_addr(adapter, temp_offset=
);
>>  =20
>> +cross_tstamp:
>> +	access_type =3D ptp->get_cross_tstamp_access;
>> +	if (access_type !=3D IDPF_PTP_DIRECT)
>> +		goto discipline_clock;
>> +
>> +	cross_tstamp_offsets =3D recv_ptp_caps_msg->cross_time_offsets;
>> +
>> +	temp_offset =3D le32_to_cpu(cross_tstamp_offsets.sys_time_ns_l);
>> +	ptp->dev_clk_regs.sys_time_ns_l =3D idpf_get_reg_addr(adapter,
>> +							    temp_offset);
>> +	temp_offset =3D le32_to_cpu(cross_tstamp_offsets.sys_time_ns_h);
>> +	ptp->dev_clk_regs.sys_time_ns_h =3D idpf_get_reg_addr(adapter,
>> +							    temp_offset);
>> +	temp_offset =3D le32_to_cpu(cross_tstamp_offsets.cmd_sync_trigger);
>> +	ptp->dev_clk_regs.cmd_sync =3D idpf_get_reg_addr(adapter, temp_offset)=
;
>> +
>>   discipline_clock:
>>   	access_type =3D ptp->adj_dev_clk_time_access;
>>   	if (access_type !=3D IDPF_PTP_DIRECT)
>> @@ -162,6 +179,42 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *=
adapter,
>>   	return 0;
>>   }
>>  =20
>> +/**
>> + * idpf_ptp_get_cross_time - Send virtchnl get cross time message
>> + * @adapter: Driver specific private structure
>> + * @cross_time: Pointer to the device clock structure where the value i=
s set
>> + *
>> + * Send virtchnl get cross time message to get the time of the clock an=
d the
>> + * system time.
>> + *
>> + * Return: 0 on success, -errno otherwise.
>> + */
>> +int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
>> +			    struct idpf_ptp_dev_timers *cross_time)
>> +{
>> +	struct virtchnl2_ptp_get_cross_time cross_time_msg;
>> +	struct idpf_vc_xn_params xn_params =3D {
>> +		.vc_op =3D VIRTCHNL2_OP_PTP_GET_CROSS_TIME,
>> +		.send_buf.iov_base =3D &cross_time_msg,
>> +		.send_buf.iov_len =3D sizeof(cross_time_msg),
>> +		.recv_buf.iov_base =3D &cross_time_msg,
>> +		.recv_buf.iov_len =3D sizeof(cross_time_msg),
>> +		.timeout_ms =3D IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
>> +	};
>> +	int reply_sz;
>> +
>> +	reply_sz =3D idpf_vc_xn_exec(adapter, &xn_params);
>> +	if (reply_sz < 0)
>> +		return reply_sz;
>> +	if (reply_sz !=3D sizeof(cross_time_msg))
>> +		return -EIO;
>> +
>> +	cross_time->dev_clk_time_ns =3D le64_to_cpu(cross_time_msg.dev_time_ns=
);
>> +	cross_time->sys_time_ns =3D le64_to_cpu(cross_time_msg.sys_time_ns);
>> +
>> +	return 0;
>> +}
>> +
>>   /**
>>    * idpf_ptp_set_dev_clk_time - Send virtchnl set device time message
>>    * @adapter: Driver specific private structure
>
>
>Kind regards,
>
>Paul
>
