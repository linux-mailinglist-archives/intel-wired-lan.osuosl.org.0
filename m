Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1931BA9AE64
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 15:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCAB941706;
	Thu, 24 Apr 2025 13:07:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFisaXpnK0Bw; Thu, 24 Apr 2025 13:07:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23E844154E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745500033;
	bh=qJeAXGw+qvLNvNp8Sf3eQbyk9mhI5G0rf4WcEfqRnTU=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SYkUBencsjJyd6Q18v4k8t+ZYHwJ18FmtrvHFx6pe7gF7GUtQNxt1U8sU4///QHjY
	 8/7+HpEvzoMLbMFM9Di9YDSjwAKwTBXvVLT2QrjfSl7LENkmuUrXiXB1yweLLuSPtQ
	 0TUn97md0x6Ztwa/21Z8A2PDPsk78pnbO28NAdcuDt9j78vmJHGo9MpgfdYE5lYSWO
	 0kaFT7YEYPVGpD8sa626LOn5hcmpwEbXYRpfbvOuymFUJJYgM4xaIn61MrGoLnogI8
	 gO7Q0tUovnkGczgPh/Yt0FZmvSstIp8Zn2UKFqJB0F6G4LAVuj45ewDty4eld+O6lC
	 yKjaFF+8NJbcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23E844154E;
	Thu, 24 Apr 2025 13:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B2342A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 13:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B94640DB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 13:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4eAyWp_yZ6D6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 13:07:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 990BD40D6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 990BD40D6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 990BD40D6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 13:07:09 +0000 (UTC)
