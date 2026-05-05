Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAFgOIM1+WkG6gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 02:10:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0D94C522F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 02:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 800F5407FD;
	Tue,  5 May 2026 00:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mUyNOmH0KKMB; Tue,  5 May 2026 00:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9ABC40806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777939840;
	bh=suUPEEa/Hl9vIo4bmtAyw/8k75zSd3pplEfbIdFam0I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KL//oqHEnpc5h9RGt7+hA1Wk0QLQ8dkDSj4EHhkAQ0tsX2b4vSpPN2cwXTfK1aPEI
	 Jokt7hTFpTzAxahRn1IunFvgfJSXS3MOaMoEmtauXrVf1hOzEexSt2P6LstKQTBKzQ
	 dvBbcq5SAdkk2Bk+YOmXNay8Xzqwe1eWNrGzm7ylRVLpVKA5kRNolB8yLhA+BoQEh2
	 qBH6nMiAgi9DjUAN/7JijF05aIqBmGlSTTg4XD3zi5sY4RZ35dIuB42ZWV6F2WYUhx
	 +7tCbhYWUVORDiAeDhoJfuLdHuH1Im0UoEjSn9a8R3JLrcOrlwZd9vpjPZzIkAkRa6
	 LWMGlKC/9xcjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9ABC40806;
	Tue,  5 May 2026 00:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A914280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 00:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FD86400EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 00:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gVOW1lmNoKQM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 00:10:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C277A400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C277A400E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C277A400E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 00:10:37 +0000 (UTC)
