Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E5686EE9A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C62F41F6C;
	Sat,  2 Mar 2024 04:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwRqvZZQ7i07; Sat,  2 Mar 2024 04:33:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99B3141F6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354037;
	bh=5CDKjlJyD9PAU9/41VpN1FzfcsLC+HsiaVoGqG6IPew=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7qIxMqsW9JtXOCQuhcoa0aA7dn1NYScyRcI009mYUfQkl1aPwU/yeSPDJXaH1xtTe
	 IVp8UPf8tK08t1EYuJ9rTJfTu8A7m76FnUD7WbWSlVmmqUC5+BaCpaTU5ej8O/T4Bn
	 OEstajikBqq7Gy0ShBrQKkBt0VVCHSPBzIBctDlVv2xMBDKwwZ+/kXKv1OYINPpc2i
	 9PcuR3qEFh0JTdNQ1BO4j6FkYy+Z+YqTlAVW91o9pphHvboDJ/invjAorU59lS5fVM
	 GBruWSRwPLl/KIhtoZyTCgs/lrBJSqLj07bx0WQAV8oj9uDx8DNt6jnKWO71pYVcWV
	 YrSEF9A7LBBcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99B3141F6E;
	Sat,  2 Mar 2024 04:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9385E1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 878F441BB3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 738BECpmMy0r for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:33:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF6AA408E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF6AA408E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF6AA408E0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:33:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="26373316"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="26373316"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:33:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="12965731"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:33:51 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:33:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:33:50 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:33:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Awriq14MJu0Lvddj49UAooO8ZeSmnTIxfJJTqnfaciFNY9mYo7AxOCS/syiud8kCLo2EefF5mUSnyafk5MNdiGUIkKPBrYIHTMU6L51AGYpoJPmwPose719fmxCgorFrWAjCI2AfWYLqHKMGBK/yqC3da5mdrFWJnDU92OH+PlAbBBHhr+cfQeHmGPQlQheO3l53nm943vtQKGTXn+o1iqBJnxGcJtpifnTtoXf29Qc6MiW5zF2I3vnk6AYPf/L5w3Y3CHmeE8bX2hlq00ZZ2Q4m5lzhGq8xzKGolvE4RIlHPm6PVuuhTFRS0893mroLI+pg4czix+YYrazDxgMZWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5CDKjlJyD9PAU9/41VpN1FzfcsLC+HsiaVoGqG6IPew=;
 b=oRNuaNK/mdZPHCb3Sq6p1PVjHTCoRAigIXUDWcK5dl31V/4EDpEEnS6ZfPFpNyy5vraJxgZA3UbEuYC3+48WNUUmV/1UUIUUKFCovB4lVqxat8e8tbBoWO2vnO0iFaZtHlIz4ju5vz2Bw1d4pzi7hLubEAdr3KC/ltZiQix+fDjnXaHvhAMHFJSx1FiwGut0xLcvfFSIAc7IaUg2tdtv5gviXIf93yf6ZPHBu9XpwZoafjI79kPHig0jn6wY2gf6w4RR/y3aCp6/KwnDS1i2tYp1DGXWusCAy5jud3W7Gj4GR+2449mwlVZhtj4GCsCf4GTE2ZQ+thVjOyw8MHZeeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:33:47 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:33:47 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v6 03/11 iwl-next] idpf: refactor vport
 virtchnl messages
