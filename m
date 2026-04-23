Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBtCA9hK6mkhxgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 18:37:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 529D9454FF5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 18:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB3AF40FBC;
	Thu, 23 Apr 2026 16:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ddKkRkmH5ZCa; Thu, 23 Apr 2026 16:37:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 509ED41085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776962261;
	bh=PR0H565/e7IJmdzMRzME7l0+ru9Wai6IFTVng6QsldU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=INGP2Wf1t4TE1lBSm7iqyKX15c/sXF1Ix+paq7r3oMzTHvg2bjexIlmmLcrWZBSWL
	 1Hugc/1nYVSW/DBi14pQrq4eTROoi8ePUc1V8SYPpZ/azBCOeCH7tDeSuCwTkXWf7/
	 aiD4JRGPmMcRmmgC3R04XIIYPgzmbBAVDk66jkM5XAwh/umd51ersCFXJUZcWWyiSK
	 MrGfxiw4C9tvGkonUkNMzRFFHHuDEmPs+SCIos/Rh0bwCN0Vb9HLPrev5kuNNLvirT
	 H4T+avsjYq4VkPkxRW+UKHwRqRE7lqqkAbxFYWPxOdkZ7TuTvaqv9dsy+6LKj6jBi9
	 JgXHiW/CbKSbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 509ED41085;
	Thu, 23 Apr 2026 16:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C8FDC231
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 16:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C690B407C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 16:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HaicQKlHZpmj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 16:37:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C18A9407BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C18A9407BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C18A9407BC
 for <intel-wired-lan@osuosl.org>; Thu, 23 Apr 2026 16:37:38 +0000 (UTC)
X-CSE-ConnectionGUID: L70nXf3lRF+lDZA/+wsXaw==
X-CSE-MsgGUID: l1I+RiioTEi90sbeXUKS3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88547605"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="88547605"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:37:38 -0700
X-CSE-ConnectionGUID: 96xx5Eq5R8i1cvxEW61UPA==
X-CSE-MsgGUID: 0kKqgwOsQZqtMOY0GBxzdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="263102069"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:37:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 09:37:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 09:37:37 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 09:37:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RV7YzUDIZF/00n106Uxr4fyx+KAhJ7uMfrfzf/XnBa2NkIwirDNeQNyovOBv2JX6VGolvZvh2SjZrkJ6/sp/N3d5Fs6t+soaRjQYyM2Rr2lsJXWfu6WPIpPsLiMP2AWMWc57fyjXtCNgTGU4mFf89KnVSH0oy6DyF8OvAoYNHagskn9AynIQNJpYBmAk28GoOlnRyiGGWzOTjl5XENNAU7iDkWRPeHflDN7O2ILFPd70zEUX2e7FftqNkBLARsNt0oUKKlSENY+3kzqWTadiN1Y16iScbexll719+UGv5HgUNF1+SjlOioU5DYB20ZOeohvA1ifRLPbVEg+QrOL2Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PR0H565/e7IJmdzMRzME7l0+ru9Wai6IFTVng6QsldU=;
 b=gQSutq8m6I2T2fvdfI7T1WiuNHsx25FILPXMGo0ND5lM88R6kAiPRlsh3+DdG8g/EjycCKtfAq7hMALtVNH2YrmtDtmYHEvUkTOzQZ5Gd1IO2GF1Jj0gJ3gP5dAsABFMo9gSD+fffbni/2bfYzhMuyNY2LWqohyJ3dIlQHizMo/ELVh/H+z4Jbux6nIXM1yoOTe3+J+mkEo4ge3U+l4sZsDMRwIHn31GA87goer3nfa0YvXw5+28GpS4Vu5SOJo4sbJWZE0VaiRfOlSwfk4C7KJimK87aQfDQhs9Y41F49aeWQijGYnbzjJSNmzp294Wk73vego3cZWu0/xOtRVogA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by SJ0PR11MB5023.namprd11.prod.outlook.com (2603:10b6:a03:2de::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 16:37:33 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::c347:79e5:a47b:f3a2]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::c347:79e5:a47b:f3a2%5]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 16:37:33 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: Matt Vollrath <tactii@gmail.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration
 on probe failure