X-CSE-ConnectionGUID: JMppO0j4Rwm+r++UOoV1rA==
X-CSE-MsgGUID: nieR3HfmRYCNN348yKcm3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77962028"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="77962028"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 17:10:36 -0700
X-CSE-ConnectionGUID: MLYlAzPrQkOgG1awnHLjow==
X-CSE-MsgGUID: aJ6ZMcD5R7GdytCzB62nLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="235711126"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 17:10:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 17:10:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 17:10:35 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 17:10:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aWITGwHTl5wRsNtsaH5H4ZMlguKMCHvx3k3+i4qzcJF1kD7vNcagUAsFOuXg+H9LANuxYDH/DoJq0XQClma6rkj0ZOvCjqP3HExISkc1OZ7lMhLW59AbfUNQWSDA3aJ25q5PWH8V6cDt2fvLm0Ykvy05jBmWOHSaiXP6mWN6b8KkvlfR7BlubD481oXBNWpfcMRdfjD+vAX9U8NKB0Rr39SgMH70vWgRjdYa80hfz1XDw7R/s/4jVoni7FsyYhI6gmnHYFIzw5e7XdzBggja9ZtMH/l0nIqa+COKbXXWuNNe30SLq3lmrlQHdmB7LwwOkjVzWhnT85NYYBeEyB0Ekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=suUPEEa/Hl9vIo4bmtAyw/8k75zSd3pplEfbIdFam0I=;
 b=WK2B5bi6BiAzsTeVdwyBR/defOhpl7I0J8EAy7Dxeztp8CCFaMTkWUsSMH6HNExrO1kPTSRJmEs1FvdBBTpRLRnMabbGxvpUsujlCmMPj+tFGbcnSDT7UDjZHP2W+Wh539KlqbuCqLYUaZ/LKlaHVa/5DQdb1P3w2ZtGHDRSPMfmDKke1AC8h/ZQmWOZ+tvJTReEBEq9STKADOWOYQpB6rXlSw42pJIlBt4VsmLjeQyQyv0mpCFIy6d7R+kexprTYAMIiPv6QUCU1oKFfzZRsWWbSJr+YA/3GDFuoDVvDBdmKlDT4DHTNtkjpipqNnPGAlZ4F/cbBmV7+3Xv7SnecA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by MN0PR11MB6278.namprd11.prod.outlook.com (2603:10b6:208:3c2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 00:10:32 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Tue, 5 May 2026
 00:10:31 +0000
Message-ID: <531aec13-c33f-4e77-ab48-de8861f9b6c6@intel.com>
Date: Mon, 4 May 2026 17:10:23 -0700
User-Agent: Mozilla Thunderbird
To: Matt Fleming <matt@readmodwrite.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <kernel-team@cloudflare.com>, Matt Fleming <mfleming@cloudflare.com>,
 <stable@vger.kernel.org>, Simon Horman <horms@kernel.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Eric Joyner
 <eric.joyner@intel.com>, Paul Greenwalt <paul.greenwalt@intel.com>, "Alice
 Michael" <alice.michael@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260501095717.1032151-1-matt@readmodwrite.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260501095717.1032151-1-matt@readmodwrite.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0330.namprd03.prod.outlook.com
 (2603:10b6:303:dd::35) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|MN0PR11MB6278:EE_
X-MS-Office365-Filtering-Correlation-Id: e7f7db99-f637-44a0-39eb-08deaa3ab8a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: EIjuZLu8lFZyHJiPp9pK6p1ZeZjO8QBUz/rsB0NqYiPCMgUoS93vHcwCciDJ0O/50uGgEnP5JRz/lByRfcWZSFVmVE5LFqHGoEorfP3dU038f5c/MXDr1EWNEYL77BkefJonieUfdiK9guw3GXXZ+UXUjkj84LtQ67uUnG3vjXegiI1oxJoYAt6i54rVuCbkBaPVDUgrQwZdcKmu5R8d128YMDgqmAnhm5LWg33EwW3nOAOCKsbiuw2BFSpUWXUb/N6uj0N89WXfwBZ3/dQicofHuo1Ja8gT1Gg8ToxzEOPps/Wq5GfbDPEu7AKoO9jtj2jYpdT3+M4ykPEZdBk65UwmjciSG2nOAbPdOfDVtMWTjQaPpaBVRj2Ai+KRpH6AjUwam0b0kDsHOdLjoHp6sN2KdvlYM4v1eO2YG4DKvGS6ptMdnpRh8OT2DPN/2XtioaMhV1joaj/79xFq5aE0Ugh3cJfYsCde+uBdgMULUzDivlijpeiI+RtTvvRzNTyP10eZJu6e/Lfb7yP/ZGA5gBDorCTE3VN2U4LDnEjC57yLLquIlPbIcM/E6w52zPvzhyVzQVZKHqseWwp/ZLg2yShii5d/HdRCWcNop/G4EyIzV9Hg41qbIaISmy2vFfBor1umVSXhQy5U7z1udnqt/QHNwZFZwZ82Z1xz5tuxLRBW5aRy0+WZvS8HM6PWGJXAkuCbhAX4jjtsOOO0phX4tw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzVreC9laVpPV09xQlpVMUJjQkNmM2o3YzdhbTh1SFFDZUFLeFVKcXdycDlR?=
 =?utf-8?B?aFhET2dwNDFBek55NU1RTGpWay9PSU5kSTVla3lSU0F4SGtoRWI4eUhPUzZZ?=
 =?utf-8?B?V3ptcHhhN1lrS2pjWE1JUm9NRGplZzFIRkNkVDVmVjQyVzVjZFVVTEZTb3hy?=
 =?utf-8?B?cUVUbmZlZkI3eW1XRk5yQzJFV0g5ZmdQNlhxZ3pyN3ZFYzhscU42SkYxUFRR?=
 =?utf-8?B?ZTN5UWpKOHVQcjZITnZybER4a09NM1UybWMxbnFGYksvQXIweStxellMemFM?=
 =?utf-8?B?cWNGc0YzMTA3cTNEeE55elFIVVdOME1Edm9RYk9zcnJJR0xOcGF5T0xVcmUr?=
 =?utf-8?B?MEJtd2VZcXZtUWZJN0dZWGJMVDJPSENTQlhnUk5vTDA1OXZhSjROd1J1ak8y?=
 =?utf-8?B?MEF3ZmZaZzBjQWpMbU5YTWVNWWpISjlsM1Z5YjZ0cVhVL1E2anc1MkxxYllE?=
 =?utf-8?B?djhlU3hWalZDdjdBQnM0b2FobXpWd0RmMUtmcjRkY1o1WDFjdGd0aFlQYmJV?=
 =?utf-8?B?a2tWWXM4UVZrVEM2SFNWdjc1UnZUWUhyeWh6anhwbHAwbGdJbGwzMThuTSs2?=
 =?utf-8?B?NGMvdUlFNzF0UG9XMFhyK09BMXVPOXhOeGZnb1IwNHJyY3NpeWoveVpSMnNL?=
 =?utf-8?B?MkhPbTM2RlRHQlFUVGtlSkFXZmpXOElDWUthQ0VWc0NRd3BCVnk2TFR3THd2?=
 =?utf-8?B?dUlpeVZBNmhVUWFOVDA4SEpjRXRtcmVrelIzN2NydnZVYTJkYkJ4TFdKUUhM?=
 =?utf-8?B?UGI3alBCT2VQb1RWOUFVK0FOV2FoSFRvbVVWQURvcnhJS2JlK1ZLYVc4MU00?=
 =?utf-8?B?Z1l3MDkxenR2VmxUanFaeUIyTjlETHZtb2J2WnBtVU1va28wcGpCVElnNTAx?=
 =?utf-8?B?NTVub0NsRTZDM2NubnRtS2dtYTJESWtuQnVFSXo5YTV5MzVTN3JvQmMzWEJq?=
 =?utf-8?B?UDdoeXN0Z3RoOXg1ME04STRxZlBRMlFMTHZzdktmVVdCRnZ2K0dMQ09Ib3Fu?=
 =?utf-8?B?aS94ZVhyV3d1YXZpb2s0YnNOMFRtT2RTcFpqb3dyaEYzOGNjMGJXRVNWNnlh?=
 =?utf-8?B?UDRHS0QrTC9PclgwaFJheU5uVkZwY0JNZmVHYVFjd1RxSVp3dCtrcWVHYWtJ?=
 =?utf-8?B?THZwSXROblptc2pZWUJEcGJtUDltV0psaUtOUVVtQmc4QTc4UnRXb2FpRUJ3?=
 =?utf-8?B?RURFZXZMd3VlYk9Cck91Tk94cWdpb09VUHJ2SmpVaFdKK1VobjBDTm1udmZH?=
 =?utf-8?B?ZjhiWGo4cnA2MC93ZnlMZGk2SktFd1pvMzZQWGdaYVl2QkQ2OEF0QjEvRHFR?=
 =?utf-8?B?VVpyaTU3QkVmeFl1YUV5SEVRZ2ZLREdPMUFPVXYvaFdZeFVwcjI0WGF2SnZV?=
 =?utf-8?B?c3dWNzJnY2phcElTNkVtdFB6L0lkVVIzNXkvOUNNNUhhQXdDci93SXRleElR?=
 =?utf-8?B?VXhjbTErelVrb0RkVUlvdW9GdDRvQW94QlZNTUZ5N2NtL0ZnTHIvVW5JcEVx?=
 =?utf-8?B?Um53U0RFRGc1anhLUCtjSTJQZjROd1FJMWUxamliMVZvNWo0bENaeGxVRG9J?=
 =?utf-8?B?NEh0QjlDU002NExHd2p3bmpCSHdzRmVPK0ttVVdSRkdoZ1FHZXVxejU2cjBz?=
 =?utf-8?B?ZW10bVRCeENWaDBXREFTa2E1RFNmdXNwZEY5TE5Uc0JkcHU3NmFuNHprRVh1?=
 =?utf-8?B?QzFaRkt1NjMvaDJ4VHpPc1RPdFg4VnFRVkFIdW1jdXhHZk5BOE1yTGVRcFRj?=
 =?utf-8?B?elIyVWlERVRDTzk5Z0VkN0RnREhEYXRjeHMwSXRCVHQzU0QzSHk3d0V6STZ2?=
 =?utf-8?B?RVltL0lwbGFlb21KY0JQY3ppOGplSTNXTk55NERwOVUrWHUvMmpGZkRQRmlP?=
 =?utf-8?B?OFNzWUYxUlMwS045OUwwMitxTi94RUoxZHVONTRPT1dWNzR6S2RqbHhpSHdi?=
 =?utf-8?B?QXZOVTJOS3EvUThtdFl5WE1rczRxYW1RVTd2NnAySGQvSXUwK1gwSHh6OHIx?=
 =?utf-8?B?NS8vdEU0RXZBRjBORFRaMElPYTBUMDVkNE5jMVpaMm1rZ1k2MCs1clcrOTR4?=
 =?utf-8?B?dCtPM1JyMGZ1N1M4NkZ3ellCaDRpdjJFR0pNd1lvUTBpNVZmSGlXVEdpMTNp?=
 =?utf-8?B?cVhzNEVWTCsrYk8yMzB4WkpHZVlaWENEaElqVE52QTFUemlKeWNqTndNekU1?=
 =?utf-8?B?VE9OdGduZVlCK1NZaUZCZ1JQcHhtMjU3OTh5eGw2ckNOclVsYUFsbTcxSDRW?=
 =?utf-8?B?V0ZQeVZ0VUlzcDhLak5TWHk3VDNyNitXa210NmZqWUZ4UnZ6TnVGNDdEODNP?=
 =?utf-8?B?WVZqOTRQekY0ODNpRys3MUdXeGgvczNwZ0NDaDBvbE9VVVUxNU1TUT09?=
X-Exchange-RoutingPolicyChecked: r92H26LBX+trAaH2Kx8sf0YIadApCsBAxUSdMlOHUntSXyxdwRvK6PtAUp1iFrOeRWrtimysBwVGnhGNMsWNmCwzNd1dlV1a6j+r6RFWklAxiftDfYe+RCwUnnr6Hpb9tl2NwX7rgfI0Me5ldHSHjXXKqDYS76PxIvW7xQ3th7aGiRWZsi9T/w5m8c9UAclmZ33ZvTZ6aO1XozxB3AXYKizu6BC+eI3PHw1f0WBtvoNKBIvPhOyNem8KiIBI6W3ZdZBuD+ujXsEMoRXtmIMF3qURvJW2DeRD2aYs+5a58BoCRKgthlO1/kTWvTYh/fNhEQmQ4lPNenmwaxwBHhbZxQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e7f7db99-f637-44a0-39eb-08deaa3ab8a5
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 00:10:31.7835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MRcPCa6og1ntgs31T1JSs5x4wxWr/SaXvH63N8GxSFayzCuVeVQ0jUA7m4Kg2QjJ+4NyrcQz+TqkDkiueRNuP/lyvKa3KhuHbwZigXshoaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6278
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777939838; x=1809475838;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bpiVw8jiuuRE8wstR97zsk7ygmQKSCrrYadSc/lPbfU=;
 b=RCueqCHHBdcQwAOWafuuHJwTjzXRJTeuugmTXiGCYCKx1Oi4KZ4OvHan
 03crbYvrqg2p1cqzwYF9WZHVX7iJqJSke3DdIsY6kJhzXnJXyXkj21j0q
 7qLxN0aHIa3rIiO8ztOp7PmB0OJOepya+Z5PiKbcJ1MEpxJFMF4m7xGf5
 /zIdKN6eGLSeDdgzuJOWC6I1wi+FoFiQYYJ8Pkk2elVXOwC8PYD9jUCdI
 9Z7wYWZ6DWl54LOdS2JIiSQez2aleBu+tWr+uPHUS62y3dachrCZ15nW2
 fzDd5yGfCKyH87roM44GsAT+qdiIN9+BHGVjQZTb3CxFC4JCoi/MwlkEU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RCueqCHH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix missing 1's
 complement negation in GCS raw checksum
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
X-Rspamd-Queue-Id: DD0D94C522F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:stable@vger.kernel.org,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:eric.joyner@intel.com,m:paul.greenwalt@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,cloudflare.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,intel.com:email]

