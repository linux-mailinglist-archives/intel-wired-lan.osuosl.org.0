Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F022B0207B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 17:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B325583CEE;
	Fri, 11 Jul 2025 15:34:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mSExsyyO6i9Y; Fri, 11 Jul 2025 15:34:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D32B83D11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752248052;
	bh=0xINCJ5soLZiAJooFK5Ci89z3wrIyXS/3XAMBl8veKk=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JWzsdghbqPR/ozMrr89Jlikfh35rGHO+yLb8taeLyU2aGyvaJAMDsMoXc4wD9jLrV
	 Zpvni510NRQLyj4gYXSHNJ4Av5mxFAqiUgPAHi4gD4B4fJzvbX8E3asQ4X/Bz+gJfM
	 GT/cKFk2zT/Ubllt8gWuNU6IPtuLR1c2p6BS3gMiNkPe+ubIxA2591+o+qIH6f+3El
	 YWamRG7LDk1XUClEp1uSOLCOUskO7RfhC2LLxN2Sf5PrW3/LpmY1enzotS7Kk48822
	 Md9h/WGtmISioRNgl26ExaeWiTwki2p1MB5qqSegUYxIBGQ2ulLVB/XB94PNiYovYk
	 C2x7glkLzmOUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D32B83D11;
	Fri, 11 Jul 2025 15:34:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B01941E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 15:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9662D60BA5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 15:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bYJk6_cNXRHG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 15:34:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55C93608D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55C93608D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55C93608D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 15:34:08 +0000 (UTC)
