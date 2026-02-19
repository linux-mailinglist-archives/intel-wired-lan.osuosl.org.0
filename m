Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOorLqv7lmkXtQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 13:01:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C3515E78D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 13:01:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1546160D67;
	Thu, 19 Feb 2026 12:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zNmCShZqAPQv; Thu, 19 Feb 2026 12:01:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 659B260D6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771502493;
	bh=wp7aHvjVulRpovi+Yq3HXeOcFOjSrE+xJk2DfXMwZ/E=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9FbUjWb9G2cEzCgb7whB4X2DQuCUDfN7mcawRVCjYwPKwwErlMT7KlfgHhRlu5lHB
	 3RBSaMZCAZU/opSbws3SFjmK2em6XxRSl1YxnkrBUB1al8spft7yA26mQDOywpnilF
	 Cih8wCqsH23dBB8SQAi6XFcrK+54aK7UPjTHO2kYSW6HkQnWG+yEk/B1MHBpbyZXw8
	 tmnAg+drIgiF+dw6OMjEaMgCTPQGZ0BNKTQ+LnDujbiS3prru0dCLmfa5GO7CW3S+m
	 /+byOdV0koDLE+311prlF1yAvVMlKLKDJqvfzx0at5Da8a70YbpGkvEpMXMB/O9miO
	 BtIQEze4pNAUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 659B260D6E;
	Thu, 19 Feb 2026 12:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5354183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 12:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A91D60C1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 12:01:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2QhodkfGD-J0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 12:01:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D49B60C01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D49B60C01
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D49B60C01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 12:01:30 +0000 (UTC)
X-CSE-ConnectionGUID: undAW47YS2GsoRds+3Zn8w==
X-CSE-MsgGUID: BwRZ29o5SviS0YjV+91DTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72682273"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72682273"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 04:01:29 -0800
X-CSE-ConnectionGUID: tJmlvT2HRJSJE+ti5jhGRw==
X-CSE-MsgGUID: A3zq4szqQEWwuWtgQ4yaqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219021707"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 04:01:28 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 04:00:59 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 04:00:59 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 04:00:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/9tzArZiPZV04CFuT90OQN54tzaUHz3iUp8Q1XBQ7XWTAZT8py4JFVQHcnRL4bj7CT1vly3VdMVqitJOeCMLkiB9o4GuaCwhHG39TBHlRAlvwNfCtb052LAk6eu8xNTXsEfpLSDTE5MWM4NMIyFh4acV9hhJb9Z5VA7YDKC8pI9ZnuuHHncKMtHmiAHmaS1mMf6EM57wjbcq9ikC3Wtp6rcqGZgljucxOKNbbEFLugA3FohPAQSxyLlYauv+nhkNTi07C7Q1b9CcepeIngAFn8v5f+i0rfyRiPtsR8uwj+//IBhyh+zUh2KOYU28MoFljoMhfxcoPy/aTx/RjZmTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wp7aHvjVulRpovi+Yq3HXeOcFOjSrE+xJk2DfXMwZ/E=;
 b=jCqz8Qh/Ftgo5EZSyM4YHTchMxgnsEWo+iMcpRnS9zl6ZOZoSLKpzWafEwkSX3IYGvsVqhcmEPSwbHDIOx+IDmy1pR6kZ58VpTa6ko4clsSIytVeVOr3CfPUNBbF0nmIg4slWmlhJJPiPaCq3KzCBETvcrOqhLhaHzVtLKnQDhWtNrFK1TMi4Dr+GU7QV6REgm+CEXxvyznz6zzu3D9Nkw1z8XPGXaLtEJNZHzepH1CL7QzIkTVa05132TEnGvcjP4MUD6F4oy5vmWCPKKWKZTBpdiiJAL9w5EyWhjk3DA+5oFdM8wPFh4gKDo1uCERaFzQsuSMK+ndyVSfEKXZOtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB7776.namprd11.prod.outlook.com (2603:10b6:208:3f9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 12:00:28 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 12:00:26 +0000
Date: Thu, 19 Feb 2026 13:00:05 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <aZb7RZMA+7bxcmrL@boxer>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-6-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260217132450.1936200-6-larysa.zaremba@intel.com>
X-ClientProxiedBy: TL2P290CA0029.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB7776:EE_
X-MS-Office365-Filtering-Correlation-Id: 6204e43a-e1af-469c-1172-08de6fae77d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?a0Ktb0+1qNZLaRQDM9D5j6TrfUdoBKv2TEh4sAKxij/8Qh0MAIF634qw1Rlu?=
 =?us-ascii?Q?6yldDEhH5cpl1fKi9TQWc2MA8FhEFmocnMx4ZeVFUTqC/bYOMhrYuHSHAokG?=
 =?us-ascii?Q?SADwb+Jc5cRVMXvzEUNTzNFJsrIyBEj0TEMZJtwMwYeY36bIisE018dn0vdi?=
 =?us-ascii?Q?+F5gmAYTAKIaOY2CKBGPftJCoBQ8b81uMTGS38KIh/iX0CZ0fRRkRy73nOVG?=
 =?us-ascii?Q?947kgohcAHR1MfaoJtLSKwszsUyp494LvvKGE/B8xrDN18jkKCl0n6B+u558?=
 =?us-ascii?Q?952cH3lhvuLiYCUuG14R1mhJgEXJrVgWtIe3qRa9ZgpxcnVIUeNwBBeLF2+C?=
 =?us-ascii?Q?R/GVctaqsbQpwIveBwS4AorxDd3l5KTYUC3ouLBgZiRqcahadZuaDXqjsmXp?=
 =?us-ascii?Q?VvGhv/Xg4a51yD1MQEHeQs/bYViBEnWKhuF77KshV9ho1pbblAObfBgh4orQ?=
 =?us-ascii?Q?fnOwUJWVQVjs+LZAphfSlXsCRl3EawZoq2omyQFtvbzhmgO15LoAlpsRFZ5v?=
 =?us-ascii?Q?jHOqXdnb9wyVU6YDLX6Mq2GTjUvDDY10NjxLT6siHu4HQdQ8X8BeiRKnhgMe?=
 =?us-ascii?Q?MNQOuDgsNJobKUkopa1USyCVH9V2Ymk1HBYsgh24/+HnYAawSxfL8+mclurr?=
 =?us-ascii?Q?Wgpu3huudMNeSKnnE94iUz1NvP1MPJTdAWo4TwhL6uXxhvHx0lyekz+t5FfA?=
 =?us-ascii?Q?bWDWsv8hCqFj90bHbQ4GZ0ClXBQPqhqRAKyB56n0X57TW9UIrD2OLq52D/9X?=
 =?us-ascii?Q?3+++/0NFTlIvGipJAsFGBwe4gQXoTO3MFQvOGa5O8q87pVTNce3OHxlGMnc8?=
 =?us-ascii?Q?lhR0ypn50cmiwiuFXjuqqDbwWga8TvEn4jJEZE4KrXUegeeC3Y0N+ARqGGep?=
 =?us-ascii?Q?YLup7mJaRJPFBSPXWZA5yrqYOxHX2j8Urpj0d8gC4OZMgU0l/dJIVUPq+Nzc?=
 =?us-ascii?Q?7Ic/gzQ18D8RWHaLEGr6eFgy2Dt+BUjahXTq9745isb86TCBnWAQFXpeaOiN?=
 =?us-ascii?Q?ELmjgmkFA26ZLwzDXMXyFiTKHLEbcxvN+DAZVF808inEjfkeG4DYtO1MyFlq?=
 =?us-ascii?Q?StlJhfrXOgg6P0SSBJe1QqGlVZVvIYAIklKNfxeMDWTfra4hWY2Mtb3rkhr2?=
 =?us-ascii?Q?YnzBYEeH/1sexC0xidMXZCxKk/2wJwYnqvgHr8YWyK208MrQVpguDxk0NEr9?=
 =?us-ascii?Q?zlMDwWKRe28LaDpzoUs8CoM2u0n+5OUzrCxSrHwVid6FVkrh4Of3J73twwMY?=
 =?us-ascii?Q?QI1OCkZ00Pi1mEgYxUF8t020GmzvA5wazrVJHBG97q8letbeMeudC3vAB2mo?=
 =?us-ascii?Q?8203eQanZzn8g1bSsxrVcxdEUQQ6cjbC35Z3GiZ0OtDE75MFRRnDB8AcAqzj?=
 =?us-ascii?Q?QLuY4qIvcs3RypZcm2n4soTfVeRP9/4oMlwO4Lshka7Z7/giB4tnSy3Vj0vu?=
 =?us-ascii?Q?TI3MwLy4UkFuYXZWI7vaXRmV+7yayj6+efuX8y4y8SSqLqOJG6rwcNT+8pBJ?=
 =?us-ascii?Q?3e9SESE2AFgkS2+qzntiWHEg7T5LYBGOLb9IyblDP7RyNR4BoKTX64DY+fQC?=
 =?us-ascii?Q?ZSuyc2RyFVvA4f6sHi4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IU+LgFBRqM1kMC9EETvGTLzsBJZP+kJur78LaPJyRvOEd/q7Ftd3+/lRZJtb?=
 =?us-ascii?Q?Kz1Y7OgoJtKc/qpP2/7wmKoxBcT9Nb1unEbyjsciknQzAw7TRejhzbWSo8v/?=
 =?us-ascii?Q?55GYum+O8DR19gWb3k5C3UEM+YyEEzOJN2QnxscN/q6Yq1IofGH+2pMUHXen?=
 =?us-ascii?Q?Vmaub/8RrBU/sz6tVdRGQRiaRyydSIvwWldhQG6PZgeaIBRQYE8o9jGLYyJE?=
 =?us-ascii?Q?NAFLBwAz4hRf3zXjaDz/KLXGInZv1hxubEvdZQPMglPWzizeQWkQ7utvhB/j?=
 =?us-ascii?Q?MOsDRzeLlk6HQg9voRG3UOOo98eeMbFWd9koqpQgkOpjuYMOVZtaKhTCQ+Dn?=
 =?us-ascii?Q?3MWrg5P78sACiOQFm1V7TvR9/5QmKDI2Dy3pggE86GX5SM00wpocZ5qCM57y?=
 =?us-ascii?Q?oBXh3EqEXmWMt5imA1NuTNdOUDa2N7Z+gZZNArbi8yJ4epWTZI8QCA/vs8xz?=
 =?us-ascii?Q?GWRnCICMD6MyF/ggXVfKdmKIff4vvHpI1xzUmr8pdWYecZiOTYRTuEuQ2khQ?=
 =?us-ascii?Q?zL2JP2jSKSlgnc3ATG9mwU6R94qR4JmPV2Cx9etxQf6JVyRymjbdFb/76AZa?=
 =?us-ascii?Q?RtH+I14v5eWcImQVJXEOJbCkq1AT3NUMpFH/gljt0KRWzh7MNUKk7zvn7V9n?=
 =?us-ascii?Q?788/EhGPT1Ic7gHxuB/IwTsWE0ZnmvXXQdY22yUCD8h/8EncW3W61c/3XJo3?=
 =?us-ascii?Q?L1kqulDnA3vhq3bVwQbLWWPcBfnh4mbaoJszxC6T7KBWCOAs9nTWIfKa5TgU?=
 =?us-ascii?Q?Pry3ygvRsvjhxJfyqQFWUDHuuMqc2ojYWaurnvy4autW3h0VyizNYV1GiI1w?=
 =?us-ascii?Q?LKFpm5S0ckRpCbDZ79YnlYOvVkAJJHW+o0grv6Uy1ficgaTnFY0rrbCzE/YI?=
 =?us-ascii?Q?qehdAut4sl36Ael0forCVRxuHX63/lyqEIK3SmVr/HkRASQCpPdO7HwYT0Fg?=
 =?us-ascii?Q?gxB8Ahmtbyrwi2CnG2xVkFBU0APd4pZHbE54OaoT+EwlHMUsl2Y67MzsaLf4?=
 =?us-ascii?Q?lw3GaUNwruIGDf+UgmbKG9KcP1uaSq2KTF2hCFRSb7olboWiQ9DbohKbNIQr?=
 =?us-ascii?Q?f6KL17o7dpEiVjlwCUth31ncgWYS9HQtMhWKLnm1WoAIvAqFWX9n6jg7vkTH?=
 =?us-ascii?Q?J9jhvkUHP4MiBO5oDlN8A7X8myATe6hqAgtgfWwTmYIiMyTziLabM83xaQ1M?=
 =?us-ascii?Q?LEecGe1ktzniTAySQgXNn0e1Qp+B6D+1tYML1lPfZ33tsT67L249BvcTh8WS?=
 =?us-ascii?Q?zpk8WCjCtR5GyOyupessiw5nJgckPa99cNNuXXVyH1FHT2miL5BqiEkE/9tV?=
 =?us-ascii?Q?F4K408+jpooFGukdrE93Zu5oE3/Odas1G/Oaid4c8Uj8KxgFw4ujVlGQ7JV7?=
 =?us-ascii?Q?eyNLEx5ib5V8Pvbv75inXjtKV5YYQJzYbjiJMesJsY6LzBJQPQGzORODFk05?=
 =?us-ascii?Q?6bXScpK3FnaIhgV0BTKu/7s2LqIIhNnWFZUJJoGq7ZayqwdVfOjBC8Vu65em?=
 =?us-ascii?Q?yFZGL2Tv/FZ0o9gIsp8uxXSkNNsGcoZMft0dWQ7MjHjl60DlZmUD3N5etgg9?=
 =?us-ascii?Q?csx+PQRe3BCYT+H1JC75blTjhvv4KydzDy3khSLWXCPY1Px0ZFDKiaYPvSl+?=
 =?us-ascii?Q?tc/VgfSWMzh4pf+0N0pyEPeShxI2DAjgne8Mucvfu8ELswuUClc2GsAvJX77?=
 =?us-ascii?Q?jcK6/9bnGJ+5uKd4eMvFEtf2eWgM7fu6yHk2Ga0y3o29JUsB1GJNdWvRRMah?=
 =?us-ascii?Q?xjOLyjORZJSGADwglqlcbKvw+KHISro=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6204e43a-e1af-469c-1172-08de6fae77d9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 12:00:26.1636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: us3ojojYXaPVbYOw6ZqfKzOmGAavwu0YD88nsq5HC30v389sCvUhiM2lVGSTSwgf9HyBpzOj8n7+Fni5zMZX00L1jWy0JZCm7bpqle5wQ8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771502490; x=1803038490;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Dkg+jBgGdC84eGuSl15d7awjOHER9bWIrquzPKc/UIE=;
 b=W+avh9iM3zhVbMjFFWqCyBqqhJR1lQU7hpAC0xW8jBnS3CaEKu2BWVnu
 CXTxiilGRt2CO/3/p9BT+ITJywc52wyLbgRiZ1XR3wYh82Ta4qzREwEj/
 kq+LcuqOtd6NhdfC9Xpov9XmVfzjNnJxEJlh7cJP6eBlgF49wr5/AXSuW
 oDUnj/DjrLMZW9afAyVuUHht5AD0b0VgMbKMSio6cD2nmIUUxHGPQdpgj
 MPXysq0LYILLG02URqFraFhptUP7WBFzI+Vhw3S0lx329H6jLI8wXnsTR
 HKTfn38qQ/d29l4psrES3ES4VGd05+RZJwAQ62TExZNptruwCnhps01q+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W+avh9iM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 5/9] i40e: fix registering XDP
 RxQ info
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvidia.c
 om,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[osuosl.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RSPAMD_EMAILBL_FAIL(0.00)[larysa.zaremba.intel.com:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: A9C3515E78D
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 02:24:43PM +0100, Larysa Zaremba wrote:
> Current way of handling XDP RxQ info in i40e has following problems:
> * when xsk_buff_pool is detached, memory model is not unregistered before
>   registering a new one, this leads to a dangling xsk_buff_pool in the
>   memory model table

What is 'memory model table' in this context?

I believe you are referring to a case where XDP prog is kept alive on
interface put you close one socket and then bind the other one?

> * frag_size is not updated when xsk_buff_pool is detached or when MTU is
>   changed, this leads to growing tail always failing for multi-buffer
>   packets.

Good catch, i now see that i40e_change_mtu() only does the link flap and
i40e_free_rx_resources() is not called in this path.

> 
> Couple XDP RxQ info registering with buffer allocations and unregistering
> with cleaning the ring.
> 
> Fixes: a045d2f2d03d ("i40e: set xdp_rxq_info::frag_size")
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 34 ++++++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 +--
>  2 files changed, 22 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index d3bc3207054f..eaa5b65e6daf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3577,18 +3577,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>  	if (ring->vsi->type != I40E_VSI_MAIN)
>  		goto skip;
>  
> -	if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
> -		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> -					 ring->queue_index,
> -					 ring->q_vector->napi.napi_id,
> -					 ring->rx_buf_len);
> -		if (err)
> -			return err;
> -	}
> -
>  	ring->xsk_pool = i40e_xsk_pool(ring);
>  	if (ring->xsk_pool) {
> -		xdp_rxq_info_unreg(&ring->xdp_rxq);
>  		ring->rx_buf_len = xsk_pool_get_rx_frame_size(ring->xsk_pool);
>  		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
>  					 ring->queue_index,
> @@ -3600,17 +3590,23 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>  						 MEM_TYPE_XSK_BUFF_POOL,
>  						 NULL);
>  		if (err)
> -			return err;
> +			goto unreg_xdp;
>  		dev_info(&vsi->back->pdev->dev,
>  			 "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
>  			 ring->queue_index);
>  
>  	} else {
> +		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> +					 ring->queue_index,
> +					 ring->q_vector->napi.napi_id,
> +					 ring->rx_buf_len);
> +		if (err)
> +			return err;
>  		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
>  						 MEM_TYPE_PAGE_SHARED,
>  						 NULL);
>  		if (err)
> -			return err;
> +			goto unreg_xdp;
>  	}
>  
>  skip:
> @@ -3648,7 +3644,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>  		dev_info(&vsi->back->pdev->dev,
>  			 "Failed to clear LAN Rx queue context on Rx ring %d (pf_q %d), error: %d\n",
>  			 ring->queue_index, pf_q, err);
> -		return -ENOMEM;
> +		err = -ENOMEM;
> +		goto unreg_xdp;
>  	}
>  
>  	/* set the context in the HMC */
> @@ -3657,7 +3654,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>  		dev_info(&vsi->back->pdev->dev,
>  			 "Failed to set LAN Rx queue context on Rx ring %d (pf_q %d), error: %d\n",
>  			 ring->queue_index, pf_q, err);
> -		return -ENOMEM;
> +		err = -ENOMEM;
> +		goto unreg_xdp;
>  	}
>  
>  	/* configure Rx buffer alignment */
> @@ -3665,7 +3663,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>  		if (I40E_2K_TOO_SMALL_WITH_PADDING) {
>  			dev_info(&vsi->back->pdev->dev,
>  				 "2k Rx buffer is too small to fit standard MTU and skb_shared_info\n");
> -			return -EOPNOTSUPP;
> +			err = -EOPNOTSUPP;
> +			goto unreg_xdp;
>  		}
>  		clear_ring_build_skb_enabled(ring);
>  	} else {
> @@ -3695,6 +3694,11 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>  	}
>  
>  	return 0;
> +unreg_xdp:
> +	if (ring->vsi->type == I40E_VSI_MAIN)
> +		xdp_rxq_info_unreg(&ring->xdp_rxq);
> +
> +	return err;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index cc0b9efc2637..816179c7e271 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1470,6 +1470,9 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
>  	if (!rx_ring->rx_bi)
>  		return;
>  
> +	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> +		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> +
>  	if (rx_ring->xsk_pool) {
>  		i40e_xsk_clean_rx_ring(rx_ring);
>  		goto skip_free;
> @@ -1527,8 +1530,6 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
>  void i40e_free_rx_resources(struct i40e_ring *rx_ring)
>  {
>  	i40e_clean_rx_ring(rx_ring);
> -	if (rx_ring->vsi->type == I40E_VSI_MAIN)
> -		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>  	rx_ring->xdp_prog = NULL;
>  	kfree(rx_ring->rx_bi);
>  	rx_ring->rx_bi = NULL;
> -- 
> 2.52.0
> 
