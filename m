Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMNkMJbhymnEAwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 22:48:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 817B136124C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 22:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EBE380F4C;
	Mon, 30 Mar 2026 20:48:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aBv63ClxT5MV; Mon, 30 Mar 2026 20:48:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E7F880F72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774903697;
	bh=NC9/YWwzhgPCaKjhPp3TZT/K/NiTVd6g1b2qWVVMjQM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1FfsvLOhImWJ6oedkezDCAuBsSp33Ev7fNVsbcpMlrFl33zpdCDHTBTc1B2I9+4At
	 SW+P40KO2Nlq5ytuRlc23EoxLsg4ovRCp/G/+Ndo6UWGXnI4RaOxbWkg30Y2PsgGww
	 Ej3BO6McLUNXU554fpXJfiWF4pknINZ47/CDKE2+a5B0ol3ZrzwNa5gE+jjZItDSiE
	 30fZL5di298gf9VAWwOpFrrZUe2xoosYQX/GrtGoHNv0mica5T9OCu+TR0GoXwjdOw
	 s/AmVmJpEOEkZ49zk2ka661tX6Ssyu6OulRuwX+JsjPCbvr60NCvHkz67rhWHncNnP
	 9KIEqlqWsIVqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E7F880F72;
	Mon, 30 Mar 2026 20:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C48C92C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 20:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1799409CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 20:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GMmFqvCz58K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 20:48:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5CB32409C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CB32409C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CB32409C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 20:48:13 +0000 (UTC)
X-CSE-ConnectionGUID: wm+VGCgwSyik8otY8nQv5w==
X-CSE-MsgGUID: BfQstDVcTcKAlPMnSIzriA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87300787"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="87300787"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:48:07 -0700
X-CSE-ConnectionGUID: cxwn6dMPSYyEAJ1kkJViqw==
X-CSE-MsgGUID: jBeU1rNzRC6Y9HP2QMZEdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="264093181"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:48:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 13:48:02 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 13:48:02 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 13:48:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MMYfLcM66raE7318qazgNF5/wX65Kcl1sfkO+O9KEaYwuLnmH7aXOT5SPCVCnVTMbiu58prlETFfbfgXl3DTWneShY02HU5yV8vUKAGFYEkFwTVNCHdfc+4keORDfm3FJ6yD83irtpohJxr6WiUvS47vin7TX1D6BQbGtojjugxohM12EivqQ7GBavH96uXQ6kz3oXrcYI+XUhJbPmp2MdiWiHUJvLB0MucVLCxVlYXA+UMr826i27hwXf0fhIWkdIMdJBz6Zm2y+SBctcIn3xKrXd4CY7hQyaG4liUSmtrkEbClfa2vm7/l1tb4jAy6HpeDApAX+4ichzEU+YQiJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NC9/YWwzhgPCaKjhPp3TZT/K/NiTVd6g1b2qWVVMjQM=;
 b=h4T+JqTlJRBY1bIfOyUoEWvxFaI5FMwfnZAfpy5V4ba5Aqg7zmpuxU3Rji1MWNkE121E6xDbYTg57lg3ly13lhG0U/0XKIESKWlDgRv/7pHQIDHo22vKROuJVs6HGUQeln/Nu+DtnejbKg3Wmk3dPy9/NLmaF2RQWeEOWg5G/oyNGlmxA5swm3maxFR415nSCaYFMVVHF1H8/a6bqVqUszWFURPIHAUsQCGE/f67KpXelgdpY91KnNfAW6t9ZwMH8POWqe1/ZsHM+VUSussFn85+cy89qa6CoBxKoVB0YaRRp0KNUAgV20XnFs8BCzfSsuL8MJFY/Sx/dNGjtJOaVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.11; Mon, 30 Mar
 2026 20:48:00 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 20:47:59 +0000
Message-ID: <8bad42a0-74f9-482a-b649-9b9244f36477@intel.com>
Date: Mon, 30 Mar 2026 13:47:56 -0700
User-Agent: Mozilla Thunderbird
From: <anthony.l.nguyen@intel.com>
To: Yury Norov <ynorov@nvidia.com>, Simon Horman <horms@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Matthew Brost" <matthew.brost@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 <dri-devel@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, David Laight
 <david.laight.linux@gmail.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
 <20260302011159.61778-5-ynorov@nvidia.com>
 <20260304114319.GI71509@kernel.org>
 <51b0f779-4070-44f1-b136-77737da6dbaf@intel.com> <achO43f7IA22uD19@yury>
