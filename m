Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 200CAA732F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Mar 2025 14:06:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D49BC84A08;
	Thu, 27 Mar 2025 13:06:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Knsrp5aaJfJW; Thu, 27 Mar 2025 13:06:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DB2B84A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743080777;
	bh=E5SqYzYnXnmGNunRT590meKqAhpbWHvWlVdjI3FoVGQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=STlHk+X145rSNjouu5VOV7L0cYRKAjU69JwyIOX9vOeXHApmafJ60KOb2WspylMA4
	 kss1XO8lruz6JepuMeJyJnDfOEuGLCGeMvbKn3J3KEM6lHTp0Ezx4QU86BZza9XfIG
	 gSU4nZGq90mXwrABapTnkK44zlkQF9rWEo860eE779G30TshXHrnIsSf/9LRR/VWYN
	 rSpgv9kKlaahuYkftbVzLuoEyqiRj2YobiR367fBQ1Lz0Od7pRqfFyw0GTIxsUwbfT
	 VjjberV6pJXaRuUtG/SD8Ab5RilxcxQOYnEdFDd9tSzHYffbL/Gdx3gDpvJQBPyGkx
	 04Y4L6cOc8jcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DB2B84A01;
	Thu, 27 Mar 2025 13:06:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5714819A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4832841E98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:06:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wB6w8nE1wpMP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Mar 2025 13:06:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 84DD3400C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84DD3400C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84DD3400C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:06:14 +0000 (UTC)
X-CSE-ConnectionGUID: R74bJR20T1awrKvuaAXdBA==
X-CSE-MsgGUID: jjUdDwPjSuK0C7Pms00vNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44327001"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44327001"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 06:06:14 -0700
X-CSE-ConnectionGUID: SWzIYPHxQD+0VpgqJ4K3vA==
X-CSE-MsgGUID: HhJLqSXKTfCNN80uGKTZjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="130228140"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 06:06:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 06:06:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 06:06:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 06:06:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kpbic66WJSv8uTARu28AX9atuRfQDeORgcmGviNgDaH6AJ1lxSf3fPyQNV08w8UwgviTwaqSk8OOgqooxjwbZFlvrTrc3uJlSdgTLf2rI8Ao+OFtWpYPgEFvq7DwZVrs6AJkdBTL0tsgwhQqHbt8yZt/HEdBYEnNGdL/qk7X26gJl1AwMNp1JIglefKljyaLCjvGV+vRjjCX9FKPrBwhQep46ApEBfxdB/Qi/cKWusj8sb68vqaP2g/DjUSZfRHPIQHx7ADe27urqeSxzYXdmUgru3K3lERd1fnIZY7yjIi9uci6raLvL5eJDWNDyXR8oVDiORUh8jqKfSBKtCgi0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E5SqYzYnXnmGNunRT590meKqAhpbWHvWlVdjI3FoVGQ=;
 b=qFXdoBvrIUMLZjFgjKl0W043AgBu76f6PGcG8+8Uk0+VUvEm/Ly42YNkUeFhANUbhoSv45BjXdZElQhgCtsz/BTaXuA1I7FyczXdTzw9wx6vDnzDlnxWn5/51ACvpPlk6RZmHpFbFItI3QSIy6uS6bquYlOdSpPKLIAJupd6zFkJDu5+FSS6scvHCre98+dXHfPzbejeQ2mAebMhaXgASQ6pg9EOcF2H9fdhFRCTvybDdxDo22aXoHb9pYLpuiya6tUqmroTIS0InvN0LRNzwXzBLiUqZhyP21S4R365MPTQgU17RQa4OsK3JNIFVr1kn0muoV4+XQCKtFz+kKRjdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6310.namprd11.prod.outlook.com (2603:10b6:8:a7::12) by
 CH0PR11MB5217.namprd11.prod.outlook.com (2603:10b6:610:e0::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Thu, 27 Mar 2025 13:06:03 +0000
Received: from DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018]) by DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018%3]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 13:06:03 +0000
Message-ID: <fee7bc17-5972-41e2-8656-08edd45c040c@intel.com>
Date: Thu, 27 Mar 2025 15:05:53 +0200
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Simon Horman <horms@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Furong Xu
 <0x1207@gmail.com>, Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Hariprasad Kelam
 <hkelam@marvell.com>, Xiaolei Wang <xiaolei.wang@windriver.com>, "Suraj
 Jaiswal" <quic_jsuraj@quicinc.com>, Kory Maincent
 <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>, Jesper Nilsson
 <jesper.nilsson@axis.com>, <linux-arm-kernel@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Serge Semin <fancer.lancer@gmail.com>
