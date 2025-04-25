Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95342A9C548
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 12:23:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 964F66124D;
	Fri, 25 Apr 2025 10:23:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rjoEZN1KoUcp; Fri, 25 Apr 2025 10:23:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE03D6121A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745576584;
	bh=XJv7U/g8RAvLVsjbwqM0yCg/FEft6agAVaqmGk6Qhe8=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dPvor2M2Dj22rY0xh2qD68t0SAfbet+q5gicdZ9Dq7HVZ1gTunw7L5hJGH5wIXyoy
	 2juR/Vuyro5iaCCaTDeReyI9MjT6QKhfXgAox+/WpIvZNk4xGhWlWn2z7zWYr8KYUQ
	 mI0Br2+ikI6TIoMr6cLLfISaLRVtzSc02kHSDYRsCOp5BJ61M3uTZg7BdlI53cPCbj
	 T2nj+dnSi6Ym7cU7M9w2WIC6OBBsRpQOK4R01GRQ1tQW3kpdxcbBhMAU31im0u6wyO
	 0vR942rx5Q3aiJlRlbAZLyt04sLi1KtxG2w/gczbCbtttm3s5pKiTunQ2B43LbAqcM
	 ICnpFrSitpkcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE03D6121A;
	Fri, 25 Apr 2025 10:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D2D68127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C492942CF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5iCoJ0ucMJTn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 10:23:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 295CD42CF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 295CD42CF2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 295CD42CF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:23:01 +0000 (UTC)
X-CSE-ConnectionGUID: mmsBdA7nTRCxqRgifGKovw==
X-CSE-MsgGUID: HJqN+b3bSU6GfiEC97rnhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="51043939"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="51043939"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 03:23:01 -0700
X-CSE-ConnectionGUID: QZlNKUr1RE63xqGk269VKg==
X-CSE-MsgGUID: OHvQau5AQfuSnBHhfHXjSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="133796646"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 03:23:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 03:22:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 03:22:59 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 03:22:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L7tLsAgnTJUWoTG6Y5wplrz1hPOACR0l/0lXTnfyNBgbj0tF06kg5xT8BAjg3Qx1n6BZDAtUrD1W3tUhLlt+IbhvhhfJw6p9UD7TyN2JKo6qONqKt73uYdnTgidDIodUYJ672ne51iTfFGIAgMYBAXrRuk0ZMkmBr9BROamXCOAkQbWWA9pnoTMvFq9hD4URtiOveHLlpcQlJctcZrEqGRzLlnnlryD+xPguJS1MxeFXkPLrqHiveVaTZeiQ/Rhdydqabe/nC24LVQ2ujKRU/1tT4QrJ79nMP0xCK8HdMqoNSunyobX9qtCFWU/U4E7jIhqq0mmqg1MLD367Cgsszg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJv7U/g8RAvLVsjbwqM0yCg/FEft6agAVaqmGk6Qhe8=;
 b=LKtsZ7Cyn5QW+nrhLH5dh5NTJ2uay936TXe89FjL7eHzkdXXccDooe24oGXKqJPXTQdXJa+x7I8t48ztXuaX69PwkEFASNXUjMMq4bE8dXNbhPKB8u3WcHx7Fkqq4c8CwWDWLhztm0f8CJ6UOz6F1DLxTN86ykr92BxwUPis17jY/EnYAHcWqPmTK7VKWWHSkEQHIPNQFI2gBi23IXgFvhFe8ZJgmEX32rQ0aD/ngELrey6ugwjULhSLHL4gbF9K4MCpGMwkk4YCt9HfTOdiG0QSnba4j9iLLCT26VOogPYtLubKYUrvVZmpO4N5wIlw1URD02ADGtSYPSS6ZGpn2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Fri, 25 Apr
 2025 10:22:55 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 10:22:55 +0000
Date: Fri, 25 Apr 2025 12:22:40 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "Dumazet, Eric" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Jonathan
 Corbet" <corbet@lwn.net>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Nikolova,
 Tatyana E" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>