On 5/1/2026 2:57 AM, Matt Fleming wrote:
> From: Matt Fleming <mfleming@cloudflare.com>
> 
> Commit 905d1a220e8d ("ice: Add E830 checksum offload support") added
> Generic Checksum (GCS) support for E830 NICs but omitted the 1's
> complement negation (~) when converting the hardware raw_csum to
> skb->csum for CHECKSUM_COMPLETE.
> 
> Without the negation, every CHECKSUM_COMPLETE packet fails the
> fast-path validation in nf_ip_checksum() and falls through to software
> checksumming via __skb_checksum_complete(), which triggers the
> rate-limited "hw csum failure" warning. Packets are still accepted
> (the software recheck passes) but hardware checksum offload is
> effectively disabled and the warning floods dmesg on systems running
> nf_conntrack on VLAN sub-interfaces.
> 
> Multiple other drivers (idpf, ehea, iwlwifi, cassini, sunhme, enetc)
> also apply ~ for CHECKSUM_COMPLETE. The ice driver was the only in-tree
> user of csum_unfold() for CHECKSUM_COMPLETE that omitted it.
> 

Hi,

Based on your patch description, I assume that you've tested this on
real hardware.

I dug a little through some of our internal changes history and sawe
that it looks like the hardware has a register setting in its
GL_RDPU_CNTRL register which determines whether the checksum value
reported is inverted or not. In E830 hardware, it is supposed to be off
(i.e. the checksum value reported already matches the expected setting.

Perhaps your device somehow got the GL_RDPU_CNTRL register set to the
wrong mode and that results in the swap being necessary. Hmm.

I'll ask the team to see if they can confirm this behavior.

Thanks,
Jake

> Fixes: 905d1a220e8d ("ice: Add E830 checksum offload support")
> Cc: stable@vger.kernel.org
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Matt Fleming <mfleming@cloudflare.com>
> ---
> v2:
>   - Add Cc: stable@vger.kernel.org (Aleksandr)
>   - Pick up Reviewed-by tags from Aleksandr and Simon
>   - No code changes
> v1: https://lore.kernel.org/netdev/20260408190214.1287708-1-matt@readmodwrite.com/
> 
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index e695a664e53d..c177579e0114 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -92,7 +92,7 @@ static void ice_rx_gcs(struct sk_buff *skb,
>  	desc = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
>  	skb->ip_summed = CHECKSUM_COMPLETE;
>  	csum = (__force u16)desc->raw_csum;
> -	skb->csum = csum_unfold((__force __sum16)swab16(csum));
> +	skb->csum = csum_unfold((__force __sum16)~swab16(csum));
>  }
>  
>  /**

