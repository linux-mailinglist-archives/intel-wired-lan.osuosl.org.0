Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF64B44262
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 18:13:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BFA6403A0;
	Thu,  4 Sep 2025 16:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4qbdyhPxF9-r; Thu,  4 Sep 2025 16:13:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A735B40398
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757002393;
	bh=XS335gG3SyQX+Lfo8Pan22mTBsYP/1r4suIyINWsdTQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X7LR4QtQPj5x5ZWHV+U44EWTU71opjHvzBt18Oh0fPwxKeHxY1hvSKVxvzbkyE0pa
	 85rv7dtAWC6Vu8qbTUcYDLs8EminnfHtf6TeokXRDM8yk9hSTnfNsr549DSQlG02oy
	 kqN0NT5yyv8jmNptjYUz4zRqNvRRkt/mukk95zMmpp4FbreQpSf0y48wFRcHdKsLU0
	 GYCHEarF9oWU41UIReXmLBalx4EtmMA0H/oSg9D5sXoXb422XeSxXiZcYoo1sbcDJn
	 DopKn6xJejIOcEaNavkV9RHm9bCCK+B29jI6CGqHqQKNqlBFR7eYL2a6HHIWt8UecS
	 1ZKEEOa06/p4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A735B40398;
	Thu,  4 Sep 2025 16:13:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A0DAD106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92E3A605EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:13:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1uTYx3BRQJJO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 16:13:12 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 04 Sep 2025 16:13:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DCAB9605E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCAB9605E7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCAB9605E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:13:11 +0000 (UTC)
X-CSE-ConnectionGUID: Fz13hqJjROSZGyniutOvbQ==
X-CSE-MsgGUID: sFMSCh5FTdmYbJx8mFzcaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="76952658"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="76952658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:06:05 -0700
X-CSE-ConnectionGUID: /NLVYsaySmqeV0qaZQtrwQ==
X-CSE-MsgGUID: QUYbr+UCS4qj9jXC3mbzDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="172293827"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:06:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:06:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:06:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.83)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:06:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hVuacUT8oPL5e+MXi/V5ZkCu9i68r41THHr43k6gv2EM2BW30ol9IRH3dAwg5tIzWXU32+wvWKTrIARqlsc/EShj69hbWtH+97w4LaiuQKIZmPWgELoqifRDRZj3NO3nVS05VxSCJT7IxyghCqAWLMUNNxyW8LUt1geOMBXNRXmN0LIO+rfyxFWjrQmLtL24QEO8dA7OeLpeIJSsA78oHRYzaeKzcZBQOZSR/QhjSmryCsNLaS6fJmz4WxS1vPF5HUE86i502C0/g7yPleovk3L575fcSWUgbyhTdY014OhYpVLIZatRAhwVv0Jbco1jG/Ty6hTCHqmX4WAm9cHSaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XS335gG3SyQX+Lfo8Pan22mTBsYP/1r4suIyINWsdTQ=;
 b=l6Cec9q6j3OGwK1SKIUhyjrO9KjNO55zNJGfNmbDDu5mB39NMZwT7SXf5H5iJdff8xvhWqSrZAbMLov5PN0gqg93dskUhPQDiezNKatnHgs07URkyocBAHXmgxnuhCvUYuqXrd173C/vigMJJpGHGIV/hqC1WXOpljTzF8f0pXvxEJPamSnR72wWLgEYFi1DFbVUrCAKxmLoqAdYf6X9RlwGvbHkJLBNQ0WNezJu7jIi1LaY9QhTLUjwzs4mbwCIzLZ39tE8hAxnUJEH11MJTL5KUW2xxmlxcRIJgZSMlm0r3UIlgYOdQGabS1mlYLbw4mfdWlyj2Rz4wBs75dZu3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 DS0PR11MB7652.namprd11.prod.outlook.com (2603:10b6:8:14e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.27; Thu, 4 Sep 2025 16:05:55 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%6]) with mapi id 15.20.9009.013; Thu, 4 Sep 2025
 16:05:55 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "edumazet@google.com" <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Borkmann <daniel@iogearbox.net>, Simon Horman
 <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 13/13] idpf: add XDP RSS
 hash hint
