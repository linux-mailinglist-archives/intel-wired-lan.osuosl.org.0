Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E36939C1D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 09:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEAAE80ECC;
	Tue, 23 Jul 2024 07:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OLB1wfzPGuxN; Tue, 23 Jul 2024 07:59:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD97680EA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721581;
	bh=LWpjOIw18FpvTU3jb3lBr0GPW5z/Wrcw6fUY+BpAMM8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j+KpEUcAM8TPpG1/+OJGebyGIlXlcmRMnIRIYbxlhXShd4+3ZpKbTiA0O4SohW+8R
	 f3BervW2AQzObr96uO72NfaLDJ7C5glqwwxNnrwupBVKob1pECh8ItM06Znn10qU/u
	 4GyvNswjFxtaIhXGuZdpzSUYvgW5fmE2xfLu8s2jZzDVH3usswZmBMCAaBZkpQhzhQ
	 vseFiKWzUUAgkoOaOJeGgy0qd3HpqWngE/LVvEWHNVB2QGd11cQPeCKgTyDA1euWXM
	 xnIdGGMQ90d8Qik18yj2SuacabWdv5VC1qOzXqXca8HZAeChiraoumSIoYHqwBTKwL
	 OcqaXoGdKAnIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD97680EA8;
	Tue, 23 Jul 2024 07:59:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A32931BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B7C4401DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yLWeRnxa_AKd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 07:59:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5B1B540169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B1B540169
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B1B540169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:59:34 +0000 (UTC)
X-CSE-ConnectionGUID: Iyy4aO/7SwaIDfUMTK1IvA==
X-CSE-MsgGUID: UgLozI9iSgKAi/mYsiP7aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="22229265"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="22229265"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 00:59:33 -0700
X-CSE-ConnectionGUID: qNjUELsKRoO4nbS/u0pcUw==
X-CSE-MsgGUID: Ga6/3pTvSOmcohyvKVWjWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="57270874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 00:59:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:59:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 00:59:31 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 00:59:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zS4B5flGZZ2GO1vdl8V3mVwiRwfo2oz3JqM+UY8lrr4oIwRRjl5s3p5IoVhl1Tug8W0QGo5RhKeXicsCqYApUNQVcB2/TSoAzNQbu+ndvu6hz+9+hJLZzATWzI+bDVjTVnesWsFQpjN6cgfEPXwgkWMV4kOuVlMJ4YiMPk88zFHPYf34YRsZfUw/1n9vhI40utsna8C3ah0uERqVjYjmphrx37BnoT/W8KmDZcXPCeJ/7PToFaC/hpYfYtS7gWOKR5KUb1baQO7sPvTMqqS9eF9qzotQ6aUKz6Y3LDK5XHuVNO134Jb8Es1cXIvLqKi9xQkUyOzSztgLBRYD87Km4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWpjOIw18FpvTU3jb3lBr0GPW5z/Wrcw6fUY+BpAMM8=;
 b=KzwWhAtfVfjs8lYTFTm7Fpchr+18G1Ms/7Gd1l+O9bwxI0D69Wx6/qfvL2MkiN5tylXUh2JZZk5kovUXjYBFXicoZWr6hkcY6cSwjEVAy48b0Q22ESJUozx85d8tvWn/1W4X7Azp/m/7NvQ0WDhZHlMWYDFL11vteQzlGDnELmG+9fsRAvc57oVbCTeJ0jfDmJuYYibhG1TTMQwKQbLBI53T2mK/Z1pWDd59SAh2Q3ptWE/iKQcEasIBFIdh0IYGr+Oe/17E82R0HThTp5GQeiC1NEWPuAwq9+tgNlXKRaKC4WvPBPNEWc5DA2PuWZedYFYNXXwVFLlIMjTrh0oVmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 07:59:26 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 07:59:26 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 06/13] ice: support turning
 on/off the parser's double vlan mode