X-CSE-ConnectionGUID: 0PDvXfnTRxicUWvkvu28qg==
X-CSE-MsgGUID: vAlCEALNQuuAwstdOoajXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54679587"
X-IronPort-AV: E=Sophos;i="6.16,304,1744095600"; d="scan'208";a="54679587"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 08:34:09 -0700
X-CSE-ConnectionGUID: Yko3q0R5R0q6ZhKYgeeVQQ==
X-CSE-MsgGUID: s9Ejs0NIQS6D2JjKUe6U/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,304,1744095600"; d="scan'208";a="162078748"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 08:34:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 08:34:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 08:34:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 08:34:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=asJp5/zc/NcVE/O2WzO4/KQ/URpLF2CXRYZiJDOMyAohWT14Qn85N5l9HLtOyWIIbW3OXdR7PRRiKSm0Pzt61WWftZyqD9IFW/x276Jigjg9RuON4QpkJtoWTw862rNsANUB3UL3A78jnPSbDVnAViUp8liy/BixJ4hx0jlHQxTZ93DdpVhybodYUO1BguRdUIvuSpsu6+8n0HUrLbfzIjk2aOvRtupXLqY0HK4misU6zBjbmMHoM3Lis7MbxRuRlj1yO7h5UEfAuyHfW7eFDOz58+o3kn8Il8HReelDQurdpoeFAf7DmH/OlaDwqgCHG1aH/ZKMwe0siaMC8gPZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0xINCJ5soLZiAJooFK5Ci89z3wrIyXS/3XAMBl8veKk=;
 b=DM6RiRjVd7LOsyXbnTOqLxCuisI5o7GChzrFVbTybLADtYvjXtZ8yy0nK1cllZWUl3WPzpPSuAO2RkaC2XBRa6fvhFTXLBWB/SXkVW7ix3SxFKMw/v0v0hablEYwpD8s55FN9koxIlJfuho6GnUtamFxi6f9UBnfZbJY2VP318YgL0CEkSifxjxXUfv41DXfTZ0SlYLSHGjj2iMCI7TktFchU9Xtm06wO2V8nrkb7F4b42Cz9mNRLiHDMwCvh8hSsMwtA9/jcvpVH1v6n2PXos/jL9O7bM/dne/nkXWX5cTUlIlDcZf9eBxKkenEERdFGcnc+WMzMhfWqxKRe3gxvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH3PR11MB7390.namprd11.prod.outlook.com (2603:10b6:610:14e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Fri, 11 Jul
 2025 15:33:24 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 15:33:24 +0000
Date: Fri, 11 Jul 2025 17:33:12 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Joe Damato <jdamato@fastly.com>, "Anthony
 Nguyen" <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, "Christoph
 Petrausch" <christoph.petrausch@deepl.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>
Message-ID: <aHEuuFK+XktcEPzc@boxer>
References: <20250709-jk-ice-fix-rx-mem-leak-v1-1-cfdd7eeea905@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250709-jk-ice-fix-rx-mem-leak-v1-1-cfdd7eeea905@intel.com>
X-ClientProxiedBy: DUZPR01CA0172.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::29) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH3PR11MB7390:EE_
X-MS-Office365-Filtering-Correlation-Id: 49c9b1c7-1b00-4d8d-1f0f-08ddc0904600
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Kuef2JdNyE1KCevXuYvxO28wdE5itPlp1F52NfKzhbYAfaO7wewkV3y4NFkI?=
 =?us-ascii?Q?N0k4whmQss8gJipqF15DtUxn8zcHJOS7Hq3r8/sBD5yflP7xiotBbn/UJhSG?=
 =?us-ascii?Q?MfLxpMVBt8df10uauzFBocHlWFo615gtFc5WeWrgzEw+jJdZu3GQqU0XdaQe?=
 =?us-ascii?Q?rqUr2QyJD4omK4bybc6Dwp6NqLiJHFIATzy+JHWn86kk49LOHr3HhuCBIzK1?=
 =?us-ascii?Q?XGfwLrJnnmXCrX803sT0N7A48zQpwrvfY7j9EhiFpXH+BOmUeuQVn+/GHh+Q?=
 =?us-ascii?Q?5bbU0mkk9v+UESsxp5T0tyamZW2JkyUFPjF6L/qxvpMcXVcMt/nijSsxmSK2?=
 =?us-ascii?Q?n9yiBPIK8h/SE6yzSOdys0hog8MotYdI7fCCMSX8/jagsACKyRE9X2WYvvZh?=
 =?us-ascii?Q?GmIBD44FGlqvYZByLXSWEuN+NyVHi4l8qxAH9t6M3EmMMtK3N0cWCjAfo6UU?=
 =?us-ascii?Q?FGlJTTDCqTMWF1G5f/s451dn4QWXHFh/NKFE5AoygJC4VB/u34Hka9aBjo+T?=
 =?us-ascii?Q?DM+JXM6WascEiunyAHNONjQ6+3d4bL8IOdTbC/NKnYFgU2NxOm8Ldjj3DRWy?=
 =?us-ascii?Q?hEeytFPbpaTs8lzRUIivnPcPoNuA+phn2cDRmxdqWD8a/C1sFn2ggDug1Uqx?=
 =?us-ascii?Q?iosbLG/cdYiTXS6UXjqf7IV6bheckwqxg199rVsRqpF8sUzatuV7lHGOTW1A?=
 =?us-ascii?Q?xsJMrlc71Xd+9QXBSRSKHslngVq17FC7ziEyfW8s04ZV7UGEedf5AH5L/QO4?=
 =?us-ascii?Q?T+x+h4emJ028QMD0bYNVstsUt0reK4lD+Mv4XsqZiBhOII+WJE2nUNN7GA+T?=
 =?us-ascii?Q?svg641N8P1kgsWKC7CNuYnzXC4a00pFHtQsavGA+te1NZsL4bgdtt1RGQNt/?=
 =?us-ascii?Q?mkXWPJc17NDGootdTgy9gKwTmKU9AuObJcI4hS+2cVGNeySCg3O9SFkBOwoz?=
 =?us-ascii?Q?FObNErlzLS3nIduujrn0+SZkvm9vSDzB1BPynwhI7dCt53Nc8mQTt76GNLWo?=
 =?us-ascii?Q?NN4EzPCuQ+QILDEDOn0pj30NPxBzcbJ8oBDMN2KN7ssrpDYnecCrJoaxZL6b?=
 =?us-ascii?Q?zz5Riv9Zo+b1r4tXkHQStMGHvgy2BB9zVmyNRtO9QWaQbQkEZKmTyieoXm+K?=
 =?us-ascii?Q?6rw61exVDDwtg+GzkUJOJz+9WNGiovNKYariqXyKc0l7fWuToarTb48Fo1eV?=
 =?us-ascii?Q?+JWZ9UQKbGpa7sWKaIFTe9o1lu2vM1d9RaO89ZV4B0B5NcQuZLU9Mpd4BW5v?=
 =?us-ascii?Q?nQLCKnFaobvis8p53UasRdmdvMc8QPb39iG6bPCOMo2j21tThWXBaSbUeppR?=
 =?us-ascii?Q?6Qib5xewz/z81b675L+pYKivtqzHtqc1W0iEntykeg7Qgl9upbfV5Uw4HFxY?=
 =?us-ascii?Q?P45UGUk8OMu/mBc47VWyn3TCwUIbGX+kQPanQ3fGrHmMoQ0VsKPcYi0nWB/n?=
 =?us-ascii?Q?7ruC6zigCMI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gLR9CCuhPrVpgWd/li6/f7JCIvXDYHYPhZYH0tCfLiVF/u6g8TVLJFdY+lc8?=
 =?us-ascii?Q?SLmABSnc03ESsezgMWhbhbG3lVBghbr/PdlpWvaFfwQ7wHF6MJj3oJnqrc86?=
 =?us-ascii?Q?uWNitYbjtvAiwS+/aLazPLKemozJWk9njL9Tb8WzftGLeVYWpS5EuNe2ksqC?=
 =?us-ascii?Q?TZuIt7bHedT5/8ryQvZISB4AhouSczzc4MFtk4+PNQBx/rujEH5CzPcKiZB5?=
 =?us-ascii?Q?y5jrq9foCnO9PxNcFDvprlr2UJirHhVxwhnJyk9yWJRtgVlMaKhyHzrI7uxh?=
 =?us-ascii?Q?VjnihsBYPvcqept42dYUSUvjWNUg7UM2x6HuW8VMkd4POCyDy42/CMzz0fxZ?=
 =?us-ascii?Q?l59TYmkWGOT3i8c/HhBGnOat14J18qbJwmY7v1n1F/R4fxy0hlwq3C0KQgii?=
 =?us-ascii?Q?sldoQ2+z1Jtkjt8UjDGF2Gns3ggrkTjYp/ijVFK3TiXk6KZE9urUSG37quFQ?=
 =?us-ascii?Q?4C+bI/DIwsvlKFrWoWzCAEu+1QXJV0QHhFmNnpjTVDE9iKW0n31TdtOm2J6V?=
 =?us-ascii?Q?4XUbXzLygI5VCwyKASrlZmzK8NhLlv2/rBe7xvRKt+GcOK5oWx18ztjyraYI?=
 =?us-ascii?Q?643oSQPydJ5uGyb7kEHuAdaRlhZZgDNDHDl7DOL8aQg5UhNzSwgVR3pGWU3g?=
 =?us-ascii?Q?Nz9Qic59RVhH2msM+wzuXqDF2UXxJFDvlZd7LOICf9Yr/OhCiYgsGukWBRW4?=
 =?us-ascii?Q?+LhqjKqQGfzD+a8tfqNL6lVX6Z612kOGqxJCzj/Umh41Nr+Be5byaw2BxC++?=
 =?us-ascii?Q?o2cq3lMSI6j9N6H08uv9Vxta1OGUq9A69mIj78gxJRBsDr7Syp6fad3AMdX+?=
 =?us-ascii?Q?3iITT83p7xxryvs1gLooyYn1PquZgGEOWG0OEFBPppxts3It/bLgRhh4vpWK?=
 =?us-ascii?Q?W0BZEEzgd2qT0DjOn8DFLd9F9DFYHh1UuHS1alvdyGoo6aEKCO7R5T52+Mb4?=
 =?us-ascii?Q?+gVdbxw7YYBOZXOixQF1bgXACO1diHLfA259KzRPTug5Mf0w1flIH2eYH8hJ?=
 =?us-ascii?Q?3nKUTMbx5MkP6yDn/uCJxL5J6PeWF88yd2ZkhqXRSqaEc98LPMnfdNd9AsFK?=
 =?us-ascii?Q?9SkQUpGXhiDh8k1bHYl7K2U5uHnZnd+Dvff5dJNyIBxTy6EgzhAHa6UFyxbY?=
 =?us-ascii?Q?/7W9v8yIo5P8GNKd5DVNTyp8Ghzh8t0GokKiV8/nSzlumXjpmI7yOhsGYFLD?=
 =?us-ascii?Q?IQSVvdCMkdateprsNvGv57OCHq8d40txcdoIPF92OC53CzeeKp8Gn4j+viGc?=
 =?us-ascii?Q?fIqw6Hl2rX33lQ9nblHcYHALyIWarA/ndTrhrq++9B7WoL93/ahO9+3Ydro+?=
 =?us-ascii?Q?UgbllZ3XTzZCfHxHI7uWMa6PIo71TmZS0Ad+rJH+9DG7mvCyZQixIpG69Dhy?=
 =?us-ascii?Q?WdAxVBsy5zI0/B83eSlguNLGeKkDXO4HRAGbJ9RttCr26n7/RkozKLJEpJ/n?=
 =?us-ascii?Q?N9bbwPR0YqMp2QzbudeWmE6x/CkYLCQtJ4sGpShKiz9fOcvUC1k6yphIBPpx?=
 =?us-ascii?Q?IXR3W6FnlOSWKP7Iwi5D/LBC7ZrOQNFjHzsgoZAUKrhgMXBZ5pFRclr6ZA2J?=
 =?us-ascii?Q?erjfPuKBHYFGw3D091e340VnawAnxbt3gwtfGFcrDRwiUS3ZPjnrCsGlg+0P?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c9b1c7-1b00-4d8d-1f0f-08ddc0904600
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 15:33:24.1837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RlFJq09vEf07omCTXgiFEcxY76YlZB+YmRCYCxsVH0116PSzzR/B20BNNyKNs3bi2a406UH1O1a7oizg/dssv2rXjS9fpxE89xOC9seIcz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7390
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752248050; x=1783784050;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5P3t3kaNg6DgNLSowQMX7aGfHXwKtb+x/3QRqRWiq/s=;
 b=nVzhfgOGpYPetOUMtioZSablVrtl2ZhU2kGICRW8AsTBnnbUZEm4JStD
 0umJZ+2GRXIr6Gx1N8dKXlldFieSnMydHjHEJCzfMzBRlz8rgacjG6L0P
 ZGG923QIALXG0fLwB7eF/rz8oTEd5n/FBEDwDI7OVbXPWZ+BziUt5ro8Y
 E99RuRtVoCMWQeq6fYyQwCKKq2MmF1BLlC8t9TuVKFC3ykVPk/dAbBXIt
 gjv5G7fcBT6hlo5EASStSM//pHVlMz5yfz0lzV8MYTbTqnUrzgZzx5ZL8
 TOGnhimMsvx8HDM6o9Y0iRj+2QSd+5Cly9vUIBSLl4bxX8ulces5gcttj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nVzhfgOG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix Rx page leak on
 multi-buffer frames
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

