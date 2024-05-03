Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7418BA6F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 08:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EAA783478;
	Fri,  3 May 2024 06:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i299nNeD6ixI; Fri,  3 May 2024 06:23:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DCED834C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714717404;
	bh=gwMlWWyqkwCa7H6nbY0zJ/u/Hjv4xYpVtRa0wMbIES8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gQX7e2meJUmPWOgftBzc/YsOhUIpbqvXAjx8PTTepXECvaorOJPQ5+RvYiw7aGZ2E
	 MKxf3JiWcJHsCOXEscat9MYw98GF5bgeMQRqlpMwHDArXU1wO6AUW99jj0Xf78AJmN
	 Voi5UuM2ubgyip+hQu537gwf9XsTKvfbss2hEuauP+NMq3WIESZtHyUC+dYPC5ZAnM
	 X5WCh/cGft992+zkbz6gROjHBoQecdtaRU8754ZSavGDCT/aaNBv3mpB+4DB2TkkPK
	 fefGUQnoqXBigNm2I1FT7PuDKkjlaXw0MnM4xkYFApN1FPhLY2D/kVFdJWzI+X7eDP
	 du5S83SZQAL/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DCED834C7;
	Fri,  3 May 2024 06:23:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 362EB1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 06:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F683834BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 06:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Un1Imb4Rxjs4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 06:23:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2D14483478
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D14483478
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D14483478
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 06:23:16 +0000 (UTC)
X-CSE-ConnectionGUID: iMYR+lmHRIa2gIDEiBat7A==
X-CSE-MsgGUID: RN9SmbA1R3miFb9v5ImR1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10395287"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10395287"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:23:16 -0700
X-CSE-ConnectionGUID: y6/Eli7qSYWyibQ6/G2e6g==
X-CSE-MsgGUID: nnrWYSG7R6uAujvbhOV0Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="58261181"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 23:23:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 23:23:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 23:23:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 23:23:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 23:23:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLvW/WBelEtiiRSojA/+VXsGVbt32iVjUG/mF7fU/dwS7v3dzpDnWy45vncpJ0EXpcDFXZH/qQjOKh4bUMq9aTws041QExlw9OJT6EkEON20wA6e6dJejh7gdrRH8QMGfe4sFGeBdHzBlyvUopHanKrUpIUawbFJu3JxiWI7HsIwmbk3xkxCnLxIqBtpcMjrLzIW8tDbgXF3/lP2hAWPQXmopoJaG/x4a51fnsaCW4R983qxXjzXIgJhLg2sGpQgL7eGeeZWz+NmrkwRMHvJ2499W69QTUlGa/UYgrU7jSc6KRef8QOqPgePL4aeHy0YHia8+XyWhlaBwtYghXd0Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwMlWWyqkwCa7H6nbY0zJ/u/Hjv4xYpVtRa0wMbIES8=;
 b=S00O5a9ogUs8qujBNmtPfMPjyOZNFEkJVcLAfMKco7tk3SK5BpwwMlDpxEMMR9WdQvnfVpuosUIS+QBiISenBkViuYFX7OxwO9uTiE3ek9vAjQFH6Rk2uz/neBkoQeb1tOW4Mvr4kTwKG6oKsZuTGBucAwvZcHo6qTXxyjVIz993l477D8lXydP/2d7k16ncrXDMg/mppOKhX4wCDkYNcV9GoeHqwZf2BKVxafThMNztUsNSFZCPZ/Suq3RFRB8F8D9qzhrB0an9sDROEDlqJA4BfVOnf4q8gHB184qbdhod510EYw2NLUh6exriesIav+5dg3obyqNoFS5KOAGlpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Fri, 3 May
 2024 06:23:07 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.029; Fri, 3 May 2024
 06:23:07 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Deduplicate tc action
 setup
