Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D110950275
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 12:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57E5081762;
	Tue, 13 Aug 2024 10:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQeoQQLMRez4; Tue, 13 Aug 2024 10:28:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1818C81772
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723544911;
	bh=xaHsXaDWXqrg1kbR8sDxp6Vi7KY0TWb0sw/BRMD+VlI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kkiYQzNeWWM+xYRoQMi65+PQVgGp2RKYxOddn0Wg9zcVSzo45qlNzfrNavz9tCvkz
	 PJixanxkGaFuQRwXKAAvRb889OUQmVGKw/X+aj226jTw+vTC8y95cB4KNpfxRCyLHZ
	 5faMfM8SrkALZSPSHEc/NK2VaNdj/ZiVxoTWIhlAsDlF4Nav6Fvd3HIuU+QUduGU2s
	 IzItQJvGEhZ57qp+idtkC4EqW09P2KeR8OipdtdpcE9+pb/J7LDMJTzBMWF0/D3ITT
	 V4wawCaZE5oBU+N6D2mmI6my4oWqU2QrgH/AgGGdWvheykNA/OiNm0xpdfiHoXSCaP
	 mR1YGuJKivnFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1818C81772;
	Tue, 13 Aug 2024 10:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12A771BF35F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 10:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BA288136F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 10:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fX3Uxe9lEuIB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 10:28:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7EEF81521
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7EEF81521
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7EEF81521
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 10:28:27 +0000 (UTC)
X-CSE-ConnectionGUID: xH2adYsCQTejyrMjbAC5WA==
X-CSE-MsgGUID: DoRm3Km5Tb+hxxHAryw8fQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21842274"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21842274"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 03:28:26 -0700
X-CSE-ConnectionGUID: o+Fj4fYJQ0uxYYfM+coLYw==
X-CSE-MsgGUID: pqEBwaPeT1OoIaZsiggtrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58927574"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 03:28:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 03:28:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 03:28:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 03:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U/kDpSwPX27wp29GY1iTtSICEUr5dSqw0Y7WrvjPypdvh+VTS2ZGjwuJLWWvolgU2orzqIxAXcwhjPINXLBnGkScFOUlB40kD8oDSFlKCY0Utpf7sQEcxyFGtvmNYjux37OQTc/t+pqxNdrotM8s6j7MCpFwZjwkh+A8aQHUrQJKXG8Yx4rYEVpUk4mkNzrna0oGyB4YWsdDqgn/+dWtGP5prO22z86IDvWn4UFFhTWijFwJnvlkmhJDE7Qh6glMf6t1I30lxbG2IYpeJIk/z0Am8JW/9F1Zfp4VkmL1fi8DyFCd7JFlKuPLurgJl7ZbAlM93bOne3J8RxzsTsXsFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xaHsXaDWXqrg1kbR8sDxp6Vi7KY0TWb0sw/BRMD+VlI=;
 b=tEuWC88M+83T+k779D3xtr7Hhg3zgMOlPlk7gqSCrKBjTaEAqCQRPhao2UNnrT3qP+BagY5Y46gkVH+8knbzVL6Nq4QcdH8AozEGdjl40zeZnrxG4Gbqd5w/wt8qN1uPttnjQCMEYQseiAFKi3fumzV6tyvkH2vRHA2tlb4v2Av2GtCsAhgwlUnEKwrVib53Dj/dxrL1rH1ZR66zst53HaZawgIzG/LuCK1wBgmQ67lu+QZE68nLQrOiQh/AQyeEoX1p6HJOtXyuu1/BqAhZ3A43lVNPf7CyWzQ5h4SwziPsi4K53Z7pqdEn6zXUeR03lhHiNtoR1bkkvyIFCYrzCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Tue, 13 Aug
 2024 10:28:23 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7828.023; Tue, 13 Aug 2024
 10:28:22 +0000
Date: Tue, 13 Aug 2024 12:28:15 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <Zrs1P/2ZtVsKhd+6@boxer>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-6-larysa.zaremba@intel.com>
 <ZroIF3eSlQuAk9Zx@boxer>
 <ZroxWcFbhF2KSKeb@lzaremba-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZroxWcFbhF2KSKeb@lzaremba-mobl.ger.corp.intel.com>
