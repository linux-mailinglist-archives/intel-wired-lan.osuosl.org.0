Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGJOCZhMnWmhOQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:00:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 426E1182ABC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:00:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABA8840A27;
	Tue, 24 Feb 2026 07:00:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMh_yiWY5Cpb; Tue, 24 Feb 2026 07:00:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1D5C40A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771916436;
	bh=eDeoElO5VbENQakw7z+4a5G9D0Fv9zESfRHIza8DH9w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oU1NUnaUntDLQtyNO8uI7TaBjzF7twO52T29iXvTMCvFpYc7tXt9r2WKtPH8Ax0yP
	 HH8zUgMj4FLzZuxIusrxSV3YKcexMbNa5D4B6fsVRctVxuT2wONPEXg7Ddv3fjn8x/
	 YdBMxWEdhdVJccj6xCcqzBQovUuhC2J1YiMazo5WChucTvyqK/m+HPjwxLu0O4D/Xf
	 GxURjvaxwv2hcncKwiR7dgOodWCUO6TPk7oB6nDOkWKWDgW+MOpSnMyYDZuUwcH7L+
	 pizLPnrKX9iHH5rcbOK9o2i/2g2w5tveepUPYXkS8M70gsuvwa0ec1mifYpM/bql6d
	 ud9GrSWO5leyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1D5C40A65;
	Tue, 24 Feb 2026 07:00:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CDBCA249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF2844022D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:00:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZrBYMFzlLlea for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 07:00:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 02C27400A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02C27400A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02C27400A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:00:34 +0000 (UTC)
