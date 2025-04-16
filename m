Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA867A907FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 17:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 376A761011;
	Wed, 16 Apr 2025 15:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LHNwgU9b80oB; Wed, 16 Apr 2025 15:49:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A396560BFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744818561;
	bh=VKEBclGmx3q3Lu5GUQVL42n7lx63/9OM0FKrw1IcfRI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FgfoOlHu86GauT3Sin/W/zI1FVMkGFDUp07HYhEYGTDt4Tt3UP4GxnnK/6wuLNj4V
	 weGLA59eoqJLgv9KGq3/eoMX3My57QZsK5Ehka1cllrtifHL5WFmxf+taq1VAIeXod
	 XCO/WfOLFwjxGuiJkQ/nRgXi4z51RIuzPWlNLQGdT/vHSAaZeF0twR5GawOr6BrY1E
	 O2XFhLvEx0KapNnxLwPZ/R5w0b0yD4fhEQbzR+uQWxwcjUXZa4t0rWwXKYNi3KNbOq
	 V2EhnOojwwG0NdecHxsPPTQk2tEjEJv0iosLd/AXKu7kF6pMlRDBnFMa3dRaqMdMny
	 djDtJMcLXvPEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A396560BFB;
	Wed, 16 Apr 2025 15:49:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8667C435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 15:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C56D40F7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 15:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id djh0ETdJ6-cu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 15:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BB11D40C23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB11D40C23
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB11D40C23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 15:49:18 +0000 (UTC)
X-CSE-ConnectionGUID: 6iTKeUWIT0yLI9O/jkzp5A==
X-CSE-MsgGUID: hu0sqncQRRyEicBqaSLAsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="63912485"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="63912485"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 08:49:17 -0700
X-CSE-ConnectionGUID: UmbbdDpvSHSMMuCTkTNzkw==
X-CSE-MsgGUID: IKmAcQlZQlaCj8DVmKkzfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130518393"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 08:49:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 08:49:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 08:49:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 08:49:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dUDzv448JUMinY+zVtbdOiWptTk7Mw0BQQfv12GKGP2cB9o/npSnkGgG9d+KFQzcozBdRHz8Lnr1DlgGakFcoz6OI4XxwRF4sXjz0OzMoD6ivJALg15+89/EoofigEFPQy6ZHqAT4VKD/g4oUDIlpdtwnQQ+fq7Q+HbkDgdziRwwrDxO0qhiF18OLRzeQnwdLDcTomG9A6aD7oGDGspioQitle3c3RuLdct/fuYLLaX7Mld8mKckBiu4eYRCXI4bwnh6T8O7rdAUsDWf5kQYA3lUDaz0ldcSBjow3+vVd55IDfCL+ijWerWSS9V8Ur2I85z6iOXXbdbVbB3uShC0sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VKEBclGmx3q3Lu5GUQVL42n7lx63/9OM0FKrw1IcfRI=;
 b=IUQbarpqY1yzZdb6ElQHBiBCD43jQ6jyBkkFVM8sQxZciHGuICm5Gg9x5puLUyMXKkGlKOvlRXJJdPMWzgbudKvj86rtl6lzlkEC1Ya7xvg9c9+Y6pgwvtA62RwNG0Wqm/o2Ul5PXkAT39e8hTeCmu6JImQdz8MNJVbWyP9yhs4CcvaPe7CqbqDEQZWrqV/V/VX+AT8u3EhRnsfK7exsZeTfvMt0QmNmiX5x2XSDcdRtIT2WVTPnxt30N1UmW1bxDYFvWc+Nzcw2V24PzivRfWPsYOeuyW/BsMOTDji+ZOIf4KHDfRPip3/BLHLv6cGY3XTREwo7hjSQ9g2XsknK0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA3PR11MB7526.namprd11.prod.outlook.com (2603:10b6:806:31c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.28; Wed, 16 Apr
 2025 15:49:10 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8632.030; Wed, 16 Apr 2025
 15:49:10 +0000
Message-ID: <66d6dbc1-5829-4097-8b36-c8776c86bce6@intel.com>
Date: Wed, 16 Apr 2025 17:49:01 +0200
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Michael Ellerman <mpe@ellerman.id.au>, Maciej
 Fijalkowski <maciej.fijalkowski@intel.com>, Lee Trager <lee@trager.us>,
 "Madhavan Srinivasan" <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki
 <ahmed.zaki@intel.com>, <netdev@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, Emil Tantilov
 <emil.s.tantilov@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, "Josh
 Hay" <joshua.a.hay@intel.com>, Milena Olech <milena.olech@intel.com>,
 <pavan.kumar.linga@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250408124816.11584-1-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0169.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::26) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA3PR11MB7526:EE_
