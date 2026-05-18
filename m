Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNB9MTIUC2o5/wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 15:29:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE23556D9EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 15:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58790413CF;
	Mon, 18 May 2026 13:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5J3OiFyQXLZm; Mon, 18 May 2026 13:29:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87FE14137E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779110959;
	bh=WX11VXmk/l4FzNEocaU5ivwEpzcNLCjFpHgVubLVej0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WE1eoU3OwpCVnlf8aqzQsyYVb/qCYCiHDCx19B+XhV/4/48cCyZPfWxUz93E920or
	 Dmk0EYKG3STVI1VMw8N9k6jnmQfZLN7XaZHXHjhcJ6HRbvFFbjDbPVEamcQ+nxBQOu
	 t+3YQkAsy9P4mec9u8f/ffb3ubJY4L0Q91NddetrvY+NY+ZKjI10JuhCpCkJLlbZzk
	 JswkhpOVKrfYZOY+hUF9sCh+HLefQg98bkCNbvT996IwhzeObxDKJTKowtXn6brYig
	 by1OqTM3fV0udAepWCTD69mtUbehdWbrS4Z1XwTz1zbAqqkNQtmKpCRuOhr1UyHma1
	 fp9IEQRHuRhjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87FE14137E;
	Mon, 18 May 2026 13:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 542071B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 13:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39D8041341
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 13:29:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2xZxxn_kNfEm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 13:29:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F411041339
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F411041339
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F411041339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 13:29:16 +0000 (UTC)
X-CSE-ConnectionGUID: LzsODtp3RxCrq59l6purBw==
X-CSE-MsgGUID: Qi9YZgjeSZWPLw7D3l0r0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="102635517"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="102635517"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 06:29:16 -0700
X-CSE-ConnectionGUID: olNzTuGKQ62cpkkrXXq8LQ==
X-CSE-MsgGUID: efapRzxUQkWh4Rlf4PYmJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="238558846"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 06:29:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 06:29:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 06:29:14 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.7) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 06:29:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E0qkZCxsaPzN8tDLEyWdEMEHnxnSWpmpi/rfRiwdOINhslDvdlBoDp6e8ryIqD/eKi+6vKE5sdRWkTA9IlJWw/Z0ztUKo43tTAxC56fZQjM5Ub5UblzA3jj2NNb2Bv/nTWySXX4Q6zpI4YvaOFWYu77Kq2WMOtg5WjRAVni1HIL0kR90HL1fx+atknce87OiJaxGRzjwnx9duWCd8gCxBpFlEmGkhU+j3+3GTCstuV1VXRpx59JsgJ/AP3dknIDeslAvKP9tNauBaC7iitwZZ0Zac3lPwAnzCZvbEp7AoThVg9zwb+rO/Sir6rspf1ASR5vqqkcRkL0VfjaXmpStZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WX11VXmk/l4FzNEocaU5ivwEpzcNLCjFpHgVubLVej0=;
 b=YI9jjAk7WERnmfOFBrFP4h5I1G3BlKjj2R5vlxv8XSS57DFsJnxlG7GbcsLYxbNmmJgZOcqHhVV14/NGuWYWlekJsLYw45VilAjHo46ZvYjD+iTZ2U7y5uR4yQZx9yIxS/++4AWyvGGYyqMO69sOIGzzJNfAWNpmXiTFZZeOw810RSxDCEUXA9TEcG5udbC2/fXiWCwCXkvIF82cFduTSYblBQ98fOQbCHxdRKKWyBj7BzvBywTuOugLBjhiQm+GWLhvygrfyUiKaifugFIhu+JdP+VlCfYPHJNWVw0DvVeh4YJcHETHW2/gv4R6aFg2XuvLBSWN2l9Wb35wUpeyXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9913.11; Mon, 18 May 2026 13:29:08 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.21.0025.023; Mon, 18 May 2026
 13:29:08 +0000
Date: Mon, 18 May 2026 15:29:00 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Lorenz Brun <lorenz@monogon.tech>
CC: Alexander Lobakin <aleksander.lobakin@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 <stable@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>
Message-ID: <agsUHNss20SweH3a@boxer>
References: <20260512152658.2818805-1-lorenz@monogon.tech>
 <9c49ecf7-1d35-4b03-8a71-9d724562594d@intel.com>
 <CAJMi0nQN+XB14Z81=W2reEGnax526-MB=Armx+f_miWMWUmRFw@mail.gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAJMi0nQN+XB14Z81=W2reEGnax526-MB=Armx+f_miWMWUmRFw@mail.gmail.com>
