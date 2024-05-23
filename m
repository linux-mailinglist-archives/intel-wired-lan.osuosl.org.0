Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1FF8CD98B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 19:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5FA04183D;
	Thu, 23 May 2024 17:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6w_n7wipuIx; Thu, 23 May 2024 17:57:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9FB640142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716487039;
	bh=XYNJHNGoEJhnyDHUwCg3Vsy9fapZyKnxzXONkXiWGz4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sAydttytd0qhaOihbNphADrXZMLDn6+PFagYbWxGjol9kkIql73IcYwPeQmBaNGbZ
	 qzWtcY/sahMluNUnNUHkarbZ4y7dBDV+2DdGcNgY4Vzb+vNlikBd4VdhbLk+HZauxv
	 +ouQoSx8IwP96zI6g1m/gNJ1DrAVaKdMFdQvCdS8coPcgwGahI8VgpaMF7+VKdP23L
	 /478dRNq0amg9Lx8/AA97CLQxbKJjrm4+tvl3IZXydY1HXQbXwOt+WQnvGtVli0HC5
	 JWGjP84NBSw0KMAe5xg95uT1seY7saeYnn3yi50bFz2hnjfc6hpUi1J+lTP703M1C4
	 xROBNY/uPZomQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9FB640142;
	Thu, 23 May 2024 17:57:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 460BC1CE761
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2ED404086D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QTFqPkvcragZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2024 17:57:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2639940861
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2639940861
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2639940861
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:57:15 +0000 (UTC)
X-CSE-ConnectionGUID: bazVektMT8GtR9BJ1JC1sw==
X-CSE-MsgGUID: +0viqGatTnSLU+RzMxxLqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23959283"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="23959283"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 10:57:15 -0700
X-CSE-ConnectionGUID: I7r9WQMAS76WfwwrKf9gKQ==
X-CSE-MsgGUID: KiHCI4e9RYSEhJm9lJ8Bfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33872747"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 10:57:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 10:57:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 10:57:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 10:57:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHwTMe9ArMzIm0Ewy/YzNjvLq4HmDmAFHtspdcqxsdBSVI1lXA0OftaU7QdWstM/rERsPZPy5vfbaSGpU8xqSrYDGxUan23hG9/ITtl7fKpJWSh4jOkYiUd4qYm8xwkBwf4IVIpe89t9fkKpgFhz+Y32VwTLdLSnK0b5o4ZecfZQczMaC0M2+Ilbd9vEc0yjY8DNogq9R3at/rwY0vVJthCUFq3N6l7q5j0msJrRqjrQxsOp2BuMv6uCG1TYFIE+uTNzpiywC76I31z2PcioxOfAtTranPC7RPrz0z2OzSrZ9ynORkxnXCZxShgL3fD8oIAOdYlzy4prOX9Eh9n3Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XYNJHNGoEJhnyDHUwCg3Vsy9fapZyKnxzXONkXiWGz4=;
 b=Z+msHO2A+2nnt+RUWpCJAk1dniMTs9B93E7fknByHpLbvtQ2IymIARHEUNPHCA2WhngHmGXefIQIu2DY2PCHAIERT4a4YuttRWPXTJeAjyq6V3cT/ho9wONHbQ4m7XICbKc8Gn0KJC++5R763FSdlB7e1XkyfduUfeZSSlEKKX10MZS2OtNCum9eBVYvrufkYjbWMdLNGpAWAukk8ZCJr4h1pF4mNTTmQpO7TOGWMwoUv/PW6nqDJTEVcDTKeRMRsItRpK1NsoUTpdF2wZ9RNMceV7DxMcYJcOMam+KQKUt+KjYCnXfUQXjSV5JGwDD/P2VGeXjZPXAbuCFPKQh59w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SN7PR11MB6704.namprd11.prod.outlook.com (2603:10b6:806:267::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 17:57:12 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 17:57:11 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Thinh Tran <thinhtr@linux.ibm.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net V4, 1/2] i40e: factoring out
 i40e_suspend/i40e_resume