X-MS-Office365-Filtering-Correlation-Id: 7675d530-d115-495c-f02e-08dd7cfe3a22
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZE9JTDd1dFk4MXFwZ3pqMkh6WDg0U1A5YUpXYlBXYy9xMzJyYnVSYzMzb3cx?=
 =?utf-8?B?Um1WM3pVTDF0WU9YODZzNS8vOXJNYURGeFhSemVOaGdsODdCWTBWTUZObHpy?=
 =?utf-8?B?Zi9XYUVFV2pZdjQ1clpxK1VTb3BxUG9wTWJhcXZBblJXRjlSdmM5RkRNVGti?=
 =?utf-8?B?U0NYeWR4bDY5T1RBaWloR2w5N0tLT050WFI1WWFZcDJIenMzYkRxRWFFVUNF?=
 =?utf-8?B?UDdpdDRLWTVLOUM5M3U2cEZHSmg0TVRmS0pscWpVNVZTcHk2NFIvWldPNGpi?=
 =?utf-8?B?cjlTcXhwNGpyOFhyUC9uMDJRVkxSbitSR0JSdmhBT29NR29xdHFzWkl4UW9t?=
 =?utf-8?B?TnNhWmlqN1JFSzRiTVlPUWp0V3g3WjZrN2JtSjN1ZUpkaUhlVDZVOE94YVJl?=
 =?utf-8?B?S2RYaC9PM2hiZmtHYUwyTGpuL3R3MzhwRDZLVlA1RXdnTExGajhYSk92c1JU?=
 =?utf-8?B?QU80elU0M0NpNTJzc1UwR0R3SDBCbXpaUllpOWkyMXF4a3dUdkpmamIrUks4?=
 =?utf-8?B?V3BuQmx6US8xenpoak8rN3NXeHJuaUJZb1ZqQmtCWDUva3BGZnkwUE41Mkxq?=
 =?utf-8?B?dkMvQmUzUlFONyt5WDA0K1BuRHlBdkg4cm15MUd1S0hTc29QZm9BMG5YUmNP?=
 =?utf-8?B?SDc5WURzd1JxTXBCbTgxQkplYkNoMDl3RjRmbTI5bzVqOUQ0eklab28rZ240?=
 =?utf-8?B?VHA3RFNIVFVjVldFakQ3bEp6RDFHQWZveW5JaCtPd0ltMXE0cVVpUXVWTWxq?=
 =?utf-8?B?cXZNa0lTSmhpTjZlc0crVExmNm9kQ1huZy9iN3h4QmJpb2IwVDlGM3lXOVR5?=
 =?utf-8?B?QUlEejZBSndKYXNsODh0ZG82eDB0M2R1RHRiU2lHY0JyZ2EwdEFoOEp2N01F?=
 =?utf-8?B?aHJaY3hZWm5CT0V5bGVPY1NqV0NRNzhIdUx5b2J2VVpUUnRBZW5XY3Z1cSts?=
 =?utf-8?B?ZEJjcVR2OWVjcTRma01BNmRGeW1XU1hOdjRyeXB0TjF0dDNlaVlqbjc1Q0t1?=
 =?utf-8?B?YjIrL2Npb1doakR1ejJRZUdJSE5zaCtENDlJRUp5R3krOWlodG1xaSs2bkg4?=
 =?utf-8?B?Q0VCd1I1eGxyN1c0cXpsN3NwVTEvRWFIeGhRUTMyTlF0b2plVkszaVNXUFEw?=
 =?utf-8?B?S1RvK1ZCbDdXSS84WXJJVTh5MTlRbEcyM0FzbmIxclZ4aFRxMzRNd1B3Q3Ar?=
 =?utf-8?B?QTkyZlF3SmE3cHcvTkkwWUpZcWVOUGRHVnhsQ1pHak1WaU5sVVRFWk5hZUdo?=
 =?utf-8?B?U2diaVExay9QVEJzNmxKRUpiOWoraUgzVTZPdktKSjRFdTkybUVKS1RnRHBW?=
 =?utf-8?B?aWI4VjQ2c3M3dDE5LzR3cldObzcxUGJxaU5kVWJ0Mk9ocnN3Rmg5TE1PN3NC?=
 =?utf-8?B?WHE1bldrYzgzd2YwbmdzUndjOXY5bHYvMHpEdktNYjlQMFAwTzZKL0ZqQjlu?=
 =?utf-8?B?YTJaVkdOdXJIREdMT0JjYWh6MjdjUzFPOGJKRFlLcTB4Zng3NVVhT0pVMnNv?=
 =?utf-8?B?MEhqNXkydXJraEluTmluMTQ3WnhsbS9mNFdlNU0yRGhGZjA5MU1ZS3V3a3RS?=
 =?utf-8?B?eEUyeTlma0YyYllCUWVGdGZLVnIyY1ZnRVdoTXRQMDBHZzltQ3NBdWwxUW9N?=
 =?utf-8?B?LzB1VW5pamx5am0yeGM2ZUlHWlhWQTJneTE0VFliWGt4ZmlUWlZHSDhkVm03?=
 =?utf-8?B?bTlZdFhqOTBTeFZ0UDhIekFlK0pWNEZtY2tiRVcyMXhlSURseDE5UThUcEtr?=
 =?utf-8?B?Y2o0Mk5tcWdTUFlZN3JFcktwYmlzVnhITE5lMVB4RmNrNURVb0IzNkdheUJR?=
 =?utf-8?B?NDdyM1hnZisrdlkralRpSURhVmZobUx1QlltM0NRV2d6eHZzUldMY0tkZ3Fw?=
 =?utf-8?B?MWRHR3VFZFh2TXRkMFQrbDV1ODhXMytnNDVKTXNwdFg0eE5yYk9NdFpQRk16?=
 =?utf-8?Q?3r3IblhEflQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHk1UFgxU0ZBTzN2eWlxUXdaRzBodm9ZS3o2Zld5S2tYMGdwTXFHNE04Und6?=
 =?utf-8?B?SmtHQ3p6MkFsTHRNNUgweU1Wd3ptOG8wM3ErZnBmb1FBakI4U3BwVlo4em9h?=
 =?utf-8?B?VEFURWxLU3dnaUxkcitDN2gvS0FrVWl1a2NyMkpRWVU4NzBWQ0dwMWZaTGR0?=
 =?utf-8?B?Q2FqNHQvekNhRDZFRWZ6M0JMcnhwM1RJaDRqcHVUOVc2UkxKUUJmYzM1UmtB?=
 =?utf-8?B?cDIwZWNDZnYyaUdPekVkK29yNUtTUURBQ2llODdZb2xGTlo4b2NZM01wY2Nt?=
 =?utf-8?B?UlZHanY0WjkxOFExNjVvbW1CWHBKZityR0FJTVFUanoxbFBLK3pDM2ZMaEN3?=
 =?utf-8?B?UUliR0lVNHJnOHEwRVJwVVVCaG9zZ25nRnFEMzVTVGdmV1o0TmRNajJ6cEh2?=
 =?utf-8?B?bkhIQmxBQWI3NFRxRjZkbHNHNHNXM3B0QmowRnU5Qnl6eW54SWx3NHVjQlhh?=
 =?utf-8?B?bUlKNkFLbGZEbmNUT2tOTUNrUTNvcWd4a1RIcGFJaXJDQWduWHlyeXJwQzgx?=
 =?utf-8?B?WVgyWFpnbFFBMjdPRTB3Q3dqaVVLN1J2Qk53Wk56Q211Z3BCbEdMV0JyTFY2?=
 =?utf-8?B?TnpiRUlnWDlhMW1EVVd1TkMvcVdRTEJReGZmYW1HWWJuWFZmK0draVMxZkRr?=
 =?utf-8?B?cmsxNmNtdnBVQzRNczhQcCtneGlVeXZMcTdsWloxa29lWjBBWXdEODBOblJz?=
 =?utf-8?B?eVlsdWJUczNiNG8vY2dGazY2ZGpXRW1qWU0wL2V5UXVXMVFHL3Q5dEE3UGNK?=
 =?utf-8?B?Q0IxaGJuaDFJTjluQlE0dVpwRE1kNWl2ZUo2QjFOZnBzWXJhSGhONnI1eEdE?=
 =?utf-8?B?Ny9lNzROZ2RISjhVcDltSkZjMU1ISkRaakE0WHlLM005TzZ3Ym4vWkQrejlU?=
 =?utf-8?B?dGFlL1pHNWtsUjVvYU03anUyTjVSNmZnazZCYUVlc2tGamVjM3NVUmYwZXlt?=
 =?utf-8?B?K29KV084Y1F5NWYwY1R3aUV4OFI0OUowR0FtOHpKUnV6bkY1YktJcjFHRnpD?=
 =?utf-8?B?R2pGVUdjcFVFN2RqVWIvTTdwTmo1OUxyTHdpR1ZXVzJJaFFZemJSeHh5YUY4?=
 =?utf-8?B?ZnRvT0xySDEvVHR2UDF2QmhJc0R0d29QRFAvOHNBZlFNclY5UUxrMlgzMnkr?=
 =?utf-8?B?OXFTRi9pcnNrNEp2aGJWWDJqbktFUmFXV2NFUzBlMEFYMDZ1UzFDN1B4OXRw?=
 =?utf-8?B?ZkRNLzFLQ29ESHJ0Z09seUJtREFLL1BsbTdLSTRVS0toUEI0MWJObWJKZUd3?=
 =?utf-8?B?ZldsRTF0WWJGNEd3OW9GcWdDbTN2NkZOdVhScTZTMG1XcVJPRzdnZHdyQXZw?=
 =?utf-8?B?VEtUdW9EWTRIdWdQaWtPZUZPM25KbXppK3BsWHBUYU5qRUkyZC9uK3kvTDBv?=
 =?utf-8?B?bHNuVTFSK1dESnpHN3FMT29ONzhURjJTdWtUNFRmQ2lqSWZGaHpBTmNxSzJJ?=
 =?utf-8?B?MndyTFQwaXMrOVM5TElHZzBoc3FIVTFIMy9uZXhWOTRyNkNuTlg3NFRDRDhM?=
 =?utf-8?B?OEptYlk2cFJldCsvcWQ1SGxHMDlSZDlxV3lBMElsc3M4R2hrdWpaTERGSU5z?=
 =?utf-8?B?LzVhOHVlbkNVb2g0eHJIK2NRM2dBN2ZCUzdWZTBPLzUrVk8rVkk2eHYyTlNh?=
 =?utf-8?B?ZWRxSHV2OVplR0kvV2dick11YXZlcHpvL1RLaE51Vm1kUUY2UWJISGgrODN1?=
 =?utf-8?B?STByYlFudlpLN2x3NkpvT2pManM3YTRvdFRoRm1ycEh6a3JRdmJQTS9XTUZE?=
 =?utf-8?B?bUFaZnJONGpmRDhIdDFBYlBqUW92WW5NcFlPM1duVnlVbGpqWlh2N2lpWUNB?=
 =?utf-8?B?cVZUcU9lZk8vbEIyYmdvdlkwWmF2UDRBMGMzcnRGOE9iL2I1aDRIRERlUXpG?=
 =?utf-8?B?eGVjOW5uWGNKbzlxU2NJSnlQS2FvajBJQVFDNDkrVURhUE1GMVFvUkVsemZs?=
 =?utf-8?B?akJtZnZab0dmazhnUE1ONHF5SlpKaE0zc3U0L0U4RkI4aVUyS2hSVjBwT28w?=
 =?utf-8?B?Qzhzam1uM2hWTUtXQi9rWTlkdFB1ampxV2JvOTVkeHVQM21ubElVcURyWVV3?=
 =?utf-8?B?VXBZQm5CR2VWYlMxZE03dnBYSFk0ak02bXpzTytqb0RudG9SYXdYclZCV1dv?=
 =?utf-8?B?Q1RMTW52Mk5ldlo0cGdteFJTSWczdThCK1Irb3dKVDZ6R1I4QklSeVlJbklo?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7675d530-d115-495c-f02e-08dd7cfe3a22
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 15:49:09.8727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /zep4QX5Ldnb0wwmNMLk64+a7hpApAvtFyssW0DsHHWm4dsGWNxWCfp0I8WNgxAw+SiYLbitHm6NV5XXnswPpT3dFI7YBIFr92NHIvUnv44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7526
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744818559; x=1776354559;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VKEBclGmx3q3Lu5GUQVL42n7lx63/9OM0FKrw1IcfRI=;
 b=IamZ8HW/S87gDl82ds7yEnx0s5ahEf0MF8YEKzSLLKk5NDQ608wcRJzh
 VwzHW1ozVtqXYxUKBRn6NrkiCxAEU92KQagFRAyRfmF0jErzu6syjCj/q
 dvu+J6rEjEYJtxRllCFroJJbfSxU1zxuGwuGr5H3jRWbrbwyWiOcdP7aS
 81HBL+6ClZI3YdI2xwTF/ysKjV/twJAqDkMWOGOnq+5iR8opseLx9XKzt
 N5k8/j/iqSbLSBswseo8T7X5d+qe/KoE7yreyNXdgqMSAi8aJCf6bYM/a
 sxU+iK/duBYsOEa7C3oPDEaA5EV7aNXsStfldIxjMKSAoea3Y4QMUPV4/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IamZ8HW/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 00/14] Introduce iXD driver
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

From: Larysa Zaremba <larysa.zaremba@intel.com>
Date: Tue, 8 Apr 2025 14:47:46 +0200

> This patch series adds the iXD driver, which supports the Intel(R)
> Control Plane PCI Function on Intel E2100 and later IPUs and FNICs.
> It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
> exposed by the same card. The reason for the separation is to be able
> to offload the control plane to the host different from where the data
> plane is running.

BTW please move everything you're adding to libeth to libie instead.
This PCI/VC/CP functionality is unlikely to be used by other vendors.
Since libie_cp.ko or how you may want to call it won't link with base
libie.ko, it won't have any pre-idpf HW-specific symbols, so that idpf
could link with it.
libeth stuff is purely vendor-agnostic and I'd really like to keep it so.

Thanks,
Olek
