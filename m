Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEXGGED4cGmgbAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 17:01:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA75259981
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 17:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8B166F55D;
	Wed, 21 Jan 2026 16:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9qouH7RWZAV; Wed, 21 Jan 2026 16:00:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4ECB86F55E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769011245;
	bh=WrY6EvOkR3u3jLi7LqPLsZAihUZZx+RuwpUOS9ck2pQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eVJCRDefaRm36EGxPq97SX4BXaeJSFiQ2kwXtJ0cGdLXG97Ivvm0+zeoUJ5JSfX7Q
	 lUFwTKLwOKZc1tXKFCnucXPxtyFP4xxYzkc9KnGMYEqlEBkFb/0kPClCivaZInYVrb
	 o46nftpba9CbbyG7mWbcBcyEg3IVbSjgFX3X6z6sNC9/4AI9SVdYfD27PWIe3Bp7z8
	 ohNXj163kUumQ2azsVDJNXS8r7aPDA08P8QA9P0GxLbyF2KHaQehYW+oiVdcj2QHLu
	 cW0BLTPCOGf0EIDCJjirhy6UJDKA8gHoGDu4uOPSVMRlSNS17rb5e+9UpZBxUGy5Mf
	 Rsma4qioT9C/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4ECB86F55E;
	Wed, 21 Jan 2026 16:00:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B729160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 16:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2162642BBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 16:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id apj5zhJJIuDl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 16:00:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D5EDE42BB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5EDE42BB5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5EDE42BB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 16:00:41 +0000 (UTC)
X-CSE-ConnectionGUID: SVy+8TLuSti1WEhvsFVh5w==
X-CSE-MsgGUID: N5imDF6KRHy65Yul7q0qkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="92907509"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="92907509"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 08:00:41 -0800
X-CSE-ConnectionGUID: ZusGy3lYTLWLqD01i2AkxA==
X-CSE-MsgGUID: 75xlmu14Sker3II0KvVqHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206389681"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 08:00:40 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 08:00:39 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 08:00:39 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 08:00:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xGC9ZDHoAAvd24+vD4+csVDVEl3A96sVSLPaXKx/QDDOsdSTbt5TskdTXbdGUH2FghdSz5XQjOK/5qgt4Jq5iV4awQnpDigftDHWKZ4yXqvUNHeqSyFPJWyEt5cZxKgJZsLtYoSxH/XictP+FO4SiipcvId/+XcyNGCgKkRR2qECZKA1C/XuQbnBdtIy5Mfdlt4pNV+TCWjWtUqyBadKroDOJsuVRQVYtOKjPF85cKIcmoQQgs2+nLERIi08q6hQ+a8E8e2dMvkCLmHDUT+RIpHeNsciParb3/+f2ukiLlcoOXcg3Lk17qufPlrIkdUbQozUpN7JyzCSC38p7XcZAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrY6EvOkR3u3jLi7LqPLsZAihUZZx+RuwpUOS9ck2pQ=;
 b=FZVLm3JoiUvTAgCI7pXB3oRcBwuEWwNxJXrpGVx3VbatG+UMKsvBdvdh/RUfgOLbUMI5FQmxB/yJWTaYpJ2k3mXe4UEQzXikPvVqZpNW+d7HW+tJXDTjZdpabH3K21frpKYDXYkcefU8TCm642BAHD4yT+nZIgbi3iK2CSnqAryiOlqYk2XdxpmhMLn9wipFYHIWnxoaowcmi1MG4knshcL8eC4/tWFKJN1K0uXIj4zlK9qdFRwp7jaKFxGJ2PE+YDE+WwmcJqDKJVrz+EDX+RWOQCUij3yoay0i+Lqn155EEzgZ/qep1gyoBusad5Fm49+lfHitFKzQ7ZeplMqi2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ5PPF867D7FF5E.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 16:00:35 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 16:00:35 +0000