In-Reply-To: <achO43f7IA22uD19@yury>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0149.namprd03.prod.outlook.com
 (2603:10b6:303:8c::34) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: 9df2def3-f59f-4992-ccc8-08de8e9da0fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18002099003|56012099003|22082099003|921020;
X-Microsoft-Antispam-Message-Info: pXe/4dm6JKEl1IMfq1b0pnxeNaBnQQmBrDd87ucJvqrRMlTcP9mVehSdJvDiFSjEPKiISN9EyqIIVZCR+Bl5KkzNqbB120btK4jGGvwyUs8COFXpMYalW2TmJ4MjI//WAz1tUSO5Q1c1W9cESuDe8A1F2m2l96IOLmJsRwFLlHaaIGOhOr9FI1EihuYrWLaceDbmTrpUL8tuq3Flqjr/GqVKNUWOlG1vDbzPmsAP9lBH+6FwkdWymePuDMeCYepTvhucIJ4MQkyP+CowvmPnrY5hQWlrQB1yBFF51g8n4+Ac9/KbeG+fCBFJsIMzYnukbpwwDjIIT3Qle5R7MT4UXRm/vXT23gtayy+b5Inh13w613mz8HKDDzd2+cskw6buFxsjrc/TSy1DSAHb7Rag2vV1KA1b8hbbT7mO4Bzl0QmQqJnTP/DCNU+G+F+0cUdDJ57OUCz923RxPrrlpnqm3ExDrncahHMfHkDrXw3KC6t8/zmGuR2OH3hvkFQeyhkECKwc3HeAjlMD/dLFIMoxO4gCqrUoQRR96PFGt4s4Bj66qnmz6BBlihpFgEIhFfoB+eScHr8tXi3tewZsGxUQqL8SM12RwSjMZAbvG/4jM07G3Cegej2r86U6VYuzjfbw4UH/eKxkU5V1tyzX2FGLrME+TUP3Cz/h8QNL+GPu3ui8rrbQgH9iiVZ6UcwRifXl5Uj8TngRmtpAL37AN5QQ0gux7O5geMTZ357AVCX9S8ZQr9nxsJSOQkpSOjMBwcRWdOXY3OSryw0LP/MO83jE6Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18002099003)(56012099003)(22082099003)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnBJTDFiQ29YdmZZbDJSY1hnNnZOQUR3R0svRzdMb0NKbDJyWlhBWnZqR2xt?=
 =?utf-8?B?dmtqZExDcnpCT3NnZ050YVVmdWNXZjVhZ1BWNndmSHNLcTlRRzVkMUluYTlW?=
 =?utf-8?B?NlJIL0p0Nk1maEc4WDhUNUtZNFRBY1BnZnBjV3J6R09FZlNDZVhhQkk1QWZk?=
 =?utf-8?B?Yi92S0Z2TjlMSVEzN0xxSmQxRHlPeENqbURGSC9UUVhaQzRrYTc2N29xK2pJ?=
 =?utf-8?B?UEF5WEM2VTd0RGw3NHMzam5IRENwN1EycGRFdjZFVFIxZzRCRTJtQVNqNHpW?=
 =?utf-8?B?N1p5ajg1RElhWDhYcEJwUExJQ2l0UW40T1k1bmZaYVBiWCtuaEpJZGVLOWs5?=
 =?utf-8?B?UUUvc2FlUnRxK0FHQUZ6OXNpN1Z1ekZkelAwZm9VdElGUmtkcmlkci96Z1Nn?=
 =?utf-8?B?M0RZM0NDLzJqR2hNdjlhM2FiWFViSk5IamNGNTQxZFJYZ2gyaS9QRjR2bVF6?=
 =?utf-8?B?b0wzbWFvRzJGcGFEU2drcXFkRHFQUTVyVTBXOE0xUHI5eFpJRitRbUc4V3lh?=
 =?utf-8?B?Z211T3lJRHpBNzQxVERqSUV3OWJvR0ZGM01ueDNVS0xER3RCTzRWd2lzRzZD?=
 =?utf-8?B?TTJJYVRxenB1QjdTVDZuS2N5bTBNbnRiOTA4ZlJoQVlqVktMVDN4Zy9kVXVF?=
 =?utf-8?B?R0ZkVEZwYWdOR20zZ295T3N5TDlzNVV6dXZWNE9vOEliSzJrOHRrSmFXbExV?=
 =?utf-8?B?bnBVQndnSXNkYS9IeDBoL1FNL29BVlVQaTZadUhGTWpkcnFpYzhhQmxMMm9p?=
 =?utf-8?B?cFU1SE4wNFVFWGlpQmR4by9rZGVtUU9QcVZTSlRZWFBobE5vR0xVajJxNlFx?=
 =?utf-8?B?d0dyZTZBcmhvUXNjQTdkK29GVm11akJzeWxxTVpQZVJDQkx1b2EzR1YxckZP?=
 =?utf-8?B?MEY4Q3c5Q3ZKcGpNYnN3SUxlNW5LQmJ6eHdtOVFQazRaNFdORkhzbGpzZ0ps?=
 =?utf-8?B?Q2h5eEFza3VnSmRuWDFWYnFLRzl0dFpxaURHTVB5UHZMRGMxQW1SeHR5dzZJ?=
 =?utf-8?B?WGVBcTNNNXlzOUZFbjhhNWJ1SEhwZjFqWU1iZ1p6aGtWQWhGSzNJNXh2Qm9k?=
 =?utf-8?B?YWwyclQybTU0bFVqeDJqc1lQVEkzMWUrZnVaVW9HQUYyUmVHUXU4Rndub28y?=
 =?utf-8?B?VVZuZWxwaWFqOHl4OVRWemNLUmxqSkQ3V3V3NXJoZnYwOGIxSXh1YXo1S0Vk?=
 =?utf-8?B?OUZBU1puVWtoVWdYb2I3L1BNQWZNNU9PcTJKOHJwbW16aGMzeEZDNThxUHFh?=
 =?utf-8?B?WkZmVjNDZGc3MGhkdFFYMml2SUtseG82WUQ4MHduT0h4MnJkbGtyallucmdk?=
 =?utf-8?B?T3J3VldsN2s0TWUrVWJJTFNkSExnNis1RjlEaWpZbS9vYW1hNmx4ZUIzbUFh?=
 =?utf-8?B?STcxR0tIQk13VFhnamQvRk5sNkw2OVJ2MzBaNkdnQlBoRnhtcnB0VEtISHF2?=
 =?utf-8?B?NFR2RFpZUVNseis5bnNnSmVKNFVZeWtwQnlwOFFNaVpXT1pWZ3Z2dGdMZG0w?=
 =?utf-8?B?M25MTFdndWd1RXhsL25JV25LanJ3WjlKcHRlbzRHQmJnUTZrQmFKYzVMclZS?=
 =?utf-8?B?VkJUN2dPVXk5bUU4VC9HNGVvUEdKQU8yRHBUZkd0RkhlNlVHMzhXVVU4Z2RM?=
 =?utf-8?B?ZElLdWpVNms4LzFWR3RrdmJnRmJEbWRDNlVGRmtCNkN5ZVpBcjhsTVR6TEZm?=
 =?utf-8?B?M1hrT00xZjJQQXVWcHpiMTIvaXZsMjVBdGtaYVBQeXpQVCtXeVptSmJjSy9E?=
 =?utf-8?B?cCtuOWZoclgxcUlVYjFqQzJGNzhab3p2MjZXbG13a2RXdGZOcU81TFZpd043?=
 =?utf-8?B?SXFlb1I3cHFQZXd3WWhPSVFBekpVaEFlWWhOZjV0ZSs2T21CMWVadWhDWG5j?=
 =?utf-8?B?bnlreUMwdE9YRzdqdjJrRUw1dUp1UVA3cnJGcVdGUldsSUtONEM1TlRTSTlZ?=
 =?utf-8?B?WjBoQ3ppbG1tQjUwcjF2aWQvSkhLKzJzTC9YbE81bCsxZVFEVldJeVJLOTR6?=
 =?utf-8?B?WU9VbUJTZVJDNkZud2dVTTVkdnlyOEZRUEFsSHZzMVl4eTFyNzRsRzkzVmVi?=
 =?utf-8?B?WGNBRVVMamRPc2VFRHJzSlRWbGNVRzRuSTZ0djNmQVRLNGhNS3pwN2ZhUXhF?=
 =?utf-8?B?VGNKS3ByQTNHNXU3TjI5UG9SRnhIVkd6OVEzT3N1ZzM1VHhLVXBRc1FiWTFn?=
 =?utf-8?B?N3ZhakFOVG5VRTYwMWhCaURNN1cxWVFMSFpoZTYzK3dEcTRtSTFlSUdiQ2JG?=
 =?utf-8?B?aVVBemJodzViNTZCYmtaMkVLcFdHRHhrL2t1bzl3T3lZaTZPS0ZCczkxdVp2?=
 =?utf-8?B?UU1neFYxalQ2YlJFbE0xaGVlT3dsWm1pWit1MVcrVFNPY0xCR21ZM0RQdmVU?=
 =?utf-8?Q?yLS2DoLOsjIjcC94=3D?=
