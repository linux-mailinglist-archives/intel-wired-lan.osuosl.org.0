Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UM2LLlfWCmqc8gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 11:05:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACE856951A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 11:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C3CE6FA3A;
	Mon, 18 May 2026 09:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cIDFOU_gwIeN; Mon, 18 May 2026 09:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CFD76FA38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779095123;
	bh=2OrL29Sxmu+QTMhAfjM5re+I7qiVZ6Es/ME0awgACm4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ll8DM1fGwVfuzGfdC3Q3wJF7AvY2jft/ihXUhveEgGMulfGzq8N5xOSSea99JFfPn
	 m5m6ppTmkzV+jIR6s0rhVmVAgh9LFLWDoLzDUVrevEutrrsk0DuKNmh3StNRJI+L/M
	 Sd93KUGG3V1NzmSd1n1ZuAg0d5zJF64skFlnt3TR21Hdr2M1dIS4U4vaL4XJu/ueFS
	 lieKDXJo0aKwmJnHaqTdbgOcMzbEyXk14HkCPWbaKplXutHHC49hCC8+YsUQhyaMUj
	 lnGUaLNMNaM+8fPfU7vhxd+oTrbNGiZstrzHJzaRVZ7l1sNqc+uncfpt1Tv0VWv1mb
	 ImY4ZHRFTdMkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CFD76FA38;
	Mon, 18 May 2026 09:05:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 44B081B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 09:05:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E053408A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 09:05:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtFVQIG33DjG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 09:05:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 615E840346
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 615E840346
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 615E840346
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 09:05:21 +0000 (UTC)
X-CSE-ConnectionGUID: zB4Tj7mDQcaNk4JMT9BuOQ==
X-CSE-MsgGUID: dzejpAT1SfCTQu9mVnjXpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="91047585"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="91047585"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:05:21 -0700
X-CSE-ConnectionGUID: /4d3suNRQZKtC6frTbBieA==
X-CSE-MsgGUID: XdGacaLgR+iU7BYR0BXenQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="269710776"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:05:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 02:05:19 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 02:05:19 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 02:05:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XTnX7K4BFnyOtAkrnV2Iqfr2WLNNcGNPmvkD3fBzZhNfeIKhx2TIpTaPnNAH7jDoV6xnTvD37lss49y5WlLSD2SjURaejy7GzH3SqkR+8n8eP9qscNLXqDcbbkEw3NDz+cRdoaJ1BOSHoZ6Zu0HCdadz0dvcOapwv9LQuExKZnGUhZ6kCeY0LDV8ekvBiivjEzyl0NsdXGj+oDTWFEWdcD5/tdul0dkyldE9J4XKMLnB+a37xHY+PKL9nC5Aio4WZ2Zs01Ca3542KDdvTfeQvQrtxoCY2Zjrf91IBypZXx8jy2QULuyMz57ExqcMnhD1t8qUIKcJgMHGdRzHxPj5qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2OrL29Sxmu+QTMhAfjM5re+I7qiVZ6Es/ME0awgACm4=;
 b=Dhh4A+kwvGqlfMrpFSnThFhdEk3ofpoVgIK2zEWnWz2MCYZ/d4uT+pkqqtX6iUXCSBuXrplcJjmeTW9p/UMay0fB34Kyhi/3GxvQolEnBo8nH3N6Phixu0JU6DqDdBCoc7cdqhwJw+LaTaC/VR7V5lpRJrXfOjMM32EJ3IjH5w9YaE/VA0OZ/PTygOk32XpMr3GjRn/ePd/edtmMtoib83Dn0x7sBlEQtWA4gffLFt1wa/7D5lO7KBVsS6nj/yOYL7MOUX5D06kx+Djkz9zrKZxSusLngceUSZPRE6ROqutSVnXsLK7vKaoSUUCZleHgpWJ2PFhhT59fHsp3S/VtXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by CH3PR11MB8749.namprd11.prod.outlook.com (2603:10b6:610:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 09:05:16 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.21.0025.020; Mon, 18 May 2026
 09:05:15 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: Simon Horman <horms@kernel.org>, Kohei Enju <kohei@enjuk.jp>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix UAF/NULL deref
 when VSI rebuild and XDP attach race
Thread-Index: AQHczxJLDrkriVuuzEOMfkgdiU5/2bXrZZ8AgChHCXA=
Date: Mon, 18 May 2026 09:05:15 +0000
Message-ID: <IA3PR11MB930134C1B4DBAE9C275FDF578A032@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260418090137.411506-1-kohei@enjuk.jp>
 <20260422180020.GQ651125@horms.kernel.org>
In-Reply-To: <20260422180020.GQ651125@horms.kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|CH3PR11MB8749:EE_
x-ms-office365-filtering-correlation-id: 8e65c06d-ffde-4a43-c1dc-08deb4bc93ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|3023799003|38070700021|4143699003|11063799003|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: reJ32TPzH8CpfBtjDVcDLtydgx5BMY7G5G8oaOXitwSPxPIpt1lNvhoKoWPee6xbZfAbdUQgqMP2QF1QaPrfyRTPD/cMcyTf1oT0pgR9arYs0Gou7euPCEDbp4aop9aJYTcaNHxrqyZsnfuGHaqDog/sDYeHXK73sZ42kR5qFeZH+rAMkpfrVgapdGborHwL6rI1/VL/MzRGCRprWchGCjYlrWZTw04O75ZnFfdfVSVjUV6IA5GiM+L4MFgM7UrExcAZUBBVM54IHSyhxPdxZBdXA5Zoj5pNusg0RgVbmSvRNKdcym2MMVWMx1CyGPEhD4+sn1AyymY99OmDOrlv4nsZbtvrJRrD6y84S0QV3auDeiw+B95vZUp6PKPYPhfYvyj+nx020bwo3B0e1Z81V0+QDO5FOsH2XroikTQ8BQMfqtEcvigJq3whAFFRNEIrJIzSisu2tdZwBjCuNGC1bbfV8G4QZgrSXG1MNzyaGrgLCSlmpv57eQBfjXs02a/CfTmRQLSdd2fkkDAIvWvvqyOWpeKwXLwYPvXbhhH0UX8TsQmPptzie3tbSAtdJkQ2J4OI75buhaqPRGBqg53DZHz2wBrzkinEHoYz+esbEq9W32nk0xMXe6rSzih0+CVzUZyCTPFjtJBKojn+g7+RJ41hAS5hbW7nHz+tC0upIZTVeHtw9KiGgi0Qhmven3ns/pNIM8zhx1BKMlbnZBPJ8GkA3mhzEJyNCdylqZTGz1LM8fBVz9C80TrDIG7ZzaRE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(3023799003)(38070700021)(4143699003)(11063799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zTjI8gJ3IzG4ZOrYuY4H0SIL1GnD3kDf2kaozw5gEFIFiYaRRSduDzG+O2?=
 =?iso-8859-1?Q?Reg1Uw87IV0qlvy/b2g2BkCtwGf66nYvPyZqqsm/il+jWY+4T5hC7VasnL?=
 =?iso-8859-1?Q?I4+tvY9ohy+PcrQ8E8UO2//lnFgDjazUaQkVGa4fWqE0AT5Z+7fO6J/NfC?=
 =?iso-8859-1?Q?F9RSqV4HaXrokUXfaCuaYQmutv4S/ixiA6D+wNxQeVf6PwuVLVyq6zAZ3V?=
 =?iso-8859-1?Q?B3FcWn0FzdVcHfgYw8r06nrrhZSaDDwFw07+mxoOHeEv9eZtyG7yCWTj86?=
 =?iso-8859-1?Q?PCfcz+kKVOa6luiNx8kdhmNtrd9Lajq3tcSn2sJJFERfzCyQ/cSdk0OoeX?=
 =?iso-8859-1?Q?wg6M2kCe8XP0smUJrKgRP170P+88TSUIuIAR5Hn4pa0rEdfgiHoIwWWnG8?=
 =?iso-8859-1?Q?OPE4B3GlroBgVjRKSlLWam6ZJGUKrjMSTquk6b7GGRC469iBg9Lx0ielt1?=
 =?iso-8859-1?Q?fx6KPwZjUY6Ynf/dQjD2Z0yfw04XJPz/YwItwxNk8kwMImKHXElt8kFrwX?=
 =?iso-8859-1?Q?TBUfWkg2AlWDnnMSIHCyzxwkzlv5MOeVzzhsP5+jE5EdmmT/niWbISadDX?=
 =?iso-8859-1?Q?UfcMakScAO/TnhE4+FVzSyDll8DQiOyGmO4AzHTLqJSVLDTa6FYyt1pmvK?=
 =?iso-8859-1?Q?kqysURcK1ajw+yfqMiSPc0wFLwf+OY8Gq2g23X8xY9mk90nMKDXkY7W2Al?=
 =?iso-8859-1?Q?07EHwCYnPAIY7bq9crqcC3chyTE1Ho7N0sG4hxaDDAfQmIsT+0zM4r9aJP?=
 =?iso-8859-1?Q?GxcdSiokXQe2sbXlTTQCmW4Beed47d0pGBQjnbwCPOthzwhdhQZhni39+L?=
 =?iso-8859-1?Q?yL9mIi/E1hgPJDvFvElm2ZsxvyPqdY4lS2AjkfjwyU4nEwVucPWZSDMkw7?=
 =?iso-8859-1?Q?r4dfFojzASJCyaYFrGU4hOfm+DKkIBA/BnyJidRrRlbfkOuA5EX0KNpJgb?=
 =?iso-8859-1?Q?XJGk5xurTb2Jqf3a3y3FjThPEHJsAaBNTix1ReUOsN23oX508R/U34wY5r?=
 =?iso-8859-1?Q?IM4Z+oFYmHYJ0RvI0ocEzYzNWlhlAIt4kzqQfmO26MqY8iYLfwRyl47Ty9?=
 =?iso-8859-1?Q?Jo3c04MAibq7WJwNvH1N0hrj1KH1G7KP+7vuzpJi/C8rRXDCKhDMMN1aAK?=
 =?iso-8859-1?Q?OVRDFSr5ldjLxw54xIoe4mAyIGsno940L5jk52RFFe+dh6uBclcdTLjmbu?=
 =?iso-8859-1?Q?yE5W3o+3QUofHm4R3FpgdFekntWOvNZSzLQr+FLyBPbmCW2nFSouvxHcZo?=
 =?iso-8859-1?Q?py/nwgaVehE42VeYFjK5mtfrzt1alZktpGMeR/WVQFrhB6y9qZq0PoSj2D?=
 =?iso-8859-1?Q?CRT5r4f7wyMjeE7+WQMASLN/c5GEGq2rPC1GoLvlQVJN/SCoolrdy8WcTl?=
 =?iso-8859-1?Q?RGAR3TJcl6ctR+qIWsPX4whW5hHnLv/vOLM3Yrn6j+BhMcgwFOZQCCR6Wk?=
 =?iso-8859-1?Q?GK+N14S+GpS/4lwyQ4OScHokoEANtkx7lRxFflS4cIXVHhdLf26/3qW8ND?=
 =?iso-8859-1?Q?8rREwc7se1U9C7fmXExQRtOrLC1PqWt6e0mPcD62/Hjv2T3+IfmPu7jDAH?=
 =?iso-8859-1?Q?1d9wxLWuDnu0eQ6T3PlFTmsV9g6XJMZYUzWdes7qHvpp3nd5IhBXtPwRDP?=
 =?iso-8859-1?Q?tu+LTJwguyqjDO2Bii99iMoP7FVyUa8DfnCJFCCOAGiul0zDH11wzoEttw?=
 =?iso-8859-1?Q?wYAngkUz2yH95BNRPv42nAFFkyBUP+1m6VQgATpnPoPFfTT8LidrzhOJDr?=
 =?iso-8859-1?Q?guow8OEFp7TKdeTlvhhnxoaCvanNAiR9tL2kxxPjLXrR7RuNjrSUeN926C?=
 =?iso-8859-1?Q?UqMqIujeGw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Y6YzaAJTFWpPKHyxXmgiq9v7lUtnhMbO5mL98oh6d5+kXpdj39baGzNWgABbQ1xT9YkPA4RNEIYa9W3FvJWxmx5ZwYom4+dfSqaRFiaMIDUg6CYECBLpAe4hAsviFhSOBvPy4jCVpNy29mVrBsWBrs2aVNZhc2QFjk+FfpLHOxP6OyTDUL7x+8lVUfOQsC8226UiuIccKc37K1GqITenfCH94a9brjySXwvW5sJDOovXqBpJuxX+jNWjm3dOHj2NFQq/DOBMdgDUnePFG8zAqOIAoQdpsT1Y9eUSt0XT6/rrLpdKN6qbBb/EQqRu5kdjth9UuPEGsDYxEGeEIDHFpA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e65c06d-ffde-4a43-c1dc-08deb4bc93ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 09:05:15.7269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IEdXRRunmDbDRXSAiDm8VYM0ynRf9FK7A+2pXVfxrhuEJma5PTgODPhRGWARxPf/JE2TrWWBuMmMettaFqY0mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779095122; x=1810631122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L5dZfGF4F0FHXq2XZPGqCtPH9i3V+g9tYQ2680Jem4g=;
 b=F0jBqeyU4I0+n8qKvy5yw+rKqqScbB7alUchUYq+hE+fXEJMZmoupSQb
 15Tv646ips8kXWq7MbnO4exsSYYKaNd6rbV6tyT9dpGzKrdFjOuSymMvM
 jqzJDo0+Rf0sDNEnIdXau2wR8RU0CvPhRTROba1OTwRHlODvDzRDKEGU8
 hsA/VkWWIbajmL99GMC07/gKIdDpQdKcV2ZkTWGa7l8gn2ZuvnQ/Y4kB4
 wTFMPpwHohXuT/HdHgqfR9YYdAdT6oJ2KNZclQ8pMcaIaYLftES74rz4V
 mmNSOUTsbMAVuSeOLD1RaZI8hUaleQvxykTT7eSdoiq8QK72PsSEJIG+V
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F0jBqeyU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix UAF/NULL deref
 when VSI rebuild and XDP attach race
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
X-Rspamd-Queue-Id: 8ACE856951A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:wojciech.drewek@intel.com,m:jacob.e.keller@intel.com,m:larysa.zaremba@intel.com,m:maciej.fijalkowski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Wednesday, April 22, 2026 8:00 PM
> To: Kohei Enju <kohei@enjuk.jp>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Drewek, Wojciech <wojciech.drewek@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix UAF/NULL deref=
 when
> VSI rebuild and XDP attach race
> Importance: High
>=20
> On Sat, Apr 18, 2026 at 09:01:15AM +0000, Kohei Enju wrote:
> > ice_xdp_setup_prog() unconditionally hot-swaps xdp_prog when
> > ICE_VSI_REBUILD_PENDING is set. In the attach path, this can publish a
> > new rx_ring->xdp_prog before rx_ring->xdp_ring becomes valid while the
> > rebuild is pending. As a result, ice_clean_rx_irq() may dereference
> > rx_ring->xdp_ring too early.
> >
> > With high-volume RX packets, running these commands in parallel
> > triggered a KASAN splat [1].
> >  # ethtool --reset $DEV irq dma filter offload  # ip link set dev $DEV
> > xdp {obj $OBJ sec xdp,off}
> >
> > Fix this by rejecting XDP attach while rebuild is pending.
> > Keep XDP detach allowed in this window. Detach clears
> > rx_ring->xdp_prog, so the RX path will not attempt to access rx_ring-
> >xdp_ring.
> >
> > [1]
> > BUG: KASAN: slab-use-after-free in ice_napi_poll+0x3921/0x41a0 Read of
> > size 2 at addr ffff88812475b880 by task ksoftirqd/1/23 [...] Call
> > Trace:
> >  <TASK>
> >  ice_napi_poll+0x3921/0x41a0
> >  __napi_poll+0x98/0x520
> >  net_rx_action+0x8f2/0xfa0
> >  handle_softirqs+0x1cb/0x7f0
> > [...]
> >  </TASK>
> >
> > Allocated by task 7246:
> >  ice_prepare_xdp_rings+0x3de/0x12d0
> >  ice_xdp+0x61c/0xef0
> >  dev_xdp_install+0x3c4/0x840
> >  dev_xdp_attach+0x50a/0x10a0
> >  dev_change_xdp_fd+0x175/0x210
> > [...]
> >
> > Freed by task 7251:
> >  __rcu_free_sheaf_prepare+0x5f/0x230
> >  rcu_free_sheaf+0x1a/0xf0
> >  rcu_core+0x567/0x1d80
> >  handle_softirqs+0x1cb/0x7f0
> >
> > Fixes: 2504b8405768 ("ice: protect XDP configuration with a mutex")
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> Sashiko has provided some feedback on this patch.
> However, I believe the issues it raises are not introduced by this patch =
and
> should not block progress of it.
> I'd like to ask if you could take a look over that feedback and see if an=
y follow-
> up is appropriate.
>=20
> Thanks!

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