Message-ID: <905f01c8-6208-4baa-9507-87ba54158779@intel.com>
Date: Wed, 21 Jan 2026 17:00:19 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-4-aleksander.lobakin@intel.com>
 <c507379f-07a9-44fe-9679-277d618c0e04@intel.com>
 <20260120173405.82147-1-aleksander.lobakin@intel.com>
 <IA3PR11MB89860B4F0CF5B396C86747D2E596A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB89860B4F0CF5B396C86747D2E596A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0046.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ5PPF867D7FF5E:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c03af59-f054-4dac-d70e-08de590635f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGdFaXBwaWdXTXpwTkVxZURwTkNYaXhTSTI2cGtBcmJZSEN2eFQvaEFLMlU3?=
 =?utf-8?B?WmNybVNxSmQ2dzZ3U2tNVmJnc3hhakV1RVVKUXZoZjVpWklaNEpHaG1BWVQ2?=
 =?utf-8?B?c0dsc3Q1U3YyVGRVT0hyWEFON1Bkbm0xVnlldElUQ2xlR1paeGQvRi9rdGdU?=
 =?utf-8?B?VkhuWEpoR2JlVEZCYUFNcnlSaGVtQnN3MEt6U0hEc01NZkMxbVkvKzlxRlN4?=
 =?utf-8?B?bFZqN0YrdkIvOG14cjJoVnVBd3lMeFhKWjhTS3RNc3VzWFlUeGJvSW9TaExw?=
 =?utf-8?B?UHZlK1k3bTFrSmpFZ2lwbHRzN0pTR2gwRlNKZXFDaCtUdHRuR3RwaG0yK2RU?=
 =?utf-8?B?M1MvSFdMSm5jZ21xemF2aHZqN0lUcG92bGxWRDh5YmdrN2pGYUE2Yk5hdFlr?=
 =?utf-8?B?T2RaLzRVbjJZRmRnNVhmL25zaW03T2tWWEViTDBkNE51TFVKZlVqWC9CSHZ5?=
 =?utf-8?B?Sjk4cUZGbXY1NlNrRTk3b3hJZXVrN3ZjcEUzcU9aeG5aRXY5bnU4QkxXMnNL?=
 =?utf-8?B?KzJjQ1Q4dTAzZDVuSkZHL3VWNXhEUUtEMUx3YmZnSWc1dUU1dm9PbmVPNC9W?=
 =?utf-8?B?eUp3UHNidm8yM012SDVjWURUYzZtK2t2UWwrb1U1NlR3YkhINlNVRXFIQ0hO?=
 =?utf-8?B?c3JWT1k5RDJyNWcybm0wOGpXaW5XMEZZOW1iNFRTM2d0UzV4c3BrQWVNamlq?=
 =?utf-8?B?RFBSQjk2Wi84K3V6cmFSMHdxYzgwNXE4OUhWOFpsbnh3dmlzUk9oT3ZReTlt?=
 =?utf-8?B?QWRsdEZMS1RiZ005Q0s1ZEt2ckFnRWpNSGpPMXA5dTQ1UnlUcHNtTFVwK2hB?=
 =?utf-8?B?WDJaTUVWVHd6ZVMySUNPekpSZkJxR3VvMVBHOGQyYkZ4RVFMeFN3dDA5TUlR?=
 =?utf-8?B?TU5Ma3dEa2pPejJvU0JxWEZKcjRWVlZ4M0RsOG9HblZ0bFZLRTgwU2hDQnU2?=
 =?utf-8?B?WEc0N3pZSVF6bW9Tc0NoYWpwSU9rUUp3RFZIVkx0bTJWS2ZOejc3TWJRemxy?=
 =?utf-8?B?U0ZIdEdJaFVxbW1UU0YyZFhMUGZSUCtwVGlJdHNaNndmSTd2eUVLSGJvcm9G?=
 =?utf-8?B?T2JsUFVldkxKMlVaLzVvb0ZheHZDM2V6RnpiR3hsSy9FUjZYWUhDckZ5UTR2?=
 =?utf-8?B?eExVRzNWMkkzRjlvejhlalRpSERadjFVeFdnMTlMaEgyVzJGcWxOc2NuN1VT?=
 =?utf-8?B?dnRTNEhxSnNzWkRJMW15MFBaSEpJV3dsQjJFejhxcjJ4Y2R0Q3ZDVWFIUDhv?=
 =?utf-8?B?Si9jc2k2Zk53UlFoM09ZK3NOUzlSZTl3QmNQQVdjRVZMMzhHZU9yeklteEJJ?=
 =?utf-8?B?bUd5aXV3Z01DaTF1dmFPUGFYM0dqQ1hoYTBxclNYL2x2MTIvM2xsUjRJRUZo?=
 =?utf-8?B?a09qWHFPSlRFUGx2M1pFTWd4RmNIOU1QU0UxbzdRR1Y4bmQvZmJFc2JmdFRZ?=
 =?utf-8?B?RUFwelJtZDlRUCtHYkVSY05JcmkyQlBYa3gvYzZVbDRjTnBtaXEzM0xlcXUr?=
 =?utf-8?B?MWhaL0pCZUdpN1k2dldZbVJZeUFkUDg0cFpGRTkxdy9YYjZIUUlqZVpYdHly?=
 =?utf-8?B?RGxqTWliaCtBUS9VNzBOcTFOMFVEb1prSndBUmIzOVNNRTFseEdVWEFXeVJK?=
 =?utf-8?B?czRja1lWZnl4dE13THVjRUtrbFVVc08zU3FLNnI3ZFJ2K2NIZnErWFpIWW94?=
 =?utf-8?B?NU1rcms1MGZWbm9HRERVUTV3V01SOUk4bVYwdWtaKzYycVphNW9VdzI1Z1hQ?=
 =?utf-8?B?RXRaazhvZzNEMkZnQVZEQzBqQ1JOQzNtQjNRSWE2THJMcHFyWHkwV24xZEhj?=
 =?utf-8?B?SmdsbmlOT1EyNTJZbXZDTFNGeThjTmhMNWhoczFPMVZjNTdwMVE5Qkdpd2Zw?=
 =?utf-8?B?WDZsK3ZWL0RDR2s0eE5xN0R1bnV4RjdZYzJaQ3NWNk9NMTEzQm9KeEhySHUr?=
 =?utf-8?B?cFhWeGp5cW80eGNCbVI4RXdIRkVQM1R0bEtxREMycHl3TlFCc0lYWWYxczFU?=
 =?utf-8?B?WExDajNkd2w4RFZZOW1YbWIySUQydWZHK1F6OEdCN29NR0FUeWMvWndjSDBo?=
 =?utf-8?B?LytNaVFMbDdmL1R0UmV0cG92ODIyMm9tSVJkQmd6N0pnZ05SMXVDM1B1ZzlF?=
 =?utf-8?Q?HbA0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1VaZUdEOHZBY0l4UHdNQ0NrTUhEVlg1ZkZJaEpMRG4vUUtZNDhsQmd6VjlC?=
 =?utf-8?B?d2RBemhBVTZnNzU1YmhFTm83c2lFZXZheDQwZU1EVCtNbkpNVGRuc2p6UUFi?=
 =?utf-8?B?aHprb2FEUElVam1rRU92cWtDUVo4MHIxaTd3MnQ2Nm5QbldKb2xDTHpBNVBx?=
 =?utf-8?B?QmdyblhqMGk2SVVPMlkrL1RJNXc3MmxTUDg3U01wUURlRTdudVdVaHIyWStB?=
 =?utf-8?B?MSsvWmVsV0xWR1hycnByQ2VBd2QrMXhoQVRVODNITUg0eVlUTWlFY3BnM1lS?=
 =?utf-8?B?bEl5aVRjWGErbm45QmNNMnVyMVY1Wmk3M3RRVDl4R0NDZE9PRUIvN2g3MkhI?=
 =?utf-8?B?cGcrUEVXVE9qdjJuTTRINXVidWNKRVVZMWdneHNuTy9GZm51TWl2c0pNOVQv?=
 =?utf-8?B?VXd3alRSZGlWQ1VlNzNNblFXWXMzUTZaekpBRWlzSExVaStxakJTaTBybkd1?=
 =?utf-8?B?T0tpcWhkUUoyUlVzT200VWsxcUNaQ2hZdTY4NWhiTzc5SmJPVGF1M0I3ZFNT?=
 =?utf-8?B?eUFzR2ZMOEhKTUpzaEdXc2hXcnR3Y2hyNEgzRXdSMkNSSFJIZmFST1dEWFNx?=
 =?utf-8?B?dWY1VWQwUCtxOHFENWRMSVlaYmdHTjB5cmNjdG43RDVXYUdVY2pORFZYeENN?=
 =?utf-8?B?M3RlTXZIWVljMWhwS0FpTGMvTjUyQVY5bmVKSFBKVkl0Y3o3Rk9zcWlCUE5p?=
 =?utf-8?B?OWV5dGM1V1QxR2YvNXh0bHRyV1NhNVduV0dDb3JkTW9qVXVUOTJybC9uUWZT?=
 =?utf-8?B?TTlXVDl2K0lBZmt2K1crQzN1MVp6bDk3MUlQWTN0d09MTDBYdFBNTlhSa1o2?=
 =?utf-8?B?ekRaWUk0SzhrY2cwZXNGK2xwQWo4Tzg4OG5nUUFlZHY0VmFOY09zYWhnaDlF?=
 =?utf-8?B?VFB2eVU5d2ZnYUpMQmlYSEVjNEoyM1NvWU44bFJYazZ1Wm5paGhPbm1CRWhP?=
 =?utf-8?B?dWlGSVBYMHF0VS9jR2lKd01hRVIza1hyZlFlQkUvOTBYdGlvQncyYkRYMXAx?=
 =?utf-8?B?NnM2T0dTczhyYVcvYTBWOUNHZG1kTWRuN01vWHludFhEdVdYUUkvTzdQM1ln?=
 =?utf-8?B?UDI5bUVyTzNOQm9iWVcvQk5oQjEzUnM3aHJvRk1EeGhEMkxRTE1LbHZiOEZB?=
 =?utf-8?B?V0FJTkttV2l3d1hXNHg3RHBWSm4zUmJlVW0zUDFUbmJRN09YUFpEVk9Xc2NG?=
 =?utf-8?B?TjdaOW5BejhPdkJESlRUN0tLNU03dW11alhIMkVsdHBwcVUzUEpQdGdWQmpY?=
 =?utf-8?B?NTRWTEhtaWs0ZEhGOVZBcDR6dFhZcFN2MldFYmRRWHY4V1dmUEhWNDA0T0s5?=
 =?utf-8?B?V2tLTSthZk4xTnVYem01NmNMbHVybnR2ay92R1pzTTNmQXB2dUxSRDhSRkNK?=
 =?utf-8?B?b1YwMjB6ZlhsVklyNTgxNEp2b3RvRm5SQlFLYnUzUC91ZzBMcExEZCt6WFBn?=
 =?utf-8?B?b20rQUpEbFY0ZjhTV1p2SlE5a1h0T1cyMVFpQkdIUXdwcVZROE9Gak9SV053?=
 =?utf-8?B?b0ZGeithcTRFcDkxaHJLeFJwU2JONERaWklWd3VGR045cGpNUnNxcUhUbktl?=
 =?utf-8?B?ZGlHeWVlbUtmSlZQS21lckFDMlp2clptLzlUcnRhaEQ3WTk5RFg2TzdjU1RZ?=
 =?utf-8?B?dzRrQjI0ZWQvb2xJMEtlYThucWlmNERHdGoyODR6VTdQOXk2NjJ5RFhoYXVw?=
 =?utf-8?B?TnpHQ3luUkY5emI3VklXZGE2cCtiYzIyNWFlZStYaHd3S2tyR01lZlVpa0hX?=
 =?utf-8?B?VDArMmVQRzZ3SWRtNDRlQmNJSVJkMk1xNXBFWUN6UDF3UFVKdk1Va1BqNklk?=
 =?utf-8?B?ZTJlUU5jN2RhNWZCdHBFMG53WUpiaU1DZDRGMDk2d0E0Vk93YnhDc2dOZVp6?=
 =?utf-8?B?S2sxc3lhVjVzNFRZYTgxVVFTRVNxUU5mNUozNXFYOTVrSnVhNmRlWWZtaGFL?=
 =?utf-8?B?VWdtRHdSeG5Zc2V4M0NhcUtmYXZYUkhoZGovdUFzbUoxUitvOU1QT0VzUjQ0?=
 =?utf-8?B?TGZlQ09qNnBtY1owUGxzWmplZWlPUlRqSWhEQ0IvSUJpWjN3dzhIbGhCdm1w?=
 =?utf-8?B?aFdnV3c1ZXBPa2I2SjVFREdWNk8rN0I0dzVLT2VKTlZSVkxvU0Z0TGhMME9T?=
 =?utf-8?B?SlNrRFNZQ3QzcjdydTNXRWFobVdrWURrV3FnYmhObTZMTWljdmdWaFNKc2Jx?=
 =?utf-8?B?dHJDc0tlZmRlNTU4RDl4d01MTUlzV3hobFNOZ1pKemY2eTlFdFh1cm9pd1I5?=
 =?utf-8?B?OUxuNXZLRE5TWWhWQUZaaTRTcmVqNS9qMzlWL2hkVEVPaTcvZjBZZi9wdHFW?=
 =?utf-8?B?cXJnbDlUd0pEMmxXRlBXRE90TUJ3R1QxQUxYOHpCU1FyZUl6aThpcnp3L3E3?=
 =?utf-8?Q?j0jILqkwegnMw2MM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c03af59-f054-4dac-d70e-08de590635f2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 16:00:34.6297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZgZFtaQzo32wjnMHxJRffScQ7xMpEH/kfjQR+utoI6UZlCuSXZxvwb95L4nPdaA/r+89AfyrUQ3Lzs3HfCrHnpCsoigbpplpU0CFrnVwRNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF867D7FF5E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769011242; x=1800547242;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NFlF483DoWNWDULQKp9D824hnq7dWnhKUjqUaQSlh8I=;
 b=QuMzvB46HM+WRBPbXPx3vKgDB16i14CfC8FhRLprgSVkcFuvePFSLGpE
 qyDHfMi+h2zQMuFLBZ9zdKvI/d5g5Z7ckHJaZa2jkdCLTZFraeXLSC4AM
 qwM3WBfE6KiPNsUNpyc/7tJTzOM2vDTTu7vYdFYHhDFeGOsEvrsiz1ZFJ
 pn+lXwbWlMz9S3a1xl4Bxst4s9uBu39KMQJijk4yCettOEmT0QQUSx8Sw
 401fhCSwewuFJvc1AmTd0lplW0TUftr5xEbeSmYv8QO44FT7t0spgFX++
 jOhMVjqU+6wXlI1C+dKTCA1Kj+nnSqxQhX97EQrXQ4TdiFSPyQeVNIkWu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QuMzvB46
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix system hang on
 `ethtool -L`
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RSPAMD_URIBL_FAIL(0.00)[davemloft.net:server fail,intel.com:server fail,osuosl.org:query timed out];
	ASN_FAIL(0.00)[6.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[nxne.cnse.osdt.itp.upstreaming.intel.com:query timed out,jacob.e.keller.intel.com:query timed out,aleksandr.loktionov.intel.com:query timed out,lan.lists.osuosl.org:query timed out];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,lunn.ch:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,davemloft.net:email]
