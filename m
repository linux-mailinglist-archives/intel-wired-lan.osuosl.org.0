Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62984B22B98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 17:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04C1D845D9;
	Tue, 12 Aug 2025 15:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wbC7SfLfHUWS; Tue, 12 Aug 2025 15:23:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46557845DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755012239;
	bh=0H7QeoPFiU5lcBuRM+sGJdEjnlaXS5gsXtWgEtsl9Zg=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ssUFuI+0wUngbqNrxKKT5awvm63Srgz9SsV0zBe6ZXX+Kspp9RQLP5TTYnBWj4YoH
	 +a1mMUCTKYngGGWYNK2B3dWofzc3LGfQ/wUGqavMb6yHMMzAUlZl8qCY6cs0M08B6n
	 L/U330oOyQdCKVByeiKRIHBMH0aSz9a0juD7zAbkOUxjIcPtNbPMXAyR4Y+9hx2ste
	 dbL8XTH2VaQFOl6zt429G9E7r30RbKFbB/FGq9EjFp0IYzVJJg/1rAT+A6NDxxLrRK
	 AiA2heq2S7cLNGHzHSBX9h/INwta4PBpWnwhi2+mq/YRgqdUSu4T3fc1SI67qqhz2T
	 OU0ndkYPDENAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46557845DD;
	Tue, 12 Aug 2025 15:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 160461C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07C38404A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:23:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qck3mz4_EnP0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 15:23:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 15D8C40257
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15D8C40257
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15D8C40257
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:23:56 +0000 (UTC)
X-CSE-ConnectionGUID: q2SS8EJATw+fZApcA3GEpA==
X-CSE-MsgGUID: V3o1e7VVRyWZDO5VR/1igg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57246255"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57246255"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 08:16:49 -0700
X-CSE-ConnectionGUID: 9ibsU0tgQLqdKo+ST0X0AA==
X-CSE-MsgGUID: mgsABLYyRqOeiwaRezVwYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="189915000"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 08:16:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 08:16:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 08:16:48 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.84)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 08:16:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fi3qGYzkqonESquvJS6UC/Iww3J6yZfsp85vqbVq6jGUONsIzF2hHSoBY+yGV45/y9bVgb2lU2bQ5Wlw0xdQPeOoc2yyyty9cp79trcx1wMEcW/jzPlIgkBWdn3Blxgy5STzdRl1wv6Ej8wjje25SLomU+oDTrRP++nSSH0I0N/BlS2cXdyThaVS79ZpHt9d1Oi0X7QgXdyKaT1BN3MWjqUBd3fKZmPNZgsG80aLu1DEl7maVx/Ve2+rgz0AZ1MQD9CVgdtzxrA0DQpxI8eoVCDoQHMq47yMvY2ilo4nZCQCtJFpraXSlCiGaLCyMTboWLQ1y7Z1cQEgQcFv9AUjow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0H7QeoPFiU5lcBuRM+sGJdEjnlaXS5gsXtWgEtsl9Zg=;
 b=mi5UpQ3QAXyU5FLjvG8iooIz96q1PHGYl1nYYYw516o3lcOfecpcx/Kgjgcz6JogyVpmlADsOQnIgaLhKH6Rw3oakf3M4b2ilcPV4+ODKGNP2Dv4O3c8eqjq7Hg7/xvkSv5vkEjYNtyaJ5MA6mEbrlw8Tyw6gUNIW2qZex6tErP/x/R1i+L+g3MH4ttvJ7k0As/5MX8BD8HLqBFobQpWez7IUw07fJ3aYvH0+LJlPvauEQHa2NcqPBH+3xMjYF21aXpucPFmT4X3hMzIibyZEoZyJQCWNAAnEDEbmgk7ofNRjAia4xb2z2mCncnOHT7IO8YeV1uO4+ym6zmCoS7Iqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV3PR11MB8693.namprd11.prod.outlook.com (2603:10b6:408:215::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 15:16:46 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 15:16:45 +0000
Date: Tue, 12 Aug 2025 17:16:40 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>
Message-ID: <aJta2LsOnst7dtsF@boxer>
References: <20250811084406.211660-1-paul.greenwalt@intel.com>
 <20250811084406.211660-2-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250811084406.211660-2-paul.greenwalt@intel.com>
X-ClientProxiedBy: DU7P191CA0019.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:54e::33) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|LV3PR11MB8693:EE_
X-MS-Office365-Filtering-Correlation-Id: 41754697-9f6c-4d09-18d2-08ddd9b34038
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JtenKuW0vvqr++kZ50hcDXxaWKeIJQR9Z74ny9mShTZDGe58lslE2dlCUUGB?=
 =?us-ascii?Q?KM/L2YJ15/6s3BdeK6hlHIPc6XbSBR2l7zhTCr9EJKAZtOSgxN/y65J1K/TS?=
 =?us-ascii?Q?JDbyRVHn3WdS6vo5r+s8O/iZKv62jebmUq1s/RjlmGPpTaxq+oa4LTHBLTgY?=
 =?us-ascii?Q?0GLfD6LfC5z628DjM6BtUkCdDI7xWZ+lDpOQ3XUbi3OEj6fcxdN4kXHSBQWv?=
 =?us-ascii?Q?+0sFzUnnh2uXPnul6/2+MOMJ6IOvCGDd7jDXJuykmUp97OscJBtzWlDA69cK?=
 =?us-ascii?Q?TtHN/Kiq1MV4xgVQIQ5ebEkYM0XGzCtgGVhBhUGcczeW1Lctc97cfghYvdEz?=
 =?us-ascii?Q?+93fNEO/LY5L7ymusM+GExexvy5ZHyUmBkWMhXaogNjxQLy85jJpPRJrFCam?=
 =?us-ascii?Q?9iZ3DyEN0gFirI6qBTRvvtxKCNFJcfBWew/vsz8JkTKEHl0RazKo6UJ8KUk5?=
 =?us-ascii?Q?vYFubz9N14je2jGKkMLru/FAKcIFsi9P4UpUWERcWct3gyEA6BZBBCuBJ/gS?=
 =?us-ascii?Q?UskMXH7INh3T80M+Rw1IcSmEkVV6GZqiQPojTiPPmIcj0wpHRMZyppqnqb6y?=
 =?us-ascii?Q?QxIqvAV5Juo0JbaVCZ/PZmLdsh7Y2qBnnNT6vyIntedCeKp1vgCTFaSfaGSg?=
 =?us-ascii?Q?rKjOh0a872bCXbby34efGltyhCaS/iYT5KK38B6cMRdok49Ua964eaWIdH6/?=
 =?us-ascii?Q?n82OONFuW+kA7PrB8/b2B3LtXVOomyGGwMIBQb+5zxQKW8S5QkRJikR2+Xg6?=
 =?us-ascii?Q?1eDSaCKHZSt8BhbhBSKWnNxMEQKHT2zdn791vGp1EzO6VwA/8pct3TMq8sJE?=
 =?us-ascii?Q?OCzsPDl2WLZv3pGn+/HCvSp+FJWqnbkQL1hiZbRydzIB0Lj9oZEMyloVU68L?=
 =?us-ascii?Q?Cw2/Mey+qzHJ3lRt7HoMu9bY1Jf5Ou2bGEbQDZJspbT8xDq5hM02Lp/KlCsb?=
 =?us-ascii?Q?5grrDLd9cwzt6SDYcDOpv4tN40fSKz5BO05t6nhXu/8RDLsamdvs2dYKvAqv?=
 =?us-ascii?Q?U2oVxEt5jG+pPyPzIpSyO/PM/6lOikHwyQxxd7b8VRVhp5+2cMBBofeA2FNc?=
 =?us-ascii?Q?Cg+ai3ouXwidyrohItUxNUbqTtVckr5pBGRpk0Bk0lXaGCq3nPNcEumPNjIn?=
 =?us-ascii?Q?5ywILloHpIipMEX4+hdDxz0y6Hq99m9OjlcDJW+csR1bHnuWQ004BKJpmtj6?=
 =?us-ascii?Q?or2lylCs627G0Nkf8X/7vlSP0FT8hcQgSqWbDMgNxnvKywxNXnSVIOt1qN9z?=
 =?us-ascii?Q?k3gAfr1USN7pCIyqoMVCUeQ/apc8o79qc3pY6Oefvdnczpc3HdQvQCjfU9PT?=
 =?us-ascii?Q?BQPLzVn003osEfc4oawZva0WhVmmUeDBYHqnFHUP0e9CEFPebTrIWjp1Uj03?=
 =?us-ascii?Q?nzXHasvcwBM/vXf9rqlMNFp4O8HIHraq3yLWh+X6FUM/A/sFBg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/E7xfRqMe/O4O9jRxtqxIT6o56RbTdu/EVlQbTZHN7JnDe1K/sv3ae49d7Ky?=
 =?us-ascii?Q?8HY3NbzGg/Yc+j3Ebv9OHBzyfEyYcpflDSutBNp1p3uI/lTov1iaiEKl2aMr?=
 =?us-ascii?Q?udr2GJtBnr5GYBJYzVWRLrLQLOSk8wvzLkIXTUX3Ckf0yTi8bzfW+S7qc+cX?=
 =?us-ascii?Q?HpZaFYd2Zr9SCfUbISf3ZYNs7n8ztklM5OEd3SoXgsl3xdezYVLs0mHmt1EM?=
 =?us-ascii?Q?+pz57TsXFbxUGkkxbnweIuK6murKcANNk+TSngYhamyvJgNzH6CPlCQwa28M?=
 =?us-ascii?Q?4Yj7KsyskdAdzLX7M81gz4FHUiGgpOvjC6A2rFkXg4Wbw374+Y5Syf86f/7r?=
 =?us-ascii?Q?Cvh5XHjsTs3MruP66TqOk8o55S6GWv3CFjfKHXD5rUbMWSO+YPYO//SBmJa+?=
 =?us-ascii?Q?dPbQHZWdDpQKL5/7LWzdF8NKHfQLJJfUMtIwdF3qtlM55WukdPgmmNlzQ4aD?=
 =?us-ascii?Q?pkZsLu77OPG1h2Jnh8+8Zg2m87md5NDlcruZKzm7JQ/Z+2uKV6nCvG8zXcj8?=
 =?us-ascii?Q?6pERkURs5jgbcxwuIAJpkVzrvcuuO1tMUTlGBomIGmd0iAH1y3Lj7mBZhyHP?=
 =?us-ascii?Q?BZ//rtzUQ2GkRtorrPr1nvlMPuJpQH9dhNENyho2veYY4Em2W6UAb+YsVSvL?=
 =?us-ascii?Q?tqW9LgYmK/q4YHI9hVOEV+cDugHA9Nd6jJVW/Ybom4v7WPuIKxB8nGdQeLJK?=
 =?us-ascii?Q?AIOTDbUzNgzPWAS3Dz8rz4KTwLSU1RIilCQMJLrHbz0iqyBoHZNZndKE9Gyu?=
 =?us-ascii?Q?7aVMi8dhDifGD+pXRF4gGPbiENhuaYzKJvBkepo5VOJD6ke9AagSnYyriizX?=
 =?us-ascii?Q?6LfZeoPUUOi3z0Wo3+Qt0VAebcUDuTsskqQvS9bUFwAQLRRSAKzMIdOwz6pN?=
 =?us-ascii?Q?62ru9P6n45vdjtxOva/AjIjGbYweeRF3wzJ0T11yRq4JXZiv83UP9D06NLco?=
 =?us-ascii?Q?/KrCf39DOFLcwnpWu/YpQmX0dDvNyTZjLWzY3CsTZys2HkjnWH0jC1yi+b6a?=
 =?us-ascii?Q?JluRMMjU1PJAMGs5lxtlXz29KwT2XLobAh8HA8WUHPDwjTKYGvb+mFPwuAqm?=
 =?us-ascii?Q?6M3WC0B2qB/RxLYDDoF7MuUvmgLeJwEJ/1HsnjmZffcxASvZ2hCNypA2qMGk?=
 =?us-ascii?Q?kOlXZfaKf3IXfLMXxoeBNwVFfuGFTwodPA5ydQqkwf8FZtZc7/z/w/QgtRHL?=
 =?us-ascii?Q?RoDlIbnRYZfHZJLkrfznum6thU6NPYNyBAWygzeB+wWzx8/SUrXrprJrkOGT?=
 =?us-ascii?Q?Z/kIgboD9qr5HHxUNyc4M/t+xdSLYp0Oo2YKlBjUbTThspFVExk1IPxyq8rj?=
 =?us-ascii?Q?P1kxPan7ZvwQRgenvVQhEOAjAMK3MRvt8542V3IzImPA6MDqvMOjjIWdPkYm?=
 =?us-ascii?Q?4r65qwJPX+Jddf1uyZzH0TXyfLWGkQez4ryinKF/RKbG24FK2bcRXKXRumfV?=
 =?us-ascii?Q?unkOCFHLlrxrXN2O1F1BZiNBu6X7a0zpLLzB7WhemItPBYektt4A8n4aQwCu?=
 =?us-ascii?Q?4ReZVXjH/Z8hR2hM28S6TOF1eEbWgpthAUw+lvYqZP0hrXLaeQ++gnFlYnaQ?=
 =?us-ascii?Q?Gr8uSCABtkHcF54ZHD//+nJITiTwqzyiKfeCFVWgbW+vpvllN3pUSU03pSDb?=
 =?us-ascii?Q?Pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41754697-9f6c-4d09-18d2-08ddd9b34038
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 15:16:45.8342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: feP6wqHWhmaFcavsegFnE8kPjmXQ/n6KbzZ/3OcoFO3xazBzNWQLDr3dA53FGn2/hnnOJgSbWeeXLglb1EyEOg5kqeFPjqHrYbUVQIHPTuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8693
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755012237; x=1786548237;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9AE1jj+vXEYSH7fvKsc8ihvjwAtclrP2jN/5GXX05fo=;
 b=W7pdfJR1geBBtj2FUHhB43HJWGqoqImhciw/TORocPhxaGI1k+LypauB
 l3+kn61yVnu6hl0BnQq8vyeoAq1BK4R+5t2LpzjaQ4+QNcqizRhJJbG+c
 MKje1rHNkmetG2YtOn8+oahqPumZuDGxnIHp2/bkeCXWm3X7+y4coDPk3
 wafi1FGTgUvfztCEIAZ7YrlC94qE+ltS69H3Wauaup+QAGnSDcoY75+GG
 t213klqaOiUSf0dWh09uFG9Xj3IsNZNBNN0mNiYenA8WrCGOVOb3Ic7DD
 LeMR8e8BuEMpYnBxta4sC7Qoxl2EPoS7E3hhDALKAbfDXgqVrxrCNOKjE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W7pdfJR1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/2] ice: move
 ice_qp_[ena|dis] for reuse
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

On Mon, Aug 11, 2025 at 04:44:05AM -0400, Paul Greenwalt wrote:
> Move ice_qp_[ena|dis] and related helper functions to ice_base.c to
> allow reuse of these function currently only used by ice_xsk.c.
> 
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 145 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_base.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 153 +---------------------
>  drivers/net/ethernet/intel/ice/ice_xsk.h  |  22 ++++
>  4 files changed, 173 insertions(+), 149 deletions(-)
> 

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
