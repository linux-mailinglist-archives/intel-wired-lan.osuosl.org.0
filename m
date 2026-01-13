Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D4D1885E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 12:41:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD1661562;
	Tue, 13 Jan 2026 11:41:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lj_SPHRbyk76; Tue, 13 Jan 2026 11:41:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6042F6F5C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768304509;
	bh=/bOUDN9HQ1VlQHnwjs6PqLKSB34xnAH+zn1sOrsJjac=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rMuTBop0d9ubpks7+vjbvc6ByUm9tkfdz1LG9FsdRIzELPJxc4C/3eM01IwzNSRpO
	 MKDiJLj6xzyUrXKbQ/c2pOJE4n+U3Q0WrRht4x8JnIdvrXpKdKU08+4MSxb7n6ytHc
	 T2+f84L0gemp0FM/Gi+lOSuo3BT/cytnJw0OZ7mznXgD5xLAhWbcagMYOCQSZcrTx4
	 nJwivw395qmtWG97fIx20W7wm+zYB390R/kBkUjT7a5AVXjrxH30P9tO6rHxHlRrxn
	 YDcFUgL93JJ14/DZUPtpn7TMbZRGzOQB+/Jk6CFzPDemI6AK6fGjzmEoe8aVDlWd6G
	 ZlIFE16O875uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6042F6F5C7;
	Tue, 13 Jan 2026 11:41:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A424B1CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 11:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 957D84070B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 11:41:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KYZqyiMRmcAb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 11:41:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95FEB403DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95FEB403DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95FEB403DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 11:41:46 +0000 (UTC)