X-ClientProxiedBy: VI1PR07CA0235.eurprd07.prod.outlook.com
 (2603:10a6:802:58::38) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7579:EE_
X-MS-Office365-Filtering-Correlation-Id: 888e71af-12a4-4e66-5e88-08deb4e170b5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|11063799003|4143699003|3023799003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: k5EyrtdqINVOMuyud83Bq7IXz0rD62n6KAzncV5Rp6u495dP4Co1tx8dRidWPAiY7kYgyw9J86mFe+J2zhSJ5hyFn1F2fGli9+U8L/BDjfG2u0ClMp8KBpOpshGGmo9eLsyU/Vrg9TqblXHPIqJi71wwziprS4FvwCsgeNvcbPs+2Qur/gpGcqHtDHcGIbeP0n/tKwXUivol1dnFOG2srSgARWvnjh1qHrhlwKc6jHWw8wOiMyMs4RHhZxfTjGDZhEBpuwqw52APmW8bk9eTMYDj5OUXkKa8+m1NL34VhmAN5MgurUtMO/x9XcoVDZKryo4J4E8NK6hTGtoD6LEZXmqmvSEH3CctVvhAPwISFmdsyE62Ecy8AFMBG9T6mj3QCXDj1SlDwgwwQNz0218DKVVR8JgJIK20YYmgdEsz08pwOGSDdPW6ziNSjo8luzF0G0QQYp6iagB9A0H5b5060jLCbWaOuKB5KyJ6cUBLEoPfsVnR04825mHovPoD/ivU+lRx4sZrWvmOwuzLOnI2AOKoljv/cWDZn8l1nssyIxEPg4cbw4CCeiYQQS3H+iFZbEH39rrd56gJ+xpapcm48GVg4efr80A+QO3N3W94ikb41zhuiNPf3ihr5PKwO6+icyduhMfbQSKsIaqJ1T75iCKBTf+RvPZEZzba9qdPvRAHCSRd24SxRfLs5fZrQFIEcZCfSpXYAzLqskZus9WN+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(11063799003)(4143699003)(3023799003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q72r/regXYdPxWS9/rczUyuts3HRkRjMpd7SUXu6eNrM+6b4peuNUxYE8Dzh?=
 =?us-ascii?Q?GyLakiO04X1FqOOlE7sbcohomUkUyqYjA3//ih6gYepZtJZdxqDYD5j+1Edq?=
 =?us-ascii?Q?XTCTvtg4/kvAiJ9Ge9kBp+q31G85dJBCP5qg6NMVkLgH7TKB5a8HTu1+nGLc?=
 =?us-ascii?Q?z8qatc5pY4aW7TdTeEPl3eUwHAlopRR01Ug3IwasZMpfRkJU/jchAe7yP7cj?=
 =?us-ascii?Q?HMzIkN59hiDvO9mTnluc2hiJkCgBjqki2QIIkzGTMLwD8oNUjPA/107s70rX?=
 =?us-ascii?Q?a0iD0Nbk3IM9ATuOVANFBLBZAuLnni2y/8/Bk4Tar29/aEyROYfUGymgPZNP?=
 =?us-ascii?Q?goa04pzt7YduoRzuFQAvRo6RmgkOAW6kW3iup7MTzo7JFY/BG8FWhN2oz6QY?=
 =?us-ascii?Q?sA45MBB76igdtFLAUyg+olo76RiGk1vGGsPz6hriKzGnJ6ym6iRcxrb94vwP?=
 =?us-ascii?Q?noJsRSaJQreBzzWvKmXX4c0NIb6UbxS1GTS85xR8RL69r7wPhQFm5LQm3KM9?=
 =?us-ascii?Q?tteaPwqMcUTr6S3/7pIDWDI1yom4MP1HwNfQLUunDTAFlNT61axvGkogIu9D?=
 =?us-ascii?Q?F61kf3VIxXNMMe5ncWhAuzc1E0kepE7dQHYBJ8UmRwGgpUB2+f2CkOIlKlBy?=
 =?us-ascii?Q?knN0UOXPZT0XAAygrM86unEQxLwRSdLKO7qYIH9XSNW5UGi/nwOpO/UkNnWI?=
 =?us-ascii?Q?Mxlrt9O6BAy8bVEMxmEfmh+UmfqaxipjK/inTm8BFp5jcLp1cxIgG0lb+pj1?=
 =?us-ascii?Q?lQ0D1tji2tuqU9Bm0NuLNUZdMzEJmTXYtYRGr1mah9PvP8zAr8QOlIXMkc1T?=
 =?us-ascii?Q?qcoTQCHVqMdYHHogvqauX8iq0l/BdAHBibDG/xMXPogDNxWMh5mnAgQvbmHx?=
 =?us-ascii?Q?zYFe21z+fW0EOExwmGn3RZw4pWl3/NrABoPRnt8fZUQfGhS4X3dEw2WasZiL?=
 =?us-ascii?Q?NoYdgeW1l/RVG4FmT4KU1TNgFH806HHPIvTr9U/LsvvT1vzNwAghAFCAEbF4?=
 =?us-ascii?Q?VoLC9STd2DtUHS5c+0MBU+ROPBwDQ0gPCLXEeyvnE0zZakKhbkOB7zeIoaV2?=
 =?us-ascii?Q?aRCTD//by+nDt+/70ZE8nWFelecXia/YHRkKdVCuKWpxfnd12vnop2Ym1jY+?=
 =?us-ascii?Q?sdBJKAalL+mqgSaoPlDWv5YjtKkndU0AmUYoIwe5CUIMl9WY4b7H9eHOPo5X?=
 =?us-ascii?Q?2pNyel35nJ9dXWwpogAOVTqqlqJm0W+N37wxLnJldABlijyAVFtH8xPsg2K4?=
 =?us-ascii?Q?Wy7cv59w1ml1nihXVWKOLJa3tHfvcBeiQWw8DG6XFwZ+FvevQIdDTvMDQAzQ?=
 =?us-ascii?Q?DYjt6g/IWkchT6kBWRVA2FWKizgeXJxoqAdoxdGOL04jiTSDIm5p4ur5F5bR?=
 =?us-ascii?Q?62KZv8ajdLdnStB7k8aR4glBH8NKSnWL44ykP0/agl0Ahs7g0yMxZG7hik2Z?=
 =?us-ascii?Q?Pg+Qxtl1UShYGH6Ig2qW2ciF7q3/3IzdwQQ9nKRQDzltDbficO+PAM3ptdYx?=
 =?us-ascii?Q?cPne8N1rvNuMX1AXYNcvekM+gyOynx/Ne2g7q5Hv29yH69yCWcaUI3cvkP0a?=
 =?us-ascii?Q?AnZoxwoxK8ZwSWO1+AwwgIX9+I0aIRddP4UsOYl6qy7ZFIkiToXQSHWnGtyG?=
 =?us-ascii?Q?LXE1ace7AUuvSy8+shefekRktuJNmYKOcN4m+UZOwDrt3QlXFV+3DV6ZdgNU?=
 =?us-ascii?Q?g0p0jMh+EYNeffF6j6hGFSoc7tCE8g447NhiQb/OST8ZsrTWIz9irvMDXKRj?=
 =?us-ascii?Q?0fSDRMZc2TCfZGx3RLxk4Sj0vVkEGQU=3D?=
X-Exchange-RoutingPolicyChecked: aDKATHQ2EYD5XIlG5DB52GDjXZQrNJvg1Bn3k4w9LslbeN/8vyDr0oucLeRxeZ/Nf5Qo0SReD+PzXZf1A84LLYxxYbq7xJG6YWWsQJXacZ2kRy3LkPY24W2eVASstEuVmGvKQ0lgFxCa3kya3DjPahDir7BocQcXoZSUoD7F9wfbgR6NNHL7jFS3nUsSThjUc1kir5/akYgB+Amo993gJ0n0AQZEiHT7U/HKUXXmLTtlcZrfx8euWHNiLUr4FMpNh7xlRqIfe6Yx3UxU32QU55M3qiPdeHPSSou4JsCR0NN3fdUajNVrWzaRVA5yh+hRp03o5TxYBVJEcXWLgisN0A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 888e71af-12a4-4e66-5e88-08deb4e170b5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 13:29:08.6076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jNnHGXsNC/TF37Hp94n3T6xD0pTufiTm6J5GpODa/C5Dw7vNINLpo0rslJ/RJFBg1jxjX3aUWVsSPWVWBZvFORGq8NSypZ2c6d8ifVWgaTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7579
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779110957; x=1810646957;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QSmw6jgA2745rqJlcqJ1rc77ir2Uq9iQlYH1f9D/rGg=;
 b=OtbysqqRqg5avS03916yuEnCbSQ6YSW/eQuoORmIAwvrU3FxnGSKqS8K
 Ht4YDCPf1eSMaa9/sPJcBm4z7GUqE6o8vdvdwt7mKMqPo9Ij4magKaGG/
 NH4yGtpKPlyBkseK4wSUluHmSqK3mECuXmTbfuoFmM5LEwm/JMxBMTSeW
 9AYcCItwoE45/THtDvRLWi8ztenLHubXFzzX3xeR+nYOTpFEF4xmBqGIz
 adqKuRtvqL9WZVZJz6sSsIuS+sZMRBv5HICaS4DwYTbOI/jYwwepvUeOV
 wcCArg0PeH4ZcW7qgbVnN9Onkh6mRP2aKV8xu+4zWNSW6TLJt931XP9wM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OtbysqqR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] xsk: switch xdp_build_skb_from_zc()
 to napi_alloc_skb()
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
X-Rspamd-Queue-Id: EE23556D9EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS(0.00)[m:lorenz@monogon.tech,m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:stable@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[monogon.tech:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

On Mon, May 18, 2026 at 02:57:55PM +0200, Lorenz Brun wrote:
> On Wed, 13 May 2026 at 17:21, Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
> >
> > From: Lorenz Brun <lorenz@monogon.tech>
> > Date: Tue, 12 May 2026 17:26:56 +0200
> >
> > > xdp_build_skb_from_zc() allocated xdp->frame_sz bytes from the per-cpu
> > > system_page_pool and built the skb head with napi_build_skb(). The
> > > latter places skb_shared_info at the tail of the buffer, but the
> > > helper sized the allocation as if the whole frame_sz were usable for
> > > data. Whenever the packet plus reserved headroom approached frame_sz,
> > > the head memcpy overran shinfo with packet content, corrupting
> > > ->flags (SKBFL_ZEROCOPY_ENABLE) and ->nr_frags, which then drove
> > > skb_copy_ubufs() off the end of frags[] on the RX path:
> > >
> > >   UBSAN: array-index-out-of-bounds in include/linux/skbuff.h:2541
> > >   index 113 is out of range for type 'skb_frag_t [17]'
> > >    skb_copy_ubufs+0x7da/0x960
> > >    ip_local_deliver_finish+0xcd/0x110
> > >    ice_napi_poll+0xe4/0x2a0 [ice]
> > >
> > > The overrun bytes come from the packet, so an on-wire sender can
> > > corrupt kernel memory remotely whenever the XDP program returns
> > > XDP_PASS.
> > >
> > > Rather than patch the sizing math, switch to the pattern used by other
> > > in-tree AF_XDP zero-copy drivers like mlx5 and i40e which use
> > > napi_alloc_skb() sized to the actual packet plus skb_put_data().
> > > This sizes the head exactly for the data being copied, drops the
> > > system_page_pool local_lock from this path, and removes the
> > > structural mismatch between frame_sz and the skb head buffer. Frags
> > > are allocated with alloc_page() per frag, matching the other drivers.
> >
> > I used napi_build_skb() + system page_pool to enable PP recycling
> > improving XSk XDP_PASS performance a lot.
> > Are you sure there's no other way to approach this?
> >
> > napi_alloc_skb() used in other drivers works, but it's sorta old
> > approach which is way slower.
> >
> > System page_pools always allocate a full page, why can it create an skb
> > prone to overruns?
> >
> > >
> > > Fixes: 560d958c6c68 ("xsk: add generic XSk &xdp_buff -> skb conversion")
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Lorenz Brun <lorenz@monogon.tech>
> > Thanks,
> > Olek
> 
> Hi Olek
> 
> I looked at the code again. While your approach is indeed faster, it
> is only faster for traffic bypassing AF_XDP, which is generally not
> that relevant for performance.
> 
> More critically, it currently corrupts kernel memory and panics the
> kernel very quickly when running with frame-size set to 2048, 1500
> MTU, and passing received packets. To be honest, I'm not familiar
> enough with the XSK subsystem to know exactly what specific sizing
> assumption was violated here. By comparison, the approach taken by the
> other drivers is a lot more obviously correct and works perfectly.
> 
> If you want to preserve the current approach, I'm perfectly happy with
> that. However, I don't feel comfortable sending patches for it, as I
> don't understand exactly what the expectations of the various data
> blocks are.
> 
> AFAIK, reproduction should be fairly easy. You just need to run a TCP
> connection to the receiving node (which gets passed to the kernel)
> while receiving some UDP packets via AF_XDP at the same time. As
> mentioned, it also needs frame-size 2048 to reproduce quickly.
> 
> I checked if I could get you an easy reproducer, but xdp-tools is
> quite limited. If you want to keep your approach and can't reproduce
> the panic yourself, let me know and I can see if I can synthesize a
> minimal reproducer.

We now respect the tailroom in UMEM which is supposed to address shinfo
override cases. Could you re-test this on your side with cited patchset
being present on your tree?

https://lore.kernel.org/bpf/20260402154958.562179-1-maciej.fijalkowski@intel.com/

> 
> Regards,
> Lorenz
