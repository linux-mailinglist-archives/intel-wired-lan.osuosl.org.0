Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MA/tBZa9u2n1ngIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 10:10:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B9D2C8655
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 10:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A205360FB8;
	Thu, 19 Mar 2026 09:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0D6aXVlcVJSa; Thu, 19 Mar 2026 09:10:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 922DE60FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773911442;
	bh=2P9L4yGjCAZfiEGp9ui6pLRezVDQFPqRDOZKIrviAA0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uKKExezaWjoefsdhGmAUS0qvMoxEZyR41bC0C8+lUzzJ3m+/pztAU+2BcRUZKIJ7R
	 rxLEJOG1rXgRHwCxLbfzRh9jku529ghTw36GdmOmH8+D+CtiCAOs+cjk6cjNgAVIKf
	 bts6a26sZBAcpn6+XpWw2O5XuMxacWI6/ODeyF50G1SKrD9f8PSiW8eipAsif7pbdx
	 jZ8CYUYV5gAJX0N1Thrqf3m0UcKYveVH/N9gWuj8AHty0b3lio9uLzut2A4nX7fsiA
	 tuk/LTB/lBl0/3PHis1chT2cNWrWNKF6Ol9bnITL4+cnyXiS5a3xY9cHgPmF520aeE
	 +UrxNKzmMT7Tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 922DE60FBF;
	Thu, 19 Mar 2026 09:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A26211BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93B5040D2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P_9Z1bomdUiT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 09:10:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9126E400A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9126E400A2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9126E400A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:10:39 +0000 (UTC)
