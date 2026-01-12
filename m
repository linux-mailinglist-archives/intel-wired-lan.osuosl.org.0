Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9EED1252B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 12:33:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 467E661B09;
	Mon, 12 Jan 2026 11:33:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdAvQI0nvg9p; Mon, 12 Jan 2026 11:33:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A915D61BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768217620;
	bh=6oLy+7CzZiysMoL7oYtyQSXdLjUCrRs+sF7t4ujKSX4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jn6nzr/Uzm7kZGHHMZ7F/V9miJGxoO/go8+JNmBOxIBLEVjiW/GHCMpK4aNUlLxuP
	 WcbutWbxL18PlXgxqPsYtUt2R1VA6ENTm28a+Bg3Oydm/KwLw4JOemRczGJgpIvSAp
	 0sKt/c3kdcGCeemNd1qHOSovw+DyDiIfKzMaeGgqyg6qO8YF9k9VkAkqsG8xq5aYCy
	 0SsD3ay+frx4cQ0zvw5mqnPnYJ7Hk95evQU8Uau1bver0XQvhUlBEPrC+UbpAFa0Ym
	 Gouu4+lP4woTVo/+2MHuJVVYPtezT+Qml2Dy1VZyYJYi0Wa7wpVItDIvIKXAPXPEik
	 DVLXKcfNX3Yqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A915D61BE3;
	Mon, 12 Jan 2026 11:33:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DBDD18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3FDE41DAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:33:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLrXYdsHSN77 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 11:33:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DAD9641D94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAD9641D94
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DAD9641D94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:33:37 +0000 (UTC)
X-CSE-ConnectionGUID: axd5O2/oRe6bxmcU9UAX+Q==
X-CSE-MsgGUID: 41lzT7mpS8C1ovUqWHbmjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="68694161"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="68694161"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 03:33:37 -0800
X-CSE-ConnectionGUID: EUSYLAvGSm67UOBnLsRoCg==
X-CSE-MsgGUID: ED2Pj74gQ82nOHd3K5SSJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="204085432"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 03:33:37 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 03:33:36 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 03:33:36 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 03:33:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pfKGuz4A43QWPI/kaLJOzE4nrAL/SOUzGUHdX9dmfpKQC0IeEaGNCXhxSjYY6riz6WCzkuXgo04cnIcDVBUbEZ8s78knQp3L46bRXES/aL/f70AxuoD3Bnp8djdt2aaS1k7UYh9rId/OXZzaSfluvfp3PdeHyt8o+cwDJ6C50A7+6JYW1Onk+cixI56z5xs6wWFRC1vaDXqZ++HMKvfeNgmnqSDzmUdBq3E+BYM+Q3hztPT6hxRyNOacHzd53gUNyFKMnOYfBzTnthf6IzGlMW2PVqx2yW5hC0E0qJLYoD/iar2MBAxFGiRnb9s+Paew4+r/O0Bpwm7sGp05O0eFXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6oLy+7CzZiysMoL7oYtyQSXdLjUCrRs+sF7t4ujKSX4=;
 b=VjbG0TS+D2I7Iyi1NHls9VWiuhR/JmKNwV7Tw+3rFrK4TX4smYvS6mKPnON08JaRAlx7osV7sfulGyX0TXEDiDbj3xMOYZAa/fJvw9/UZ/piuVO/1YwH1ORobqadIArebpMmk2Q/7CdHM+juXAbso+GmSqno+47xUPvgWP8he2OeR6AbuNyNIpIbBPbYK8FcB1Bf5/trTiDzyBiF/I9icvqLlcUbs0t/0bR7uzXRvGK1e6sQS3071sHTWHTTGTLMqwbsQTh6xWrKY2ha1walGLB7gYKDodnBZSMjYzQwdi9lHdVkzPCRBVHjXT0scDFdfDf0pTOA+9FKWg4I8+2YXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPFD6B8A798D.namprd11.prod.outlook.com (2603:10b6:518:1::d51)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 11:33:33 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 11:33:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Sitnicki <jakub@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>, "Leon
 Romanovsky" <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Mark Bloch
 <mbloch@nvidia.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "kernel-team@cloudflare.com"
 <kernel-team@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 10/10] xdp: Call
 skb_metadata_set when skb->data points past metadata
