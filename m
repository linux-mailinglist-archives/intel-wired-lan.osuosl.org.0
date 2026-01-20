Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IH7lFxGtb2miEwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:28:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF44947819
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71F646FDA3;
	Tue, 20 Jan 2026 12:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3HvPqCO3DwHf; Tue, 20 Jan 2026 12:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 956176FDA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768913505;
	bh=J6ek5RdlwPzHDfVk+IoVODOhEYkcDaGXMRy/PkkYeWw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JZHavfHDkcj0BSRIxnvH8C536e+36VrHsRJiyVvo8/OJbbxNs67ktChfh2OhcdKGe
	 i5XLiyotA0gpQLStj/OSnY2v3jH6DysXhiFbUClXwmKccmDwAFv8pBNUaoYBfxAc33
	 7GVpPrmSQjt/iNNbdt/OZcjQvsYxlobQmjmY7zLknzCeaP9yE20jhbNWGCBqFHdFZj
	 mX7xXB02Udl0ecsCUCXfxorvDxa3jdKAu9Nmth8mj6gKsKhS3oTpF3buIylnX9Is07
	 dfpNeuacOkOAn2ap3wG3COo+caI4x5buxUNGdbvLwCfoueSuK0Z3VY0bGiFbJ+2nm2
	 utJt64Jsl5qOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 956176FDA6;
	Tue, 20 Jan 2026 12:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 33437160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 12:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F5B642BD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 12:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nw88hbr3eRgk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 12:51:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4ACD42D3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4ACD42D3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4ACD42D3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 12:51:42 +0000 (UTC)
X-CSE-ConnectionGUID: lTJjJOwdTpezGp6MDUiMqQ==
X-CSE-MsgGUID: gSV5IYdtQOyfeExiVkfUrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69132418"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="69132418"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 04:51:41 -0800
X-CSE-ConnectionGUID: 9ykzoNCDSvyA8gfDLoVETA==
X-CSE-MsgGUID: oIk9THgGSHqHa3jgIAGzrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210261701"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 04:51:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 04:51:41 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 04:51:41 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 04:51:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NllYZws/JOyqd9vbBsq+/DQ3ZQ0MDxqCNIrgkyPuqHFN6NuEnCLxNuW4vc4YXCD/VIfSHKus+bUfu68CachcNOOoJfzwuPp1ZuLz4JKJAEm5U33HiOTD5hhQTucz73/F4mnrrwIKgqIfuOlNcTpDg0eieE9fau6Hh0iieGJEVRoSFI2ljlrVlepwkSYyqYv5mzayAsMU43iYNwiyayTbVfyxA5Mmb2dfBWF/g8uuiwhDcf4fIY4UeQjhnlBTNMn3XGLEooydoaf40hNxfmcqhyRiE7QtUZB72fqsNn0rBg7Kvr4Jr/H1dPXDDKQRAjMKYzNKgHWCh5ESSImMHA8Eqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J6ek5RdlwPzHDfVk+IoVODOhEYkcDaGXMRy/PkkYeWw=;
 b=fH6D3HpyvEq751CJ57fXpaPHGCyHAUenx0IfUnySHgERCVPyUDx4Dnih4AgJMDio6vRqr0SkcZ7MGIt7kjZXPQY24H70S/35dwPOyFQNoa9h7Qy1ZGua/Pl78o1E9Pw7FnIFw9+NOMA6tLYLfaDYlMLEQfMOvScrngRqsMuOGml6QMMLwJJgjBk6G7tVIx3kVVkR1Qd1nvEPZPMQNuQ3+1HreDRqOdBeZFDjppS52lvnRkIWVjAxjJmsKk+jVQE7QEIJOyqENQcvxmtffOo6UlOeSQTzeLEmRGSG53dkfzS5zxOBy/zkdFDo+gz/bYTCXm0Lm9ZQnrdKsRMgvkwobw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.9; Tue, 20 Jan 2026 12:51:37 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%6]) with mapi id 15.20.9542.008; Tue, 20 Jan 2026
 12:51:37 +0000