Thread-Index: AQHasGgGAP6xa7aQUEeOaFPFD4UxCLIES5JQ
Date: Tue, 23 Jul 2024 07:59:26 +0000
Message-ID: <SJ0PR11MB5865EB931EB133A5C2987ECE8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-7-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-7-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 636c59aa-7a4c-4c4f-f572-08dcaaed5f4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZGcfpyzBqmUq79t0WSThMK/06b9Oh/1Dgo429JvuxavbeYhKBV6F5D3iXQbT?=
 =?us-ascii?Q?ZoDA82+DkRd/e83LuslzrICX+NQirsJ9YkD4NXapmhrUERPTfuZXDay7buwe?=
 =?us-ascii?Q?8R1NKwbqvAeC3yE6odHE8m64FW3bFY1lX1Fl8NrEaDVDTxbaSzTBUE9HrHhP?=
 =?us-ascii?Q?5nHWN2nnLc2Ci1iyg7i2ZRlekaf+2LQ16cLgcun5Hq6zf+nSKOQZhptQF8WA?=
 =?us-ascii?Q?dfjpV1FAZHGr/f9rCooh6Fb6ICYxGQYv5n7U5hVCx2U5X0+31Vh4POzZLNdd?=
 =?us-ascii?Q?f34omDlAEB8849tILqkeYGoaax7C8Nb+cWp4pkGzTXOftvW1pBsDIxziksFR?=
 =?us-ascii?Q?TVPtdm5tK+BYZf6+FwuU6TJ9HdLRNnIRXi1hnND5gflBqPN0HmiY6zNpuTl6?=
 =?us-ascii?Q?fSbTJXIZQ/XBcqKV3YAbo5R+rXo1zY+Wg9bPYfxChWA2Shs8Ia+sNySqxob2?=
 =?us-ascii?Q?GhDGoXE6XwMSCqM0vsxLDxNkUYR3vAgjDdyLTFPG2l1f1DPmYy2/X1XWyWl7?=
 =?us-ascii?Q?4eyw2XicQzDD+LlN/KRuPknldbcQmNuTElfCfASWeDa4BU3ipSIX8yDYLdr4?=
 =?us-ascii?Q?8lQK59SPkQRoMiDftdi++oib5Ffoljqv2yH2h+bJ1qYNvvLwYIt+tukqm7Fw?=
 =?us-ascii?Q?azMHUg0mLmhPTM/Sniu3A3M8GyChNLLFrnRkqFddLhb6/DIo+nzsww8ggpeR?=
 =?us-ascii?Q?YzjiNTlwJ09Mno77vsxAZWMxFTP3b9wpkZJZv7OTZDnJm2qIl6DEczUpCFnF?=
 =?us-ascii?Q?x+t1T4HmRoYmhM5M/DxW82LI1bae+oihzUoODraxG373+gqy1VKWvMxkBjPu?=
 =?us-ascii?Q?ofP7MqkPbcrmvXNEW2dcZBoVJkyfvQmAIYKWanH9Rosw8BNt5uzWeHRRvttY?=
 =?us-ascii?Q?Mc35SjuyhJP90tflH4MaJKoJyHH7Q1wWyE8B8TzaXTF2mF0FVvLmtvs4lRaa?=
 =?us-ascii?Q?zNvyokHS5sgQ7mfiSTGJhE5rpFfoXcARGy/BKMg2y8b/KQ/OcyIpGuzAdqbR?=
 =?us-ascii?Q?llk8SHxiMfM2qbpplSi/uZDai/eeTKxNqXU80T++Df17F7h3rT+8N/7iHLBi?=
 =?us-ascii?Q?MVCVMuRJXizy/j66DKNtYLjXSKT8+n7YTBEY0NredEv8kOi6k/OC4OJRzlqR?=
 =?us-ascii?Q?OsiIICLvc1yBbbS3WJNHfm5hdDWfCMcM3YbexDpkYzEwpaNjfpFMY50VvaZJ?=
 =?us-ascii?Q?bH1iEae/6P6NCkFqYhAdpTC3dAwi3F1TP4I7neDHM5+1/Sro1HMXeJk/Yr8g?=
 =?us-ascii?Q?TWrmGVk+Zcvgd507FgRyEwvFavEIXAwJRFrgOPSScdPn1ArnKhppz5knddE4?=
 =?us-ascii?Q?AKfOjxtV1QzIfChUuIT/OVZOSxp9oOB/DfPBu37lYf6sscTWAH9UH80WoiJy?=
 =?us-ascii?Q?COVOcBvr310bf/KCOlMaKDBXqKxq1bVDthG0EWG9qSpzi1Njvg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?49N4/wuXX30i+Z1nTeg+KE59hnmgHYtgt54+yFbwtcZBQjfPIDzQKheukm6v?=
 =?us-ascii?Q?4wKMdQVrASvu3twdDh2ESgwRoIo/bnizFcfYNtUjEgQwQNFKi+NpIgcRtx57?=
 =?us-ascii?Q?SBXzE6A6tbzIRFcw/qixgK8yxFluwAkboL1x8gbC0ZVGZR1Jv/8qE4l0eN14?=
 =?us-ascii?Q?80XH9akXs0iND4FiqtCeZuLcIIsSiosLSNxoaODaLYJGYQVmwXTu3P5AKS8r?=
 =?us-ascii?Q?WxMuY1TfDZSrujejKSXiKuJ858bXCRHXjLtp7dqsD4EAeG5vT/u+CoETZwlB?=
 =?us-ascii?Q?v8SQwCBNHcIEYhDqRnVAR0M1jZ57spnk4prWzMC8vj2j4p5U26MF50Pq8fKc?=
 =?us-ascii?Q?XqNB5QwhXndxxsU3QtXgcuGpoOUamcQ4P9axU9AGFRE0mO3lsDED6PhoNWC4?=
 =?us-ascii?Q?5g5yUAr5XWlYYJ8Zu9RZTfQvxJYsUJSAmyS/OiTNhD1G2IpNl77i6QncNeBz?=
 =?us-ascii?Q?NpccwyReJdWbVl2SnNo20SqONyUp/eybq7jrnlQl1gtSdO30D1MvvU9B0jpy?=
 =?us-ascii?Q?cngQfXdhvEJSJOrLqR/RHyUniagVfG+38Hm2euK71iZF7qm0d8fmHNvwn/la?=
 =?us-ascii?Q?5m6LGpZ6KhBuptW+/99zTEtn9SHXdWRflSuo301gPpK4WYi5AZLQt/+AJTST?=
 =?us-ascii?Q?9gUldNXm0PrekI03IK6T8gmeor6z80A9i0VXs3jY2VDBhQIoW9la6rW6zErK?=
 =?us-ascii?Q?hrxGJqE1eQN1xu3MID9El1CwbCACOkdkDjW4gn1tBf6yg7dcCOU8H0cyh4v4?=
 =?us-ascii?Q?/HNvXG6GHHdrznGCY3jeMMgaDzUTjG61PcxX3RtoKhLfLDBzrcsWVbR3TcJS?=
 =?us-ascii?Q?A/+O8vBNGp+8wTlSNIgnsuPAH5Uf/dk2IO+v9sAXv7PpOGedylfUs4+r2UuC?=
 =?us-ascii?Q?Y7+b3h7ymHnRkWiGBEnL5EYTNy0fLOTpBxt0YWpIPVvxNJm3BEAj+8gZ2dNM?=
 =?us-ascii?Q?ln7tJ9fHVtaxH8qKkJNfatWnwfQWvn9NfnJS3mVUHzLRaWXLx6aEG+Rrn/qy?=
 =?us-ascii?Q?pge4FmwcdJADE88jdm2Hv7Vok5ow0H5aHIwr2z1QP5qO0VUQVUWRJn2vwEWk?=
 =?us-ascii?Q?BWxOp9qamG4GV74LbjmuCOLyhTwZhNONC2uQT2X5G0A4LUhlBSjIOpBrkeQj?=
 =?us-ascii?Q?i4VlbEg90bymeLPsRMWkvr1ZS4T2d29LIyR/ZwUllarsf4MMfJAsdBGYNqO5?=
 =?us-ascii?Q?jnfh5U51piy0IPyo++IxtmP46gAGppxuzEKYJ88vVGQpQgrmZ6y31cOtwih3?=
 =?us-ascii?Q?Mo8UC2g5jKItkSBk7KBnLCRbIaeJH+CT0UYPZIjxZ7aoOeQVyc9209H38rCf?=
 =?us-ascii?Q?w0zUm1PyM9lBUH0P5e4WDI3e3F+RyaO83aUPcsmeCeJMcyVLJe62yBBdTYy6?=
 =?us-ascii?Q?v8ZDwVsuTrKR1H6JScJ88syKuHaPWSipcIup6NBiJepFUQ8qg2ES4zt+zD8y?=
 =?us-ascii?Q?q8uDex9kRm0m/aTsmRiA9gmI7VEm0s9FMlNsMMYCwAUk6+M5VaPedvo01449?=
 =?us-ascii?Q?DejH3FJMTNvv0xJhnlb59cGt0LnMTDN+bbA0wRuVCRZnVePQ/U1taEw8bmHi?=
 =?us-ascii?Q?CI2XXfwCQ5Unhl4qV5DvnirGe4yWMQiGdxCihN+Bl7tbccD0SC8ByetRyGRy?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 636c59aa-7a4c-4c4f-f572-08dcaaed5f4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 07:59:26.2233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4l9N9suUwWjvrkJkiWtsSu9DGiQiaxAea3U5fsB1svpgWiB+pqialZjWO16zFRakaEd7Ey3h518P4N/t9uO2M2iHU6+sVXq2Bji+bqEqNu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721578; x=1753257578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AI+attZt41IuAaX5Qh5Pd9Cvim+hhOBA8GhHmT4fcqw=;
 b=PJrIENWqNd0zVC9Cw82vxC1V4VjqE6bNHEZn7qexfND/U2tqdGTY1iTM
 98G9XNL87oLJCIAdfXhqg57yIgNqPdlWMB2uZVyQKQmc3Th7OlsJAMLXC
 I/m2KMvxbWS6ZiHnxnsLYlXEMRJM/ID4A3WLvmK+e2MkqY60O3NvtQZnA
 v+LkBXfy6VuyIX4LOb80x+vx22DjrcZWxrjEjhRr+l3B/stQVcUgSVMD7
 KgtXexpUOzO3tJ5WC20DmjKoTdR1MajmrStO8zmcFrfXVUSHr7QDLtUvd
 9XTbGzsWhWd6/Wr57rr3RPfn0NXE8iYQWMZLo77faA+8igmjKqESYDwLg
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PJrIENWq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 06/13] ice: support
 turning on/off the parser's double vlan mode
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Monday, May 27, 2024 8:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 Guo,
> Junfeng <junfeng.guo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/13] ice: support turning=
 on/off
