Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8ED9D1534
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 17:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48B2484D63;
	Mon, 18 Nov 2024 16:19:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EoahUnjOHm3Q; Mon, 18 Nov 2024 16:19:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8351884C9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731946766;
	bh=r3t5qpCnBsR8x6+kCMWFr5fKhdu56GM1YgfDnKNssUQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rdQL3mQzCQgtJhgXYOKptPPqj6gZpjnkLVHhCzmcUnwdUPM/fUhtnVHHssWqz7ujT
	 3BBdloVvidwAwGyhTWsDUaytkzVSUGg5QleH+ndrwimZS+9joq59gv1Pb8TV7nxP1w
	 aVfqT7Q1aTgRp5toSLh8YxFLevTotC1ontKdBhA8E6Q40Kg1HHLt5Jq0mPc0u58Ldy
	 0zPN0T6ddNhhhG1Jt3kwRPJyxCx93aSy3cy6IgnCDC2hq+l4vfxXrTIz3boeo37uwJ
	 CVjbhAKoE9HMmIh6j5iwRiqJZpYUexWSX+e2krKTx7FNDy096oUsAp/Y1vzPpT1j+1
	 uV8zBRWXJwN0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8351884C9A;
	Mon, 18 Nov 2024 16:19:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A1EE0DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FF3C60863
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:24:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5y06vulgS7Sv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 15:24:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F311600CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F311600CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F311600CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:24:15 +0000 (UTC)
X-CSE-ConnectionGUID: o7ZNh6VnT9Wy4TFcl1ABrA==
X-CSE-MsgGUID: hudY5u/nRN2cAk6gBD+8dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32045309"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="32045309"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 07:24:14 -0800
X-CSE-ConnectionGUID: NF8pcTv7TEeoiTRqJhgclA==
X-CSE-MsgGUID: 1J9kkzF8Qx+ieXf6ta5zPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="89173595"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 07:24:14 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 07:24:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 07:24:13 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 07:24:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mp9PoYH0TW5H2eRI+tq/AeFjXzMy6liduyj42fQfoI2WZtDA8oMq9kVbCHcz4rHG+cxpaXdvEr7fJFKcb5ciV+T8Belw75DnJSFNwpI2F3AbNj1WfvplI2rXsX6gEM6XBGx9AchXgef+Dmgzq73b5dTz7SfEwqiEtBe4GMeBAZmqFi0aJoeOE3fCuQdbD6ZJtbU4VYM2xEcoiwttjBonob7/EE0j6V7In3QWSE/V/2GmWknYE314Ipm1b2as1uJA0T+oQI7eOcltlB3ojINrw1ALRPa29pKiVSz/fv9AD3bmgXjfMhtJRr2B5ArTziKf1JMW5Tdn13s3NfziHA63Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r3t5qpCnBsR8x6+kCMWFr5fKhdu56GM1YgfDnKNssUQ=;
 b=OBHvFii2HCkWalwjDqLlwfjCsegUNNaWIlMMeb1mTyfb16CtQFG5pKKtbcDA/7WHrMLvzR2Dka6nT4oEi9jcwvfuzDWOyzWo8ihAenxh0755f16FUxdjxpgjTV3dAtNsHCbcAk0I0Q/8xRNuNt3FXsKZe4JXWMjrzwcSliywWg7SV+kwR7MkqtMwWp/xgngaYcWUMgStWYwzy7nDHUUz6fdz9Fa7ROau0FrPL8uNm6iOXPBIikfJPDt4013job6X7FDlMQY0T/0Yol6awMJbJTzju4KzLlksCScZL3MEQlBI/0Y0a+TYgFRza1GSZ3ZaY+TumBQZuwuqchwDi6mTKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.21; Mon, 18 Nov 2024 15:24:09 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8158.019; Mon, 18 Nov 2024
 15:24:09 +0000
