Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA1E91A4C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 13:14:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0999D60663;
	Thu, 27 Jun 2024 11:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4vyhbQA7gudJ; Thu, 27 Jun 2024 11:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2873F60E09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719486843;
	bh=pf1ss4y25RatFMC9B8gg2LnS1i5ldN4ITMQJe/9tupc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WLHCBr9CugJYO1HP8AAjFfg/NWMmdiY5uXjU5kubOFT2RAZZ6NQ0bpZD5C2WwZUTu
	 j/5Mni8LkczRgdG4uOOwrX+imBMLVOnY0nan0JoUZ4KKEamvLmMw8mF53I52YUBbHm
	 6hwpUGPOG8wwWrlNMQaLakz45ikIziKvMU5FHwnwqF6uaCwHklseAQl6bw91U22/Gm
	 fxuYdv/vf6y9rWS1vDzKkRgrHNJm9qOl0IAOXp5ldaHMtabbcezFs162JFxtkqnoyS
	 ygW0eXYPNYg7s/VdWi5v9GYI3NfEoqYPaSp8fTWYV2C/DB6GG3ZXGFSv/2XaLLiYPe
	 9leJ2boeOx7qg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2873F60E09;
	Thu, 27 Jun 2024 11:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E81CF1BF297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 11:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2F82408BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 11:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s1hrVJ5746HZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 11:13:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A8F740848
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A8F740848
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A8F740848
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 11:13:59 +0000 (UTC)
X-CSE-ConnectionGUID: 9yR9SEtvSiWfPKQtRgzMUQ==
X-CSE-MsgGUID: MxeSlpgWQmq32KRVZ8Fa1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="12279852"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="12279852"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 04:13:58 -0700
X-CSE-ConnectionGUID: ZlBA8eH+Ss27AXls2BUnew==
X-CSE-MsgGUID: CUykKz+tQ96UqqE6xL2aag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="44755721"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 04:13:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 04:13:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 04:13:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 04:13:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 04:13:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3S7CBpPQtVADLQZgnm/bMA0aw3F5bO4Kre10QuTCrK7V07MOS9SnuQwplfNqgiJAoAiwrMjlAMVlxupNK9vlH2DfEf4+MfI8uFOsTn+XzYpxhUlpi48Z6j1j9//iCRR5rezgizrlq4ahfsWlF/S5pfM9t/3tu2IjQPIuXDjRjEi37cnPx/xPd60LDHcj7lNE37Tkmt0qoQ5qWV3mztOJdhcE5F99XOEiXIf7rQPcoaUIsnE12mh0kOOOmVvkk3Z6pahmVjOfaYS8mxI9TfLg8pe9pw8UBnXLYTyVS0Su9cOuXQbYBlH1HquSOMjisFEfEBncsd4GIuxVtSB5EvE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pf1ss4y25RatFMC9B8gg2LnS1i5ldN4ITMQJe/9tupc=;
 b=k/k4cBiMT06+z19naEKLUvkytnInVBZNtgQG3e6gr2NZ6f1MUSXmxRxDdSinNmL35bUy01ph0E28R+fzyEoO03gFL2SRBa0pk0RdldovPnJfEm/Dtppmm0WhLlzt5Yj2ivrXB/+BM/DE8fGv2JvSmvAPhY6TqMOT3+15GFcu6AWTWECL/9JGiHAYG1VUTxaNUtsiAlLgTOz4Wl9ZjEBMUVbOZxeCEt0ArH9pjDxMnRwYPmFoSOikCf7lUq1tskdRVlbPp1k0efFwYt4Bpdj2CPQu/NQvxZZ+zGf6Nrl50oOxO9MiyZuPyBl13nCTi3zi7mKAw1+UFvCtSR969f9GAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Thu, 27 Jun
 2024 11:13:55 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 11:13:55 +0000
