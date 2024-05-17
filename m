Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 253378C8184
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF4D3612C4;
	Fri, 17 May 2024 07:35:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPwm9nLBiwQv; Fri, 17 May 2024 07:35:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4CB1612BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715931308;
	bh=1nl1k3MSZfIhqMcrD7YaJPiQGZ5WJon/xF/eJO/+uWM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SihTif1O8wQlNHlVAUXrzDkWhEb9JB9qkZPbVSrNOA2UWMxqaafb6m+y6yk5vMLB1
	 ugbvi66OJIdW1x27XSslUsjtt4LjWQsqlbD7Shcvp8HLLWt/fGr6IkS7q9p6y46aUA
	 HDeRNTNx8iIg3Th8b+3SbkqjBSKeeDBizsL4S5KO8duYgC2UJY0wEmlWmJTIO7OaSC
	 Q1NXC0Pbb87/H1pbQ0ZTFY6IICHCSShLb+2wux1ow3EGHw1D1col5ny64SM8BVkT2W
	 Bff4tlgEAJVmKwYYQWdkw00SyxAWRN9tqxDSKKUAA4f6Fj8nC/Fzd7V3V1jsm22mhi
	 CE55Ky5+wA6Fg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4CB1612BD;
	Fri, 17 May 2024 07:35:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA0961BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3E1260BD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:35:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7laH25Rpfgp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:35:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 349C56081F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 349C56081F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 349C56081F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:35:04 +0000 (UTC)
X-CSE-ConnectionGUID: Ij329WoGQMWmTAsPytLQ2w==
X-CSE-MsgGUID: P9GXdV9hTWGyFyrmFlKdEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23505072"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="23505072"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:35:04 -0700
X-CSE-ConnectionGUID: PwdWQQziT7+PxkkDIb8Rfg==
X-CSE-MsgGUID: dJ5048wyRVumObn5L7ccfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31694527"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:35:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:35:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:35:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:35:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVhz222m4tdx5NnMmHeCavAPxt8gL1wemKTeNWw/rMfweZc4DmMI/TrvP78Ng4ybuIEy/tPW2Z22Im9jPKz0O8/UU/Ec2mBK+8ZANxDoieNRQAszMU86qqSETdgnpXUmAxtbq5CsxgNeshf5TaTD3I0TOebOp11U5ACxl/gcwFjGqn4TdaCljaRW4poW03GSIeJSSeSTW9EYfqPOsheBWBI7ksMTQRLrl7/NdwgxJFDDvYVjm1AQisqPqx7W6BSplIFdtr9qneI6y8T/wL534Dwe/bDkdnq6/8no/aTn3rvyOyRBhkX7Bai9hIE0RdXxDSvRAzCy15pJxBKdbBO+xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1nl1k3MSZfIhqMcrD7YaJPiQGZ5WJon/xF/eJO/+uWM=;
 b=XTOVrAXtd4rsErvvdyYopsf3/gDoJzXn1s1L1FyWz8WZK2UWISM964JbwEWm1ORaaw98ZxLWYPNP4YFCTgVCcXKZ/+NqBiRdVdzfRhYUZSw+BYTM9edzU7c0N0viAjoc9/gdyfK56hja+NRNyliZLk5AMz/RZP4hwA3QBtrjeDnhbjLVkZ3afAdfnGySzPdeD76mxffHqMKcBz6Lpgm/OAM72250rrnFw+GDCijbaAcwelykWgRD5yZYwV+sqbz0zfRnVprxf1bWPjJgVB9POcwOcYm9NpsHOhbxgFpOU2xbh/y/P5HA0YQsaLgi1pA7NpBRvqosufgZ9KQH7cw0cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5156.namprd11.prod.outlook.com (2603:10b6:303:94::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 07:35:01 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7544.041; Fri, 17 May 2024
 07:35:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 06/12] ice: Introduce
 ice_get_base_incval() helper
