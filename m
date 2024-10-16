Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 168069A04E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 10:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6038280EBA;
	Wed, 16 Oct 2024 08:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I-s_UKKrBMEx; Wed, 16 Oct 2024 08:59:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3EC980EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729069148;
	bh=9xoJoxs6zMMNnx9QV/pRVq75zjOYO+n9/h+cogfummA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=js0B/+3V/eMkFo516covV5buaewWz6wiP8eLdW7guEaoYzC7SOL3+5clt2K3U+WBt
	 nyfB6tKEB4Dc/vPZ0vLqLZi23AMarQcwhe3QOBIIn8inDd+ol97Av9L9WuL8Oi+JhN
	 ITenEPfu0XCSbNlNrEmelykY1lOUv4Sp8S7+u/dE44+qASYT3h6bQLaha6Q7vFhUdz
	 TE11Tv1FckNMyvgmDhJhUnDEtUuNbxec7yylTJI9TTfnOD29+P3kZOSqINWy/CIiXJ
	 d1+h1iV3U406eFJ5q02Zt2g3Oo8mzkTxXS6VIal6zUcFvgGXE/JyuecBdNQc3FVt8z
	 +NwLhHi3a8pvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3EC980EA9;
	Wed, 16 Oct 2024 08:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CC7DE2072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 08:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B93C14066A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 08:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QT1sMcLX34SM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 08:59:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8538440664
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8538440664
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8538440664
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 08:59:05 +0000 (UTC)
X-CSE-ConnectionGUID: rsCtdoS+QNCr7QzV3AobPA==
X-CSE-MsgGUID: MmxFy94zRJ+/yBWNVnW8xQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="39081091"
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="39081091"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 01:59:04 -0700
X-CSE-ConnectionGUID: A2eNZxIhRiiWniEIdhK3zQ==
X-CSE-MsgGUID: gwhIdhrhQ9+fm6wid41EPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="77839826"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 01:59:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 01:59:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 01:59:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 01:59:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 01:59:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aZg+sk03IR/cHUQVGjCoed3eeNNafa+1TMjXxp04Z+5AODN/juj2skxe2JyB7SxO2dv2YfingEGzcz2qSuUyVXYUT430VmIdyTPOQHAo6gHcZktLRgLbqpDOebMt8Ra54+bDsG+ZqStuPTcjUNrSZC6ZM9J0TqlruKt1HDbWvqHH/lRdslX8Bv0A/Kgw4f7vFVn+ptUksSkxIfo51CsVbAOFfQZqOZt4wQUUCKsK8VS8wZD6MaC2xLdQ0Qhi9W7l1Vzr9NruuzDTkgbInpK56FYgs77vIbEgFBYJs7TarufLa5OnuRj9qe9zzPm2PeuesGd16ErR6kTMMO86T2m4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xoJoxs6zMMNnx9QV/pRVq75zjOYO+n9/h+cogfummA=;
 b=krfsSXDiVtuQS/Sz7M8mcJ5YyZZ3OpDKQw72VZ7hnkRqKMaDdl9jFaGsAgoW+F9fhSlWJm3wpOuFFpYiJ5lyrH4ClUO41Rwsrs/Mll+4FgOTJYuT3CQ3G6Dr0JhkGQu+EaR4uGo4+KbMZ0HtxSHjRpjJd9XPi10DrWHzBtoL6XWMYG6iAgKsPh+R9kM3Dk09ObNcF9JXuzNK0cYr7Z8fzUs+l2FFoM5/Vg2vx9cP+5bAj1673xm8lxnn9nXaPrCP8Fwv8P8LO44o+VI3sUgEapdI+6u6B/V2P69g9s/qoxA8J/PulLFbD4qXMDcaJd57faFvHNY/mGVaLTA0GcKp5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SJ2PR11MB8588.namprd11.prod.outlook.com (2603:10b6:a03:56c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Wed, 16 Oct
 2024 08:58:55 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8048.020; Wed, 16 Oct 2024
 08:58:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net v1] ice: block SF port creation in
 legacy mode