Date: Thu, 27 Jun 2024 13:13:47 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zn1JaxkObIWjkVAZ@boxer>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-8-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240606112503.1939759-8-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: VI1PR07CA0241.eurprd07.prod.outlook.com
 (2603:10a6:802:58::44) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB8222:EE_
X-MS-Office365-Filtering-Correlation-Id: 66963406-1334-4317-e0fd-08dc969a3bd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zXZbXF1zdxfXS/ntdtBanlDkqLZQ1VqFc1sCW4R6ZekP+EnNA6Bneoca3YOZ?=
 =?us-ascii?Q?i5tv27s//8esbAQcszVjLAyvzqBoAUgf/ZF1j2Pc9/wCWBFeC9LBPJZmQoBx?=
 =?us-ascii?Q?IHUmWHMEWj/22ZN2J3BMo2LIwDFoOP5tAsdJPHHAIdYh6b21Az0VqB5zhAq0?=
 =?us-ascii?Q?ZXZPzGBLSctj2sV0QFXhbqM9UavDxCshG95pr78eBhlATUTcNqu7CAOPSTcW?=
 =?us-ascii?Q?lalCH1FQoJ3OHdTa+nZzUwD9Wf/ONOFiAyoGcu2h7LsXUUgkIINfZX4igKQe?=
 =?us-ascii?Q?oa6QXDrUu4QQL5Jo3krQhXGt9lAS+pqORjY92146x1Tn6bZ7I5VOvdcZZCvi?=
 =?us-ascii?Q?jVXV1N+/527fI541qMmQgIKTQOacgZI9o9Okn00/kGrCTkJOWFD4KzswcmgX?=
 =?us-ascii?Q?82KqwIh32V8k//Qe9SrUNZL7+q0duwSWpRLP+QBZnmzE8/dFPogfms046hyf?=
 =?us-ascii?Q?Qiiqu235y5iKqokVXJHfXNHrORLDsb486zlsDFWOMh6GgtINxp27ZjRFpfW4?=
 =?us-ascii?Q?jxgY2BK3joC+i0emdsI6AYYjJqVuDjF6+hHVG7Lc0e5fFRWdJK29ARsFq42F?=
 =?us-ascii?Q?cpU1gyHJ8wVlDO4wH35vPyx/fhQl4X14MReEGotnK4SCgUhHsPS3EIrSdU6S?=
 =?us-ascii?Q?sMcgG4KDhjDMVE8V/xYQz5tRLRBBlp7DlDg+mOvIcV+BbqoXhATOO2H5Q9wx?=
 =?us-ascii?Q?JBSnmJrZhOqc0iVX8sIxEg5GfGtafa5FbAL5thlbgJokGPbq7/UHMNtpXU2S?=
 =?us-ascii?Q?LvtfUYTfzH89TxzP+B7idIOaSKrHwy0UwXlSD1DfHpcKka+lYH9i/99PtKZ7?=
 =?us-ascii?Q?Lr7MyswzQRd55BAhLKF5nKwuvNaPEFT+dbCSiPmIXqECdOLuDShrJN4NMIxq?=
 =?us-ascii?Q?aid8RvHVcX9Vjd3tbTjDHGoopvBKsE3aSY5M4/ZWcPK64JeFsxyRwWK/P5/7?=
 =?us-ascii?Q?Xc1rVTaFBltXNe1bPUTQgNyTQe7GQBf+zH2IZyGf8sXM6QwFSEvivs5Xl/g1?=
 =?us-ascii?Q?wUxQpxwCeW+Oh58mITLtk5UfuxM4z/C9+0X2JY2RYj9vcUSwYHiGfAUiSaCj?=
 =?us-ascii?Q?pE2F+lL9W1uSa5UUjX4Zg1zY0I0eNbTUqqaC8XVgFnJVxFnMg20/15GkmEyt?=
 =?us-ascii?Q?TErHSuuqKXsKSgfOcO+GwJWv7VCdNofJjcrWjdSeXkEUvaDze9Maoyga/vJJ?=
 =?us-ascii?Q?D5miTZW9YIrjmRbPj8+B7V/t49/zibYz0SGTJSdbvPYog0mGpy9DEaa0T5TU?=
 =?us-ascii?Q?OcNYaCRoKvnyohhlnubzKBBnsMZFYp0p53Zvwc03nn+OOtgUEsFq4ANfWS9U?=
 =?us-ascii?Q?X4f4EmvC6VM1VrmTOr8xRwUWxynxB5ngLDiRIO+PgF94Gw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?llU1odh/Bc0t+eeJkEoEVQ5Ffb5S4b4SQB7wcWViMmmbYTQZCnos24DM+MeR?=
 =?us-ascii?Q?dm4aUaaQrznWgdw85Yu3rsTUJAcjbrqAW9II4ggXyvTXQW25C7dEk7VDLZph?=
 =?us-ascii?Q?Nez3xykpstDDlxl3YoZaq0J3dQH5HlJYFfFUGmmIOmACnJc46ANjMtIojrDO?=
 =?us-ascii?Q?h0hY0RM0LFVxFyJiImB1caIgUfISPLAoB5zx6lhKvGom2ljaIatNwIlKALX+?=
 =?us-ascii?Q?xAQd6whsG63pyxLRAHTeXUq9iVFpySLjydRDrsBh29Xe4Yl9ARRwchU4LQ8+?=
 =?us-ascii?Q?8jQnpILJgcDU56Sm0JjMRW2U8gCyGGRk4yQPmUUJjnsq/cgqJbKACJC9/SLl?=
 =?us-ascii?Q?jxIvOmNlHPPmxB9E/UChxlpPIX1Fx+g7ICWwK7dSKpUzmgWZ59NvKGK/DOJi?=
 =?us-ascii?Q?Vpnk1IOEGwlrFyawrWjHc/kdRxxr67Hv+5ir40n42gKYoYhqQMrekulmGUoD?=
 =?us-ascii?Q?US6rGavR7vhZjrQcBo8pQUhCwo61FTnzJ6gV8SZonOeLBpLhJ5Pj1yEl7ixE?=
 =?us-ascii?Q?4JKwZqM7zXJ9xIf73eWsx38SNDdUTLKr4TA6bJKOsiEss/Ak1etb3WdEcTs8?=
 =?us-ascii?Q?wNpvotQDO5Lz/QXW5thXl9HegxMUvT93HgJmycyPtt+Hw4a8c4knXhyBQS20?=
 =?us-ascii?Q?wjpLvx2UQBwairl4+vwxRnkmv+ZPbhf1ZZrY59TrmeUu1jSmOui9+wtR79gt?=
 =?us-ascii?Q?ikT/7Low7GWJo/RlesFD/9ctXQIkwr/tHUb80RVBvw1Znxjn2Y34zUDQ+pI1?=
 =?us-ascii?Q?HVy9Jea9NZiUNE5NRTX71QONxf+6KCLZKgyvidRmtCycdItxIJL5YobEkt8S?=
 =?us-ascii?Q?uEpDfC2ROZ6dgGSEgLmpB49gmSRMa+7yv8e4FKqCQcSw88VFV6x+Zhf9ewjf?=
 =?us-ascii?Q?kHflGzx5dWr1JKUObRANu0DflGSfFuIv7ZpxfTVhJhPMlmpuwxilByqXne4c?=
 =?us-ascii?Q?onK0P+pm1uWApqN1VTpZlQvq/xo80q0naXL22ow12rb2nsOhLAhRKseEC8e5?=
 =?us-ascii?Q?YswlUCYpm7nCiiJ1M2AjczY5wJc1uhxqJwh4RoitDYrlDAZirvgTPa9i9cKe?=
 =?us-ascii?Q?CGXyoI2SN5djkvKCe3uHGIVGcOogmGfCuFISOjve3B+Tk3qbWk8A8heH2GfU?=
 =?us-ascii?Q?62xnK9ymoZdTi3nFfRO1Rus0eUPq71PzjCVL/M/iG5S41to7c9ZYgjQuI0zS?=
 =?us-ascii?Q?H24r+kY4v7Te7mLp0ugnuf5RnwQCKlgOVweIHf62GXqK/SDQNcYjAyqwQImD?=
 =?us-ascii?Q?y/QVdPoGrXcwwTGpU/632mMn0DkBFFY1U8fvnKfmplZ7XWC59SN7ESkhQg5l?=
 =?us-ascii?Q?jK8JopDbt79PhkKYhHLYEELZ0BMQu06xqq9ZVrj5YcIvIFGHcqWaNkF8job9?=
 =?us-ascii?Q?2uIDQrJ++7LM2RdeySwmtOUmcSCUHAAZuJ+rWlrpmtJ2hqmqWa673UHel8W1?=
 =?us-ascii?Q?O0IahJqXRWpINqS8QCAFkpXAq7DrQe7tpSMSxv7t89yb8FeYGDXed318+Avw?=
 =?us-ascii?Q?DnR9Scl8L5VrrmtSmOcPQpFMLduxSe1xOXFh927rMPITTZC5PztpHVu2KpWv?=
 =?us-ascii?Q?Cf98meMv0zPtFSooc+JppVgC71fay6tjnZ61ukz37mHqNzgx1AOiZO6Yp3nH?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66963406-1334-4317-e0fd-08dc969a3bd7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 11:13:55.3992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TAW5Hc9enM9m4gYQCa31nSpCjfmo6C4nk0L6Q2BpG6L+HRra9OSCea970zLnJPz30s5kr46ZSLgvc3OuFtxKm8laQpHxOKhp/peJ3HOlkf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719486839; x=1751022839;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wfDs+pf/qhBodCyTFEnByW1ZWTm6/atSIpF9TjL54I0=;
 b=JGYqBQywf8JiX+iTRhmu7I2Bx7/hBFn5p7t9f3Mv3iA2w4JvENE+v5Go
 RJ0AF2wqLQRpXWUkN112dK+enUafz/fp8PV/vaVF5GtWMjrqIcF7hQH7y
 eS9Eov5j+oRxAwh+lXilcizg9ePV8l5p8z4zVqt1909fUKksYoi2Qy0cc
 c3tLOIFUMb3OjYPMLgUNIGByyLouLHS3/aKK6uCeTx9UbdWUY/67Mz4KU
 Mwl6mF4V9XnsnvD/wYTEEky6p0p5IdFvhig+iQ5ksLua1Wf40T4z6xQ/M
 zA8FhYpyowO8Xv1YeC5xKzRyYMB4UMKmXfMs4ba/pK4K473p3PgM3+5U3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JGYqBQyw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 07/15] ice: implement netdev for
 subfunction
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
Cc: shayd@nvidia.com, wojciech.drewek@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 06, 2024 at 01:24:55PM +0200, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Configure netdevice for subfunction usecase. Mostly it is reusing ops
> from the PF netdevice.
> 
> SF netdev is linked to devlink port registered after SF activation.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 85 ++++++++++++++++++++-
>  1 file changed, 84 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> index abe495c2d033..3a540a2638d1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> @@ -2,11 +2,85 @@
>  /* Copyright (c) 2024, Intel Corporation. */
>  #include "ice.h"
>  #include "ice_lib.h"
> +#include "ice_txrx.h"
>  #include "ice_fltr.h"
>  #include "ice_sf_eth.h"
>  #include "devlink/devlink_port.h"
>  #include "devlink/devlink.h"
>  
> +static const struct net_device_ops ice_sf_netdev_ops = {
> +	.ndo_open = ice_open,
> +	.ndo_stop = ice_stop,
> +	.ndo_start_xmit = ice_start_xmit,
> +	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
> +	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
> +	.ndo_change_mtu = ice_change_mtu,
> +	.ndo_get_stats64 = ice_get_stats64,
> +	.ndo_tx_timeout = ice_tx_timeout,
> +	.ndo_bpf = ice_xdp,
> +	.ndo_xdp_xmit = ice_xdp_xmit,
> +	.ndo_xsk_wakeup = ice_xsk_wakeup,
> +};
> +
> +/**
> + * ice_sf_cfg_netdev - Allocate, configure and register a netdev
> + * @dyn_port: subfunction associated with configured netdev
> + * @devlink_port: subfunction devlink port to be linked with netdev
> + *
> + * Return: 0 on success, negative value on failure
> + */
> +static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
> +			     struct devlink_port *devlink_port)
> +{
> +	struct ice_vsi *vsi = dyn_port->vsi;
> +	struct ice_netdev_priv *np;
> +	struct net_device *netdev;
> +	int err;
> +
> +	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
> +				    vsi->alloc_rxq);
> +	if (!netdev)
> +		return -ENOMEM;
> +
> +	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
> +	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
> +	vsi->netdev = netdev;
> +	np = netdev_priv(netdev);
> +	np->vsi = vsi;
> +
> +	ice_set_netdev_features(netdev);
> +
> +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
> +			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
> +			       NETDEV_XDP_ACT_RX_SG;

