Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC180956B8F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 15:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 593B160808;
	Mon, 19 Aug 2024 13:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lTflkHiJWpBq; Mon, 19 Aug 2024 13:12:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7131B6080B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724073131;
	bh=3nnFuZ1DAv0kGXSoU3hbDxkriAo7nphSnIqamOnVXs4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zZMJcTmo1IfJUi0vFhB5abu+jOLjotz2GvKfyBBpjg80KvQuFO2+I+Vhf3FG912mJ
	 zHefNFt5zoYNv8cEZjUJKuymjKkh35Eyv5gR0/x/6pfdVq2uyi16zQri+2lK/5qx24
	 ZJcZTTjdGuIHXQzZGTJSEU3Al3MFF1tGLfMbTqN9naO8YCNES/h7fiJGlEjL/6zG77
	 LJBFiDb9oJej6uPMvgytJuuKabxQuTpMZLE8Vv4li759B0GdKJyfJRdnATUUxA14SK
	 oDjVqB3+a5NyFEr6mQMh6Fgbx+kqdJ2YJwPcokH8zgLOaI/otfaGLh/hZRQmzWe11J
	 l/nVALf0+1Yiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7131B6080B;
	Mon, 19 Aug 2024 13:12:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE14B1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:12:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7620404DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:12:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YP0Dr05qsfSR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 13:12:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C5D06404E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5D06404E1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5D06404E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:12:08 +0000 (UTC)
