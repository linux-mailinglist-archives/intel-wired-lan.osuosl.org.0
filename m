Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1ABD20CE6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 19:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 848D383BF9;
	Wed, 14 Jan 2026 18:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8rxEdGO-vQo; Wed, 14 Jan 2026 18:28:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A603782849
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768415297;
	bh=qfFIOrr/36N2BSS+xQD/UyrSIR9XGNMTfLEF3OZNwns=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IU7iAYOXQ8ua3XLvdvAq0cWRboT/JKjlxd5Vu0V5WPgXdw//Zzx4IWoKCVo5Vb2ea
	 Gd3CgFBrEv7d1hXea9kVvvdpXuqMOzQNJYtRFUT4uMgV9xbh0UnFwoI5tyiv6Cz096
	 XR0IxPrWXaa0IZzU44P0cRlr2IHA5GlB6t24CIhtpuRuh5WJaoVTheTNFffSZdIeRU
	 AjyFioyFSjTvn+4E08dPxjqs3AqMrGjG8U5WLucLmQbdSMiFD3Sx7Wf8L/PimkhldU
	 pMZ0z37vjtJQh1nB/CL7/TZqeVgj9BHkSsJ1ojq9mV7dQNKOG9by6TGaBuC+H7Y7/O
	 7oWtWvDlGMxMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A603782849;
	Wed, 14 Jan 2026 18:28:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 98643232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 18:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9465A831E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 18:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kf_51dnCqHuB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 18:28:14 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 14 Jan 2026 18:28:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 473E082849
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 473E082849
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 473E082849
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 18:28:14 +0000 (UTC)
X-CSE-ConnectionGUID: lQp443+5SbifQPskPeURbA==
X-CSE-MsgGUID: 4Xq0ubYZTtO2BoW9ZxMpig==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="72304276"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="72304276"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 10:21:06 -0800
X-CSE-ConnectionGUID: vKQIlVuMRz6n0pmV6xQK7Q==
X-CSE-MsgGUID: Vkn2Oo5lTTGKxPWhM9AOKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="208910172"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 10:21:06 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 10:21:05 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 10:21:05 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 10:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yqrNu7FBGaU/jcIA4I3TKQBFKT4X8kiXhtPLDHoOFWe99Cgn3iu548xbaNdGnB2TdlvtzhJIgwcHHM9vNdo5qak5UeuS1/Djg2qkvHB83bNk/HJ5k6zwki9Ql8e6CGe815GPQ3r7GEWp+Vpbaw63YLxMLP8Y9aTMhji7aTkAi/zi+jXZ4IOnlEwE5fwedli+WQVi+JiAeKQRr6iNhox3+dOQEGRQnjAGotP23YO06QGuNmvF5CC9B+5untIF6/VHNFFXsL5bXfd/k7D1UxoRwmYSY/w1nDG4LVeg+HhipS1IlnZ5+0EjKi6pwah5QxxNOUfvAXZPbwdcvD5GxEIN2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qfFIOrr/36N2BSS+xQD/UyrSIR9XGNMTfLEF3OZNwns=;
 b=nhwP2r8zti7mUkIR1X/GZdAys63VVXE2n2Dlo1qI7CIxB+FaXf41jMIwh2ugSu8enRlhRDD0CQQYeJ1SobxyYF4uZEkZR4EU/9asei5Q+PPcOVlLGBhUT0AKL2i7elIaU1M1AD/6BPPmypxhOZ8dXKhXvrznvcwVgQuCNadb5BmR21Bv2RkI0BnhqsK4JXlLJAnmuTCOiRX4W/tHaDgd/VfhNrB44nWGeWcivPLOj9BZPQje/SIWV2P+sZzQRYN54YY7+OLTa5reBcbwHsC5k+0KqNj6UXWyOfV7d1TuIw1pRhH+9ZOL9rmekg6+Y7ycmYMMQSZU050LT6Zj48C2lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB5818.namprd11.prod.outlook.com (2603:10b6:510:132::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 18:20:54 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9520.005; Wed, 14 Jan 2026
 18:20:53 +0000
Date: Wed, 14 Jan 2026 19:20:42 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Behera, VIVEK" <vivek.behera@siemens.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Message-ID: <aWfeeu8r38dti0n8@boxer>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <aWYvVWG+AXUtpBgM@boxer>
 <AS1PR10MB53927D6755EA818A29A8B0EE8F8FA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <AS1PR10MB53927D6755EA818A29A8B0EE8F8FA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
X-ClientProxiedBy: VI1PR08CA0222.eurprd08.prod.outlook.com
 (2603:10a6:802:15::31) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB5818:EE_
X-MS-Office365-Filtering-Correlation-Id: 401029b0-9454-47b2-1852-08de5399a752
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j/JbDSS5xhWlQ7wXtWBrMh4/J+x0+2l/kPTusySLvhzI1b9bz6wdc+RC621N?=
 =?us-ascii?Q?s25/AeYNoAG83rZWDx1ikKSf8CEhdwhmTA5jm0xhDR5DGw1X2dq2TEbbdgaI?=
 =?us-ascii?Q?lFq1Yk99cd7MJGSbeE3r8W5LOC2FIAPC3T85PJa0A9xJpz+lvZNkF+pSsZe+?=
 =?us-ascii?Q?ZBQEJRqa3FXDKLmguKw9Pjv7rRg7A0mG7UGPXH78jmlFmjlDrazJRPAjfOL1?=
 =?us-ascii?Q?rd/ACk3HonJfXn5QgOJ+ncIJ9BP2TjypTxbjRscMlyyD5TgZcFVv6I/9Dszw?=
 =?us-ascii?Q?BKM9K41u5/8hQ7NiKriEtOEhZy3nm+DLOuoLGfDASKSjHZTxXU7kQBXNCQmC?=
 =?us-ascii?Q?WJ5Edj+p3weqwrmLLf2frwlrjmGQbHl/kEbTMjynAvaeWvzS1oxErEa4AG5Y?=
 =?us-ascii?Q?9vd9mRfAKkmWx2NmYHKH+3VJjX0SH2nfPZz6yu2WUEhY1Zaf6GoBIdF/WMeB?=
 =?us-ascii?Q?z6yjizsu4HJnp/k1N0xDoJ6cIBvY9Wbilbc7RfmDG622G9X54Db0FdEF/R+6?=
 =?us-ascii?Q?XHsuQ3yKD6CCxzxVzVgDEx5PvsT8uYQE9VkU/XkjVVjTSPn8Y5m6HLZ3vQzk?=
 =?us-ascii?Q?xqkOBAy+taf7Rf1TGwfLq76WSVooypyd8WsYVpnOLjN1EV7aTVCdP7ZpHD7e?=
 =?us-ascii?Q?n7z+vaXnS1j20mXrDrOmWM+P7azfs3jwwjJe7uybIVDwK7IgN0ldNpKJOnzP?=
 =?us-ascii?Q?+1yCfki6Dy143a2IeiSMiuDcD1uIH+XcSEhR+8eiglvtWKVhlUvfOaTe7ITL?=
 =?us-ascii?Q?irId9yfWBlULTP1xEpE+cCR1ekDpBreq2kWU4VsjsBinLjXlnDi49ZTr5woD?=
 =?us-ascii?Q?dQUnxvcb9IBf7yUixN8LtzPTZiURb2myIQYtI7Ukl46EirTJ9Pgh37Z0/TsN?=
 =?us-ascii?Q?feiJryTe4auEEIC+XNQjQylf57Ba1QsMACLmV5wGyJuZVOPuGWb3NNMmMBdx?=
 =?us-ascii?Q?9JA6fBCn7CPQDK0UOEcx2IAQBmT7ZzpdIO6FCRmjBRXzWU6QZP7lubg4bSDv?=
 =?us-ascii?Q?grq2GC+VnfSYV5lTcD0/+seuCndSpu5DGC+iAPiFazxJytR5FNDSMXryQb5m?=
 =?us-ascii?Q?RgCskW/41ZB1In4TOYxQbfoRZLRKuX9jRVsBzmIzGGarn2syCVVhvMhlhRDi?=
 =?us-ascii?Q?zV7yvXzCZPXkcF7JMyRR5BqISYPH1IYFIN0k6qFxh9L0YGN/mAcfus+3Ksij?=
 =?us-ascii?Q?J7LiiDLoIv5PX0YCwPkyHGuCVJQL+vmyN814iKDJ6YD6AZ0/OjJtUper+wpN?=
 =?us-ascii?Q?v/17UTuJMmjMn9WEki3QnOAuhd3ILhkryZxa3FKTBy/Xk0/76VBLgjFgt0pP?=
 =?us-ascii?Q?292sMh6JbNbBaR9j5NxgRfvwX3X/8y/VKObWSvbiQTBPNu4LSCEo2P1i+bWo?=
 =?us-ascii?Q?Kx4wQw7eX8fNlY/hM9+f29i0qqoOi9NXOFDLGJbOwWd55S3HEArf6IOtSddK?=
 =?us-ascii?Q?NZHZgQw6DYI/R3/IefYe2B43D9I+G5IFoXYUjBHh5n3+IidhW89RkU9eC3DH?=
 =?us-ascii?Q?yG9gotV5ajz6X62uTupsEOO5z/BCrPpJQaE4nIabahMekwxaEcFBmkvbYDzl?=
 =?us-ascii?Q?7+M8/37E9tP71ThMoQ0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UDIO3G9NwWxp+02z8DIxljt8sDiC/8AvjkoDVTClbBiLjamlyfuOkXHwRJah?=
 =?us-ascii?Q?/LKPun3lBIL3nNnOwEGe2OPSdE9ZITCewucgshd+Us9+G8EDAVzmU1dCYJWw?=
 =?us-ascii?Q?70sLEbLpSwltcV1Z0JbKSnPgueFUzcAljJfOTXWmulbpXn/ei2gut9UjgAOv?=
 =?us-ascii?Q?4vPr5g/+l98kSwDDnCVdzRBDExto+eISq1KDFz00hh2NTY4GOdQN+9j6ZOLa?=
 =?us-ascii?Q?wrIFrWFMqLa68hEibVjWZzZzr1tKuI7IDG5bVUM/9JT9uHRFYanXzWU9aLnS?=
 =?us-ascii?Q?pmEa8XLQbb5MTGF8QV6pbhXSgIoLoBTvizUeBhjAkL9nzAE5SrZg0HqbtW1Y?=
 =?us-ascii?Q?CnoUVQA/xAb1QX2KFvhLWoKBMMPz2wtwSrP3jdvHwd46PBb7rIiPy0nKjGNf?=
 =?us-ascii?Q?QHxqBmNA7/2I8m0F3lbgDej0Kj6FneYJhNrgDJamsVbU/GdLlouHUdvECp+y?=
 =?us-ascii?Q?YBIFNeWrBE+QJSuLfvdWT22ulaI0cL7XMqYKjkPlkOk9K9i4nBPTigkiAeIB?=
 =?us-ascii?Q?iuPkLGz5KXdjB9yTwB7T6OQusK7boG9yrC2bAIQisYAxoc0JP25PDcTghO5X?=
 =?us-ascii?Q?3oRBXRzTfH5tBd7/r0fDe3CXuNfDvVhuySgdSA0YPRVP46RmvQwHOw8wFfKy?=
 =?us-ascii?Q?XmYnSfeaQCMeD6Jd4JdJsQCSIANQg+PNJPibp23myG7d0RuKKCGOwQEb2/GW?=
 =?us-ascii?Q?GUC3B+PrC6snz4steY3f/tbg8yxOG/Vg0/Nc6G3LM12j1tQQB81TS/md+qHE?=
 =?us-ascii?Q?vpzXjTRPGHL2tRIfccWdG5teV8zdltiBiH8FncVEwNf6UOcLYiGjxTCVbi9I?=
 =?us-ascii?Q?EfRejSLZMDTTlTMBJr/UG9CjLlfuhlkI/CI/Pwl8tTgGda5puDJ4qK0L9WKR?=
 =?us-ascii?Q?FX9owGEINiTAd/62GBDRKS9uQYNjOjIS6Dcs48RLeEToEKhwoOiQiU54K1F9?=
 =?us-ascii?Q?W00YtkmT9uAgUKbUWUvjvEXAa2Hv6nF0RitKiItUFJZy3jBufrZ7wkpxtz+g?=
 =?us-ascii?Q?DRllrPXOT9ZeZnDMrniun7Z4aZJCIgXiXWdu9ecMnSW25VsT/5GjCibTfcDM?=
 =?us-ascii?Q?w0L8EBflvR8qPVylrvpYryIiB+a7uNjWQKQjF0csZ7mNSPWrDHZMlVa1mwMs?=
 =?us-ascii?Q?vGTl6IHYHzYVSdhp886sBGujLQvSb+NIo2Q0uCd8l/61ErsbnAJCB5AaxwwV?=
 =?us-ascii?Q?bHnHvw5tFyf4S1uPeRfVDTEUq4BzIlli3nOfGnq4CzVCb8zpXuz4mofCZtbX?=
 =?us-ascii?Q?In8CFuEuyw3nL17PGJ6/KqjaVCJDcld5yQ3MMcnC85Nkq1IYO+iLuSMlBwxc?=
 =?us-ascii?Q?S4aspAutBVkx+HxryP9TX2yTw/lXU5yrBY+Mz+ZvX1sVPh5NO1LnvkKhX78O?=
 =?us-ascii?Q?+PQxvT0wv/AU3mJNT5t4ZbgfT8WGFVWdMd92zshTi2X0JPCr3WkG2au2y3cW?=
 =?us-ascii?Q?jRhoqC0EVXdWTMnHt7j/2bhkRHDTnqFZjKS1UxkeIXxT0ZX2mFuSm/uo3Vsf?=
 =?us-ascii?Q?jJTXZ/PqQEx/8rw0JJMmsRcAyx2zk3Ldki+lZEoVdnj5O563S9i6pXRmSLDk?=
 =?us-ascii?Q?4QZjEbkw8GRwh/4DK5zs/aPuhN21lNEfxas+WTCl7HqIu2TE+bxVkHVaGUou?=
 =?us-ascii?Q?O0kc/I9IeVggV1iij1rQFZzqLid05zi9K5h0BHFPk07INKIGWRBT+FI8iaov?=
 =?us-ascii?Q?BieQ7oR4r6bv0G52y+kNfhOTxf5M2oSCi4Z+tNBEzZp74zUaxhjB8Xx/1TPm?=
 =?us-ascii?Q?YBh84Hsu/anoTAxzXQVosE/MdKYvIU0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 401029b0-9454-47b2-1852-08de5399a752
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 18:20:53.8100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /oyvH+G+o6PhN9map8Als0IiqjVeZk0+S+kdzcbAk2hRuA8P7VlmvR6lnyIRIwFIlexCkOARdm7Hq48oj/O4WdllIEFaQuZAuELuBYC2el8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5818
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768415294; x=1799951294;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DFcTJBXeLx2guII9rWw9FYCEv2Qb5chL3odySza1Re4=;
 b=G2Y7TerM9F1MXjs5YeULaPjQ91UEktKYmZLj2cPlSGeJcrwbsEAHIjX0
 DqNhNiJVzFHYsu4JcOAFuYsImnR9WkaPLrlQ8kQu58y+SpxKe3Mxc/pIy
 7y4F5aCEg4pM9zXjyC6vRZXd54AxIaLI5Q/YBd7XUENzH2Oy3NbTjRbdT
 GMTMH9eYvyZ43cU5ney0JzyopqchSLCj92xnjfiplhZdavpaZWw5EfupA
 hWEp4oCvxR14RAY20YAWsjqJdBiuqexxNK1t+0GtGdB4DUBmEX0inXGTW
 2ENaUQM3JwBK1CTVoJxOWQ3wC4dqubt+S7wGHY6kIuAFnTvoDuUSAtOPd
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G2Y7TerM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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

On Wed, Jan 14, 2026 at 08:19:37AM +0000, Behera, VIVEK wrote:

(...)

> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > index fa028928482f..9357564a2d58 100644
> > > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > @@ -443,6 +443,7 @@
> > >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
> > >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold
> > */
> > >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted */
> > > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written
> > back */
> > >
> > >  /* Extended Interrupt Cause Set */
> > >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > index 30ce5fbb5b77..6e51b5b6f131 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32
> > flags)
> > >  	struct igb_adapter *adapter = netdev_priv(dev);
> > >  	struct e1000_hw *hw = &adapter->hw;
> > >  	struct igb_ring *ring;
> > > +	struct igb_q_vector *q_vector;
> > > +	struct napi_struct *rx_napi;
> > > +	struct napi_struct *tx_napi;
> > > +	bool trigger_irq_tx = false;
> > > +	bool trigger_irq_rx = false;
> > > +	u32 eics_tx = 0;
> > > +	u32 eics_rx = 0;
> > >  	u32 eics = 0;
> > >
> > >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@ int
> > > igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > >
> > >  	if (!igb_xdp_is_enabled(adapter))
> > >  		return -EINVAL;
> > > -
> > > -	if (qid >= adapter->num_tx_queues)
> > > +	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
> > > +	if (qid >= adapter->num_rx_queues)
> > >  		return -EINVAL;
> > > -
> > > -	ring = adapter->tx_ring[qid];
> > > -
> > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > -		return -ENETDOWN;
> > > -
> > > -	if (!READ_ONCE(ring->xsk_pool))
> > > +	/* Check if flags are valid */
> > > +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> > >  		return -EINVAL;
> > > -
> > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > -		/* Cause software interrupt */
> > > +	if (flags & XDP_WAKEUP_RX) {
> > > +		/* IRQ trigger preparation for Rx */
> > > +		ring = adapter->rx_ring[qid];
> > > +		if (!READ_ONCE(ring->xsk_pool))
> > > +			return -ENXIO;
> > > +		q_vector = ring->q_vector;
> > > +		rx_napi = &q_vector->napi;
> > > +		/* Extend the BIT mask for eics */
> > > +		eics_rx = ring->q_vector->eims_value;
> > > +		trigger_irq_rx = true;
> > > +	}
> > > +	if (flags & XDP_WAKEUP_TX) {
> > > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > > +		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
> > > +		 * so a single IRQ trigger will wake both RX and TX processing
> > > +		 */
> > > +		} else {
> > > +			/* IRQ trigger preparation for Tx */
> > > +			ring = adapter->tx_ring[qid];
> > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > +				return -ENETDOWN;
> > > +
> > > +			if (!READ_ONCE(ring->xsk_pool))
> > > +				return -ENXIO;
> > > +			q_vector = ring->q_vector;
> > > +			tx_napi = &q_vector->napi;
> > > +			/* Extend the BIT mask for eics */
> > > +			eics_tx = ring->q_vector->eims_value;
> > > +			trigger_irq_tx = true;
> > > +		}
> > > +	}
> > > +	/* All error checks are finished. Check and update napi states for rx and tx */
> > > +	if (trigger_irq_rx) {
> > > +		if (!napi_if_scheduled_mark_missed(rx_napi))
> > > +			eics |= eics_rx;
> > > +	}
> > > +	if (trigger_irq_tx) {
> > > +		if (!napi_if_scheduled_mark_missed(tx_napi))
> > > +			eics |= eics_tx;
> > > +	}
> > > +	/* Now we trigger the required irqs for Rx and Tx */
> > > +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
> > >  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > -			eics |= ring->q_vector->eims_value;
> > >  			wr32(E1000_EICS, eics);
> > >  		} else {
> > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > +			if ((trigger_irq_rx) && (trigger_irq_tx))
> > > +				wr32(E1000_ICS,
> > > +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > > +			else if (trigger_irq_rx)
> > > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > +			else
> > > +				wr32(E1000_ICS, E1000_ICS_TXDW);
> > 
> > My understanding is something below would be sufficient. Bits set on E1000_ICS are
> > not handled in any way so we don't have to distinguish between rx/tx, it's just the
> > matter of irq trigger and napi schedule.
> > 
> Hi see my comments below
> > -----------------8<-----------------
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..0aba7afd6a03 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -524,12 +524,26 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct
> > xsk_buff_pool *xsk_pool)
> >  	return nb_pkts < budget;
> >  }
> > 
> > +static void igb_sw_irq(struct igb_q_vector *q_vector) {
> > +	u32 eics = 0;
> > +
> > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> > +		/* Cause software interrupt */
> > +		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > +			eics |= ring->q_vector->eims_value;
> > +			wr32(E1000_EICS, eics);
> > +		} else {
> > +			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> So here it is sufficient to rely on the E1000_ICS_RXDMT0 bit to trigger the correct irq (Tx and Rx)?
>  I remember I received a review comment from Intel point to E1000_ICS_TXDW as being the correct bit of triggering TX for non MSIX case. 
> I can't really evaluate this since I don't have a setup to test this. But okay 

I don't see in irq handlers that we do any specific handling for txdw vs
rxdmt0. It's rather a matter of getting an irq here.

> > +		}
> > +	}
> > +}
> > +
> >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> >  	struct igb_adapter *adapter = netdev_priv(dev);
> >  	struct e1000_hw *hw = &adapter->hw;
> >  	struct igb_ring *ring;
> > -	u32 eics = 0;
> > 
> >  	if (test_bit(__IGB_DOWN, &adapter->state))
> >  		return -ENETDOWN;
> > @@ -548,14 +562,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32
> > flags)
> >  	if (!READ_ONCE(ring->xsk_pool))
> >  		return -EINVAL;
> > 
> > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > -		/* Cause software interrupt */
> > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > -			eics |= ring->q_vector->eims_value;
> > -			wr32(E1000_EICS, eics);
> > -		} else {
> > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > -		}
> > +	if (flags & XDP_WAKEUP_TX)
> > +		igb_sw_irq(ring->q_vector);
> > +
> > +	if (flags & XDP_WAKEUP_RX) {
> > +		ring = adapter->rx_ring[qid];
> > +		/* for !IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> > +		 * been already marked with NAPIF_STATE_MISSED
> > +		 */
> I think you meant for the case IGB_FLAG_QUEUE_PAIRS. Since when the queue pairs are not active 
> the Tx AND Rx queues don't share the same qvector and consequently not the same NAPI

yes, correct

> > +		igb_sw_irq(ring->q_vector);
> Okay so you would be triggering soft irq's in two steps if both TX and RX flags are set. 
> Honestly, I have tried to avoid doing this in my patch.  Which is the reason why I wait to finish all the error checks,
> Napi updates before triggering the required irq vectors by writing to eics with a single write. 
> But okay the other approach also works 



>  
> >  	}
> > 
> >  	return 0;
> > 
> > ----------------->8-----------------
> > 
> > >  		}
> > >  	}
> > > -
> > >  	return 0;
> > >  }
> > > --
> > > 2.34.1
> > >
> I think the strategy of triggering interrupts in one step after performing all the necessary checks is what might make this approach look complex. 
> IMHO the one step strategy is better and more intuitive.
> Unfortunately, there isn't a reference here to go by since none of the xsk_wakeup hooks implemented in the kernel care about the flags 
> I can submit a v6 of the patch based the one step approach with further simplifications. v6 would also include review suggestions I received for v5. 
> Like this I can also submit the next version to the igc patch. It follows the same logic as the igb 
> I have our regression tests with RTC testbench and our Siemens Profinet RT tester running with these patches with I210 and I226
> 
> Alternatively, you could submit patches following the igb and igc following the two-step logic. 