Message-ID: <aAticBsDuaKTvUtd@soc-5CG4396X81.clients.intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-9-larysa.zaremba@intel.com>
 <744538a0-a1f5-48a5-b454-f1a2530268b7@molgen.mpg.de>
 <PH0PR11MB5095225FBBBFCDA3D66A1846D6852@PH0PR11MB5095.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <PH0PR11MB5095225FBBBFCDA3D66A1846D6852@PH0PR11MB5095.namprd11.prod.outlook.com>
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: 213582e1-ebe4-43d2-84d5-08dd83e32463
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jVc673fGkNAogAECVLdAc9qH37b/3c61N0OzzGaL0sIpE+NLBNvnAOr4BrrK?=
 =?us-ascii?Q?rv+9/y50GE/zEY/71f/gEOPGww+OH0kxCeuQHxtQ66XGrTPBZyrZPw1yXlc1?=
 =?us-ascii?Q?JAxnA7hbpY3srjuRbyOVtcz6kJ1btMJJUVthL1N6zxVl3b+FWlqJiHlBqB2X?=
 =?us-ascii?Q?BAf+SXNHMaATgJzKPkgsXFspRY50KZ/LYVfX7j1bVG1J3FdxNQrC51JD+bxU?=
 =?us-ascii?Q?/Zy9xLs8drqPh/u6ebfb605ZlPL8Iv9sAq1ZUsNtDcD0hENIWSLwvuQmox6l?=
 =?us-ascii?Q?o3DM3rYrw8eZJ/tS1Aq6C/hAig5a8y1xHjS6spPKoWJE/Qd1HrFQAKuXEcQs?=
 =?us-ascii?Q?mFEWUwB3iH1Z6tXuUr52kwf8jUeyz1HmWGlieKznFQHTkNELAqzAEtXOgppn?=
 =?us-ascii?Q?aQFAP8gVMWB9MBffyTV5Q0RLqVpPNzAtS6KqRT6Lb/AhmY1ALLfEXEyxOD7W?=
 =?us-ascii?Q?Rk1UeTM+jdiF41+PcI7ECqT08/LVSluUdBL5U/K33qL3ovqYVvEMbusF6v82?=
 =?us-ascii?Q?/hc1r4bHD1vUAwOGJ3aHaj8kn+EjkmkTZYLll0KnYKs02jJT1pcJjYu+AqA4?=
 =?us-ascii?Q?T9ouBRcePRprNWSfQ9z6t5EhcdL9pLVUeOj6s3VGWZba6+FGLujAhNt5Q+dN?=
 =?us-ascii?Q?1zKH69e7Z1oakEJmybILEUZENe00zSUFiGYpm63kG0DghmwxwD0MklnwdFLp?=
 =?us-ascii?Q?GmAMTb3xK70m9kBQ9gsmoxUcUYU0FVI8Cjch1XylFObEfsBqZavacNvUXI4x?=
 =?us-ascii?Q?tSTWIaqrOvBupqGwSS4X9dzq08+EszeFhImlN9EROx0kb0fGntLjeh/jCImq?=
 =?us-ascii?Q?uJ96sNkA43sig+Vw1xeyEjQA/9cB0nnfsY/UEDTGWvKX9y9B1t4WgCj3oI3L?=
 =?us-ascii?Q?vaZ4ajtypi14wsHZPl5F2r2nUsiGq7pO2hoRGmpKI3JyPU7Ki4X95ttAXP8p?=
 =?us-ascii?Q?x/VACHmRTr5kd2EHizvYVjGWOYDW2IKXVMwPbfzrviqmbmPPLucHGx+da8UL?=
 =?us-ascii?Q?s9uusnbIg9fUgB3yEVMUdHFIMk/Pb4CrjmBaNnqWwtf6U5yQrwyTYpS7wKWe?=
 =?us-ascii?Q?jpY+bUdtFB4R4NRDWBczTyWEeFdCNSCKVL35sg58GTF9MsjhfQSWwyEjt1v2?=
 =?us-ascii?Q?BxL/IaMEBR4d7WsiQqVsurqF4V9e3NrEZLHi3HwxlArDjGDMSjX7Qfox2AsZ?=
 =?us-ascii?Q?vEjZ/KgB1XDGSEfSVIwPCjcgYYB/UtrIOd/9r3JsoVfFi9ECjpcbhPCotkgz?=
 =?us-ascii?Q?g+ZERNLn4HWT7NAJv3AXJbz+w/xeQ1u1K42Az/iWfa2ewuUFtNp+Q7EKuhB6?=
 =?us-ascii?Q?QhLGyTRYCoNM+Q2CrZ9I5tQDax/CZckhEsYNM4pmudAT0Fu9rcJzk/aM9xRI?=
 =?us-ascii?Q?+6UelrdoSO7mtt/QQTItMPKj0AIKayuoz5AIgNKfnQG6ocXlmGNC9hK26tg+?=
 =?us-ascii?Q?FEpIAT0FKaE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?keWECYnHI5DgAjpNPMEUSXqzu9wUxUbp6V/4MdEvyP9E++ZPHPs9vrZSl6AG?=
 =?us-ascii?Q?FzX0z0WHLehz/h4f8NPOgRsxAr2lZVHCgBiZxVpa3Dz2H0S7TcuPpHvQ/6HY?=
 =?us-ascii?Q?hiaKqyyaaevnJpxGOP80jG+JiUzI713mKAJ9cNF9MJqZ8g077FWi2h26Ixhq?=
 =?us-ascii?Q?0brdm90EjlQ47B9SkRcqn9XunoFM6yR8/s6zv+t19F5AsdfQIx8gMP09fXRj?=
 =?us-ascii?Q?waYZZxcWagCt0qIeG7hrEbUbVoHm4QS3QEHL9Uf0yQk5hg0G7aVGLanXgR3M?=
 =?us-ascii?Q?xFd3A69bCuyRDSJaE97N8v/Nd/kwqhglvZlnU3lt41eUatDhn1wsm/LBbaoj?=
 =?us-ascii?Q?9o9BXR6VtWVCvMh2TOvvbG4IMM6ZWS3k3hH2jIl7MVLNtmPNTv32QQk/KebR?=
 =?us-ascii?Q?U2s4gjNaj1wxwi8+tIaCX/0jxjFtKaWvmuQnn3JJcJj34DU7al6mhNSphsiR?=
 =?us-ascii?Q?glYVd31LHBvBEIAODRJQLZ/E8yC5WkszRIXGDRQLEksLPxk4erAlWWQRZZn0?=
 =?us-ascii?Q?bBtJhz86OE4jIg05emIaHRNZagzjtN3KQhr33qvxU9egujqX1SvybQH+MWL1?=
 =?us-ascii?Q?qTg5O5j2pKyi81TK5e0Inl4UYDBIMmilvIJt/r9YTa56isVV4uKhHZx45rV3?=
 =?us-ascii?Q?fMnzDC7/uC0kUlVER7YUdPKpw/hzt8d8zB32PceB6TVS0ReTHHvVXWXX3oQM?=
 =?us-ascii?Q?Ylbj2cAGEiEHFHpzzIAkziITI9W9ZHBAEIXt3ihG9ZCPEswv4HodDZr46e1b?=
 =?us-ascii?Q?eQANh/Uhf1WodP5qyxc+jPspn/6U3Yh8S0zV8GaBKpmPdflTD5cdlNULo1c7?=
 =?us-ascii?Q?/bqdFbGmghrLu0cQCZr/ykkx6mHUA2Sl2GOL1C9l9VfvUHjOYR+Lx+Z1KY4S?=
 =?us-ascii?Q?wUl5Tn+G9wjcDj0XOft+/eBq2cYCXlr27lCYgDhZgc9rOt4Y9gBMgAj5y3aj?=
 =?us-ascii?Q?cM+8Uvib8ThGFJe36qe/gzekCFXmFYYD6VzON6gbF7RqzsfzZ21FG2sIDbQB?=
 =?us-ascii?Q?j2Glr4zRuGK1KeYYODrKCDKaWVyxYWIQf+a7EJWrAA62uAFkeBYHAduqbR/d?=
 =?us-ascii?Q?DBA4PLw4DMKsl2Wa4fvPhXo5RPYYWxDDgfpEIljg08mqVhMyhJbv0/11UY4Y?=
 =?us-ascii?Q?ckf0noGsLVwQqMIYSYGQ0erYtzuq/fJV8PgkoxSjypq//xobq46Ty0iqKxlj?=
 =?us-ascii?Q?UDBgtZhuyPmgMv8WsInfeViLMLRqJr3yt79Wj5fQyZy902AnKiQ2B9IuvFYf?=
 =?us-ascii?Q?+WlvUlAFVefhWKx5H3gZQIgp+knzdTH2AqSGfxYWcNVKXo5i7vQnLoZpWJyQ?=
 =?us-ascii?Q?zVEa2mkTtOA05GLwUVnBpdeR7665Q3gMG+24C1kTskcbd05mRVWlWUiBovEl?=
 =?us-ascii?Q?+3RKo65piZkPOMzk6hjZ89EldeIxKqC+caA4rCm/+E6h3GyyUP3V4a7TC7dy?=
 =?us-ascii?Q?fFI6amvFtuy5ota1Au5Hd9KOzuxKlIAVbVKhvTDdI4voI73H/akkJKwhRWuB?=
 =?us-ascii?Q?NoHDD3OLAdDdXTE27CLuCUiRJLI3Txitfa+VaHtpduCRrd4N0M0+uYnL8a57?=
 =?us-ascii?Q?5JLvxiA9qpmBMPc2Mm1MVJwCrRfENq53EepJ3zQdYuJdXmBPSUeHcqiP21Om?=
 =?us-ascii?Q?Itbp1pgj4A2WOOM8//WAKMJ2PsbvENu5LVbPL41iBE6ywyoWm5vdtTPPhH1C?=
 =?us-ascii?Q?Q6Ul4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 213582e1-ebe4-43d2-84d5-08dd83e32463
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2025 10:22:55.0505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GddtxTuZUtDgxCBmVB5wuI6aU6o3XLHi7t0IRtUIkBlLZ5Iw5ULLj+TDLFU7bs574sNHk6cAo3YPiKhrWfZWMoFZvRSiEKaqsmd4jDahYxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745576582; x=1777112582;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rzY1AuAqW5jfgRu22x6ewncFmJqeU+KbyMsLjw975YI=;
 b=fclR5BzvAOs69/wzk2+U6jNiIyw/j0ucB99QmiYfT55eEWtP/td+geQO
 4Jq+J14IOwJITfVAn/aH3wxYHFxOvmrAGPBlzRjq9WFIRTCT430yM7Tzg
 kzHXy9csrEuFrHibqTbmjoFVZofVUw/LAkm/wB2+Nc0Dy8L8G/USViuQy
 N1xngs+SQKEsDxEfSowd8tDBcswNxVoGViT4rMFAmcAdaokCXreDWtux0
 hXzCJa1GG0Xg5+2ToXoOGXGOwpi6YSo6k8qvN9jUxIFWze4nmQFcbGMdM
 CQNBlqipK4l99Z6KN4mbqTmFy+ozpQA7BjBpbnKM3gcttqi9kq5mW3lAS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fclR5Bzv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
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

