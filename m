Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E54F6C2DC24
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 19:55:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 698A16080E;
	Mon,  3 Nov 2025 18:55:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZIA7snVItaF; Mon,  3 Nov 2025 18:55:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2CA560806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762196112;
	bh=0L1ilQRmrAtmiCNxOgCpjJxmZwi8Hu2+nHYxfv2L1dI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vy3cBtaynFZOUotmnSIumwyTrJ5JTtG6hD5t28Qs9KJzNTZPM6L1O4CxpzvvDHC6M
	 6lc3BhXHk6eimkxTH8w8N6qywZFxOeXr3odt/JjFOY0Bngk8yB+YxtUsAhsGIgax1N
	 GuhhH9tZnoM1gPMyHUSzr/iMoV/G8l+5/ctx1d31m18DAJb/a7qRrexq/J2zH7Gavd
	 R5ubJydIAayn50EOoba20+VYu+h69dz18tDEKNEaTrawcR3mZeQQAM4Bb6RNAwdkmv
	 9DhDOkmWRtSav/19mZlBD+NIyfE51YpJ8WALJPw7q8QTneG64w9Gj0eyugW9qLhmq6
	 qEjvTSINg+Hew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2CA560806;
	Mon,  3 Nov 2025 18:55:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E69051A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 18:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD41D40277
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 18:55:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g_A7mDbv-0TT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 18:55:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F7924012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F7924012B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F7924012B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 18:55:09 +0000 (UTC)
X-CSE-ConnectionGUID: mmFZTUDbT/CY0W1+RgmEMw==
X-CSE-MsgGUID: AduqnKaITTijn+knNYNTFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64314144"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64314144"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 10:55:09 -0800
X-CSE-ConnectionGUID: WPxvEd40T6+Fhoyori6bEg==
X-CSE-MsgGUID: E0VScPOjQI+iC9AmWZRYQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="191265307"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 10:55:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 10:55:07 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 10:55:07 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 10:55:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zLIHoW0KxMyMVS+K1zPRvcMZgRa6WzHvwWclSPrXVNBm5mUzNdEJeCcp8xiZijFegqHWqeM+0SvDEq1ZDqwQ9gNZKKPOdS1rGXr0NprDuz1/yN6hfvH2MhKo7b3/ACbJ0G5rzroNtjewnNC6wdWtm1EpsoLxKIjcxXsBhd4RcFGiofoD/VHvoaKkyloWoGXnJvYj8QorjFN7OZXGIn1Ln0ab6WvKeFif14p6QKfhSFiY9XdGjKRYD4C2FPiyVz8gF/m7m93/oHNQEEjfXKpNCLjnjH2HqvOldgcwOIuw89dQpJeYkbfvOEPqZfHPfd7woIe/FxmoV/BzQy3X+3q6dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0L1ilQRmrAtmiCNxOgCpjJxmZwi8Hu2+nHYxfv2L1dI=;
 b=xnRigP0gu/NzLs6shs38kdgfLHjisPQ9Hk0tsqGK2dS5zpf6/YeTWpFBq/Dd+ZdWdQ0IpN/LMT9A/1WvG5PnBHiIcbFkFl/3XW4++ZERIQBTwHagYnx+5pJqTiCVAhxKgXKcbImMFxVOp0AQRVfFiEK97QuRNRfRa1Mxq18rqdXOZiMVCUB3+Nswy17p5kMLe6+Tjv6TPfSa7Dukfv3mAfuAlxw+1U6LE9b+B/9C1lxWkctg06+XT4X+caum2XbwkmhDmV1RiDASKZL+iWmCdbh/213rKbqi7Mf+W/8jXPl3VzfJGTQtOb2i5855VwhJ31eNVrbkUX4KUko8UamZCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.16; Mon, 3 Nov 2025 18:55:01 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9275.013; Mon, 3 Nov 2025
 18:55:01 +0000
Date: Mon, 3 Nov 2025 19:54:46 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nabil S. Alramli" <dev@nalramli.com>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <lishujin@kuaishou.com>, <xingwanli@kuaishou.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>,
 <team-kernel@fastly.com>, <khubert@fastly.com>, <nalramli@fastly.com>