Date: Tue, 20 Jan 2026 13:51:31 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vivek Behera <vivek.behera@siemens.com>
CC: <aleksandr.loktionov@intel.com>, <jacob.e.keller@intel.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <sriram.yagnaraman@ericsson.com>, <kurt@linutronix.de>,
 <intel-wired-lan@lists.osuosl.org>, <magnus.karlsson@intel.com>
Message-ID: <aW96U5l2ffl4JCpB@boxer>
References: <20260120075053.2260190-1-vivek.behera@siemens.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260120075053.2260190-1-vivek.behera@siemens.com>
X-ClientProxiedBy: DUZPR01CA0113.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS7PR11MB7691:EE_
X-MS-Office365-Filtering-Correlation-Id: cf450257-4885-4297-24cb-08de5822a5fc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nff4oVU2k+3SuMZ1hGQyNxpv3xQqwCS79cfZvFxxHrvhw4yVJMOsMG06rTdE?=
 =?us-ascii?Q?PKkhIglIczarzGej+3VlfRpLiqzerG4/lk0SO8rqUeL5OlDxsR+SZRWOy2e8?=
 =?us-ascii?Q?j7eboGxaFwwS0VrqYxjrSqfJhhDoSralCCU2b4+flWkt9AQhg2A+DYSUahKl?=
 =?us-ascii?Q?k276aoob0Y3W/Ll9aCN2RRb2FcIWextR2IaLPQBxurxZ5321gSFhHPkQ0Sxf?=
 =?us-ascii?Q?oVkAWwJ/+VPFDu+i+VvouAosvQcumWnKNMwHfNyxeMmeKSYed4GKzOK666Un?=
 =?us-ascii?Q?8YQtGLwf5itpFCj1VomN/VERKg+YLAmYG4td3cxeA0K5VKJdKLo8miJ0q6IY?=
 =?us-ascii?Q?tW0mJboxUaD2P4Hb+IJxd+vH2rbNxAACd5GK5iVfoox1x/ndHCRg/S5c7jYU?=
 =?us-ascii?Q?W65fZdXTE3G8SiujCDkF8A/BvoEqTuxiJLq/GWtYCA4a6OxrzZAVbXJHhFrg?=
 =?us-ascii?Q?f5ycGqUzyufi5sdkjBZe/wdil6Bv3wTx99gRkcXXWUofNVURgHVWFFqLJdbV?=
 =?us-ascii?Q?I9pk/X/GOr1hg0DndgPA5qAduRKLIl9KxdpNr1pDP7ZTEsBk6wrTHmGmeqIi?=
 =?us-ascii?Q?uceTSFqoclVKcZ/vj5G9QuNnk1ohgR5okoVpr+vu675YUdjNUj+R4RcKb7g8?=
 =?us-ascii?Q?MnAD8XORhje9fyCOR8938HP/2TX+Ejx6rN1LllIbNCjQAvkUp7lLAFI7p8rs?=
 =?us-ascii?Q?PlXHQFE+2nMPbJuAbnDIwSJUH5KoPZUWAiwlIBZDYsb3poteJMxRyIiWqGxh?=
 =?us-ascii?Q?6vEryRWq0rEHxMbWSnrWe/1sII3LKnhZziQCZ1zmMA5reoUlzJQvS1/XffHM?=
 =?us-ascii?Q?5pfNIYsoxjhoI63KWx3Do7abz+w7sqsWrv3AjpXFaP9xnSwRS0INs9wOOaIb?=
 =?us-ascii?Q?xC9NblryyPEPmBw69aINjNsjhmRPqsWaWPnvL+XBZIo6QSk3YtVKdxOgfu6a?=
 =?us-ascii?Q?ZX5P/WWEkjIsxDbCaJo3g+z2fZFekKfOlIdreJV9Caorm43obvnZvs78jG0Q?=
 =?us-ascii?Q?bWSSuDx/6IQwsExLsWG5XzEm9RVLVKpy1x853Pz2VePqyUbmfYkm6/dSrxYq?=
 =?us-ascii?Q?9hkBAPW+PShhbsjq0ipKxFsoP/Mg/bAjwdX/VoCNGEy+GgLiM8B4BZ6z2uBD?=
 =?us-ascii?Q?Vw77y/vwSZUpRUdDAVWKEEsegsRNHsdnLg3jGDH4a4de9kz80mzfL0WIwjrE?=
 =?us-ascii?Q?JUSVEnDwqtZiCKkR1ug5N/bd3D4iQNGFD5wTfuAwiDSJXFjj6rvsaib1Fb+L?=
 =?us-ascii?Q?o2iTBA8u0KmDFoQh/5CaoPWECv3UW9Hgg0FOMvgEbOvKkpQejxPuOFFApUhg?=
 =?us-ascii?Q?qrv4+fuWk1HBcZXUcO3ebxLt/l+TjYBzQnRTIqRYfItSoMzqsY3cION484Vm?=
 =?us-ascii?Q?KNEBilqanukjK1ynZ5fkqbvApypm6nRgNmFKjgQIBt4dngrlP1xitghkE6tR?=
 =?us-ascii?Q?5h2MdpjVT2STSWjbvy0NsRpHiY7vHcplpuZWbuIdDbgUxvdWLKF7t7WMvyNA?=
 =?us-ascii?Q?FSb8qbC2Tzgh0UMZKLXRwAWfLAMbecDGCAazumkhLmTylRQ61BtDT8nlFHlo?=
 =?us-ascii?Q?/MS81sNdNR+w0qDzeS5Lpq4+9kcmfCEDaDy6jVjg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V/U2LaD0Lhaumd3Hdg2KUWsv0s0N1KeVhgNGBaiwTwcn3cI/ETbVyFTQClun?=
 =?us-ascii?Q?ffOeVUkAogpnXuNn/LpQsBeITaeGMaBD+ec9FH7g6Qcxz0K1t3p/z8XKgir1?=
 =?us-ascii?Q?nfBN4Z5/mPQqg2uZfCGAdofA97y1ExL7W8X6M5fpHw3pymZAfHHNyQWOoo0V?=
 =?us-ascii?Q?HsdPw6SiXhR1lUjGuIJS3mSAZk6DS1ovrO2zAoG0KdZPjHxYQShRh4kOkZca?=
 =?us-ascii?Q?3qdfFHKnhJHvjRsP8scUy32PKN0UnWH1SBsdaUfxfVl3jsNCqFatCHr48rxg?=
 =?us-ascii?Q?4ZrDSyqCWqVxVKKeZHeK4JWjmyq5dM6aTzBtu+xdiC+QJn3Umud9bvpKF3yL?=
 =?us-ascii?Q?tIDG9tp3ie5hTzTRb2ol+oFDZuM7i5XfNBLPNIhYF8W2tl2QS6R7ELGYy/6T?=
 =?us-ascii?Q?9etM2CCL02ffwD+SLmWI6jkk+mxOC5kjwf9jlJfNz4m03wn7wBUlVjNryBO/?=
 =?us-ascii?Q?uL7H+53zBLoSIvgebOBRQ4Bn4AsU6Oww8bGEc2Tn+JCsXB8M+6qfZGP+upcS?=
 =?us-ascii?Q?agiW74vs0tN76Lcz2asiFOsZzJQ1sqZAem6F0qJIxL6KSp8zuUi8CkdC4Y/d?=
 =?us-ascii?Q?SNuAwZwsU1pJnn0CBI6UQZe7mIW7Pt1+jad8S3q5vnws1OAT5lKZVvMS207f?=
 =?us-ascii?Q?DKTGOr2cfbPc59ony7iWJqYJXqkeR+8BkCCUiTxK8jtqi7BWoYkqJWEbKxnc?=
 =?us-ascii?Q?JfuvQVx9GbDbbKzH0KIQAU0h66JEdnQmog9TBZWjzkI/M6NBD6z5mwBnFBEO?=
 =?us-ascii?Q?q4GhjTySPBO9C8ULJAhRJJwNG0077ZAaqdpgZXbfd6KKZMas0+Uo4yh8xfJf?=
 =?us-ascii?Q?Fm2O0xrh4tw0SOgzqNyvuV5Hd9nbTK4/wZpQAa6tfMA/D0syMsrPYEqvUKGA?=
 =?us-ascii?Q?v5Vs5tefe66gg4NebCEnJfo0+XE1F1JjIfRYeHIJQUKVdwVspMv/oMWspamE?=
 =?us-ascii?Q?0oY8VrvLoP8xoPXEeM2ukFBddNDGxzMmyaN67nJqtYOzCjDlzyc80bCHdYIa?=
 =?us-ascii?Q?sXrP7j5F3fkRwjduOpzfZ6sIsDDr4G8e56CEQyypS/rLxbWGmb5uoefwDMrB?=
 =?us-ascii?Q?H08H8m8S7o/AHanTJ9G3WiogqH910iMMCvtt+JWyAUbScbCTRYR2jBh/bydM?=
 =?us-ascii?Q?DfLwRQce5EakGcT9ahHvENeZ1OxbFnjspIS9zQ17pzMJls04ivSlaI/OwY9a?=
 =?us-ascii?Q?5JPfdzHT9PeacQW3ym8UDVusd+02amV0K6WECpuSP67kcZwkYD7rNy8Axanx?=
 =?us-ascii?Q?8SIKcuhk657iTk6Xoc+oPeEiQdW1rPD5dUBHCeuoi1eEkOQlPg5uBAqp9H4k?=
 =?us-ascii?Q?7CJgatFPYCsPuFefineL+ug+2WQw3fN+Ivz1aF0vfdOQNKNiulegqw00Rdfk?=
 =?us-ascii?Q?Yi9c6iXcf4+JjlV2a0GkeW/Uh6SYDcEJkr7EjSf8M2ZY/SMXgF+mPCby+dsw?=
 =?us-ascii?Q?AFxtFnGWiMPbpPVPmao/SneB6OqXd52wNKJGK5J4w6GXhWm7zYWI3d5Iahki?=
 =?us-ascii?Q?4F3HeRZv3cb8fuvLtoGfhOt2e727M8CfvwlpUaJRsOBSZoi43Qv5h4SZcKYD?=
 =?us-ascii?Q?g18ZumYiX8PMr3VsWxZvdgH17ntwocQm/Ed5M41q307p5RqxDw4V12T3f1Jv?=
 =?us-ascii?Q?GKKWslgqSbfF6eq6Pkf+TFK2IntTMcbRce5stpRhBalInhkvb3m3PJuFLr2L?=
 =?us-ascii?Q?x6DKyZLKi5FIjdOX0z0DdC/xTYN5F6Lr53z5r2IhTTpTcuG7KzgS1WvmTHgL?=
 =?us-ascii?Q?tPSB6bQO7k/UPOwLDzXQlrwt3HXU2Os=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf450257-4885-4297-24cb-08de5822a5fc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 12:51:37.1538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VD9cmUJ9y9o835TerB79m9lMKxXvDz7QgIuMEGqwL7Vmq5R+RUoNL/mNFWOEWRYk6+ufkmjnrnL4XPYWajhCVnsnMDdvGNH9JGXdwQQtsS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768913503; x=1800449503;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8K47Wr0bzamRgwkjH2g6MsuIaA0fvKqpUdam8ogpyj4=;
 b=FB3+3GXjQAJlSq56kZ3z3KYoFU5omxL2+gDJyG0lnegapVxVW3Tfk3sZ
 PEACo1Mk9NsMpBCWL69W1BnEtxd+0W/M0zcelr/Yb52mtPrWZvFi5AzKn
 Z0k8fd8Sey+YaKiKwe9aIGCS7GISwncAfXHPXxKUliUtVXMsBBtRzskbv
 9/unZOSns7FpQvqUo59GFAvVeh6Y3tQTdVgKODv5nWmQeIMPaPE0F8GXm
 pslvuCLBpKGOoWO8blXPioCi0Dqf+gTwgC7TJ6pIQxuFWJNHYbZRpqD+O
 fqDWcDFv7Ww/G+FFhcNpOw3uqL3vQM06KS74Vi/TrrVOfy6B4C7yByIio
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FB3+3GXj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7] igb: Fix trigger of
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
X-Spamd-Result: default: False [0.89 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vivek.behera@siemens.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:sriram.yagnaraman@ericsson.com,m:kurt@linutronix.de,m:magnus.karlsson@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: AF44947819
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 08:50:53AM +0100, Vivek Behera wrote:
> The current implementation in the igb_xsk_wakeup expects
> the Rx and Tx queues to share the same irq. This would lead
> to triggering of incorrect irq in split irq configuration.
> This patch addresses this issue which could impact environments
> with 2 active cpu cores
> or when the number of queues is reduced to 2 or less
> 
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  4-edge      eno2-tx-1
> 
> Furthermore it uses the flags input argument to trigger either rx, tx or
> both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation
> 
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Hi Vivek,

I gave you my acked-by on v6. I don't feel obliged to call out such things
but since we have completely changed approach of fixing things here,
Aleksandr do you want to keep your review tag? If so then please go
through the code again.

Thanks!

> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
> v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/
> v5: https://lore.kernel.org/intel-wired-lan/20260112130349.1737901-1-vivek.behera@siemens.com/
> v6: https://lore.kernel.org/intel-wired-lan/20260117145112.2088217-1-vivek.behera@siemens.com/
> 
> changelog:
> v1
> - Initial description of the Bug and fixes made in the patch
> 
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> 
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
> 
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queue pairs
> - Fixed check of xsk pools in if statement
> 
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
> 
> v5 -> v6
> - Further simplifications suggested by Maciej
> - Included review suggestions from reviewers
> 
> v6 -> v7
> - Removed redundant braces
> - Updated comment block to improve explanation of implemented logic
> ---
>  drivers/net/ethernet/intel/igb/igb_xsk.c | 38 +++++++++++++++++++-----
>  1 file changed, 30 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..ce4a7b58cad2 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -524,6 +524,16 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
>  	return nb_pkts < budget;
>  }
>  
> +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector)
> +{
> +	u32 eics = 0;
> +
> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> +		eics = q_vector->eims_value;
> +
> +	return eics;
> +}
> +
>  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  {
>  	struct igb_adapter *adapter = netdev_priv(dev);
> @@ -542,20 +552,32 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  
>  	ring = adapter->tx_ring[qid];
>  
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> -
>  	if (!READ_ONCE(ring->xsk_pool))
>  		return -EINVAL;
>  
> -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> +	if (flags & XDP_WAKEUP_TX) {
> +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +			return -ENETDOWN;
> +
> +		eics |= igb_sw_irq_prep(ring->q_vector);
> +	}
> +
> +	if (flags & XDP_WAKEUP_RX) {
> +		/* If IGB_FLAG_QUEUE_PAIRS is active, the q_vector
> +		 * and NAPI is shared between RX and TX.
> +		 * If NAPI is already running it would be marked as missed
> +		 * from the TX path, making this RX call a NOP
> +		 */
> +		ring = adapter->rx_ring[qid];
> +		eics |= igb_sw_irq_prep(ring->q_vector);
> +	}
> +
> +	if (eics) {
>  		/* Cause software interrupt */
> -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -			eics |= ring->q_vector->eims_value;
> +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
>  			wr32(E1000_EICS, eics);
> -		} else {
> +		else
>  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> -		}
>  	}
>  
>  	return 0;
> -- 
> 2.34.1
> 