Thread-Index: AQHapwwCEIRqC/aT7UySuRDunfJEd7GlJtQQ
Date: Thu, 23 May 2024 17:57:11 +0000
Message-ID: <CYYPR11MB8429D2D33D2D57C31111F660BDF42@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240515210705.620-1-thinhtr@linux.ibm.com>
 <20240515210705.620-2-thinhtr@linux.ibm.com>
In-Reply-To: <20240515210705.620-2-thinhtr@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SN7PR11MB6704:EE_
x-ms-office365-filtering-correlation-id: f4fe9ec7-fdf2-40af-0b04-08dc7b51c5ab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|1800799015|366007|376005|921011|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Zmdig7ZtrkU8X7Ddsjy1a3BpGc6Uf6i7qGiIN6y2l0d7NxpZIcxmeb0fGYrw?=
 =?us-ascii?Q?TMZ/KuIb/cyNPVn7xZYYjLqdHiqb6ap6LrnDqiRnD2A8IkhQ2S2A7QStDK65?=
 =?us-ascii?Q?Miu+Qz+FcPuMwXcrgXxqCzJjmmgM2RYKI/IscXcsl8hahZSaVBe1y2XjCTdU?=
 =?us-ascii?Q?H3moYNKRFNmffU0yrGSc+H9H6WFeUtRPKVDuPjO3GWHnYE5BNiUboCPWHA7T?=
 =?us-ascii?Q?P+OXi4zpDEb//MFDLF+chsp8aclzNFOeEBTLnaZe33nJv555P8xhDmCYXjzU?=
 =?us-ascii?Q?NZvY3Wo5pi8u1wFnzJpHuwuZFs7lqIK5VS47hYweFCLspMSW0sTK5EcNSNSw?=
 =?us-ascii?Q?VPYAQgZod5eCxaxaRJ52kfCj9koOZBLSbUgK/jp0/aS2Tg0byUpxND9+3B58?=
 =?us-ascii?Q?F7ZggolrN4ZHVX4qegpRd4LvCRZOjpXFcmcK10lnGVXeSnJQF6zUZmYqtsCC?=
 =?us-ascii?Q?VgSB6gf9FVizwcySRXyLL/2DvcECGms/YTSYQ/RpOXDtcOMgocYu3y6EL5If?=
 =?us-ascii?Q?bNYnL5yRGIg1HMF2jQ36Voi0XCxKuTtFlpTS7bxp0MJFhZidcll5X3jFSV+9?=
 =?us-ascii?Q?nBqpNBDQTJEYEjmfgyNSoY8vqsj2k51/H7oJ0fyRSRFllxUOp9v+tkJyD+40?=
 =?us-ascii?Q?AWFIyRpv3SX0Y7JAER/rQycl7C25++kA4wKBCq83++tf7LAuGP8rzfxa86gU?=
 =?us-ascii?Q?MKQojvQtAgERiGC0gaGVOOjvI2Eo2HvpGUG/+v39YUzCVETasQ2E/cWX6NPk?=
 =?us-ascii?Q?lmAyq+iiIaQSavSI2YEGztOAV138LegnYCKv2TK8W6y+l3Zi1e9t/YmeEgqU?=
 =?us-ascii?Q?iYo8ynilkEoXmMKngsXv0DABr4aj+mK6uqHcj0ANfYZeYNoP7l+inMGE3Y83?=
 =?us-ascii?Q?PqhCNT4L8xiPpBNGbHrADlSa1UCJwveplAGPkHHfRtr7jGXs2nhngy/B4ZQ2?=
 =?us-ascii?Q?ygONlRGEgNv4StqlikOmT4HperfQUf+E50ui9ZHZ1cvYrP86ZHtAA/YE/jj0?=
 =?us-ascii?Q?KeGLE298/pvvjRCzWt4WF0Y03M3vYqYSDRszl3z2J5yklckVRA+dykdb3tsV?=
 =?us-ascii?Q?bX3q/BhfEeu6AgHVtxvbIcNsfoM4jMIZRuNkeonjoH/rb2qNNNHc+Gg7Eigu?=
 =?us-ascii?Q?9XY7Nvn8CUBVHV1uQr7fqRMuiyg8dSSHJTrLZTulv37mEGqEcdEPD4KCXuxu?=
 =?us-ascii?Q?gYpFzOSU3eoeOpVDwYOBokGMwgfiUzVgK38RPkdy6qrYLRwMf9Cl7CyPWirc?=
 =?us-ascii?Q?nY5N/GBWFj9KRLBI9IK5ECaXjx15Ytmr/IouagwvXJUohA4fARqBpeXuAT23?=
 =?us-ascii?Q?BDWTlEuEhOQBDuSbYMSql75Z1ljdMlXlKUB2PdCbsc2Gbg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(921011)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?efhIgj7yBhCmeHGK/w2O1/irTbHXfXokgNw/bqp6eYkAq6f4ptaB+bPHw3t6?=
 =?us-ascii?Q?toDHeHELDGt8lpS6m3R1MmdQAYIu3oLkugfYNl/p8zWwt+PC8ISHxkpRGHCV?=
 =?us-ascii?Q?COpktfZrCIH9k3XvjgzcvctzADOQENrLOWrHrE/Q5/sNzJaoMJezeU/c5ogR?=
 =?us-ascii?Q?VfbNtCIlF5x9rzhDa84aSTFMsXQNrwpZ0D0JYTynaFUTk9ZzbHgAIX08rHU5?=
 =?us-ascii?Q?OwSi1YB5pKrzuoB+BdM56TJjoYgYYV2kgxS9VyuKtLhuNYGNp/C4e0lHSQxe?=
 =?us-ascii?Q?qrqtmWri6tBkLK1NWY9cO3wNv28ZblS8QwPqOtbaIW75EYUCiTXsfoezeXE2?=
 =?us-ascii?Q?NbRNRV1MwUmOtMoTeiwyllfW0i5ztGw6WLfT1+Ekmq2ROHyR/fQBjRhl2gCg?=
 =?us-ascii?Q?nrSg6mGT6nWI59ht+WuO9m3vKd0Lq1yTA6RUyFJ2CArVnCf/9PI08mDk7xa5?=
 =?us-ascii?Q?JQYlWQ1i7d4EEEah9+giOI0ykKmIV1w2zozKvczsKVR3B6BzVcKRXmgvuohH?=
 =?us-ascii?Q?QowzmyIIlJiTok1PFGumT7b9XD3a1dtFRK97/VB9f/vs3l/+L/jUbrdS1yqH?=
 =?us-ascii?Q?nwIRFjgzQ0dX0fEUqmHB6C0FArqaAwgVo3pyFK6oovflqXAefYiuBskg6Ga5?=
 =?us-ascii?Q?lEmJ615+j9Tn6g01nJDUWUvzml66X7x+dp3P7mkMM6gfIuPljDdldhNtgbE0?=
 =?us-ascii?Q?Hv+AInLYBZgAlSw2focxJYXxvjUglUi++KUM12YdakprylaXpJvmYVBDNLBa?=
 =?us-ascii?Q?j8vPaNYKNYdlYGs4V9v1H5O/uR5CZpult2lHpMywOTE4ORbUTL8qOIICZpqr?=
 =?us-ascii?Q?eBWTEHxko54NG9mfGTp+G3tnq1zk9xnEmjK13nWKmKErwRsPOo8XGkbSwacV?=
 =?us-ascii?Q?XSMZoheD/9ankGUqAq9y4P9ctb75tdurN8GRo41zH0AGkPBcrFOfTk+kmEwx?=
 =?us-ascii?Q?DPUS5t44sQrOSayO/aanSkvKHmSbGIeCFLQvUgTt8Z1/27ApzR8TS0zrADew?=
 =?us-ascii?Q?8vaRrZuWOAUR6gW1BStKNHQYw7Bhg2tGb10Ym81SkPsuzImZaA98s4aww3oz?=
 =?us-ascii?Q?MHdl4irEnxw8iwBko5YtCwpytLlg+wYIt3ur7UGGEbMYPAvMJ0agefDchg3c?=
 =?us-ascii?Q?8R4MNBwKulhqa8E4T2KAZ5tsy+3VO14DNuftOhOOvYRm/JW6jovySiaaUQGO?=
 =?us-ascii?Q?5ale0R8XLm/Tj31OZ6rcknKoXmmNhNQWns/AOejqxoJzUUSvUr5OFy4lX2qb?=
 =?us-ascii?Q?IozcImqR/kZvI13hj8X89U1tSLMP1nGeu5FPJinunPRdinqbSTyFVs9bKeY0?=
 =?us-ascii?Q?1Ch6x4qQbspNXe2rTZSzodnUatJn4AD50Dp11kipgXMAARlipEtq06BLM9KL?=
 =?us-ascii?Q?GnYWu5LkriQNF2CIDDl+4/rDO52qkgWzdLOaxYPS3zH1oP9P4v3sfH/dqyEy?=
 =?us-ascii?Q?rQz3uKefFaCoNyT4Iu6zw/A/8l5O/ZWwm//YXMsjDxM+w+QfFFH1Qrw1hp+1?=
 =?us-ascii?Q?7MAhEzT/r9hqak/3viYPwtgdYC3cT8q4kLbw+wZnBqdrccTedh4iZ2/tLx80?=
 =?us-ascii?Q?gw61dSdSIvwAKO24WxGjaoxIdhz7mLRc30mtc4xrgP2gdZOuGkvLBUOqPIMF?=
 =?us-ascii?Q?0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4fe9ec7-fdf2-40af-0b04-08dc7b51c5ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2024 17:57:11.8571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bnnHJ9+zb5NAl3TbUeWKahz2jXDKAAPLCCyz5DXVzV19i2J+kl6d317APXhS3121jxc44rEKSS8kZi7qwt6vr0j/BnB92ydZUq2ZdAnD+XUWeujtv7sf2nTKa5U1j3H1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6704
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716487036; x=1748023036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KpCbNwrd3BDb4B8LqlysyH/God5wuYYPCDx7AI3ys1U=;
 b=gJiCnkxYaYAK3Xe00a95hTNn8ryTSkEKu2rrncmwLZ+uFa2J6PfD+cPQ
 Fp0IYE4XYpyAnNnmVFurt+YrOf5w8iMpkuPbFEb/YCcpZ+q9CBKU49mTj
 Sd++dfeF4/77S8M9xT6YlAPMKE37tOpGOe5GphAFgLG9Oyby1hdiuxE8e
 rTG7PqanjyNwH0AGRuTH3sxBiZxVU5L3SB/q8mOEEOL/CeEUuxD3N9d+N
 XTPz38QT+uf/KGIozQKafmvVYzxSAEyMk1BXMDM+D8hPVB/hIF4uYF8fG
 wzPpF0tNzqoRblRq193kiuQ0j/wX6R2syGyGHxYA3V+IWdMk/Nd4mzD5P
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gJiCnkxY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V4,
 1/2] i40e: factoring out i40e_suspend/i40e_resume
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Thomas, Rob" <rob.thomas@ibm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
hinh Tran
> Sent: Thursday, May 16, 2024 2:37 AM
> To: netdev@vger.kernel.org; kuba@kernel.org; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; K=
itszel, Przemyslaw <przemyslaw.kitszel@intel.com>; pmenzel@molgen.mpg.de
> Cc: edumazet@google.com; Thomas, Rob <rob.thomas@ibm.com>; Thinh Tran <th=
inhtr@linux.ibm.com>; intel-wired-lan@lists.osuosl.org; pabeni@redhat.com; =
davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-net V4, 1/2] i40e: factoring out i4=
0e_suspend/i40e_resume
>
> Two new functions, i40e_io_suspend() and i40e_io_resume(), have been intr=
oduced.  These functions were factored out from the existing
> i40e_suspend() and i40e_resume() respectively.  This factoring was done d=
ue to concerns about the logic of the I40E_SUSPENSED state, which caused th=
e device to be unable to recover.  The functions are now used in the EEH ha=
ndling for device suspend/resume callbacks.
>
> The function i40e_enable_mc_magic_wake() has been moved ahead of
> i40e_io_suspend() to ensure it is declared before being used.
>
> Tested-by: Robert Thomas <rob.thomas@ibm.com>
> Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 248 +++++++++++---------
>  1 file changed, 134 insertions(+), 114 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

