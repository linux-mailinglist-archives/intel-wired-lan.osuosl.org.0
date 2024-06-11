Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C83D8903E96
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 16:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E9C36087C;
	Tue, 11 Jun 2024 14:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_Fq9Ut4BFSo; Tue, 11 Jun 2024 14:21:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C09F160869
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718115707;
	bh=MOlbXh57CUqdV6zmJODrCy4ZsxI/u6CSp7lELooLQ1I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cQjUUQ6nBmy1lWbYYUwXBFSivJwu8mleXQUo/C3uY1c54J5E+hh0mCPIa1EXVRcqz
	 3VLHTUlTySTK1qWXxU5Op/0HaBK4OQkr+uEAlvM1vCW+WTx+wsddFrddYbUYwPMjYV
	 HQW6zx6oV2LHAJ9W3JIQ15+7XZjY011xKTNzKZttkmQMwUp6aPKmz3AQgnwCq3k1RV
	 X/7Tozt8v+G4RNfxaMmk4QCVAoBiht2L0a2KEGBg7q5aoNSc13zhI3Wcd86vMbUpGj
	 yCkKY3DgngqofKN++F7qfioBJE4sMyqh71cx+/SoyWz/RKf99AaaVvsnzR1v+V3p/o
	 pDDiwLMQx1eJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C09F160869;
	Tue, 11 Jun 2024 14:21:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D2781BF38D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 14:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17B954021C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 14:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EC2-V0iJntUU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 14:21:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 368DD4019A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 368DD4019A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 368DD4019A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 14:21:42 +0000 (UTC)