Thread-Index: AQHaZcIz0cZ58NoGIEabdXohMzSq2LEj6gLw
Date: Sat, 2 Mar 2024 04:33:47 +0000
Message-ID: <MW4PR11MB5911DC1CB1D1AE6CBED614AEBA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-4-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-4-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 3005e4cb-cb94-4852-a667-08dc3a71f3ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xcC5ExZCEnRwI7fhz3XQDpWmJ6ByuXxHSRlYOcKpiydRvLmSdw9qsElqGiVZPEL3zwx9+Vw1iQVouoBMHbR3bXo+rd/vTpTTkQ0GKgm4CmfTn7cNNFykVx9Cdy+FXadApbg5jYSBDwLMP1eEMc91anaMyZoLmo9vI4J+knHPyu7j7p2vOxB+BAXt/aElJp0aCMlYndt8mq8EgFA8t+GLLdiDMZWmq+fJUKRiPpNScmjUZ4guAo0JPWQMc6ND0eA7bSB9kVv0561bFjVpvLYM59xDJX249BpntNiwU0bCvs3f0IvKQe87HlaUFebef7k/P3tPe0BVMYPm8T/7LpbOkUwp600ZUJtQK+TGOkjLbphqRu0RSJbIr5qTOk/zUKu8nYmaTSchlUFybA35ItLLRsv628qxaTBMiJt7qlmZ8WBK2rWFt5qG/OczDB5D6G66Ka3ee2H87cCbsxuYWscbL+rWdIgIcHKztG6bBnwYnxBecaOcS0nD+8UImKT+UO1BFhZXXHB97u0eCjL/SnvspxxtFNYRvjKjAbkKgi2Jf0b3mdYEOY1w2n6t7mi6T8wgW2Xwr8FAn8Ezzuf+wCFamLhTU0bRaXYDDKj6ssqF1/UDXhhw/GRKLMxwDFruH1OHQtqN4nPGcLCUK2bjdaHq/nefldESSN+5mUHsbDQnv/bsZkJrVYt4Hr9/TpxHX/vaDxT2/9cz2R6kSOc+8uTNXgaGmb0ctS7e1PThZoWbg7c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g6+7z5QNBB55IqXNopusX7FkaknrGcRlqApamty638O5bjcSAV/ezliydJbC?=
 =?us-ascii?Q?xMcbmkN6FyVtcEav7fUjeCUMwPWTIRYmq0U9t37MKMQa1G5hY4uUUjYCpSpr?=
 =?us-ascii?Q?nUafYP1ZM1Lr/IgdW3AD82mfgoHmLOgbMfFIpN22FRursFOLrrLYw+DZ6vJm?=
 =?us-ascii?Q?KAOD7Ghg38f9jZtAMkaA80qBKT46ZVePKckxG6fMmKMIYI50NlglAP6hg5ig?=
 =?us-ascii?Q?s42qTmbaFHcG15UkxCuehdjvNh+nJ3Oa4aRegQ80O9+PA5C4l9rkku0lmMUw?=
 =?us-ascii?Q?2rXgEY0gnx/OWDVAeROgP3ffRE4WGdhMHvZvHzXsI3MUJYSl5pXa1u0oybcF?=
 =?us-ascii?Q?qc8q5+lw6ldS1MYWJNZbeO1ZOqvHx9yVbyWOTmEwS5cqzQCrxGFekVD+xJQX?=
 =?us-ascii?Q?hnIoxfz7mOiJha6szDprNTsJDGq3AU+GJzchcDS6qokt+YJxD26NoRAIrcKq?=
 =?us-ascii?Q?qrOVWfgAhyvWTfypLj/21tN5RiF24uH2G4bSEtRBiGxTgPgl09TELvlJnezc?=
 =?us-ascii?Q?4cbN7fqCS6+X+sI1z8PcJpvw+vE5Yd9eKUmoW3aoSFT1sZt2sXxZetOuwli2?=
 =?us-ascii?Q?lMPvPZ3DoynlLk54AQ355JngZge5IUxUjInh4wq7GtAoXTRhayqul2G1wzeK?=
 =?us-ascii?Q?69FyYdTXLL6HbcSaUIIPjudQD1JYXKqXw20CMhyolcQoxJmJ0VesdDq2I8ir?=
 =?us-ascii?Q?nULJL3pO2Jl+vz93lGXc4Y7BR00P67czJcQILWy1tGFr1OdF6q/S8VHwf5+L?=
 =?us-ascii?Q?m7TL/R/uOmlmAmvTERH2pBC5cP0Ep7f6Ofqbmkn1SrHjXLPwQVHWMbC00AHw?=
 =?us-ascii?Q?5mk9ehX6lm2KGEdRIxf3lhzWJW35ptMzhuBJ//5oOgY5mwip6Bv7dgNlG6CY?=
 =?us-ascii?Q?XJfeda4+gz44nNuw+WygGcdeUqh6i64GwdxaXjNIJ7NC8PxXuUYy8YCRQkYE?=
 =?us-ascii?Q?8QRsy56nUAqkmyy0EjtikRR5jygs8biZedgLt+Px03S+ptaJmlVOshCpgelX?=
 =?us-ascii?Q?p3bu/oRPKGD8vJ2FLrndMcIlrZWgSy9BJNpFeuCAuT/OfFVuv9QKUpTCVbOj?=
 =?us-ascii?Q?CsL7vD/XjbOMEP0pder5eZ8vFx1Iku2nvm9HJnu+XBA6UDxLoe5pEQv74oPG?=
 =?us-ascii?Q?TS0vGXZWC5UmscJzxrOquPruMpBUYAtT2AwB+/c8bKg/qlfJhmbPxFlMO2ZV?=
 =?us-ascii?Q?J79r7rNJEIGgC8xgrzdfiDLqRlsY+KSasxy7TOlWMd6rdIKUj7UnhFMPesIy?=
 =?us-ascii?Q?bWnKd9yfyHzQE4wF5sYi0S9/7iOtcFTDJNki6LG3mBDK40lpKovqU5ANS67T?=
 =?us-ascii?Q?pmafZy3zcTP9HJspcR47Fb9MRC5qsr1hDxyA7DBRs0148G36cj/zhk7bhNX5?=
 =?us-ascii?Q?CoRR2I8NVWo1VK91YlrukLfdttvjpPSEVj0VYV+bXjqeTT2/t7mGt1h/egl3?=
 =?us-ascii?Q?bMSctVVPbvS63UEjn8cvshWCeAapxZ1j2GcqzIUYc+msL08x6DcEIFXk1R3z?=
 =?us-ascii?Q?3oIOEeBQj/mleEJQFMHzU6EjDRecMFiR4x/XeWNTiKZClyzB3AI/5L7wwxkO?=
 =?us-ascii?Q?R4trU21UUXGUdOeIjkVuQN7GTDzv7G1pZCj7PiBYJjQgikH0lQuBGikhJYmj?=
 =?us-ascii?Q?hQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3005e4cb-cb94-4852-a667-08dc3a71f3ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:33:47.7470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v9Rb4jxvtsn/l4Ysd2Olkp0kf4uZGjMr0KwyoOajCWN8p45zzvZsmsLpvIrYsRubCG1v2D2m+UiOu0bgmtBi4EdEuC6XCTuBRw9YMc7p94o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354033; x=1740890033;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6mSuGKIuDFbI25Mr9K9KwLNrQXg0EI124Ma03Fs14+c=;
 b=jA7IB9BYpcmqmX6wvR6KiUOOq1WWlvbU2eVPUAGjNQQQsbxTYc2LA3p4
 EUepqkP2yXWp4I1hDS7re7mvMbuph1dGl58zoTDKKdLzOOBcGVO7+zSH+
 x94lwv8PYbfKkWmxt/0QHp7VssoqL4G5yRFtUpb/621H7iP+wBL9SdWjs
 p5yP0diykq9zslkpanyFkBTp0U7vWU6wLYgBszSjSTsrx9Wpqr4nzyL3y
 1MupOY8FkgyVtzkbut3D2BmINXavX8FNo++KiW7112WwXlkjcI4gWriHx
 OHvaW2ed6rPjLsLBSzroa+aSeF4lC5N9JY5+wQQnGTaG8e3wGP3ww95K4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jA7IB9BY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 03/11 iwl-next] idpf: refactor
 vport virtchnl messages
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Brady,
 Alan" <alan.brady@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Bagnucki,
 Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alan Brady
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Brady, Alan <alan.brady@intel.com>;
> netdev@vger.kernel.org; Bagnucki, Igor <igor.bagnucki@intel.com>
> Subject: [Intel-wired-lan] [PATCH v6 03/11 iwl-next] idpf: refactor vport
> virtchnl messages
>=20
> This reworks the way vport related virtchnl messages work to take
> advantage of the added transaction API. It is fairly mechanical as, to
> use the transaction API, the function just needs to fill out an
> appropriate idpf_vc_xn_params struct to pass to idpf_vc_xn_exec which
> will take care of the actual send and recv.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 185 +++++++-----------
>  1 file changed, 69 insertions(+), 116 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 95ca10f644b2..2dab7122615f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