X-CSE-ConnectionGUID: 8w+NLR/2QXmfW8O9gD3uYQ==
X-CSE-MsgGUID: EvfnDrzQQWC56TvViodY/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="86339140"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="86339140"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:10:39 -0700
X-CSE-ConnectionGUID: +T4Z67pCTwK/iyVc8ueHwQ==
X-CSE-MsgGUID: UZlmikcLT+CntAEOd6qmDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="245929339"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:10:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 02:10:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 02:10:37 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 02:10:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lgUUh7+HprnjUGA0WC2Dpj9C6oryY7l8cGaMKyKCudFozNhB/cTzbrwpZ1rV7Ftw5MaVHEKQiKJZeKCFaoAyjfSGrAA0qUQtmusoUviR6EzcR6nmXN9bdeRPBNMha4Njw0W2E7m7OmR52Pdf9ZHUEkdq/uHr2Bi4DCQlbq1XJNq7Exdwpiy0nlQ2RBEgQy5Ml4pESfuixjWkZ0IRHgQ49SKwW7k0BGTYUnKTBubzmo4mJIDydHWboL+dLduPwm7K6yJprvhwg/vBRIJRb6ezazZPr7HCg7G2TA0abIbExcqDwKbPYiypViZkiR1Hqi7LcPImtrJUCJZngliLdU898Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AnwWsi5Om6Koy2sl5Y3INljEnOVMJ1N1drUpuIoMwRA=;
 b=ZRR3tTOntDcljlOtfso9RGxGfMOMPs6LahC5WRQdGRaBW7yQlBdRwh4AV0PBxBOYoLZ22AmMFP7RRHgSIeI1wNmZRrNq9fKBpecHH2bwYC3+BAZlHmTv+FR3UJhn47DiROmFi4O9FhOClYTmnATpLnwhyzajHNnvBlNEtesfZ3j0ggaKpFPy3YobOK3v5+3vtH+tS1OyiEyhxOJlJCdOdXnAI+S95I6T4wd9jZGBsMcsUErbErglyZl5RoUBqkD1qPBfMEgnCMlBrFx2zAU1bMrU8bYmVzai2cXzF+Ze6okIf2SDS/34iuxo55BUKTscMRNviXbdghIRVHrXwOvy8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by DS7PR11MB9475.namprd11.prod.outlook.com (2603:10b6:8:26b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 09:10:33 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9700.010; Thu, 19 Mar 2026
 09:10:33 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Oros, Petr"
 <poros@redhat.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
Thread-Index: AQHcm/S7N2bP5X4h90W+5SzeOEMm27V+0TSAgDb2H+Y=
Date: Thu, 19 Mar 2026 09:10:32 +0000
Message-ID: <IA3PR11MB93012F753C0333F18462BE898A4FA@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <cover.1770882260.git.poros@redhat.com>
 <a76096058dd9b6d0cccaa5c2c699458351d02cec.1770882260.git.poros@redhat.com>
 <aY2hnyXFM9wplF3i@mev-dev.igk.intel.com>
In-Reply-To: <aY2hnyXFM9wplF3i@mev-dev.igk.intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|DS7PR11MB9475:EE_
x-ms-office365-filtering-correlation-id: 72d7dc8c-425b-4053-e449-08de85975ff3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 3J51dFIdvpYhOQB9gW4ZV6497oZFI2JPvCiSSaGYxHeraEKag5ff6wLzGROtNmDxYrzIwIKa7pRLfeeTRS89FYb4KVwFe4Bmi3wmg8S4YwoNc6923dfeXYO16LOsDQO4qIW1qKntpWTTPYBRDqIVVVD4bgFsu07lB7ZLed7bAQTrMouvES2381heILhiYBojYPLuQOXTNEY3Kso5KyTmRdOoLNpOzVeBQQTq0ocCFeQon1QpfWZDxL5v6c4T5adeEVaPZUqBcSBecf/QwSoigBmVRWaE0E57wGlc1eQtm8SOUdbnGEV8kFfIBw1ItP+lExXW2HN0evUjyW/Byv3eqwFXROHIzh9O/CoV3gfFJ29zKjtNiugcZCxdEVXd0nEtVAeClS8SC8KB45pDYvFDTBh8SqpMlP7dlCQ+d/eZKx4ipmhf/ni/5WU0y8Hnk/4WhBU6LG8xiivOFUdRxggU1/tfVtgpqZvL6xEY70uBYIRyHeykq4As6FxqdbLF38lD3IOAqKLtcTqk4yf0+kpvVjkKUrx2ZNuedbz9tqOx5g4rKmsCqB/FoMq7z+M5iOk1sDKzv/9kuxiriVY/F6/d/WalkH3YHu7UnXGHBw0xF8mDFArrX8VQdRFe//AhXu4NwsF95/Wthl2VFYUxTpvILtRBfQFS6bwD/Z12IbheRRE2qZngZxIebjKECaxjV9Mdzx1gcn2uOH4Uf7/fs3bp/4suAXWuFL1lJSpvjSKV5K9WeyFYz8WRxGsQsVMcoOzfuTwRnJSd1KyK+fYJO4hSxoNstjSMVunDVPAqBO1AqP8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?eElw1bDZpgu+uIrMb+wZRzI72xD7itF3Jes+9PYUxRtT7UF83HSXap5kc/?=
 =?iso-8859-1?Q?F0/ZoVA/+EbKzTjiZHhCWc3fZ5tcHKFNGW3de9+UYdoHF3zMITWhPDdgFU?=
 =?iso-8859-1?Q?v+BX0tAGLaz+xuRmVrSRA8NiemGNWUeP9D5SwiiZP1n2X3WPUw+BiaEqv1?=
 =?iso-8859-1?Q?bUCXEyypT7Ua6DYEmsFLqeyrZ5cJsXfpfhy3zqsQz+4WuwcjLIsqokYTY3?=
 =?iso-8859-1?Q?SZAxd1Tqqg+iFE1vNVOLoMND2upRHAkZosqU6FrawHsdnwSOl3Eo9qEyNa?=
 =?iso-8859-1?Q?p0R59FV9R9M8DdTLGecd3EXoe7pdDY/g2R/7Jh6jFbjvssJyhwRvcyA652?=
 =?iso-8859-1?Q?V6ipBMM/SsiT+LMyvvFYN8or2GLvCwbJKIMCWzbvEIo9uVy8vpCw1NTTGq?=
 =?iso-8859-1?Q?AUj0IVqXAFhx+HseenN6Ra7zOuIPo6pLX1dJ6dQ4I+wQIaWC5gOPY7n32S?=
 =?iso-8859-1?Q?WnevDYhiVTgPMXQPuIdQoJJ3blu1FWMTtr4rKWY+/EMtZU3ecA5ZXI0acr?=
 =?iso-8859-1?Q?E8okkSsZmhGeX9Iqi0XxPtxdTWxS3afD1Mw91RfFUp7OQDzlhK9rU2Ubpt?=
 =?iso-8859-1?Q?HaZ2Rvzkwur+2rdQlt6Ru6GjI0N27hEZqzWUnLZVlOHpUUIORDvEIqV98l?=
 =?iso-8859-1?Q?JkZ5fRpPCfoh5gMbC3mVBl3j+jCO4YMhuMG+RULycl0UNIdR4NHOOSh+B5?=
 =?iso-8859-1?Q?Uj6sbYMgSmkhGg6lDUMztXaYgFG1oOdPy7mZKk80t1HASRSMbbHRhQxCAR?=
 =?iso-8859-1?Q?x1JahcpMPcCwoHjJ2dGoLEhpNNwkbZm2FryEekgCYZHZdQ7dQ/bPt/pc45?=
 =?iso-8859-1?Q?D37K/nCdhmsbeeMI6aAz42MfJxsDIH321qb8cJJAIx0kuNP/JF1vth5fq9?=
 =?iso-8859-1?Q?To2SnhmI1886Uyy5HRSD4ngSol+9fgcATbO60hqG5UVeOlPxwHTgQ5f/da?=
 =?iso-8859-1?Q?rX14xUat0YgAnf1e3TMlWdcp8JcN7hNTz1xfs4LnqJyowZnAsHoqy9QqGh?=
 =?iso-8859-1?Q?lzvTLH5QBQJSwWnT1MAvTAF9KlyuKtVHxw9XsKdTV/xuZlLSSA34TMtlxH?=
 =?iso-8859-1?Q?U1oZ1byXbaiCWbj0bJbTiJr30GnvLdhrZ1vqtH/5SKzaBaMMHz72ggX/Xf?=
 =?iso-8859-1?Q?EWv2t0JOYqc4kPDT2so8KFgP/4F0qQJ0TmfUc99fgd9q6P9AHBUMVTa4qG?=
 =?iso-8859-1?Q?XE6uNqixKg/hpbCSQe4CsIyYULFJaxOnxLF6WOf0W66IhHL7K56HxULGIM?=
 =?iso-8859-1?Q?y2X9u83bXyMpkCb2yAGNhScGYjMkIo2dJGKd1XZkpx/4/M03i3a5h/BQf8?=
 =?iso-8859-1?Q?WMUOTmD1LhXJmqquwNus+2BADeGeDidGZe+1MthlNVK09x7a9KFv0LEw28?=
 =?iso-8859-1?Q?SAZnMHE0DkUuldi8K4QoKLqh9Kg14J/G6qIiWs0Tnj98uYD+yJ1CWouHU3?=
 =?iso-8859-1?Q?24tLMC09Ilq2ZZwAGDiRZ6B80mCWIDRw4ptXvNy+nHI2D5MKFfbSXgNq9Z?=
 =?iso-8859-1?Q?8EsmxSYjwUo0MWeR+R2SzRwJpN7AkfL8O0N8rl4KMH7bqeEz3u+twhsK0x?=
 =?iso-8859-1?Q?xV4DPs/g8pDhgaYWw9ILkbU5Q5fIDutTNApTYKWJwht5jqtU2KJRTzZSO4?=
 =?iso-8859-1?Q?3VDS1xueJS+X2Clz7AGG2hi7Hi7SDeTe7Ajy5hujUkbDGiyQPZ9WH0IE2S?=
 =?iso-8859-1?Q?pPo9JnLxx4V104DUk+wI1gFNZUyc1XLixYqcsui97subOSt56CvWWzzmms?=
 =?iso-8859-1?Q?bJnaEgnAqRgi2sI5yvOVw8hTYdWwMXf0iPuS4oISDrdgHy?=
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: K+IOxFEubiSMeLOSUR1L8I+lRDhwdk+eAGuys3AKM0D0NPIyOjO+tCVuNkMhGLWq2uXCBkonznjv/ZcVcvPGajjBBTHsSOigxfNA85zlqmxN2iyctFLKqSejUF8iNY56CpLRhphatLStDtZvuitV41BvramuJ1TZx67i+6ozkGzrTFLblyfNUMd6x0rVLTOLl8qOviAePqEHTQ+LzNDg4ayDcEkfG32moyKmFCIuDaM5zEhnDGxRhSSD3wLQobFsfyCUts380FxDB8gSL6HWvxr41GwYFWj/wnUznFuWu8UqQXPj4JEI4vS2O1pm3EmXa9Jub97v7NLRUFV38Ngfgw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72d7dc8c-425b-4053-e449-08de85975ff3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 09:10:32.9245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fSuLBnsNPo1qIVgVB7/T+7pz3I8Q5N1kouiYkCKrdOoreuw6e35g+DfByDzNB6TLK7RKnHUAuMPT1mji0Rv0Sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9475
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773911439; x=1805447439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=2P9L4yGjCAZfiEGp9ui6pLRezVDQFPqRDOZKIrviAA0=;
 b=K8M4vHlsb6hBQnrBNEbEhepV3a+FOL0BWU86n4gLAlTteQCJ0hkD3n2p
 rjHvO8eR/j80h0cYX6OwnM88mFGwLw2zNJyBmmd5njekkRiYImH7LmS42
 gFuwEkqBs0xqJSz6xXeCLNq9z8LNPaHKF9OSksXw38NT0Ho2p8f8gpv8W
 218r5Fb6UfbLq9IXIxApjO3tb+ETr/dZhdQdA6aK95GS3ev4GDvOWze4p
 PMW+dnlQ6nr8Wel1pgGPLrHU76LiF53iXiK6lDcfUf2xIa4IGFc5ZHEDv
 feM88hqLrSpVGF0QueU9PcTb8cCSfSU9tHxx4Qw3C4YjUWzjIi7Je80Za
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K8M4vHls
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:wojciech.drewek@intel.com,m:horms@kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lunn.ch:email,IA3PR11MB9301.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 42B9D2C8655
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr






________________________________________
From:=A0Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of M=
ichal Swiatkowski <michal.swiatkowski@linux.intel.com>
Sent:=A0Thursday, February 12, 2026 10:47
To:=A0Oros, Petr <poros@redhat.com>
Cc:=A0netdev@vger.kernel.org <netdev@vger.kernel.org>; Nguyen, Anthony L <a=
nthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.c=
om>; Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.=
net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;=
 Paolo Abeni <pabeni@redhat.com>; Michal Swiatkowski <michal.swiatkowski@li=
nux.intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>; Simon Horman =
<horms@kernel.org>; intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists=
.osuosl.org>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>
Subject:=A0Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted read=
y check for VF representors


On Thu, Feb 12, 2026 at 08:53:10AM +0100, Petr Oros wrote:

> Commit 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")

> refactored the VF readiness check into a generic repr->ops.ready()

> callback but implemented ice_repr_ready_vf() with inverted logic:

>

>=A0=A0 return !ice_check_vf_ready_for_cfg(repr->vf);

>

> ice_check_vf_ready_for_cfg() returns 0 on success, so the negation

> makes ready() return non-zero when the VF is ready. All callers treat

> non-zero as "not ready, skip", causing ndo_get_stats64, get_drvinfo,

> get_strings and get_ethtool_stats to always bail out in switchdev mode.

>

> Remove the erroneous negation. The SF variant ice_repr_ready_sf() is

> already correct (returns !active, i.e. non-zero when not active).

>

> Fixes: 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")

> Signed-off-by: Petr Oros <poros@redhat.com>

> ---

>=A0 drivers/net/ethernet/intel/ice/ice_repr.c | 2 +-

>=A0 1 file changed, 1 insertion(+), 1 deletion(-)

>

> diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethe=
rnet/intel/ice/ice_repr.c

> index cb08746556a670..2a84f656405828 100644

> --- a/drivers/net/ethernet/intel/ice/ice_repr.c

> +++ b/drivers/net/ethernet/intel/ice/ice_repr.c

> @@ -315,7 +315,7 @@ ice_repr_reg_netdev(struct net_device *netdev, const =
struct net_device_ops *ops)

>=A0

>=A0 static int ice_repr_ready_vf(struct ice_repr *repr)

>=A0 {

> -=A0=A0=A0=A0 return !ice_check_vf_ready_for_cfg(repr->vf);

> +=A0=A0=A0=A0 return ice_check_vf_ready_for_cfg(repr->vf);

>=A0 }

>=A0

>=A0 static int ice_repr_ready_sf(struct ice_repr *repr)

> --

> 2.52.0

>



Thanks for fixing

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>


Tested-by: Patryk Holda <patryk.holda@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