X-CSE-ConnectionGUID: 9KIIP62JRbiCQK343kl1Ng==
X-CSE-MsgGUID: ge9RNdMkTJunP2Rtvw34mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="68592227"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="68592227"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 03:41:45 -0800
X-CSE-ConnectionGUID: Al1yR4cQSzmANIE6DVHH7g==
X-CSE-MsgGUID: DJwHDSNRQHKtz/XGTmM7qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="203993415"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 03:41:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 03:41:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 03:41:45 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 03:41:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KFT5d6sMRyAkGth+1wihVJBQ+8lTXI1njMgfpboefkboF0j+n74ODpri+/+sjK+c2FlBqtZUAuItS79LRxTYrqIzdLkh5aK1ypU3l3YbRQlsFo1kAWiEHWv2QXgvJS9Zg+6iuG+b4nNvj8+4x92c3/56cTSG3EB7PJM5CqauLDIszY+Zj5sCh1qLeWWM6/aHloJc3On/YApKAGUBTOHxa17jvz01ChSZoE2Y5AKMcvn/p1PL97s9XV+tnr/QzNUtgYTpPMKkwQpeWy1nbqwb8Pneyb/JicZjj/YYyXgtlkNvsSa5Kxn4BMMkW1QT9hjn169yuejainitQ5uXzrU5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/bOUDN9HQ1VlQHnwjs6PqLKSB34xnAH+zn1sOrsJjac=;
 b=KI0I7fOdaQdNg7KAyrqTeqDbRTAU1byoGIHCaQtuNZtQA8uLCFjzKRi6i993tsLuVke5sDkUJdZILlaGr0wxqtG4TrlsU3IAQshr05UX4U5Gaw+v86xC8A3DLcFjucp3fze1N2dMSBNT36WXqi6SXabnIjvZOANgb0qMAm9YeR6TAjfUAGEO2fL0pPjkg2Y7H50fM+zFgxfc540AEKlT/pYRYgIsifXdJJQqtieJ5rjLCQk2AWxQkzU5Ft+p+Pghfvv9SSpHPpdItap0pg+EMTiBI5YLeY9VIEjSe5O54lPsK28E1E6sUhaDcVXU8NE355fAWYL3sOIJUQEWWT4ieQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV8PR11MB8557.namprd11.prod.outlook.com (2603:10b6:408:1e8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 11:41:37 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 11:41:37 +0000
Date: Tue, 13 Jan 2026 12:41:26 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vivek Behera <vivek.behera@siemens.com>
CC: <aleksandr.loktionov@intel.com>, <jacob.e.keller@intel.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <sriram.yagnaraman@ericsson.com>, <kurt@linutronix.de>,
 <intel-wired-lan@lists.osuosl.org>, <magnus.karlsson@intel.com>
Message-ID: <aWYvVWG+AXUtpBgM@boxer>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260112130349.1737901-1-vivek.behera@siemens.com>
X-ClientProxiedBy: VIXP296CA0003.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:2a9::8) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|LV8PR11MB8557:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d61fdc3-c27a-461c-de2a-08de5298b5f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sa4wLNMDUEpE5zKUDBGrOgGqjbygzJudZ55jHXXfIfrxWL4PCub8zBW+4JKc?=
 =?us-ascii?Q?zuo/mtFhPWq6yIkAShnHUctaKkgFWHhjupCisYg22Tt2/JwOkU2R/IAWCB5R?=
 =?us-ascii?Q?7QEb5oY3f8oAhfhfmca9NGVmA3ipr5cFDUM8liZdPn8fkHQn1EUCGS3V8xYQ?=
 =?us-ascii?Q?UuNemz52GNtTj1gRsksWhZwQ2pXf40n6wXjFQwebDBS4VkclqwYWYcQQ9RN5?=
 =?us-ascii?Q?zaaBt4/LoKqkD8uENVn1uVepDCI4JGk3pDk7pucCZinEAeuuxM4eeuPeiNFM?=
 =?us-ascii?Q?ajGchWEvy5ClIpADvJgQuxj0wbAsw0ezDeXAYqr4UhoWs74hnOTYKfaAxKFd?=
 =?us-ascii?Q?ghujIfczOFU/5LTx27IuPryJwrjKIZN0kFPB9y1gEHKqHnfUklQ/km0uq+ap?=
 =?us-ascii?Q?qtEMBmsrQ+NjPe3uEBuaeRajC6n1yhztRXhvhEusQsuBMd1xlfS4mvu3P+fC?=
 =?us-ascii?Q?YgkjpEieJrxeUEGOcW5+0PFrZLU0bchYCM3GSuIY7hLAKuu4X/zlw6vAs07X?=
 =?us-ascii?Q?oD5LI0momPofJQ0LDhrpeG0MG4SKXWFJz0LL+X2NyYUQDifcBbdfaUGkw+F3?=
 =?us-ascii?Q?HWug80cCTxb7MnSmA9BoVB2BrlIG/kbOzhqgfiTb9z1kpXFBZ0f2OsQvbKBB?=
 =?us-ascii?Q?KnSa1MVc86PHsUcN0PTCLkpBNTkqbENRvGd+JWLm9CaIXP8bHRkPu+mdi3tf?=
 =?us-ascii?Q?wrF9uUfr71pr8HNPSzhQHHA6ASgviqCYO972wT7Ks7O54IUipxBoLSyb+v4c?=
 =?us-ascii?Q?YdULEGTpon0/NJtUGATqwt399FDeWtjfdQyTNyjjT8MGyaMup5skgfLIqago?=
 =?us-ascii?Q?l1wQi1tnag7e+D/jML/QVA8GLo/rvgMHlHBq+v4B9hP3qHJqN6Wsp1t7Gwzo?=
 =?us-ascii?Q?BAGTslQkIelTKWvP3X2pxGiYE59MrZNl7O5bTDoiUhMfzX2aRUYsuYCjOu/5?=
 =?us-ascii?Q?qpPlDsbNzrrQPoAZsIzsr7zWiG2BGqdOFFiUh4eCg3XNg6owtdXwzjGfb1R9?=
 =?us-ascii?Q?AW7+X+kcwgmXroMK/oEHdI5KgG1JRTew+JSlTm+hNksozlkXLcBBEGeNrCnY?=
 =?us-ascii?Q?CxHWMwHnHmxbZolL+ajnaTFQ40k6qAlAf7wKKF+ZCqdS5G61+0rIgvsO3daU?=
 =?us-ascii?Q?wFMqMSKds4rzmUQ+7jR7dFMIj8M3CujL6HbqKvLidphNPsOPJK/zvkQ4uYH8?=
 =?us-ascii?Q?SJKQ6I7+MRLcx1A54d0aQf0oT+duBebfYTGPUh89RKvO/VVSWKeyIju6xzHc?=
 =?us-ascii?Q?a8CyxttWyVQPt915Ej0Vo8sAm8WJrCLPbUM4mSijGiIfZli6mSHCUlgeGi0y?=
 =?us-ascii?Q?AC5Vr4xyuu1HoBKIb4Xmm6rzyAQ4srVYNCPYwJArvIJw3sytpz5v/sGeEY5m?=
 =?us-ascii?Q?y/agp5S+jpBwT9hxpNaH1Cbd5hmiUOYyrlPIm69SIrW56iNALElqBE71jJpf?=
 =?us-ascii?Q?1pa8W8F3GTlQCERtl9Bym4hwZ5YuFZ1xAvwz4IXUaWlMDSYGad4jow=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J60FivWQh17MaFXpbifkAYdejNptQOG1IFBkmglZvSMVa0FFSvl3LYZGOy4h?=
 =?us-ascii?Q?qye3SPPxGTWAg/eQ2xfoOEAegMbLo8oZcsa24XJYL7YCoFB1LJYgeRmUg0vP?=
 =?us-ascii?Q?IlkKr/1Rvc/pu1rlNw4pQD23E3jVWwEZ3O7QK32mb92imVRKp5p/ipomGIzc?=
 =?us-ascii?Q?DanIXlJ+0rtTnnY+TTFJ/FO8W0bHprxkHQN+iaSgpoDpgY5Soa+mdJcGKiA+?=
 =?us-ascii?Q?18koNEKkZ2R63y3YsDJ3X5cdEXR7ioGjbjhCCHanzeHQy+HMNeU4H/gGvOCz?=
 =?us-ascii?Q?luIcieEWKGaG57VJv0jsDfmDfKc5fgPtl1lNyTiw2uVe2VZwXK/eoipIe/v9?=
 =?us-ascii?Q?6ww62snMIgCXWaB7EqFl8EpJHa72Fo5yDvbVNQ6KprsCaPrkM63LaKnPhVFN?=
 =?us-ascii?Q?iKgt5xCNUCfrgdhy8ob4AR3IWi9qhHvwItLVY3mDNh5iamZ0P8KYGT5QDkMz?=
 =?us-ascii?Q?I3R/q53XL1EKvZTP5ds+Eqxe5hc299npxXCviEC3mcoGaUYEknZ/cpZC3p9d?=
 =?us-ascii?Q?vUIfoAapo0Nz/sYmQbKPdlDhl/jOPqzKKkZClCgfHPDKsckZqZfBzIunMArK?=
 =?us-ascii?Q?NoGMIQ/VIntu7VvWa0pbsqKT9Mv61Zto/RPA7wXh1PhNhQveuxCX6kOcKRBI?=
 =?us-ascii?Q?3JWfi3Zu/3My26Z44jYuxIOjA4O0jlR4lf+/+xvaXe/C4gL266uOfKlYgS+5?=
 =?us-ascii?Q?dNS4koTiii84pvfb9OCd6SEn9kKCcRig2cSKQlhE64eehkLAkkPWKyyR6/Hq?=
 =?us-ascii?Q?zZDgS9swKvcwUskPEzG523i0ujJiQAQrlf7DEp94qxsrtF9hfjnJ07BkfI1N?=
 =?us-ascii?Q?9McjVQauAmoU4cwoxsEiDpfX9L/z/uqV/QlyPhWAb157n4cKghoNncnDycJn?=
 =?us-ascii?Q?NhYK/GJ8bGUxmclZGv9wea+cQyeaQDYK7MjM0tL00KAUEZrvy+doRE4fetWJ?=
 =?us-ascii?Q?L4gw4t1mxGmBC1Yzj1k+KzjgGJxHGDbRxP4KsXiYf1XEKSKSioDPcIfn8Lxi?=
 =?us-ascii?Q?K5yJvCbE6vK1D9CWPPi4PoBGTFBN28Wwp1d2F5XI77gshWanDETASM1D988Q?=
 =?us-ascii?Q?+Gp3TZFuHSq180KVd1LRZAOGfjPMCJI1k3hKqd/xjMbFkXYfuyVbyifGStxQ?=
 =?us-ascii?Q?MbDXsvxp/To/NEOjO3NhAcij/e+itAA/yEUaEKOH+c5dKgYN07dNazv0aqWy?=
 =?us-ascii?Q?dbd9Y789sRxppPWh9EUKleCELgqqgiU/Ol6uDMVdoNxxd3D56Bp0zfemrSAr?=
 =?us-ascii?Q?rueZRSFytaR22Jue9Zgx5tFuPOsBj7qveIK+TVhYusz2WXoVGuwIFh0T2ouw?=
 =?us-ascii?Q?L5ecCZWR6XrfkC3Jjc+sXJVlLClihg422at7caaqL/JkyfHs4wMK7wgJGTDI?=
 =?us-ascii?Q?b4t0BtFAnUA4G2SYTjOHJCv0fHX1AEzAQK/fxsPDpbvyeVndqNcNrNUDe9SN?=
 =?us-ascii?Q?J98UZkH04DgniXZSR+Db2adMUw9LyKhNeTwGyXoUYRx2DX9e1Wl5gEDU9ZIY?=
 =?us-ascii?Q?4z3pqRa3YR0I1UWuMcuYmAn+xDFsORJZAwNI682HyvVphzbqbjmYUY+mV7WV?=
 =?us-ascii?Q?/RbVgcwBMsCGnXUnMSizs1m6qDp5Pmj3vPOKFXKXh+LZjAB/MJEFoC9XZ658?=
 =?us-ascii?Q?jEQPfHbNyZC14J/hXE7LyTAcggyqkHb9F+jnFH5iiAePm3qoZt8Fdgs5GepN?=
 =?us-ascii?Q?+7xdeGKQOTq/XoMgBktQHBDLZUg4Xne02Dwp/6Y6dRMJwngQ/twLkdRaoG4b?=
 =?us-ascii?Q?78OzpqwBlbKUogUwKalz1P+gdtNEu1A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d61fdc3-c27a-461c-de2a-08de5298b5f5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 11:41:37.5654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bsljLXG+em5K7S0rL4kEYXG61RZp+9Wo1hX19NXoLQ3m1kmQtsddvQ275kokNRbtP3YVaH2a4HIe9Vo2CPyO7Y2WXw+7S13v4KQ7TxXXtfQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768304506; x=1799840506;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r/2D+n1J3LIWTgrLcyqftkhOx43/HSuRAJuEYL6RYnk=;
 b=TKHHbGYlNlP92N4qjmiBt407sNApHcsm3vHC2roWsOq0fwK4B1ydJLtW
 H8yisDMkX20b7m9XAQfDuhs6qe7b3LxlXi3XERJThGUu0mwYHj3ortaa0
 aoev5fbJ3ShuOnY1fwsCjmbtpnpJzEfYMNtKnfoX8jfZDzjUZRnS8Ns4u
 w40fvP2UY4Xc2tt6G72CyoY8N4TPwkPavg8z/Q0ya9gz8BSKTp/dSsrKq
 GD75p0ncQoXDqnocmuThtew6E4wGze2kiDFaLGqjzigj1gq0PttrMhGG+
 PY6J2LPuPEFRshVWUoBzv8USfAo9dYofrE6r7f5nHK6Dvz5k6ATE4Po77
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TKHHbGYl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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

