Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w8L8LSnFUGpI4wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:10:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0168B7397B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:10:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=JTKY68Yg;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB9B2811ED;
	Fri, 10 Jul 2026 10:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZpiKWNRdLqmE; Fri, 10 Jul 2026 10:10:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4AC7811EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783678246;
	bh=yQv/uW2vw5q9G1bLMg5S6szEbSkW7AZwoN3kzjIsUfo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JTKY68Yg4+39Xwtuwk627nyJFIgKP3XyzvzwSJrIBsEFnhQEzHGTu6qbQTbLThJsQ
	 4/00b9NoOnOwY7HdZispB6NtAU92DmRu0POGPFMTRqatfDi1woqHial28hMx6AtmAj
	 NFICoFEO4sEmXvjyxUByKl/gC82F+4ZoLgchlbbaFSYgm2IXAZCt8R99xGIvAQEVTS
	 CwN0AiFgb1OMGyRDImsF5XQHtUBKcPc4/NCktm5nvtInc+Ze3+hu+rh9+Bezm4taXU
	 6OEwBElvVlqttHPn7PzPzCxwCnhxcNCDCqrz5vUXMBitClk7nEg2ykzyO9v3RdwW4x
	 9vX22vL3K3J4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4AC7811EE;
	Fri, 10 Jul 2026 10:10:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 87D5C320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A67C40712
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:10:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyO0s1Cg1RAH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 10:10:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5C0A40647
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5C0A40647
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5C0A40647
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:10:44 +0000 (UTC)
X-CSE-ConnectionGUID: eIFlCYT9Q1u11ic4dXnv1Q==
X-CSE-MsgGUID: +y+u3+20QwujGwSmDUM03w==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83352682"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="83352682"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:10:44 -0700
X-CSE-ConnectionGUID: Jwe2J4IdR5Gv5N1VhZtXzQ==
X-CSE-MsgGUID: ibsInFJzRmWXtk1OAAHWLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="248477123"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:10:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:10:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 03:10:42 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:10:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r3KlKW2MfoKEGrf/Psb2n8U1FalFwdRL4aAWpdArC8u6nXyOp3fTsfF/lXQAQo8VSafzxdFYL6zBpHg8V/rbt4kk72PyS+fn1dnMoGCRuqs5qo9duZ3NEQz13RAcsKIZgccmuBsIkkdCLad8xdLlnWMPxoYrFkSHVtunriYgVxm4fKKRrqh5zPi25/g+r64bfWZDj1iGL3ntahqbQTIR/SQS3XtNKpEoo/NCa+obFGTpG2Ec22oZe3RKmFaISEo2mDftfygGFB5mVLdiqP9sG2l7THI8zozEt4yoLfprjNFKCpl/IOrJf1UmXudXf/INyiqwbnRqy/4XKNEWqYrBXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yQv/uW2vw5q9G1bLMg5S6szEbSkW7AZwoN3kzjIsUfo=;
 b=YdJUV91oqxays9n3PS0mJcGAHPOQyW/Ot6qnz5/rhnJzp5kNxoscY0PudP2+fDFi4kDTK+EyEtxEVTmCPGaOzffOGXSTQbjvis1E6WJGxFCe2CM9ziNv1Sc3dMnoskN9VqYPbbLaDW6GYChDJTbIAm2xhN+BIlS0Vl95Zk3dHT5ZuCZWt3BXEcxncljpdU0fIcddgkwlGkOuY8M1OKBXS3RGenQxYOX876iCFv90bARo1dRuxBPSF8gTOb2GlG3pMTxY3sBlE/uD+NvO+lFXoP6ZOF0qgCrvkFJqHsRcHjvojQOrbwxfa5ZBJ/uxg7qCSOBx183CxlmJCaEvLWo6LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 10 Jul
 2026 10:10:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.014; Fri, 10 Jul 2026
 10:10:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vladimir Vdovin <deliran@verdict.gg>, Lorenzo Bianconi
 <lorenzo@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song
 Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, "KP Singh"
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
CC: Jakub Sitnicki <jakub@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Thread-Topic: [PATCH bpf-next v4 3/6] net: ice: Add xmo_rx_checksum callback
Thread-Index: AQHdDxlVAlzemsxSckyaAohUuvTIWrZmim8Q
Date: Fri, 10 Jul 2026 10:10:39 +0000
Message-ID: <IA3PR11MB8986228D313386111EA3E131E5FD2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260708203410.45121-1-deliran@verdict.gg>
 <20260708203410.45121-4-deliran@verdict.gg>