Message-ID: <aQj6duztdHrvcv2w@boxer>
References: <20251009192831.3333763-1-dev@nalramli.com>
 <20251009192831.3333763-2-dev@nalramli.com>
 <aQjahdk/fl6EBcso@boxer>
 <6c83089b-3e0d-4c72-80a9-8049cff1dd57@nalramli.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6c83089b-3e0d-4c72-80a9-8049cff1dd57@nalramli.com>
X-ClientProxiedBy: BE1P281CA0364.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::28) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7577:EE_
X-MS-Office365-Filtering-Correlation-Id: a2cc4ba4-d2af-4a4c-7330-08de1b0a7dd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8ZfUri3WQrFCNWa6tAUnz1fxliz3PFzfrJUhcJwAUvvIUPb7iwfroZ1dSKSt?=
 =?us-ascii?Q?rZLEIfiVvu40RKnt+j67mfDsgbbFFFn3ZduA+TKOsASTDT8d/1nJN9MB72z3?=
 =?us-ascii?Q?oa90QHtMrtwS0Io0DCW2vvc5SHrysOvQZAd4hgHIrm3gwLYsfrkUij4/LNsq?=
 =?us-ascii?Q?6xDXE1VgpqWdLIDrpLQqA1QYKBXJ8+0kPClodc3+VjAEkfJFeruWVDkwKWfb?=
 =?us-ascii?Q?L7kdQeaJyl0q4S1EMTMmWfLj/D3ia1/aEm/fldTmfMOmSn0q1VRp8jPYEKZ8?=
 =?us-ascii?Q?05jlb0GcctUFP2DcwTldL+nli2E+6ru91vP10LXvoxlVWSingOQjOxFNgLXd?=
 =?us-ascii?Q?BV9nK3JkfA6G2m8dIjtgo3+VMOGV5rpPXTFT6gUTUZoTKoX95PERPuh6gXUT?=
 =?us-ascii?Q?RJhqounpxkkwVumI1/m3uJNYqmyfydGmGMEiePDv85w3AQXC9rBxA5kK+6qE?=
 =?us-ascii?Q?q7mPuvcu4grypbCPUsL7ie57I6FBN/hrBu0SA6Ow6JAC11maKURUdea32zq+?=
 =?us-ascii?Q?T8edPzFk1MYwcHVoicaX29paVy1gn0W/BChV/7p+SQxGzjwq7lSe8LlN6Ei8?=
 =?us-ascii?Q?4814yTITuhWHhDm6yPCtQF2pnjFz2H36dwhmjO87Cu9g1bADehNUjVSAKjV5?=
 =?us-ascii?Q?9H1tdgtRhu0pYDtTDghvtjXrc5wnTLvM6wlTv5a2UeIymWn9xxJsguNcN69H?=
 =?us-ascii?Q?ZZNZQm27JzCmZCLkNDNeNWtU5p8z4rrn2mKBimP849DdvYPV1B8HMY6o8gNf?=
 =?us-ascii?Q?v5Gfa1SCK9gf5AVqCj7WCrU8mHCD7LGKeHiyx0YsBQjVNsv4F92BPe65irYC?=
 =?us-ascii?Q?nzxFVxyoGHeE6W4Z63jwDbe6UrkCzSpJvOxFSLHjKHf//uTaSH/OlxJujfyN?=
 =?us-ascii?Q?3D5d6kU7EbI1UPJOLFgHElxlB5iKhPr5VpPvgy/GekUs+XfBv/hgBvLslov1?=
 =?us-ascii?Q?COfp05MYmCUr0pOvsvhif7Z8wwYzLwWaQFjglByGHDjlYai+0YdvExuN3qGz?=
 =?us-ascii?Q?p29KxXu3uYA/2DVs414GKnAwSisjyA5lvdB5/NQD+fhwMZ/2eFROzpMT5I/N?=
 =?us-ascii?Q?uOt/LoarXUaA6Mk8KLLhFgebuPpMelarKbD/kJ0uBpKmXwE/3e4sM2z7Kyip?=
 =?us-ascii?Q?OIMikoCjB7eyuMSCvH6QOGlH6JcOPktqtQzdov6FbbE03zRNAbGyc2O1WLRE?=
 =?us-ascii?Q?O/Kxg+6u8EA3tDUHgIeHc4/kmbKReCqUV4kAH9wGFf1EAuPPWEbdVQf7PMb/?=
 =?us-ascii?Q?VAEEMVKwCEBiGGiXDirNVENmvH4SK0Pc5E0p/uvTW9Yw/9feh1zaQq1krUIa?=
 =?us-ascii?Q?x5LR7AFd3czEDAw3LMySOKKA/gXTIpImErSyRHqgu8TyOH/lLLUZyLgdToGj?=
 =?us-ascii?Q?bK7rBDheCiXcg6K7rRnGtnpL8oM8y4/pa6lmO8a623Jq41ELf3mvpB8l/ORK?=
 =?us-ascii?Q?IWJwGvCyIa55Ipq7nUR2bf/XV/qIweTS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ECSyjMWovxgiqx6d+L1M9r7QbWTkP0XNE5YV0PZje5B2pCI4fFkEzLejs0hi?=
 =?us-ascii?Q?zIHQnTADF+GQcI5jlL5DKvQDkfw8WmgXeIZzLMpdZTsF6RLZYFR2YMofj1bk?=
 =?us-ascii?Q?VB0th9Xi0509VybJiTpOVUenhv090CKOw4Z4VhuSJy9SskXZSJly138hWxPM?=
 =?us-ascii?Q?i5e+jimMB7QOrMiT7/Xv0dIhoJvoin2pDy5DJi8mMwG6W4R2MQoTXMsKsWA+?=
 =?us-ascii?Q?R4YZKql4ZjpO+dHzSbnQ2bTp1JUcfXw1EML6PlWS5MY7fz6OQOoLKGQInijv?=
 =?us-ascii?Q?zcv95vnOrfQhfI0ep0hVjOdkCCGPyfSpyKQxdlkqrs5SpfT9fUrgPSk2l/sK?=
 =?us-ascii?Q?XKWWlhvfkeK++GBKfIXMnAvXAlFhIzi4CznwdRtZwHcMxOj5hcN5/MR1yRWm?=
 =?us-ascii?Q?ErR1PF1tHMXfgqFeGDonJdinjlRfpbolg2KDQ7Fnui9IvJUkxT3n65lyVV6O?=
 =?us-ascii?Q?SAC40fmXwjsyFYZKZyKfA7Pwv5Rk8zJCdmOjHOPWcGMRXLZakcqTwiXLVYDc?=
 =?us-ascii?Q?mZ6rwdUE7h4gyXQQM4W4VFK1JK3sv+2S7SYyNcD53ak9qo0q+g4vnh+e9rnR?=
 =?us-ascii?Q?SJIUVqlruOdm70dA83o7mb5/Oo8ZoIECrjtqsBDvsv7pzMc4WiIJYmrCci5G?=
 =?us-ascii?Q?ogPCtlOHC+gj3Wyg+TQDx9o1541ilrus0sM0rbia29Bc+1jslGMRN4W2m/O9?=
 =?us-ascii?Q?2RaMYPAjvlbiMK4iiaFW9tzR7/vLMYiEoIpYffrMvA4ZVeBMaybd3GESfw0l?=
 =?us-ascii?Q?Jlkz4jQBbBmqobnKK88gAHnpjSZw6sxYY9x4XMLgMc0YpnJvbVYvkHEHhHlE?=
 =?us-ascii?Q?twkmor6iRrtLkKwbcFEYbhKJoCen6s8G42DfkNlquDMDGlYOKgClhIp0ZKZv?=
 =?us-ascii?Q?sXUgsN5wLJfK/EM1ceyDmrPXMi4UlWKUet9acqH4dWEtPvvHXkzWj8TOtNxS?=
 =?us-ascii?Q?Xg+A940O1UqautoU2GtZfeHMUmcV1txIjEt48iRecK7c32iP5XoQgv6/lu/G?=
 =?us-ascii?Q?VyNsSlFizfxPnvL5EFQFSbIl17nvFCbZdJ90lcp4qsez34d2tLZEJqEA3FDC?=
 =?us-ascii?Q?22HQTubWTddCwV9NmjNDZe6vopbqRJxtMVJ6jA7ak2inJt9Y6oeE30KuLE8u?=
 =?us-ascii?Q?XfxDFh01lytxaFZ6UZcurSeMmpIY6bqxbMwb7a4luJpTdnFh06QRsXEXYO/X?=
 =?us-ascii?Q?O7SHAthY8+aETkAq8Ly7Kxj89E2+Aocpz1xop9GQYXhLMW/BXJ4Qn3hjBtqk?=
 =?us-ascii?Q?x9KWYoRyiJUIfdDbfJI/3juH+0OvZhI/H/8lUokgYf1R74m+KHP4AOv8XS1z?=
 =?us-ascii?Q?K4Dx3ZKeyXSsjE9vps/4Jj4bJzT8oz3DZU0rlJ68Tsbwd5Q+cbOJB1GIA7gX?=
 =?us-ascii?Q?/Z1i6EYhaVkbQcue0d9EzUiQUKk2PAE5R7Fok1WysDbIyZ/y+qhsMRZYMfF+?=
 =?us-ascii?Q?HlSGJAhhRH+1x4ImTNqxd5oQgJEeZBL7smnMBQxP7bOzpk82P9fHZUCltiD7?=
 =?us-ascii?Q?D6aBG4hYVMkxhk7OgRPKDMcpCH6Th06EuejtNs8mPL6UDlSayAjJQAiACsqU?=
 =?us-ascii?Q?fE2vYtBXNYd2kxO7YIeRolvY2FskhvROubu4Tu4HNS3rYs5VQceRoy5v31RT?=
 =?us-ascii?Q?7Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2cc4ba4-d2af-4a4c-7330-08de1b0a7dd3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 18:55:00.9241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j72/4ul6qx3lZFLtzodBb6mehduWh/+CyNgeBwvF9Dmk9/KMg8p6yPp8+5J3XVL9LyL8XfEuKlPPa019wmm6fyWxCfFW1a9wP1aFhzmvd2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762196109; x=1793732109;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FS8APazSvIZo8FhUuo9kXMltDue/GofuRY2SD86G1nw=;
 b=laHWxsrXvf1NA7ezyklCQBYCmLlTC92MtQOlrWOBV7XDmvKIk1qVZ8O7
 jYX8247k8wj874UA9Jfysl8RHsLryLpaZR6Zo3cUh5Y+0CYw1JTYPFS4a
 UDRJyy/li3itWRFHow3ArPhgG+T2h1h4UhIDlmVPqPl6aBsJqrr/yEcB9
 W82stpO234z+ZwkZcS6coDwRNhTg0f6zmB5dXETDNcnJ57lPKMMjv862r
 lSBpe7xcAQ8uhaCczhDddroVjVriqG/cvMffxqQdxLoWl3Mwnw0+40h7T
 FjEyBbjO2cqCKQie7NyXG1JBKxt11Q3KkBAse5uAlPq2UJ3mlxRTek5lx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=laHWxsrX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC ixgbe 1/2] ixgbe: Implement support for
 ndo_xdp_xmit in skb mode
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

