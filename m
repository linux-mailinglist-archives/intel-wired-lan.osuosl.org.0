Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA7FC5B6E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 06:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58E5B82B69;
	Fri, 14 Nov 2025 05:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7on7owZar_3M; Fri, 14 Nov 2025 05:56:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0E4682919
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763099790;
	bh=QsQffnHBkm6l3isUWFNBbzegJ41LuqZyd7knQt1YkEs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qJ0hqKRK+1Jd9p7iz0gObkqewTx8mTPUQ9oMislISxVy5+FdLsE8Uue8ZEoIJbqBF
	 Klh7wY7I517nBwsNtEMiA22Msx6PR5qD12RfDwoXwXU+S/DNEYTO40KlptgOcaEFfW
	 6WfAKpv6EuqWiYaVbNXd3XNMqUpdnjj6TWFsIogu4yY+dIucG7jOJdDqXtT7oyV/kF
	 IzFuDJ/JBd3UkHyr3yxOk1BZO2+awvavpsUhg/2n1eenFtEDuag+Qrli/n2ginpAT8
	 +lbhiNOjfjkGhJOoEItC9fMPEEe8knAh2pZFir/cuMV5nZJyxs+lLIJz3XJ2QuNY2j
	 e77Z+a9I7MVEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0E4682919;
	Fri, 14 Nov 2025 05:56:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E9F49230
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 05:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D036940286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 05:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 43k45Fx1mO1C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 05:56:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA69540260
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA69540260
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA69540260
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 05:56:27 +0000 (UTC)
X-CSE-ConnectionGUID: kGghbwH2RrWF07UaDufNdw==
X-CSE-MsgGUID: rFqKzQz5TPaX5xmMSTh3bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="87836659"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="87836659"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:56:26 -0800
X-CSE-ConnectionGUID: uRCJqUpGQoavLwTWIqvvDQ==
X-CSE-MsgGUID: I5Sh0hAHTlG4xgiPzUY27w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189885877"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:56:27 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 21:56:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 21:56:26 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 21:56:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZYg8glqnmtCWxX1o2yr71ssUR7qv1uRFfRSqHdGUEkVHnffJAc8TeAGMu1FO5TZIYjkWQRuWc6RfYQLEt20mrBecDPK227k9izlWu700brBFsYLeokxT0CJ6Ze5XhsKuZvat04btNzxfohvaOxYBqpLT3uHeDkK5QrZH8Vx97vzGnN3DHx+OyG3AO9FwV0FTtG4EntlLTBEiotR5bghfqFLbjWLNIJqOxqdIci1s5pgPXumMrskf3lxf+x4suG8gbi8rdNX45bj9dw3Qb9uvq+LIFxDgRPXofLzv7e7HF0Gps9NR0BV3WeItqQE0E8IHDuuIINhMhsHMq1yJz6sc9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QsQffnHBkm6l3isUWFNBbzegJ41LuqZyd7knQt1YkEs=;
 b=PxxzO1E8eVAxuv02O39w6Vls/ixnoyK45EmIszzgn9PKz4DX90Sv3Rdolfy+6CrTB5BDN81tUaUv2EeRrLZxRETd3Sxppe12xJPZSb0HagjLY9LpfeDEqDVMyoyzIFJGv+OXzukLyYFIpiOW9Mb4T8rzNN9OarTD1Mfss6gruJXD6WkrzfMJHo32cYumQlgSvwJSTQUQ5YIt4AcRsyu9mQVEC181rbwr9Uk0leFVhX2Xvi7qVspg2AL45hRomKHoVgwyPALIKUba1JaQROjeKyTrloF+wEOBIugbJaKV/0MNgx2hciB74yku42pDu0PnibIPkWrgLUWCG/zbAmdVOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by CY5PR11MB6209.namprd11.prod.outlook.com
 (2603:10b6:930:27::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Fri, 14 Nov
 2025 05:56:18 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 05:56:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move queue
 resources to idpf_q_vec_rsrc structure
Thread-Index: AQHcVLV5P9FFM/qfBUuSDBYnKC8JUrTxrJVg
Date: Fri, 14 Nov 2025 05:56:17 +0000
Message-ID: <DS4PPF7551E655260DB51D48D8A7553BF48E5CAA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-4-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-4-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|CY5PR11MB6209:EE_
x-ms-office365-filtering-correlation-id: 0cc7b670-d548-4b5e-ecdc-08de2342875a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?bdih+UXtdzoS+1GBOq5MmvkmD7GO+tdpiaKYM/3A+4I/wIB52iu2Hb1KU2qD?=
 =?us-ascii?Q?Zahi8FCim+rgFXbuYIKDY7kN15mySE2L3tt1jAvgtCRi1nM+TLEYtIjmZQKR?=
 =?us-ascii?Q?tVpU+7xTlPw+gHDs+8we8NPx4rJeN8Pgxo/669cTPOanJYkJ2poNNZx32jFl?=
 =?us-ascii?Q?fifP6tDsPR+8vF9q+1uIFpzQTN4C/x0bmfxRKeJfGuQfhiFiev98Qmqv9p1V?=
 =?us-ascii?Q?9ja+WFd6Is4qRft+5JJiHad7kMBw4Zndjolg7rEBujcrfbbTfMtyByynT/1u?=
 =?us-ascii?Q?CKgpNsY4muDiLawybQxzb9ektUlD9KqLtbj19W1pnZsk6+29DO9GE8esuIdr?=
 =?us-ascii?Q?9FrnFPxNYQfSwsduxc2UGBf25PDquVHrI6dnH9tPoK1BpcNgd8OuCpZrRsOW?=
 =?us-ascii?Q?UkNP44PZlXW3jW5WLCQIBZypq7gSn2xhdA2zsAh1WtCWnA6GM/JsiyU9f0Or?=
 =?us-ascii?Q?MSQ2oFT64DZYESelftSXPCuIV+5RIBeyWFAva6pMiIaXTDI8XM1o1ghujoSh?=
 =?us-ascii?Q?GDvtovdNqwXJPpWojF3F/aGbynbTOnJRptzQd24n3DAGbSxFVi+fTyaj/NU9?=
 =?us-ascii?Q?u3mWIv2mQGCtV4qtFlDdgSJAQxZHl75K/WFvOQqA1FoXvcejpcwFTaWbcLY4?=
 =?us-ascii?Q?m/qFJfcRiDN8otbRmNfY3uJqXcG3UPbt6zggaQkFnGgR/sKWQDL0xpx7XjzD?=
 =?us-ascii?Q?zqqbk90xm259l9mhG99EfNL9Bk2uuHAnIwZB+Bv+0gQuBi3SNcCv8fBbxg8a?=
 =?us-ascii?Q?4utW7KEyI1tUhSxHdhMGjl6nz3VicXOsxWE3yuP385bszygkcDq5wHAaIOJ7?=
 =?us-ascii?Q?Q8DwtQQWVg2aZIgtDdD08rBUKK1p+Om2gKR2u6OEwqIhDXgUXxqvhLuZhgjO?=
 =?us-ascii?Q?uapv1vliWJibqrlORmjLmAict6OcqWPWIP+RWvK3mwT1Dd0/9LirItH+CYit?=
 =?us-ascii?Q?2R0OhBDlPtiNp18z6FGpPCitNhYuh+KM+kzEBO+iAIbIMy60SznNfG/5Dtzq?=
 =?us-ascii?Q?GlH48FJ8D5V5kEmmCMc6Q77hiFojd+/+GjU1aYXuO1AruXBue8fEp3fEOy/h?=
 =?us-ascii?Q?+iclhZJMqPqIa3WoeM+lCgXMRiNP3Z2+qpikxOk7iYOv5ZlbwXxl+TC1FL2e?=
 =?us-ascii?Q?NyLG09/OqilwHIiNLhGcpYUBy+vXtxhtkHniZ5XSeLa/n2iGttCuHlii6hpk?=
 =?us-ascii?Q?DBMfNxlqmTkViQk76Hil4bkYBkIGfhZy70vfeUETxTzjz0V+sSKXWsYzA6qJ?=
 =?us-ascii?Q?Uxj9C0VbGoDk0caoXlMhfRVCyZaMJzJ6NQAkMRfxZGr6jqJUNdJpax6dvBzo?=
 =?us-ascii?Q?SxG0ulWEkkAzB12VNTEy00T6yNqdaLkjfN4K+Of32TKESXmW7sJsnwXNceV5?=
 =?us-ascii?Q?L05bse1BpHPTJZPjtNFi9KZbRPbRIRoF1PSC9LPxkxl3HrjA6M7kgDGAS8sq?=
 =?us-ascii?Q?dWYFyElmbgwqKBiqzx++MKR+R8/d9bI2YRiOJtisYjlg3+ZUBqTDySK0qvkz?=
 =?us-ascii?Q?QhvDDXbI4g8y5xscaCAVQcuZvEtBteZEaQGw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3WOfgwwCs+mAbUtER2XJ6C/sWNBXGwpnul/DyUD7pTcerjFfM4/jaL3MPODB?=
 =?us-ascii?Q?p/yDV5Y1zVf4hP5LLrzaz+W6qx8lVieWG7LX1Mje8X6tD4Wg3pKWf3gv13K1?=
 =?us-ascii?Q?oBk7Ue+yYUZRqDks7Um4DYKVpR2Wk8aosf+37hfzdflJsYakGiltPSvJjvy0?=
 =?us-ascii?Q?kN7nzqAK0uSHrNHqWJ7XXNUiDJ8exeV+79/LII1t/JePr2yUm5EmhqtsUg5D?=
 =?us-ascii?Q?sqc9z6x/HnOiSYtp0IUIg6wdhELtfZ0IYPo+/EZU08lfUrprE0ydBineOgWA?=
 =?us-ascii?Q?zB2wCIpnHj0wZeEgbV+iuUcxlS1pVpsEr1ZkP9wE0yJS7px1byFIWmhkt2xx?=
 =?us-ascii?Q?4qwHZ2jCqBwSOd0e+k5ZTVG8eupYKD+ymhQdnhNKZSiyZCV2ccVAgD8Teip5?=
 =?us-ascii?Q?p//2Det+EuVI3KE9eHT2vdSJoV0TNyWyTXn6hZIRtE7Ak3uLhb1HpeKZpCK/?=
 =?us-ascii?Q?rJ8jvvR16Yi1tWX/+VCyPDoTcXVscVWN3I5ckFQsoZ2VZwdnKuDa0WSuxxZW?=
 =?us-ascii?Q?0tWNXXnkOj+ntm8sC3acXyXdWvX4COnr8legwFjbki5wZv84gftOtII9KazG?=
 =?us-ascii?Q?E/ALALalm4foMWV09Zt1KuB2PwRndk5shuzIoE4WJB4sSVCogiePozx7MTwk?=
 =?us-ascii?Q?/VHHYDH5zdUn17/IGBHhelJrUEi0oBq7XVFXj8vZf/7E3aXRQlsCHe00dui/?=
 =?us-ascii?Q?plfhbTLY1pL48UU1U0NYRzaewk7E+usenOr783o5yOtT1GM0+gWpH+6vTdf9?=
 =?us-ascii?Q?Rq0Hwpx+FsDDmz/ynQQk+be+nXxtuKuyqztZ/fIfh3brODm8JokJeTSfWDjq?=
 =?us-ascii?Q?SDu3GUUwwU6OU3taLLQydRiXv72c1i/Sa95OSl4ZFmNSADwDlumR8FF8cOfI?=
 =?us-ascii?Q?5K9lxshb4OHFG3UOhlipsmZqk2Bt7gAObK/wdisYLg31aZ8RVtVVVGwvzhA8?=
 =?us-ascii?Q?DhYThNJPLmMLIokJfq9bGRlaErzyNCbhP4l+KJ99L0RDMTijTv16zkfVj4L2?=
 =?us-ascii?Q?+AuvBgm/4C4JOfMme1okBecPR04C4Rw2/+5DRadryVD+U1jsaosWT210fB0v?=
 =?us-ascii?Q?BbV4CJ14vYhhqPwq+a5iI0kHJO5+L/jg0/Oh8I0nVZL8W3hf6HwimEsZUgOf?=
 =?us-ascii?Q?+sT3bCoOPXlpARiEURJFvuOVGa9bzQ1FJcTPZY3zR+CtNXwBVwe+1ijXJ8Mj?=
 =?us-ascii?Q?TWKF1/vxJf/QD5rnBi8i2CtEJUEEFyFF/f7RaH+cYKaHOy8I/z5douRnoI8I?=
 =?us-ascii?Q?edht9Bc6IrXopn/fzTmovNerA4/uaYOU8kC/DncNOUiN2fK7vBbnzaa8KaNy?=
 =?us-ascii?Q?V3dNivXbQtSlFPBZJoiAFYj2WygGrTRWAbDSkCfdqOhN6Ei8dpxQWQVzVtSq?=
 =?us-ascii?Q?U4TcLlHU1A4wBkOl8rgwQAvfPLLWpfgQh/EmNyVngWZA2f0g0xKi1EigUKW3?=
 =?us-ascii?Q?PMzgES9hPtbjpfuRG7JSGxZ+4UmOFUnPlGN3/Is3H7zU+cFWSlkRInj3cpNX?=
 =?us-ascii?Q?hS7Pak6RgtL1Sk26UqZ5onsCiRfFqTX6qQiwig3K42efyvPPBsUeZIBVkzwF?=
 =?us-ascii?Q?3XlMJowPhwHfAu0T+Dpeef5QeyZk5NaZXVjyurhh6TpVOvDDgamtNO9uu/qy?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc7b670-d548-4b5e-ecdc-08de2342875a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 05:56:17.8308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sMe6p7gVWn1P/7WLolTKVzY7RSLLHstzk/qQGpK8kq/I81jZqos01xEisD7bCanKdAaL4W+eCpNMTimQGUTR9cs+rgo2gNsYL47gGo82OIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6209
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763099788; x=1794635788;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0XE8CwfVAvEYEvHUoNvQLRgBkLHqmJp9GBiRqFL2OOM=;
 b=S0HiWsvjVC7HvmM+B9M9hE1+tyjNE6TD4bMYS6BZ0e3Bm3vqRvbgvNyV
 oaxFn5fKxp5KEySclTDeXoehcdcxewORwuDvgw7jm4X+CxOyBS6cWRYdH
 47gUa0ywU91Qk+Da9lLaHJkvQL75XMHfjSL02w5wzgNV6bLex/eAkuJWn
 stCUpW7wks9wxa1VpvDpA4iOapra2HrcCzGaoLg/3cR3pnKONJT7r7M2n
 vtdvnVrKNlj+2SM9O+uNsBRvV8lxuLn1NVPor0NzV4/XwSNoDQjoRX0Fh
 FmtMkB2Ncn+L+MIhilhnJBAG/k3MOwggVQ5/u/j3hDAFYTX7Ap3wnGeKc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S0HiWsvj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move queue
 resources to idpf_q_vec_rsrc structure
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
> Of Joshua Hay
> Sent: Thursday, November 13, 2025 1:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move
> queue resources to idpf_q_vec_rsrc structure
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Move both TX and RX queue resources to the newly introduced
> idpf_q_vec_rsrc structure.
>=20
Please augment the commit message with a brief Why and Tested: section (spl=
it/single queue, XDP on/off, PTP/Rx tstamp, coalesce, RSS reconfig), given =
the breadth of changes

Everything else is fine for me.
Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v9: move iterator declaration changes to commit after this
> v8:
> - rebase on AF_XDP series
> - remove dev param from_rx_desc_rel and access through q_vector
> - introduce per queue rsc flag to avoid vport check
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  69 +--
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    |  77 ++--
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  67 +--
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  17 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 397 ++++++++++-----
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  21 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 258 ++++++------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  12 +-
>  drivers/net/ethernet/intel/idpf/xdp.c         |  37 +-
>  drivers/net/ethernet/intel/idpf/xdp.h         |   6 +-
>  drivers/net/ethernet/intel/idpf/xsk.c         |   7 +-
>  11 files changed, 534 insertions(+), 434 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index f32dc148cfc2..781e0c8dbc2f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -297,6 +297,25 @@ struct idpf_fsteer_fltr {
>   * @noirq_v_idx: ID of the NOIRQ vector
>   * @noirq_dyn_ctl_ena: value to write to the above to enable it
>   * @noirq_dyn_ctl: register to enable/disable the vector for NOIRQ
> queues
> + * @txq_grps: array of TX queue groups
> + * @txq_desc_count: TX queue descriptor count
> + * @complq_desc_count: nompletion queue descriptor count
nompletion -> completion

> --
> 2.39.2