In-Reply-To: <20260708203410.45121-4-deliran@verdict.gg>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8509:EE_
x-ms-office365-filtering-correlation-id: 71d317af-21c4-4a79-0745-08dede6b7e54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|23010399003|376014|366016|1800799024|38070700021|56012099006|11063799006|921020|4143699003|22082099003|18002099003|3023799007;
x-microsoft-antispam-message-info: FxV6Na58Nbsw/6M57wXQ8iTM7OQ8y2holyq/xWfSJU2ePL/HJ7ngXiElr5lyIMv6c9YJIouH0G6bGRFbbQYbW3h/EObw/cYY64OnBmXzc7TJcfrwX4P12cB2mCmu+w+m2Wws+nasadwrjkVqkTlK86spndz8va/llcuz9UbOTQP+lM+kjTk8ZyDhOphygQOQt/IMtv/jyHfq9SYy3VuoUx30NaNhjGNQYTwb7BlzEfqrmuxfuAdU2yDbLXvytLDTddPpvDSj2qvWZAT0WQI/ptcblBoR1BfnrZnzkvRo5ztH/l/vc8FIBH2CQGE1RMII4rpL2BKop9fttVTVbbBV4Vg38QwZ4p+TNAIBAaEEdNZCPxfLz0DJS2Zhb+HRRnNj2kZTlMFQd07dJqFHQmTlN9eIX1TG2p6N+Z+O8ydKgSTz4saEBnpjhRSJiVENga24d09eGqDFgDrkcZ2GP+2PDFLvdUwwuYB7oMHpJMHMpio02AJEFu80VEcYuMaDL7/182aHnh2ZkOzlRyTkvgpFLmYFiqnqNyL9jpK5iKpnsKQXHt1Bb7eT7smWqsPxIbPJGYiQVTUkYxH1h2OEba1lue+phJwgWcGnRfPu1XV2WEeXDsUT4SQ7hGUluGyn4i7BVz41ojTYNr1RyTnJ+aPkhLweC5mQVQMYpnQdrG59iBouv8S7QXCdb56V8s5LzGIMzeW56/EdphNmbds0ffs4V2CS38uDtELKIBFCUSbdExiYodqIYYUOCLiV28OViCoV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(38070700021)(56012099006)(11063799006)(921020)(4143699003)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1kHar7XSp2Y1S3s6OB9dUcxoIqBbIDWDqYBnts1LEoIbbtCW+bUOv8uyU0N9?=
 =?us-ascii?Q?EcPPpwqk92jNHq9ztQWS9+6ox/P0RdiZ3MM/kKq7f864zsHRrZduj1kto0Tt?=
 =?us-ascii?Q?GveCFVKeqE3UO3cAgwei3vWsMRlTtgnST8VcYuOaDtiKCtK0WE/loV0aH95x?=
 =?us-ascii?Q?8EnQyo81mdMfxmM33v0SdXyhYgCr8z0YPdrNOnW2yy8/buFMRZM+WneDcxNQ?=
 =?us-ascii?Q?jdE64OZaH/ZjCFrNjiPcJRJDBcVTYY5NFxMwMAibUdzBFyakoakdutVZ6f57?=
 =?us-ascii?Q?gneJawGkbNehkDnG0d3lHffow1YtVAwG+DVtMDHhndC0JuxE1gFK6nvgLs78?=
 =?us-ascii?Q?jJxv/83Oujwda0F8N/U9wBZuDkF/OmarcKyrMkfSA4wf+J+0nt6Zavkwso1T?=
 =?us-ascii?Q?kZ3CArD/j1yIhd6UC5IJckTQyYrP1dbUFQBhMOheMjgLDOCFVsDisZaFELF7?=
 =?us-ascii?Q?2hO/mu5ZMGqMq/CrsX1LNIy4HMp5712ngwCpFFEz9dXN7BXgrxVUHT1iP3u0?=
 =?us-ascii?Q?IVR1y3E+4a7De+Lh/AcuqNqeQ5p+Z1b+qvboTV9RYhPsuCWyq8+aiyWPPPCh?=
 =?us-ascii?Q?mDgI3XKD0LRT3cIKUfORGH14sQWcH+OvKpxDqS6iQp9w4Mxso4YxYPgWEtyM?=
 =?us-ascii?Q?bbk1T7JdzQ6v7oARdENIfBVopehM6jcRt83bN9AzMrEJsTOHImz+4y7Aa9ss?=
 =?us-ascii?Q?JsrH23Vksf7ZBq/A2DRAkfUvqLQ4R2AUM82gw8iWfXqeT11nhf9O8zCVxdsk?=
 =?us-ascii?Q?6qqMMfXFVld9RlaZHG71FEFCyPZ3b8E/ozWYYUFCo4ro4QFXxZGxiyHFLhYh?=
 =?us-ascii?Q?SCxtnhH6YrD3oWldZH0UMohmnj9LoHyy+31dk4v1AsKdiBPSXnsSI407grms?=
 =?us-ascii?Q?F3Ggcog/lszF5u5Tb80W7aWRVsqcBBuwGmCNmyXqiAcXjSe59YfGa8TN3Mbj?=
 =?us-ascii?Q?SgloD7jozMgxc1SBot6fYVCJp0p0sSH+arn28kVE80WVL6XllhspOivqJegx?=
 =?us-ascii?Q?Dd/enwu8+c2c5ycDrC39xmbM3TX4MBVnyaRQVNfzDQqCGNQI2mrD+hiDx8uD?=
 =?us-ascii?Q?UU6Q1UhOclFpgPwpgRC+1BTGMid6NKDXZX3IpUUA5O8zYxiMIK3iIqXuP6ec?=
 =?us-ascii?Q?FO7n9oQOrYaeTZ8iSecFu/maWFkVCyONjtvOk+Th4Z8tCvfFHojLYSGy76b0?=
 =?us-ascii?Q?3vdvRwbc28mJaFsdUownXHC2/SEISZluJLyd20DvxzEUjeQCIxny1ojG5gGY?=
 =?us-ascii?Q?irmFREib9loM20dlgsyxqTbn8UrSXkpFa04uWlhoG9zAQRK665oZV8+Z5vVg?=
 =?us-ascii?Q?/bPeO4oeodALZpnjMk9Tb81L4vpsBY/SZw6vbqOxpOxlV107ZATSTL2ypW+5?=
 =?us-ascii?Q?qfyQJg4iP/NAwmvvtEnDLzZ2izMKi7wj98mP+mcupQEvd5YZXuYl4/pxfWB2?=
 =?us-ascii?Q?6vlcnkmCo/n584HguQSHxrJ0HbyhIIP59HN5ZdULu2RsFwhKsx54Qv/oAgJP?=
 =?us-ascii?Q?cWrnj+KN+SsuxJ0j97XwNmDyaovdofsK3NWc8Itfe+E6+tEzRyOJQ6c4ZW9F?=
 =?us-ascii?Q?ju+orKHiGfDtvJov6FVYDEsHMbZU1VK0Y8o9mhLC3/mHx4e3VNur9nMNaAno?=
 =?us-ascii?Q?XOlyj0aZ0aYYTt84BkddW/4+7inK7w56/VQFpmRJSyr3sYIYVvISYYlPxu7F?=
 =?us-ascii?Q?s+TP5CEB9RaIdjMYGFM0AXpO5WrdoPpLqQo9HhEs7lQLw6zUIw1ag8qoy4/+?=
 =?us-ascii?Q?jy95mpsAoQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XuuyD0KoKradsxTg46KNTPV3vwMx+UGxRy64fVquZSLWf551BUNRssKBzJglE+zO2XfLr4Ip7Mjrn+bRoaiEJQ44fmc3YkkrSxc5cibra/aD9af7Ed5FfpRWfSt4WBkZHfKLvts2d42P1DNCJmLUAYwypQxvzidbXo6ymxgaHNOU2XAZjCBD8hMsUvcvZ5U3ermYp1lzjPnfRpp8Hr/8LGXE32wB4j73yrcJACgAakQNDCcxsEOzV8zY02jBiZ+4yjXw4AomVSluOu+9kWGO5XeWj6AshCNHqTyEj1YoWFRmIxbbEhbp8eJ0lOb/0iU7Kdi96Bf5YatwKJjph1vdlQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d317af-21c4-4a79-0745-08dede6b7e54
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 10:10:39.5363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZbXLiAY5B8bpFvkOvr2fbuL+BNV8/25pS/ygrvIuy4M3r90JqOjASuG9/pZcg9vZJxGNtLVkJqt7mHqrHiJ8fPQ632B4QZM7RQ4qUu5GVqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783678245; x=1815214245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GsWZWM7AWvGyfNni5XHNZvtnC4ujiyRJW4Xvi68bj34=;
 b=jMfu3PQRecWFxdmMROlgnEF+kLMNyHFOV5GWuu1ogQ6LNf8MsrKCQgqU
 PWJrQezZMoMLunM6kSFoSwecJTx6jiASkFysgjMvyYEW52L/H7KYAlGiW
 WIvxsXr6Bn28ahUecVzNjBQ4dxom1743nNeZyMKtyl49/6JL0xMfblTZ2
 MvjKvGgQEO2ZFknGwOgQGpli9uaUTD91yP+r8xoEDTyKZ6L5CiVZNpfCH
 pcOUinl7jn3CvhO2AtUzZXGgOowJpMsWw382r1Jo8eVsqLDbI7LmgZcM0
 u71rhH2j7B72Z87oTve/GpdfsU2B56m/BZLsQvbi77dZ6DalEdjm2m91Y
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jMfu3PQR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/6] net: ice: Add
 xmo_rx_checksum callback
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:deliran@verdict.gg,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[verdict.gg,kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0168B7397B3



> -----Original Message-----
> From: Vladimir Vdovin <deliran@verdict.gg>
> Sent: Wednesday, July 8, 2026 10:34 PM
> To: Lorenzo Bianconi <lorenzo@kernel.org>; Donald Hunter
> <donald.hunter@gmail.com>; Jakub Kicinski <kuba@kernel.org>; David S .
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
> <sdf@fomichev.me>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Andrii Nakryiko <andrii@kernel.org>;
> Martin KaFai Lau <martin.lau@linux.dev>; Eduard Zingerman
> <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong Song
> <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Shuah Khan
> <shuah@kernel.org>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: Jakub Sitnicki <jakub@cloudflare.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; netdev@vger.kernel.org;
> bpf@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kselftest@vger.kernel.org; Vladimir Vdovin <deliran@verdict.gg>
> Subject: [PATCH bpf-next v4 3/6] net: ice: Add xmo_rx_checksum
> callback
>=20
> From: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> Implement xmo_rx_checksum callback in ice driver to report RX checksum
> result to the eBPF program bounded to the NIC.
> Introduce ice_get_rx_csum utility routine in order to make the rx
> checksum code reusable from ice_rx_csum()
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 123 ++++++++++++-----
> -
>  1 file changed, 81 insertions(+), 42 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index e695a664e53d..3aa82ff03d9e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -78,69 +78,48 @@ ice_rx_hash_to_skb(const struct ice_rx_ring
> *rx_ring,
>  		libeth_rx_pt_set_hash(skb, hash, decoded);  }
>=20
> -/**
> - * ice_rx_gcs - Set generic checksum in skb
> - * @skb: skb currently being received and modified
> - * @rx_desc: receive descriptor
> - */
> -static void ice_rx_gcs(struct sk_buff *skb,
> -		       const union ice_32b_rx_flex_desc *rx_desc)
> -{
> -	const struct ice_32b_rx_flex_desc_nic *desc;
> -	u16 csum;
> -
> -	desc =3D (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> -	skb->ip_summed =3D CHECKSUM_COMPLETE;
> -	csum =3D (__force u16)desc->raw_csum;
> -	skb->csum =3D csum_unfold((__force __sum16)swab16(csum));
> -}
> -
> -/**
> - * ice_rx_csum - Indicate in skb if checksum is good
> - * @ring: the ring we care about
> - * @skb: skb currently being received and modified
> - * @rx_desc: the receive descriptor
> - * @ptype: the packet type decoded by hardware
> - *
> - * skb->protocol must be set before this function is called
> - */
>  static void
> -ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
> -	    union ice_32b_rx_flex_desc *rx_desc, u16 ptype)
> +ice_get_rx_csum(const union ice_32b_rx_flex_desc *rx_desc, u16 ptype,
> +		struct ice_rx_ring *ring, enum xdp_checksum *ip_summed,
> +		u32 *cksum, u8 *cksum_level)
>  {
> -	struct libeth_rx_pt decoded;
> +	struct libeth_rx_pt decoded =3D libie_rx_pt_parse(ptype);
>  	u16 rx_status0, rx_status1;
>  	bool ipv4, ipv6;
>=20
> -	/* Start with CHECKSUM_NONE and by default csum_level =3D 0 */
> -	skb->ip_summed =3D CHECKSUM_NONE;
> -
> -	decoded =3D libie_rx_pt_parse(ptype);
>  	if (!libeth_rx_pt_has_checksum(ring->netdev, decoded))
> -		return;
> +		goto checksum_none;
>=20
>  	rx_status0 =3D le16_to_cpu(rx_desc->wb.status_error0);
>  	rx_status1 =3D le16_to_cpu(rx_desc->wb.status_error1);
> -
>  	if ((ring->flags & ICE_RX_FLAGS_RING_GCS) &&
>  	    rx_desc->wb.rxdid =3D=3D ICE_RXDID_FLEX_NIC &&
>  	    (decoded.inner_prot =3D=3D LIBETH_RX_PT_INNER_TCP ||
>  	     decoded.inner_prot =3D=3D LIBETH_RX_PT_INNER_UDP ||
>  	     decoded.inner_prot =3D=3D LIBETH_RX_PT_INNER_ICMP)) {
> -		ice_rx_gcs(skb, rx_desc);
> +		const struct ice_32b_rx_flex_desc_nic *desc;
> +		__wsum wcsum;
> +		u16 csum;
> +
> +		desc =3D (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> +		*ip_summed =3D XDP_CHECKSUM_COMPLETE;
> +		csum =3D (__force u16)desc->raw_csum;
> +		wcsum =3D csum_unfold((__force __sum16)swab16(csum));
> +		*cksum =3D (__force u32)wcsum;
> +		*cksum_level =3D 0;
>  		return;
>  	}
>=20
>  	/* check if HW has decoded the packet and checksum */
>  	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
> -		return;
> +		goto checksum_none;
>=20
>  	ipv4 =3D libeth_rx_pt_get_ip_ver(decoded) =3D=3D
> LIBETH_RX_PT_OUTER_IPV4;
>  	ipv6 =3D libeth_rx_pt_get_ip_ver(decoded) =3D=3D
> LIBETH_RX_PT_OUTER_IPV6;
>=20
>  	if (ipv4 && (rx_status0 &
> (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S)))) {
>  		ring->vsi->back->hw_rx_eipe_error++;
> -		return;
> +		goto checksum_none;
>  	}
>=20
>  	if (ipv4 && (rx_status0 &
> (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S))))
> @@ -164,14 +143,51 @@ ice_rx_csum(struct ice_rx_ring *ring, struct
> sk_buff *skb,
>  	 * we need to bump the checksum level by 1 to reflect the fact
> that
>  	 * we are indicating we validated the inner checksum.
>  	 */
> -	if (decoded.tunnel_type >=3D LIBETH_RX_PT_TUNNEL_IP_GRENAT)
> -		skb->csum_level =3D 1;
> -
> -	skb->ip_summed =3D CHECKSUM_UNNECESSARY;
> +	*cksum_level =3D decoded.tunnel_type >=3D
> LIBETH_RX_PT_TUNNEL_IP_GRENAT;
> +	*ip_summed =3D XDP_CHECKSUM_UNNECESSARY;
> +	*cksum =3D 0;
>  	return;
>=20
>  checksum_fail:
>  	ring->vsi->back->hw_csum_rx_error++;
> +checksum_none:
> +	*ip_summed =3D XDP_CHECKSUM_NONE;
> +	*cksum_level =3D 0;
> +	*cksum =3D 0;
> +}
> +
> +/**
> + * ice_rx_csum - Indicate in skb if checksum is good
> + * @ring: the ring we care about
> + * @skb: skb currently being received and modified
> + * @rx_desc: the receive descriptor
> + * @ptype: the packet type decoded by hardware
> + *
> + * skb->protocol must be set before this function is called  */
> static
> +void ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
> +	    union ice_32b_rx_flex_desc *rx_desc, u16 ptype) {
> +	enum xdp_checksum ip_summed;
> +	u8 cksum_level;
> +	u32 cksum;
> +
> +	ice_get_rx_csum(rx_desc, ptype, ring, &ip_summed, &cksum,
> +			&cksum_level);
> +	switch (ip_summed) {
> +	case XDP_CHECKSUM_UNNECESSARY:
> +		skb->ip_summed =3D CHECKSUM_UNNECESSARY;
> +		skb->csum_level =3D cksum_level;
> +		break;
> +	case XDP_CHECKSUM_COMPLETE:
> +		skb->ip_summed =3D CHECKSUM_COMPLETE;
> +		skb->csum =3D (__force __wsum)cksum;
> +		break;
> +	default:
> +		skb->ip_summed =3D CHECKSUM_NONE;
> +		break;
> +	}
>  }
>=20
>  /**
> @@ -566,6 +582,28 @@ static int ice_xdp_rx_hash(const struct xdp_md
> *ctx, u32 *hash,
>  	return 0;
>  }
>=20
> +/**
> + * ice_xdp_rx_checksum - RX checksum XDP hint handler
> + * @ctx: XDP buff pointer
> + * @ip_summed: RX checksum result destination address
> + * @cksum: RX checksum value destination address
> + * @cksum_level: RX checksum level value destination address  */
> static
> +int ice_xdp_rx_checksum(const struct xdp_md *ctx,
> +			       enum xdp_checksum *ip_summed,
> +			       u32 *cksum, u8 *cksum_level)
> +{
> +	const struct libeth_xdp_buff *xdp_ext =3D (void *)ctx;
> +	const union ice_32b_rx_flex_desc *rx_desc =3D xdp_ext->desc;
> +	struct ice_rx_ring *ring;
> +
> +	ring =3D libeth_xdp_buff_to_rq(xdp_ext, typeof(*ring), xdp_rxq);
> +	ice_get_rx_csum(rx_desc, ice_get_ptype(rx_desc), ring,
> ip_summed,
> +			cksum, cksum_level);
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_xdp_rx_vlan_tag - VLAN tag XDP hint handler
>   * @ctx: XDP buff pointer
> @@ -598,4 +636,5 @@ const struct xdp_metadata_ops ice_xdp_md_ops =3D {
>  	.xmo_rx_timestamp		=3D ice_xdp_rx_hw_ts,
>  	.xmo_rx_hash			=3D ice_xdp_rx_hash,
>  	.xmo_rx_vlan_tag		=3D ice_xdp_rx_vlan_tag,
> +	.xmo_rx_checksum		=3D ice_xdp_rx_checksum,
>  };
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