X-CSE-ConnectionGUID: 6LWq9PVmQByS3JC8xbTiWw==
X-CSE-MsgGUID: GUmwm6uXQo+fGsYdZHazXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="57328430"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="57328430"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 06:07:09 -0700
X-CSE-ConnectionGUID: rpejGyiRQRWPfI6KQUvbag==
X-CSE-MsgGUID: yMN9iBEhQ5yHPzuRipRI9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="169828972"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 06:07:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 06:07:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 06:07:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 06:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tco+TD7uySu6dLvpj5M6uMCCJ7v7l5RZA8YvqgquSvD73xNB3UKaEghLyIG1iWzQmStFxBiWCqEMQFbdnlxniORwDXH3DvHTksbiq9AijPE2HdsPfa2QIhu2F5IPd2oVp1NOinlf7ge0+VAG4uQGsfwUszxxAbuGxNSy5PeiwDTrbP07r7BnKvkpQvpXiDAia7sg8wUPTg45L80s7abieaLhxHhKhhTDXNoQIJVCq+8gBQGQROyhRMQxS7fRt5zJIq8ZjyS30zhLfVtCuS/RDLr1BrQErlg9DxI0f0yuIOAbqz3o5RT3b4snM61eNiI9rhpRDECgUH4FwsF0yzVM9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJeAXGw+qvLNvNp8Sf3eQbyk9mhI5G0rf4WcEfqRnTU=;
 b=RDI2fQG1tGsifLlR3G6dHhu0t0LpesS5HpfEj3abxcOEj2x41rG5x2G8Ammx39AADmanuU2Vs3ut2VbwruCgY9JjfWObsg3tDgG9dMfhXuWOO65FDAm9QtGma2A3xfW4ktVeZYRj7GOFYQwoNjqAtVBRmTGMHnZoC9nMIL7dY0EczkQ9tdeOZ/X6w5X9hP/WCp5pvcuACefJ/4KII1QFtsetmah0edryumYeIojTzMpXtGXgki1wgVqep2DDsBKdARZEL5qMd2pjAfHUd91f+v3mFmmvO6JRQtyEAUp/NvxnECBpHczuMHtngRLL2muTSytYOw4z9MUMcn+FrzksYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB5792.namprd11.prod.outlook.com (2603:10b6:a03:425::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.25; Thu, 24 Apr 2025 13:07:02 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.8678.025; Thu, 24 Apr 2025
 13:07:01 +0000
Date: Thu, 24 Apr 2025 15:06:49 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Message-ID: <aAo3aY3exP3XUNgu@boxer>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
 <20250415172825.3731091-5-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250415172825.3731091-5-aleksander.lobakin@intel.com>
X-ClientProxiedBy: DB9PR02CA0004.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::9) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB5792:EE_
X-MS-Office365-Filtering-Correlation-Id: 038def5c-352b-4df5-86a7-08dd8330e725
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FaCx7BTNOVX7PO/3ndY0UewIb/5ecv3CxnxuhvCwU/uCGN7UE9EyIL1AEBqI?=
 =?us-ascii?Q?DLidtRVuE79N7EZtHwVaQgxUwRecq8KGTJbBK3GlxQflPUNpTnUnTrS5b0O+?=
 =?us-ascii?Q?KJ6ZaD3afQcuyxpYljCI101+JdeNRAwrH1gjrH2kme+f7B1TLRj9tOKa0a/T?=
 =?us-ascii?Q?WgrkfYiCOQJXFwrZc9263+u35of7fYDCXW1MUTLeuT0qQCyHJrW4PmtCWj5Y?=
 =?us-ascii?Q?TnJw67vbCSxYdlZkC0bp4u+xGuc26Uc71HzvA+wEeVkm42oTQVP1iqaM/Zpo?=
 =?us-ascii?Q?XGnoMpC3HKGD5OiOEs5TmdTs0QpgeInYGir4KNdwycy06JFgATx2WxUR3dtL?=
 =?us-ascii?Q?ixLaMK2PeZfhs9UAR8TueUsKW3JZYQnqJW+n0aM5kpQH+rry+qUUDCRShbmV?=
 =?us-ascii?Q?X2m+2W7BEkKx0PSHuc6/Y19Ak6lPXTOF3fqhBKmYAU92ULyxbRHdZT1+ncUR?=
 =?us-ascii?Q?BjHQJSxvssLJMVjgc0h3wt8Qhee/1z9aV8cZq/XGWU3i2us4NAYJB744mXsE?=
 =?us-ascii?Q?Cod1buzBSbEmKSCtcj5KSPSDMLXEXve4ZKqwWQasmK+ufSCJmrVmG9JAF5bs?=
 =?us-ascii?Q?bdFP7LIUNP1LL+G7/7moOCH/QtuWCDNsdO2lF7yW9MN00pd989KwQ2z3ICFG?=
 =?us-ascii?Q?SwRfrVee/2X8SExL8s6EAfxi03gzJ8qJYyca0w6bDcFUH7pY6pREPNs3woDF?=
 =?us-ascii?Q?umxopXo0XWk6DM6ZFCXqK5GJUaP7dK8S1VqaYf0yPwic1D8Nhexz5IG7Es/r?=
 =?us-ascii?Q?uz5YVMu+JTWLrj2Ek0aVPVvZ9DbET+av/2E6gxeblXRmGYXYHRTFzakhhGCb?=
 =?us-ascii?Q?4E2Y3aPTrTVK4ZWGr3bdcXcXsO2xTVZdhoz999IJ8E+B9jcDtSvZ0NtFA3hs?=
 =?us-ascii?Q?pSDzD35lXh/M5ovp1xqhcd6XU5qUhj11c+J8IouNzNE4EugLxw2HH/650WWO?=
 =?us-ascii?Q?KFKDVcQsgs5lCRi7tb+NeTsmxhS7s3Fmc5PB9etSQAr/M6JKaAxSW7Mq9bdg?=
 =?us-ascii?Q?Mld4W47JMdOkxSFVY9dcJAWLzFV+a2JuxeeXTQ88A5yD8LzYTkBJrZ5MtWY1?=
 =?us-ascii?Q?RAtboDTuc0jPXxdk2YoqT5kVfIVf0ArG3pIdxJDmtI0P6MGcnDAk8wD0WajS?=
 =?us-ascii?Q?CL+UZ7eJTFbwr3HwYlACewSnd+XFsAg1mWaeRdu4nPDdR95GMy5Naam4YW6J?=
 =?us-ascii?Q?WWZxsdu9aUihkw74KMphch86zakTJQEa832z3J7n1wbz9gctVg7qrZNdbb+4?=
 =?us-ascii?Q?hn2h4dBJT/GOD0ilu6zyWAk0Jn1JGnqDOvtzElga09CehmbXqS0cD8cFxv0l?=
 =?us-ascii?Q?cxIZnu9BDup/Q0/8FshmGZ8yS8CitIzuO/Of1Vl/b0s85OzNwi6kpJLWk4T8?=
 =?us-ascii?Q?hki0xlauu9L1vw7TNgrQnUPTkShuaWK0Ohd/s9Cor8Almnqwbg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WNDJSwxJjaTVjbF987cyujSyQCsrmnSQVFHn1ed/VeASOitsaIR2/WXBtO0c?=
 =?us-ascii?Q?cuOBQrfsHHrfnti/3iP/Vck7H5RqwfSdYbNmvRlY+UrCl2qDDIOPTwiFqdPe?=
 =?us-ascii?Q?8+mldFSun9w92U4N2HAD2cB4jN7bR8eSd9ArPJ95G/k5h0Z5UcbDyqQDUkzl?=
 =?us-ascii?Q?5wmVclbeirixreJnSkZF569FdeppvE50zDWUS8ksr3NRGf6zgjSNg1g3rOG5?=
 =?us-ascii?Q?Z4o6SnCiukEuggsP7SQMRZ0fn9oDt2n2HpDtCuK+MBBIw4GIStWiR8T4quk+?=
 =?us-ascii?Q?dgbcN1IrvnUaWaOxBxpBm/9uD5g/EgHKdAppYqo2AabcwEyF4D+DDNYxXbKi?=
 =?us-ascii?Q?76pdt9CsfLhBLwYtUJdcTASqru8O18B5W3l5Znb3CetEGN4gVrm53Rmyb3nc?=
 =?us-ascii?Q?s+n3haN3eg/jj5f2b+96GIy5+XNBc17kNDLy+BD4FHUr8D7qGsTJIuoNEZPc?=
 =?us-ascii?Q?5MCoon4qHUPnwhKiCTfpWR8z56x3Jg8LGcJnc3DFeK1mmgCBBlLqesWRR8F4?=
 =?us-ascii?Q?i94X1zngMnr4gHzp+unvmIJmYDGhAa2CxYctrsbSwSfWzWW/EFr1wLIzPsZa?=
 =?us-ascii?Q?vQsSRuj9pmHOGIM1WoV20sNvkMfYevXh6s06v8blhWMXV9hxW0vxgV0kWudt?=
 =?us-ascii?Q?2s0mT5hnX1cJ4uhET4Ksg09LwrPdGr+1u03j5yM/Cwa4FNAu8FYaJeI7/NS7?=
 =?us-ascii?Q?ovqDN3MVYAY2n0y5AeNSzRWA/o3qBHH+tRx0jhCsbOO/I+VT0tvi/RB3BIQF?=
 =?us-ascii?Q?f0a20XRo3pen8Mh8znuhUqCAAWN0uc6zXhxEWoTz59zNamq+q/YEDPTRA7yi?=
 =?us-ascii?Q?tlOJ/n7HGPbIeqJMgpRVL5AQzO85jUvas59SRxPzToGfnRb4W1gpFMEL/qIj?=
 =?us-ascii?Q?sgZVViz86n+Ch7ybHCwDFLTcdkDScimXdT3vVi9QdiceNlSxQfuh/rYU1WW4?=
 =?us-ascii?Q?qJJgrxLFsGlMd8xVKo0AIUhHHeSLC33onhJiZoi/wU4VEADuwErsuF7tj6RY?=
 =?us-ascii?Q?VqYi7uLM0RtI5KF65c53TLow0f2sp8AUBCX2/ifSPddNLGJNGtud07ek+HQx?=
 =?us-ascii?Q?Ng4t5mkCuetu5Z+69Zb5oRLfBAU1uQYwlf35UjEQWtQndlT1vk3ciVpPg4qS?=
 =?us-ascii?Q?6NlLSJYcAxzKxQA3sBU23QpNvX+019dbouqYP1Q4eexnorIQuVtm60/Pq+Ys?=
 =?us-ascii?Q?ARfZD3njKIKbYG8VBv6o9A07eHgMQXpjD8FSrYHeEIYUUvGrkhNMSz0L5NS7?=
 =?us-ascii?Q?KOYikjFOp3GIV000Dby0lDYOYLPdx5raIWVqzkAi/4OEKMrBaC0mWFk0a37o?=
 =?us-ascii?Q?o6wppypEWVySWLavsud71G6Q51ICMnCISaRRMrBU5x1ET07ZYFDSn/X4HJxp?=
 =?us-ascii?Q?SXEzIztU5Eg9ZLgW16KGif7g/A+Qna0dkMsc/mq5HMAJDzVSNdCFzN2OqLQz?=
 =?us-ascii?Q?wud+5nTEiAJDweqTRaftPhDhcmpUXyNWfHr5qv2/mFBdz4Yq4iYeLqK+XIJZ?=
 =?us-ascii?Q?5SnktBHpafLbMdjsylwgZuQq1oIc3MVCPIMAIIKAiftp35P0mLoqCyay8yiW?=
 =?us-ascii?Q?QJJz/BoDMAuDA3uDDm/ku1+mMUC2XQkvD8xj148RBt10EaRswZ1VABgb8E/R?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 038def5c-352b-4df5-86a7-08dd8330e725
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 13:07:01.8528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zOXERBJtoMLmJwW9OtiqzUlrBXspPNQUHel+8S6LpM0rwhYPJ5aTXUPo/L+Mc00qiMqB2OMOfx28qnPB8isE/n77+4/Ejgfm4/sCoNBhywQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745500031; x=1777036031;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RMlc2JAxQBCMQYVIEb4CCCKiUsEWoMKk7D4GOn5+XY4=;
 b=j2nv1Rl+5OOfdRWLSocv0u/4S4XSCu7h7CjL6tmmN0IqZaMGCjdD6DH6
 u4JbXnTlX3rvHxZEW2ieuV+GxalueGU7FJx+VX9qaLnzVs0dLrCb2LgUx
 x6nLSFmovqxkOi8cB3dpYf/v8BfekrwfOnJ0LYjc8cWpfIBxV+3jYRybH
 xqr5sxnWh5W4wKMQ8A40o23Oux5yDIO2nCtellx7Vsj2O0l6VEaTxR+3K
 VAHJ6yxbRqq5VH3h8J2ESL/NG1j0zHekS8vb6YeuElTUkKMbqfuTcX3KK
 JmBh8d2beUmGJAn0ewFls7yXGhXNn0XbGBySR5BHRXa/Oc4edUBzhwj6I
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j2nv1Rl+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 04/16] libeth: xdp: add
 .ndo_xdp_xmit() helpers
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

On Tue, Apr 15, 2025 at 07:28:13PM +0200, Alexander Lobakin wrote:
> Add helpers for implementing .ndo_xdp_xmit().
> Same as for XDP_TX, accumulate up to 16 DMA-mapped frames on the stack,
> then flush. If DMA mapping is failed for some reason, don't try mapping
> further frames, but still flush what was already prepared.
> DMA address of a head frame is stored in its headroom, assuming it
> has enough of it for an 8 (or 4) byte value.
> In addition to @prep and @xmit driver callbacks in XDP_TX, xmit also
> needs @finalize to kick the XDPSQ after filling.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