please include:

	netdev->xdp_zc_max_segs = ICE_MAX_BUF_TXD;

so that xsk ZC multi-buffer is also supported on SF netdevs.

> +
> +	eth_hw_addr_set(netdev, dyn_port->hw_addr);
> +	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
> +	netdev->netdev_ops = &ice_sf_netdev_ops;
> +	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
> +
> +	err = register_netdev(netdev);
> +	if (err) {
> +		free_netdev(netdev);
> +		vsi->netdev = NULL;
> +		return -ENOMEM;
> +	}
> +	set_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
> +	netif_carrier_off(netdev);
> +	netif_tx_stop_all_queues(netdev);
> +
> +	return 0;
> +}
> +
> +static void ice_sf_decfg_netdev(struct ice_vsi *vsi)
> +{
> +	unregister_netdev(vsi->netdev);
> +	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
> +	free_netdev(vsi->netdev);
> +	vsi->netdev = NULL;
> +	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
> +}
> +
>  /**
>   * ice_sf_dev_probe - subfunction driver probe function
>   * @adev: pointer to the auxiliary device
> @@ -57,10 +131,16 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
>  		goto err_vsi_decfg;
>  	}
>  
> +	err = ice_sf_cfg_netdev(dyn_port, &sf_dev->priv->devlink_port);
> +	if (err) {
> +		dev_err(dev, "Subfunction netdev config failed");
> +		goto err_devlink_destroy;
> +	}
> +
>  	err = devl_port_fn_devlink_set(&dyn_port->devlink_port, devlink);
>  	if (err) {
>  		dev_err(dev, "Can't link devlink instance to SF devlink port");
> -		goto err_devlink_destroy;
> +		goto err_netdev_decfg;
>  	}
>  
>  	ice_napi_add(vsi);
> @@ -70,6 +150,8 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
>  
>  	return 0;
>  
> +err_netdev_decfg:
> +	ice_sf_decfg_netdev(vsi);
>  err_devlink_destroy:
>  	ice_devlink_destroy_sf_dev_port(sf_dev);
>  err_vsi_decfg:
> @@ -98,6 +180,7 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
>  
>  	ice_vsi_close(vsi);
>  
> +	ice_sf_decfg_netdev(vsi);
>  	ice_devlink_destroy_sf_dev_port(sf_dev);
>  	devl_unregister(devlink);
>  	devl_unlock(devlink);
> -- 
> 2.42.0
> 