Thread-Index: AQHalky0HpA9mb+MwkKXzfhKdaObbrGbLJWQ
Date: Fri, 17 May 2024 07:35:01 +0000
Message-ID: <CYYPR11MB84299EB1AA3CDA7237C88BAABDEE2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-21-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-21-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5156:EE_
x-ms-office365-filtering-correlation-id: 52f27ab2-5d19-424d-a8c3-08dc7643dca9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?lzyNXd6fF45j/i8k3ii7DVenEX+ibBz08jNp/jy7jEtWlGm4nD+qm5DzMcJ0?=
 =?us-ascii?Q?YY1scCFPEy02plIg3JR2xu3eA7/mDT6oPFektmJswWgCb7X9GAvHZViw3JpA?=
 =?us-ascii?Q?fdq4tXAiaP4f5Mr+6ulo429iRn7LOlRG/Ks0HNxGPAwmrRgaHveEU6Ll+yQF?=
 =?us-ascii?Q?OAxaMvlSXpNV8J9WIn7elb220sx23HOc+5jniHPB40t7xzw+TGnUYdgvhrv+?=
 =?us-ascii?Q?PkSamzSkSyThfFfwFOfXAh+mhG2EvEtNlCx5pnyAFakT9YoipElNvOz7fm9P?=
 =?us-ascii?Q?VUVAcZAuNmH2n1RmAlDzAQK9H5yvK+ulKCjD8/d/ECCsjg8AMGySfW3a0mVL?=
 =?us-ascii?Q?RJoL2V/PEH1dGa96bOqhQzcsM7S7E1xsOVijZHHj1WcyZQ5uk3XjytcVvoi1?=
 =?us-ascii?Q?gLm3GHUn4/GbJAI2fvrlgwrS8V41OmzeUBYHQVQ3PJT5/tyfFy4FE3UpMvSA?=
 =?us-ascii?Q?HZdQWptyE5Lf+vGU+shY5xfoU6mtj3cUKMDGGU+K6+K5lJzyF/Wjenhrt2JK?=
 =?us-ascii?Q?6tC8DY0aDEwrzGZfqeTB1aatir0MVqTSCPl4Ho/M56j1uQswfh+FOFp1n+rj?=
 =?us-ascii?Q?Lq31EVZK9GeinfSvu5KsYPdj5UOeokI49ALGxHVHeC1BpZnejWqf7cxn0wSJ?=
 =?us-ascii?Q?aKKyv9Q6kIfI9mDZN6Zb9a4DSZ/qG0kAT79omwWvUAn4KghQKXbPRvE3BXb3?=
 =?us-ascii?Q?/M4zAyY6GlQHR781DsqdHkESbTMKofE7YPcg4hwq+gKvTgRTwQvPIHhnuNW5?=
 =?us-ascii?Q?B8pDoOIDhsfCm26TuNiNe1LkSVFdTODXQRflYA34cmz99OXQZKE1OgEwoNsw?=
 =?us-ascii?Q?lphIUATs+OST23yUutcIuGJgDhcPDra9zznds6Ofy+FrJvBOiE28yGSOGBNy?=
 =?us-ascii?Q?jqpjMtud8hUw/fn3xRzh9w60AuT+31clogJfd/WJkk8p7IX7jq+Jqc1mTZ2v?=
 =?us-ascii?Q?7Cxvl1uUDwXzNYWxHPUN3nQLdzFG53GF+QmM2HJcMqwcW279McIrgcuqeAaQ?=
 =?us-ascii?Q?2EM5t0QyRfsrGsiXxW702EqX/UkrnTHBMQHRudplmCy8fSwcFdEn4UklY26r?=
 =?us-ascii?Q?rmX7B2+hALJfD+Z/9BECVmqi2+BKTo4W76x3pfKlB47IKfBMkFgsLf6DxGgc?=
 =?us-ascii?Q?VRjYPDfpuxAklo6klII4Vgv/n9idXx6+QUZFj0zuRuxTcHc+/Rwk0+gOMqYe?=
 =?us-ascii?Q?dcx4f2v5TvZEZN3GVrVHnZSVyubsjY5LtnXq7P19OuUVozS/Ab9yG2SsjEw6?=
 =?us-ascii?Q?qJ3/F5sbOyhzxavpwJKhqOVK0N7C8J12MBJrtRrWV2ZNFjmdcXhaX5hC/PKn?=
 =?us-ascii?Q?cfHytWW5jroXtjibLBd1M4hGEAuynvHL8ma9GB+eDA0pKQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?imvih/UqU2hA5nhziOhL3qrm1wZKbZATgORjpc5WoOo6zi5X8pJnSnzcC5OR?=
 =?us-ascii?Q?F4/6WUQIlp1lkQZtyEGo9QEOW4jtTJDLrVeHFa2u8nANHCgGE2xbW9otiPlp?=
 =?us-ascii?Q?yE2aNSOjV/8/rGxispAVi0IPPzi/ZoiNsWB201kyoLSiNo8Vhab45NXkCpsc?=
 =?us-ascii?Q?P0bImXzsSyIHPaekEZBS/nzIxkPhz+1iCn/Pf3ZaCZKp7LbGMzz7gU+b8HCg?=
 =?us-ascii?Q?GonhHKe59F+fZ66vn3GiM0RGMMctab72IFdESaefsIUYdPioNKglVPY9oLGE?=
 =?us-ascii?Q?fNHf1+dbIf4IMSk/GXFoYtF/Poj7YJnlU7kq+CBe2lHGzxwUEY44fWUohH/D?=
 =?us-ascii?Q?T1oQ8Ipbulmy8tFhoNWojS9J6724vS8qDND6fbTI5Icnz6EzL/mOwecjwWXy?=
 =?us-ascii?Q?NNgLSiI15FCEM2HwWsw+EDO8VydSwPqhZHXTjqJ59EZQfzN8/XCP68HRFuSx?=
 =?us-ascii?Q?jVOIO+BgYH67uF54TaawK8qYEJvjfuwZIV5sGfUB1fXKIuvUzEFVSzOb3v0Q?=
 =?us-ascii?Q?LMnwbLfKvRS4K6zMmWExk/B4jhFt6xtdxesyIYAcX+/i7VM9Unke0tSvW1sH?=
 =?us-ascii?Q?Sn2qmuOJIbDX2Y7kYoKTAYCD++G+4YA/rsut/XrdBy9bphrf+qH/8ieOKRyU?=
 =?us-ascii?Q?Nffw6YCic3a2sQPv5hJmGeV0mpJPa0WL+cTs5OZ4itQ/bNXYMS9NprdRq9HV?=
 =?us-ascii?Q?CC8Vn2JE2rFsVWP1R+aK/EwzDBV2H9PKc9wwJNTLWh3H3qDZzg7w5n9SJZho?=
 =?us-ascii?Q?Vt0CNE74xAJn9veQR7NpGiJfRH7ANP6hO0it7DwQlhGbfYJOcSaWe3nwN2y1?=
 =?us-ascii?Q?VqS+A7st5+dpXDqG8qxslvqA8okRpajcsesGhBLnVQxjnB0qGINMUd+bPfaI?=
 =?us-ascii?Q?4skWVkeOIzDxhLCFKSIE6MBHZHDvB4ZULNdA0s0dLrfE6zu8KDwv5sPFR4+k?=
 =?us-ascii?Q?AuRgt8gVh8CPUy+95C+UFE2UNtZvRU8FhYzmG0oFR/AxANM6po73PFS3J8g0?=
 =?us-ascii?Q?OljTacm2wrEL8UCsD3xh1pdK1T2yH+DjKoJeSjZSVzXDHTwO9UlMqrw30Vsd?=
 =?us-ascii?Q?5sv7l8P833/jYP45Jmp2xLdZHZfOiWhwm0EGK+BPK1IiEx9XWgDwWsWv4Bwh?=
 =?us-ascii?Q?7EfB3EDI/ki/Mt/mtUoO9d+hnmZXSXfi22Fvzr/VkKu3k+Bn9CftJKXTu54T?=
 =?us-ascii?Q?ha1hg1JsWVVkagTfhQn+g/pdwplBIi+0gYIbmYZ/0W7QjqXx9Bz515FMz9ag?=
 =?us-ascii?Q?o/KTYSaqujcJU02aVhYmVFIV+il1kFMa57IxktJdFa7RknIAFRPD9x93R/0I?=
 =?us-ascii?Q?UHlKjOS6Pq3wnuT58b8JusPTpVIOPFbiuRJy03XHz9zbV35Dngd9FX+pCVhI?=
 =?us-ascii?Q?mVpzfk2RkMf5HdBKRLBut1Mbq+l8WZtHm/kwE0ZWhtmw0m+asB5gZ2+l2K5r?=
 =?us-ascii?Q?+7cblSpm753XwZII1AYdqnObICXuGiVlqAWN6MlhikgsaWOyEDqOiVbMCh1N?=
 =?us-ascii?Q?izcWOnBL1v+neBHcITeFJ40bZB+Wbr3J8jcO2vrG9czXOH24qSdTa2F+1Rew?=
 =?us-ascii?Q?dRQGSird57jf4KGWnIrYKz0Af1ErNya0ovErJLTyMNa8C33erf4bEPWrdmcS?=
 =?us-ascii?Q?TQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52f27ab2-5d19-424d-a8c3-08dc7643dca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:35:01.6687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /F9WPwyjVBU6AxfDm6ozCGf/Nc/mLopv3ruXtCebgK/xxmtd+8INSWzQSBuO2WRbXvnmT/pG9qCNCODdZBRdwbrBSy2BJAm+LpWb6O4iwFzvrvxZ0tSwEfI+fbc0jrjh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931304; x=1747467304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lIGfwIjE/GdQ+Mx6WbNYZQM8zv5hvyRls8Yd15FMzrg=;
 b=RkfD65gPjcmlBkuFjJTmasL+gaxJzaooqkIcQFGJSn8mVd80+zIANcv3
 WD3jJdEY/qzSBuZvZv2oIDm9SRTBHj5IapVJCcC4vFOt9HvMpmy513dX0
 klUltnAjdjHe+Pq7Nx7GacW3Sgp91XeDbWcjwYH2Fog/amEaAf8rUkU3H
 VbwK3mUkNBkBwJG9yL8EXVGpLhEhuspYHFv5VTS0WVzgtOmwT2VDElufH
 ZfAgqN3LWwiT+uwKngxMV62NPc99kAuwvC0dOc3634RhYr+qjX+VX9xXM
 qfAX+4MOQPgA6r2LSitXLleM44MD5KJxL6Ap0mjZcGWqmbYoi8gTnpMP/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RkfD65gP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 06/12] ice: Introduce
 ice_get_base_incval() helper
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 06/12] ice: Introduce ice_=
get_base_incval() helper
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Add a new helper for getting base clock increment value for specific HW.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V4 -> V5: Removed unused UNKNOWN_INCVAL_E82X
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  9 +--------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 18 ++++++++++++++++++
>  2 files changed, 19 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

