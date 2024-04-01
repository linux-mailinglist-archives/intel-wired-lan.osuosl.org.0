Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3E289395F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Apr 2024 11:28:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACF6E80AFD;
	Mon,  1 Apr 2024 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qFIBcQEhOvui; Mon,  1 Apr 2024 09:28:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C38480BAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711963720;
	bh=unU2jlJL/+kXJeQW+SU6gwjwelj6CNS3hgKrsNDbLLs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lElak32mrfRy7KNNWubajQJYh4pxpN1Ox6XeI/CvHSqa4uAQ/23I6wdTvOyvfoQP4
	 1eSA48bhX3BM5rG5pX1opgjVRa7906svJjXWStLckOIzPjiePTW/nPqhEZ/FBRe9He
	 0e9ZSNE+CTmhwdxp7hetIGu89BSCN7EkOqauzVtbGoGCa2kTLAU7VTq2szE0t8jdnB
	 FO2DHOMRH92AitzHV+ehlqNnbnYcKkyN+dQ97SKQcZlHauy5fUzUAU63dWyBj0K3Qt
	 3b6ErjTPmkA2F/LPG81ijPRRCFuw/3YQHElFs0HhiUz/6Wng07JrU0VjeOiDmyJMeE
	 RZbrNhk7nqBJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C38480BAB;
	Mon,  1 Apr 2024 09:28:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 899381BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 09:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 757D681B01
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 09:28:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y3yE28VNLb0T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Apr 2024 09:28:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 382A2817EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 382A2817EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 382A2817EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 09:28:36 +0000 (UTC)
X-CSE-ConnectionGUID: w8Mtp36fR+u7yysGDLI4hw==
X-CSE-MsgGUID: x1SSimgqSwKUusGRIUcRIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6946957"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6946957"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:28:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17746595"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:28:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:28:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:28:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:28:34 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdSdye4IbWPd/LQNnu1gcA8icRTDsqJUgYlHO5GrBP5K5Lb6ZvxKHOQU9Ky4DBqyQeiLD929BXkm57dXQVTIVTzeP2X0L/B1YaBeOnBHH2E1l23olalpxq25kmKER9XPgQSv05pWHh1ibjZuTLcrpS2Pbb1a3bVts3SljyIsjke5OWJQyXkE8DKea/2IkosDitaVONQOPyRBVr0ihQkrUjVvJnkuk6M91jGVGCmFLBJ0yvg1r0ACNqylEGbPIb2hUXTtkokBTTlADohofcqIXkKdB7Lvs2t+u1pCVLgNQ8zWp54BYe+MhJEfSnb+R01/0+E4T9URUU43zLrdhM/4+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unU2jlJL/+kXJeQW+SU6gwjwelj6CNS3hgKrsNDbLLs=;
 b=BSoCTgpRAnwJG03WDA90K9CVFrkzvGDtEYGmmVwyUXjAyPfs4wPIg90BICh6IYuGEg36iZkP6PmeXd2uHaJPUILnSzV6HJr0fMy+oGroeaTu+SIpEu5yuAqJtZJmA9CInRWduAM1zaL3Fcgcy9o47SeGEc/dJgnD5UNHpJSUXblLarU9NMVR2LsQHhvbBoX1NQssuJvjAtvkb5H9sXdCkkrMfEPTP6iNo1OmGVUlmzh+I/v5SEUaa0VOUC3LHUVhu72l4Xk1d1Uax7AaJNf04s79gzSDGVtFJzgqldroXwBTIs+CZb0f92GPY9vjmybM4d/O/J9hnqTYXgOlpY5XYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by IA0PR11MB7911.namprd11.prod.outlook.com (2603:10b6:208:40e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Mon, 1 Apr
 2024 09:28:31 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:28:30 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
 profiles
Thread-Index: AQHadGrpJu5mvKk/u0ubhKlFLxaJ6LFIE/7AgAZohICABMXh8A==
Date: Mon, 1 Apr 2024 09:28:30 +0000
Message-ID: <PH0PR11MB5013EC7967F8B7694B2F5C8C963F2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240312105259.2450-1-michal.swiatkowski@linux.intel.com>
 <PH0PR11MB50130FD5A519919523197C7C96362@PH0PR11MB5013.namprd11.prod.outlook.com>
 <ZgZ6/6/R+5EfQvbb@mev-dev>
In-Reply-To: <ZgZ6/6/R+5EfQvbb@mev-dev>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|IA0PR11MB7911:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Joog2f5ASoB59vHdgyAgfKaYqIT+eaFekUevTytoeqWZ1Zo+iS5nt2yiMo0YFWcNB+CDlynbxUJN89en1gV98VRtRV4hcrhPSsnhtUTrbac7msjAzy4NZkRHOaVscV6/76qsZiRpAHUISnNLskbZRM1obDok/TIkSI26YFIRCRHVxoff5EY560ceJS5cBzYfFWRwMbHc5KeCJ1pzp8vyabS2z4tvyg5kwbMDjRxf31/j68AskANZDNDXCpukrvYGE/8TmaWi5zHkz/JNkOMccoX85jZz4L7ZvUnWrL/5YlbEq7uRMXw4Rt9QqNst4dwl8uPrxnjW5A8IYbiLz9fMVAYIysM8IZMCTrQI7Qa3SqrL/O2Bg9Tzou0wkpn5cvoex53wcQ0GfFIM1yTjAz29te5K2F6oA5UFYECraIUmPXDKBkljLYqnNHRXjVThwGG0P34kfDbQSke4499D0FGgXOPgS1JSSrNbXIzVIMHxl4rZ3zZufaqW8vo6aOom22cnfRj4ntH3WV1QU1OzMjOrqoZTpwdbAhbHc+8YtgpujFZ/xMyWBvxpOYUtt/LvodgMnogEgyhfe36RnPMLclTE88nrTaNDMyAn3pdlOQKSrPA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XHhQAcT2Szk1qy2OU2JuGYrONUcpwPxT6mIjRsp6oqTLRkaQRMvBww464Ldv?=
 =?us-ascii?Q?R2oZ1VtuiM4BAy1+qM9P2o47dlYC2+vaZdS9BP+MIEY1iCOvF23EZM4vMdFD?=
 =?us-ascii?Q?c3SNaMcAlQ7Vhl3n/Ft5mmZ+eHtfavEYmdV4f2RP3fl8y/zMYFxaw4ibJ/Lq?=
 =?us-ascii?Q?3ibTjXuokVAMqjo/39HN0/zvZdq6PNDc8kpu2wOsRP6czXP26pntUIFUUAZq?=
 =?us-ascii?Q?QXUdP4prf7J4Y5HiwCFEYIOns9bTxFv1itDBalVXuV4zmeyK9sGWDXMRW99v?=
 =?us-ascii?Q?Y18ewV+1qXjbggi/Sps6TqQCiJ4mEhERKYsIDnbzSr+F/bL1wlOUgSrpD7pO?=
 =?us-ascii?Q?CXRngO4/ZoSMW3RGP05MD2Er69BGia1IIHRn6EJgHS6pI18clN5310gGWwQN?=
 =?us-ascii?Q?ndWjugYEXprZb/y3hzxfyLbyqivfT/kqjo9cZ3kcske14OWaGUyHwb/IDKVB?=
 =?us-ascii?Q?5qxpzQCBOFHjrR/eIg4ckK7UXJvVlnA/nrw6KzbljcVbPly3oCIY3u3rjgtZ?=
 =?us-ascii?Q?96/jnaCQn/RDDGQCvuv0A3LahFJypjh0mlteAigFk62yQT5BeMuXKW2MhLdx?=
 =?us-ascii?Q?O58x4vy42CnVjkXlFFdQ3mDUOugLTbMWznD/YmFcmXjsuRADFlaVcIWGabd2?=
 =?us-ascii?Q?p4ZOtJdcJN1GDQOSzWFWN744gks8spf/qL3N93BCaH1NkwJhpZJZiPWDAGWP?=
 =?us-ascii?Q?EMDNBI5GK4+gW9g1OgANNOn3KTITiHJsuO+c+x4PrOHFybZOFgL47qh7J8lr?=
 =?us-ascii?Q?yXWErtXRC7N4iwK4aRYGEuQJ0vMv2PPKISK2BqUEy6LsIYOhMxMtw7caCNOo?=
 =?us-ascii?Q?b76fLXfDu4ONeaW7h5OgiPm7+fQldEyE/6hUo/719wSbpK1gR0GnWKwTBUka?=
 =?us-ascii?Q?NhrImdjQyAf51dn7HgmVXi4JiLsclks1FZCP5FensP/VTpfx5/l+UASWYExN?=
 =?us-ascii?Q?D2NGv/O8G9VoWtVBOHCWZWNSZd5AZX9+Uaz4yR+vQPouSYYKC/CWCrTkOAg5?=
 =?us-ascii?Q?Hl24XNbPN5z3c6uewZ0CUrQYlTuor0ejnEaHZz685i177bkL2RoKcQzf1nBo?=
 =?us-ascii?Q?MZErY+YBrcReBqYBlxb5Od64yfuyccMHaO+1v5xkkb7LblZjooHN5BnLGoFt?=
 =?us-ascii?Q?DIL6h5fNxX5+JQhnkkXAAKeUQ/tbR0Kmqema5FWqO27fKY0Ph+mtzsDO1d2Q?=
 =?us-ascii?Q?sHE9gfIANXCz7KJ3McA81ZI+bAUuBJPQbeWomBmrJbb+PCav/GYoqwrhOp/B?=
 =?us-ascii?Q?C5XR+K1S+I5CgM5r95vkBQfb1AOCyFphOvPjKn1UdmGgFxCCBMhVIJNYlRGh?=
 =?us-ascii?Q?RKgFPLgamwZOZygcG49fH2TUGSmT/FIx7kEGpcDeT7ss6upHFN6ymncMZ5Ir?=
 =?us-ascii?Q?X6i/gnJLcZyoYgkbWziOjycWq/yMUaTTMQI4g3EUXDPqzxRX1O3rnenr72m2?=
 =?us-ascii?Q?apk50TN1OyxK54HMtITdIp+nJSqjw2vNPwwJndiFAyC4TjlMbJEytZBVYkoE?=
 =?us-ascii?Q?F8XkbHuFxdf6H0ZuJyqEu2O839keETqItGbgEnU0+UzLnBXmGbvkT2xeNys5?=
 =?us-ascii?Q?YD6KZEvwad1NwtYQGyozyBTA2Ev0AqOrKs9C6XZHWglSdw7SNwbS2yWkZuEA?=
 =?us-ascii?Q?sQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8e83851-6e7a-41d4-8d10-08dc522e182d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:28:30.7011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wF7k6GEYkqne3XlcI3twNoXjECyWPMjjWsntX0UrZCMyOyrnjeokIT7WQ9KikZT76TZEcQYjGJeGhYpM2fwDEyOm25awsAeEAwF2yzQ0870=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7911
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711963717; x=1743499717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cxjjTzj/KR5gfHSv6KU5mXMAtn1WgiXlOJY7TKAhdwo=;
 b=jRdvm+m8UZxcqviIuo/FM8edBUhU5D4RZReuR8up47D8y2tCtZJBVAhS
 z3VyxtSWLBhLNTwQoJL3e0oSnE93mNTft6bYLlsCrhan4s3COV+vcy3cn
 3IG6jGl2NmiwtY2r87Wa734N4WHc6CSTKq8vbZcODDQZci1m20DSXqayz
 4MM9ASeO0vblbKFqwNkWbuXtKNICnaiUL7fqLZXHwDXMyn6JAQvVnV39m
 uzu+JOk1922x5WtmKJcuBfTf33saOU4QqJjOOBGoYINrmfMdIJLsfdBVL
 FyxBvBvF3NGffs4eRCuNneWN0Z+l56trol2M82YwyQr9kxtTFIR5wy1Kg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jRdvm+m8
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
 profiles
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
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, March 29, 2024 1:56 PM
> To: Buvaneswaran, Sujai <sujai.buvaneswaran@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Marcin Szyc=
ik
> <marcin.szycik@linux.intel.com>; Kubiak, Michal <michal.kubiak@intel.com>
> Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on =
all
> profiles
>=20
> On Mon, Mar 25, 2024 at 06:36:56AM +0000, Buvaneswaran, Sujai wrote:
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Michal Swiatkowski
> > > Sent: Tuesday, March 12, 2024 4:23 PM
> > > To: intel-wired-lan@lists.osuosl.org
> > > Cc: netdev@vger.kernel.org; Marcin Szycik
> > > <marcin.szycik@linux.intel.com>; Kubiak, Michal
> > > <michal.kubiak@intel.com>; Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>
> > > Subject: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on
> > > all profiles
> > >
> > > A simple non-tunnel rule (e.g. matching only on destination MAC) in
> > > hardware will be hit only if the packet isn't a tunnel. In software
> > > execution of the same command, the rule will match both tunnel and
> non-tunnel packets.
> > >
> > > Change the hardware behaviour to match tunnel and non-tunnel packets
> > > in this case. Do this by considering all profiles when adding
> > > non-tunnel rule (rule not added on tunnel, or not redirecting to tunn=
el).
> > >
> > > Example command:
> > > tc filter add dev pf0 ingress protocol ip flower skip_sw action mirre=
d \
> > > 	egress redirect dev pr0
> > >
> > > It should match also tunneled packets, the same as command with
> > > skip_hw will do in software.
> > >
> > > Fixes: 9e300987d4a8 ("ice: VXLAN and Geneve TC support")
> > > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > > Signed-off-by: Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>
> > > ---
> > > v1 --> v2:
> > >  * fix commit message sugested by Marcin
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > Hi,
> >
> > We are seeing error while adding HW tc rules on PF with the latest net-
> queue patches. This issue is blocking the validation of latest net-queue
> Switchdev patches.
> >
> > + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower
> > + src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:01 skip_sw action
> > + mirred egress redirect dev eth0
> > Error: ice: Unable to add filter due to error.
> > We have an error talking to the kernel
> > + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower
> > + src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:02 skip_sw action
> > + mirred egress redirect dev eth1
> > Error: ice: Unable to add filter due to error.
> > We have an error talking to the kernel
>=20
> Hi,
>=20
> The same command is working fine on my setup. I suspect that it isn't rel=
ated
> to this patch. The change is only in command validation, there is no
> functional changes here that can cause error during adding filters which
> previously was working fine.
>=20
> Can you share more information about the setup? It was the first filter a=
dded
> on the PF? Did you do sth else before checking tc?

Hi Michal,
I have used the setup with latest upstream dev-queue kernel and this issue =
is observed while adding HW tc rules on PF using
'Script A' from below link.
https://edc.intel.com/content/www/us/en/design/products/ethernet/appnote-e8=
10-eswitch-switchdev-mode-config-guide/script-a-switchdev-mode-with-linux-b=
ridge-configuration/

This issue is reproducible on two of our setups with latest upstream kernel=
 - 6.9.0-rc1+. Please check and let me know if more information is needed.

Thanks,
Sujai B
>=20
> Thanks,
> Michal
> >
> > Thanks,
> > Sujai B