On Wed, Jul 09, 2025 at 12:07:30PM -0700, Jacob Keller wrote:
> The ice_put_rx_mbuf() function handles calling ice_put_rx_buf() for each
> buffer in the current frame. This function was introduced as part of
> handling multi-buffer XDP support in the ice driver.
> 
> It works by iterating over the buffers from first_desc up to 1 plus the
> total number of fragments in the frame, cached from before the XDP program
> was executed.
> 
> If the hardware posts a descriptor with a size of 0, the logic used in
> ice_put_rx_mbuf() breaks. Such descriptors get skipped and don't get added
> as fragments in ice_add_xdp_frag. Since the buffer isn't counted as a
> fragment, we do not iterate over it in ice_put_rx_mbuf(), and thus we don't
> call ice_put_rx_buf().
> 
> Because we don't call ice_put_rx_buf(), we don't attempt to re-use the
> page or free it. This leaves a stale page in the ring, as we don't
> increment next_to_alloc.
> 
> The ice_reuse_rx_page() assumes that the next_to_alloc has been incremented
> properly, and that it always points to a buffer with a NULL page. Since
> this function doesn't check, it will happily recycle a page over the top
> of the next_to_alloc buffer, losing track of the old page.
> 
> Note that this leak only occurs for multi-buffer frames. The
> ice_put_rx_mbuf() function always handles at least one buffer, so a
> single-buffer frame will always get handled correctly. It is not clear
> precisely why the hardware hands us descriptors with a size of 0 sometimes,
> but it happens somewhat regularly with "jumbo frames" used by 9K MTU.
> 
> To fix ice_put_rx_mbuf(), we need to make sure to call ice_put_rx_buf() on
> all buffers between first_desc and next_to_clean. Borrow the logic of a
> similar function in i40e used for this same purpose. Use the same logic
> also in ice_get_pgcnts().
> 
> Instead of iterating over just the number of fragments, use a loop which
> iterates until the current index reaches to the next_to_clean element just
> past the current frame. Check the current number of fragments (post XDP
> program). For all buffers up 1 more than the number of fragments, we'll
> update the pagecnt_bias. For any buffers past this, pagecnt_bias is left
> as-is. This ensures that fragments released by the XDP program, as well as
> any buffers with zero-size won't have their pagecnt_bias updated
> incorrectly. Unlike i40e, the ice_put_rx_mbuf() function does call
> ice_put_rx_buf() on the last buffer of the frame indicating end of packet.
> 
> Move the increment of the ntc local variable to ensure its updated *before*
> all calls to ice_get_pgcnts() or ice_put_rx_mbuf(), as the loop logic
> requires the index of the element just after the current frame.
> 
> This has the advantage that we also no longer need to track or cache the
> number of fragments in the rx_ring, which saves a few bytes in the ring.
> 
> Cc: Christoph Petrausch <christoph.petrausch@deepl.com>
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Closes: https://lore.kernel.org/netdev/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com/
> Fixes: 743bbd93cf29 ("ice: put Rx buffers after being done with current frame")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I've tested this in a setup with MTU 9000, using a combination of iperf3
> and wrk generated traffic.
> 
> I tested this in a couple of ways. First, I check memory allocations using
> /proc/allocinfo:
> 
>   awk '/ice_alloc_mapped_page/ { printf("%s %s\n", $1, $2) }' /proc/allocinfo | numfmt --to=iec
> 
> Second, I ported some stats from i40e written by Joe Damato to track the
> page allocation and busy counts. I consistently saw that the allocate stat
> increased without the busy or waive stats increasing. I also added a stat
> to track directly when we overwrote a page pointer that was non-NULL in
> ice_reuse_rx_page(), and saw it increment consistently.
> 
> With this fix, all of these indicators are fixed. I've tested both 1500
> byte and 9000 byte MTU and no longer see the leak. With the counters I was
> able to immediately see a leak within a few minutes of iperf3, so I am
> confident that I've resolved the leak with this fix.
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 71 ++++++++++++-------------------
>  2 files changed, 28 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index a4b1e9514632..07155e615f75 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -358,7 +358,6 @@ struct ice_rx_ring {
>  	struct ice_tx_ring *xdp_ring;
>  	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
>  	struct xsk_buff_pool *xsk_pool;
> -	u32 nr_frags;
>  	u16 max_frame;
>  	u16 rx_buf_len;
>  	dma_addr_t dma;			/* physical address of ring */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 0e5107fe62ad..b139066b6f0d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -865,10 +865,6 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
>  				   rx_buf->page_offset, size);
>  	sinfo->xdp_frags_size += size;
> -	/* remember frag count before XDP prog execution; bpf_xdp_adjust_tail()
> -	 * can pop off frags but driver has to handle it on its own
> -	 */
> -	rx_ring->nr_frags = sinfo->nr_frags;
>  
>  	if (page_is_pfmemalloc(rx_buf->page))
>  		xdp_buff_set_frag_pfmemalloc(xdp);
> @@ -939,20 +935,20 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
>  /**
>   * ice_get_pgcnts - grab page_count() for gathered fragments
>   * @rx_ring: Rx descriptor ring to store the page counts on
> + * @ntc: the next to clean element (not included in this frame!)
>   *
>   * This function is intended to be called right before running XDP
>   * program so that the page recycling mechanism will be able to take
>   * a correct decision regarding underlying pages; this is done in such
>   * way as XDP program can change the refcount of page
>   */
> -static void ice_get_pgcnts(struct ice_rx_ring *rx_ring)
> +static void ice_get_pgcnts(struct ice_rx_ring *rx_ring, unsigned int ntc)
>  {
> -	u32 nr_frags = rx_ring->nr_frags + 1;
>  	u32 idx = rx_ring->first_desc;
>  	struct ice_rx_buf *rx_buf;
>  	u32 cnt = rx_ring->count;
>  
> -	for (int i = 0; i < nr_frags; i++) {
> +	while (idx != ntc) {
>  		rx_buf = &rx_ring->rx_buf[idx];
>  		rx_buf->pgcnt = page_count(rx_buf->page);
>  
> @@ -1125,62 +1121,49 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
>  }
>  
>  /**
> - * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
> + * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in frame
>   * @rx_ring: Rx ring with all the auxiliary data
>   * @xdp: XDP buffer carrying linear + frags part
>   * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
> - * @ntc: a current next_to_clean value to be stored at rx_ring
> + * @ntc: the next to clean element (not included in this frame!)
>   * @verdict: return code from XDP program execution
>   *
> - * Walk through gathered fragments and satisfy internal page
> - * recycle mechanism; we take here an action related to verdict
> - * returned by XDP program;
> + * Called after XDP program is completed, or on error with verdict set to
> + * ICE_XDP_CONSUMED.
> + *
> + * Walk through buffers from first_desc to the end of the frame, releasing
> + * buffers and satisfying internal page recycle mechanism. The action depends
> + * on verdict from XDP program.
>   */
>  static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  			    u32 *xdp_xmit, u32 ntc, u32 verdict)
>  {
> -	u32 nr_frags = rx_ring->nr_frags + 1;
> +	u32 nr_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
>  	u32 idx = rx_ring->first_desc;
>  	u32 cnt = rx_ring->count;
> -	u32 post_xdp_frags = 1;
>  	struct ice_rx_buf *buf;
> -	int i;
> +	int i = 0;
>  
> -	if (unlikely(xdp_buff_has_frags(xdp)))
> -		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
> -
> -	for (i = 0; i < post_xdp_frags; i++) {
> +	while (idx != ntc) {
>  		buf = &rx_ring->rx_buf[idx];
> +		if (++idx == cnt)
> +			idx = 0;
>  
> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> +		/* An XDP program could release fragments from the end of the
> +		 * buffer. For these, we need to keep the pagecnt_bias as-is.
> +		 * To do this, only adjust pagecnt_bias for fragments up to
> +		 * the total remaining after the XDP program has run.
> +		 */
> +		if (verdict != ICE_XDP_CONSUMED)
>  			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -			*xdp_xmit |= verdict;

Hi Jake,

you're likely breaking XDP_REDIRECT/XDP_TX workloads. I believe you need
to give this patch a spin against xdp-bench and test all actions...

anyways thanks for great analysis and bugfix!

> -		} else if (verdict & ICE_XDP_CONSUMED) {
> +		else if (i++ <= nr_frags)
>  			buf->pagecnt_bias++;
> -		} else if (verdict == ICE_XDP_PASS) {
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		}
>  
>  		ice_put_rx_buf(rx_ring, buf);
> -
> -		if (++idx == cnt)
> -			idx = 0;
> -	}
> -	/* handle buffers that represented frags released by XDP prog;
> -	 * for these we keep pagecnt_bias as-is; refcount from struct page
> -	 * has been decremented within XDP prog and we do not have to increase
> -	 * the biased refcnt
> -	 */
> -	for (; i < nr_frags; i++) {
> -		buf = &rx_ring->rx_buf[idx];
> -		ice_put_rx_buf(rx_ring, buf);
> -		if (++idx == cnt)
> -			idx = 0;
>  	}
>  
>  	xdp->data = NULL;
>  	rx_ring->first_desc = ntc;
> -	rx_ring->nr_frags = 0;
>  }
>  
>  /**
> @@ -1260,6 +1243,10 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  		/* retrieve a buffer from the ring */
>  		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
>  
> +		/* Increment ntc before calls to ice_put_rx_mbuf() */
> +		if (++ntc == cnt)
> +			ntc = 0;
> +
>  		if (!xdp->data) {
>  			void *hard_start;
>  
> @@ -1271,14 +1258,12 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
>  			break;
>  		}
> -		if (++ntc == cnt)
> -			ntc = 0;
>  
>  		/* skip if it is NOP desc */
>  		if (ice_is_non_eop(rx_ring, rx_desc))
>  			continue;
>  
> -		ice_get_pgcnts(rx_ring);
> +		ice_get_pgcnts(rx_ring, ntc);
>  		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
>  		if (xdp_verdict == ICE_XDP_PASS)
>  			goto construct_skb;
> 
> ---
> base-commit: 31ec70afaaad11fb08970bd1b0dc9ebae3501e16
> change-id: 20250708-jk-ice-fix-rx-mem-leak-3a328edc4797
> 
> Best regards,
> --  
> Jacob Keller <jacob.e.keller@intel.com>
> 
