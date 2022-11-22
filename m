Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F13634160
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 17:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C948741815;
	Tue, 22 Nov 2022 16:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C948741815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669134220;
	bh=JOrVc/eJZ3QYAHn09eTF5H/3jmcYDsFaX2wVWFSq0vM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kGgVrKBDzMdjFKNMlaBV3wdJky2kpGs551mAO3bHVk7SW81P0JIiiobP3qJqbR7Db
	 ybZ0uE1hbLDwwMjpATSqX4gKyMkx/MMdaLFh7zREy8dP9UNeaU650PdJ+WTcsGXf67
	 QktUG/AKjIwB/0zRdTUEmgsR/rz1ZE4DM2Jf5GeA8DHKQNDqahL1HGKacMk4DXHfk0
	 Qla4BlI8+a8yVeRXoDidPvx/xTwe+MBsCQvWxtpfI5/PbQoVeadGYPY79/ibmW+Rwu
	 hWp/jzNqhjtJn4ZzmKEtSRbYCIgRspNajlYCo/h1usuV/kM/7rlDTeF4wUrDuM/1b2
	 uAZBvZfQ666Pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gk5rscRO6_uy; Tue, 22 Nov 2022 16:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6537C41826;
	Tue, 22 Nov 2022 16:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6537C41826
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E66F1BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 16:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0622C41826
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 16:23:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0622C41826
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzq4Dijzlck8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 16:23:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD25541815
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD25541815
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 16:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="313886731"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="313886731"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 08:23:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="730454768"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="730454768"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Nov 2022 08:23:14 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 08:23:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 08:23:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 08:23:13 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 08:23:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fL0oPkuvOzNTHUB1WnLJLv81tOGWTlvINnL54mFRdh2U9+++4gkaE0VEKYP0rF7jfD/QRIG4R2wj7UgOYWfF3lQRqVWdkwxCECFWf7hhU9fo19DsUcB+1+Z4qFJXZAW/0Qaci8zCTpwRi19IRPk2VHCbStm8WZjI3UrPgG5nog+/v0jabKutDBQg8YDaVGfogAkhoU0UrHuRoHLRDgza6Hiq1PcKLv5nXiFn0U1G3U4gXH1UfdxMMJLdByh2rAckNPV51L4aTthrMaI0DA1ScAlMYi+s3ZAL84ACyobdiQvQBOnfbdWMh5L8qtPG1PUbPrGbKHjVg9l9RIpFBaZBSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CztlnPuWZ+yz0s4kdDP3ScVXFfNbVVKogWWaVhT9CX0=;
 b=hfBFs2+PLZtdEr0EURl0T0k9PdjOHWBMJcWAIq1B+ZUqKwwj/BeRf0PsOvclWx782LaX6y9KWLVW80Jocvr6eCp4S3/JW6avhY8qWNKfTkwzL+0aDKVzM+NY4YOIOClaSt9/d+sNu4vJGeSlHSWjpDEV7O8lrv52YQkZK+kyY0scjwM/2RnXu2v6kXCZ1bCK4ZgDWU9NmRt2rkb0We4erxVJGcHyv/BLQOLFgINm6EZZQrxrDlz4AdgvMQ63DNPg5FJt//OWLjBb6ctvVDoznXTkUq/a9DSH3qUn/dSjmou1uNuOfPQTnFplmk7VZQxWYSlGx7k4dh8znh1LPLhY8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 16:23:11 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%6]) with mapi id 15.20.5834.009; Tue, 22 Nov 2022
 16:23:11 +0000
