Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PoS9OiMjMGrROgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:06:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 330216881A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:06:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7tcHmkHw;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4E38411B9;
	Mon, 15 Jun 2026 16:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id slQLXcXKjb7v; Mon, 15 Jun 2026 16:06:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20740411F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781539617;
	bh=wTjuaGxLlz0Z0Tjl6oyw0IdL7r/Ab06NUm0ZmNpL8wU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7tcHmkHw2GPTQO0IoorStxSdHlqx9rK2Z1hUuF6FU7z8XtzmfvbAWP+yFLnm7Xeyz
	 6ADKUmJyZGlJJ0mv689Tv5S5C+Vg63ecNXgWcwxqSTNNUyrPxTMkqRk/4GAtNqz/uD
	 tMRFb5kzvGuetgpVG8flMgzN9E8yIOppap3gYzMiDZ32utC60kHjCgFFfNRKkf3Exw
	 vqUS912dInsRBK9shn1Ov8qgSgA4EnvrYVCfhvyVwhUEl3/NrrkptuPVAkYJ/ZhX/5
	 6Q8EJctm1FIe1mUiVLJReQRb19Lf1x8Z3ogQSo3R/ogOD2h6y6uMWCIp14XIN8t71F
	 TcS+MxgQL8AnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20740411F8;
	Mon, 15 Jun 2026 16:06:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D731DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 333CE402F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4j1TxFVnZmMf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:06:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 264CD402EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 264CD402EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 264CD402EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:53 +0000 (UTC)
X-CSE-ConnectionGUID: Mdcil9bsRUahuy2szPkgSw==
X-CSE-MsgGUID: MYmBj1WiQ9i4TjaSqrxtXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82026209"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82026209"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:37 -0700
X-CSE-ConnectionGUID: OY/7BQpyT5qXVBBprHx+wA==
X-CSE-MsgGUID: Z8GEIfdOR7GpIhUMf2BPrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="252623084"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:05:36 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cGm9CFQ3bBu816ik/wBR/NlVfV+WSbzFQHFZFrD9J65huj1KlRRV56hCN+nityTE4/D0Y/3SxGU/wC96FTQSE9TJO6gXyWH1c6wzyMI96/lOsJDXUY76t+EVt3GEWXoZOzhy/WmLcnlScRIOeO1IwsYyQD5btRcH4eg+tHooujl8ioAxUjr6rkCXA8d065V+2kWcuPjegUmcnnB/XdnVbGvruPx7CsxxYT16NiovDX307lP7BXsB373O/o6nOOU8MdKyIZqUjISxL9VJQwvYpOQ83j7WkXt0PtojaYoB/UcRHpmFPVZJbqDsFODTqJEK6gBfgqAIWYEFisFZ9cbg1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wTjuaGxLlz0Z0Tjl6oyw0IdL7r/Ab06NUm0ZmNpL8wU=;
 b=DdFxl9TbBHlyFrM3C9kJJJTtJbgLgNoHH5YLOB/gH3FZKCj5/mHEOd+1w3NLXviSDFo1jZIh/vmfDlAUxsaJj7kMeb6UV/WW9oycvk0KSqKYNXuqSB3VQ5tl1x+zma8Jx0h0AnvgZhKEcjG+C88wznSzvwMw6WzNHrTI2ECW/pGkUl32AQ7M5AMVxncPLoYQa/zb+JKrecTpAq7xBWdd4pkOKpXF1PBXfU0XcjHqSowDZD2CR9czHoywIwZAnO3i4hIXkyf0V8WY26h92ADGWUJy821I/K+1daE5nVMpVbHvQAy1HaceMJURSbN2LmJSwWyn9Aqi7IHdoozMfSaxgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PR11MB8714.namprd11.prod.outlook.com (2603:10b6:0:b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 16:05:28 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:05:28 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/6] ice: remove ice_agg_node
 wrapper structure
Thread-Index: AQHc8iT+zYHCjzT5UEWHDeoFP3u6jrY/0qsg
Date: Mon, 15 Jun 2026 16:05:28 +0000
Message-ID: <IA1PR11MB62412A3B4077E9AE9E567A9F8BE62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
 <20260601-jk-cleanup-vsi-aggregator-nodes-v1-4-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-4-36d6ecbe5ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PR11MB8714:EE_