On Mon, Nov 03, 2025 at 12:40:14PM -0500, Nabil S. Alramli wrote:
> On 11/3/25 11:38, Maciej Fijalkowski wrote:
> > On Thu, Oct 09, 2025 at 03:28:30PM -0400, Nabil S. Alramli wrote:
> >> This commit adds support for `ndo_xdp_xmit` in skb mode in the ixgbe
> >> ethernet driver, by allowing the call to continue to transmit the packets
> >> using `dev_direct_xmit`.
> >>
> >> Previously, the driver did not support the operation in skb mode. The
> >> handler `ixgbe_xdp_xmit` had the following condition:
> >>
> >> ```
> >> 	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
> >> 	if (unlikely(!ring))
> >> 		return -ENXIO;
> >> ```
> >>
> >> That only works in native mode. In skb mode, `adapter->xdp_prog == NULL` so
> >> the call returned an error, which prevented the ability to send packets
> >> using `bpf_prog_test_run_opts` with the `BPF_F_TEST_XDP_LIVE_FRAMES` flag.
> > 
> > Hi Nabil,
> > 
> > What stops you from loading a dummy XDP program to interface? This has
> > been an approach that we follow when we want to use anything that utilizes
> > XDP resources (XDP Tx queues).
> > 
> 
> Hi Maciej,
> 
> Thank you for your response. In one use case we have multiple XDP programs
> already loaded on an interface in SKB mode using the dispatcher, and we want
> to use bpf_prog_test_run_opts to egress packets from another XDP program. We
> want to avoid having to unload the dispatcher or be forced to use it in native
> mode. Without this patch, that does not seem possible currently, correct?