Thread-Index: AQHcxWDGDL+mbMUvjUyWH/u+eZqKl7Xs8noQ
Date: Thu, 23 Apr 2026 16:37:32 +0000
Message-ID: <SA3PR11MB752703098C0E8B8CB5C3A472A02A2@SA3PR11MB7527.namprd11.prod.outlook.com>
References: <20260406005830.2250373-2-tactii@gmail.com>
In-Reply-To: <20260406005830.2250373-2-tactii@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR11MB7527:EE_|SJ0PR11MB5023:EE_
x-ms-office365-filtering-correlation-id: b25fd40c-a266-4f3b-8b0c-08dea1569e66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: fVWSIN3CA3Xa1Xx8KljjMQ5vi9tLP+ZbXcdBKUGB3QHLxKuylXRUFD3jNBOG4nikGuOwEhPpoSu6FtgJpMEBtosUbidYlEVZuurLAbcPXUfDAb2NEdT7hOxtqfxRH/3Sn0gp6bxjtZHYSFFNtiqS7D8IC5EyZWaWLeko2lUQ7ElfEJGaj6XYBsZx8YNJ8VUwlhblmpPlr7byhL0Sc8P4na/8GE/SMrRpVLQYfGYVnUMfaYUJmYCBms4QZqki/LxLDRCD77foh+TEhnyP/zvdcR0mHoFy19JxnCNAoVXe8BplxOUqsxxE7fKagTWI0ytksgj/OeVIqd7N7ZW/5cICd67qxeIvZcujPuepB4USC0YnHqWZK3dOJv9v1xw+jP2nmBesPtahbZSGdr27f3osF+PERgRAU+LIoBJLJc4cWET+5DOlUSJwlpzv8Cu7TrmTjU6XxFfV9uwKJj/3S8idDrLIRdgqCx6aqbCg0gsnIEQoVg8kOYzh/NCbM457rsivjJ1FQXARAjFuYKP7/xbE/e/VYJWvSNFuYJ+9YUOyMzcZrBvg7Ns2ChlaYXoWGdOjH6eEn6Yvp/fmhXBZ6kLxb5EMaT6Hit+NKVC9s9SFP2NR6zfE1YvYsuY+qSuGW+KoyyEhhb0lpVEWz1DiFiwNYsE03zBSaGuqzlH0DPnby6Y8DPptK5rY+IlTQOvEaCuolBvJz0jdNRM78Ubehg7Gy3uTT5mchsKSkwyNbuW4COi5dTpbdIQuIiJEa/eb2QZGZl8xG/N2ma5fu7iIfipbNAdCHqhsGODDjjyxAQsUWG4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7527.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p5FNVWM1F8Xs0j+I+6iVe2u+ZnreSK2wo3MY20Z1pIpC5HD84c1kwcc/S67i?=
 =?us-ascii?Q?0ucOU60DISrPJ2xveAlXnJmoY29TPizZn8kGa0DANfSPwCsdmLfOilSndl0E?=
 =?us-ascii?Q?7j3zacDKy/d3G2ZGzvgpCB2j2i505tEM3ckN/Kq2xcZ/eqiiIjNFU0CgipvN?=
 =?us-ascii?Q?DKTJKzGGj23VOVuy2dp4m9Tr8/0ZmBoR1aDw4fert6vfcPvnNQEWkHA5MvE4?=
 =?us-ascii?Q?rywvrOsmFd6mcpKRAW/YRdrrcpo2wIkbZvKSWuSEZBWN5FhSLjF/+UzGNGi6?=
 =?us-ascii?Q?QWEoKCqrl5gQHeW/NQMzC3ZPeqaExkZ1zVWAUqKN8pIGnH/zUzUsd24TTBES?=
 =?us-ascii?Q?JKV+Qqz2n93TC4BURIYHa9wMkttdJ3pGtNhj7rzKiJNUI5EVDvdRc9a8+qic?=
 =?us-ascii?Q?T/evUL1PSfqpYRoMDPKN85kmS+kC1YaUCPBDWTWJcfZbus9J9QDfFsUwtL9+?=
 =?us-ascii?Q?CwMWk/bU4c7UIAr895ojNm2OfcSzLT2Y7n+WssC3ZIWykW5YwmEhmRnAUTlZ?=
 =?us-ascii?Q?fpM2PD9dYk1vqwPEw7MuHTVvQ0gpylEz/awXchZFYSyJBMOerNAE57Riidk1?=
 =?us-ascii?Q?G0Kycp/85K02la/IXSl905BROR3a4Ca4lX+ocVafwYSEVzVrWoUVZX9GM94j?=
 =?us-ascii?Q?gUoxQcuHxq2kQ7rFI+Zge6YhdOysbA6V3QJpupiPik2nOIiIuee423Ov3bWB?=
 =?us-ascii?Q?OdlLBZtSyqkO0bUiMzRPzMcth13gcfvZ9PX9/lupbl/ieBxR6vM+qq8SZ8j1?=
 =?us-ascii?Q?WPgy29zplvfeIsQ38LCVVz7V7gBaHdnKvmd0ZmMjeJKAqBi2NmifDnUK31vq?=
 =?us-ascii?Q?zj2Z7VpOZ0KfxvLMsn9gHIkgGyiMU6j4QjfzLOnKrpgdaLfqRc0AiFlzjie1?=
 =?us-ascii?Q?qCIR7SGgf0LczPeC5Zb6X6wP9ailTTU9v93IkVKrSkgse5ZIU2hMX/iePatN?=
 =?us-ascii?Q?r51Lwbsw9naKtR2koRbSrCfnQ5EhPI/Dvzbh2AdIl8JVXdmvvO1YaJrRhrBv?=
 =?us-ascii?Q?q/ySjLZmShBVdvUQdjNYLxr1GtvHpPCTE5k6X+QHR/J7GpbON9f7wQEfMS4u?=
 =?us-ascii?Q?EKK9S1M4s2H93f2B43v8so8esqZAb1YHfO0jMta1WpFeHnypWO9rxriaJlfX?=
 =?us-ascii?Q?L5y4JyLxJnIBuS49HdTTEqgYH+mkqME91pepOaNozzktKXZE/uoZUagSNQkD?=
 =?us-ascii?Q?7JBNgoTwSdteR+d+ViR7aIztFb9WltlRf9fZYsshIQ4+7djHPOmgIOkEJdZK?=
 =?us-ascii?Q?yGVzmhYR4OKaq3S29Mj6GWjeWC+uYalTe2YXE+r0k8cVbPJjZpmPKrAv2jFi?=
 =?us-ascii?Q?LbwzouauIdGWhxIqn36Cy502x/gBmYyaYvKHUIe+jMpT2k+Ca6OruKlQNaue?=
 =?us-ascii?Q?rZbFCZE64KQQ5WB1SIojucRbYNJMqW3yAwWUWc9ZytJjuzNr327lgD2PUKVt?=
 =?us-ascii?Q?oenSW6NOHbOoZUiW3+8uYoa10JAFtVcHDeW9FMp9AwEogCC9FM4jjpAAY9Z7?=
 =?us-ascii?Q?ri5qb1RjJmxkCSeWHEYCKO+O8SZx2xi/mxo2H/l6GCY9EOa5JYXBoodFP+/Y?=
 =?us-ascii?Q?z3a0df93BQ4tAptwRwn0Iraa8eNhY1ayoJuDFiVivqadSFYqAC3RQn6tvHmU?=
 =?us-ascii?Q?U2bZowh8uEpAEOMWTGAIHVBou738B93wunNZXp9FuSijayNBJ0CYTYz2d1/e?=
 =?us-ascii?Q?sCVL93syjwlqIC9pljn6MC516pHnqcIaacuXIOJIW9JmdilvuII5Avc7P5BB?=
 =?us-ascii?Q?5KwIGsce0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LRiViHclMEjmJPwdVT0pzGjdgb1UvObRSggPDJRSF+L6LcWDDD/AVgNATBlqqhG2PigMv/es8B5Y7nQZ0GAbM5YltMyQImnHpKk4qBVFgwGlq+EKGK07B08KHaOFJbGN1dVAIKUw21SVt0Um8NQHVmJFaxA0fAErtCvW2KV7Cj64oZDKpmkHISpI5ZymIPkaDeJOjllga5IihwzOVrNZsD4Hv40bIGEfS05JbVLvIJRA2EMB9nm/sQM/VAQls/ksTgaLj19YCJCLWVg+Px0VAZTKwdzc3Ce+z8z6jixQqnNaoqp5nwODtwNZNdMFtFCGsRMwge3uRK9eJynt9dVfGw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b25fd40c-a266-4f3b-8b0c-08dea1569e66
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 16:37:32.9421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OATCuRJJN5q1K2jo98wbvZ88Epn+L51LVfurg9T7/l2PNuzRcTdocjB0o0w78PgoDeA42TvoumgKEQKlsrFpvTPkoOpmu1Zb4MQQvS6fFSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5023
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776962259; x=1808498259;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SGD/SOAP6KC6Q/v7oME/Nzn6AUeTPLvndylQv5DznYs=;
 b=BJG4dNsiwAe6G72fegHbr05dVx551Ixo8+xzc8rAAiY3HUrUdb1zGJCa
 2c20YUoanl4LP5No7uVVBuLyyq5Q9XLZ6aIqsk0Y7WKMknotKSlgtj+/B
 OVk6g9ChamnUgTXHuZwCk5PQDlNrV6twCrmwNiOnUTY2o/3z+61kz8Mzw
 sRFaFErPIlYp3ygOXI7kEGpa7vaZGtqH4u6e10LingAT8x2UlWTVr9A6B
 mJ1ZerPz2iOKNjubN+GqtSDI8+1GHmjuUh3bHUVSbzywy8YqiB6oQ5VWx
 VZowbNsMBlWHMwCPUDo9z1FpznhphFGDFiXD1XdmsDJ8IRtm1icAbSLev
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BJG4dNsi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration
 on probe failure
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email]
X-Rspamd-Queue-Id: 529D9454FF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
att Vollrath
> Sent: Sunday, April 5, 2026 5:59 PM
> To: intel-wired-lan@osuosl.org
> Cc: Matt Vollrath <tactii@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration =
on probe failure
>
> Fix two conditions which would leak PTP registration on probe failure:
>
> 1. i40e_setup_pf_switch can encounter an error in
>    i40e_setup_pf_filter_control, call i40e_ptp_init, then return
>    non-zero, sending i40e_probe to err_vsis.
>
> 2. i40e_setup_misc_vector can return non-zero, sending i40e_probe to
>    err_vsis.
>
> Both of these conditions have been present since PTP was introduced in
> this driver.
>
> Found with coccinelle.
>
> Fixes: beb0dff1251db ("i40e: enable PTP")
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>  1 file changed, 1 insertion(+)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