X-ClientProxiedBy: MI2P293CA0010.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::20) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MN2PR11MB4581:EE_
X-MS-Office365-Filtering-Correlation-Id: e1024039-330f-47fe-cdf3-08dcbb82a878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Fv58LCrPLYLdF+vvV9aLO4ld2S8mnBbusUlVI8eJXwvqfwUbGMRdrXP+Ejr4?=
 =?us-ascii?Q?XsIkS3fZZxqB+bIAv0gkuaLIcMWiiM8SQ00SlHR7gfOEybu6I44IFR3v+Vnc?=
 =?us-ascii?Q?8BmADjW2edzljEoKHSVl3qqH9HuQ56sPXYXZJi1qEWoT2c5Ysg/S5K008sxm?=
 =?us-ascii?Q?uRNsrq8GMa675f8a/IzKrCG8szGmbO2R6tYncjT5oC9cY4vd8SV7oSELPrpQ?=
 =?us-ascii?Q?1LjfRdJg383fE+aMCHGL9cckQkoxbBxJgf17ySBtn6JhkCVs5SHlXdX0eMAn?=
 =?us-ascii?Q?+PJK3+sfkX+kLX2xAmLLhmaTnRMq7k4dFPIcM7xZ7sXhGTAjC8Y48qEBuF0w?=
 =?us-ascii?Q?6/2Hm6qVALyM9u/GmmZm7v+ekOLZn81mAkoMpZSxLrkxQGfm9sjfkXVL6aGf?=
 =?us-ascii?Q?2dlYRgunbQne0o9YQnOl8vrJ23pCZOe9dNr+964msfNVVDrI4JHZqlipxqK9?=
 =?us-ascii?Q?Jl2jPiluq0ZKzZ3TWff1+AfSTckGprg6xNcw31FTP+L7EHXnHKbUXzSXFyRQ?=
 =?us-ascii?Q?cTQbsGKq9zEkmm/w/6E0F9gfetx7r7yMjaYb5caaovDMhwq2gCjovBTSH2L8?=
 =?us-ascii?Q?QBzEQszkYdopdZW6CKsVvZcpaViyN0OiwIi+1WG0ru6Bupm2U0eNMI3uhaJe?=
 =?us-ascii?Q?C3WJjHs0LPclZ5fJPyl4EK3iq4zBGn6r6V3yLkGulmKMxSjlK0eo50dhcEvA?=
 =?us-ascii?Q?YNvD8FIJH3Bm8vtcCMGyRf0kDx5bgAQPy74BUXIrhmubJC1nKjMXnPPprIQi?=
 =?us-ascii?Q?xsGVI0Lq/nuuGN1fj2/4jA56zLpYrsJ354MlMO63QygJI6ASu9ImZ6qteeXD?=
 =?us-ascii?Q?6wlfax5AsmgWLPnJt+VRUI/MEUCHHk1RLbaRysJSySAAWpXxs+oQCIuQ7wIM?=
 =?us-ascii?Q?actBDdRIHb9jPUtjuLt+z/oQPaYVqUa1ceUiXLivbBUC4oao4nD6INIc5hgj?=
 =?us-ascii?Q?NgomEA1xYhKFreDJepfPeAamOOxL5kzQzN8n0VPJczDlbxT6W2FcMgTi7G4k?=
 =?us-ascii?Q?4HRCnmiMEy++Dmp2Q8oJe3ikGzW59KcJ7ML3poYxpMPx04fsQ/6dX/8suYOh?=
 =?us-ascii?Q?rWJcP9fKaHdVMcvop2WavQoRsxvBVyHEWBKjtPviPWTKh2twvSb9MhB5OzSm?=
 =?us-ascii?Q?km34BXV5A6VJmE4P+H+7wDE8uCtaSUYP6tyJ5D5SUP6CruMnWyK6LW3zVOEX?=
 =?us-ascii?Q?Su/BIlQm09RVcNvBbnOT/5WigYJPRzkvKeTDVi1DPK1k07iRwCyoROMzzjn7?=
 =?us-ascii?Q?J6oiukZA6NH86EjgnyF1RDy8IhpZjZ+dxoEEZZwVjy0gZ2lbZ8zZ9TbzqOmm?=
 =?us-ascii?Q?IgJPBuTOKEeflQ/mR9AsbdD+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MWd8tWcUe6JrKyCzZubmf+NKsw8tbHqTB5FVq0xoSyKJ/hga+pGdYL/j9xci?=
 =?us-ascii?Q?JJKOd/B/9QEpNwiH6p3bkxRvBtzd2dPcdBMtujrVqRrY3qPodf0nCQQK2CFm?=
 =?us-ascii?Q?b5K0odOvpixwnSin2qRKTwB6yi3Z3XiT60ut7ndOE3buk8SmERxuw8/D3ANg?=
 =?us-ascii?Q?1PIvhzgAZdU5rkSlo0O2siJQE8STS6Nn13TaflroSqdnJdQfSot7ZFpaKORI?=
 =?us-ascii?Q?r9tN1HpZ08Un3yuvKaoOj2BMrSAwWcya6IjLNJxdxTjsEN96CaaCP9cW82ry?=
 =?us-ascii?Q?ZoKK8NjPqS9wRU7jc7AfDHzgnCEzAZP04YjMBGf+pXeEsA/HZ/t2ElxHFary?=
 =?us-ascii?Q?s5XClfseEBdVwyTJ3YfDZNq82qa2yyo+SNXNFXEvR9SPeB61KYl00ZwdYSMD?=
 =?us-ascii?Q?wMJsjFGJKt0k1kjBST1n/orfCh41ia6l9N10FiR1F3AfMBUCrdPY2OKaEdWV?=
 =?us-ascii?Q?vLBexKhoJm5bgZnhJn0dpy7MdZNz3i61k36mh7Gfo8nyz06I2hb+tsSBT4eh?=
 =?us-ascii?Q?5sReGsQ4gUZfBQY4WW+D0wKDN12QLBL/flXI0hT/aXf6an9WGTYihlYwn2WE?=
 =?us-ascii?Q?I/aR0oldZnRvAkvvTzVdpbtXYj68f0YEf6/OmeP3rpfZtd7q7VmdJqEXJA0X?=
 =?us-ascii?Q?Gwh3kG25vIMvjXf9BITGJ3bjT5pirPbvhueFEC4xC02xyxKDd0KIRCIZIF/h?=
 =?us-ascii?Q?vlQ940AOokAf4+DD4ioWPEKUwhTRGrBGQR1ra3MGxOAeJKpCGlA8Tvagy6hQ?=
 =?us-ascii?Q?GYLGHsxZMsUg5RS1Gaylo/wLFQs/CcrboiNu3zeHyt57SbIuXcTqdV9Zyxpl?=
 =?us-ascii?Q?KeM0t/I1OpZ4cNMUn5ZlTr51H3vDteUoM57YJw/6XCi5JZ9eFkS7yWBAzqRh?=
 =?us-ascii?Q?goCtWAaDlveYrCgm7MRZnx+I3EIZdTMUVvh93nuPpAJqokRMzGcXUyQsfEba?=
 =?us-ascii?Q?ku9sKi9PPjbiew+OMHBQwJNyXL3TVDjgV6Uqb/afiKvNfHNnqRkj8DVA4Tvb?=
 =?us-ascii?Q?EAhzZRe4MzeDuSr59Rvfdlm1aaKzyozSB6vSKCLEQt56xPEbsNWM1au/3o8a?=
 =?us-ascii?Q?2JalouJZLRWK6eEmTSDNyxLlTXjpBo7UvstQjgMAiOinaFZAQwYscA+16XzS?=
 =?us-ascii?Q?VdsMA2Br158GcDhkaNWPTDEkF20MuPIX1Hv5gLPOcsIrB/DGzuYNJ0kqnHsY?=
 =?us-ascii?Q?OKkLT6i+2OLmlmuJXDV0ednZSvZchiHvt5/hZKmxhhBncHYeB216wXy91yID?=
 =?us-ascii?Q?QuJprD/WdiqNkOczKsJG7NZ0QqtudY5gTk1sCvICSkw0fvw/diu6CZh8oLkn?=
 =?us-ascii?Q?4AbwFPBwzBgsFUsEz1Uh29rTmRFLXZ/y8iTdYNw4HSJ4vn/gPHJzVe5nJ5ER?=
 =?us-ascii?Q?ZPDjj8w2J9XhMnJ86CyDwBTPgRa/OZJh2C1T50sY2410xPvLGaAjg5YYezhl?=
 =?us-ascii?Q?Rj0J1XTWpe1emkqU7FLb0j/beHiVD0kiUbxI+5mTY1mTQpka+E/bDY/+QWf5?=
 =?us-ascii?Q?9IMiG3KlqkbHjurAGI2PDABZoJgK8+KmNvthhLgdfidC0myo5yxZsaPiXjzj?=
 =?us-ascii?Q?9boqJSWaKIgKi5WJK7Z2++myZAkHqRBOmv9/mSCXGS+QfxdMKbcaLPviul0Y?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1024039-330f-47fe-cdf3-08dcbb82a878
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 10:28:22.7458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cz9i8GSJcEeTJeLfxzYzM+L9fBmgXFG3B7hhe/hZ2eFp9ZYHHvlYNOegduzX4OykelHMrT8DNmpM7aGccFUMUckgjKAKFaoRIMGf/8Kb2z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723544908; x=1755080908;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rOaVhLu6jx/xf63yiqv4q+7roBS1es8zxDUAVMVaOG4=;
 b=Z9uWTJ0MD0GpZc6+6OhXm9xCxVE3CvI87ObULjctCikFRJjRpS45Js87
 r4mExAQmGJtEvuq1SWovzI8ZIs+wXG6rr1JAkWpIywvXXb0J9hiiCHW3r
 +VYN7XT5su9ZGZ1l8UXW3JlMqm7aH/9Jbf8HltZKA/814/dXAIvcKgPOX
 4gOn2xzia03F0mVEKADFvbo0wx/mOdnjoooaDrBphlcOFll8eq69AyD1I
 HmMsT2IY+fEuyRTVbWqcM4trcQx8daVonYC4X8KMUwYf366hTEE3YsY5i
 3lhpgek0DimqplOHgUOhBk8M+iMRKQypWalMv/wk0cTQoS75TKsKqfTj1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z9uWTJ0M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ice: remove
 ICE_CFG_BUSY locking from AF_XDP code
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 12, 2024 at 05:59:21PM +0200, Larysa Zaremba wrote:
> On Mon, Aug 12, 2024 at 03:03:19PM +0200, Maciej Fijalkowski wrote:
> > On Wed, Jul 24, 2024 at 06:48:36PM +0200, Larysa Zaremba wrote:
> > > Locking used in ice_qp_ena() and ice_qp_dis() does pretty much nothing,
> > > because ICE_CFG_BUSY is a state flag that is supposed to be set in a PF
> > > state, not VSI one. Therefore it does not protect the queue pair from
> > > e.g. reset.
> > > 
> > > Despite being useless, it still can deadlock the unfortunate functions that
> > > have fell into the same ICE_CFG_BUSY-VSI trap. This happens if ice_qp_ena
> > > returns an error.
> > > 
> > > Remove ICE_CFG_BUSY locking from ice_qp_dis() and ice_qp_ena().
> > 
> > Why not just check the pf->state ?
> 
> I would just cite Jakub: "you lose lockdep and all other infra normal mutex 
> would give you." [0]