Date: Tue, 22 Nov 2022 17:22:59 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
Message-ID: <Y3z3Y5kpz2EgN3uq@boxer>
References: <20221122152630.76190-1-akihiko.odaki@daynix.com>
Content-Disposition: inline
In-Reply-To: <20221122152630.76190-1-akihiko.odaki@daynix.com>
X-ClientProxiedBy: DB8P191CA0015.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::25) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA2PR11MB5068:EE_
X-MS-Office365-Filtering-Correlation-Id: 28bbf54e-954b-4dca-c859-08dacca5d948
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rjNc9hRhL7ozaOj7mA8562NgPymB7y0nEE86yEv0vAPaB0CTlmCZKARVWBbGAxF+EimaW+EAlXwL3nCzRKEffMU+G4/yu6D5LntOYC9YGmBJS32KULgD6xiWElumXF2WFO+SlqfZUvPukOWzGMDa5Z6r7GsfjchW9MHF03l3LMArVOTHq5QtqJuIaZ6LCHE9ym+iJp1To9ykwIb+gNkjdwL4oEztfxlCkHuwtAxCVEh/9qlk0iPRv90H+MlBJzI6wonbjPLDPtFiKNF6TE/IgHIhM1/xn8wmCf7RMrTSXdgDejvDrPeTH79WDVRrRtjG8VQMPWP/6EXzClM0yUco8egveJ5qI/cBLq17elgSJFnBMKCttRt5NnxVlshkU1Ts5L8q/FXYupHSt5DggQZ0AKcE+l9wy+Yapvvo+F9FvXFzTJ3RFtZhCP6J2VT+5fT9h9cgcfRLUjZC+E3yvL3l/Ut5yaBWEPAK/D3HEPRd2NYjSoRlJHy9ktHqrmdhH1/jMBQUX4+FdaNDRSmTz2vC+3m9Qi+e0qQGfleaheZg26sqITD150igyl5rRKJZK1zTRvVoECAcZTGOt1BS0O6xiRS8CsNJM/UuABpmcjnS+2WqL96J9bV8A0t6Qqwj91/SBKGJei8YzBhchv0CLxSE0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(38100700002)(66476007)(41300700001)(82960400001)(44832011)(2906002)(86362001)(83380400001)(9686003)(6486002)(316002)(66556008)(66946007)(8676002)(4326008)(6512007)(186003)(26005)(54906003)(7416002)(33716001)(6916009)(478600001)(8936002)(5660300002)(6506007)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4oM1GobknaNr+7bO0rHMpsGZmE87ajlh54HZ9jI2a9qoSplF4+rt/pez5B79?=
 =?us-ascii?Q?irFIKvcfmpDw0BCKL0j40FATCdjR9NkTgFUVJkwsbd037fmzGlcUUeUPt/3o?=
 =?us-ascii?Q?4mSzFs2mXi3Re8wNhlIpVxIUQRILP52BsDeGugCJpNg2N8+8m9Dx29O/R8PE?=
 =?us-ascii?Q?VFDLFHSMmXRcp3uabf1VXQhRitAECMt4cKLTTYgNMjCEEzCj+me6ORJl/RzQ?=
 =?us-ascii?Q?x3S1s6vEdkh9GQWEOPoqez8uhxvTHE+vb8tWOWBVNHNNeCOgNU8HAlcOu9mD?=
 =?us-ascii?Q?1M2ZXPttHXhqTZdP38DsoYcA6yOdUc3nc3C8afWFj5FUh3cI7cs3HsTVgPmE?=
 =?us-ascii?Q?ww+lzCbfY1GXgwL5nDsxFGdkw5TfVkKwqvOluZCLUdgz+HN5coboMIgXs2jn?=
 =?us-ascii?Q?CLgvxqnp/+Bwdb1gnK/rwppMqqNsvMyweiTQwFiCTS7q4hYVRPyj6bQmNSKw?=
 =?us-ascii?Q?whC+EReWulaVxyZqz1xKX9QBJQoIjfl8mes+D0vFEYUtbU7s6VH/CG4LCWOF?=
 =?us-ascii?Q?Rx9RYUycRUCqwHjbYpDZYEGty96OLgAB8ebkF/1B/6L2rfQwcKDqOMO4mqiA?=
 =?us-ascii?Q?ssDcdoeMkJNbL3YrfnondyjmXQwevMTPiPPCfS7U8OmfbmUrpwP82lQuiPjt?=
 =?us-ascii?Q?s3D5wnGHuq9cVMthEVyP5XJAMPeLUV32B30nLwG6Hi0v248whGPnL+rrjcRQ?=
 =?us-ascii?Q?ai4CzDEX4+ionUWrwG3MEH6ym0+0OV1n/4eiSBOXs+2C/5JT+Y9zRkJ8XCvU?=
 =?us-ascii?Q?idLiCBVE8naouX0ebkh+wfJJCBghsnwnD6EfOodRHLgL90LvHQkaMcd2OgJh?=
 =?us-ascii?Q?x4gHBTji1v/IMqoJj8SDz+PtiuqXdKC31co+LZcYhonlfnNDEqr3efC3BAzo?=
 =?us-ascii?Q?3kYXUzRuzj1ukNdaWBqo9OXFg7sHHKS9gZbuwEEyXhbqRCalKbBp4xhDXjBI?=
 =?us-ascii?Q?+lcsvBkAu3unmNxH8V/q0dZeMNjPd0b7lvcVPW+Yh20OZ2AO0jD6jEjf7MSc?=
 =?us-ascii?Q?GtRYfK0vhBJH7HxeFOODEnhcpf66Pne+ODkGfvy/ZfDgd9tzgysev7A0n2/9?=
 =?us-ascii?Q?NHAPLXzNVFGyJqHSThN1OQzrfJ78tPF35O9Dw8WgFjB3oRMfYWIBJ2NTikfL?=
 =?us-ascii?Q?crQVtLd+bYCasUxAOz+6393Q616l7yj53OpL+8StOsXSo1VQ8eReZmBbqsyR?=
 =?us-ascii?Q?QKhL6DakYvB401dbtYVLbGTVz3Bxd1x7n07Lf1mlROn6ceiRoSG4Pt6w91JS?=
 =?us-ascii?Q?nE0RZ/KAx25MfdN/bZImNU8KzFTiquXaxNkAUDVKdxNmtri7ryn7MxqB/cZC?=
 =?us-ascii?Q?s4t0QKo5fe661Y7S9BsR7hFw9b64sHKo9ZjGzAk5vzC6qPKGXbpjRBxansN3?=
 =?us-ascii?Q?dHKRWRW2kJihIl86es1eK5Iz35pKb9ogNZih2oMGscb267jBaGek7iYz4uFZ?=
 =?us-ascii?Q?OCouHIMfpGDrxkL8ezcL1pVRPnNFFqsvPwnf9ltdoK6UCTg2S24tJNW0SBzE?=
 =?us-ascii?Q?HC48eX8FM5w+utjdqjjhx4/RAef4LhQ/Ht62JUAML60IUTev4upnO4Gf4cZb?=
 =?us-ascii?Q?cg3nixdja3oHoCNTh+103VZ72aIz3k9vIW1xlA+07MsUVkeMX8LUP+hltbNf?=
 =?us-ascii?Q?Yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28bbf54e-954b-4dca-c859-08dacca5d948
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 16:23:11.4848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gt5NXtA4NK+C6fcB8L8FTYJ8/41vj3aomAnLZXVJ1nmkFUKfxk+MY/vnmprhc2wgIM0zs2j/KAqoetw3oAlLk1rkg9OrB/qwuTz4Bb/sFoc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669134212; x=1700670212;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=K+7W8DofWSLifm+kIBDk5P+4e0sEO6lLJNW9MHOJjM8=;
 b=Ge3Ij+B/Kv6bVE+akjus3ORjPGz3/MtphzsgUmvHk6Jf0rxMJOzEz1NH
 4LRimc1E9azJzIcKAc2WY+VRn01dR4Q3HzXshKzgvMS8VQ0fhG6w/FyI/
 cf7GvujMoJKc7HhxOFbkfX1Lmz4qLBMY+Ut2aMPIn4Pgpd5j5HJS0VY4u
 yATxaUTGzGTlCOgSn6/HeTgiNHQS43X4CmjFNenOh+U4KiN3LqoLArQRU
 +9FiBk0DLagxgpYKGVG0IJT5fvyoFvo/JOsAG+2hF+fFCUqCVdbxiVsNO
 DD2xnLsUQiC7/QZEQWslXLsDtOMjdqhZcX6ejg/sFJJheluRz+j4Ap1cb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ge3Ij+B/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igbvf: Regard vf reset nack as
 success
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Yan
 Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 23, 2022 at 12:26:30AM +0900, Akihiko Odaki wrote:
