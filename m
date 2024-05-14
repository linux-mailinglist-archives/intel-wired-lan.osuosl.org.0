Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9094E8C4D12
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 09:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44FC060ADE;
	Tue, 14 May 2024 07:32:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2XgXAOEJIj7H; Tue, 14 May 2024 07:32:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43EAC60ADA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715671941;
	bh=G62vCHNaOXkGNd4I7eqWQB5+ADMRRuHaTXbwZCkUHIU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rigzcZ16LlcyF97A0faucbsXsOPEtul9m33K3GR9MKniRMe//WxrDNS6n4bpQepEI
	 tMHqSUN4oDEzIqKNh7GARuV3P0PQv//Ii0mLkv7mHvtjt/IbcB1jpuapCjK1Xv6w6A
	 4yU7XHEVqpHywGISDyG3XDgJGCNJKiDN6A3LL9v6cRy9VU7lAWYd11U0GmtZpjkgRo
	 KrY3houo2kAcrNOsyMWcZ3bolo9ulBeRGBREpfTND7WpfZxddvJ9RWtmP0T5uuFMLq
	 ObmzXdClAX6+k4eE2D7prSTmplHr5k5VUvtK6JoUsUsad1O8FrntN7XNBaF7A+VoLE
	 N3BUv+lE8SdaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43EAC60ADA;
	Tue, 14 May 2024 07:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 422A31BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D578402F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:32:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zB76ryKgthCO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 07:32:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 50491400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50491400FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50491400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:32:18 +0000 (UTC)
X-CSE-ConnectionGUID: BZXr/226Rk+4rmvRls2ytg==
X-CSE-MsgGUID: nbETgLZRSM+ZsVvA62il/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="23042035"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23042035"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 00:32:18 -0700
X-CSE-ConnectionGUID: kUH4kDlzRUaij2x81syOPw==
X-CSE-MsgGUID: AySRTrjJRKmx0lMFERo6Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30546869"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 00:32:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 00:32:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 00:32:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 00:32:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 00:32:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JiSE/wflgkyhla2+c/YPUau2LXLhP5ULgZpU7tt1Dx5J2770fDJg7k/XErjj/9LMrogpQ/ega24BPq6fLcuTk3RT6OXY1PkiUeANqwwRPpeqHQha4qMgK6zuLsamMyiNVQcGyzTsJXsKeYV+xnKtjuG3rQQNKT26IJxngQkI0bD6N7OXCwXGsPEn9YWJVdpc0eyRmnI+nHk/tvmtNyqsYrnjCTKzFz3iL+aGAkp/3vt7RCxvxfaHjBmm1LusxSXrsyUy+iPJ4OE3/irhdvuPUaRnr0WkrZX7zDqghV9Y08bMqQa31A3ooMeyKJAAbdp46Yt4AdHY3dxraYg28GScXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G62vCHNaOXkGNd4I7eqWQB5+ADMRRuHaTXbwZCkUHIU=;
 b=LNZO0LbhVR1NLIzI2fZ5lV6BYpWJbWQzyjtdGAcs1Jmokj/jJWC8QRdZCSB5Fq3u0W1kbEyUj6ZcWud6xNbUknGRwAUdVK3WMonhy/VHZxUK+4V4KLTwjm6tT46a/Ixq1zSzOHhUreVXNMI18irhbFuMq8ofISX2IwIA/wVjZySLgBBlk0IXnrELNs7ptdiAol3g78vr3QNY8WY4Nycse5J/d9CR5yg1n7xnASS45G45NpwWVjMK7PiUYoKrrrCpjHAvMsdeWe80XLfWIkf28HavKSfkzavWWgJhbh4jOQCwVW4UHd63dP+r01q1AWNvqKGLFopwcEIHORlivxC47Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 07:32:15 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 07:32:15 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v2 4/4] ice: update representor when
 VSI is ready