I was not sure why you're bringing up mutex here but I missed 2nd patch
somehow :) let me start from the beginning.

> 
> [0] https://lore.kernel.org/netdev/20240612140935.54981c49@kernel.org/
> 
> > And address other broken callsites?
> 
> Because the current state of sychronization does not allow me to assume this 
> would fix anything and testing all the places would be out of scope for theese 
> series.
> 
> With Dawid's patch [1], a mutex for XDP and miscellaneous changes from these 
> series I think we would probably come pretty close being able to get rid of 
> ICE_CFG_BUSY at least when locking software resources.
> 
> [1] 
> https://lore.kernel.org/netdev/20240812125009.62635-1-dawid.osuchowski@linux.intel.com/
> 
> > > 
> > > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_xsk.c | 9 ---------
> > >  1 file changed, 9 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > index 5dd50a2866cc..d23fd4ea9129 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > @@ -163,7 +163,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
> > >  	struct ice_q_vector *q_vector;
> > >  	struct ice_tx_ring *tx_ring;
> > >  	struct ice_rx_ring *rx_ring;
> > > -	int timeout = 50;
> > >  	int err;
> > >  
> > >  	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
> > > @@ -173,13 +172,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
> > >  	rx_ring = vsi->rx_rings[q_idx];
> > >  	q_vector = rx_ring->q_vector;
> > >  
> > > -	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
> > > -		timeout--;
> > > -		if (!timeout)
> > > -			return -EBUSY;
> > > -		usleep_range(1000, 2000);
> > > -	}
> > > -
> > >  	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
> > >  	ice_qvec_toggle_napi(vsi, q_vector, false);
> > >  
> > > @@ -250,7 +242,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
> > >  	ice_qvec_ena_irq(vsi, q_vector);
> > >  
> > >  	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> > > -	clear_bit(ICE_CFG_BUSY, vsi->state);
> > >  
> > >  	return 0;
> > >  }
> > > -- 
> > > 2.43.0
> > > 
