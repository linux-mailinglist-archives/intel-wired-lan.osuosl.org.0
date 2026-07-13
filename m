Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FhPJNw+IVGrsmwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 08:39:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9A4747979
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 08:39:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=sGEnhtnX;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECA5A40874;
	Mon, 13 Jul 2026 06:39:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HewiFbOXtZgu; Mon, 13 Jul 2026 06:39:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0810E40878
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783924747;
	bh=MFvT4AEfqEXEZURR30oWgnSeJGTmHiLhlV/Zr+AJMaU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sGEnhtnX4sL3hU1EjoLs3I43T8tMD52/d8tVl50d9F/0Jp7EySYwMmF5HP07uY4Rt
	 /bi+m/3Z/dZaNVlg2m1mtv+kSp8nDjlwR+w75+nInQ1ENNxk8oD9vbBjuCvjcRSPfR
	 riZie9v1A0k5QjByT08v2I+hn1amEMxSP8meIeMeyEM/osolZ0bKihahHlv/+N+1xD
	 mOiZGL2IK6bTmOdkSgW3Pjpes5LaTpRiYK0wpQ+GOgUcYY09cINjJJA6D1cnzHEPwM
	 4PNsB+sIP1tQyc6RX7Re8g/Kw1LkV+gVcPQfyPoYcsp2+/fmmi35QpW9DD0Qdwswdg
	 ImGU+kryiVcYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0810E40878;
	Mon, 13 Jul 2026 06:39:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C54732EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB66040079
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U2R7f1FwCxpF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 06:39:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5D1C4009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5D1C4009E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5D1C4009E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:39:01 +0000 (UTC)
X-CSE-ConnectionGUID: 8o5Z5ydcTlmiDd1FYYOhUQ==
X-CSE-MsgGUID: dQddaA+gQQuvCpgiXEEVUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="107326558"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="107326558"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:39:01 -0700
X-CSE-ConnectionGUID: 2Yt53mgbTI68qHpSl+XLxg==
X-CSE-MsgGUID: +TvSZRcoRSqhtdyiZZMhJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="260347523"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:39:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:39:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 12 Jul 2026 23:39:00 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:38:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xg1bAFgXWaryKPOO5AMO/hcXEeuR8cv32cG1CiytfDG2v6LqpT4R53oXI9bnrrHNAFUyOm5WWGiNOfmXYOStHYdtrDa9pm1Ep+4b+3TPi+vEKmGEtQh+CYGKPhvds2brBNKsllx8As+JLEk0WxOnG6A0YUMO6FX87Ke0rSArcxtVA2roF+sXSLwtqkMCW8AlRiPRs1UgcbFBARs+uei3C3Z8liNyulHw3+oQrXgYNoXNN44zpTjPB7h/YaMlhqXQdw1n82XM+sfKmGiCo+FP0gmZvV2WxAjlLpKx0Kx8ptL2+7QQ3OHcDQ+1hcODIsxPQgPBatWUmC9DCIZtGq07oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFvT4AEfqEXEZURR30oWgnSeJGTmHiLhlV/Zr+AJMaU=;
 b=NjgBIWmyb0CwSIiu6vPA3SfWu0e2wXuNAvII1gPt6V24tR6xndP51ixxYEI2OLIgX/f5AvnkihYp9FEQPoEwDAy/QfQnv6HS9XdZWI7fVaDOuMTNTMLUxZMIzYjc0P3Fz7Pkf9dblXlmeTGyRANXuId3t61ho600FQgZOousu7+9nEGgjnOPngsjj9RKra8Y6E9tPXBy+Z3VLe9Ra6+IC7Sv6JDzY4NvepLxCURkL1VlT+VEAJumVFUxFkt5pkTSwdKorEuu9cxPuEGKpHqU+gwJifeG/Ldm9K4B0cMF9ytmrFclt4wrPkNfk08R+zCkUfngGHN0IL4SSf/6CLlPwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 06:38:52 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%3]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 06:38:51 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: Zero out the PTP
 control PF pointer at ice_adapter cleanup
Thread-Index: AQHc8afkKMxrisvsm0aAGzG+Nc2u+LZrPyUQ
Date: Mon, 13 Jul 2026 06:38:51 +0000
Message-ID: <IA1PR11MB62410F0190AF27A784EC276B8BFA2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601091951.3017848-1-sergey.temerkhanov@intel.com>
 <20260601091951.3017848-3-sergey.temerkhanov@intel.com>