Thread-Index: AQHajxGlkUpKAdALiEKDeG3VBVww9bGFJl+g
Date: Fri, 3 May 2024 06:23:07 +0000
Message-ID: <PH0PR11MB5013017E2475CE01519F0FE4961F2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240415084907.613777-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20240415084907.613777-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB8252:EE_
x-ms-office365-filtering-correlation-id: e6b2b722-7c6b-4f4f-69dc-08dc6b397f32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?FCuyL/qBJ5N83qUterQYmjDs/6CMBTWFxbNhM2WUohV+mvrJkfBMrWLhrhg4?=
 =?us-ascii?Q?nq72Wanh8lnUUatY1PmoxQg1U7QRq67wORLyWXXa2d4x8+6/UKfTyyM2bK/Z?=
 =?us-ascii?Q?wfDk+G/S5YnhZ4X2OMGnZWbdsSaKmZzJuBVIcUFpw49kFwj6PX4cPC+L+D3L?=
 =?us-ascii?Q?LojbHaspSeSiyu37/O2a+cJgCmZU3XFQbnz60/rW10FRs2cU0M7iP+cmW9tP?=
 =?us-ascii?Q?oUmx1/O4UmC21m8prHgee2cV6SJhQVQVqr3VX2ZVH4Hd5JMVvanj+uvUonY3?=
 =?us-ascii?Q?4ezED8lQaupuNd/afcAJcLfFvQpq6PpAKdORWDrWhXlY28GEi/aLSZcomKmZ?=
 =?us-ascii?Q?eO3uFVIBHdwOFN5STluuUVu0NdRA5yeaf4z9w5RMJmZb2qbyEiwnU2hvpeb1?=
 =?us-ascii?Q?F2eKmw1f6qtJU3igcss+j0FECQwXE5G6pEWLfzlaJvgWJ/GkDpoJb9TpXfOl?=
 =?us-ascii?Q?ykahDkw24nNHxXllu3wAIgULaOanoVThcBTvqz5vMZwQMH08jshdlCXK0fl+?=
 =?us-ascii?Q?i+p1Q4kElv+KCA+MSJSQJRxrmBl6kI1Q0ZH5YNPuEGd7hsTKYMsOCX/IsXV+?=
 =?us-ascii?Q?rqWND3IK1V7JvO1zSj1pLrmBAllJzM/rawH5cPWT1MAuJlkujAIMzA++pCwx?=
 =?us-ascii?Q?vYyMbQ/8jE9eycq0oYmlE2vr8Q7k298rjQoFam+aKZkXhqekl3VRDfx0L9eu?=
 =?us-ascii?Q?SCd86obKThJxwkJ5oLHSt9ON0Elr+f/LKBmEVp+KJjRfRo4dPdGzus5BW8XR?=
 =?us-ascii?Q?/S3ji237JK2NUtXkVhkQKCMX6+y1N9MB/KGi9FnnnDzSpTv5CTBTpQnJdlns?=
 =?us-ascii?Q?C9GenUq7OG5KLDgFW5QeE1bxCin7REXyEGuZ5iVXyOegmQupPii2B725topC?=
 =?us-ascii?Q?Ry0/+3pHqbs7NSd94jdLK9YAGNazgFLYloS+5cHTFrjMUh+rwRIsrR5u9Cva?=
 =?us-ascii?Q?cZi/xXJuh4vVR/8AZs/sCbPMU1AX4TsK3h7+HF7gLDeR7VCYXcSOzF0kWiJl?=
 =?us-ascii?Q?y/ZX6/jfclpeGre2exnklEGY+mSzNdGILgq13eyJ7dYMBZzaqesAl9lCz2z9?=
 =?us-ascii?Q?58iz08oqFoQK3t8Gv23nYEDqkvJWPoN1vjTZs2K3yPl1//r2vOqT2y5gBUx+?=
 =?us-ascii?Q?NoCgIxdWfNT297Ry7Hns4ZRGMiLc+Jl3G1Q7Ppv4yabRLz8h0TqeqTqshBg2?=
 =?us-ascii?Q?+PizdaNhXafXc4ZtUsNc/a7jn9XQj+ECYZY3SSm7qRKjcWm9mmnSKI67fXlg?=
 =?us-ascii?Q?VjE7j+xjocjnNTfwNK+jP5ZBtDpFLf/cpLeGvo/X7z0SsD366CJGe0RX50Ht?=
 =?us-ascii?Q?a+GgPSj4qekx77qs3VSXYMGB+npOc8GTaF0BfwfXpRfNFQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PcR8MOXZr0S3VISIvOwbYMFdTjZFr27IXuz9NZ8DyeTlmY7nfQ24R3HRRXPC?=
 =?us-ascii?Q?mw9RtuLpKSULG5FjI77aw43SuZKhJwvNyXwx21xXsVfKSnbwW6VpnmfH08uL?=
 =?us-ascii?Q?IljZ4PiTcQ8o6akh7ArFhp6hMFpqQCCLgvvVUk+3RyYkCiGigM57YEVuZZxG?=
 =?us-ascii?Q?VDcbLnHJddq2hbAEa2176cZ5s0Db8N2kUH3aq73d40kt8nc5Trh3IIROWyAr?=
 =?us-ascii?Q?jdbESelwAAholzvTFYCpfiz2xolKhsZ2G0Qn7761GNJ3Vqv+soceHLgADB3U?=
 =?us-ascii?Q?CZFIglgE/T8bD6PTKRHwUhqHbUlhLLcpapb0ezdcVmVq1reH5lRjiLqccxMG?=
 =?us-ascii?Q?/E0VtLdDZifwx0TIyBlvb3kWKAB1kFhb7nPnF5OGcNcGXu4s7jndmr5enQPh?=
 =?us-ascii?Q?bsVLUzhKzT0D8CjetZPYmqnIztu1eSTgFgNDdezR9A4ivuoNEpoj6X3/UGaI?=
 =?us-ascii?Q?VqZgdLHJenSsYtMAnlhRXxpOOkcdNQ2jZaL0M49d3VZG1MC3+jTvOeZLD5rl?=
 =?us-ascii?Q?DL3DObs8lL74HhIi6WsRAbKwGCrjPDNI1/W+uQBnx2qKS/HpFzZwHfkZh/Jd?=
 =?us-ascii?Q?xByjo/AOC3Q8gbLXZep7aYqWYENLad+rqAr/I5FA6IWXkp0LLIJCyFP47TkI?=
 =?us-ascii?Q?e0G2DCbF0We7IGwZVU/NupIIWfU1cBPIOikq8mI/xPnkWhesTrwbmCPyZYVA?=
 =?us-ascii?Q?KoQ1xiJehXCWSK6+y6LtKm3KO13pcVNfTXkSCawgxKB8f6ZuUCRF0XsRoXBa?=
 =?us-ascii?Q?Yu5bQaIGjWBRLoEoC1+dfQ2gXEIcvGc0MmD3CDTzaF9ELHO0+VM3nYgMqSBU?=
 =?us-ascii?Q?m3KpjhjPvznGRSkPWvNhqy3VV3yVyh8ilAeunoQL1He68VVG3CXAAUlObWv/?=
 =?us-ascii?Q?d8+57NZDx8rTmb/ZrssAy0dVgtIXdzFS0CY++Wx93a8uu00siwm3R8mIcAmM?=
 =?us-ascii?Q?spFulUFwDmJh+pNxBPB18aJVr/Xf/EAAKqH5N/zZF1Um4tCimvWICC2t+ltv?=
 =?us-ascii?Q?wDXwooe4sV6+zODB0T7+Mx9U/JBoQodTTnAHNkv8GvDL25Q1o6pVGWGe805n?=
 =?us-ascii?Q?wWJI1EeRwKOaqYrnVPZUMbBgbWdAqB2ya+wrbXFuhev06Q0jrnzv9Fs6qpEA?=
 =?us-ascii?Q?kfxs8CUfsAFGhiXrHm0v8grGn1KU6qq43DMQkK8OFiGpvb1V8g21uV8T68G6?=
 =?us-ascii?Q?l+lXP2wp0k/sXtwar0rIjfLJazF8hINxHUo0DMtcK9PgU36MMwVt6lWKpJD5?=
 =?us-ascii?Q?3NYkaUvW7oAHBMkfA6W5R0QbWkeZAaSccpCTINDQv/6H7Zy82zYMc/vxhXia?=
 =?us-ascii?Q?BXwJp544iwykXG6fzw04nYgZkkhEAqGi95KufllwexlRMgqKEtf0xnKaxOHi?=
 =?us-ascii?Q?7X84xw0azlXUJDIujrCVdFz23OFNBzKw8ozVUN7QHMbPnUw5/xklec2ftD56?=
 =?us-ascii?Q?XIim0fR00vmO/5CK6OVqZ99zgnFSRhx/jCHqebymq1HqUvPfIw8Z1wWrpNoe?=
 =?us-ascii?Q?faCJncBaJ3YXVW/MpgmaIgQZkbu3xwhHg1s4/lWYPmVXwfVJCEOdde7sg3F+?=
 =?us-ascii?Q?8n7nIFxRUSyAbevGhGPNJ9Mxgz/L2wsFuHXi2wILpwPDcIFRA8cfw+5M8tET?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b2b722-7c6b-4f4f-69dc-08dc6b397f32
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2024 06:23:07.0815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JaFUc8s0BUvydmpEJ59EfgzJGswW3q+auWrN673gOvL0hTGxJbsRJZ2q6L3swbP/+sJiRhliwt98Dcj1C2utAkMZPwSIqP80U8IGRpCJR+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8252
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714717397; x=1746253397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zgC+RqUQxBBlfLo8hAvwz6x6xO1ftjudTd4DJcXRfI0=;
 b=KyK5hV1yNHvmDgNcnT7+d1qp+roFB9DONHBQB0TsdBZOyUpvLJeT9TjX
 oGuu7QTXcGvTOjI3kGdVHXzGxJiaj4JJ3E3tVpB2qT8nYHjTko9DaErmq
 oiH6DJQODNbsvG8JO2D5pyIkJd5In5JL1ScHbbKb2UF56HY4haroIQl5o
 bTG1GcGP3H2zEAkhKPAk8Sk4+ItN6ASJNY//tLD/fz0rJHHFf8twyraZl
 VMyfcvzpvQkyf1GKrFYdrlESNcuPh3lJFSnNUCNM/NXJ/zNTicUeCahA1
 DPljCcuPAvCMMxjDx4xCRPCfwkN3O3K0GRbcpKWG0e7r1fZidpMrHHy1P
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KyK5hV1y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Deduplicate tc action
 setup
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Staikov,
 Andrii" <andrii.staikov@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Monday, April 15, 2024 2:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Polchlopek, Mateusz <mateusz.polchlopek@intel.com>;
> netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>;
> Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Deduplicate tc action se=
tup
>=20
> ice_tc_setup_redirect_action() and ice_tc_setup_mirror_action() are almos=
t
> identical, except for setting filter action. Reduce them to one function =
with an
> extra param, which handles both cases.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 56 ++++++---------------
>  1 file changed, 15 insertions(+), 41 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