X-CSE-ConnectionGUID: /7ZKjDdhRLG6gdtVids3iQ==
X-CSE-MsgGUID: ZSZoAwkUSF+0MEoxcm8k7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72963990"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72963990"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:00:34 -0800
X-CSE-ConnectionGUID: gdni99OzS8a73QCai9SJxQ==
X-CSE-MsgGUID: HH0a0PMdSQCOZsC3bySrGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215971388"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:00:34 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:00:33 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:00:33 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:00:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g41Hjsd04udmwSb1rt1Tmu9u9Ht3/dU22I1OqGtjUjr9L4ZfsY8clwoG5w70TKPe3VpXqnPn3T765FjVypY1WyzgqCsdTbkOQU7L02/Dmq3VzUwYeligUW1yeW8Hba/aADL3fitS2W11K8eQEuLFzYrrS+tpkzpVmDrDgSOZwHJe4tLlHfgy6Um257LGDbyumK5u4ueBdZk3duTFKZeFlLZCyhbXaQWBuba99B3wnuXCIy+IlOKP8JcstP21J0AJV3Dze4Gs75UOe4PMh3/lCY5L+NlnDSikjv1zdZF2Ut/2T2MCEep7zp0jpYU/PPiEKq2B4i/WBERMRTkYbEmL2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eDeoElO5VbENQakw7z+4a5G9D0Fv9zESfRHIza8DH9w=;
 b=sl/ggFTcErDe4bBGo5AXrA5d7rdnoMvSThrS8H0eUvrX4ruVMXpKseok3CX5Y49nVCzs88iwClLZmkJaOZHKWnwJE+NnNe77mPPofXBO1dlwhH2N0y++T1JuvbbqGZ1tPeCc4+zEda6QxY2wnsCmL0wAbRzKd0W8Ftv8t7M8W4WCyjFu2K3AWGNGVOA8sYCJh/aTd3T0GhMwqrOWZSbTS7m91h9HNGaY4RjcFYlpXib0ZSsI0HN84FNG67w3bD50HlAG7gIsNVMCKmwzKYfGdHttQK9E/S3A+A0pSC4yMZLxRuiwJUrxxpasJrJbSnjH1LhTT0dEbnGrohXr9+Wc2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SA1PR11MB8476.namprd11.prod.outlook.com (2603:10b6:806:3af::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 07:00:27 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:00:27 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
 checks and initialize the mailbox
Thread-Index: AQHcV8kjiWyp7sQYPESk4J48So9WzLWSBppA
Date: Tue, 24 Feb 2026 07:00:26 +0000
Message-ID: <PH8PR11MB79651AA3391F906189A730E9F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-14-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-14-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SA1PR11MB8476:EE_
x-ms-office365-filtering-correlation-id: 5c677c37-a2bf-409c-f3ff-08de737263a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WCmFKQYsDB1soG3XcZDWDfYcDa7ODR21B1XQtYUbGNg6K7J22PWNVUPvdHP1?=
 =?us-ascii?Q?zErc1RaXhyT3vl8SeVNvXokpN3ztU4YbrR64TK6++EjspjaL2+uMuwEKw1P+?=
 =?us-ascii?Q?062lJok3wIMNLbyEs0wHUGsgB9zQFpuyrie3SOj1ot5G06FWttalsXyhnigR?=
 =?us-ascii?Q?sPhOWUJ/gU1A7nthwAVS88GzL+XE2g70NJdpcRSbTonNyV2Jx+4OQZVhRWIs?=
 =?us-ascii?Q?dnhDOke8w6+76pgtAIVENvEth6KADJ2pIexqzqcAPaEhAnlxHth7k1YJ9Hqt?=
 =?us-ascii?Q?kz8ZJvpGpe9erTOW+idSIdOHau+LBFb65mUIECaB1lqoUcbpKCIRO5uI+XPT?=
 =?us-ascii?Q?wvDbKF01yoG9a2sq9m01Pe0pfKg1qqPjpqmAFsI8tPvldTTnuCkGsGF76gdE?=
 =?us-ascii?Q?sUYQY49VkiV7bbuQ6h4F/INlIoSnhFDC94kC4S0RYxMSM001qOtOlDmbpYXX?=
 =?us-ascii?Q?63aGIYPrL9R+yGI4jx4NNBa/3BO5dznbianpK+Cj5qclSiVqTBaSLuNusMnR?=
 =?us-ascii?Q?oVLwecyt2hr5qh6GPBQEAWWqWJ5TFP6z3OCqyuF3vv46wq4sbyenkp2z8kqe?=
 =?us-ascii?Q?zS0DZfFrZiUQU7nfMnQpRBmx64kZ7BqKnVy0NiKB1tjdh6jh+7cRXreAZIlz?=
 =?us-ascii?Q?hNECwCI88v2bEfEMDT8BLT1TgMez7WVw6xy7xIF0WFY5yUZJLbRre3vxO0qG?=
 =?us-ascii?Q?0WT9nmb+g+gRcN6PLGYTy+RUOpxS83IEe85dMwDxeZrQXC1WCOFFZe9GsKon?=
 =?us-ascii?Q?oRVM6PhMxf1hhVmSs6bkA4a2JDC1w2uSen+18mxzdhhy61jeShU8xIDHRFNI?=
 =?us-ascii?Q?WIgVaIFndJI7jebaHQncxsCvpRGmb813IicZXU8GlDgbgsowOlKf4iln43dt?=
 =?us-ascii?Q?25qeYmpx5xf5JVEpo4jGmRjU1gnWEiXDLCGBnGKjgjou51pDsXUXt/6Q3EhD?=
 =?us-ascii?Q?ExX/Xuuw1fPERweoiR53C0rGXjOK7K5Z2E8Bt4Z0NPh3iaefLNuh9iJ2cE7S?=
 =?us-ascii?Q?1j9ScolKlVePXwr+c2HKSb2oTj+RsV9Hy1Os/BYJi0SunVPMuKs9o8N2IgFl?=
 =?us-ascii?Q?2OojDim5F2cEIH8yWj6eLjAcP3yiivFI0C7ym1kovhUVly0IEQ2mFwnbv1HW?=
 =?us-ascii?Q?i4AReS2B4PGBM0WtHpLYkbxKb+5gBefr+Pg+z2SGHMj+WsJy2LxwosPjHbaC?=
 =?us-ascii?Q?P0GjVsuLTQuySs0Q7B1gjJP39QR8EaOExHryk5Yr+N+6COEQyd7SMGvNaHEf?=
 =?us-ascii?Q?VNCvnz8fCQ7k5XnSG8NbgVZmactYFeajZlKtKtdolc9T9wyHg6PQlui7OyIF?=
 =?us-ascii?Q?tJfRJBiI6gj/8x0zh9d1nXGFOfC6Ye+mIUrB4wJav/VO0UybVkjGos+wzxeV?=
 =?us-ascii?Q?0sXBH7092vY2Pl9KslXVb0oBH4EjR4P+N4hp6ddhozOYzm8hygFGSb/Y+fjt?=
 =?us-ascii?Q?xvfZRMrGUyPBfUcRCC4X1ljk9rimHcl/PTW7WnI+WwozNmnY/soPYD+rB/lT?=
 =?us-ascii?Q?NnNCCxBVQ/Z3Qoz9tvTeOquGuC9jh+OYWFNCLSDgDK5tvBFc+f6yB96JBtf9?=
 =?us-ascii?Q?3JQe3HzMnEJaNd5XaFCbr2UvngX6PrItLl9P88d8uzTto1rOkmrajUDfViyN?=
 =?us-ascii?Q?P7DbPJENsHp/oUxD+e1Njw0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SDOBmo7MIiKSaE/z6YYyZiixNVUvqz1DClAKOg4g6KVDWzNl7IxKm8TjD8xB?=
 =?us-ascii?Q?1RzgpFiHU5cWNxTwKd6E5FXpo0BPtkqaS+zjhRV/8yBFLYv536/Z1xW/uuFa?=
 =?us-ascii?Q?tiWcVIGnUqer7d0miGCtgY8Ja308QnC3qiM5sHzghSk0AbAKU793dOfrFcJ6?=
 =?us-ascii?Q?u5THwjRiVqXoLHDW9KE8OnuMhfPe+F5B+0gSSBShS8MDRu+Nco1Q8qoHlGJY?=
 =?us-ascii?Q?6yZAA0rZwRFEcCFjDkf4aLjhkk/P8MyMudWakkf5bvqpQKGziOXCQ1mNw/Ps?=
 =?us-ascii?Q?09/h4Pv0NXO7L80LBfVwmhYu67vB7G8DYsfrVeE2mANls6GedmsgguehEIg8?=
 =?us-ascii?Q?SWGFRt9irbvXQcjU6nN3hlDcxSTGhOxAwaK+SgWFuowSIVhhiZilw4Nr+kZC?=
 =?us-ascii?Q?y0oj7wJg0g/p6cbcuNAf2T1UqI/J8Z9+gyFTHI2WEC/i8vjfJFSqUam5lxrO?=
 =?us-ascii?Q?D3hBBLUCPZSxvF3L6CJM3zRJMK9cV2kzfQjVJaOUU58ietbSsbwPLnQR77WU?=
 =?us-ascii?Q?NrNJyaQcOs6sTkZ5npoU6Zb87HOlxm76G6CfeZFujMpt1PBO5A4L+3RMFvy5?=
 =?us-ascii?Q?XRhJbN0/RvupRDwBXRjW0Dfc1E/8cAR8+p8WCPOwpWz2o5P6CFuzqnz+6Ntt?=
 =?us-ascii?Q?8i5kaa5cMsLd9piW1i5Tkwr2tGrXSH8pnPj2X5Z8f/w1PC4TMPh/7304w4RM?=
 =?us-ascii?Q?shsIvawhIsCO8AqoE4vXrU2eegw3aWR3861acKuv6LQA5ptwpuUdH4W7EA2a?=
 =?us-ascii?Q?tZwJ+hGYeatnIP+xMaNcuNXCbpns14X3VykBtkwzgq6cdzUjMXigbGT2HiaN?=
 =?us-ascii?Q?qDpxvCAkBiS6oi3TyObCuy52h/uUhlrRMeHF+kNMTbBoEjoupGTbBYpIMIyA?=
 =?us-ascii?Q?Bsxonu37g7tpXGiw2uf6/jh+aeqDIM7ggC9hAyFLRkamteIZcMjWdLb0RaBe?=
 =?us-ascii?Q?ZeF5gxN69fKRquUnljUuQDt8wbrw9W44CAjLXwBclqqZjVP0+qUrM5EJN57w?=
 =?us-ascii?Q?7FwuPEbdlHRT3NsJ0mup/ILpRv+Ua5K38QoKDW3Vq87ceJtRuTp1QlHLPCsT?=
 =?us-ascii?Q?yGIwFAHTgR7ri+ySev1MQP4K7O0SI7WUJRHFARUkHWoLb9Hl4fezy7gwqxd0?=
 =?us-ascii?Q?dEJybDG23gqGK1dl6MZM+ijXqqMGKvi4B9uMi0jltXLfEBR7MKVHDQ2rt4TL?=
 =?us-ascii?Q?8DFBkVUmfAVERIW1AbzNDSUGDt4DVqLcacMjfbs+ZsD0bCcQUX5jeu6C7TfA?=
 =?us-ascii?Q?YoW18fSPJ2D6jZUR+1i9RBNcDXliv/9Xa8xdcjQOCEkyjHQe1cGWKs3eYqIM?=
 =?us-ascii?Q?Dne1fO+tf/dnZ2J8NejLFH0Gd3WnN5rEhWSwNbgCF0xS9qa0eLgHwLYx7lqU?=
 =?us-ascii?Q?m+TjeFM6IRcNhdFwPdUrkNju2NV7+7ncewBVDgyrc4MqybHahbGZu1N5OWZ/?=
 =?us-ascii?Q?XE0BoLEZzO0TpkJW6x6h6xcxwc0gCOSJSJE0rs4i0npTCTjUNf1tX1X4E7Wk?=
 =?us-ascii?Q?k/bYXSzEHdWl+s9/cKmQRr2rzP7OnapWqk3euavjn2fCqH4n5Djev+IdQ2fj?=
 =?us-ascii?Q?RMnEuV/5wIewK2fmatWuyMC2k0v1LVfTYNv2gjTEXJfYRRIqJkZMHa2VC6uf?=
 =?us-ascii?Q?zutsS7S850OA9Z1pr5+5wxthNdKCAhhXlGFDrPEYCdrd41Gae04qiQm0GkdS?=
 =?us-ascii?Q?Fn2rb3N9nYvVYR7x8UVj8jkRyvZphH8RtjshQNXMW1UsaFn7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c677c37-a2bf-409c-f3ff-08de737263a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 07:00:26.8158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DIG2g/nOzF1fVVc/fERqMFDVrwOQ4rvOsVxMd2UMwgQ95RzdBdP5pcuSeX8BOYq3zlkP5y4pqZ/h2tdV4G+lNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8476
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771916435; x=1803452435;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MREmuX49XXeT/ybZ5wEFU7IK04am6UF+kZ0scTLRJAs=;
 b=ex6iuQ2Hsh3ArV8BVvho+gd6KjPJp2l7URU+uHbDDI16//Xc+buV2PB7
 X7YrW5ZA+LRWItfO0rUevHVi0ygqzNzlEODRJBFW5zpmRLR49KMKNsucJ
 IYu52Bnx6DMdF1CDolEuSuYXmsFsNX3ju3GUno8RxdubitRedpr8BMrbc
 1QFmzbODXQ6F0hZoyBCDvBvFpRBYcbPcAo5IdqRMJKqxaRk9FKkzlx0Ew
 BC/zwR4mEIDfHxSE5p4mIMfq16j1ttUeYMb7GhJJvmgahOvEgPaLixAyp
 7EnUVqdM0V/+ex8YIoroZpxZYsIV1RB4HT4lWk72VpNgl9P5pTctsMo5I
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ex6iuQ2H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
 checks and initialize the mailbox
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 426E1182ABC
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset check=
s and
> initialize the mailbox
>=20
> At the end of the probe, trigger hard reset, initialize and schedule the =
after-
> reset task. If the reset is complete in a pre-determined time, initialize=
 the
> default mailbox, through which other resources will be negotiated.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ixd/Kconfig        |   1 +
>  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
>  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++-
>  drivers/net/ethernet/intel/ixd/ixd_dev.c      |  89 +++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  40 +++++
>  drivers/net/ethernet/intel/ixd/ixd_lib.c      | 143 ++++++++++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c     |  32 +++-
>  7 files changed, 326 insertions(+), 9 deletions(-)  create mode 100644
>=20

Tested-by: Bharath R <Bharath.r@intel.com>