x-ms-office365-filtering-correlation-id: affe85f1-7d2f-4207-7bed-08decaf7eb5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|56012099006|4143699003|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: KN00WtMDbHeQVwarXlpwR3gT2uAzqU0gqKP5l6DZJLSgIF6ymwvpdEz4Qf4oovn5wqwnKDjTFqFWwUS7FHeYMGkXvx7viaoAWIAErEb/z8g6dIrEntCywWjuFr5D6hNRa2MJBg/tB/zQYoefupr3DU264JcssvB5lejbakLKnGmTLz68uemynIgP3ypobDz8EwQg9u/cNiG81RF9xR2AfwUkeayJNn+WeZJ3Il1xDDeESWatQ0ol2QEkz5a1d8Ql0VDPCvp5A6O8juXWxN8vQbCh9TTmrSZF4MO/x2lYuf4hgNElmPuP/Wnh9UsLSGwYH+UwhR/n+WB12N5MEowwPSsdVhIsO7kD2Zv+fSzy5ReBM72ZytHnrdJKNpaFSce100b4UP4/NCXKCLwSycR0dP8os5zDE/Uvt+DOQ3qmPbpYUk8sHINdZ5jWFAdYSEvsZ166xacpqFeNR5S4eFYnqrKzY+ZBBfTOwc+hplcaGcgAR1Z+FHHZo6ujCyeqzVilwCe83jOxLo2c17iH1IbSIRrkLQzWQHK7oTJ8uSRPmocyfiX3RN1Dv6AxiRiH5o6+k3bYgb67N2VgNWfuc1XH6I4etm5oFTZv2tMtFadP3OyCnrC2F5hllV8rJ8vhAwOpWBhGM1X1YwvKh0syepWSB+ceLa3ELPaUUt2Mbb+0gOVXd0C89NJSXst+VdG7AaBM4EghTTsr7uMTufCg7WdLwCsAbRTnnXcXjsTZTaM9NFwFVucRzbEHTqIlqDB5b2qs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Njh3aVRVMnJJVzdPOUxzTjBHMWFlQWViQkhFcWRZSldpSU12NzFaV29SemJ1?=
 =?utf-8?B?TFRHd3QvVlM5YXJqVFN2dDVoTHZ5bUVjMXJVNkFmd0ZERnB0QldibFdiS255?=
 =?utf-8?B?TG1UNm5Ob3ZCeXdUdk9YbWpCNEhSMW1OcDV6eC8wUExLTFBKaTNEc3ZKRXo2?=
 =?utf-8?B?ZjNCSXcwYU1IZFhJWGxQNzY3WnlMSVR5TzRwNktORG9oazcrRGlmMC96cmJa?=
 =?utf-8?B?bmZ2Yy9XNTlWTHp3K2lJemIyVDFZRFV4bFhWSzlVcmV4NzhjSlUyT0xiT0lj?=
 =?utf-8?B?U0kyWGkwKzA3NnhMSTR5RFNGRnpQL0hCYVFRemtBamkrTktkb05pdkxSZEdh?=
 =?utf-8?B?MGgvQnk5QzN1QWR3VE1FZXhIVUxpNjN2azZRQmVEMmUxc0ZnM3E5TDljVVVQ?=
 =?utf-8?B?NW1DUFI5WW5HWG1hemloZDRtT3U2STA2cm5UMFdEYXdmVGNZUmQ3YkNkLzZq?=
 =?utf-8?B?b3JxOHRJc1JWQVc4b29MdGJMdmpScE5MU3RBS2lyWnM1MlRoZkk2eXJzb3hF?=
 =?utf-8?B?YmRXY2RWRjhyZHZPcjdVRkExUzk1L0MvTHlLTG5CbVRCK0Z3WXVOY1Rza3hy?=
 =?utf-8?B?TWJwaVBCckZEWjhpS1owMjJGRHRzVmxKSWR6cHdtSFd6UTBKR3BaUkppZG9Y?=
 =?utf-8?B?djdIc0c1M0x3UFU4blpMZlpURnRDQVNvckdGbWxWWld1QUN3VC8vYTlrUjMv?=
 =?utf-8?B?YWRBY2UwL2krSGUxZkVoNGg5M2tGNGR2UzM1eTRYcmZ1d0wxenBzeGQ4YUkz?=
 =?utf-8?B?VjNzT1dtZWVpV0lxekV3ZkZ5ckMyejJBTzgvK3ZxQUhyQ0Jlbmt6YStmeUpG?=
 =?utf-8?B?bllYaUFSTzBlOXpSTUpjVFY1dTJFTXI4NmpUdmJGb3JSWmp3ZGkxOGpMbmtX?=
 =?utf-8?B?eUMzVUppd3JrL2lZaHBnQ0VRUTY5TUpRQWJXU3ZWVExHYmRZNVFjaDZabU56?=
 =?utf-8?B?WUlRTFRrS011TjVhZXF2emplWXowWktMMVh5aGNrTE5mMEJ0L09VOE1GUHJq?=
 =?utf-8?B?Kyt5NlJYc2Uxd3U3dmt4d0xWa3VHSVQzelVmcjZXb3llYmloSDZxckFxeSs5?=
 =?utf-8?B?MzI5NGZDVTdMcytnaUl0MnlBeHhGRjRsdzFvVFZXRUtIZ1R1aTZDTjdWNzRa?=
 =?utf-8?B?N0JwRWhobVpRTllaV2NvckQzNHNOUGFTUk1UNjNLRWhGU1EwRnBHalM3VHJE?=
 =?utf-8?B?cllyamdIM1VzS0NsWGk0K2dlcTl3c1JzZmdob3JtMjVFdU91aSt3MUs4eDZZ?=
 =?utf-8?B?ZEUwdFhycEd1WW82VVd6RE1ISnJuaDNFR0x2UW1pT3o3WE5QSFEySlQrbHU2?=
 =?utf-8?B?cGdsREg3V2pCUTg3R0lxdFJrNXVlb0EyUTFTeng2anQ1WTNma2JEbVBzTkVp?=
 =?utf-8?B?UVJhQldISjY1d21UaFI2TE1ieGg3YzA5aWJ6UGtUYXl6WlNYTExEbE1Nb1NE?=
 =?utf-8?B?STBrNzFncUg5aDFSQVNmbU5rNWdRY3ljTUVNbHYzWXJTUTQzdkhKR2NvVXBu?=
 =?utf-8?B?Sk9yTzlua0IvZ1ZRaFRteWNRV01abGRNTkVNeDJ1bnpBQXpiNFNRcUxrNlhu?=
 =?utf-8?B?U051eDVPdlVzeUYzSzRFcCs0Y2xJdnMzd0U0TlpqRXNFNk1YcndKQ291cEpT?=
 =?utf-8?B?VElkQjdZVkhVcTVua29MYjI2Wk9oR3Z2ZXpvZEd1WWVRUEJtR1luNDdrTWx3?=
 =?utf-8?B?a0VRNU15ZHR6UzNkdEtUSGdmWWoxOXU5OXA5ei82RUdsSW5Sb2ZjZ3NQc3ls?=
 =?utf-8?B?OFJkVnNDNjhzUWc1SGpYK1ZyV0lXMm1Vdm12TVM1YVU0ZWlxQU9Zcld0NjhX?=
 =?utf-8?B?M0FDQXByaHNVb0FIc1RKZEl0c1IwbnE4ZU1WaSsvMUlHeWVEOWIzbnJzODAx?=
 =?utf-8?B?WVBpMVpkV2RhZmJ4QldaUWlqNGpuV3RsdXdnL2lETXFqcTNMcFRQcUd3VFE2?=
 =?utf-8?B?cUZqY3U1ZFFzbk9Jb2taQldVN2srL280ZndiUitZTHdLNkNwQk5vekljM0pq?=
 =?utf-8?B?MkQ0eGFBVEtPZXFYWXpkVHFmMDhVY1UvT2dXdzVWblNXd1pmMmFTVzFuT3RB?=
 =?utf-8?B?dEUzQXNPYjR5R0phMDhtdlp1K2VKWjNjblNidW5JMFp2SXRxSWdhNHVQV3Z3?=
 =?utf-8?B?SVVGK1NRamFuQXNFZFQwM0JKMk5DY3gwMlREbW1vaWRXRVREK3I3SGZoL1BI?=
 =?utf-8?B?ZWZPRTZibmtCcWJIa2t0ajJlMUc2MmtsSWhWQzlySm1OcTlrUEp0TzJTaGYy?=
 =?utf-8?B?VERITS84UysyM09laFRiMVQ3b3JWaFlVVXl1NVVna3d2OS9aUFlYdWxrZWxs?=
 =?utf-8?Q?z7UagPitFPbFvdSATE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hbzPCq/SNLzq/hLA1/Z6HiC46Q7rRgd9zsoBl6d/DFBzna64SAY4I2zJKCZikQwSm6XHH1Uoql2sa6urOBID5gF8sP3Ot/jpz53yfd1HepBDytNrFgjbVtXYPAwQUL05//McOw/qGrNv9ah3AwSCmNk4v4vuxfzFckqZydL+yHDwCRystFAkmA3lDjVdAwnaNdQvLCr7u0ne7p5zJ6w1JRaPt7/u2NKRpanjmeHYvzyeQDfJiVgroo23E6rDPnkOaKu4jecq+sJZCzfPassLxREpvDnV9SHVHyQ0BnfRtKzCbjFt16jm+jUbpVFw0sxpm1Ln+1/yH1FHhN6m3+MXZw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: affe85f1-7d2f-4207-7bed-08decaf7eb5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:05:28.7487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ds+IkN1IU8ZBJChfpEX1kr3xGkVtjvcJQFyEOkEz5AFB+yuiFNF5dzinrmq40ZyiA2jkS2nLmF6J1RYDojdo0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781539614; x=1813075614;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wTjuaGxLlz0Z0Tjl6oyw0IdL7r/Ab06NUm0ZmNpL8wU=;
 b=HhNxfV199tkyKg3FtNnt/cUDYRPkYuFjL4lGpmEClfhidPdjfcuS5U8l
 u8yTBbzT9Mni34GQdcxrGiPn3yRgvafiwlKR9Q2YBVohu6zLrY3AVdr2c
 aFyC4rx+MXaaVol1IvVna7BxuRBM0GDvPh3hOYRqfs1lr1XU0WhABelQj
 4HqFs9ne5Yte4+KZ3wlS5nakGAcRQJhQHCYb2hAn281vIJL9Cmc6m2ln9
 jJI/jGHLlJtEp+VWa/Y++MdCmjI7cEzZFXesYrpkkHxQNJYvKDaYTt2TV
 YgkRU+Ctb+T1jvMSYi++mqiYINHaBPYQ3dO5vqqB0d5tObJeQ7DJfYv6O
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HhNxfV19
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/6] ice: remove ice_agg_node
 wrapper structure
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 330216881A7

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgSnVuZSAyMDI2IDA1OjQ0DQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgNC82XSBpY2U6IHJlbW92ZSBpY2VfYWdnX25vZGUgd3JhcHBlciBz
dHJ1Y3R1cmUNCj4NCj4gVGhlIGljZV9zZXRfYWdnX3ZzaSgpIGZ1bmN0aW9uIGhhcyBiZXNwb2tl
IGxvZ2ljIGZvciBpZGVudGlmeWluZyBhIHN1aXRhYmxlIGFnZ3JlZ2F0b3Igbm9kZSB0byB1c2Ug
Zm9yIGEgVlNJLiBUaGUgbWFpbiBnb2FsIG9mIHRoZSBmdW5jdGlvbiBpcyB0byBlbnN1cmUgdGhh
dCB2YXJpb3VzIHR5cGVzIG9mIFZTSXMgZG8gbm90IHNoYXJlIGFnZ3JlZ2F0b3Igbm9kZXMuIEl0
IHVzZXMgZml4ZWQgc2l6ZSBhcnJheXMgb2Ygc3RydWN0IGljZV9hZ2dfbm9kZSBpbiB0aGUgUEYg
c3RydWN0dXJlIHRvIGtlZXAgdHJhY2sgb2Ygd2hpY2ggYWdncmVnYXRvciBub2RlcyBhcmUgY3Vy
cmVudGx5IHVzZWQuDQo+DQo+IFRoZSBzY2hlZHVsZXIgY29kZSBhbHJlYWR5IGtlZXBzIHRyYWNr
IG9mIGFsbW9zdCBhbGwgb2YgdGhpcyBpbmZvcm1hdGlvbiB2aWEgdGhlIGljZV9zY2hlZF9hZ2df
aW5mbyBzdHJ1Y3R1cmVzLiBJdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gc3RvcmUgc2ltaWxhciBp
bmZvcm1hdGlvbiBpbiB0d28gcGxhY2VzLiBJbmRlZWQsIHRoaXMgbGVhdmVzIG9wZW4gdGhlIHBv
c3NpYmlsaXR5IHRoYXQgdGhlIHR3byBoYXZlIGNvbmZsaWN0aW5nIGRhdGEuDQo+DQo+IFRoZSBy
ZWNlbnQgY2hhbmdlIHRvIHJlZmFjdG9yIHRoZSBhZ2dyZWdhdG9yIGluZm8gdG8gYW4geGFycmF5
IGFsbG93cyBsb29rdXAgdmlhIGluZGV4LiBUaGlzIGVuYWJsZXMgcmV3b3JraW5nIHRoZSBsb2dp
YyBpbiBpY2Vfc2V0X2FnZ192c2koKSBhbmQgcmVtb3ZhbCBvZiB0aGUgaWNlX2FnZ19ub2RlIHdy
YXBwZXIgc3RydWN0dXJlLg0KPg0KPiBJbnRyb2R1Y2UgaWNlX2NmZ192c2lfYWdnKCkgaW4gaWNl
X3NjaGVkLmMuIFRoaXMgZnVuY3Rpb24gd2lsbCBsb2NhdGUgYSBzdWl0YWJsZSBhZ2dyZWdhdG9y
IG5vZGUgYmV0d2VlbiB0aGUgcHJvdmlkZWQgbWluaW11bSBhbmQgbWF4aW11bSBJRC4gSWYgbm8g
bm9kZSBleGlzdHMsIGl0IHdpbGwgYWxsb2NhdGUgYSBuZXcgb25lLiBJdCB3aWxsIHRoZW4gY29u
ZmlndXJlIHRoZSBub2RlIGFuZCBtb3ZlIHRoZSBWU0kgaW50byB0aGUgbm9kZSBpbW1lZGlhdGVs
eS4NCj4NCj4gV2UgZG8gbm90IGZyZWUgYSBuZXdseSBhbGxvY2F0ZWQgbm9kZSBpZiB0aGUgZGV2
aWNlIGZhaWxzIHRvIGNvbmZpZ3VyZSB0aGUgc2NoZWR1bGVyLiBUaGUgbm9kZSB3aWxsIGNvbnRp
bnVlIHRvIGV4aXN0IHdpdGhpbiB0aGUgYWdncmVnYXRvciBub2RlIHhhcnJheSBsaXN0LCBhbmQg
YmUgcmV1c2VkIGluIHRoZSBmdXR1cmUgd2hlbiBhbm90aGVyIFZTSSBpcyBjb25maWd1cmVkLg0K
Pg0KPiBUaGlzIGlzIHNpbWlsYXIgdG8gdGhlIGxvZ2ljIHVzZWQgYmVmb3JlLCBidXQgbm93IGlu
dGVncmF0ZWQgYmV0dGVyIGludG8gdGhlIHNjaGVkdWxlciBjb2RlLiBJdCBhbHNvIG9jY3VycyBh
bGwgaW4gYSBzaW5nbGUgY3JpdGljYWwgc2VjdGlvbiBvZiB0aGUgc2NoZWR1bGVyIGxvY2ssIHJh
dGhlciB0aGFuIGJlaW5nIHNwbGl0IGJldHdlZW4gbXVsdGlwbGUgbG9jay91bmxvY2sgcm91bmRz
Lg0KPg0KPiBSZW1vdmUgdGhlIGljZV9hZ2dfbm9kZSBhcnJheXMgYW5kIHN0cnVjdHVyZSwgYW5k
IGFsbCBvZiBpdHMgcmVsYXRlZCBjb2RlIGluY2x1ZGluZyB0aGUgYmVzcG9rZSBsb2dpYyBpbiBp
Y2Vfc2V0X2FnZ192c2koKSBhcyB3ZWxsIGFzIHRoZSBhc3NvY2lhdGVkIGNsZWFudXAgaW4gaWNl
X3ZzaV9kZWNmZygpIGFuZCBpY2VfcGZfZGlzX2FsbF92c2koKS4gVGhlIGxvZ2ljIGluDQo+IGlj
ZV9wZl9kaXNfYWxsX3ZzaSgpIGlzIHF1ZXN0aW9uYWJsZSBhbnl3YXlzLCBzaW5jZSBpdCByZXNl
dCB0aGUgbnVtX3ZzaXMgY291bnQgd2l0aG91dCBjbGVhcmluZyB0aGUgdmFsaWQgZmxhZyBvciB0
aGUgYWdnX25vZGUgcG9pbnRlcnMgaW4gdGhlIFZTSSBzdHJ1Y3R1cmVzLiBXaXRoIHRoZSByZWZh
Y3RvciwgdGhlIFZTSSBjb3VudCBmb3IgZWFjaCBhZ2dyZWdhdG9yIG5vZGUgbm93IGFsd2F5cyBt
YXRjaGVzIHdpdGggd2hhdCB0aGUgc2NoZWR1bGVyIGFjdHVhbGx5IGhhcyBjb25maWd1cmVkLg0K
Pg0KPiBPbmx5IHRoZSBWRiBsb2dpYyBhY3R1YWxseSB1c2VzIHRoZSBwcmV2aW91c2x5IHN0b3Jl
ZCBhZ2dyZWdhdG9yIG5vZGUgZGF0YS4NCj4gVG8gYXZvaWQgdXNlLWFmdGVyLWZyZWUgaXNzdWVz
LCBkb24ndCBzdG9yZSBhIHBvaW50ZXIgdG8gdGhlIGFnZ3JlZ2F0b3Igbm9kZS4gSW5zdGVhZCwg
c3RvcmUganVzdCB0aGUgSUQgb2YgdGhlIGFzc29jaWF0ZWQgbm9kZS4gVXBkYXRlDQo+IGljZV92
Zl9yZWJ1aWxkX2FnZ3JlZ2F0b3Jfbm9kZV9jZmcoKSB0byB1c2UgaWNlX2NmZ192c2lfYWdnKCkg
aW5zdGVhZCBvZiB1c2luZyBpY2VfbW92ZV92c2lfdG9fYWdnKCkuIFRoaXMgZW5zdXJlcyB0aGF0
IHRoZSBub2RlIHdpbGwgYmUgY3JlYXRlZCBpZiBpdCB3YXMgZXZlciByZW1vdmVkIGZvciBhbnkg
cmVhc29uLiBTdG9yZSB0aGUgYWdnX2lkIGluIHRoZSBWU0kgc3RydWN0dXJlIHVzaW5nIGEgc2ln
bmVkIDY0LWJpdCB2YWx1ZSB0byBhbGxvdyBzdG9yaW5nIC0xIGluIHRoZSBjYXNlIHdoZXJlIG5v
IGFnZ3JlZ2F0b3Igbm9kZSB3YXMgY29uZmlndXJlZC4NCj4NCj4gVGhpcyByZWZhY3RvciBkcm9w
cyB0aGUgYXJyYXlzIGluIHRoZSBpY2VfcGYgc3RydWN0dXJlLCByZWR1Y2luZyBpdHMgc2l6ZSBi
eSAxMTUyIGJ5dGVzLCBvciB+NSUgb2YgdGhlIHN0cnVjdHVyZXMgc2l6ZS4NCj4NCj4gU2lnbmVk
LW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmll
d2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCAgICAgICAg
fCAgMjMgKystLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQu
aCAgfCAgIDUgKysNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYyAg
ICB8IDExNCArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgfCAgIDcgLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9zY2hlZC5jICB8IDEwMiArKysrKysrKysrKysrKysrKysrKysrKysr
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jIHwgIDIyICsrKy0t
LQ0KPiA2IGZpbGVzIGNoYW5nZWQsIDE0MCBpbnNlcnRpb25zKCspLCAxMzMgZGVsZXRpb25zKC0p
DQo+DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29u
dGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
