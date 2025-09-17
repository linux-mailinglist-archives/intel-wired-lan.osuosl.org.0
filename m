Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F1FB7D1DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:19:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EFEE8418F;
	Wed, 17 Sep 2025 11:25:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E30YXhrBGk8Q; Wed, 17 Sep 2025 11:25:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9377484189
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758108351;
	bh=6VGAMXHgRFNwInXsTyM6mOG4pZ8+P/FNod9RgqO4j/A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ERv1COQuXlkmuDXHdtoQIoanaUtybP5cS46saEAdvq02CaejEFQ7sP5a4OMLvR+c/
	 n+IS4LN6NkhotHzg72WatGPsb60UYBHsYX9i1Q11a8zscndkpCeIW02K+DhTSmI/b+
	 +LONEhARNBnSfwG5pRVBHrBbt5XwJj+W+zLSeOnmRRDc6HqVMdzHjkdHDjn0KZKyMC
	 NVunQllibO/S6yTjArqdbxmxD202NDBO6yW3AyJFRVfmSNZ0IugNbzykImqSG9AToN
	 guCse0bPLlIJ3vD87G3qEMTWQqbEiMHujc6sA61IYP3l1JNu/G7eqVSQVlw2lqmjga
	 sOnT2eHioxvvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9377484189;
	Wed, 17 Sep 2025 11:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD8BCAF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA8EF83C35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UlQgF_hTioQu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 11:25:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 50B7381E39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50B7381E39
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50B7381E39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:25:47 +0000 (UTC)
X-CSE-ConnectionGUID: ZjO85M0ZRK2Rqqk0V+Wnbw==
X-CSE-MsgGUID: GRF7PD6tTA6Cuo2BGSTaQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60519254"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="60519254"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:25:46 -0700
X-CSE-ConnectionGUID: fHM/oKf9Rhe1HoMnYJqmPw==
X-CSE-MsgGUID: 9XhQuWlaTqqXPcaYDnfyRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="175630344"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:25:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:25:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 04:25:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vsGpsBeJTA48XX8eEA85gfy/kU0xjUtqXKv2QHCk4yx9tF5if9xDK8MFUMmYZyCEoJp7qLM/9RZGw7XFWWtVL0BgzsI3fVZnkY0SZmrQ3sjhvfgn5gWPoF8naIZwu70daQ7AvKc0hHl03Mhv3Jx4I8c3Ul4XRGJ2lNvP2gSDRj1e1B5uQbNAuSPZJ1uy7zQHxXwunzfprADM7KvOYNJvQVsuEDrjq1iJTKc6Eut076Eh7/BrJjPx90+oacryY4yWHo13XveSQynvqTZAoWhB68+7rOjztDnSw531OwI6k1EEuqLST/LKc5zCD/3oZVNm5AlUU3vQreCN4v5Jh2cGwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6VGAMXHgRFNwInXsTyM6mOG4pZ8+P/FNod9RgqO4j/A=;
 b=RcjdyBgXhs/A5IRi8pmUBqSWuOSTBmoC5ZIR1cEaBc9JQmygWOv+EOoQQ/ASbZVOXIfeO5bHVvbfJy60sfNyJudc6fXfwZx894pTJ9SgqNohHcmznC37QF6eT9d3KLLfcq7XxYR7dVq15fW+dVdtYD0V1vmKNaUeAxzfv/78l50bqbCLe+HbmQQ22TOwYKS0HVqNkT6GGi/nBy7g9kOgeoCb4uUDxNbPD25S1kacFBcCctsAA7L++PWvnTJ93JhuxxY+dqw4+6nPgz/K1kfTRoH6Q9rNMzzA2v/uNljfCWYFr7pDlLCbYkCJZ+bSpXoLpLLIODbTU+gGDxtQahfxyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Wed, 17 Sep
 2025 11:25:38 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 11:25:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jakub Kicinski
 <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Yael Chemla
 <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