How about we meet the half way and something below? that would include
your request of having a single write to E1000_ICS.


diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..432b4c7c1850 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -524,6 +524,17 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
 	return nb_pkts < budget;
 }
 
+static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector)
+{
+	u32 eics = 0;
+
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+		eics = adapter->flags & IGB_FLAG_HAS_MSIX ?
+			q_vector->eims_value : 1;
+
+	return eics;
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct igb_adapter *adapter = netdev_priv(dev);
@@ -548,14 +559,23 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
 
-	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
-		/* Cause software interrupt */
-		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
-			eics |= ring->q_vector->eims_value;
+	if (flags & XDP_WAKEUP_TX)
+		eics |= igb_sw_irq_prep(ring->q_vector);
+
+	if (flags & XDP_WAKEUP_RX) {
+		ring = adapter->rx_ring[qid];
+		/* for IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
+		 * been already marked with NAPIF_STATE_MISSED
+		 */
+		eics |= igb_sw_irq_prep(ring->q_vector);
+	}
+
+	/* Cause software interrupt */
+	if (eics) {
+		if (adapter->flags & IGB_FLAG_HAS_MSIX)
 			wr32(E1000_EICS, eics);
-		} else {
+		else
 			wr32(E1000_ICS, E1000_ICS_RXDMT0);
-		}
 	}
 
 	return 0;

> 
> Regards
> 
> Vivek    