Thread-Index: AQHbFip2idGagmCQwEKAsQhjN/qBErKJJrNq
Date: Wed, 16 Oct 2024 08:58:55 +0000
Message-ID: <SJ0PR11MB586520F7C1885D5335ABCA398F462@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241004065526.7306-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241004065526.7306-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SJ2PR11MB8588:EE_
x-ms-office365-filtering-correlation-id: 31260af8-dab4-43f1-4704-08dcedc0c39d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?tseExf5t4NAaxoaSqKSzyEY8EntmtpHvh+VHd2pLAGbFE/r6EJcSdKQdfl?=
 =?iso-8859-1?Q?dQm2SOORKaW2qxPCol7ei+lHjrn+F0C1fhhG0v1tbIOvSe37OCMupBRZJR?=
 =?iso-8859-1?Q?cNbaCIQwRhT3bUjrISxHKgZlBJftP2SolVaAH95FZdLjxtA/CKoquRmgsk?=
 =?iso-8859-1?Q?GyUnRemaH0JIlZ3WEwYpN0SHRRhI+YeD1PayjjkPJFwn7r1JmiITArzllQ?=
 =?iso-8859-1?Q?3Mrk+V58vUL7wffB/Bf4EoOtYwLVzXSEpy+//gH89el75+Gw8OMJkE66gZ?=
 =?iso-8859-1?Q?nywgoUrzhQQORQ7Fpj4RSXW4D8aCeLbWE3ws/inZ0koWewd8AXzhPGzmt/?=
 =?iso-8859-1?Q?OjgeJE+w+5XnpC/OIuhHQwxYBuT/xN/HkAIRbmOnDu/IDI6C/+WBP7XaGG?=
 =?iso-8859-1?Q?SHOFOa0c3cN0J2D578s1xXsT9gfHBI0syo3o3iVPI7JPXhjdRlTTg65s+o?=
 =?iso-8859-1?Q?yCwafP8oGd5zIkq+YDGsHcoimk4xDTd5dqti3L0R0bebzWfTa0g97KKHaj?=
 =?iso-8859-1?Q?H8O2L22tN/h/URh+Y03MdkRoqFbKR5WxlToU86lKK/2kbvraK8Wv5rrzaO?=
 =?iso-8859-1?Q?3kCeUwFp3EoorkQW1bSCPWSf1+y8fkn0ndYs+xte3Aq3HiIJ4hcq5RfhbJ?=
 =?iso-8859-1?Q?Y0/7GMzVS9zCbRJHjrMp6qLsdkm1Pmh/iqoqcoLLfStlKgaapP/f0vp79G?=
 =?iso-8859-1?Q?TWe1Ep5MEKhvBsAgVLiWL5hBw1PEAyjbs/+sbnskGKkKHtJMaxlbkHO58D?=
 =?iso-8859-1?Q?Kj//wsC3itDrBb/hS11EBBhbNiOED5N1DE5WnnsCgxSlkxBcQhbqL6PyLy?=
 =?iso-8859-1?Q?xGZkxOe4d4CT0pCt6RS7rv2ONHzKI6CFucq0wb4AB/TNYVu4xeTeY3pnCQ?=
 =?iso-8859-1?Q?gAWW+nkVTgoTRB6vcN3Ar2EC704g0lSECVTESmLuZ5OsU4Er5w5xry3KD2?=
 =?iso-8859-1?Q?r/5n3uHwbEM7ElRF3IicyL2OhRmPmUSqMGiAdEiMirZviB5fiwqi3h51DL?=
 =?iso-8859-1?Q?kqYQyZoCYSTDgz7SmkFkdwN2rJYAoEtopscT/ZH++Yxu5YpD1lvbNkgrbD?=
 =?iso-8859-1?Q?QNW05w3XaOljnLqwoAOZIxBED7whogdA9rhrTV3P/H0CIabtkT1UiQS1CB?=
 =?iso-8859-1?Q?E4nKhj47X21wpgIZLqQJCmTxfNOh1uGXhqA4cvefDTcxa6HCwlQs5r9Qt0?=
 =?iso-8859-1?Q?9bKOTO8hpv1XG/A5Jr3FKq3ZKX1gosh1qou/yEyjTCuHDVwCF0l85HoCbI?=
 =?iso-8859-1?Q?xz8eJ1OGRSlcqHcoQrQmMD6hFbBXsRM1ljZdKQ+z2njJNAyD9tQCmNVVUE?=
 =?iso-8859-1?Q?4hqrhQV55xDfa5FCeY+qH5M5UxcPSSOaGt9RKYQC0fbu0nUrSzCARPNpVM?=
 =?iso-8859-1?Q?U3jZ7TYyEzV/NHpM+FFnbJeLgxxiphBw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?sBlU+vVA85pELJQ11aJwkUYhGw+3O5UyWIxpL040F3dPZCozAI3E7+HsFp?=
 =?iso-8859-1?Q?KAWHjcjhHV7PMMRVwLuygZOEifYUtkbOd76ugoFipoWrLaupoWeF5/hGrM?=
 =?iso-8859-1?Q?Oj3e0afOzeXiyFd+5lpFvuIlH2mUSl9yT3309mEK4eVPcHKFS0d9qOySyl?=
 =?iso-8859-1?Q?D6wTKk3xi7CZCiK4yCFNvK169Vha6Hnp1JhFq/2jvJ/h3YkCCPd2InEPYQ?=
 =?iso-8859-1?Q?DSHb5/gXhxYUWZKW4up0h77vbJtdHgwPjdGb5fOlhLNRImtBAJSgP+sLea?=
 =?iso-8859-1?Q?i6b1fTihoIQdsj3SUgZyxdaMkTeWpTpu2ELdkxMDEa5zCC3aF0Nf3XZGoE?=
 =?iso-8859-1?Q?r6yBjFreJLd+xfl4q6IK272j/mnuGoTCcbx88fTC1VovHkSdcuSN4/yiB+?=
 =?iso-8859-1?Q?UkXzZjtfbfMxwNHPxfkPzomvevxgqSiFJPNUGcfZqOSReblq2l2VKw2Aol?=
 =?iso-8859-1?Q?RLrPNfiuZH/0TcMmAS3dsiUEveUa8zvneWDCvFWw65lUtgPPK+pzoW+s7S?=
 =?iso-8859-1?Q?o0BHGdF4YXvN5v45+IzNEjfBhN9NMCxAX9p9dTJD6JShINpDM8O1iqmOpA?=
 =?iso-8859-1?Q?PGZ/z75xKSrp/J9Ja9iZ94ZPYM6gMIrQWCMwQP27MVVLUCNoML5ZSIiQ1z?=
 =?iso-8859-1?Q?VHKj5kSoIXLlQcNhMmiR6XfbfBmW73jdBrzlax23uTytRhCnnOlu/T3NH7?=
 =?iso-8859-1?Q?e29boIHUbhrAUkWOj3bcfAWlfFLjBev7H2FZxZc6fnoPFv1FgiGKHrC6Ev?=
 =?iso-8859-1?Q?WFkgRfEuOwXyKFpHoVFzVBMwkt0oTub0SA8U4vSxbEYtK3mPRI8fzzOzOJ?=
 =?iso-8859-1?Q?UIYWU1ijCVNZoOAs/Ro4CVzrhAX0JX1WSk2V1ILKkWKBzMbN0ADL32Sydr?=
 =?iso-8859-1?Q?WUcL8YY+1wqEHf4i8uCXTVrz5ug+wvzsSZ06R6M2yumE05Y/9qn0N6Rm2H?=
 =?iso-8859-1?Q?vNlfyuBReBafOAUbQvxt0dKmtPCaBizIec5iErIz9gKmo6R1GJsBaFA1of?=
 =?iso-8859-1?Q?N7c75XGokZVci1KHhVIHoviTn6jDA0Gi8tDyHBz1Vd+W3EPwTKWe7VgJwy?=
 =?iso-8859-1?Q?qTFmWvuGAhckk0emfXZgpyldK0cYU9kJ+Gf7aYwXCtD/XANwaTT4PhxcQ5?=
 =?iso-8859-1?Q?UhB6MHJjSz5SUWkmbhddO5pqZz00sxdFAWYTZo19OwijD193S+XjTB2tJX?=
 =?iso-8859-1?Q?OeCQHgVszAxPkUP6dHqzcN6MYVxQrLYVhQVcvBArFW+7KqX3FKhCe6TLMj?=
 =?iso-8859-1?Q?/y408Z8DPXJrIYX/HOR9t7VWF4DnbiqeEWArNTQxGgDvqtGl/Te4MXitkI?=
 =?iso-8859-1?Q?iNBrI+dlwChOzf0N1b2iWHv03nmP8eg0B9TNBynFNLFbfqsp0lBL5YpRPD?=
 =?iso-8859-1?Q?v4O8TS0Rkv32nud/wiBQz/WOMgsdbJeMG+rYQ4G+JfifYomhxV+iSXaLE3?=
 =?iso-8859-1?Q?0Dx6V/aTYWFsdaC2Cnp5xgO90voYRc42aarTLA0SIQOQRuU6mcNBOstUCj?=
 =?iso-8859-1?Q?z/gwylbyh0qdLBWjLOzPpmKJVg0UommMjYVpeZ5ucfTsPdsaVi/Dca3ZeE?=
 =?iso-8859-1?Q?bvi1WQUl1hsStEqLi+GlKy1AC3GcL4XUN0OyaGiEf5F3kYlenU7y3rSYt/?=
 =?iso-8859-1?Q?zCrAqJxz2b3yHF5LC3RKYT2uk2T8T9qKKvshnPQxkogG3KCwLSywOkuQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31260af8-dab4-43f1-4704-08dcedc0c39d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 08:58:55.0707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qkXk/75nAKC8NH44972varDXKSdzvNqRZTxjsapcSkpEpSqyyNoIAPWEkRdMnKNjm2LYxgTvfFOWKu7Q5LAv7TwTV4gxqDqA1jtRJRQXC/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8588
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729069145; x=1760605145;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xoJoxs6zMMNnx9QV/pRVq75zjOYO+n9/h+cogfummA=;
 b=QjcAwHtxnFKLfSnw5b/l+PgtLqW83Cex2X5bD3n8VrvGq73qLDDBeqX8
 xHeZcJKiGKFlQ8EmqBeS33anbHtY6tqwbaHtHfhnTjdZHPHlHQUQZwCTr
 59hS/ZnWGmL97s/z3HqEUmpvlLVNjl6dH7daNsmfjHaqwSVJQbWwg8hxw
 M+2Yry9rlhFhv0v+Sz1MestKEdE2TzMWG+FXJMtRA8o/kCF3hQhCn8rXC
 P5BVD4Vi/MjhA141kZLpsFgbrZ4L3YvJxMy9heP1HH7VVdXg6POvMw4fk
 RElfjyoLeguSKs45QBHTv2TnGP2vqmZP1SkbFL8H8J7pESM4ryVVSNbIf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QjcAwHtx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: block SF port creation in
 legacy mode
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