References: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
 <20250318030742.2567080-15-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250318030742.2567080-15-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6310:EE_|CH0PR11MB5217:EE_
X-MS-Office365-Filtering-Correlation-Id: 6afe3cbb-3359-4d86-9917-08dd6d30207d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NURRTlJUYU1vRkE2WHA3WG1ld21VeEtUMnFoOThZWk1lUjNjeTN4RlBBdnpo?=
 =?utf-8?B?SXlWb1NHYjNsSlR0bEVVNzUvUXBSOGVma3R4dVdjV1oyNWI1TmIwUzNhNENk?=
 =?utf-8?B?b3Rub2tLK25rQWdURzlRNkFOK0EwUCtmdWtHZWpVdS9PYlB3dnNHOG5nenlG?=
 =?utf-8?B?QkdxV1J2dkJHbkx6YWh0UFZ3QkpGZlNhWmFMazMra2k0aERnblRmcllwVjls?=
 =?utf-8?B?SWVualhyWWVGRjFLcXRTS0xFVSthcnBqbnJweHJiYTI3Q1Y4QXBtcW01ZXJi?=
 =?utf-8?B?THZEbjJ1c1hmNm9zWHlSMWc0N0RlNjRKUHhDUFJmWitQNVJzRUExaUxCMzhz?=
 =?utf-8?B?cDg4VXgwanZpNXZubmdlaWppWTBJUW4zWTlNd3FRQk9vVHNHK24yYm8raGd0?=
 =?utf-8?B?MDVjNWpSMzRsaEd3dW1BNk83K0FLcDZOVVMxdnEyVDkrY1ZtQ29pZVNlU1NN?=
 =?utf-8?B?aGVQZnhyWmVmYVRvZ0FFSjE0dUZhU3hlR3EwS3Q4eGE0cHd1OEl4Z2FFVWFN?=
 =?utf-8?B?ZmprLzBMdkRZcE9id0tHc09qQXI0TVdGaldINnREZzR6bURqWDgxSVltM0J6?=
 =?utf-8?B?Wndwbm5mTlpTMTUvK1d4c3phdEtNb0ZQUnIyRU5NRVF6SDJQVkprbmEyZlFN?=
 =?utf-8?B?MnNnYVhpMVAya0gzTzU1MHRHamFPODdYWldlVjZIVzBSVklPenoyUGdXVXNr?=
 =?utf-8?B?QVZaOWc4US9ERkd5OE95a21SelNYMHhCNWhhRzk2ellxN2V1L2VyZ2RKbmpy?=
 =?utf-8?B?RG9Rd0hoVEhvUGJmYTJWbzVlRnF6VU5UYWIvejhhVFo4K3VNYWNEcy92dFlL?=
 =?utf-8?B?N1FnQnJ0ZjEzQUFxWCtvTzI0SlliRlhtRHhOUmZUVU9UUk1NejhEbHNkV3N0?=
 =?utf-8?B?eVRpTUZ0Ty9pWG5CQkNOUThJYjBKQzk2MVRaMGJKS21UeE5lQURIdWhDV09Z?=
 =?utf-8?B?bjYyTzFIMkNFTnZYNDhEM3RZem5XRHdiSURpT2lXaDhGZFRTQzZoVGpkdC9X?=
 =?utf-8?B?SE15Rk1NUlB5ZmhEU1BsL05RdXh5bld3S3RIWWwyZC9tN1ZrMHJlWnN1aHpM?=
 =?utf-8?B?ZjdwMDRib0JCUjQraUpNdDdHZ0FtcFpvN1NmMEJFbS9IbHREZEVLMjZyVFVp?=
 =?utf-8?B?Qlh0MXdrVndYMlkwZGpkN0Fqckw3SGlYNE4vUHBZcHdza0o0VHJHT3pTQ3Yv?=
 =?utf-8?B?d0x6ZU9Ybkowa21sSllMWktiV0M1cVdtYlhGcGhHS2hRY1lHTGJiZ0IvQXJB?=
 =?utf-8?B?ZHlUbi9abzhxWEd4cmRaUjdMSTRHUE8za0Q2NGRBaWg4blMrZ1hEd05FS3Js?=
 =?utf-8?B?NzVTU2szOGZRa1ZQRmR1eVNvSkJsQi9waUE0RVRzeHdNNEQxQzFJVzg1VGlK?=
 =?utf-8?B?TG5vY2NPdWZZTlVLalNsZGQwc2dSQjcxSEZUbjRhemR1bTNTL1lkbCtLUkFM?=
 =?utf-8?B?d1ArbWNGY21hN3R0VkF2MzJyNUVuTENpcmlDbFN1MHdLdzZVYU5MazJVSUZ5?=
 =?utf-8?B?cFB1Z0tPdzhWNFUza3RPZ1dHZUdBbUtVWVJjb2dvUWlkeDV0VXFkcW9ZNTBZ?=
 =?utf-8?B?UlR1bDNlZElib0VHOFZGVDNUcG43azBmWjEva3l1aStzVE9tRWxQeElOS0t0?=
 =?utf-8?B?RVQ0TEJ2MHBvNTlzOFdHWmdrMk4vSi83U0ZOTFV6anU5aEpMOC9SUWliUmUz?=
 =?utf-8?B?cXN2eitOM3lSdnAwMW5sR245YlpjejJTTGY0Z0tSakpWYzJuSDcyVElwdGlN?=
 =?utf-8?B?OEQ4d3FMSXM2bEZKTGluK0pCUy9QU1laVEV3SkFGNzhWM1o0R3g5VlVROGtz?=
 =?utf-8?B?VE5FQ0xXQW5DV2JRS1h0YlFWUHVzNTl3OVRHMjVGOTk1Y1lLU0pYdkVPTXVa?=
 =?utf-8?B?YzVSWVpCT0x3RHRnZHhQS0tlSkVHYmhFaElpelhIL3h6TXpGSkVOcFo1NFZs?=
 =?utf-8?Q?Y14oWnGWOAU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6310.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cklzUGFXUVFRNVBZVm4wdGJqd0sxQzMvTHRHa1FMQW5BelNLU29uTVBVdGNi?=
 =?utf-8?B?ODJVOVBqSmtiVUdWSktiOEVSUENlOFczTjQ3NTZ1Vm0zbEdmNFd4aHhiV3JY?=
 =?utf-8?B?N3doUko3RU9CNG1xMExaTzc2MDFsYVdua1hNSzI5WnNVcGY2Q0I4QXNBVWRa?=
 =?utf-8?B?NVc4WUs1TzBDQUpPcmUrKzZWbVVOQllOVXg1TE1ZVEs5TDlLeExsTWxZdi82?=
 =?utf-8?B?Zi9YZlJ4bUhaQzA3ajYvMjU2QTgrTGJ4Y2ZPVWd5RU1jaE1NRkx0QWVMYUdR?=
 =?utf-8?B?bDhUNEU1NWwya2JzR0NpeWhFVDVZdXhUemcrVHNLSTNoOGRSZFZNdU9uR2JK?=
 =?utf-8?B?QWFxV0JKeXJVV1ZnWjhKZXIraTdZbEQwSXh3WmtYMG5waTlhbExoazNpWkh4?=
 =?utf-8?B?V1MyRnVZM2NlQnhFVTdWdVk3d2FkTkFKQzdHaU51eW10cm9PZ2JVa25FZWJN?=
 =?utf-8?B?T01vNVNOdEpsK2dMNnBjWk12MDJlbzdaQmN6dktUV1MzV1NFOUFSUUlWVTgv?=
 =?utf-8?B?OU1XK3V3U2NZcG0wVmZXL2NxU3I1dm5wTTBKS0pEQzU5QXhQUEhuRjIrNU5u?=
 =?utf-8?B?THZoL1A5QWI4K1hNMDhGMjJ2STdickFsbnZIcWtUZk9jaGZOQ1Q4cWIxU1U0?=
 =?utf-8?B?QmtDby9HL01OS0IzcUJoZkpSNnJQeVhrb3JpakdQcHRBenp5Ym1yTnVsajZE?=
 =?utf-8?B?RUtaSngwaWg3QjBJN0owSEV1QTJhWmhYRVE0MzNzRTYzQ0NnaTdubjdla3hS?=
 =?utf-8?B?SDE5bWVaQW1nM1VmeHA2MGFteGxzdmZ0aEZDejRCOWFUZWI3S0hzY0oySklv?=
 =?utf-8?B?TXdHQXU1Z0dMdmZnM1c0UzFBMmpuSzE2Vng4TXZoN0tvWmozOXlKTHBwM1pR?=
 =?utf-8?B?OVlMWDAvUjk1NzVhUHNKaGdhVFFwL0NxTDFsZjFLUElZckxCZHZ6WUQ1Z2cw?=
 =?utf-8?B?Y01YNXYyMEhHYTArNHltY1VXUStQNVM3UGI5VEZGVFhVTCtSY3VwcHFEVFRi?=
 =?utf-8?B?WjdpdnNIZG5qSW5CQ0xuRW1HNEEyYU9BY0cxY3YxbE03OG1DQkNNZ0FzM2tV?=
 =?utf-8?B?K25vNWYzV0ordFg1L09XRzdiY0Zrcnk4b2Q1Q2J2ZE1sU09vcFhPQmYrWkdR?=
 =?utf-8?B?SzVPZmkvTW5sNE50eFMrQ3o1eWhiQWIxSVhEUVQvNGprOUFqL1VQbU9Gdkgw?=
 =?utf-8?B?UTRQZExZVGpiYWJnTHhjVEV2N0NyQmp1SjRpMm1xb0hsOGoyb21VVXJzSG8x?=
 =?utf-8?B?U1I1OWlSaGx5V3QxaTJsUnZ3OEtQRGtvbHBhQWhna3ROc0tQNVNBZTJiK1d4?=
 =?utf-8?B?dFhyN3BrTmNjbzdvTXZOeDhDVkVOVFNsUzBtbklFUDNuOUJFZHh3T3ljTXcz?=
 =?utf-8?B?OXFZbTZsT1JqVis4dE5KUkVJWkE4MVdqd29pdk93WjdVRTFTVStyVi8wV0k4?=
 =?utf-8?B?SmNZdzZLUjBZY2diQSthcFBSTk9lQ2UwUy8xQ0E5VEhUalJOdEJ0aldRZEFq?=
 =?utf-8?B?K2lBYkxxdm15aWVhRy81WXcrbkQ2MDdKRkJGR0dXa1lTWTJlLzZjQUJ4Q2J6?=
 =?utf-8?B?SGtUWFZ3bVFwTjJXZTlBQ0VKQmpXemRTaHpiaFAxOWVKR0laWk1tSVFMbTI2?=
 =?utf-8?B?NTJHQW42SFZuUll5Z1ZVN0RtRmpFK3EvN2FWUlgvWk53U2N6ODQzYmdqSzJh?=
 =?utf-8?B?VEJOMnlrU3VnV2lSNU02SHNvbU1Ydlh1QWFqdTVTMEw2ZzR1QTlTK0FBTFJn?=
 =?utf-8?B?RmtwSE9XS2d4Z1drb1FuSEZrOVdEUVcrM0tCbnF3bURUVlJEZnYvTzVOcXZN?=
 =?utf-8?B?S1RFTkRObDc1Q21qbFZyYmJQTEwvUTl0NWNwRmxDL3F5NzVFMjEvekZzckU4?=
 =?utf-8?B?ZUlTenM4OXhpbkNCMXRIcmFwTlE2ei9odXV5SVNJRHFPaEpCaUtMM0xhQm1G?=
 =?utf-8?B?MTQ4TDRneFpLRXQvOGIzVGFwSTU4RTRnZEhBT0NVbzZLdW52cjdubVgwRjdE?=
 =?utf-8?B?WWVIWXJCdWt2MGxTdkQzeXFCZTJvZ2ZFa0dwalNGcW5maXZhYkhTb1NZMS9h?=
 =?utf-8?B?ZDVVWUt5R1VkN2xaakF3eTRBNklMMC9IaUlQZnVIWnNUc0lqcU1aL1dLVzJP?=
 =?utf-8?B?L2lucXNtY0JubDNiZGRxRnV3QU1PZ1pJZ0NycFlFczB1QXNVOGcvT2NkeS9o?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6afe3cbb-3359-4d86-9917-08dd6d30207d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 13:06:03.2378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kd3I5UqAA9FZmBf6v1RqxQgn50susbTin85/UsSK63UfQbUrXjkhzQAgax8cRuvuinORjuxF+JjVJPZK1nhGtkcZ0O0yJ53ePWdquoN57Hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5217
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743080775; x=1774616775;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SfQKlhmu6Cu3xDyk1TH1F3qJD7tN4ZBu9jlwRIs41bA=;
 b=g/O63KJ/U/ej57vt4R3rZGHW/Wa+gBRuL2qAyoPeUJTwKgvBQFc+zOd9
 iWpSIz0fgcvxd2zL6z/sCg/0P37jzw7gBx0/ZBHPmG28waPAV/fdjc7BA
 9LeSKdS7l/Q0uiOYRj5mbVlXgWnU2o/9Q6PrQwLlOuFSS59tKu6LsIFM8
 LUGBEEpifjgV6UiaF47qFf09AZZbjPq2tkANUIvI882STvonH4eZZElJz
 6VZjy/PGsiaMhye25rKEpaoVyLGT5e29KTMwtLQxh1G1Sx1c5fwbuAGAV
 dGKns6eirCrp1yNDw2xKxcnEYVs7MB1jur5V8/Co+jbWbtNeqR88sH/6Q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g/O63KJ/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 14/14] igc: add support
 to get frame preemption statistics via ethtool
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