Thread-Index: AQHcJz8kQD8J6RnEBUOusDdwdqv3xbSXPPZQ
Date: Wed, 17 Sep 2025 11:25:38 +0000
Message-ID: <IA3PR11MB89869FB384C972744A1D9F0CE517A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
In-Reply-To: <20250916191257.13343-4-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB4845:EE_
x-ms-office365-filtering-correlation-id: ee87713a-670e-42e1-d003-08ddf5dced7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4apC4wC/UgEhhmSaXIC0xrmCpQZV42eN1/KQ6vaqd2GjDFdVgOigf5Iww98m?=
 =?us-ascii?Q?eX7UXKJkwMgulPJCPORD8oVVyA4vaBxLVs1FtV3QnD29+E5TPbWkUZAity0h?=
 =?us-ascii?Q?vYy3suElFBRJZQFSGXMdkjCfcpd1j3BD0tCH77HH3u6hCBRlS7X9JJe0A27b?=
 =?us-ascii?Q?HcMeVbxUnlZcaXFAF5ZezSvyY4sU1SYbXIL4kdcFLwLcfztyjkvrya8SROAu?=
 =?us-ascii?Q?egiH7HmkA+fxpIb/2ECXUd35MrfJUc4Bgy2f+rVqYEiUWbiWzjVrELcNWeDd?=
 =?us-ascii?Q?RPLbRY33+caVgSAuelYjudrdcZMEAttbq+UGh6ziFBquoXPrfaVljgm2yDyE?=
 =?us-ascii?Q?8O59w9nIMEjoUX3tP8Yma+KdL/gv1oVN27JHgyjNOfZLYZ99OkWBflgMkxYp?=
 =?us-ascii?Q?agGogILaUdniB6SVL65YCBQ69SX9Fqu6Ejp/Fmu08V50Rs2m3gigNv5wR8nb?=
 =?us-ascii?Q?dtxmZu12wgmhuvBKteU3cR4Tt0yz+39XlbFyCdEWC0eqo4OVRFaC3PL3jo0o?=
 =?us-ascii?Q?Kd9N6EZxZHyT1ymnbcdU3EJWLZ40Nw8bIKaSs/kbWOP0Xa/E8AKlmrxMxAY3?=
 =?us-ascii?Q?2BlWgwOAQgCyxavgc/WAe7oU/lHNcc4n6D+VOlAAewxN766K7cCHLO9octPF?=
 =?us-ascii?Q?8490Np2uXWHJCBuGtU/H0LqtwEgXb4iQMMtUUdlUwMyKgzusffVklwDhKNnF?=
 =?us-ascii?Q?puFzs0rOJnxPZAGe5Hr7t3ePfA+ZEQiEzOxAMHnrshNPmqg+CXz65FJ80Rmt?=
 =?us-ascii?Q?JJCTzgKCsqlzJzsMFW+n9dE3X/CO30S1aTRFneESB87eJB7D+5j7eBjxl5oF?=
 =?us-ascii?Q?Uiry88dys/WxP8a9oLk6l849RCm1L9m7VVNPNmBEXqgaKG/xot5PJ9lPdCmB?=
 =?us-ascii?Q?Acxyx9yazYU7iQWNBb6XQPfCv7JW9X0IuhOBmyCqEP4EeM6mknqynuh6Hsum?=
 =?us-ascii?Q?C8QoBzmufrzfy6B/4yivfW+CYjHvEHAvF3OjPGWOT+6IZTV3cwnJwVyVbmB+?=
 =?us-ascii?Q?cjdK0qEq2pd087N0UwPw7bJdw88DudWE+0neiGUdwiMsip7oArDLXwEK5CqP?=
 =?us-ascii?Q?31jTz4pK5WofnARAuMh11zS9UcNVE1psjxjqEhJJYxoUy17EMryWVVOzGFOr?=
 =?us-ascii?Q?7PLPAL4j6o5tf+OiaNouhr11mzhRr6XAvOczJC263eCb4KfEBUjrlxVhNvEX?=
 =?us-ascii?Q?tt1YfnGM7H9269lrcmvonk1fMt+UJfhJ/zyt+ftczJwmoh8A08IYf4S8eA9b?=
 =?us-ascii?Q?z9/IZ/kRWZUTTrgD+BppmVq2SESNJmqzJvDP876wkEILlE5SRI8q+VAbwIHE?=
 =?us-ascii?Q?kQa3cY+QqVRyfZt0Yr0iPWd/vSWjvPrRBZD1pNHIx3cudKp+vlyGcjPIEwyH?=
 =?us-ascii?Q?uLfdbe/wPi2Z7e+YL3+af9Zh4itdsOjgnHL9nNpcZnIRWqtdEHwU3m8o/TIe?=
 =?us-ascii?Q?GtsUWyS24sd8d6mzlsURsBs7GerpduU2U66/cnpziIaxxUDQfT7Jp8U/mpK/?=
 =?us-ascii?Q?KaZQoxYnAx1jOBc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J0SUhOyR4sO8V+iQyp0VvsjzuEmICqKn2FAf6pwx6mrfECefa/gHoiT2yVNr?=
 =?us-ascii?Q?OHwhBvqtMRF70S6l0zrM/8aVG8ReAB+xHgm7rTxc83tHNOoNVEaiCEKwlH4J?=
 =?us-ascii?Q?PGV76gyq7hoQ6ajpLEKlUs04qnT8oMagFpu67LmzCxzmBpb1QlTpHwSrnbyN?=
 =?us-ascii?Q?GaP9IZSt7hQO2QvJKq+tTtEoBnQ9nBr4hDngIr5Br0jF4jxvkXqnxqK295as?=
 =?us-ascii?Q?CmRnnl9VOvIDlK1Hg5kb/Q6gFyUIABl6jihFXVenEr3KYDTOiJ5VWByVKT2a?=
 =?us-ascii?Q?5/T/qHA2+vX5kA3n8saw+uj1BvbIHKdnQp1oUzzQi7VKiO9jifXn1pq+wVZ6?=
 =?us-ascii?Q?6Pdh3kU2fz86UPKqv3ZpNMNstiGeccQLvEMdYfMBGJ4Cac2LSWcpNjk/+IWo?=
 =?us-ascii?Q?AyhnAWwPSfxjKTtc8M/zwsDVoZM25N3mBYEErwcuRmgmVrGAZPkqLLsI4/iP?=
 =?us-ascii?Q?W3SMuQHpE6NpV5X7Y5LNzPHtgOhdFNrKrnDq0l4tI1U4nGNQWh9tP4u33ddd?=
 =?us-ascii?Q?kV3bNfhJR+ctCWWTIxpALyklJNtvFyVb5/tt3u7iXMVo6Z12OJPjDgn5V5iP?=
 =?us-ascii?Q?ebAAfyrii/0UDIExd8T3eJc7zafvXpZhELLxTFn0HiXIgJONHmUaOzYPVbkD?=
 =?us-ascii?Q?EZJgXEZHZA6va1z4nWMDs8kHJT1lnLhi3Q4/4Vdj5ZjGkm+H/vPLeXDjGw0n?=
 =?us-ascii?Q?MloRVdXmXoujd+QbcSp4YVSIMStqlmng8A58CQ3J0elrN3sBVsSQ5+YjSr/h?=
 =?us-ascii?Q?dNiWFKPwvnzalW+ffYx0E2NhRg3p6AW4QOqCFhRRBafYRdjWWWCxL6ncXx+z?=
 =?us-ascii?Q?XT9sE3d4swxF/WKUDJlaMFuGT85zluMNyR2MQvbp4+8fYZq+uYjdB1tDBa9n?=
 =?us-ascii?Q?q0tbhQy6ZVvCeG1P/BM9T3qJN6RZ74oYI4sGCgorzZu9PhWIFOgh5mjsAfsE?=
 =?us-ascii?Q?W9EVpigxzheMlhldeqQPEXK3Ge600O+MsqSS3DefFV4Lbn3MATnoYndKdl9z?=
 =?us-ascii?Q?X8dMF1eacRMwuukWE7wQXctx0BF7KIpbS9XPmYPriYTOwMau3p5X5TejBE4X?=
 =?us-ascii?Q?/XlicPwJkbaocxiLOZS2rDBA+uSCPSMlTZhGnZJIp1rlr7vm4oC0xkcRi9gJ?=
 =?us-ascii?Q?FyGtuCzAcosycVwLDT3vqljF+iK41l/UjxOPcJs7G34nFXdJjmmlWc/PgWQD?=
 =?us-ascii?Q?Ay6V1ZA3gy71nxpqOqGMlWNX1j5bmXRnOMpMW92YxRvPy5L2QKajC7bHFg/0?=
 =?us-ascii?Q?oxg+2pJb3YBP6iHF9lW/PUd7wzEuLTdvlLi2ecWwzBF8LDWqievRkNqy5+K0?=
 =?us-ascii?Q?wBlS20CRVx76w3atJXNzDIFiQTatkeuJxYQFbH97bRt+JsDYmonXeWDPQbFX?=
 =?us-ascii?Q?AxCyb+8I6RiQLvheXgkjypDoEhoc5PcKMsyDlF89LrKCj3r/kdIUcg8/KBRi?=
 =?us-ascii?Q?2lmSb3yHiNzdcAquxdL4xyRf6aPsGp+WRApMPCItWAW4Ysh05rpD3A55hSmw?=
 =?us-ascii?Q?tEBMnDvTNyyYF9dfm/2AXUws6ofHbexUM0TIRHpswuQ3AWgXEN+sLC21hcoG?=
 =?us-ascii?Q?dJRZQ2lkhPcRGNBxYLtpXUiwwtI8XrNpfMoCV51Copg4UmM9Hqu1YPCGfzDh?=
 =?us-ascii?Q?Fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee87713a-670e-42e1-d003-08ddf5dced7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2025 11:25:38.1718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dFvrjmdyh98GTX6wcpRJ0IYOMsn4lZ3IjUEXzeKbo/vL10XlrcK0MEQemoZjTJpk8zWvpLbiJ7K4G71+81nVJepnKHW1GJKzhCljSZDb4nI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758108349; x=1789644349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6VGAMXHgRFNwInXsTyM6mOG4pZ8+P/FNod9RgqO4j/A=;
 b=NBiEpPaRzDZh9iKsl1sAuKvyYU4nVd0aEsES6ZQsH6MQ9r2TAKMZGaDo
 NOcb3YxtgkH0W7pwjp2DfW1miXHo1922qT2n+A7lVOZmGXx8rhfkiPbWy
 14jTHMli/8dQ6IzmMbavPE6D+Jlg1jqYRGS8GnH/lrP0qPL85TeF5lDDV
 ln3+aM5bJaDoRhWFo6W2/VB4IYKuSQYSh3Vtu5zLt5S/YlP80stN2Q5lx
 eRLXLKl04EgWkYmm9ihlbZmxq+VhEfFbAKk8thwP4Z3lBohEKShmiAkrj
 uBVz+K4phB7cPLhInJq8fGN5xcc1H2qEpbYXEE9ea02zv7mkh7+xuxTfx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NBiEpPaR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vadim Fedorenko
> Sent: Tuesday, September 16, 2025 9:13 PM
> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
> Hunter <donald.hunter@gmail.com>; Carolina Jubran
> <cjubran@nvidia.com>; Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org; Yael Chemla <ychemla@nvidia.com>; Dragos
> Tatulea <dtatulea@nvidia.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add
> logic to read RS-FEC histogram bin ranges from PPHCR
>=20
> From: Carolina Jubran <cjubran@nvidia.com>
>=20
> Introduce support for querying the Ports Phy Histogram Configuration
> Register (PPHCR) to retrieve RS-FEC histogram bin ranges. The ranges
> are stored in a static array and will be used to map histogram
> counters to error levels.
>=20
> The actual RS-FEC histogram statistics are not yet reported in this
> commit and will be handled in a downstream patch.
>=20
> Co-developed-by: Yael Chemla <ychemla@nvidia.com>
> Signed-off-by: Yael Chemla <ychemla@nvidia.com>
> Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
> Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
> Reviewed-by: Yael Chemla <ychemla@nvidia.com>
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
...
> --
> 2.47.3