> vf reset nack actually represents the reset operation itself is
> performed but no address is assigned. Therefore, e1000_reset_hw_vf
> should fill the "perm_addr" with the zero address and return success on
> such an occasion. This prevents its callers in netdev.c from saying PF
> still resetting, and instead allows them to correctly report that no
> address is assigned.

What's the v1->v2 diff?
Probably route to net and add fixes tag?

> 
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>  drivers/net/ethernet/intel/igbvf/vf.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/vf.c b/drivers/net/ethernet/intel/igbvf/vf.c
> index b8ba3f94c363..2691ae2a8002 100644
> --- a/drivers/net/ethernet/intel/igbvf/vf.c
> +++ b/drivers/net/ethernet/intel/igbvf/vf.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright(c) 2009 - 2018 Intel Corporation. */
>  
> +#include <linux/etherdevice.h>
> +
>  #include "vf.h"
>  
>  static s32 e1000_check_for_link_vf(struct e1000_hw *hw);
> @@ -131,11 +133,18 @@ static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
>  		/* set our "perm_addr" based on info provided by PF */
>  		ret_val = mbx->ops.read_posted(hw, msgbuf, 3);
>  		if (!ret_val) {
> -			if (msgbuf[0] == (E1000_VF_RESET |
> -					  E1000_VT_MSGTYPE_ACK))
> +			switch (msgbuf[0]) {
> +			case E1000_VF_RESET | E1000_VT_MSGTYPE_ACK:
>  				memcpy(hw->mac.perm_addr, addr, ETH_ALEN);
> -			else
> +				break;
> +
> +			case E1000_VF_RESET | E1000_VT_MSGTYPE_NACK:
> +				eth_zero_addr(hw->mac.perm_addr);
> +				break;
> +
> +			default:
>  				ret_val = -E1000_ERR_MAC_INIT;
> +			}
>  		}
>  	}
>  
> -- 
> 2.38.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