Date: Mon, 18 Nov 2024 16:24:02 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
CC: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, "David S . Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>
Message-ID: <ZztcErmTWW1KjSYq@boxer>
References: <20241118041545.1845287-1-yoong.siang.song@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241118041545.1845287-1-yoong.siang.song@intel.com>
X-ClientProxiedBy: MI0P293CA0012.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::20) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM4PR11MB7326:EE_
X-MS-Office365-Filtering-Correlation-Id: d0015d27-00a5-4f60-f7d9-08dd07e50c71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aWmzTDPsFSlNwSlRFruFsgCJDISkhnvsRd9xq1xCyyYBwvDRPL0swFnyOqcX?=
 =?us-ascii?Q?ZzehilbFVQSDxClmDcJIqzG9Qf6qxUjr9orvy6+noHub06c+9g52BBbMHiJJ?=
 =?us-ascii?Q?baT3Aod0eGyYXXuRFtB/T3xN48fwBufDyBSyiLgX1r6O4PRui7krMZqcEYnX?=
 =?us-ascii?Q?EPRAYHGcVvoeC2OfTfvJkZEQn6PdtzKDfD7o06dDY50dFcF7XbY+QJ2tVro7?=
 =?us-ascii?Q?hoEK4Xp6T/yJDG1PEAKDhjQTPT6IDfyPK89xNh7iEfap2gsiLw92pqpW1Pd8?=
 =?us-ascii?Q?njY+o6/PNXC+jSiGKXfIoij1/SBz4duzmZnVuIiPxgUz/9u0vQ9ka1DASVuK?=
 =?us-ascii?Q?0M3kyd2+ot+NZ0OGUdvK9JbTB2RK71Ffu7ROYm7Snm3updsKrLZcAfWnK/QF?=
 =?us-ascii?Q?4KQwP3GgJV3dVUfPNkB4q2u6RhVC6dzJVIDBvAYQyTa5FCJ59O14DqEXgeWp?=
 =?us-ascii?Q?tst5b41dmk1Am73cafSKqSop/NYHSySdbQPx6RKOniyN8d7BaProfi1xf3J3?=
 =?us-ascii?Q?Iv3CqV10aAQrHzLvFNov6l5wBt5wBJS6T/p8NjvlDCDANy7Adz3IjfW3lYFO?=
 =?us-ascii?Q?UPOPM4KIpx50h9qqQrNi0UKiyfZTzxVKJpsbjCzwPmMuh7cRSTBQoTfhzDci?=
 =?us-ascii?Q?+xjxcSxnMqvsCMduS+UDnBkXFXjPoUbHge4Y3tBBzUT2HLkyt2zEehqXvyvn?=
 =?us-ascii?Q?OYqpsPLKh/XTQXz3DfGoolJ/+8i4hDLls64QB//rhYhw87WvT2Z51mXwY56R?=
 =?us-ascii?Q?aUYddfIO7gl9nAeI4QCmf5lDV+ApdX3NGLtYAnDVVfrDEphG2ZAY459I7Xrs?=
 =?us-ascii?Q?Q2dBt/h+lpg7KcciJswe0P0wy5cOAolqoRPnj3OqjMgAcVKpxM5WjsxYnhJN?=
 =?us-ascii?Q?K7BBY9z1FdiSLSkC9tpMLXxj4s25aURtL0AgT/NVWBV685m60PuF5Sd0cz2K?=
 =?us-ascii?Q?n2QvawbSN7jb0QxYdeGkl7Syz49LOzI/vpzBpOf75txjpQFY2MLK5QY9adW4?=
 =?us-ascii?Q?2VxdZm+w43fHL7usiBc4eOr8DDRwxRKsBJ7gNM2FuXfHpnhCTkNOp7e4TKzB?=
 =?us-ascii?Q?0LpoRd78wHXEkOp6yVHNbuoSYpJND32XXRs+eYdzB1aUfINZc8ShlG7zJU6v?=
 =?us-ascii?Q?wk9aUS19eMPZTlBRf2GWd80iJuOgKKH8Mc7Ft1e52gFbe1SZ11OBlmZGSTJe?=
 =?us-ascii?Q?A/+dk47OUx9G+8uzcunyWS3OS+9lObBW7h3SpTb1sIqwC1HDA3d43JbhEhND?=
 =?us-ascii?Q?E+Jx2QvMBI/Y/gZmnvt/cGPG4tdEsci8+SNT5u9GmkjQ7SJoZjLTTy8YAspz?=
 =?us-ascii?Q?kQjhnT1CrKBIcZfbL1/w+sF/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CGO/9FqGgDsD/r0iY8VsN0gvmHfYMRdIqCrkMsZJxbsDKNz6pAtsVMSgVFlg?=
 =?us-ascii?Q?wytf0ShaqxDTKtpPnVqhAzPO2N8aQ48n0lGRLWufcodCXLwWoHPfe24ygQfo?=
 =?us-ascii?Q?vjKwaSgYS1h28Cozc5dwNCGW/DiZvpWqPxGsUHsPiCPV8c1W79Z0DNWt7+FZ?=
 =?us-ascii?Q?aisvSG7mPNcNUSV9kU/t/Hu54Mz/IFMCrma1o0FdAe4sbpNN6E6pDHw0pAkc?=
 =?us-ascii?Q?bzTkXsOrYebXMhI+pjU4ma+Ft3yYWCR8iKhsFov5bnuEqkSTCui3y7NJ5Whx?=
 =?us-ascii?Q?r8YUKc0bu7nR8fVzkxBX8P5jtZ1upJk/ul7/uLR0TXSMQWEQ0M4ndwWRTIQe?=
 =?us-ascii?Q?OPy2FSfW542oQEp0rCd2LNaz2aPavgqMWfuP1P9GLrSVpvK35tRStB0dZaTV?=
 =?us-ascii?Q?6+mcyt9frj2ELzQl9/+C91H+q5Un29DiUsZtOgPH/T5vdAu+ni2qLr4UGGf9?=
 =?us-ascii?Q?3423V82if76qVsZ0TdYCS3hnn7ih5giqCq8Z1Qe1WcHUjt67X5/x9MvSht3h?=
 =?us-ascii?Q?EbXfIFiRbQf91ygjirN1Pce4kO5z2wFcsCCdnGvKvPfZA4NIPnBVVGVZp8j3?=
 =?us-ascii?Q?rD9fbfobLKb8lshe8GTAlTKuAXCABmNNXlvIWSizFipYTfF0t80/xbdxTxVV?=
 =?us-ascii?Q?Qy3fCXZ1JdM5y4MCr0lk0IXDIbg7h3ev9GWPfKIen3Srk/V2b1hgZb6f8gEf?=
 =?us-ascii?Q?+008dN1KCddXyj6FIuHRwf4wVQPzzVQdUkvmyjNke3UP48AcDy79nBeY4BJv?=
 =?us-ascii?Q?TCwl+gu7d3VLlOYa3tNIq9XoP1QKWCdLHn8whYM4Z/p7iyhoW+MsSopjacul?=
 =?us-ascii?Q?eYJlJvZcuDT9pYP9OadbOwm1+bkxQsVilpD2b/LP1hpONMKHxdFsiyCJlrcC?=
 =?us-ascii?Q?nNSrSw5rWJaZYXZbM9+aIZZIXl+fZaNdl9psux/8wMEhZoeDaHmfpknmSa6C?=
 =?us-ascii?Q?l/NxeyzKnutddFCndA8tZ9CXgfjbNzUWfb0qE/4RLY07PazJPt9z9qZajmrj?=
 =?us-ascii?Q?nxHZmo3F6en1abvohqzodWFEbhnH7xSdgZ3fTOEzVIk3uA9seucoRUu/Jizl?=
 =?us-ascii?Q?kH5LW1RBcK3qqr7VdS1EkNpaD8qUkJKK+0Prbw05sbz0Pav4vYkJxhHdaNz3?=
 =?us-ascii?Q?GEyxdWERY0JWEK2OQG3yq0yna3I5GqSgjBUL8uHIsZdgegyQ+lapMBQfTNIe?=
 =?us-ascii?Q?V/iCjCCTviGclc7SvdP1NpsfdjyXuUYEAAMsS6upb4CIVmsbUeGL+0giKYvx?=
 =?us-ascii?Q?TYHA+0pdS3P4GeQNH/43h2rK8E9Bum7XlW6xrxwir+w6+jLMsp4AVrzE0aI4?=
 =?us-ascii?Q?ZMvpkLmDLWX93A0wJsxCV0oi/mhc5x4PG7CEaJf0GVldrHBMCILH15W592qm?=
 =?us-ascii?Q?sa+fvniBsh2rYnSvHLaqZFljJShV1nMwdcHmI5hCnPEK4Ms+yjOO63V+fveq?=
 =?us-ascii?Q?ZXZHfAgotwKRAB/aLSoKgrh1LNmEWWqfrVG6IHd58u8soslBrgbaGh2QkrgT?=
 =?us-ascii?Q?19pawL/0DmvM3s3bdx+40QdkP2F0P4k6PbBej7O2P3pyJ5MZHNnGzjm6KmRi?=
 =?us-ascii?Q?8M6ZaQuxB+j8zIk2W07VOSgiIt+1Kd/88VJN13B0ZIG3/6OAaVDN/oqzE4uR?=
 =?us-ascii?Q?bA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0015d27-00a5-4f60-f7d9-08dd07e50c71
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 15:24:09.5897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E9mmuzGADm3mpGH8Yqedk3K3TeDDlzN51vEnwUW6u70IrQKYkfqiyN47mo5drUhDCMN6HIk8Boo54qTgF8x9XzUSwxs1NSSJBaGnPvMJ1z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 18 Nov 2024 16:19:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731943456; x=1763479456;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BrVQvvAI1Rn0SjxJozkJGGxVwQiDwRzILjhNyqLoJ0w=;
 b=jjGzLHMZmrHC+HECUh6NRBWj7nE4HBBQVBCBVxgaKMeEyqtsNooVmpMN
 gh4V89yt6gzNLDwoxxu4t7dIYblH7aoo61ADD6Vb5MNUxAntBq82UD0DG
 1fQpzHn1PVqc99c/DzxAqZuS+WaPtWczV4ToxELe3BYHhiDKZladM4d1q
 OX1cQ5dCO2zJqgu0IYc/kh4V+NNXiMG9tUKZeVJkuoxaCyFY43dxD6dGs
 jkzQJY12TIQx/FQP8x9L3FYRHSVJ+OtGpLiWGRT7GgYEhRwv+4DZRvh5h
 xdyIqv0mQzP7XBzdpI7kZ4LU4lbCSgcTaaJ6puea8q6PYj1Bk8UOnfrkt
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jjGzLHMZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: Allow hot-swapping
 XDP program
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