X-CSE-ConnectionGUID: SGtHdVYQSYugjKvmE1nNsg==
X-CSE-MsgGUID: Eg9YfpUJSHKqUJS+Te35kA==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26112966"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="26112966"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 06:12:07 -0700
X-CSE-ConnectionGUID: w1ICrDP5Td6tRGE5JI8dgQ==
X-CSE-MsgGUID: ECcEheahSMaJZMIZNOsUGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="60348045"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 06:12:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 06:12:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 06:12:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 06:12:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a4VbXg8rIVZ4uNmCC/5GynRVMXB1TOcH8uMlWQfz/xTxj8airx0C0KDKgfQ9KXNw1+D5dCOafXoOboxDNQ2uyxpi+G/mJMcCA9E/Pe7+kXWD0R65qJN/E8muM4R/LrBIjysqW2JeLEx/slomOguNEfotyMvDK2IETiH4i15+rwfsyx0CHpjgh1xS/nlVHizUldReoPSUEZ0MGCmbNSt46N77co4MHQpUsVoZJr2D+ecGebTB48SlM8A35zb7J0KYebiEPkftzKiNchluOoolZiGeExim9wnZwpk5I8ZdQb4HWF2F9vAMJ6n8xV0CJ5WryFf03iGXpMY+L/BJo3dfmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nnFuZ1DAv0kGXSoU3hbDxkriAo7nphSnIqamOnVXs4=;
 b=KVZgzcroEp0RXGAy0nNYWBAFeNrwcN2qTgTQH8tcx/9dqQgLsJEbgaVjDVdi/QcTCPSr6X4xx+Y1lSP63awKyQ3nPzgkVK3v6RzdZCI0/XFRfd+Ygonmf7dA5bdrp8dm16LUvWk7cDmDdB8PDkq9s8ml0XFW+wvNSurcDWIz4C8NAkewTxDDaAxoVSlgU8/PX8QsIauOzNgWrluJ6PPelgTzdczYAYuSz8VOZQ05W8zfi5VCtnQMtCteLReWuyr29lIVTE2paNQoSUzzbBV09HdcOMZ60fS2BOK2LvIzkxQ7PXG9TvE1+wrbuf4rqkYew2ZGQzbk/t5zq9Duc/LzkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB5054.namprd11.prod.outlook.com (2603:10b6:a03:2d3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Mon, 19 Aug
 2024 13:12:04 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 13:12:04 +0000
Date: Mon, 19 Aug 2024 15:11:56 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <ZsNEnGoztcCzT8Mq@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-3-4bfb68773b18@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240711-b4-igb_zero_copy-v6-3-4bfb68773b18@linutronix.de>
X-ClientProxiedBy: ZR2P278CA0039.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB5054:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cc8b253-f5dc-4a29-b1ba-08dcc05084f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MLDvx6rhTC8rieyJzAU5ArC2EncHS7JYYZVgP8zLacDqy+TdZlfOMFXBClsv?=
 =?us-ascii?Q?wbOPsMm0/xLIXnbzvEcd5QzOenW0IXN5X9j0hBbN92UhWs1nZU+0FeSNgeQl?=
 =?us-ascii?Q?fw2fu9bJgvWqaS2lG0q/rap1PRFe1ClyzeJnKc0mqyQEMx5E+7wozBqsVVfL?=
 =?us-ascii?Q?UxsN9COLpWbxU7HIpbX04hpfhyoyJZ8UMUqktk/D1shb+rBRFWUNFOr0vpfK?=
 =?us-ascii?Q?Ssilo72D3i08NFqMkVep7PBtA1ZK32YuSW8JC99CfG8Q7QTDnq5HdoHkJvY3?=
 =?us-ascii?Q?SptVb8pc0DCZS6drMOwtbYhyiSTsGEOCj8sSLkb6TT9qtklbd8Wiffx+tH05?=
 =?us-ascii?Q?BgNhHmPLClHMeOYg40OmC6VnyGV3t8QvS27gDBado9Trv5NHL7CqwwR6CZPD?=
 =?us-ascii?Q?qZ5nVy+DySU+5SIroSPpvZC9sU6XM4pP48c8CKd9/BfAiPMeAunE7p1jA0Vw?=
 =?us-ascii?Q?+ArHAzQYa5Rkb8XGrA50sdrB7u0nHuErqGNEFNzJveTN2TR3QQbnwmsWqOG2?=
 =?us-ascii?Q?4n39MV/YwD2gYstYdRdEA4qJkSxBcUcgVJZQg9Ry9yNZhK+3VNNuHsoCCntE?=
 =?us-ascii?Q?KZkTSTeFJGPCqH55D2Qhe5Ekm5MW9yOOTL7Ai+LILkwdKn5+pPQgRzx4P0Xj?=
 =?us-ascii?Q?nNvdZu8szOGrdTOe6bVJIj6gXgH/Ko1aBpOOAa8kkIq2vbdif9HwjBNVquYa?=
 =?us-ascii?Q?oC2Ho/HJUPkjXvEizGRasJF495+0D5rfch+Qgik5lksSZcdxW4XsUB9BB1x5?=
 =?us-ascii?Q?7QIXylhPMM2z0X0WCXK0Zj7zGYzqBb3NYvH4v2+Tbn0tPpelLngdejTZ4oql?=
 =?us-ascii?Q?fXcscgCxcoTyV8ra2kI+1NT9fgLpc6mG8zQ6um2/aRBYlPZ6kJ+tN/PHnecH?=
 =?us-ascii?Q?+rdZsGaQfIZGRWAT3xcj1Zj1V05pqqOD1B70zym3vHbExZmYKxXhwpsbu0z7?=
 =?us-ascii?Q?n6NhJ1QpfrNdjx/vzbwrjano8yV+O0RJz9P5wE8M4x8ASOCvzDTkhaGfLnPS?=
 =?us-ascii?Q?E0IjXNWEfzhtcFGhflpzcpb+y9xA7HqCGd+2qtEFQ4TJn/vf+23uh1actv3P?=
 =?us-ascii?Q?gcOY8v6baD9QLHMz7ANZyOQR7IG4OY72hjRW8qjTR3/4McHw7sAZIDiptXH5?=
 =?us-ascii?Q?LCSR0RjGRrYaSeEW2kQpOxoWC3dhvjRTjQdcD3ZV+dXmIh9wG82G9MEtGQgT?=
 =?us-ascii?Q?Y8owyLyI0BmchDH8V/3VeKztCLc7RKF5Jk9Zzc9oKhd/v9YynLqbp1fGPZJs?=
 =?us-ascii?Q?3MOYz1tC91o57f3ymd1EXAWgkxgp2aYdc4ote5eT9RAxCg0/HLc54nhiyIPU?=
 =?us-ascii?Q?p8Ze4BvhK8yPttCUT6dzBdTEgjrbAZWT2Wrx8/IVqlbhWA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wRAXAOL+O92pca2f64wQgOZQOLqFNXNiNm5XzH9rC/marGgoPWBMaiKTugNT?=
 =?us-ascii?Q?UGvRkWayun8vioiPYFsWfep1wjdZR3UHYxXLMjgOSS0W0jUQb2AEXxyIqwCs?=
 =?us-ascii?Q?ANfkc3kI3wrdx6kfUU/dRWOPggcdYeGRNbV33Ns5xRFP9bSPNTSDyOFfauhZ?=
 =?us-ascii?Q?S7/Kn3tC4AmP880b2ocuA67XnBobb/x8cq6c/M7MfK6SGCuxv/1wWaE69aj0?=
 =?us-ascii?Q?PZmHYirKOfJUGsqZal5gk+fUjH1lAPDX4Pj7cXXIykQZi6S8IWtmtGRfdxrc?=
 =?us-ascii?Q?07RSAW5mMqvaKl2cWefoL+Wlg+ugGLnkFlcfG97b0Ru8KFwvmyb4QnRS14dL?=
 =?us-ascii?Q?dMcbdy+fUZYWSpDMQPz5cLOPbthEU0lcTQ/XTQMJZ7nrYp6CuPVMVZfIy9Xh?=
 =?us-ascii?Q?owgesfcJeP1yOarKjvtFLTp60y0QkQvRWjmmHQGcPwWLLovuKUWLcRsvqoJS?=
 =?us-ascii?Q?bhrogtvQXpfzEXKKVW7Hjk1kq5OKPBRw6lf3Acom86mIdMtOwvMDFhggmg6S?=
 =?us-ascii?Q?fMlcOl5j+0YOVsHDug/DRZYRDrX7qez80tdmxOrrhlKo1IOZJOCEHln1H/aa?=
 =?us-ascii?Q?9vfy0pNjM9988ElxOZVua+c33x2anb/PFdamPBYXyuEW/OyBkBO2c+C+Gzkm?=
 =?us-ascii?Q?k3POm56akMoIhNiumeGUDDWsSA3q3Rwv5pQoYzIMJz36W0XAZpHIkp201uHJ?=
 =?us-ascii?Q?hYs8d/4rVQMAeM12I6BHc+FP8KmLObpAhR+t26t8unMg5cYlVDbY/TV2b/PS?=
 =?us-ascii?Q?9OhtxmleTYUFYNpo+RIFGSh2l4INYNDZt2fAoHn1FyKr/cpy1v/FeCGKBR/7?=
 =?us-ascii?Q?vGG9dWgYmfmAWGZAIymzQ0iljt30tYgC5pOkA74EfkF89LYjdzbtaKfeo4VZ?=
 =?us-ascii?Q?qiNK/J/SNMFxM6i0H+PHc7hNYr1gGvBTQgp8Ps3H8/BI5Vx0uVj45iT5yZ5n?=
 =?us-ascii?Q?ltn6ZDV589ngc4wD0FEVfcHN7VmLjtb4fkKC9F8gFefg/QiunlrMcpA8CfbD?=
 =?us-ascii?Q?1d3EOVTdt2gNMvHx406QDA05rz6ebjM8Cgv4dzWptgc+WQFQ0ISSaOrESgb0?=
 =?us-ascii?Q?DT7+kfuzYvaosfTtelMnlPdC55eeNmExQahqbKRiT1Te4ON1IngTtZs3uuxm?=
 =?us-ascii?Q?tpopis/y0EFYhFBRzmnkpTgtrZW1viQy4vJOhvj+q7MfxFfTrH74098DZE4B?=
 =?us-ascii?Q?Nu50H/689J0xyxlIzFIxBbXaq/c16ha5FtwYmARUc8yuAqLmEfCCaI50BXQm?=
 =?us-ascii?Q?G2xaQJohDuOVcGfyzfec9fBj35Uf2e9Es95T2mpjgJHp842ja/G0+7pC8Bjw?=
 =?us-ascii?Q?gSC8HXvlT2kV25xFUR95Pkbp8RcpOAn4QCaYrrL44ODycE8IkHoyA+75PKET?=
 =?us-ascii?Q?D5ZYqRNQHEbpn9wfvsBVIbOuu09jMCKIitkdvfxBmJblLy571OTbZ1vUnJew?=
 =?us-ascii?Q?DZnpoKK/Alemtp5X/oJFxymLmu5nbWZz3EsCNAuMM0reOgs1fdrvHv70EIZ1?=
 =?us-ascii?Q?hhZpA3kexQWpZSzCH/i8Qm+9zSWAq936/bgzV2eBC9qgm3zgdN23PZ3ncU/A?=
 =?us-ascii?Q?SrmfQVMiQj2GI5s3QW7T7h4vBDcpk+329kzrA6f8JXRXzNyDsKYxeSEah0m1?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cc8b253-f5dc-4a29-b1ba-08dcc05084f6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2024 13:12:04.1589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cHm5tXRhifI74A/QhgyS43OyqAzJjwo2C87cOiE5G3Q1XraNBN6P+KoP5cf5r/BHU/MOppOG9EQrW6v+as4Dl+xbBb1yMRH0SsDB9aJ9UH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5054
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724073129; x=1755609129;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nD4Tarfn3zC7zWHz5oadT+DV64k+Y5Fr9vgyEEzsnS0=;
 b=X/15OoY/phYfJT0ClI7FhAi+bmdr364WQaMKDIkNB8/AB6vqsxrBVZ2O
 i5ojyMag82ax0FD5RGchdBbLpEI+Zza9ZLP0ZzLS0Bgk93lqAXMtC3pmF
 aOyQsEwp0x0oVAgWXax8gpNO/5yjcFvCvFF4ZcljGlZzrbnU9701aoQ1Z
 78wGmS2XreRA4Q5gS7Qir26m2Ywj1eWUv++z9u2e3MTD7IToNPXuVt37p
 6dqydM3tdcRB3ez2Xd/0FioFh5fkNXpicYTPWv0YzPRnx+3IGvS+VLMs7
 Uv2PweLiCuUTtyov6ufD14Y2Ur1KaRzHVMbNmZc+mcHLOEouWBjF380Qq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X/15OoY/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/6] igb: Introduce
 igb_xdp_is_enabled()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 16, 2024 at 11:24:02AM +0200, Kurt Kanzenbach wrote:
> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> 
> Introduce igb_xdp_is_enabled() to check if an XDP program is assigned to
> the device. Use that wherever xdp_prog is read and evaluated.
> 
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> [Kurt: Split patches and use READ_ONCE()]
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/igb/igb.h      | 5 +++++
>  drivers/net/ethernet/intel/igb/igb_main.c | 8 +++++---
>  2 files changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index c718e3d14401..dbba193241b9 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -805,6 +805,11 @@ static inline struct netdev_queue *txring_txq(const struct igb_ring *tx_ring)
>  	return netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
>  }
>  
> +static inline bool igb_xdp_is_enabled(struct igb_adapter *adapter)
> +{
> +	return !!READ_ONCE(adapter->xdp_prog);
> +}
> +
>  int igb_add_filter(struct igb_adapter *adapter,
>  		   struct igb_nfc_filter *input);
>  int igb_erase_filter(struct igb_adapter *adapter,
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 0b81665b2478..db1598876424 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2946,7 +2946,8 @@ int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
>  	/* During program transitions its possible adapter->xdp_prog is assigned
>  	 * but ring has not been configured yet. In this case simply abort xmit.
>  	 */
> -	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
> +	tx_ring = igb_xdp_is_enabled(adapter) ?
> +		igb_xdp_tx_queue_mapping(adapter) : NULL;
>  	if (unlikely(!tx_ring))
>  		return IGB_XDP_CONSUMED;
>  
> @@ -2979,7 +2980,8 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
>  	/* During program transitions its possible adapter->xdp_prog is assigned
>  	 * but ring has not been configured yet. In this case simply abort xmit.
>  	 */
> -	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
> +	tx_ring = igb_xdp_is_enabled(adapter) ?
> +		igb_xdp_tx_queue_mapping(adapter) : NULL;
>  	if (unlikely(!tx_ring))
>  		return -ENXIO;
>  
> @@ -6612,7 +6614,7 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
>  	struct igb_adapter *adapter = netdev_priv(netdev);
>  	int max_frame = new_mtu + IGB_ETH_PKT_HDR_PAD;
>  
> -	if (adapter->xdp_prog) {
> +	if (igb_xdp_is_enabled(adapter)) {
>  		int i;
>  
>  		for (i = 0; i < adapter->num_rx_queues; i++) {
> 
> -- 
> 2.39.2
> 