On Mon, Jan 12, 2026 at 02:03:49PM +0100, Vivek Behera wrote:
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx queues
> to share the same irq. This would lead to triggering of incorrect irq
> in split irq configuration.
> This patch addresses this issue which could impact environments
> with 2 active cpu cores
> or when the number of queues is reduced to 2 or less
> 
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  4-edge      eno2-tx-1
> 
> Furthermore it uses the flags input argument to trigger either rx, tx or
> both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation
> 
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
> v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/
> 
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch
> 
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> 
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
> 
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queue pairs
> - Fixed check of xsk pools in if statement
> 
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
> ---
>  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>  drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
>  2 files changed, 61 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
>  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold */
>  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted */
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written back */
>  
>  /* Extended Interrupt Cause Set */
>  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..6e51b5b6f131 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  	struct igb_adapter *adapter = netdev_priv(dev);
>  	struct e1000_hw *hw = &adapter->hw;
>  	struct igb_ring *ring;
> +	struct igb_q_vector *q_vector;
> +	struct napi_struct *rx_napi;
> +	struct napi_struct *tx_napi;
> +	bool trigger_irq_tx = false;
> +	bool trigger_irq_rx = false;
> +	u32 eics_tx = 0;
> +	u32 eics_rx = 0;
>  	u32 eics = 0;
>  
>  	if (test_bit(__IGB_DOWN, &adapter->state))
> @@ -536,27 +543,65 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  
>  	if (!igb_xdp_is_enabled(adapter))
>  		return -EINVAL;
> -
> -	if (qid >= adapter->num_tx_queues)
> +	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
> +	if (qid >= adapter->num_rx_queues)
>  		return -EINVAL;
> -
> -	ring = adapter->tx_ring[qid];
> -
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> -
> -	if (!READ_ONCE(ring->xsk_pool))
> +	/* Check if flags are valid */
> +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
>  		return -EINVAL;
> -
> -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> -		/* Cause software interrupt */
> +	if (flags & XDP_WAKEUP_RX) {
> +		/* IRQ trigger preparation for Rx */
> +		ring = adapter->rx_ring[qid];
> +		if (!READ_ONCE(ring->xsk_pool))
> +			return -ENXIO;
> +		q_vector = ring->q_vector;
> +		rx_napi = &q_vector->napi;
> +		/* Extend the BIT mask for eics */
> +		eics_rx = ring->q_vector->eims_value;
> +		trigger_irq_rx = true;
> +	}
> +	if (flags & XDP_WAKEUP_TX) {
> +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> +		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
> +		 * so a single IRQ trigger will wake both RX and TX processing
> +		 */
> +		} else {
> +			/* IRQ trigger preparation for Tx */
> +			ring = adapter->tx_ring[qid];
> +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +				return -ENETDOWN;
> +
> +			if (!READ_ONCE(ring->xsk_pool))
> +				return -ENXIO;
> +			q_vector = ring->q_vector;
> +			tx_napi = &q_vector->napi;
> +			/* Extend the BIT mask for eics */
> +			eics_tx = ring->q_vector->eims_value;
> +			trigger_irq_tx = true;
> +		}
> +	}
> +	/* All error checks are finished. Check and update napi states for rx and tx */
> +	if (trigger_irq_rx) {
> +		if (!napi_if_scheduled_mark_missed(rx_napi))
> +			eics |= eics_rx;
> +	}
> +	if (trigger_irq_tx) {
> +		if (!napi_if_scheduled_mark_missed(tx_napi))
> +			eics |= eics_tx;
> +	}
> +	/* Now we trigger the required irqs for Rx and Tx */
> +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
>  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -			eics |= ring->q_vector->eims_value;
>  			wr32(E1000_EICS, eics);
>  		} else {
> -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +			if ((trigger_irq_rx) && (trigger_irq_tx))
> +				wr32(E1000_ICS,
> +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> +			else if (trigger_irq_rx)
> +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +			else
> +				wr32(E1000_ICS, E1000_ICS_TXDW);

My understanding is something below would be sufficient. Bits set on
E1000_ICS are not handled in any way so we don't have to distinguish
between rx/tx, it's just the matter of irq trigger and napi schedule.

-----------------8<-----------------

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..0aba7afd6a03 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -524,12 +524,26 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
 	return nb_pkts < budget;
 }
 
+static void igb_sw_irq(struct igb_q_vector *q_vector)
+{
+	u32 eics = 0;
+
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
+		/* Cause software interrupt */
+		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
+			eics |= ring->q_vector->eims_value;
+			wr32(E1000_EICS, eics);
+		} else {
+			wr32(E1000_ICS, E1000_ICS_RXDMT0);
+		}
+	}
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct igb_adapter *adapter = netdev_priv(dev);
 	struct e1000_hw *hw = &adapter->hw;
 	struct igb_ring *ring;
-	u32 eics = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
 		return -ENETDOWN;
@@ -548,14 +562,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
 
-	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
-		/* Cause software interrupt */
-		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
-			eics |= ring->q_vector->eims_value;
-			wr32(E1000_EICS, eics);
-		} else {
-			wr32(E1000_ICS, E1000_ICS_RXDMT0);
-		}
+	if (flags & XDP_WAKEUP_TX)
+		igb_sw_irq(ring->q_vector);
+
+	if (flags & XDP_WAKEUP_RX) {
+		ring = adapter->rx_ring[qid];
+		/* for !IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
+		 * been already marked with NAPIF_STATE_MISSED
+		 */
+		igb_sw_irq(ring->q_vector);
 	}
 
 	return 0;

----------------->8-----------------

>  		}
>  	}
> -
>  	return 0;
>  }
> -- 
> 2.34.1
> 