X-Rspamd-Queue-Id: DA75259981
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Date: Wed, 21 Jan 2026 08:18:47 +0100

> 
> 
>> -----Original Message-----
>> From: Lobakin, Aleksander <aleksander.lobakin@intel.com>
>> Sent: Tuesday, January 20, 2026 6:34 PM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Keller,
>> Jacob E <jacob.e.keller@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; NXNE CNSE OSDT ITP Upstreaming
>> <nxne.cnse.osdt.itp.upstreaming@intel.com>; netdev@vger.kernel.org;
>> linux-kernel@vger.kernel.org
>> Subject: [PATCH iwl-next] ice: fix system hang on `ethtool -L`
>>
>> ice_set_channels() calls ice_vsi_rebuild() under the netdev lock
>> taken, but ice_vsi_rebuild() calls netif_napi_{add,del}() which take
>> the same lock.
>> Add ice_vsi_rebuild_locked() which uses the _locked counterparts of
>> these functions and use it in ice_set_channels().
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>> Hey Tony, please amend to the patch I replied to.
>> ---
>>  drivers/net/ethernet/intel/ice/ice_base.h |  2 +
>> drivers/net/ethernet/intel/ice/ice_lib.h  |  1 +
>> drivers/net/ethernet/intel/ice/ice_base.c | 63 ++++++++++++---
>> drivers/net/ethernet/intel/ice/ice_lib.c  | 94 ++++++++++++++++++++---
>> drivers/net/ethernet/intel/ice/ice_main.c |  5 +-
>>  5 files changed, 143 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_base.h
>> b/drivers/net/ethernet/intel/ice/ice_base.h
>> index d28294247599..99b2c7232829 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_base.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_base.h
>> @@ -12,8 +12,10 @@ int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
>> int  ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16
>> rxq_idx, bool wait);  int ice_vsi_wait_one_rx_ring(struct ice_vsi
>> *vsi, bool ena, u16 rxq_idx);
>> +int ice_vsi_alloc_q_vectors_locked(struct ice_vsi *vsi);
>>  int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);  void
>> ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
>> +void ice_vsi_free_q_vectors_locked(struct ice_vsi *vsi);
>>  void ice_vsi_free_q_vectors(struct ice_vsi *vsi);  int
>> ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring
>> **tx_rings,
>>  			   u16 q_idx);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h
>> b/drivers/net/ethernet/intel/ice/ice_lib.h
>> index 347b63e497e7..e55b72db72c4 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
>> @@ -68,6 +68,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
>> void ice_vsi_decfg(struct ice_vsi *vsi);  void ice_dis_vsi(struct
>> ice_vsi *vsi, bool locked);
>>
>> +int ice_vsi_rebuild_locked(struct ice_vsi *vsi, u32 vsi_flags);
>>  int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);  int
>> ice_vsi_cfg(struct ice_vsi *vsi);  struct ice_vsi
>> *ice_vsi_alloc(struct ice_pf *pf); diff --git
>> a/drivers/net/ethernet/intel/ice/ice_base.c
>> b/drivers/net/ethernet/intel/ice/ice_base.c
>> index 7097324c38f3..65e19815bec5 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_base.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
>> @@ -153,8 +153,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi
>> *vsi, u16 v_idx)
>>  	 * handler here (i.e. resume, reset/rebuild, etc.)
>>  	 */
>>  	if (vsi->netdev)
>> -		netif_napi_add_config(vsi->netdev, &q_vector->napi,
>> -				      ice_napi_poll, v_idx);
>> +		netif_napi_add_config_locked(vsi->netdev, &q_vector-
>>> napi,
>> +					     ice_napi_poll, v_idx);
> If you converted ice_vsi_alloc_q_vector() into _locked, should it be lockdep_assert_held(&vsi->netdev->lock); then?

IIRC the core kernel functions check for this and warn already.

> 
> Everything else looks fine.
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Thanks,
Olek
