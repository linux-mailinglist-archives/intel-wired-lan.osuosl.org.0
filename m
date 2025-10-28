Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06947C14BC1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 13:59:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93A4183F4C;
	Tue, 28 Oct 2025 12:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1tYSEHknwLOU; Tue, 28 Oct 2025 12:59:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06AD583ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761656382;
	bh=721I657aVNdqKo5PMDPRrirfHAchYh2TFvw4CJ3W+pY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HMe/Z4uYG7b3GETaJwTBU3SlSnBqNLBs2nYqIlKSJL7nBaP4FXY/DWM4LwUWtWeCd
	 Czf80Wolbzyy/pDs+CqyTJTAjJQ2q5Cp75vASHs1wWiq6Z49sW5M8BCSaMnfee0Kwc
	 G+hwvzKfpSw/MzMepRUOLbv4UlImzaW7lppT261DybufLqj5bKejMuFZVCD9BQb02T
	 jRHu4jt9veGVM15sDBZhHk22M826xDYt0/VuK4aYobECN2m1nnoE03S5wmfz8B8Wjz
	 DeG5Tm4Ps3nvNbJ0HTu5sDVkSfZ9EddV4f5WJMIJEqYm5KtM867dnbhB6C+YwrOYmQ
	 Wg9js5ugV2JXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06AD583ED2;
	Tue, 28 Oct 2025 12:59:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9420543F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 12:59:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78B934012D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 12:59:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rxrV86AcIqMD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 12:59:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A1C5240100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1C5240100
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1C5240100
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 12:59:39 +0000 (UTC)
X-CSE-ConnectionGUID: /MBlKEFmSx2WaicFMF3sDA==
X-CSE-MsgGUID: Mkj4G+NpRc2r8q7aA9uL+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74354744"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="74354744"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 05:59:39 -0700
X-CSE-ConnectionGUID: DHx+Q5jiRniz8l8Obo9V6w==
X-CSE-MsgGUID: 47QBWW2kTm2oGfxc7yGiEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="222550500"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 05:59:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 05:59:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 05:59:38 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 05:59:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BWDNCiFkp2ewSZrEF5MFY9LoAu7EICIcG2TwhVZQ3+SD3Qfq6vKZO387A6sqcyKxG6x1dSzwbvUezfsQNSkpY9GHHYAaFY4rmhwSvQLHLgEhZpsC7Qzbop6TfeTGQLSko2oG9yd69SjGDC5cy1eXEqxvSWGOq6makkdwE7/u9V8/KBNFdD7Mh5ECbj6snjUfEoZF3Lfh7udFzCxfxIu94YJbwvwkvwJGBlDtoeg+EnR4nxviqynajq0wB8lNnZUDFNF04+R+UuUxnhAL54tIiLUH5qqLOi+A5KCVZjieBl8Z+tzKJ1tR7c4GC1dLsWpDSvOeFDfEu0VJ4mPYnbcKQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=721I657aVNdqKo5PMDPRrirfHAchYh2TFvw4CJ3W+pY=;
 b=fPmdIOFhB06Z42fc8q3O+wtSpnq1dJKg8L3/E76P2HitJP9y9K85S0fM/3fe3dE4mwx6tMv6xd//63FZtrRVuYOkFaypff48UWRxeFGHbq0lekmHleeZtgcdixPynWfOwvxpLHbICAtbMK/+HPYM7i48HBQeqUP3ASnlbPTKt6fIziEMCs7UO+xsNTM/y1/3Qsiq2v3nYg2U5HXUBX9RsDXCC2UK/lAVpu4ncI0zImupZV9iLiN031JzVwWkia0CpToJcJJBVzRT+xbsFCLc/rOAE3pX4264uud63JWNimOBGrB1W8Q11W+H/xhHIMQdJXLW8UOpQTDdn8mgQYhffA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB5099.namprd11.prod.outlook.com (2603:10b6:806:f9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 12:59:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 12:59:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nowlin, Dan" <dan.nowlin@intel.com>, "Zhang, 
 Qi Z" <qi.z.zhang@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [PATCH iwl-next v7 5/6] ice: Extend PTYPE bitmap coverage for
 GTP encapsulated flows
