Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C26A9039B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 13:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0495681153;
	Tue, 11 Jun 2024 11:09:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FgPKI52m2--J; Tue, 11 Jun 2024 11:09:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F45A81182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718104144;
	bh=yxChNyYquxgPQKCGSik84cg+vNfnlRmnncrhX/zvP68=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3OOK8R4KjVKD6rWEJczcrdY73t4/f9AqpKNasgdILOaejUlPFF2XYjQxt/+P5vvuE
	 G2aTTiHAw/cv780uZtkCc9D1inLmAJPJ8Jgel9j73/DNX7iZnSXwStjsHm7tEW4RRs
	 i5BNh0+KSoULO3hhOGz7M70Dh/6ZTnMkPVa0BweO/SdjWevBWBkD+dSmza23DsVGmJ
	 zdnZ6J1OuJHiPvSfyTHb8ypuieaaB4LLwCqdbjsHdYOXfhfajqOS/U9vaHkx4ju411
	 5a01ncHk7tmkgRp/DZ9KcJobxihMsb/hGYS0sbCmzawAAcPcrbw45h9+l2wufdL3EH
	 yT5Mbl7qqdY6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F45A81182;
	Tue, 11 Jun 2024 11:09:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D6D61BF393
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58AEF40319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6llZgVWVF8Sf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 11:09:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BD8AD40310
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD8AD40310
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD8AD40310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:09:00 +0000 (UTC)
X-CSE-ConnectionGUID: o6RC5NVhSwe8OrhVF+60WQ==
X-CSE-MsgGUID: bXSIQGFgRIul90NIu5bezw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14638871"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="14638871"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 04:09:00 -0700
X-CSE-ConnectionGUID: L0KhGRHcREqaAFzTWHAHlA==
X-CSE-MsgGUID: nvdnamT7SqKk0ljGfH0OMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="39987538"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 04:08:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 04:08:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 04:08:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 04:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M872ZJfd3sWDcF149YIMscllRXd11V3i9gaGdydsJMQufhwW65S/jn9I3S0MZhya07R52Vl707k0agvQanZ+KHceL9c+UPB6ELvt3RPkU5qBxyBvHbWPSIo0hSZPQU+vx3FOB7loklCGfd4eiqqqv6ToMKAiigUO0ZA1/ZAcJhGEETz+CfXwxfAy8YLDmwL33ZzFS1zZiSO+zzTFr+KquBVD4nU1qKby7eHARsskDklq4iLWNpaS1/V/SpaRoVZzGsaA7isOVbIiafoa6ZRLsb4VxM/oDj6B/zUJzyJ2C7+pvt/roUe99mU5GZEy++t42DDEUtNo3f+rghmScgLHEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yxChNyYquxgPQKCGSik84cg+vNfnlRmnncrhX/zvP68=;
 b=PUORkGwLw5B9VHrWymWgyVNVSzP+s+odYAzoDgClH6blYQCaOfA4pw0NVjjzgp17Pj2ZmMmdQ5nDBbe1jWKkG1Y3NRgAm7iGR1bk1VuwmHdf6kr6hVJXZ9zlzh+XD2ZKYZ9XoQi07fke+hf2av/k+wv+sG9jEasuV7dVYVdu6muRUQGsPycdy60CNjnAfTjs+3WAAZGB29Tqwrvd2npsvwiHnv2PEJ8h1W9cjJQwip8HXJyTJfwWrdhDVutaHTqy10XAg4frPkQMyXhvYeo/ANkwlVsovn5NKHZDAlwRCQTaXLTCtCIs5jl5e6PxX4UTwyyEdsMwuPMNJlKQZHXS9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB7571.namprd11.prod.outlook.com (2603:10b6:510:27e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Tue, 11 Jun
 2024 11:08:50 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 11:08:50 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "jackie.jone@alliedtelesis.co.nz" <jackie.jone@alliedtelesis.co.nz>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Add MII write support
Thread-Index: AQHatsOBtnAi2hehA0ekUF3gNjiZ5rHCcaWA
Date: Tue, 11 Jun 2024 11:08:50 +0000
Message-ID: <CYYPR11MB8429AA3F653519AA7AAB09E2BDC72@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
In-Reply-To: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB7571:EE_
x-ms-office365-filtering-correlation-id: 7184c913-baa9-4403-5d50-08dc8a06df6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?o9nGrZvSoUoJba9vwespYvpjPCE+Jwc5Xk2NIRDSFjoDlUKyFnT80wre5XYu?=
 =?us-ascii?Q?1DsK+szYiXX3xRH7kya+p98ns8kWDfDVYIOYJo0eJ+Vs6bjRa5Q6NdCsGEeE?=
 =?us-ascii?Q?kSJeQybws381Bf1LRfS29tmHnevDg9Kyh/+ZD6FJHmLfeKftkHuwJGtPV2tS?=
 =?us-ascii?Q?7rDXsPFs0Qypkx5ZJAIWxKMoSfp6l95dOovzrTEvgqjvk/LAZeGDvvoUdhm4?=
 =?us-ascii?Q?qdzrghaaX1BkQzI14l5QHcMu9zUB+fKQBDeflOpAdaG6EXnpUrvLMBr/85ck?=
 =?us-ascii?Q?mo+8lhcrcxuQh7NqR63pAI+EpwN7BJML/+sV4MKUWGIckHFYQFBxhd5mEwKj?=
 =?us-ascii?Q?vKxatRji6sf5HYwXUXt4P/4qOGtLKgqLP0FgT6CEG/qP0J+n42W/nYEV9BUs?=
 =?us-ascii?Q?3yZPQZuMnWXQkERwQXusdnU7aG96+Qg14pGt6Pfe8KpLcYkPVHd4g7D7P9WZ?=
 =?us-ascii?Q?IHbgD6gVrjCrvAmUEvp+Kw7jULlcYV4VDK+la9HU7Z13DhB3sufrEmHF399l?=
 =?us-ascii?Q?XkHcQ0yYZ4xKBG/HN6HPKOSSI31hUA1IJXslnJH0e8ftgrnbbBsKLVXx1XA3?=
 =?us-ascii?Q?xbbrPMxsBQzrZmu1pbljvKqyiEjAfal1WowDOOZnzvFISOtRSASFC7IzibQU?=
 =?us-ascii?Q?6a2OXFsd7QJ8Cbb9pxACaCtgIOdEy9wZpCM75YS/UxZiNf3bEboDOCilV2td?=
 =?us-ascii?Q?TURpW+7Rm19RcryfgnXWaBLbLOz4bxVEGKVJoUD845mGmBAaSX18HfkjOBZL?=
 =?us-ascii?Q?cninSXIaoTipnz8iypGtyLV16uTa8qBbA0Pm0WE3wyQp36tev9Jh+LBFbxYm?=
 =?us-ascii?Q?Izyse5WHMsnDPAVzowwfi6hlESEbQkCCR60YedCHHyauccf6YlXLtjj3paoo?=
 =?us-ascii?Q?nNEawk/Ey1j8C4O/I0FHqbOhEJdvmRhMTBWtfdZ63qCCKSke1+LTWVtf05Fh?=
 =?us-ascii?Q?oOuJSxPN8niNK/CbxGVqgxwdj+HS5abTIkeph9EupnFKILpJzasziU/4cELF?=
 =?us-ascii?Q?F5kMeGN4dQyDnnYypZfytEZffqkiB6UiJMZ0aCpoB3FWULMIQVMKHSLA8pT2?=
 =?us-ascii?Q?Dv87r5YNMne+6zlmVV8EeOYvYPTwGIf7yjy34CSWsmjYpjMUAxy0t4O0547D?=
 =?us-ascii?Q?cnTZAfQI0gIGTZn5ZKkruyhzQuhlBAFIB96BrudtlczF2QiAjJQ9d07ZPs0P?=
 =?us-ascii?Q?VV+rr1CWlRGTLkpOfvJ37e1rySD2YMvp8hxNWoaVAYRbRd2t+LT9KVtlqTXT?=
 =?us-ascii?Q?3GkKyBDPxNBpY6fED9cZcPXm2RBg2J0/W6rQOpdwX1/Gq0BywlwnGKFyIujP?=
 =?us-ascii?Q?DGKfjtslpapLBp2lDxJpBX0tyL7Jxv9e8fW7bJJlW2z+mWi1BnlcITWAHZOX?=
 =?us-ascii?Q?ReK+BQ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nI/EF4yeXilgIdVRTFzGJDyLvrFQODjlySULY350q6uqDYOsWkVPtW/q7imc?=
 =?us-ascii?Q?zbNzQdAlUaFS5OwSSAB/r/RdX6zG1pcPTiTuoRk3MHqVrJfm1tmLSSAC2L6L?=
 =?us-ascii?Q?q20rKgUZHfYgFBuaRY+B+zqOr5xW3MhjuqetuAw942WE1Zbvn5kYndP9RmHJ?=
 =?us-ascii?Q?kx3uARKZOHaEeRV34MRhfrlqBdkslYJKNjUOvETi5W2og/iNPjFHRB/DbQuE?=
 =?us-ascii?Q?PkqItyTqKmnuwC+dd2eoQE9Ba2Ep1UDnTIV6cEIJ6dkvU3FWnzqLJST/Q6Cf?=
 =?us-ascii?Q?7ZrMmj4l4NZFAUCQFlnAgni31E8YmCBqL6tTjHzfH1qgmy9Lzh0HKFPcNtdF?=
 =?us-ascii?Q?aqCsv8/eg77IiI0jU/hLO8sxJZL9e2jMTPB+pCMo7Ee8dQuOUdK01bz4Qpbm?=
 =?us-ascii?Q?SB2XftwDHuofgkOfJyGfIP9oiC+qpZiCP8yrlRZOxUHxbgPyv3kdQ1i7J/VF?=
 =?us-ascii?Q?zrz3OxWpPW7B0bKo5vzkOpE/GVnwQ0f9gOeZpXxhAFxnBTk0j075Zze6S4zB?=
 =?us-ascii?Q?h95dedAwgwwfWgs+Z+I32nS/D+O1kZ+5U2dq2+cl+PIPfCqjz4LO1HFe2lsc?=
 =?us-ascii?Q?IlVniMfqa0FcDvPe0WVuCWUvs51E4h6Bvm8HrFJbq+EgLT4FoJhjEk0GxZ4x?=
 =?us-ascii?Q?Qeqy/RbXh0pvUhHNIYCJYjZXC7aCvlBg0yfJshKm1c19y3wZsCwEoe5epEkC?=
 =?us-ascii?Q?gvu0InXHFywaPY4hPW4Lx116Xw5ZTp4353d+ExJNRBE29r+xKWvE8Jx1d+1Y?=
 =?us-ascii?Q?1PCDGRhbfsho5bjwkyLBBePiO3emhuiN9vu5Tu01VUT8Nh4dXqlETiS2fA8M?=
 =?us-ascii?Q?/8akr9F6PZ20yyYRq/iAh0sWKkzrOR/rNjnfGok4SZNv/DV5BJfJbQJf6E69?=
 =?us-ascii?Q?PtemmTlL3CBIeWziG5yXSEapJyKj61JtjzGhWK08rXEu9uhwyZomPdOcew3y?=
 =?us-ascii?Q?7jJNjBDtjA4O62WbJXsI3nRaLp9Bny7H8Da0wf0D97V4uf1Amio4H602kdOf?=
 =?us-ascii?Q?C/GNoBY/+uJZN8/MkNmX5BqotKKgjSGMuRhUExdXCELj6fD7dpjIu8aP50Wl?=
 =?us-ascii?Q?10VrTDr6bix0ag6Be2ra9nJV0SWsGX5LcT39qSLLO34xXUwtEJdn2AnkiLJx?=
 =?us-ascii?Q?32+F4vTIAYu9qIKnHcxQFh6Sbhegpm3815OIkLW7mxBuB6TViAQYI48Jjhku?=
 =?us-ascii?Q?YqpZ5jFm4+ckds2Wq0Lx6Tq+xF2RqIXEy45p3pgGZW+IaNN/ajPWuuSUWj7Y?=
 =?us-ascii?Q?UzKbEcPJhWK13mVcHTyy6F5dJ6xs6cChD450yTjglyMInrAc53ikVHrD0Q9J?=
 =?us-ascii?Q?JftITP58nNaUrTJtUPETOatkgs6QgidKzUknKBGMInheex41UUAsYUMe0ixO?=
 =?us-ascii?Q?6BIET7hLbz09N0ILHnyyumbYHsg0CZs8lviDdaMsjr1NORHeHXCVoGxFvB5v?=
 =?us-ascii?Q?YdTVMnK0KFMkprGRLPniLL6rzwo+FEAqG3HtM+EigDZW9FrKa5UxIvkunx87?=
 =?us-ascii?Q?hqLk7Q7ANVdHX6ENNrtw3GE5oyidJvHEFosb5QGRQAEwIrcYyHjZ5aFAbEFR?=
 =?us-ascii?Q?zElsF6ZUfA0qUDoCFo1YujTPszQua/3/ZZX+SJ4Jw260Xo4GZZ7QIZBAqn5P?=
 =?us-ascii?Q?Kg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7184c913-baa9-4403-5d50-08dc8a06df6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 11:08:50.2522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MHbu/CPW7EitSBci5zETtIsmuPTFGWxYDiEzr+NVprbxI3k4NqaFKl4xqTXL1dH2dC6U3jdiniG5LQdA6kFN3zd4rpNVuwK8k/UXwB358Z1lRXmlEEbru/1tZvXi2uQB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718104141; x=1749640141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WvKab476P4eYHsM8ZwT/vTKdNZtxVOclWPnl8CXXmV4=;
 b=hQsZM//+fErxqVEZp9JoN8qHqLHBzdgh4t9VbV4HZp9LLVmMtI9KIxM7
 fjnDO6FWrb8yvLVx3IpgtU1aQC0rKURkHNX2X1XFJO61MVZoG91N63uXX
 iXji/6xC4SsBifYYWPTeJZXOibDuFqPA4ma7QifQ4OOvHJerZxhTtJGHL
 6EWQhaTJK1b1MRISgkUGbSdzMmaPZne+jUWj+0v0ws6pwE3Q0GSHcQ3O5
 yifempRYrJL76U6Tk6lIbVlQXSIeWSa8jISyaU2hIEdkzn65Wdh1xeUrq
 A9Oouonrx+yx+mW2AoQZMXhrXcjZFn5pvRrhATXLHXF1Awq7/ANAnhmww
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hQsZM//+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "chris.packham@alliedtelesis.co.nz" <chris.packham@alliedtelesis.co.nz>,
 "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of j=
ackie.jone@alliedtelesis.co.nz
> Sent: Tuesday, June 4, 2024 8:40 AM
> To: davem@davemloft.net
> Cc: jackie.jone@alliedtelesis.co.nz; netdev@vger.kernel.org; linux-kernel=
@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; chris.pac=
kham@alliedtelesis.co.nz; intel-wired-lan@lists.osuosl.org; kuba@kernel.org
> Subject: [Intel-wired-lan] [PATCH] igb: Add MII write support
>
> From: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
>
> To facilitate running PHY parametric tests, add support for the SIOCSMIIR=
EG ioctl. This allows a userspace application to write to the PHY registers=
 to enable the test modes.
>
> Signed-off-by: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