In-Reply-To: <20260601091951.3017848-3-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA1PR11MB6709:EE_
x-ms-office365-filtering-correlation-id: 79add1a6-e244-45d5-2f95-08dee0a96737
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: roxsyTrs+H3aBB0+50T8gFMkvI1ZI2DAkH1bJQGWnhiSj8OzlN/pSR/cXyI+rAHfQs6brbmYIn3qL1sVhnta7v/Kp/51Ad0mBI58T4PdCAIvR32h0sGX0c1E7wrfD9ocEpuexU32wDevLRIYN2hr4ACBurLYlxwooQOXh+SJmCHsMBDpj3v3Xgxb1c/HF7ivBxRN//+1UcEG3FW9Ywvxc417LR4vIBK1HPIJDEeDptRWmRtakkywLgQQyWN0JPKJ2g9EGRLWuhr3Bl+AZmg6tDAt3C+imanknA2gn4Sud9KBms5Aq9iLeh7D0h64hRqSAGOL1Mwk2JnoPk5oD6e2IYsx1vX3zD9TKXIS6lPjgCOECwQ3W32yu+tz5WVYwj/4wWuxA4Vj6gIO1nT8K+apA8h87GezRbHm8VYNyKR9aofvmdjLQTFcsNx9UTapyAoE8fjSgNc4tl9y8lJ3gaR5mUXS+36ONf9VJJB4QaqnhNyYLorpKO38dFh1zGi3k5DkOEsbkkK05FBA4+2jeRWwqB5jycCFYy6hv95G2SicSaB4pvZH/aUNbYUyrgddSlDZe/fpc6tyBA41NySEJq2MVvhbdQ7mjdcW1kcqYRdpNLiyd7ghH4+fsbnqYAi+9VnNaQGPdy0ooEj/ulcrrxFIgnoq5rNtpbq6ytQcB8YvgRtSdEOrk+s3Hf1J7cmJFIvQyhLHNig/8iunjdWHfcrXL6MVYkBinemRnqah35B4Sug=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e/xz1HRpvrb++Df7zieJKod/wa5CPG8RmvnCiwVt0KynG3M7w2/PxXb3191D?=
 =?us-ascii?Q?w08MqjiCoIYK0i5Whl+QTm8tdUQTDPbraF94cpgDTaXYNcEZngEK0hwh0ssQ?=
 =?us-ascii?Q?tEnE+Tmqs6uJ1uMPsc/JUrD3/asDAH1hBpD4cP9wdN4/YtEshboCtUcvj82f?=
 =?us-ascii?Q?nEqSHyH8p2HJh3DZ2xt8kbA0qHbOmgs6Ki8Sm6EnInQt82VjCkP4/bNeCLm1?=
 =?us-ascii?Q?AhcfODl6DajA758zTa7BR0Q0eG7JmSZFfIYER7q3pAIthSV72pcALTc3oyfa?=
 =?us-ascii?Q?76uuFk56miF0QQKU4mQ6xH5ci0XABIXO84HT4iwQlq/l623fDPzDMunXQNxY?=
 =?us-ascii?Q?7Uup829CgGevMtvmKGVdOO2X5Kz8XpkJBd17lO8GccBuIdgP9vWp+G/hodRK?=
 =?us-ascii?Q?Oav5izln3gsU3P4VUghyCpRV4l5xSunKr+T0IzRNVvfuA5xOMl5KPYHdhqhw?=
 =?us-ascii?Q?IE6ap9varC10pJ/Wieg37wAsgp6nI604ktMAxDUSgVJmqhKUxEZNbNqqauHS?=
 =?us-ascii?Q?KIrPCjt+sKo+hlUrAlwap6fb4UXDemvheLer9AtR5OcEvaA2Dz8TPb+l9Nvl?=
 =?us-ascii?Q?HKseK53+6Y8AJURDKb9bg23/bXNpKoLjAm8KtPu+N2X8rT9l86VXRYc3XLhB?=
 =?us-ascii?Q?Tz66SAsc52DJkR1ZGH1zwFCtmlqmvietZV4ZaL/nIJ/KbRLa9XKkULnMOaSB?=
 =?us-ascii?Q?p+7hjk0x38402jo6zjYsN3HKA+Zme0C3GBcvXEy8VxjdFMcCrNWESAgxSnrF?=
 =?us-ascii?Q?uNmPd4CH3F62HTJF/iiPgaOdgH3f2ZVUdpfvXB/tSnrHtOAxFJg31vIT/cY+?=
 =?us-ascii?Q?u2Kx8L6iAiSGpOpStnYKyfopVGRxgzndgjj5acpGcZ47VeQ1jCsyS10yjKDH?=
 =?us-ascii?Q?0dQj2PbhlC3fFj0eTHBq3QcYRMLa70qy3DNzypjF2XTTfBK4La5Dp1Uw+/Qc?=
 =?us-ascii?Q?vay5hMVX72rny4LmGqfjWWiYxcMKJJHhGcc1DoOmyrOeQj/970hMcOaxQ2lQ?=
 =?us-ascii?Q?2afuKgJlGQT35B6GvRM+xACwQlpZNZuegYrzN8CZPkjD+r4O4Ufk2Pj9RklM?=
 =?us-ascii?Q?KK2znACwdOIVnM4IX0oJDyHMXlntZZjnB2htpSfNIu7vLr3N7pknF8hkHsae?=
 =?us-ascii?Q?u6EHV4o2D7vl0U9ZhIZRh/+kj1SP5m8bMlNTr9uugogV2rzl7ETBP7165ZBB?=
 =?us-ascii?Q?K16OMaUVS5ZA17Lk17oSUPqiDxxsJnKB2uwvhohtGXCcPZD90tO5qBaNcrNG?=
 =?us-ascii?Q?BAPv/V32fwEDAsMcoCiuCIhL6Vpqi2N8ehgCHnPlg/WtS4WXZZyj9Y57h43U?=
 =?us-ascii?Q?hNrWKwMoSb6ZUa/GHXucvfAhHzTCeLJjeHjwcuIgELuniytOT47rKpexogt2?=
 =?us-ascii?Q?lRIhxIaIffIF8uhLn8I+PH63E9FgBhhKqd0/W8nYe7r/YUvAZMvItR+P9htX?=
 =?us-ascii?Q?zgqWE8sToWkNGVvdDzutlMS9VDWL75Nl1EnTGpdeDlU13ctri6ECB4yPnwQY?=
 =?us-ascii?Q?x5kbnXe90OxSO2IjRpvyXf/xkP4lMgnsaepY6SJboLjnalVPmDvBfoQZlkC+?=
 =?us-ascii?Q?+kmB/Vjuc4mtEbtaZGFoyc2Rea91siFEE//sNkVyP1kW3zH1O6KlOoZQ46um?=
 =?us-ascii?Q?Mc8utCs5DySJGc0zufMgvsVapD127fWEmo1ryoKBBd/Y9PsakUls1tZ8iQoP?=
 =?us-ascii?Q?9jpyzZVZvEVPmG+5h99aRu5olbhahrfTMBiIvnQB4mkzPe4m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tOPEX2CIGRvGjsXxjYSSZqATsGtKYM2B4o4ij7aAgsV6ornoqWB1X/j/HIW9w7oIG+/okbtAEpy7W5Or0YS4M/M9Y9ehGKVenNMWWmHenj3u2ZYlzXhrQLdy+xki3IZQUX1Pzx2oBrZ/6JwtR4YNpU+gSxD/yPWPqlxVLNm8RsY8iASD1XMQrQe+qcUVObrvvp5mb+hbEqq9m7I0t7ryT5EYr50im5PpIDKwmBUt4uk0UpXVGDHF92NybVjMvfZoBDP58O0xsg7n1lPLSR3m7QUmXu3AwgWJ+2RMKS+0NGgtgpZRLoOPF5CSvnN91TIugxgOXQND9uM9SVaTDmrqDA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79add1a6-e244-45d5-2f95-08dee0a96737
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 06:38:51.8703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egnS3RQM14SjrZsqSb5EwBMnhlxnRcGNPKT1moySLDtPqNpKVAn6sXjhio4hwUFJyBH+nhTsJcejf6qpmzsaBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783924744; x=1815460744;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MFvT4AEfqEXEZURR30oWgnSeJGTmHiLhlV/Zr+AJMaU=;
 b=IQ71LpGX8D4uQs21ohveB3LyigVeQ0UZVdwZI/1tMUWN0ZynCaTLLNR2
 TANUg0Fkydx3OmftgLOxdaPSaxDOf4Hoyw3fClauYlCQ6uHOqF9k7scL/
 hnxXZO3YEVdkh3SiHs26xlr9xQ026SAdPfMGzjUcao54hpPylRcDESFzL
 kMC31glX3JO3R9n0ZLdRI0eVk85AFQyBhvaUtTgDtIPWP5Rpric0TZ7Al
 u1JbIb/A++bNfeB2R013lBevvouRac3FVO78EOh5MkIcyoEB/HhRnwrIH
 p2s7XRhaq5+FHLZYJB13GnRJFEu3JfJWcrE+x98BHu9wIom6VXT3zMEaL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IQ71LpGX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: Zero out the PTP
 control PF pointer at ice_adapter cleanup
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D9A4747979

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: 01 June 2026 14:50
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: Zero out the PTP c=
ontrol PF pointer at ice_adapter cleanup
>
> Zero out the ctrl_pf pointer in ice_adapter when the control PF is remove=
d.
> This prevents potential dangling pointer dereference when accessing PTP-r=
elated structures from other PFs of the same adapter.
>
> Fixes: e800654e85b5b ("ice: Use ice_adapter for PTP shared data instead o=
f auxdev")
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reported-by: Frederick Lawler <fred@cloudflare.com>
> Closes: https://lkml.indiana.edu/2507.3/01388.html
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Tested-by: Frederick Lawler <fred@cloudflare.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 17 +++++++++++++++++
> 1 file changed, 17 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