Thread-Index: AQHcRyVin766RPMIuUeWwJS2HBfzS7TXc4QAgAAThJA=
Date: Tue, 28 Oct 2025 12:59:36 +0000
Message-ID: <IA3PR11MB89862B3E066B89A2AEDCA736E5FDA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
 <20251027093736.3582567-6-aleksandr.loktionov@intel.com>
 <aQCtxIJiuVADyc1R@horms.kernel.org>
In-Reply-To: <aQCtxIJiuVADyc1R@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB5099:EE_
x-ms-office365-filtering-correlation-id: 6912f98a-89d4-49e2-408c-08de1621d8f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?wBYLhp2TfHJKfbBMnuNstix5jRC2WRVWOMHfMIZDGGD+1tGzRs7+zn2cXNQV?=
 =?us-ascii?Q?P/60BqjL5ztqfVD+kqqhfHYdNvZCU7ijgbSuXtwrdakdHtQq+qAx0KwRmU0D?=
 =?us-ascii?Q?QmQCAarOmPtT+WaIkbcgrIu4EW2nsIfQvNLC1PeFHyQ9hCXwd3QPqDY8O5DW?=
 =?us-ascii?Q?FJW7QjyjruRWxYBaBuXiMoKz8LwJqW+VuaQklJc6PjeXZOZLVM1FCUlILQc/?=
 =?us-ascii?Q?TWLCIx4yQhitFQUjv59EuNJatG32Q0IIU4h/av8NT0EVywClLEqKQPiTtLIw?=
 =?us-ascii?Q?ItRq4KS30W3FzQdsrnK2QcaH+h5BnG+WicSKb2n5vlXyskj5HeX+zvNVs65r?=
 =?us-ascii?Q?fFSaalrMGYfeFBBrqxMLx5yHsDb+OA98+0R6NkqPiHfW2tj4wD7pIxVUpn5Y?=
 =?us-ascii?Q?0me9DJBKngkuVcCkXHcAz6BWBH31uIN4DF4+tl2vdgPySkPmiXC9UgB6DIES?=
 =?us-ascii?Q?Zkh3+9IdkozMT9maQ3rp7RBtJgoacJAWnB0DU4iWYFJYOMTZAJaQe0xR+VYN?=
 =?us-ascii?Q?MENntsw/rGDt65UU+MNZSlVRL1omduk7Ioxr6Vfk8evM8iNP+DMTkkRdy1Dj?=
 =?us-ascii?Q?+vwjIm+krF3c8cUojkizRM2fRpl/vZKEsdSkNGWo0DLaiju0HOVl8RqbvovB?=
 =?us-ascii?Q?7yuxrwVQN3Zt4d7TFc0hE9h4MV9mTtTH5j5fgQPKxTxtef5hhPCBylpiOKH0?=
 =?us-ascii?Q?CslgvJQhQeLWqa32znzI/TWO7PjVQeKbfuD0dX7Q5IMc7jt6/tZ9DXb0cgY7?=
 =?us-ascii?Q?9Fb8/+GUre97DRoy15vulf+BWJ9rJF9CQ7TzxnzpUeI2gNlNJvanroo/4tGh?=
 =?us-ascii?Q?hQfY6v09Db+ztksnmzEP3Kqzkqcio/FIZeTfh0IKX8JEGpi2DY7FFgk6K/FL?=
 =?us-ascii?Q?sRhpbGeC8Bx/6vIwI722p/doXzAoFm26x5ZLqp6TRNrjcvjFpjNi8ZKItveG?=
 =?us-ascii?Q?IWIZ4mvVaH6+X0EataJuQiDOni5YUz/UJ2nJTOuX88rAXF2OFEw+OpVBqgkJ?=
 =?us-ascii?Q?mumu2d4DAepFx0UUcLljnr9LMzAq6lCZ/pL7uzHpb/ft1q+O5LeYTuDxEuHr?=
 =?us-ascii?Q?xP16xveKPKkMGGxr/lWijPmkoXSSTPhmg6XDlJOCGcx839heq5aevjboaoo1?=
 =?us-ascii?Q?n+UXtTpJAj66kODfRy6DW2/GYGmkS91QmNAF6t5uC111NGLHhohTMYicaeQn?=
 =?us-ascii?Q?M43gmg1VCRXHWvoBhv1zYohb7g2o5Yo2u3OW38lRGjNoMEniYqnuaHQEiB8x?=
 =?us-ascii?Q?eu/1ivcHEv42ZP4DfXFLCLOa1nPgILKCCM7UIly77IhzBYdCadKUhn5EnM+l?=
 =?us-ascii?Q?Sm2iGCPlEmXvYJQdce7gB/L8oqZeUQbqOyPNKFNbf8zmLBziyvzt4+XDa/O/?=
 =?us-ascii?Q?ojcf0rCkor2oNlhkQ8HzQg9fbFW0t542cy6/DLtth51m6KSHiPQb07eIE70C?=
 =?us-ascii?Q?brf5HUaAT77WVoApn0sdw/DvGvLp5EHk9yCuxfo+4IApDx7Yc+dUzuOGwAr1?=
 =?us-ascii?Q?PTgsxmLYOBc4Lv+TtJckSKbL/XFZ5OWSydWQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uYc+INjR5ml4jwF5gnGvy6QH/Z2cd65tvfBLksKY6xgg3/rzFmSbcSH9f97C?=
 =?us-ascii?Q?aQoesiPPVMuh39UTjyDD+dyqb8kKvaW5vEuocHHQ3S8TEvptxHIGN72l3yVg?=
 =?us-ascii?Q?3SWgWlW3Pbv3xsB8d+3qdPQRjS5buh8UE+D97HeczYHBiN7BqRSC18fLJtwH?=
 =?us-ascii?Q?pHrUtSIkolXbPW9grKDsao+4mBYnuE3XCCL2d3uGJWtTIbaRZDHV6hVZRT/B?=
 =?us-ascii?Q?DR86QTgimA4J8Q89lt61DTUEWn6fLoJLkZAkeaFFn8yLq7z9fyvraV8AW/zp?=
 =?us-ascii?Q?a4+dVtkwxnXh08UVkWELdxh20QNZzzrt+XwE7icwolsmLcGm2VuaWIDEsXZ6?=
 =?us-ascii?Q?KUm+qzso5mKzyEJ64uiwWQCMMlBGDjuTJXIc9PmC51k+a2bIHMmOZ5qu6ovA?=
 =?us-ascii?Q?8t89JMOhbnHVwTU107Kptxx4ElfquU7Qo/gWfz+HUwPFbD6hrHi3aT75+Znf?=
 =?us-ascii?Q?Ak3RupHlC075AKhnGA+oZKUOsZlJsh8Omd45/7ebblnlH+SDPmyOYAopZfzS?=
 =?us-ascii?Q?P7Qie82n82cb9nc+eHRPwdH01RcP4+OzBtydaopcGuB2ddk8wUKwTINjtqyw?=
 =?us-ascii?Q?lN5QP4xkUVu0HdIEdhcNIEHF7+GtMiojGzzeqyx5pOgl1dYk1GgA1MyJnjsn?=
 =?us-ascii?Q?tD78OfbaBoKNOJMSPT+75wedDaPv/6n7NAi/vCLCvgMpTLdweejteKylQXHf?=
 =?us-ascii?Q?H+ME4MTyMs/IX8JX/zkFmeM+05R8kuTV8Uvd06JkUUHvcf3+kiLUTSdy0hFt?=
 =?us-ascii?Q?s3GxV18AA684Q/Ly3vOh+aZb0u90bFMU1/XsrswKHnklpdEkgTcd6PVrKTRm?=
 =?us-ascii?Q?nb3D6ZqLAX9Hbpd6OgLrF7wiVghTbyHFEhyUAV8yW8ZskK0AgKtUFf9xC8/H?=
 =?us-ascii?Q?SX8P0RSZo2GiGnQqLF5hqO41yA2y0Ixesn5rgvsaCFnRxMtoqHHxQu5uJeHo?=
 =?us-ascii?Q?kkoqPJpdQ3uRvewuE0OU0fx3WhNCSVjDojLB2mYVbaNDhjxhlWT3ntY7zrXH?=
 =?us-ascii?Q?ulKAaRmWMTUP3ZwevJBRnMok/ShCp4XQqHr37RJx07uL7d8Be4KAewo+qvX8?=
 =?us-ascii?Q?z6h0CeeTvUYJuLRXiZsHkriNBLvzBKxMLqMVheu1o5l2YblqET1/mTL4B9IB?=
 =?us-ascii?Q?jkygOCKV/eTbeeOUkxkW1qJyT6o8B++dQTosYGCItTY65iCvlLANq194HUCB?=
 =?us-ascii?Q?glGoucq6e/6sEBLrDxdTK09SIhUHy6kfFtUcAe1y5O4zeLgYyZ4UZ2lRKk0S?=
 =?us-ascii?Q?M0gtCvsyygiZS/clTZGBmHIC2qYmdZ3Yu++aKQ+u7qlGCcqcqa6oGJG3RQkm?=
 =?us-ascii?Q?HxB/gBnvN0nIuqeDOSdQaLa1+oXOXO+gzOafd5j5ScuEXkcBPsY5FFCwCfTr?=
 =?us-ascii?Q?xht9UCO3sVYvuHK8zW8sOP7C7ep5FCBMSaSG9s9Sx6TmLFTuv7Ww6MsbmJC/?=
 =?us-ascii?Q?W8W7prOTq8hR15/sRaE918u62VJm9ArOwxERhad79oSNK56rRotpMsiJf8sR?=
 =?us-ascii?Q?ubSJH1c979AxIUo7IXlDeLjLJ9rV6MXfrMSlG9OjUuZywxPqEEr9ZbYTUAOU?=
 =?us-ascii?Q?3qrTFRbp4DZNmjtJ7s2oYIfH8WkFFD7/06YA86JaHELGMaYgCmNhce6wCEmJ?=
 =?us-ascii?Q?hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6912f98a-89d4-49e2-408c-08de1621d8f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2025 12:59:36.2428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HEwmBS0GdejNhrIGb5iWxmgHoZVb8VGPgYGaIjJuvKDYfE8xnuYA/czFxFK7c8NJNwVFIiasxKYCRkLEfSovoEq76nNL8mEesylWerXdorI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5099
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761656379; x=1793192379;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bj7lwiT6KpLO83FFkrjGw9efrisdM0RIpdnQakmwCrc=;
 b=dVbJrXFu1Pdi36mMCfEQVy0wrb//8AvYJ246ZC9TzbDkXtswxJxFPplJ
 b3si1+ZCXTcpl86cpU3dsjtlkBcSTmxW3QTQoDquGPYAqJjavtNDr3LQB
 iQeKitZ2wCGvAg722vBqns4EYRo5w+C/FYfc5bw8iTMcHKzrQ9Wg1F3WJ
 bdPe+YY+e2SaFX52fpXMz8ER3dN8dIdbOG0IMxW4hzuP/b5v/hDnRNBLJ
 81fzT2AHG0hjpKuvQuf+1ye6JnJcD+AJ783PBYrWnkNfP0jfsUl8GyYQe
 KU/t7dqQZ+yYf2YhD5LoBNhUOJiKOpPc2VJ8UjAM30HI3aqUT1N7NKdS+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dVbJrXFu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 5/6] ice: Extend PTYPE
 bitmap coverage for GTP encapsulated flows
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
> From: Simon Horman <horms@kernel.org>
> Sent: Tuesday, October 28, 2025 12:49 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nowlin, Dan <dan.nowlin@intel.com>;
> Zhang, Qi Z <qi.z.zhang@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: Re: [PATCH iwl-next v7 5/6] ice: Extend PTYPE bitmap coverage
> for GTP encapsulated flows
>=20
> On Mon, Oct 27, 2025 at 10:37:35AM +0100, Aleksandr Loktionov wrote:
> > From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> >
> > Consolidate updates to the Protocol Type (PTYPE) bitmap definitions
> > across multiple flow types in the Intel ICE driver to support GTP
> > (GPRS Tunneling Protocol) encapsulated traffic.
> >
> > Enable improved Receive Side Scaling (RSS) configuration for both
> user
> > and control plane GTP flows.
> >
> > Cover a wide range of protocol and encapsulation scenarios,
> including:
> >  - MAC OFOS and IL
> >  - IPv4 and IPv6 (OFOS, IL, ALL, no-L4)
> >  - TCP, SCTP, ICMP
> >  - GRE OF
> >  - GTPC (control plane)
> >
> > Expand the PTYPE bitmap entries to improve classification and
> > distribution of GTP traffic across multiple queues, enhancing
> > performance and scalability in mobile network environments.
> >
> > --
> >  ice_flow.c |   54 +++++++++++++++++++++++++++----------------------
> -----
> >  1 file changed, 26 insertions(+), 26 deletions(-)
>=20
> The four lines above seem out of place.
> And as git truncates the commit message at the ('--') the tags below
> are missing in it's view of the world.
>=20
Thank you for the catch, I'll fix it in v8

> >
> > Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> > Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> > Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> > Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> > Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> ...
