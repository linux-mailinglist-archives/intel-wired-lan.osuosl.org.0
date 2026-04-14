Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEt5Esoo3mmSoQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:45:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBA13F989A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6B5A8084D;
	Tue, 14 Apr 2026 11:45:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAFTcb4qa0l9; Tue, 14 Apr 2026 11:45:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5117A80880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776167111;
	bh=+nmADhaBZWyUTPr6E8H0Eb0Sj8LIsyrx0P6f2XqK/4Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bVjtFAn/kQgF9kFdcF4qxTeOEI6epkg4rWZvhNqE7ov3q6KKBEGPUIoIqE3a6iWRP
	 N58ocstp1Cn8lsMip0RpsWBN868rnpBrxeVHAXNG7VLNkKLvp2KWoGbadN6KsW3BlP
	 O60/2AFSQdxgJgGv4G+nL/PPScak4BlT4/95GQqYSVc0oW/mklCSd1UBqoEogIaOWc
	 0V9wvWX2s83ORMMnd+gBgQANor0zgCy9ppUFaBHCmEUzT4tRZGvHLEceMpZPE1DARh
	 +VDQCYdRLDiBwvNgExFAiBUEO/XrnK3rXzm+bEpAhFLG7L5E8lTtoPi/nkAk34KK9M
	 oHLqq+JUoUkvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5117A80880;
	Tue, 14 Apr 2026 11:45:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 93339283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7986E407B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:45:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u6DlDT5nHvYR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:45:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D35CA40575
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D35CA40575
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D35CA40575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:45:08 +0000 (UTC)
X-CSE-ConnectionGUID: WMqTpSZaTWqwcx+Qsy/qDA==
X-CSE-MsgGUID: bImI4MzfQfOJZlpehuqXMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="79705161"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="79705161"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:45:08 -0700
X-CSE-ConnectionGUID: sFd0O1nnRhutS8TmYGCKEA==
X-CSE-MsgGUID: ACY0eVRhS6K0WVNUzJ2dAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="223576038"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:45:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:45:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 04:45:07 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J6nez+XjWbsePYBMsZAw3OYne9ATnm940oZDYbbXsPyHUThHPS/4DUUTGhsgdA/nHN1VpBaTq6OjuWuZGtu+DvXZAgPmZLKyOP9p8iElBoWl5QsWO2epKewIRy0SzK1323hOAJjuWu/ceGqhoSm1zZ5ybqk/kHnMBCVD9PTJbGv0qYuf1lwCP7xppX1tnn4raTcizCufTo4CZHvP7OnXQmmd1os50CKn3UAYSKp0c/5GngRTm9weovQWP8xPBtv/zEtDcZHjmh9hgvfOvGIjnIimvDFGGMVavEYMVAqrhLLI+nCvXZe/r1oeGXPuLUvId06KU1lEosC1Ng+F8uVkBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+nmADhaBZWyUTPr6E8H0Eb0Sj8LIsyrx0P6f2XqK/4Q=;
 b=YiodopWlqdlF+EvStgdKBy0H5ik1RuEophaHFloRX5V/lV60QP8X1oxxyxOvCfw+6migauRJXh0p/vwGz1WXqHzjU960IhHdINqDURIiPZmqYqekTudtwOz0OMQtxblloUZGz0xhzgJUNEU5rcfaJqQrPGrg7OXkXORcI7GKyvv5wOatInS/+Atmbn5HS1Jp2FtDNetJL0RSXeig3QmIW3kwnFX4kUbMoy28AuKmg3OSFP3VXWauylaqhM4NRlYAkxxi4aojQPBGCAmkFWuiyrSFJjTa3/60P3EkKeRug5cQ9AR4bszHkHFfNhDHRymvwWftImW4hJpJeGAucXTcLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by DS7PR11MB7929.namprd11.prod.outlook.com (2603:10b6:8:e5::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Tue, 14 Apr 2026 11:45:04 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9745.019; Tue, 14 Apr 2026
 11:45:04 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik, Marcin"
 <marcin.szycik@intel.com>, Joe Damato <joe@dama.to>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ice: remove excessive
 memory allocation in ice_create_lag_recipe()
Thread-Index: AQHcvbXWknPU+87CeESnb9FCOllzGLXejLRA
Date: Tue, 14 Apr 2026 11:45:03 +0000
Message-ID: <IA3PR11MB93018D55E3C334C55E59C7418A252@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260327064855.112786-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327064855.112786-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|DS7PR11MB7929:EE_
x-ms-office365-filtering-correlation-id: 53015b6c-f8af-4bfa-da46-08de9a1b44b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: IDe18emDsHCRMUKQrzpSvAkQRPx7EOQfsLjfBaCFuspLpQ+6F4gHapRVTsUpmgbZjFWLRiErOIZHzevXwfqeDV8wfpce0LpzY5u0Z2vj+JCnfAP8mwqOBAQUZEUT1mCJXAF1wkxwgp3nqzd/rcKV/oddR5U8H0oT9wH0pvLn2bvvZYZ16yxxvILIHSppC6XLE6CJVP9LnNFxZyR5LhLXXkVXzc/nvE1Ca1S5DwzbQb7+8ojRRYUXlozAYA+uW/tWpJKYj2xvKJeN0jaohSXcVSIA/j3FoFcWNtA9GQo0N/dDtLwCs9bxjv/pAPUfSuFSjIBFrkl9GatDNXty6bppjfP5daLPMfkUzPfApCiymdpQ/8OdsQ8cw/fHO9RIXpnaOwW0X28sebYLhTQDI/kWd+/RLYtstEPVbuEg1iOiB6CdFMHDV+M2K8B594tTEF8VkslTYEYhfzoyKk5ia7NhX8KCCyZ5J6wxRm6kR5iinw9ko/WkaQr5jJu23251VhC4C/2KBNhF+4I+pX1DGdXwb+ACFz2UsjIhsmL0MqYsaT3X1syk3/GGmcJsUO/mX10MtNDQw+2SdV5RYfiP+D9kUQFhyUIqKT15wo1b445OBBvlRwM8Ra4wsqVAbSMDuXcpIWIxlKs795IT+st9Ucc0wi3NR2sJC6wNZ9qx2ru1Fa+lv3g+dCXovimcp3o3ZqxdXhJ55pa6+VK9BVWncVD594fJXbCzZZMxUN7b0B7uqqgbW2Pyq7ee/f/ZfMKQKh4fkWdfyJyBAZ6aAZrmBMmHn0Y7vC5Chw5Gj2EvFZazStE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?O1gYhkQvHT1ZAHFt3gpsXT8xL0fOeGJnei9z/9dtSqS0PG8JXTVcmzUILJ?=
 =?iso-8859-1?Q?oPYd9PoUo1Vz4TC/X1XJrg3oSwz7bn96TKA3B8fZbsoSRuiiS7chz6mBhZ?=
 =?iso-8859-1?Q?CcoONTqJ90kV/0IyhhutxGYwrNRdAKPmdxErGytaemuzT76tU74Ml9DRfk?=
 =?iso-8859-1?Q?rZ1PidvGXQT+he+wmfzVpXZ0tusGzMDNN7/K1Gkurc5FwZWC5dQ6ulf5wn?=
 =?iso-8859-1?Q?43OpIEtLsaE1Glikq+NZjV+l0nqBhmO9nlMsmtYypmYxV5A46eT9rCwXXl?=
 =?iso-8859-1?Q?f5jVgMpW8pLJ8HpoCGBGa/p4fEEPu3OHeX5RFjGoFrJCWXPtidVkpOzzcb?=
 =?iso-8859-1?Q?fWw/1xUK53S+yDKpqQxsqKthYi63ebZ2f7Ide2nmfPivEAfliCHwU7W+Hw?=
 =?iso-8859-1?Q?6AcNW86ekUtK/4GRh4bs/SHebzIiD+VVDEIJ8ndDO6UP0KvgKrc4alqUjF?=
 =?iso-8859-1?Q?ataTfd+xiwbNptamrskGwyVwjjckuQ1LJl+hXI10sdUD3YE1FdWEWDcMug?=
 =?iso-8859-1?Q?qK5dyd6s8VizD4Z007y8LA1Mh+a99EwwXQ5A2BukwoD/DhFDfNpre+DdI+?=
 =?iso-8859-1?Q?F2Qs5ATe3rkntTbG20Pa8qrPuxnk9RajTLaQ3SoI077wLid7es7G7w5u4s?=
 =?iso-8859-1?Q?8LwvQXqgjuW6hDLMzW4dnhdoSpeNtNZ6iKcvj6gv+yieJ5oijUAhoQ/iMV?=
 =?iso-8859-1?Q?A7urfGDpZvmDWNjHD/NduqYtkDgQyrh4DwFbdZDpwtxXE2TvLCbEPo1tN+?=
 =?iso-8859-1?Q?QJrTOdS1SgiUAqFbfiGG766n8JfzLioYAiRtd/5AROqe9l/z4ingypb291?=
 =?iso-8859-1?Q?jgI7nJg2j6fpoRP05gSsdOWqNwrthVjL3QKHjBqjs/hhjHg2kNdlRhKeIh?=
 =?iso-8859-1?Q?ofKLEAchD4LlkVlcpApf9uL/3b8jNxwiiM1wmZwV0msiJV/njepR503OQM?=
 =?iso-8859-1?Q?jelufh57oggoBcbzzaPpkGjKR9krJPF0XQUXENEmBRjmXpBuaj0X3LBJKP?=
 =?iso-8859-1?Q?0WerO483ldAcc7V2a/3sq4ut0J2inAefOlxEkbRcKHHlTqIbSgAU1ZOjph?=
 =?iso-8859-1?Q?irBW+W3GUlryPIBsdUtOTy7fYvt0ta3NyJoKW2UnrVduSy6uFyOdCm7Dr2?=
 =?iso-8859-1?Q?2cGqJuiSJ3fbt9Zgeq+O8/I55U9JDaTwdwqOakSC4Vwyu+T3nA/5L0jq+B?=
 =?iso-8859-1?Q?ER1K1FpHHsw/F6cDwHzMvxwayTyNcWragvy3vGWKXcTgRoDpeFp7iuYWFT?=
 =?iso-8859-1?Q?uO1U40Dwtcb7cxYzkXjo03po6vWev/vS8c6p9zmZRwVl2dLxEFD9A2aQoE?=
 =?iso-8859-1?Q?KAIGp2KHKnUXgfrS26vpK+DacNUMw/3/jp/Gh3l3F2/xt4x2K2Mba6wWPu?=
 =?iso-8859-1?Q?LRPhJi9cUpVCybUytOQDHa1NGWz1cZxD8dnDcwGe6C55Fj+29jPRAEw2T7?=
 =?iso-8859-1?Q?prOstcnAFstIvzD6kRDO/Qv45rtIF3DYuAwjdiRgLi3NdDLJ8QQoDsQ/rg?=
 =?iso-8859-1?Q?ii4zAUqrmBy3HUnuRPco6yC/e+ZZkwdG4tbfVOyqyE6EScsEV49EIlMGUw?=
 =?iso-8859-1?Q?Uedq4tkb9phrvN9QI+9KxfbysiRPOvtX/5Mo/LmN3dCUyUk+WA+rtGLcaB?=
 =?iso-8859-1?Q?0O4OkHFaTPPbjdY8IF/BdsHZbLuOZZGa8Z7B9EOOgybRQFfJmIsWL196Sr?=
 =?iso-8859-1?Q?xUdTOx3H2VA0SpSaVX7dJcCTaOF4NR3aLEY7dlsK/RMPiRihn3Yp+PtIQ/?=
 =?iso-8859-1?Q?rW9KWyn0Db8ZcOWBGe6j+AuCStdclEqou2H7m1wB0yqH3AehG+BB0ULlVZ?=
 =?iso-8859-1?Q?FOBrgOoCIQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pFo7nnNv/clQV9iZvO1H51YiCQprGVB2biH1lnZRIGJOK+4/gmxJnEqLWLxCkL6pWf1rzFWcEimaarrSrZklbOsfYGhnyHhx57pRxUouYMRh+cM3T7JwPdt5TCeDkdtQ9YDADNmevNC/vjFLzKK7u9ZGmjiDQ2eTzi8nW5b/Rbx0ruiCAdCtvKfkCi9j9gi3QH7baubKij/gJA272QMhixG9FyDxRgsCTdBsB2VZVMyDAoY1dRiLyctKcKS4AC42JQC77ClgSlPmrUoyWN/Y6ElU1nzhab96gV+Lifm2MyIJJBYtOJ7s5u/k1K7clGi0eQl/onGg84vURN0Ocp9/dA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53015b6c-f8af-4bfa-da46-08de9a1b44b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 11:45:04.0165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 12zOOVzljRcQkMd4aNtU/uhSq66m+BnrPSp86Qv9BEzH5EI+9cU6tRwxeHjoK2elNB9WVNS7xamUp+andklUfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7929
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776167109; x=1807703109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CbIQoJ60jE6pT8pt/ib2xQbrekEX1D564vYqKpX1o6E=;
 b=eh/74WlDM6GdwsIpm1fdT6Co/iXd6RWJMzwLZV6dhn5nrqtlJm8TgCEf
 0v/MfqaBg2wcj0eO8yTqGPl3ryHETBVzp8cJM3pFOuIM+TCb4S8whuUh4
 O2GpKOHQ6VRmmblh8ypmjxenWk1GjZGsmTwB+eMfkrph1kGLQUMiRI/39
 dz5H7J3i+A7P3sbuSh69C29583cIYy7fRtESZdOCj64FRMH3VlY31dsZh
 ARH1FZOKtDlAkXS0MVsqrTK6zeXtorfelI9doKBsOA3P8pms3U6gst5Gm
 F2eT5ZFJlDA2G42hssPHGiYVrNb6CJkTIyIKh2gCb0gFyjvmdzr5lBVbW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eh/74WlD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: remove excessive
 memory allocation in ice_create_lag_recipe()
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,m:joe@dama.to,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,IA3PR11MB9301.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 9BBA13F989A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Friday, March 27, 2026 7:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>; Joe
> Damato <joe@dama.to>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: remove excessive memo=
ry
> allocation in ice_create_lag_recipe()
>=20
> From: Marcin Szycik <marcin.szycik@intel.com>
>=20
> For some reason ice_create_lag_recipe() allocates an array of 64 struct
> ice_aqc_recipe_data_elem elements, while it only needs one (1).
> Fix it, while also using kzalloc_obj().
>=20
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Joe Damato <joe@dama.to>
> ---
> v3 -> v4 corrected misspeled RB from Joe
> v2 -> v3 use sizeof(*new_rcp) in memcpy() to match the allocation (Joe)
> v1 -> v2 remove 'Fixes' from commit message because it's not a critical b=
ug
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 310e8fe..9ad19c3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -2418,11 +2418,11 @@ static int ice_create_lag_recipe(struct ice_hw
> *hw, u16 *rid,
>  	if (err)
>  		return err;
>=20
> -	new_rcp =3D kzalloc(ICE_RECIPE_LEN * ICE_MAX_NUM_RECIPES,
> GFP_KERNEL);
> +	new_rcp =3D kzalloc_obj(*new_rcp, GFP_KERNEL);
>  	if (!new_rcp)
>  		return -ENOMEM;
>=20
> -	memcpy(new_rcp, base_recipe, ICE_RECIPE_LEN);
> +	memcpy(new_rcp, base_recipe, sizeof(*new_rcp));
>  	new_rcp->content.act_ctrl_fwd_priority =3D prio;
>  	new_rcp->content.rid =3D *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>  	new_rcp->recipe_indx =3D *rid;

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0