Why does it have to be bpf_prog_test_run_opts?
You're trying to use an interface which was designed for native XDP from a
different layer. Generic XDP has support for redirect and tx.

> 
> >>
> >> Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
> >> ---
> >>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  8 ++++
> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 43 +++++++++++++++++--
> >>  2 files changed, 47 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> >> index e6a380d4929b..26c378853755 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> >> @@ -846,6 +846,14 @@ struct ixgbe_ring *ixgbe_determine_xdp_ring(struct ixgbe_adapter *adapter)
> >>  	return adapter->xdp_ring[index];
> >>  }
> >>  
> >> +static inline
> >> +struct ixgbe_ring *ixgbe_determine_tx_ring(struct ixgbe_adapter *adapter)
> >> +{
> >> +	int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> >> +
> >> +	return adapter->tx_ring[index];
> >> +}
> >> +
> >>  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
> >>  {
> >>  	switch (adapter->hw.mac.type) {
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> index 467f81239e12..fed70cbdb1b2 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> @@ -10748,7 +10748,8 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >>  	/* During program transitions its possible adapter->xdp_prog is assigned
> >>  	 * but ring has not been configured yet. In this case simply abort xmit.
> >>  	 */
> >> -	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
> >> +	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) :
> >> +		ixgbe_determine_tx_ring(adapter);
> >>  	if (unlikely(!ring))
> >>  		return -ENXIO;
> >>  
> >> @@ -10762,9 +10763,43 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >>  		struct xdp_frame *xdpf = frames[i];
> >>  		int err;
> >>  
> >> -		err = ixgbe_xmit_xdp_ring(ring, xdpf);
> >> -		if (err != IXGBE_XDP_TX)
> >> -			break;
> >> +		if (adapter->xdp_prog) {
> >> +			err = ixgbe_xmit_xdp_ring(ring, xdpf);
> >> +			if (err != IXGBE_XDP_TX)
> >> +				break;
> >> +		} else {
> >> +			struct xdp_buff xdp = {0};
> >> +			unsigned int metasize = 0;
> >> +			unsigned int size = 0;
> >> +			unsigned int truesize = 0;
> >> +			struct sk_buff *skb = NULL;
> >> +
> >> +			xdp_convert_frame_to_buff(xdpf, &xdp);
> >> +			size = xdp.data_end - xdp.data;
> >> +			metasize = xdp.data - xdp.data_meta;
> >> +			truesize = SKB_DATA_ALIGN(xdp.data_end - xdp.data_hard_start) +
> >> +				   SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
> >> +
> >> +			skb = napi_alloc_skb(&ring->q_vector->napi, truesize);
> >> +			if (likely(skb)) {
> >> +				skb_reserve(skb, xdp.data - xdp.data_hard_start);
> >> +				skb_put_data(skb, xdp.data, size);
> >> +				build_skb_around(skb, skb->data, truesize);
> >> +				if (metasize)
> >> +					skb_metadata_set(skb, metasize);
> >> +				skb->dev = dev;
> >> +				skb->queue_mapping = ring->queue_index;
> >> +
> >> +				err = dev_direct_xmit(skb, ring->queue_index);
> >> +				if (!dev_xmit_complete(err))
> >> +					break;
> >> +			} else {
> >> +				break;
> >> +			}
> >> +
> >> +			xdp_return_frame_rx_napi(xdpf);
> >> +		}
> >> +
> >>  		nxmit++;
> >>  	}
> >>  
> >> -- 
> >> 2.43.0
> >>
> >>
> 