On 18/03/2025 5:07, Faizal Rahim wrote:
> Implemented "ethtool --include-statistics --show-mm" callback for IGC.
> 
> Tested preemption scenario to check preemption statistics:
> 1) Trigger verification handshake on both boards:
>      $ sudo ethtool --set-mm enp1s0 pmac-enabled on
>      $ sudo ethtool --set-mm enp1s0 tx-enabled on
>      $ sudo ethtool --set-mm enp1s0 verify-enabled on
> 2) Set preemptible or express queue in taprio for tx board:
>      $ sudo tc qdisc replace dev enp1s0 parent root handle 100 taprio \
>        num_tc 4 map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
>        queues 1@0 1@1 1@2 1@3 base-time 0 sched-entry S F 100000 \
>        fp E E P P
> 3) Send large size packets on preemptible queue
> 4) Send small size packets on express queue to preempt packets in
>     preemptible queue
> 5) Show preemption statistics on the receiving board:
>     $ ethtool --include-statistics --show-mm enp1s0
>       MAC Merge layer state for enp1s0:
>       pMAC enabled: on
>       TX enabled: on
>       TX active: on
>       TX minimum fragment size: 64
>       RX minimum fragment size: 60
>       Verify enabled: on
>       Verify time: 128
>       Max verify time: 128
>       Verification status: SUCCEEDED
>       Statistics:
>        MACMergeFrameAssErrorCount: 0
>        MACMergeFrameSmdErrorCount: 0
>        MACMergeFrameAssOkCount: 511
>        MACMergeFragCountRx: 764
>        MACMergeFragCountTx: 0
>        MACMergeHoldCount: 0
> 
> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Co-developed-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 40 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    | 16 ++++++++
>   2 files changed, 56 insertions(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