From:=A0Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of M=
ichal Swiatkowski <michal.swiatkowski@linux.intel.com>=0A=
Sent:=A0Friday, October 4, 2024 8:55 AM=0A=
To:=A0intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>=
=0A=
Cc:=A0netdev@vger.kernel.org <netdev@vger.kernel.org>; Kitszel, Przemyslaw =
<przemyslaw.kitszel@intel.com>=0A=
Subject:=A0[Intel-wired-lan] [iwl-net v1] ice: block SF port creation in le=
gacy mode=0A=
=A0=0A=
There is no support for SF in legacy mode. Reflect it in the code.=0A=
=0A=
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>=0A=
Fixes: eda69d654c7e ("ice: add basic devlink subfunctions support")=0A=
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>=0A=
---=0A=
=A0drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 6 ++++++=0A=
=A01 file changed, 6 insertions(+)=0A=
=0A=
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/driver=
s/net/ethernet/intel/ice/devlink/devlink_port.c=0A=
index 928c8bdb6649..c6779d9dffff 100644=0A=
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c=0A=
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c=0A=
@@ -989,5 +989,11 @@ ice_devlink_port_new(struct devlink *devlink,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 if (err)=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return err;=0A=
=A0=0A=
+=A0=A0=A0=A0=A0=A0 if (!ice_is_eswitch_mode_switchdev(pf)) {=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 NL_SET_ERR_MSG_MOD(extack,=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 "SF ports are only supported in eswitch switchd=
ev mode");=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EOPNOTSUPP;=0A=
+=A0=A0=A0=A0=A0=A0 }=0A=
+=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 return ice_alloc_dynamic_port(pf, new_attr, extack=
, devlink_port);=0A=
=A0}=0A=
--=0A=
2.42.0=0A=
=0A=
=0A=
=0A=
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>=0A=