X-CSE-ConnectionGUID: iTIAqA5pSYicKSyfz4SQjA==
X-CSE-MsgGUID: fja1kfqFT+2HnhgbkzufgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14954119"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14954119"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:21:42 -0700
X-CSE-ConnectionGUID: Yyym+ltoQW2T9+rCalZ0Jw==
X-CSE-MsgGUID: kTEKGV//SR2osh7iJxHVPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44583059"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 07:21:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 07:21:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 07:21:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 07:21:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 07:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UVyJSR0u7GyR8ri6JQwioHwPv1xUXo5e3R1TyAu/ow5ZT9t2ELqi1kJC2DUOTOkg1lC6cKxC1z9LkTZJ8NVrGNIMhad2pUN1oUAsslEwIeDK9uM6kv0J9TrTmHV0YSzj7Om6IqaR6HiPlldQzo7iLElQiRUDQc7ZEjo6Co42pu+8jFXS3JbjfmSHqWkpagvZ/icyWIxJXvpXcnCnFJ8wQUbPkv+s5ot0wSo7M9tPWHVml/tUPTJGe/seVs1JgaURm9Ga7pZ7SPkva+NWsYHi3MkZpWHmDurpF+eTch+yU/jeIilioihyyM5CGlT5g/5pon6h7pH9iik1Bx9H+GoZhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOlbXh57CUqdV6zmJODrCy4ZsxI/u6CSp7lELooLQ1I=;
 b=j9LPQkSzKzfH5c7CrjRMd2cl6FjNalp1q4mI061tKTn2jY3TwQ4UUfexBIKU/0Mf+ICM+omjq+75tmVqdA2Dq06pmMrASJDlPwfsYKjxw3p/czgubjRnPsMm17G0nUm1MM6lspiTk4A7Ja8uYo5jFOWR8hP4Ghqn9MqiWKxeyvvpatA5WhEw5MvPWHLhRJAXVezppzzBN1YsqwSFPHOFajMnFAzT0mRf45B/tfJ3TNakZJnvhIlKwUBxYzTQzx389hNE3YrzCl/ux/6PFuR7bCGHQvVZHRR5sHUzYsmPY+p4axHC6Ue5KJyZKoBwctschsvagWtNNs5CK6jln3BJxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 BL1PR11MB5978.namprd11.prod.outlook.com (2603:10b6:208:385::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 14:21:37 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 14:21:37 +0000
Date: Tue, 11 Jun 2024 16:21:27 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZmhdZwzIStFpghZK@boxer>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
 <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com>
X-ClientProxiedBy: VI1P195CA0032.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::21) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|BL1PR11MB5978:EE_
X-MS-Office365-Filtering-Correlation-Id: adf5c401-9634-4933-28d4-08dc8a21ce03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nP70+MUU1+qHOrJdxeQjoOXpPZNSlL2x23ohBXP+TqCTZAM6aLo+MBbJMoCc?=
 =?us-ascii?Q?BxwIjDAfdz9lHq2Jj6omzTjsYznQ54nUGUnzbD1fBaV/wRQXvlsqCzBzFc73?=
 =?us-ascii?Q?IVGARTG8OY3DpfYkG7B2mPIcSC2HXkIQnsMONTzeQSzK6BjfQ5C2Faki95Xt?=
 =?us-ascii?Q?agdmgdPuUERV4nAvzhb9p8uHZKatOtKFPVdGaE+Nhv4oBbATVng4lSZq1HZu?=
 =?us-ascii?Q?OBAzY+S9SneGIC+qJQTQf0JYl3li5KXGPomFETjXfOj/cWZxs79Ml1iDr1RK?=
 =?us-ascii?Q?KcyQkWuhapapHFPJl2WQk8+3VAsKjeduPHeH6NFLrZ1QbZbH7CbV3xpv+39l?=
 =?us-ascii?Q?8AZED4m78fzxQcI84/oKzgHXuazqBl0kodxMxKc81p4FkTskFnXlvEg4jsc5?=
 =?us-ascii?Q?eIIO4WNRNOCjz7XQ/nKchRsH32t+MmzGWeBIEzsU6q3tpnhqo7elIoqPGSQA?=
 =?us-ascii?Q?5kE3qR6HCRcf5ahi9wbqvo9Utd8XpSG6MenjIl5Plmv6m4uhWavf5/6r0XWy?=
 =?us-ascii?Q?Vg/mPB0nZHfJpmG2vKWYENfVYdxiPI+PCQEqUzz2YApU2lQtzJihWlVsuIdR?=
 =?us-ascii?Q?EEs79kAg4qa/nH4UfWGncxcZD+JKd1h2EMKLVyZJM6pL2T/6GaHkR91sCHOC?=
 =?us-ascii?Q?m8CLCF9Rm2Gj2FqVHmi60ByD8IcsqPurO1NWIlcAERNnTFOckzLi7wGaBzOL?=
 =?us-ascii?Q?h7+Tj2rSS+sqU3f0Zzp6oRAaSm3kqnW3vcdd9l/r45/GW7aowhL0aWNEep3V?=
 =?us-ascii?Q?nvd1bgJhxwBfBTvDD8U9aUZsmrLBcNRiuRciCk74+SO+3nLUGPtfuL/mPqWY?=
 =?us-ascii?Q?rZrMePr61qsU2IHdEGzK7HzckHshTxS6W/z15Kr6JqqamwbEI7ypC98NjKpa?=
 =?us-ascii?Q?6PkIQCVQJoI1GHanA5NK6Z4TZ20eW1XHza6dUkrWXb/umu5jqqiy8Lch6mlg?=
 =?us-ascii?Q?bHS8xM6dOW3Q/0eGQ4P7l4f2n8BiLcQVinGJ8OdNwWjRmcgnAbAG16fgODkg?=
 =?us-ascii?Q?ifXgtpfcBlGOzrBQ0MZnLuiUD3LXcbHfj3uNOXYFB+AdrNNXzAojH0ug55H3?=
 =?us-ascii?Q?xQ+6QspE1Sz/bEINkpNdCFi5zqj3JP4ZGMxIIDUcm5ZG5HCDZwmJ81ml8xCr?=
 =?us-ascii?Q?kuRP0Sn7dvSk8SDGuR9V+GegRK254Ohd92iRTWSgdUuwSXlepkeV+zWd4Iy1?=
 =?us-ascii?Q?wxs1Dw4YzkTQHAMS30QKiypERk4a9/GHbXbj1RG0ZxE+dwOjaerVJ8dlaJzI?=
 =?us-ascii?Q?6Edac+lezYub5LkB0ynFHExT85cdjDP4rfQqN7DV+WFD3ng57h43yNuBQ4UK?=
 =?us-ascii?Q?fx6qWAvLRTkU5btPJb7alhH9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X3oHAmz6OLHPfXTb0jK/duwrz0riOvuAc06lu6jtQIstTEe2SfLtgY0ybUZ/?=
 =?us-ascii?Q?Q7VLkIuFWgRgDY7qrowwSSW0Bl6oGritrK6ZEaK39ozjGD0ltfCPpMp0bCIF?=
 =?us-ascii?Q?NHWixYwvxxs/psY+1E1TYigs74FF0UwIVqkxlyyyPAM1ZqAgtJWgNZJoNKlr?=
 =?us-ascii?Q?RyKKVE3tWtZJqhuc8Jqby4SPYy1qlZI/Eh7xJ4HZ4rW5RlkzjrUjT7QPRnTK?=
 =?us-ascii?Q?XfUNx/hlMNalm8Y1pAsKzx1LZ0rTXjo767KF8PdNPd6Opzbt/F+YwdlKk1CR?=
 =?us-ascii?Q?PylyREdFm6jRa9RLozTqICi8rawAidSb6Q7xXbX3Q05UiOyxW+Fh7mmBx4sQ?=
 =?us-ascii?Q?SQNHo2307aScbYZyL2EWNkRIpZEPqgPO05wgRavTNqPM2UHowaqw5diADqEf?=
 =?us-ascii?Q?Z7mD80fFG6ngK298sSEpT1Q2zhfaEjK/B5aBL42ymf3GXDTo9dy3gvMbGsvb?=
 =?us-ascii?Q?n+vUYIZ+EE8YOtx1q+6HduZJPhU1Y3pflzkLaSm5JjPca7ntCIHMybDKEBOh?=
 =?us-ascii?Q?+sl/2VE/iBCtMjssK5uDelLbDp0C0spjpVXPy0fq+SHg+GZAzHeJ6bD4l1A5?=
 =?us-ascii?Q?QESV+Or8StuYLYtGlQ0dAAXuZUkbLZG9fuKQ6zIOUawjm9BIs816x5z3lY6t?=
 =?us-ascii?Q?MZBO79rCUhnryu/g9AsiCgghzoQjU5z2/nY7xrbDHH5iGNfRykO22b5oCcDR?=
 =?us-ascii?Q?EHsqlYWJenoCKxbYN9MlEWqfO1FTAUhm50xIy/fPqB37llCRS+MaATvYPjyT?=
 =?us-ascii?Q?fopO3S2qc2J/Gv+DxqAanCxN5v+CnH1IIB0yUiOylpe1HzmJSUiuWmhQ0C7C?=
 =?us-ascii?Q?eRItZAArsD3VKyfCMfL5DlhKI+UV5y88EKWyvqTSn6m3JHrgNIai8V5Kxh8t?=
 =?us-ascii?Q?Drtam6J4/9+lHWtmPIejskugkDrCMxzuJio4Wrx7CGR1v/PlKOzmwTzzjRkI?=
 =?us-ascii?Q?9rVmY2eHbru9r/6IzsxjVisMqur1jUkEXeEvRagi8bLK1Hrn1AmOQtpeo1Xk?=
 =?us-ascii?Q?/8pFW/hdeTijnWhDECPx0Kj6pjU1BWdLUOpO7ulgf3t1mio9c3Iek7zhozU+?=
 =?us-ascii?Q?oGaCSkNeqycNSYXUSibkWgWHCGx94EqI2SRJY6WwnWrkJ7+RLu0sd2wuwu5I?=
 =?us-ascii?Q?5Z/NPJR6M7twpmYfFKHcXSwdhw7NfsneUQkMHEMeRaWtDgcdCtD5rsIbT9zl?=
 =?us-ascii?Q?6v14gA/jMHvzMbpX1gMTEc+dGDfa+8vuQ9S2nMFxmu7lOBCdgLDltu2sMzAg?=
 =?us-ascii?Q?Sxq7jRYlppCw5WNVG6Qe81oVNGY9uU6hICeJ+X0fM+Djo0xwrYu+hLAGtZaV?=
 =?us-ascii?Q?XRV87Cuiiep2iHsfI5JpxEmbiPWUINctuWZ/sfAZlAtU0k+FkHcAlNukpW1f?=
 =?us-ascii?Q?Pj0DvqwCcfhuCD43XCiX/DppQKE6jvskZEhQCE9G+J9Nkwk3InCNWulCOoL5?=
 =?us-ascii?Q?G/WojOepxZKVpeeGJ/3mlcLbr6t0bVcsRymhlxDSI5KQA8+VTp0qm6JtF/Zz?=
 =?us-ascii?Q?pohpYmeebkSpQy3RAeJlxBGAMyQ80kvdAooXpVAzlYN5k7bPOX7oNEZXG8Us?=
 =?us-ascii?Q?4KEvqM44Vy5atQNvj2Db4HoMWOaJYRixs34TyKnxwo5FmLhzLb+4HrNt5wEp?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adf5c401-9634-4933-28d4-08dc8a21ce03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 14:21:37.6067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uADthAKKogtdiZnX+2Y/+NQlP/dDD2mnI0FdpBfLX3p6KTphhmdglZcb+guVbRbZQg7HohsjUHH/ra5ljTsqoywiEOGGJG99eam1g9Px6Wo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5978
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718115703; x=1749651703;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qEqKKojQnCecQoycX1J/hnl49UKtttAhEYwjhOWc+KY=;
 b=dIkhzK/XjA9f1Z4kp22veSxc5Of3YqWBSz1Ja0XUshriCf9aT9BrtN8K
 U7qyRbe4lgzmZobVgjfVHgClRPHxuu18Qw+e1n5IXVIKt/Vcf52gFqlDP
 /q1krZ/RF4z4MZfq1Evb3gWxgpwB8lX2uDiMtL3Q7pNqFc4koCGu7V46P
 pTH1CYk1oF1DvTZn/032nUpbJ5oZoBCx11piJ+ayEKZk/C13j3i0yUbEf
 NW8TM6PN/SKYOb4SToqsPxpmqdCbw8EraAFbLgwAdHp8mO2GZ2u2QQDBP
 PgzJT367fxPrKCMaJxRN+u9gV3FRGjGQiBUx5MvgTbWXMk08OGNOTLhCb
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dIkhzK/X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Shannon Nelson <shannon.nelson@amd.com>,
 magnus.karlsson@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 01:59:37PM +0200, Alexander Lobakin wrote:
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Tue,  4 Jun 2024 15:21:48 +0200
> 
> > From: Michal Kubiak <michal.kubiak@intel.com>
> > 
> > Address a scenario in which XSK ZC Tx produces descriptors to XDP Tx
> > ring when link is either not yet fully initialized or process of
> > stopping the netdev has already started. To avoid this, add checks
> > against carrier readiness in ice_xsk_wakeup() and in ice_xmit_zc().
> > One could argue that bailing out early in ice_xsk_wakeup() would be
> > sufficient but given the fact that we produce Tx descriptors on behalf
> > of NAPI that is triggered for Rx traffic, the latter is also needed.
> > 
> > Bringing link up is an asynchronous event executed within
> > ice_service_task so even though interface has been brought up there is
> > still a time frame where link is not yet ok.
> > 
> > Without this patch, when AF_XDP ZC Tx is used simultaneously with stack
> > Tx, Tx timeouts occur after going through link flap (admin brings
> > interface down then up again). HW seem to be unable to transmit
> > descriptor to the wire after HW tail register bump which in turn causes
> > bit __QUEUE_STATE_STACK_XOFF to be set forever as
> > netdev_tx_completed_queue() sees no cleaned bytes on the input.
> > 
> > Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
> > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
> > Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
> > Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > index 2015f66b0cf9..1bd4b054dd80 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > @@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
> >  
> >  	ice_clean_xdp_irq_zc(xdp_ring);
> >  
> > +	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
> > +	    !netif_running(xdp_ring->vsi->netdev))
> > +		return true;
> 
> Why is it checked after clean_xdp_irq_zc()?

There's nothing wrong with cleaning descriptors that have been sent
previously. We don't touch anything HW nor netstack related there, just
bumping ntc and producing CQ descriptors, both ops are pure SW things.

> Also, unlikely()?

Thought about that as well but we played it safe first. I wouldn't like to
resubmit whole series due to this so maybe Tony/Jake could address this
when sending to netdev, or am I asking for too much?:)

> 
> > +
> >  	budget = ICE_DESC_UNUSED(xdp_ring);
> >  	budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
> >  
> > @@ -1091,7 +1095,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
> >  	struct ice_vsi *vsi = np->vsi;
> >  	struct ice_tx_ring *ring;
> >  
> > -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> > +	if (test_bit(ICE_VSI_DOWN, vsi->state) || !netif_carrier_ok(netdev))
> 
> Same for unlikely()?
> 
> >  		return -ENETDOWN;
> >  
> >  	if (!ice_is_xdp_ena_vsi(vsi))
> 
> Thanks,
> Olek