Thread-Index: AQHcgnTqR65ixBekoEaVvsMIjXAEMLVOaZ3g
Date: Mon, 12 Jan 2026 11:33:33 +0000
Message-ID: <IA3PR11MB8986D2E7114D8F4D0DA852EAE581A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-10-1047878ed1b0@cloudflare.com>
In-Reply-To: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-10-1047878ed1b0@cloudflare.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPFD6B8A798D:EE_
x-ms-office365-filtering-correlation-id: 8b35f4a4-3585-4e28-1021-08de51ce6b14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dnFqSTJGOUd6NGl6aU9SdnVuWWx0d1YxL25wTjJLc3VIbWZtVjdFRGMraitq?=
 =?utf-8?B?dmZrZlFpNGVYcVRkOFRuVldHRk56Z3BIbmoxcXFpVUxnZW1LTmxUVkMwQnNt?=
 =?utf-8?B?eEkwS0E2Tk5QWnhrMFZiV0wxa1cvd2JkNkQrekkwSS9acXBwemlmczlhN0Jp?=
 =?utf-8?B?TGNPcGF5RENSOEtZZTF0QVRVM01xakJ0WGdOSEg0SFRvSEkxeTdabm9RT3dX?=
 =?utf-8?B?WFYydDdJWnE3dlZNVVcvZVl6Z2FOZ0t6ZHU3TG1BbUx3MUhqYnV1KytrT2do?=
 =?utf-8?B?RGJqUWRlUXpSYmVRQ0xSaExWZG45cEJoV1VJM3EzZGRRd0VWYS9lVTZaZjRv?=
 =?utf-8?B?ZXFTVDZYVW41RTRGZWdOeC9vRzRTYWI3VG10b1ErVjlIeFQ3OEZHTzBlT29O?=
 =?utf-8?B?elU4eEVIMXliZnlDbTg4Q05QV1Z4SDV3bVZqeUpJN3g3OGZKdytqNzRwd0Y1?=
 =?utf-8?B?em9xUkQ3ZkJEZWs3Y2xFSHZxWFZYVHJnWnhHNFM0U29WdkZEWHhkQ3FVc29h?=
 =?utf-8?B?Rjh5NlhSMElSN3o5dGVENGFybXhtdHFzQUF2Qm9BSEUwYTVVbjNIK21QL0xR?=
 =?utf-8?B?cXlxU1BnMDhGS2ZiYi80NitKei8yRXlnV29pbklJR3NYQytTQTJqWEUwcW4x?=
 =?utf-8?B?QUUzeFd6QzRtRWJDeVk3YUtzdVExVHhyNzA0b1k3dENoZlJlYmdkWENKMlRj?=
 =?utf-8?B?YU9WMm9KRW1rbUhyOGNrZ1ovTDJ4RkpMOXNvdktuTUtSMHFQR09mRzF1cUJo?=
 =?utf-8?B?TXdEeXhZUTdHeEhDREdBR1F6NWVNUmtEZDNDaXlWQko0MUtzVVQ3b0kraGhj?=
 =?utf-8?B?SG9iQUdFTytZTlRHT0lrQUN5a2ZlMm5URm83N1QwTTVHS1B2OFh2M0czbzA5?=
 =?utf-8?B?NzFlY3JBc2J6aGpyUnVrVXJmTTFraEprUXJCYnNYc0greWhFRXdneFQ0UDIz?=
 =?utf-8?B?Y3dFU1EvVTFKYUJRd1VCVXFEYVpaT0Q0dWwraXdmL2tqSjZWS0lka1FGdnhF?=
 =?utf-8?B?SXNydVNWbTZXRWtUTWZlOW43bmtOaE54NTRrRmxYUFI1VXJuUXFpaVVQaEIz?=
 =?utf-8?B?ZWVFc2lMMDRpTVhuNTEyMUJTM0xDMzdaNDFuODVveDF6cm9zdjl6N0lKdDNq?=
 =?utf-8?B?YVhjVjJ3SDhyeXdwYWsyU0ZqZUFqQVVPakZ1TUhjWEUzVTJhOE1SZ1o5d0p3?=
 =?utf-8?B?Vm9wdTVHMjBQSkFjZ04wMzFpK1A4WUg5TUhOaC9CVTRzK3h2WlI2NEZCNy9S?=
 =?utf-8?B?aGFselVlblhpbkwvWmtLWWdoeTF1RzdqZlgxWkRnZ3h1SWg5WWVJSlU4ODdv?=
 =?utf-8?B?NmhUa1JLRU1NTy9zYzU0aWJiTSt5aHBvczNxdVlCSDU4akY3RlhlQU5ONUVN?=
 =?utf-8?B?K3c5dmFTRXA5dkQ0T3psdUFncjlJVk1QOGQ0L09NTVF0M3J6MExVbFhIckMy?=
 =?utf-8?B?a01VOFgzUEEzTy9BSWZKK3VjWm1Pdm9wZDNEeHlucDdQNEc4RHZjR0dyWGZv?=
 =?utf-8?B?QlV5cGZIZ010c0grbERHNW9oNmlReU9HMUhMZDVnMXA4MGZzZXZ6SHpiNUZV?=
 =?utf-8?B?RkdBdFl0R1R0a0xrUXpHK2VkMHVsanpjKzJLMnFxNXlGVDc5elpjZkUraXZo?=
 =?utf-8?B?eWsxSVRkMW9aVUpXQ2RGQ0ZtK1pKYnErWUM5dTQyTVl2aE8vakhORFNXdXhZ?=
 =?utf-8?B?YjBUbHBCRFp2dFJVdisreVl4elNaTE51TmlMdGJOaklodHJyR2RlemVVMVdE?=
 =?utf-8?B?ei9RcXA5dTFDUHdvaUE3ZVowaC9nakFZb29NbVcrc1ZKYjYrczhBZ3ZBVzkr?=
 =?utf-8?B?Z0tBMm5QdEU2RXJRdmlxVzEzb0ZtRzFPTU5IT2VERWdyL0FMZWkyUVBrcTkw?=
 =?utf-8?B?aEx3dFpOdEZDZWNuQytRR01mMmQ0ZlhGUDliOHdKZGZNRVQ5VmFrR0grdE9x?=
 =?utf-8?B?WjFVZEY1SFFOS1BYNXF6TUtxRHE1QUV5cXhWRGVuMHNDK3BEQ3NGODB1RTJK?=
 =?utf-8?B?anFVeElqb0FReFp0Mk5DcStWZDE1T3ZRcDdLWXI1WlpJdHhzZ3h0aVkyK3lG?=
 =?utf-8?Q?qpZLvj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzU2ZFRrMHVQSXpiTG9sWlVhZjZtWUNJR05JTWpMOVRnei9RcUwwazAyNFo1?=
 =?utf-8?B?NHlpTU9ZZmt5cTgxRDN3TmNSNWpieUF5RzRPZVNTTVdObzVIVFd1WTU0OTVh?=
 =?utf-8?B?N1pXU0hTd3RQa1g1TnVFSDRWcXdVOElNUXlPbW12S0JaZGtjL2NmMmsyc1Bx?=
 =?utf-8?B?NHd4aVJVam9aVExXaEFKUHE3WGJZajRUWGc5aUlwbXFtNGE5Yk5DcGVSMkdT?=
 =?utf-8?B?R3hBNHE3WmlwVldLMTNFWFVzWVo4c24zTDZXOWtjcUM0Nnh4WlZBMG9sdnd1?=
 =?utf-8?B?WHUvSDNMK29ydWRCaTdXV3pka0wzMktFM21vZk9JNUZUeXNIdXdQYnArVTF3?=
 =?utf-8?B?NERiaDMwWGwrMUc1NHhZZUg5dzVDTjhFbFdLV25JN0RiLzZSTzdhQk1JV1dG?=
 =?utf-8?B?N0RCeXlCUzM0QWZmNHh4Q2ZTeXM5SExXejg2dS9zYTVVWjRuaDdRWmtqMWhY?=
 =?utf-8?B?ZVFoUXg4M2RUNUJUWHNtR2dPaGNXakRqVnhxa0h4aHNUMEJTRTFhZUNLcUZG?=
 =?utf-8?B?VzBTVks4WU5sRzV6ODd1VnpkMUM3SVdyeHAxRk9FR0YwZm9vbHpFWlVON29D?=
 =?utf-8?B?Wk1VZEFMTWNuK0M3cTlTNDBhS01wcm5lQW8xa2dvazdnaFNzYldoQlRBamRJ?=
 =?utf-8?B?MUZPVk1yck14SmRNOTZaZ29ZUkF5U2FXRmZFNjJCSFROSGYzMVJFc2RqNVdy?=
 =?utf-8?B?VnVNcVRFTEQ3d3dpVTh0dmRlR2FWK3NOV3pBZFNuNi82RlE3YVFqQ2Y1Sndt?=
 =?utf-8?B?ZkVsWUNYL2M4MXpZb1VEaG9sdWFXYkIwMit2aVpoa2dpanFmY09xS2kvQUdG?=
 =?utf-8?B?TW1GcnU5azFYU0tVcXVsWHRDa1FjVUdMV0tOUmVsL0U5RVZxZVp2dDNRUmIr?=
 =?utf-8?B?WDZoNlpZMzNKMk55VTlleENWSGRtMENNeHRrQ2xyVXl4ZXpkd2F0M0N1K2dR?=
 =?utf-8?B?K29mQzMzTkY4ZEFhb1lZazlPMFlOdS9mSEZIMGpvVXBhMEZUc21CMk5SOStu?=
 =?utf-8?B?NGVmVFY0b3N5WFJ6MWhpQmJ4UU1ZWWpPRWxnTE05UzNoSnp1bnprK0FXd3ZK?=
 =?utf-8?B?MUNObktSZStsVkpOSzIyOU1SZUFub05aSWNMS2xFVGtUMHFzTEN5b29OMlhW?=
 =?utf-8?B?bndXWUpkbkhuZnczNGdSOEVMaGZjOHBUeW5jQzdIR0h5aUhQdXFNSlBTcEIy?=
 =?utf-8?B?L1Z4MldrMXJZUTd2cXdobUhwNTFXY0c5dnBSYlUrTlFTWHRVWDJURUp3Ym1s?=
 =?utf-8?B?Uy9VMVI4d0hYSDJTeElZY1B6N3d1ajV4MGprWG0vL3JEc2NxMU9FajJIY0ln?=
 =?utf-8?B?T241VHduVW5SSHl1VXRUTkRUcnkwWERXN1VHOWNJd3V0Q1RUUGptbzE3MmRx?=
 =?utf-8?B?Mzh6SzNkQ0U5MEI2VGltc29rZEVQY3FZSU9oWkovRVlsTVdxNVg5M0FZM1ZN?=
 =?utf-8?B?VzVkY2JCSjlOM0VPc3M4eFQ5a3l6RitNOWM3Yjk5azI0Y05yVDU5VksyeGkz?=
 =?utf-8?B?K3FaU0J0WEtiN2UrZTlEcjdzUkZBeHY5UHhTeVVZZ1dIVkR0SUlzbmI2Ly9m?=
 =?utf-8?B?blQ5TXI5N0dnOWMydVZHUWdoK2EwR0F0UlhRbW00U3lXSENYYmRSUkFMK2FV?=
 =?utf-8?B?aHo4bVA2TU5KbGt5SFRqT2FpelhFM0NWSkRwUXFWSlNzVE9SNEZDVjU0cUpm?=
 =?utf-8?B?TXpnQ2dhOUluSnBLdDMvNjZxRDBDOTNiNWNuN3Z4eDJqVm1oR0ZqZ2lhV1hI?=
 =?utf-8?B?NHVaUzlRQTVkL0I2N0t2d2kwUk5aQ1Qva29hc2s4QXR6a2JEaThVbUM5TDRh?=
 =?utf-8?B?dTM3NFh5c0MyKzR6ajFNajRteFczY1FMQTgyNEhvVSs4VFZydSt5Q0xWU1U2?=
 =?utf-8?B?Vm5UcTEzMTV1MWo1K2pKK0hoVGNDTWRPTkp1eHphaG1sNXZkOUl1ZWQ1K1F0?=
 =?utf-8?B?QjNabng2cWx2c0dGQ0VSR0dONTJtVmJaRDkwK3BDYzhrZ2dKbG9uaTgyS2Fu?=
 =?utf-8?B?K0p4bld5TGxYbElZTnlkc3MyL09lWXVKL1gyRi9aMGZqVUR4Y1ZGQzJhMnlh?=
 =?utf-8?B?QklLaUhabkt2WFErRkxGTWJ3Yi9QMXNZdlNLdmk4VnFNWFVuNEYyUFBGdVhG?=
 =?utf-8?B?RFlsbVRGbEFkMzhmYkJkdkRTd0NtTXpmajFMVWFiN1lURHg4cEx3T3JBd3VH?=
 =?utf-8?B?TmhQSHFQaFFEQjMwVkt1ZFFXTThOZFNaTEJGQ09ua1gzRWdPVXp2eTBUV3ZU?=
 =?utf-8?B?a3M1dDM5c0gyTXRyVkZFczdZbmRGUSsya21qelpXWXU1QmY3K3dGRTRPRDU1?=
 =?utf-8?B?MG1HbThIbm5OSnM5b3JvYXlJQ25Nd00yTFpLZ2phRkZ1OVowcEdzQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b35f4a4-3585-4e28-1021-08de51ce6b14
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2026 11:33:33.4511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FIW0tvzk1iiFeR/sscqN5bz6o7YuhkyzxnG+c38Beft2WVAB6L0oB8pY1w4CvygffF43FKo52lTs9/w9w/ZikeajeuzEB0xIFrE0r8kQexc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD6B8A798D
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768217617; x=1799753617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6oLy+7CzZiysMoL7oYtyQSXdLjUCrRs+sF7t4ujKSX4=;
 b=dFGM/l//2ED2zMqXj4DJXVEfuzvS8nU0+3epGrnELuWiA65+yeidB18u
 xS1kfRTWM7fgKi6c4RgTQuPTsB6NtKj5gDYJSWW4HaiV/ZyzPrOKO4WyH
 Wdz7+JFZKcvq9jJJhsvVzqi1ropKkoun1pGikURGHu5Xmw+PhCuCwt+p9
 URvwmt5OEdlyLlV7ly9euapPmRETIfbCEo7hWtXdO4RXt4qxgzT41vVQZ
 ZljBNoU8YsYSqb6kZfeJmeFj4BvZrXGCwTKjuRcxkItXBQ9S94XOsLjjk
 DaGpT6VYeLod7n9q3i05ZZP6X4UgyK0KhxyLSWhB7G6gVTr4DY8Wc93dx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dFGM/l//
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/10] xdp: Call
 skb_metadata_set when skb->data points past metadata
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFr
dWIgU2l0bmlja2kgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBTYXR1cmRheSwgSmFudWFy
eSAxMCwgMjAyNiAxMDowNSBQTQ0KPiBUbzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBDYzog
RGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxl
ZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBh
b2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2Vy
bmVsLm9yZz47IE1pY2hhZWwgQ2hhbg0KPiA8bWljaGFlbC5jaGFuQGJyb2FkY29tLmNvbT47IFBh
dmFuIENoZWJiaSA8cGF2YW4uY2hlYmJpQGJyb2FkY29tLmNvbT47DQo+IEFuZHJldyBMdW5uIDxh
bmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6
ZWxAaW50ZWwuY29tPjsgU2FlZWQgTWFoYW1lZWQgPHNhZWVkbUBudmlkaWEuY29tPjsNCj4gTGVv
biBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+OyBUYXJpcSBUb3VrYW4gPHRhcmlxdEBudmlk
aWEuY29tPjsNCj4gTWFyayBCbG9jaCA8bWJsb2NoQG52aWRpYS5jb20+OyBBbGV4ZWkgU3Rhcm92
b2l0b3YgPGFzdEBrZXJuZWwub3JnPjsNCj4gRGFuaWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFy
Ym94Lm5ldD47IEplc3BlciBEYW5nYWFyZCBCcm91ZXINCj4gPGhhd2tAa2VybmVsLm9yZz47IEpv
aG4gRmFzdGFiZW5kIDxqb2huLmZhc3RhYmVuZEBnbWFpbC5jb20+Ow0KPiBTdGFuaXNsYXYgRm9t
aWNoZXYgPHNkZkBmb21pY2hldi5tZT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3Ns
Lm9yZzsgYnBmQHZnZXIua2VybmVsLm9yZzsga2VybmVsLXRlYW1AY2xvdWRmbGFyZS5jb20NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IDEwLzEwXSB4ZHA6IENh
bGwNCj4gc2tiX21ldGFkYXRhX3NldCB3aGVuIHNrYi0+ZGF0YSBwb2ludHMgcGFzdCBtZXRhZGF0
YQ0KPiANCj4gUHJlcGFyZSB0byBjb3B5IHRoZSBYRFAgbWV0YWRhdGEgaW50byBhbiBza2IgZXh0
ZW5zaW9uIGluDQo+IHNrYl9tZXRhZGF0YV9zZXQuDQo+IA0KPiBYRFAgZ2VuZXJpYyBtb2RlIHJ1
bnMgYWZ0ZXIgTUFDIGhlYWRlciBoYXMgYmVlbiBhbHJlYWR5IHB1bGxlZC4gQWRqdXN0DQo+IHNr
Yi0+ZGF0YSBiZWZvcmUgY2FsbGluZyBza2JfbWV0YWRhdGFfc2V0IHRvIGFkaGVyZSB0byBuZXcg
Y29udHJhY3QuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBTaXRuaWNraSA8amFrdWJAY2xv
dWRmbGFyZS5jb20+DQo+IC0tLQ0KPiAgbmV0L2NvcmUvZGV2LmMgfCA1ICsrKystDQo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvbmV0L2NvcmUvZGV2LmMgYi9uZXQvY29yZS9kZXYuYyBpbmRleA0KPiBjNzExZGEzMzU1
MTAuLmY4ZTU2NzJlODM1ZiAxMDA2NDQNCj4gLS0tIGEvbmV0L2NvcmUvZGV2LmMNCj4gKysrIGIv
bmV0L2NvcmUvZGV2LmMNCj4gQEAgLTU0NjgsOCArNTQ2OCwxMSBAQCB1MzIgYnBmX3Byb2dfcnVu
X2dlbmVyaWNfeGRwKHN0cnVjdCBza19idWZmDQo+ICpza2IsIHN0cnVjdCB4ZHBfYnVmZiAqeGRw
LA0KPiAgCQlicmVhazsNCj4gIAljYXNlIFhEUF9QQVNTOg0KPiAgCQltZXRhbGVuID0geGRwLT5k
YXRhIC0geGRwLT5kYXRhX21ldGE7DQo+IC0JCWlmIChtZXRhbGVuKQ0KPiArCQlpZiAobWV0YWxl
bikgew0KPiArCQkJX19za2JfcHVzaChza2IsIG1hY19sZW4pOw0KPiAgCQkJc2tiX21ldGFkYXRh
X3NldChza2IsIG1ldGFsZW4pOw0KPiArCQkJX19za2JfcHVsbChza2IsIG1hY19sZW4pOw0KPiAr
CQl9DQo+ICAJCWJyZWFrOw0KPiAgCX0NCj4gDQo+IA0KPiAtLQ0KPiAyLjQzLjANClJldmlld2Vk
LWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4N
Cg==