On Thu, Apr 24, 2025 at 05:37:47PM +0200, Keller, Jacob E wrote:
> > Am 24.04.25 um 13:32 schrieb Larysa Zaremba:
> > > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > >
> > > Support to initialize and configure controlq, Xn manager,
> > > MMIO and reset APIs was introduced in libie. As part of it,
> > > most of the existing controlq structures are renamed and
> > > modified. Use those APIs in idpf and make all the necessary changes.
> > >
> > > Previously for the send and receive virtchnl messages, there
> > > used to be a memcpy involved in controlq code to copy the buffer
> > > info passed by the send function into the controlq specific
> > > buffers. There was no restriction to use automatic memory
> > > in that case. The new implementation in libie removed copying
> > > of the send buffer info and introduced DMA mapping of the
> > > send buffer itself. To accommodate it, use dynamic memory for
> > > the send buffers. In case of receive, idpf receives a page pool
> > > buffer allocated by the libie and care should be taken to
> > > release it after use in the idpf.
> > >
> > > The changes are fairly trivial and localized, with a notable exception
> > > being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> > > under the latter name. This has some additional consequences that are
> > > addressed in the following patches.
> > 
> > (You could reflow the text above to have consistent line length.)
> > 
> 
> I do see a few spots that don't look consistent. Its hard to say if this is just due to the way longer words like the function names line up or not without popping it into vim to double check... 

It is quite funny how you answered this with a line that does not fit on my 
screen in mutt :D

I admit, newlines are all over the place, probably as a consequence of editing 
this so many times in nano. I can reformat this, if it hurts people's eyes that 
much, though I do not consider this a problem if it fits the limit.