On Mon, Nov 18, 2024 at 12:15:45PM +0800, Song Yoong Siang wrote:
> Currently, the driver would always close and reopen the network interface
> when setting/removing the XDP program, regardless of the presence of XDP
> resources. This could cause unnecessary disruptions.
> 
> To avoid this, introduces a check to determine if there is a need to
> close and reopen the interface, allowing for seamless hot-swapping of
> XDP programs.
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/igc/igc_xdp.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index e27af72aada8..869815f48ac1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -13,6 +13,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  	struct net_device *dev = adapter->netdev;
>  	bool if_running = netif_running(dev);
>  	struct bpf_prog *old_prog;
> +	bool need_update;
>  
>  	if (dev->mtu > ETH_DATA_LEN) {
>  		/* For now, the driver doesn't support XDP functionality with
> @@ -22,7 +23,8 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  		return -EOPNOTSUPP;
>  	}
>  
> -	if (if_running)
> +	need_update = !!adapter->xdp_prog != !!prog;
> +	if (if_running && need_update)
>  		igc_close(dev);
>  
>  	old_prog = xchg(&adapter->xdp_prog, prog);
> @@ -34,7 +36,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  	else
>  		xdp_features_clear_redirect_target(dev);
>  
> -	if (if_running)
> +	if (if_running && need_update)
>  		igc_open(dev);
>  
>  	return 0;
> -- 
> 2.34.1
> 
> 