Thread-Index: AQHan5FdjByMFv9Mi0OAoBhhUCZJuLGWYnhg
Date: Tue, 14 May 2024 07:32:14 +0000
Message-ID: <PH0PR11MB5013FF7B71A3DC1AFD7BB86996E32@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
 <20240506084653.532111-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240506084653.532111-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW5PR11MB5931:EE_
x-ms-office365-filtering-correlation-id: 0a113425-6464-4b13-ffa4-08dc73e7fa10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?gY/ePc+O+JNHrOLvNhorX1NqtekW2DS1T5bJdGEJKHaXd2E5ZixE1WEzXyXL?=
 =?us-ascii?Q?FvtVmqjg3DAmi9za5wUKrhuO2FKsFIhmC8bJUDzqsdLlxIdNLAjIoC1+gH5d?=
 =?us-ascii?Q?+a5lhfoK7psyFp+dhtofMvV4zcp9YufWfTMYPyv0AwshIvz/F854aP8jGGiW?=
 =?us-ascii?Q?b8wzsvUAqq+X/bBov6l/4iJQ6UsYlp1vh01n3LmtJm2dAM/M1FKYX+R9WoEA?=
 =?us-ascii?Q?Yd5edrPIp43bNYoThRtYPHwu9NV5xgVALC57I+58Idop49j+xKrRFe1YK2LQ?=
 =?us-ascii?Q?ww2BL4QKwbducpwK808LCmO6BBYwM/AlkZ1baiiSTVJ2USZwg1SRN6ZyA7qA?=
 =?us-ascii?Q?l1Ij7wXWggttDUMdkOniYB3vr8C5owdSwCeYLNrF8aKv3L7zuJz0F29FUhmq?=
 =?us-ascii?Q?7iup2XH2lmC6vw2hvTRXoyDsLq8mWvGVPAAlFKnl2SVzFLcMLFJQjklLzf1O?=
 =?us-ascii?Q?+TmpY0vmE3lEYkPBNwFgErQhwZhHpDstjRbfcDO7N0ZTAwQw0vd6RvedRPsd?=
 =?us-ascii?Q?oONwutvMDuhpHIW+ewc0+xBbWt2st31HhB60IFf3+hhyDGLx2k8IOT5rFyTv?=
 =?us-ascii?Q?cI4yjoqC1LboGNyX9equnhO4yiNEDERURrneSkbEE1KXSqjpS0j1Lfyup9ix?=
 =?us-ascii?Q?YKaFYay6K+fsPNbRMkwu86tSIJsODm1GN6zbZ3x7tvTFXEnEn3sRMAM52Qw4?=
 =?us-ascii?Q?VtGCTRLmOemHMo5+5/Mc4sJBpl4ViBhYmaRwmuNKHRzWYe448pITQ6+QOpO+?=
 =?us-ascii?Q?bExKPlRgBSuDvkoVv7t3onNsQHW9FAKKvQtImN+nmi97/Oz2UhipgTyOI0l7?=
 =?us-ascii?Q?1V1b2kzW9X0aKnzuP/gVtYzMVez2E7sTv8nw7VpRMGTbFz07b7CNj8ELbP5Y?=
 =?us-ascii?Q?9Td6tJjqUttWAQX7WBw9V2vCIcxmHqCD7hcO/iqSd9/joDuJvoxcJjfSX+wd?=
 =?us-ascii?Q?HwmCVVJceC/5mNJQ94IBAFKM1z8hg7VzLsHoN0ixH/+e3GUapvdIaS6FEbWs?=
 =?us-ascii?Q?CBHVRC6vYt9Bktv+yQEGjFcapgeubZjitJLcxdNFzUSEdmTzE3ipHbEFOl6J?=
 =?us-ascii?Q?g8ynQD3PYH7qhQR9tnbtZHfKGgLiIRjaiYhOs7YGqiDRNYnsgxkXqC6CG07F?=
 =?us-ascii?Q?9EMrdt7+Mty8YqPfK4ZOJ9cbu3khdnG6T4hterfz/Wup3uK8GPfPnZmkgTt6?=
 =?us-ascii?Q?mF0HjenJ9tECRFyOLXhtnWYzbdiLY2IP+WPaiPIKveFVrs1jsNIL0SUSmWBq?=
 =?us-ascii?Q?CjJBQMQ9XB7l3OwDc9Pn52Tf+uVyqmqZ7LQe3OeBlrWH/kmJVUUs4x+/A8fv?=
 =?us-ascii?Q?n7L6lg0mYBVDx1ajtrOpWTmY+1eqempdQfPwCG3dF+TNiw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jee+VeDaT4M9+twsmS8/r4GpM3O4f5VMbnZtsl5Jm6vg+4+BAsju8gzECmmW?=
 =?us-ascii?Q?NRC0Wb2mF6XMFHH5UfMebzg85rRLdsp4+RQjyGE18ABECDubKeJrdknaUR5W?=
 =?us-ascii?Q?+stqYLzHKNtOyC9KyzCmj3u/dxgJ+zVBRR0l4E6jo/Gg5HcqvyxCMy1CoBg4?=
 =?us-ascii?Q?RZ2zh2e/TOmrSUANkg/GhUbO9nxm+xNMW6DdJzR8BTmhDotLZY0Ch6gOaMan?=
 =?us-ascii?Q?YkfuEgtSvtGD4DDjIrKSBHf4zNheq1X4BYAC6gVARTv/xirGmNbMooCxNqbk?=
 =?us-ascii?Q?2M1QC9sQ+uN/0UMke72cqAhu6xoOTPJUbqTJNyeI6NEVvSQnKNbw6XV6bS/g?=
 =?us-ascii?Q?rLeQGZpf8xL3jdGiX5WYTSPbc1jOoG8copfT3JZEu54FoM2F7EdJyzsIVIvR?=
 =?us-ascii?Q?8s8r8Nm7w38tw9gIagQJtMBvxlS/1BHolYfYSUbdywgOesk3euY7dvm3H4JK?=
 =?us-ascii?Q?qylyqG2/b4lZk7OJBSa33p5xJEBPaTlEI0g65X1u+xLKhJLQ/q/w0R+foo55?=
 =?us-ascii?Q?NjJTWT+evLdxQArc/ZiNBBPSRjIfAGdh7lcWeo0uNVqRYNCNmiHqOQddxiRd?=
 =?us-ascii?Q?Ne5e8FkTtGil1aOahBLWaZ2XZVfHXJBSZEk9FrSzHZMUoAO15Fq96I6mB2kH?=
 =?us-ascii?Q?0hy9foTweccDJw+neTGJy6kMInAjWV18w2bjPLmD7I+KjCz0FjZdYoZsU3x0?=
 =?us-ascii?Q?+QqsEcWHnSF7omiXK4RfhUwpaPSNk6dC/ran1runLBh5TrIbu3QGtUzBlA6T?=
 =?us-ascii?Q?zMaV3GjiW3ct7oSaV2pXKlIiZkNlZwnUP2yfueESqMgCwSIJIkN3pSHc13uJ?=
 =?us-ascii?Q?r/SEf6G6QVrQDTdaUkTULiLWDwc0y3LKwoh0WESGZJRTy435GHLGbSXfr25y?=
 =?us-ascii?Q?Qg1DFx7T13y3hYmaCDaiqHC1e4IiSnN1bOP+Z18b7yJHwqy6m4UIaRh64l/v?=
 =?us-ascii?Q?SDyDZHRgW4W5/ovTkaswP+ALC4Z1umj84oal0Gg3vmyT6FDD37uHOoPrn0EJ?=
 =?us-ascii?Q?L5bMuYY1eZpvSZTvHziO0gUJi+bhDTg/RDKdolWyU3JiHZ/M3lzTxTkh0Vfv?=
 =?us-ascii?Q?BiUWw4YJvonrxFAvK9pydfyHXvTwLrGHvtN05YzDlaSy8wl3I2j7iTjtdl/N?=
 =?us-ascii?Q?F8oOa0OhzdtNo8Zlw8qE0B+z0jkSWu+1PvH8tkz0xQSpIDLdYIFhtCC1UvSU?=
 =?us-ascii?Q?fvH5ZBZSmQqc7BG3oqZ+KBQhJ9qPZ7TDiOgwhq70tUFDNr2EvQO844jnD1E/?=
 =?us-ascii?Q?PdZcx7+eJiDiws6T6BlMdJlDNNh/x9hwtMSursRSx0Kw+ISij7XattO8Lzhd?=
 =?us-ascii?Q?4jvP85vMgNXC7nEReeZz3TrrUztXtgJnabDpQ+0FDJp9/F29+PWSDI0v1eLs?=
 =?us-ascii?Q?GMH6911U5NgdDyQUb5pkO2/5vA5kYNg3tFWiMWXjuqnAIOQUZ+2qX3D1JFED?=
 =?us-ascii?Q?vfYpDypyj6+KOfVPUGW22yoLom4hkwJPA3iFcBuWf+vcpaPebK2oSB3KArDI?=
 =?us-ascii?Q?tw8TTY3bl1jqEleLt3z5VwUZXi2jcMxN8ckObhcGYt0UPjTcXBHAUsgUC7kZ?=
 =?us-ascii?Q?OEhUSzy8RwX/ax01wAXsgWYrMg5X5GtVAqtI5xU5YegLrsOfV+Rbq2L+LnGe?=
 =?us-ascii?Q?Ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a113425-6464-4b13-ffa4-08dc73e7fa10
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2024 07:32:14.9550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sI1VHEsAXYYOqKrJ+FlRJH1dEj7H6DnLYd9odM8lpDKSUrh2xygz/WAA69pTpHlHu0aW4oNUXHIGP14d4tdqLZ5Y5EPhFHQqjnz7+qljOnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715671939; x=1747207939;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8m2ro+Ukbu8feicpve5EdlZPQXH+z73Zk03VoXhNzmM=;
 b=IOCdak2Hb0qCQ8UMMklT2p37AT+ckSvBpJEkeht5/mKfPspyiz7j8DOU
 cfY4SRfqZhWn3yVJgs6QU8YtsLEuyYnC14p5WlIj5yJZWoOmUqZIYFzcl
 xViQX9VGyR7RE9TwVRdECzmiddfFxLQjn6ImInPH2feoWHlNhiagABGLf
 YjTF+eBBKAJ5xFowO1VqJGqIVl4kspboLtLC0AzgPyO8hElwHJ3ZMFUNs
 sTNjrrcjOmNVZ+6T9vglnkfkht7KzFkcC/gf4Lr7NlrQXq1aulOHweafo
 PFxJAFjOy1Uoqc9XnZs+3z+PqKL78w9RsQB8N8FRSVqlaWXNTdx8FfhvO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IOCdak2H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 4/4] ice: update representor
 when VSI is ready
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "jiri@nvidia.com" <jiri@nvidia.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, May 6, 2024 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Samudrala, Sridhar <sridhar.samudrala@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; netdev@vger.kernel.org; jiri@nvidia.com;
> Kubiak, Michal <michal.kubiak@intel.com>; pio.raczynski@gmail.com;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v2 4/4] ice: update representor when=
 VSI
> is ready
>=20
> In case of reset of VF VSI can be reallocated. To handle this case it sho=
uld be
> properly updated.
>=20
> Reload representor as vsi->vsi_num can be different than the one stored
> when representor was created.
>=20
> Instead of only changing antispoof do whole VSI configuration for eswitch=
.
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 21 +++++++++++++-------
> drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ++--
> drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  2 +-
>  3 files changed, 17 insertions(+), 10 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