X-Exchange-RoutingPolicyChecked: ay0uCltdRBCvE7KmLQLrpiHxaS/JXcyTs3j5yEUzCnOCyRbPrVVMG+g68tZboaksuDHfZOcvSX09OpYE4lmvRcdHhEGM1kblVk1RmGpnflyBe3J/nstV6iBjqfT28lDA6NxGoYmRMuS+9WHxyg1cwMqBO+z5uAp4iSJl5tykyyGEW6qRngBoct4j1qqVal0N64dmubADZSVUYPcSUG2A/D4ThcNHrZUoTp6omlU4XwuKlkrq0FpHjH+pky8GqcJ8oYer2rYHVy4NUI1u1hOJiqHWx/pt5kFfhrMcO+lzQu9dCBkzr9zJXBdHmVZQfjgqoSUrCt+8CTaIIBrVeXnU8Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9df2def3-f59f-4992-ccc8-08de8e9da0fe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 20:47:59.8287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +VlUdrAzJ6k9n19J/1GfS4wUcYoPCn5PqQP53WUKAm45N2NFtDtbQSEr0sdY38VcqCCLtJXoK2RSZr7wY1FQnG1T5nykS1TOBpoBDbT85rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774903695; x=1806439695;
 h=message-id:date:from:to:subject:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qh0wZUkK4k+aLFwp6011IB190b194L50jhVaU5eanms=;
 b=dRRSxFGd1ajLnxYVVEsieM1uoJ8bgI1XRJ4wVfm0jyaaAUjvha4Aw6K+
 /7VrKHAAyG8PdjfVl0kqjroOinpN7RYo/XALxOPhT96pzS93iLWptXrm8
 MMUyUhH1pHy3AhskIHt4gM46Lecka7Ll5dyY2ASmYPptitPFxTsNEVmEB
 4FfY8qPKGRmzsaE23PdrDvp2L7zHymIJBMDOQfzy8LNrJOG0Ucf7lFCQA
 ynoXzrVZj5lLqR3W00scRUI1Lp54ngyxiHhUc/Axd0/MT3ZTjwhe93YKa
 L1Y8qbIuwJb+S3qWiSa6LpMIM6v9QZNRM6iWBTCB7TOwOdtSvaduY8PZO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dRRSxFGd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 4/4] drm/xe: switch
 xe_pagefault_queue_init() to using bitmap_weighted_or()
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ynorov@nvidia.com,m:horms@kernel.org,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[nvidia.com,kernel.org,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,intel.com,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim]
X-Rspamd-Queue-Id: 817B136124C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/28/26 2:57 PM, Yury Norov <ynorov@nvidia.com> wrote:
> On Thu, Mar 05, 2026 at 02:40:53PM -0800, Tony Nguyen wrote:
> >
> >
> > On 3/4/2026 3:43 AM, Simon Horman wrote:
> >> On Sun, Mar 01, 2026 at 08:11:58PM -0500, Yury Norov wrote:
> >>> The function calls bitmap_or() immediately followed by bitmap_weight().
> >>> Switch to using the dedicated bitmap_weighted_or() and save one bitmap
> >>> traverse.
> >>>
> >>> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> >>
> >> It's not entirely clear to me why this patch is included in a patchset
> >> for the ice driver.
> >>
> >> And it's also not clear to me why, but allmodconfigs - fo4 at least x86_32
> >> and x86_64 - fail with this patch applied to net-next [1].
> >>
> >> ERROR: modpost: "__bitmap_weighted_or" [drivers/gpu/drm/xe/xe.ko] undefined!
> >>
> >> [1] 2b12ffb66955 ("net: mana: Trigger VF reset/recovery on health check failure due to HWC timeout")
> >
> > I'm also seeing the same error and no apparent reason. Since this doesn't
> > seem dependent on the others, I'll take the other 3 and this can get
> > sent/resolved separately.
> 
> That's because the symbol is not exported, and the driver is build as
> module.
> 
> It's already fixed in -next: 95d324fb1b484 ("bitmap: add test_zero_nbits()").
> Let me know if you want me to send the fix as a separate patch in your
> tree. Or I can take this patch in my branch, if you give me your tags.

IIRC there weren't any dependencies on this patch with the others, so I don't
see a need for this to go via the Intel tree. I believe this can submitted by itself?

Thanks,
Tony

> Thanks,
> Yury
> 