Thread-Index: AQHcFqWLer33nfMaGESU1iRlwMwLIrSDM87QgAAIE4A=
Date: Thu, 4 Sep 2025 16:05:55 +0000
Message-ID: <DM4PR11MB6455F321BC2CCCE78B1B4E319800A@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
 <20250826155507.2138401-14-aleksander.lobakin@intel.com>
 <PH0PR11MB5013AA7138C81ABCB5F95F0C9600A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013AA7138C81ABCB5F95F0C9600A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|DS0PR11MB7652:EE_
x-ms-office365-filtering-correlation-id: ffef83fa-52a8-4c27-29ce-08ddebccee2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?x8LCJ1KKzf4Kv5rPpTdjEVI/e6zp1yIeLTmO+dQE5CRBYVwc8rCI+N02wtHW?=
 =?us-ascii?Q?OQvCA5fW0NYOHCR9oLAM6A39w3GgJbaL/StAX1TetODaBi//HeXmYQ8nEjLW?=
 =?us-ascii?Q?noN3/5II9EcC88InoAJLHBjtKXoFrLudxyZB12gWdHVc4/BeFJZ1kdcJBn+Y?=
 =?us-ascii?Q?J981RW2xrizcA92XYHN329Y1+pj6oKyfAjczBYXqBZmLnIhyVhJAnFaktzGA?=
 =?us-ascii?Q?O1kIFSRLbChccKEVwstG/gxX9gzXQTV1KEGSu2wFERTmUXVKwl6d9cxJcaNs?=
 =?us-ascii?Q?sA+9KBg5o1v5QzoaNXzk5HCs/alQ+AjrppBw1UqVsV11WSRcwUybjp5pnL8D?=
 =?us-ascii?Q?k54rFVUPB1YVjAgiXtA2YfqpgyZi3cIvOtOffJAsKXVHy7IS2bnsTfyUY7OF?=
 =?us-ascii?Q?c4Js5K84OV3C810Mr+qFBHmg+YUpJLNvZmAMC2PbG2lYN3JESlE2hLayRPec?=
 =?us-ascii?Q?UCKfqNZ7heguiaAjnmq5r/kiHD6IMHfe/EC10sPMstNAOTR1XaIJ16N1QzoP?=
 =?us-ascii?Q?DDRpBLU/zoneB8oFSFn9KNzM7IScG6CqucHKW6KNnES84QvYrbdH7kjzydvO?=
 =?us-ascii?Q?0pQrD9yu6yf3ampsOFKOi239c9DmBMJxrun/DKBL6S+AK2N4F4U94U3rNuhI?=
 =?us-ascii?Q?sRWjfpMrUa+h4Gt7eJDo3mIQhW/bmopRnkWnQWpIAQij7dhqYv1Qhwx2NXvl?=
 =?us-ascii?Q?55Q+k2+71HMGKtypKKR7QjJN0M0aK1b/FaQ9bkGOT/jgyjXqu44Kd15SRe0I?=
 =?us-ascii?Q?W3Zesm67FKldlMI9lXm8oxqcVDfgDsA1k+YwrBCrH4xevkJIxXHWqFLXm8uS?=
 =?us-ascii?Q?QrtgJs+TTRJenH276iPhH86NxADHKvYjqCld+pIyYbJnlw92kciZ+xWmPRWI?=
 =?us-ascii?Q?gMmDVZX1xBdhfk4nz8ycqmKlJ4LO1p/4vhMAxoU8jjVYFMSuCHZOFLXKL1dT?=
 =?us-ascii?Q?ghlyYhmk/Jf7gZqcDgT91nn2HBPHsQp2OsM3gserXYgGgQOlHM+rSN+l/VLV?=
 =?us-ascii?Q?GqFxzm8V1qZ7Ygxltue29t0ECN98HukpBnAb+pC6VCDX79RgUJJuuJbxEKJ/?=
 =?us-ascii?Q?M91hVpXHeO+9ZXc/ir7CUARDMugy7XjMi+dCpmLydoOLETmB9LkX/qzvra6F?=
 =?us-ascii?Q?HLaplT2kgBUs6bXYzRIl50Vv4RCdozUtveQlshHTbV/yZWc8trVfjl6KIQWw?=
 =?us-ascii?Q?uzxO1d2gF3KtQUBsi2qLrUr+kZAV7c2lLZ97Dz/Dr3eyxbmB295msPya9YUV?=
 =?us-ascii?Q?iRBqK2B2jmE34I8ETuPMF/Mqc3nq8EP/jxBiDUraEMHig94r84GBA88L8hYY?=
 =?us-ascii?Q?clzfuZINVUqMwvqb4B8t55QcTF9uLr+ah+LjgAzq7Y9ECeYMNKp68e2Dtj3m?=
 =?us-ascii?Q?5zr1E8+EggDDEpbk9czaLP/4BEk/LEBJTr75D5DrQl1TVvZOzNfHRniA32U9?=
 =?us-ascii?Q?AEWC/lWuIiJ4J6Yv1xpnwC39v7kvgKzO0ObH6pL2vB4czMYMU8L9Tg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/SV8Z1dtBw2zvatPTbJEBUslb/b88MdGEjMWPWKBjLSjshJ2WFIChWGB0zN4?=
 =?us-ascii?Q?g5IFcyUJQJdIaJ7yHEbc28QdYu9nU3SWZj9nw055FY/s0an8ct5gZtdtzBW/?=
 =?us-ascii?Q?8yeTNPpp1PM46YeAqwJDjqCsz1CFf0SonypK1TryVNBwvlHoG0a/1CrOlbvD?=
 =?us-ascii?Q?bcFKlc3w29O4yeT2aHvSmvhZRriox5Fs661+eQZtsoUXFFBF5EA2g3409xVC?=
 =?us-ascii?Q?N1aj5qyVzA7u0G9OYxpVBvRp0JzbxKaQfpLPsO9SJ429xTtTJxy0T0P37XYq?=
 =?us-ascii?Q?LzIb6OAodWkE4OafUBb4xQEYSfNQJ3yl6qPJOege0BTaIFupK3Z7ZT4i4fda?=
 =?us-ascii?Q?6R+0aDIhmCQSWJr2VkJv0+pvv9YoXzlJ1U60kk80ibNGZZB7TywToOeP9zzf?=
 =?us-ascii?Q?enaYuyUEdmzngqJvykzrlrVRJFL0+5L6dKmHhjEbuvzXR2JrEcUKkx3QDKsW?=
 =?us-ascii?Q?+wSC6uHPwELlwvJcn1WZe7WH5mDpOzxeYjUQE4Qt0IjVtW1LxhZfCVMduZSu?=
 =?us-ascii?Q?Y5yd413nhB/Z0Kd9mQhry4F75q8o0jLxYLZrU4Jn50/Ho7vMAqft4Tlmi2Nf?=
 =?us-ascii?Q?sEEfXkSrsGujEJmonHnhP3MlFgvTKbczy9dnd14uTBTgNgUUMHXXVQYF+i5A?=
 =?us-ascii?Q?+awhG7sCoe+ex9ulJ/HnywhBiyy0U8pwpJDa7bQ3kfI3+EAiG+EBm4Q25Do9?=
 =?us-ascii?Q?VJSx+/fybb19gdoopSSGIX5tE1c/q1HTI3Y7Mp5gqECz2PEFfTAFIOWNYX0g?=
 =?us-ascii?Q?fwTqrCspVltwV7lBEfJykZ3cT9KFYu2OAaemrISmImtw63vtsYXOUeSKBCIX?=
 =?us-ascii?Q?p6ol4e1Igz4aD7c5q1ucTLVbu7Q2PMdAwD8U3VVhO37+kEtmCUFl15Fgwuny?=
 =?us-ascii?Q?Z5CzRUErfNnql6MOZxek0oX6plTXoaAZtWy4KOFMLVlaDa1HfsZQ8V6xVg0g?=
 =?us-ascii?Q?3PIP1/Y7cNFD+uiANuAG2cRXG4CMq7HLQfgHNUUQsCNmgZ3ZeKWP/l2Ga/5i?=
 =?us-ascii?Q?OKc8zzlFKBQlBBYny4QJ6w7DHJIPklpcDI1bE2ZBvB7ixQnoPurqX1ESELHQ?=
 =?us-ascii?Q?O7xD5wsA2Ghv44kco5EiKZINiXGWMJABWvmKIeF+4P8/SzejU3BOT+sAN2kl?=
 =?us-ascii?Q?7n8NRlWmz0l17QQgmCGasUerxX0mmsxOxRJ0BLzEtOW2DZVVOKhURxXiVTC5?=
 =?us-ascii?Q?v/rHeeFXv04bdHaqDrTKePtmAN/42KEyJxBb+egE49B1h/VqzkJMqvLGPZOx?=
 =?us-ascii?Q?XE9xGiV1M6LVKN61jd8HAV3VCU5AXsyYCfD6B1xND35kff3yz8JGFEYIQfBo?=
 =?us-ascii?Q?0V8Em2oTQ2dXvnp310ZPcOgsXE01vxJKZEDjJHKDld2Y1/h/qMPSS+ACBDKy?=
 =?us-ascii?Q?JdgrhXP7BqwCkA+Ib64MjuvV/rwmhxaUZUvyOkflVjDyn6CWjbskf94JRep2?=
 =?us-ascii?Q?CooHdL2AllIyJoIGj2bebLxodaK/tn/bOnbMe2YlmC70P5hlaQKpb1WKTYk3?=
 =?us-ascii?Q?22kiHyQVGdjuVqj7iWCLZq9+fhn3k4epEBTLT9HdlS4F7a4CYOdlSzwvlYwt?=
 =?us-ascii?Q?jNxEkDLYGtWx+TQAmNg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffef83fa-52a8-4c27-29ce-08ddebccee2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 16:05:55.7762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uQUrPwAkp63CZXm1PLK8MWpfQbKCsa6LY0OGby08d+xkTHqZINRzQMX0N5z3J9nPOWfh4AXZST4ljYGVu5XHUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7652
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757002392; x=1788538392;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BcYlMgE8dHi+YeBTbukazpEUYLKksz/PQ5jDX0/a9IY=;
 b=UD2xw1N0c1cMsu1M9zLhY0lJWeAUzGyBAXhRXhPzxyMs8fkQ5oP8936Z
 ddkqGfrx/Ub6tvnmL0ErySDibOkC9RE3yvoHjiJWPRq5skXB/181YCxwI
 jQvEsmNbMbgYcHbWDGQuUbcLgMsxU68W8xXdhlka7sBrj68GlMz1E65um
 tt2wrhIX8o4j+sU2XXaMVwJQ9hQ5UPE+RmwhnqiA9x0jfO6nsL4hoYALB
 XGa9aoNT3FtUj2/KiyYWcqMXPLAudAUtaKgx8T1gwwUOvHLDlvQ20u7Th
 G67CG7mP6P0zaafQUQdN10uTVCNommT725S6TtAFEwqWsm2aUsdxMd0Sh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UD2xw1N0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 13/13] idpf: add XDP RSS
 hash hint
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: Tuesday, August 26, 2025 9:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/13] idpf: add XDP RSS ha=
sh
> hint
>=20
> Add &xdp_metadata_ops with a callback to get RSS hash hint from the
> descriptor. Declare the splitq 32-byte descriptor as 4 u64s to parse them=
 more
> efficiently when possible.
>=20
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/xdp.h | 64 +++++++++++++++++++++++++++
> drivers/net/ethernet/intel/idpf/xdp.c | 28 +++++++++++-
>  2 files changed, 91 insertions(+), 1 deletion(-)
>=20

Tested-by: R,Ramu <ramu.r@intel.com>

