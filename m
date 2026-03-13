Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH7PGocVtGlkgwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 14:47:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1730A284300
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 14:47:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8EDD81306;
	Fri, 13 Mar 2026 13:47:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQDg7XynFIuP; Fri, 13 Mar 2026 13:47:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB3EB81307
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773409667;
	bh=jsw9eW0Cui14qsuCUKFdvaMkYdANPRlyVtEWO/uSSl8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bt87JvpowW7jP3hiFLAzF93K7IGjv3I8M32GnHlMwmuDgmGgU93790N90Otc7jdmL
	 uIGw4VpQbEwWm4gasXYuUtSTcZFat+BgoA+5/bgoc9Z3fpCnDHf22A2p89/PbbZbv3
	 6E18KAGKKbi12iB+d1d60EUcng3BUx0C4JqPhKt54d8raRL2GlYyddIho25idBxrW5
	 dx7wIT/PbvNzv0yj9XoGDm397KCiMcIE5WV6yUOHSfss5dty6iyPAfr9FhCojHsvCU
	 HYDwY2/lXCHAJCVYHi5rLRGbFmQYVOCc5Wbk5EHN4qU+yn3EndXryp+xOpvawrG5xS
	 kWcDyDNVINZcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB3EB81307;
	Fri, 13 Mar 2026 13:47:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 09F7F1AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFC2781305
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:47:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DXM6X67t9i9D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 13:47:45 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7FD3481304
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FD3481304
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FD3481304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:47:22 +0000 (UTC)
X-CSE-ConnectionGUID: GRRFu52RTUeWVGvxzOoK8g==
X-CSE-MsgGUID: Tng8VTUOSPSOqiSVQpG06w==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74629676"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74629676"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 06:47:22 -0700
X-CSE-ConnectionGUID: ZPIpdo94RJOEJO3xY6RiZg==
X-CSE-MsgGUID: nLugAu/kQoWS+9OC1BPCvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225621322"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 06:47:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 06:47:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 06:47:20 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 06:47:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+uaMBIco7XsTGOdc9J2rJE7PJRtRBps+0uneBFaRulaX0Zd3cTTVxrQ0IAFlRwqzJl6qnhal+s1PXvUoy/NxAdzTHNaXGisFHtv5y4EbIOvWLRLKeLGVjeccMUJw+qxeLwUL8XdqN+2oX+hnIj9WY56wtZjBjfUS/eJUdMTdgSAyFZ2FNwvPc/Br7NFa2+pB0S8eUeerRnUX7ouo9mH+toH7ekFhx/g8EQeH9u7A+ZQCkCP5ttjmY/5kUvjTLPqzp7c41PEiM9rKVrMp7id86ThxpJf2FJteUN99bNpGLk3hKHLrZHzpp6R7AbZ0aNkqSI4UUom2GNxNBv/AqqOLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jsw9eW0Cui14qsuCUKFdvaMkYdANPRlyVtEWO/uSSl8=;
 b=dH75S1pRX5uTthuwyNHvnS0j4Et4EOu/lvVKATqnFUv/iXnmm9uydDs3sPliewr5rpcjw6SmLfFhV3py8ahOr+XkzNqzZgSa6hXI+3EkpJEMJIncK4IhMFslNhqCpVJszJ+v6EqZn/jOAOPbEMRyQh7Jf94+ORhBuhHjyN9bfutudsf9EpeR7HgrrVOwf/mBSU+1NHg5zqvWZzbdEXZ9veO1Y724uBK5MqmqCD+lV1fJVjcv+TbsWftzdlmYWX4RGeWYkOdSTr2ijMhedcL+hXodqACJ16WBCya0bz+F6Qb4B4hfouxN7fVPdgPuI6nXco6t2igcR8iPaLKzLA8u7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by SA1PR11MB7132.namprd11.prod.outlook.com (2603:10b6:806:29e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Fri, 13 Mar
 2026 13:47:17 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9723.004; Fri, 13 Mar 2026
 13:47:17 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_clock_info
Thread-Index: AQHcr86Xy2U0MgoCgUGFZQFkE41emrWoFskAgAExmsCAAzRWgIAAAwjA
Date: Fri, 13 Mar 2026 13:47:17 +0000
Message-ID: <PH0PR11MB490443FB49C3F762297A992E9445A@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260309141220.343224-1-przemyslaw.korba@intel.com>
 <20260310182458.GQ461701@kernel.org>
 <PH0PR11MB49044CA89B5D8780D477561D9447A@PH0PR11MB4904.namprd11.prod.outlook.com>
 <20260313133451.GZ461701@kernel.org>
In-Reply-To: <20260313133451.GZ461701@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|SA1PR11MB7132:EE_
x-ms-office365-filtering-correlation-id: b1318115-4b59-44b9-1269-08de81070a69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 78198fDxYJ8n9QHUMWeWPAgYtDiX3lwXZ1zd+uQ4NOnRiZJAVa6kRS6D82rzIV5TcdJEgJmh3z8n88UFt91h+KTWmDZshoKOBlTAHFfdjTQ2crrwj3bK9QZlD6eOkap4xDtQIAsnsQeQaRkGmWe3sXnO6viRD/P3QAODsU1aDRiHcX47syjxJzruWEXnaARh8NJIFhBcV7QwgtWY+Ap+MLdv78UC8YJPJLp4JNLTXasD+7GUCtc2qY9krAvoj9Hc3Aowbz8hvBMTfSqN5xlwqKUyTrGEmfAnyUMLgubbQeoW2zBRG8Cm/JuiQ+kyF0dVVxnb6Url5cnBMi9ZJAUfBt7UyeTEXw9WQJOpdpMwPgNZEZAH7l+HGT/4MkZZePd0jMfeDnyXf7uSGHdGFzRme7f2oNgjNtYXRgDLRXoQ2zIqstX3nhfStJKLwYXmaM8RXHd/LVRUa/nARkD9n8uEU6XzuQ34sKD5Y8raEAgh1qnPFto4MeSiWtZXkxIPMPexBY4iLZ0VJsMxUTV7xx4puP78zZmjRO3eLt2VQf/BgIQq4LBn1pABLshi14FP+FLMrXYS4wqWhGvdH+uJ3PDXnRqxDe06t4TvvlcUgjZtLLJlKhuchmrZaprm3fujDIzDuzrdKRhldE3Vu7XGmPEQ4AYjQKk2wwY+QiE4KfQrmZysjBkZMjXcEEIr9/PLia1J+6Ru/d71wZTyEQuox/Sn+S7aoeg+djREVnGubvZXBRqYbMPvSeKB16D7CCb0bLaM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yCjzMgGVe8p2EIv0hANlt6UPCGf3o9wlLaZwBJaTi3DSix0zLL+zNWdeeh6K?=
 =?us-ascii?Q?LkNwHqUg7ffkvsNdeWYJNcU7wI/85t4q8+K70gnnLD2AwweQblw3ve4mmhlf?=
 =?us-ascii?Q?jjGXk3KSUCn3p2ILlkk7X41BwaPM0kYGRGdvnngffEg4s6ZR+OXB2HQdue4K?=
 =?us-ascii?Q?vCDpl0f4guAibAlp6P7CUZOat04yXMZ+llEaOGvkDOK4BfaiuFqKIUwyaU2Y?=
 =?us-ascii?Q?ijxAi7YKVBu/bVMt0JMjKvcSINFrv8SrD6RqHYrPdqDJ60gAReL0ejvE+WcD?=
 =?us-ascii?Q?YwMd7R02RnXlO7YsKz8q9AcKZnsjIXrF5vk5jiHNUlG49MA3PQ6HLUPBx3rf?=
 =?us-ascii?Q?8OnOeiVouxhScAeOayL6osVnLtcjaSG1s88sBEse6kMxS9PRxvD6tY0tWVaY?=
 =?us-ascii?Q?Acs11SY1+s90uWx0dgTQG54ne6zqARYDV9IA9wQhT1is/ZsGz0xJW1BoMq03?=
 =?us-ascii?Q?77kUw5f4UIBnkF1psEfzcOI+7satU3XCMtKhB0XIVAdpxzDUJps2/sBVHjm5?=
 =?us-ascii?Q?r1NZQ7LZNjSZZmc3XEHAtqXWrH5yYD5EZkirPlY5CqaZAmE1FcVZMojaPLkI?=
 =?us-ascii?Q?4aVicVKXt4Ik3JfNhncFvdAsW6WJWFPCBPd5aJ3yxyLaoIPHBdunAUh86ZA1?=
 =?us-ascii?Q?cbOPY6UIRGkjPHV+CFAz0nmEKzQJ9zKx46OGiKAiBppX5wL/kacsn8cW9iTE?=
 =?us-ascii?Q?cgZdmxd2gp5jbbg95G7qaqqFeJheSQfmJZjBC/20ilMF9bETiS6KkVOpfmkp?=
 =?us-ascii?Q?IdY2qeTnkLBrxoCrSRnp1ooz8ZFTaHpqG4XVSNyNz+sC30lA8tOFb7PdPK+D?=
 =?us-ascii?Q?r9GMQ76RcAbTTKlGBwjT9eke5NyNrFsmV/IfZulZvWPWYj+BR4VOBcNzsFB0?=
 =?us-ascii?Q?su7XTf9scD2hndq8l7PFQ0g+iRdpmXU4w42wIgeDKtOqXaPSZ681ubpLRSkW?=
 =?us-ascii?Q?dsmzGHOLn/sH6NGSjPxMdEioviWhHgx64EeKdE3ziv5B4J3Q9M/PpRc/Wsem?=
 =?us-ascii?Q?GizLW5316Kp9SEIZ8y8GKi6VKIbrl4o8n4NUwMZEeE/geh2V4t9c2UK8I5Ah?=
 =?us-ascii?Q?nYzPURd2crqY+Rhu9zSOEYfXa6oPJgl55iQKtNORZGmnf6ZGH51pN8E3V4hh?=
 =?us-ascii?Q?8ghPIU6+g7SlFkRpBYidW3tFUfbeCy34t+XjVuGdzP6HdL1MPPe4VRC5v9xc?=
 =?us-ascii?Q?TGQ/HxNU8qTVuIB0xj32utNZc+O7G8FBFLd6Z9mCl2ATQqRXBLMOJBmoi4cg?=
 =?us-ascii?Q?mcIDKfPcxQnCAAAM6yc6PUqsERRGoSG5O+4MHwk59jitCyXbk/JIu2URvIM5?=
 =?us-ascii?Q?a+WsRuJTfbhjfBtJOnNp/u1PcywhkeSQFWrTqTxoF5ID2vciQRcixbEjkFH9?=
 =?us-ascii?Q?9DUL+I8udUXZQk2npW8p/4ne7qibeSjzNl4C/wod/jN3GVWBUaAigLJB3JmN?=
 =?us-ascii?Q?MqN6Pe0XQs6UzF8qlpJAepP2R18iSqySiZ+9wCDnkSvsTxLYQjjKpHiJk4pR?=
 =?us-ascii?Q?XEVwXQ4q/GUVFQdnFfjGuWYysFIEn3NpO8SzHCGerxG+yH/KpWUCakspfamx?=
 =?us-ascii?Q?JAJ4RDiKeIf7TCiXZ9CPVRvDwGLHO5eCMvRi+KngVH5ujC7U661m0ch9kTwq?=
 =?us-ascii?Q?ZgRusOSyhVJA64BgFZiqbCvPhfJD2Mwwcz3WOovxmbgZBqn3mh+b9FiL8m9N?=
 =?us-ascii?Q?HyqRmuMoFtg1GvwzCh97MdFHQqDlG4Gxsh307nx00RFVZQCVEcwTFRevGFIi?=
 =?us-ascii?Q?wkmvTwNwzQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Y4yPzuRSKaoBAu6egVafunK1ftC3R5AHoMQ3qdQ/Ix4cpIZdVsf88wIN2Ouwdoupp7hdyuFGGhrRmAsqSh70gNWwTSDz1RVudUH4eT+yNHat9K5rupc/ERdFFexa8dzQvfP48QSYCzl8UixxA9hfHLa797YImx/KU9ymNpkNwTtNW5JT34OIRldutQQx/oHQ5WDbawxVliSDmR48rMmvt1qrinePt9s/+CgClVybSdTcFVHHfhJPfIz64EiisP02EvtT3ml+v7OmiQgxg6sjLZ4E04DNhhTPDOXdGwdCt0CC/PJvSFPUr+AFoSF0ch7oP6WJ2Itqxx3UMwcunMXbiQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1318115-4b59-44b9-1269-08de81070a69
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 13:47:17.2126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HgmBwb6aQFWiMOH14TUK2CpcyqsS00lciPTKLWmgJ/pyWSGjmXdzp7Qe7KbX16an8ceKrHmEvXkIONQuJlY8RXDdObmBYmNjwMe41ctXOrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7132
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773409665; x=1804945665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RI8vEJdX/646F0aBTTWmopCm/5Ktdvvevj+l4JOKLxk=;
 b=T5z/tI8JZe/N07k2p73yzL4lv0wvkVx40yZ3WbyWcyVIzn+s72eDIqJK
 qP0tRfB95mW791ZZl9xpJDrOjD6nSkUIFoENMX0qPKcRhX1FhYUjgyaxG
 WDn3KzF8jFUaEGVkMdrQPO/hYllQU80SEkUfBGkAIhRoUAX0/oWA03ruT
 kL6j/39oLDuLsND5v3axR7fvoU5e9um8IOoPJ6blqKuEOrvFhOCyP751k
 tH2YzwI8V7mT6JFH4OQD3gyyHmTlzRYtl6nebCzgIUdlahCImildpNRYI
 mj77rtyYe0l0FrvI6uFc0FuucYxUQ98m1ZJ5Ck2SeaEdxCizxVAusUoZR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T5z/tI8J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: PTP: set supported
 flags in ptp_clock_info
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,PH0PR11MB4904.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 1730A284300
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, March 13, 2026 2:35 PM
> To: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Ant=
hony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>
> Subject: Re: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_clock=
_info
>=20
> On Wed, Mar 11, 2026 at 12:42:10PM +0000, Korba, Przemyslaw wrote:
> > > -----Original Message-----
> > > From: Simon Horman <horms@kernel.org>
> > > Sent: Tuesday, March 10, 2026 7:25 PM
> > > To: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,=
 Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel=
.com>
> > > Subject: Re: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_c=
lock_info
> > >
> > > + Jacob
> > >
> > > On Mon, Mar 09, 2026 at 03:11:51PM +0100, Przemyslaw Korba wrote:
> > > > Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
> > > > .supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d=
 ("net:
> > > > ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel c=
ore
> > > > now requires that the driver set the .supported_perout_flags and
> > > > .supported_extts_flags fields in PTP clock info. Otherwise, the
> > > > additional flags will be rejected by the kernel automatically.
> > > >
> > > > i40e does not support perout flags, so reject any request with pero=
ut
> > > > flags.
> > > >
> > > > Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 12 +++++++++++-
> > > >  1 file changed, 11 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > > b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > > index 7bcea7d9720f..8d7958692235 100644
> > > > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > > @@ -601,10 +601,18 @@ static int i40e_ptp_feature_enable(struct ptp=
_clock_info *ptp,
> > > >  	/* TODO: Implement flags handling for EXTTS and PEROUT */
> > > >  	switch (rq->type) {
> > > >  	case PTP_CLK_REQ_EXTTS:
> > > > +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> > > > +					PTP_RISING_EDGE |
> > > > +					PTP_FALLING_EDGE |
> > > > +					PTP_STRICT_FLAGS))
> > > > +			return -EOPNOTSUPP;
> > > > +
> > > >  		func =3D PTP_PF_EXTTS;
> > > >  		chan =3D rq->extts.index;
> > > >  		break;
> > > >  	case PTP_CLK_REQ_PEROUT:
> > > > +		if (rq->perout.flags)
> > > > +			return -EOPNOTSUPP;
> > > >  		func =3D PTP_PF_PEROUT;
> > > >  		chan =3D rq->perout.index;
> > > >  		break;
> > >
> > > I am a little confused.
> > >
> > > My understanding of the cited patches is that they add checking of fl=
ags to the code. So code like the above isn't needed in drivers.
> >
> > Hi Simon, thank you very much for the review. My understanding is that =
the driver needs to set the supported flags field, otherwise requests
> won't go through kernel. The test I've been doing confirm my theory. Here=
's also example patch, that adds supported flags to drivers:
> https://lore.kernel.org/intel-wired-lan/20250414-jk-supported-perout-flag=
s-v2-1-f6b17d15475c@intel.com/
>=20
> Sorry for the slow response.
>=20
> My understanding is that the hunk above is not required.
> But the hunk below is.
>=20

Well, you are very correct. Thank you so much for thorough review and let m=
e send a new version!

> >
> > > > @@ -1340,7 +1348,9 @@ static int i40e_init_pin_config(struct i40e_p=
f *pf)
> > > >  	pf->ptp_caps.n_ext_ts =3D 2;
> > > >  	pf->ptp_caps.pps =3D 1;
> > > >  	pf->ptp_caps.n_per_out =3D 2;
> > > > -
> > > > +	pf->ptp_caps.supported_extts_flags =3D PTP_RISING_EDGE |
> > > > +					     PTP_FALLING_EDGE |
> > > > +					     PTP_STRICT_FLAGS;
> > > >  	pf->ptp_caps.pin_config =3D kzalloc_objs(*pf->ptp_caps.pin_config=
,
> > > >  					       pf->ptp_caps.n_pins);
> > > >  	if (!pf->ptp_caps.pin_config)
> > > >
> > > > base-commit: d5fbc991435eac7a1ead7cd2ddb5a743528718bb
> > > > --
> > > > 2.43.0
> > > >