> the parser's double vlan mode
>=20
> From: Junfeng Guo <junfeng.guo@intel.com>
>=20
> Add API ice_parser_dvm_set() to support turning on/off the parser's doubl=
e vlan
> mode.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_parser.c | 77 ++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_parser.h | 18 +++++
>  2 files changed, 92 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> index eacf332df0a7..c490bff94355 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -601,6 +601,31 @@ static struct ice_metainit_item
> *ice_metainit_table_get(struct ice_hw *hw)
>  					ice_metainit_parse_item, false);
>  }
>=20
> +/**
> + * ice_bst_tcam_search - find a TCAM item with specific type
> + * @tcam_table: the TCAM table
> + * @lbl_table: the lbl table to search
> + * @type: the type we need to match against
> + * @start: start searching from this index
> + *
> + */
> +struct ice_bst_tcam_item *
> +ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
> +		    struct ice_lbl_item *lbl_table,
> +		    enum ice_lbl_type type, u16 *start) {
> +	u16 i =3D *start;
> +
> +	for (; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
> +		if (lbl_table[i].type =3D=3D type) {
> +			*start =3D i;
> +			return &tcam_table[lbl_table[i].idx];
> +		}
> +	}
> +
> +	return NULL;
> +}
> +
>  /*** ICE_SID_RXPARSER_CAM, ICE_SID_RXPARSER_PG_SPILL,
>   *    ICE_SID_RXPARSER_NOMATCH_CAM and
> ICE_SID_RXPARSER_NOMATCH_CAM
>   *    sections ***/
> @@ -1147,6 +1172,7 @@ static void ice_lbl_dump(struct ice_hw *hw, struct


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


