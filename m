Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB9DC0C148
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 08:18:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACC9A4128E;
	Mon, 27 Oct 2025 07:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1f489bCa0MXg; Mon, 27 Oct 2025 07:18:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20F96412BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761549493;
	bh=mBV3MPzWti59VQ8lDOqfzNo7tzm7puMztHzL/+4oqpw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9opjlYtdGbnxuSztVX7rZ47LCXVp8xe3XgzyOUNQ5ww67tvifPYcvlUzvV9xia8Vg
	 A2AokxaelRHLuDqd7dkeZAoqL/5rkUlCWnRwGlqFxpu6uN5feMEhZOHer16TkYedin
	 Zg5pg8Cw+Ujt0LCm3mnoQ9zssHMkO5DJlkmp69oLD2pvKvQi/dQgIZHBFEiPDVsovy
	 gWlbfG9Noxnj3EJjB2jaUqdka0laLPKl9uubBQpnX4GQe99vDNMphJ+BBdU+N83j4w
	 BSUhZo/ykvcBS7lXlqPZhNiBhl9wHVLPXGzsquVm4KfcmwBKWLZ6oyqzqddx4z6XOb
	 O8Q8CweiEh3BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20F96412BD;
	Mon, 27 Oct 2025 07:18:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 32E8115F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2497A8405B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cz58vHfsXFvw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 07:18:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3CF778401D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CF778401D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CF778401D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:18:10 +0000 (UTC)
X-CSE-ConnectionGUID: n4hVIfmDS8a1pXGa1mM/QQ==
X-CSE-MsgGUID: VK8kMx5iS9K6FxNZLNvGqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67488830"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="67488830"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:18:10 -0700
X-CSE-ConnectionGUID: GBRg53aWQx6iWbWMpcljPA==
X-CSE-MsgGUID: 6GdgOV3ZQraIrlKPcpE6Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184149745"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:18:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:18:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 00:18:09 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.30)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:18:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rcQESBmAN2XUMQ3YZboeB3ZP4+MYhfmvnCEvO2/ebhVQdLy0RzmOJ4M2VKhIaWdoQsLOl0mDHhOODcp4Qmn20+FeFVuBx2F8Iyqz0zK6N7sJcm9J5sllIyjsnxiiiOKyBLU+O6lZ8wHuX17lYVJs0DAPBmCKmYxUChQdmll+8K15mEGur70RwTYAHezmXJ4eZftBvm4UGJLt/qU3Rrtre4lTs0sCjMuWJUOchfyvkXge9mqnSD+ya5ZjRtIP0Na/cbgHxDjaxk7RUt3f4LBrNy2DYGnX2k6ASUih9ZaWUjccuNc/esUi/9i5RHBKJx8YsfQ2tQWPUlxqdMWLrHsD9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mBV3MPzWti59VQ8lDOqfzNo7tzm7puMztHzL/+4oqpw=;
 b=LWooOfwLbHu752R2xeKTTkebcM2IvLwTDssKwryMWPA1NzFen2ICb67ILsyI+1qti4xgy/oq1+Z+clZgV10fx2r7VD6XoiqaBIUuXXGpGRHVM7OvkmwOWXYdxlXX+hgdWZhWyueUI3mGmWk5bTw2jVln41W1OiarREGD7Anx6cvGDvlaw+Y7mCWvcaXNERD33UBdOCNucgQF35gpzevG3CauQlWmQZR4iKxTHcuQwLjgnNojMPwkp0oozRv9GaN09r/SDCmdhN3ou9qI79e9HYIgQb+JWC0uSNcBzZ+Fcy1XPT9q1frJGPfjwJXsFyJJoSYi3vFJLvnGzd9060eY9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 07:18:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 07:18:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] iavf: fix incorrect warning
 message in iavf_del_vlans()
Thread-Index: AQHcROyxwEjaiVLO8EKhpYKzsn0wYrTVmcsQ
Date: Mon, 27 Oct 2025 07:18:05 +0000
Message-ID: <IA3PR11MB8986C9C10709B288CFA51C0DE5FCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6533:EE_
x-ms-office365-filtering-correlation-id: 7f073ed6-2bb1-4712-b1fc-08de1528f964
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|921020|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?y/pH29XTmdLZ2qaYOI1Kq0oFVUs/8put5hunLL+N0jhhkkxCvi6+HngXmK69?=
 =?us-ascii?Q?6T6dyumA+FDzYQw2v3DwdL3JX7APMJQ6qU2yXqVISZ4wb0qLM7ixnzn3uk0b?=
 =?us-ascii?Q?xVllSGi2nz+79t3+n7Lob8ocIO+TDQanb123Ltl2TKMJC+FDkVHe1qJW/zlp?=
 =?us-ascii?Q?mZaUoMgEIQpT4LmPXleR6D1wi1ZVIBzR9z2JVEUJJIoLrzyzYtoMtwv/GHQR?=
 =?us-ascii?Q?r4YwPiy0+I3+MjmqfUD791djGOkI1kQugKIpZkZ22yMxdzzXKrRX2VdA7mcZ?=
 =?us-ascii?Q?G7oCKspijHebKMO/0meHXEL11at9bLTV9Jo/98Y9Hvga4r3xU/oh4RmFBz5T?=
 =?us-ascii?Q?hCXoJVXxu+GlZNzwPrbcnMIjflUFCUmDkjscrUXCu/wqSrqRF7BteVWKRkOM?=
 =?us-ascii?Q?lnGr7MRoiRo0NU1UYZON3jIHByfA8EajieLnH5ZYQmeRtJjJduCaSocRmW0M?=
 =?us-ascii?Q?zq/QmVrkQwNNhwo6j6KTzLq2N+CDn81AKj3wsCD4epkN5F8ywrdaUkCwTKKe?=
 =?us-ascii?Q?2uxY8msp4nRZkqAaUqBZOTE0GRMSTWoUXUlZo1HVNe7RY6IoDXZrTZOesMIX?=
 =?us-ascii?Q?6OhbCEnbZemu2CWyM1NF3kumHsk6XqVD7hZynAAdZ1CkaRBUuJOBPDoNULA6?=
 =?us-ascii?Q?PiLlPhSvZLX0WlndJKBiabo7ULAsKHaw2oGNoWqS8uEa8/f7NlkbI6IQFdbu?=
 =?us-ascii?Q?DrOSlA/KRQ/8hIeUMofroMpE+FAyeHObC+D2tp9c/FGPt2v/DPhJf/LH+sda?=
 =?us-ascii?Q?sAAbz4di09Z9Q2grWGzCFNfgSbmTljA5VIVlv6+BErZXvnxsr42g6zow4PpJ?=
 =?us-ascii?Q?wR05DTRizOVYGOScM79J5CVIc3jWtGG4V47V+kqRK+jdEzaxPHWK9YlXDPF5?=
 =?us-ascii?Q?RjqiC/by7+hnn/1q/4qi4bq65J5GqIBlomJfoaILI+1UUiTtwYuvYIfpTbvY?=
 =?us-ascii?Q?SJYLrSxvE9eOuh3lfG1kSMVSC37h39HSjse4nHWC8CwpRof5FLHW8LpMaFeP?=
 =?us-ascii?Q?hUnNu4j7sQBkTOkBe8s6Fe8i3RWxl8ohfYJerKNej9QRLo7Twn60n4cFicmt?=
 =?us-ascii?Q?4JtiCb84qaddNtlklSXPw5r6a0p4/2dSPgPxzmVzJMUWHv7ly6eUMadvWw1j?=
 =?us-ascii?Q?rspd7n8vAr5P7Z272CsOPzJMnp+AegmR9oYkjJoXR9sFEzENIYQLI/AOvO5c?=
 =?us-ascii?Q?bdKYKaSC51iQhLI4U7foB3fuU/bPE22d0c4qdh1XavfaSSvwJl2HbczfgvVv?=
 =?us-ascii?Q?VunYxwGBMi2h1kEk8NwemPakb6+SbFI+L+ICJmnDfvoDKXa4ZQsBnvibhKls?=
 =?us-ascii?Q?aC3eQJtijUuSO959cZ5nZD8mMat/mBvyzTqRNRqe1vdQfFeFJ56WV3ii+MVr?=
 =?us-ascii?Q?TxHb2NOplhl2c5sGFVM1ZTeqT5GJNbtg9UaA4STWbC9PPyE4ThtIEHPNTK1V?=
 =?us-ascii?Q?ep68yXUpK1P5om5PlPv+qFWvSB4pR1iJBTFf9SYPPFOgzxjKa0fNTbUCnsBl?=
 =?us-ascii?Q?jK86DwUruBpAqAer2gn6JAUArQvt57Zo4fN3fDdnVLPprktB7Ttgi1e32g?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FkE8xqk4JpAYoKNKvIt1GlT2C3mdQT+KWf6qcP9U5nwEwkRMFpIEK9nD7CFn?=
 =?us-ascii?Q?94mVg5NG+Zh3Ia1DWebAPNin4McRvYuG45bss1SH+PCIjZ3RCEQltQh93uZt?=
 =?us-ascii?Q?C26u/lXwGh4vFQ2HljpB6E3UQqWVCnrs87SkRDWV1L6Sz1zfaCH/ha2d7yM8?=
 =?us-ascii?Q?Cd4WFrGmHipgA03Mvt3Ut1Wyd8foZV/BvEq63MXTeWnok7ob4qG67I0Ckqte?=
 =?us-ascii?Q?xuQX8aI0BvRWGE8GX+wFN9lzVPM9W2dypkRlevxmFcGijQVJIpTSOrmRdztw?=
 =?us-ascii?Q?X23y9pOAJFAaLcZdb2uti3rF1YvNVF0N51YRS0xB0Hcik3Bhy5W2XWJWMoEG?=
 =?us-ascii?Q?hc6voklVYWSllRTkyJ2r76SlKgTWfBxogLBQxjX+awkJHj6SU5CnSF/g4uEv?=
 =?us-ascii?Q?M93N67Ub3QhhHOvovXn7kkydVJVIgpWW0WrExCGhcqUPRc/oJep6jUsjJviw?=
 =?us-ascii?Q?rhlH6mEYjcWLM+kfVQcIvqKIiIRWwAn9xiicgWYL5800cvvEHnzHPKuLIuab?=
 =?us-ascii?Q?FpvDCr0H5MCHqTvtSIGihMdhoOjrq9E9o4t6dNVEkfcWu1fNyaxH0D1L7yOa?=
 =?us-ascii?Q?WyxNH7PmfmM1/+UkSgj/ve/T2IhXTVTISQrhbEEBuOkDD6hL3FHi3holJJIN?=
 =?us-ascii?Q?vkOJedU6BCE2zZ3ZBNsvJZTCZqKOpcAfBLKgxZkIMMvPa+fF7d8XtiHJBSIE?=
 =?us-ascii?Q?GUDqpM7HAMqipnDbgZDX8Dz8PcMA/VTJ5aZnn1RCza3caFF+gVwikZjOy9x2?=
 =?us-ascii?Q?m4mGsd5wxqV8DMSdomDi5Tq5Be3apbXBiRQKgTIwHSFx5xZSYRHoO0TAHK+O?=
 =?us-ascii?Q?Pi1H3tuk5lYPbAyfyYnOrRYMALmEGrvZmhas65ohA2Hql2rXGduG1eDw94cJ?=
 =?us-ascii?Q?2lmlSPjenApRskGqdKOa35Fdo/YzQ8BiRKe63AE5B4sHvcT+mX7yG/jdXT+k?=
 =?us-ascii?Q?LOe65eIQMUt5Yc6eql4SQMorb6UAxR1tT6JezKL3URylIAx9+RX3k2LvdmbY?=
 =?us-ascii?Q?IiuT72is3xvq7j6k+cM+oS5BXFXrg5zYom/JqykCEVCdkk7L6Le0CFDQdwrS?=
 =?us-ascii?Q?48UizG/npmbh5r3MdkQwylV9qg2ICFc71+1n6zj4l+9S8YxG1wHAJeYqwTGz?=
 =?us-ascii?Q?lnE7fjbQMfnafoOLsYcrFiuQ1q3w2zxL4oaQDf2ssI93XRGFQ0QqlaAszPY8?=
 =?us-ascii?Q?+FXlMAWV6UBjjkFOOa306YpRqAiYtCsbyvmoaKOemBk+gGuO2zh1euP6q7Ro?=
 =?us-ascii?Q?EcXdGrc0APlEW2tCyaFNecdaBrf1pbrYuowbutSaVTiRw6FOB5OhHUSTiBFK?=
 =?us-ascii?Q?ARxPSwNYbnFDY2g2rMCPMe9jbnq+BMrNZG4FUF0ZP4RpuB1OSlC+wFslqbiC?=
 =?us-ascii?Q?KoYhIcG++jSeUljOEhS0y4jaekLHSsLbEGc/5vbXSGMWnNV/B0UWJZg3sE9R?=
 =?us-ascii?Q?IK55LKzqRjskdRERJYNbdeMm1WUQWPJHPv41D5b8agMNR/p3wlDd4+RDZ7mn?=
 =?us-ascii?Q?xzHOrQsS/X+iEmYFNFcUxc5F++0n3yEeGrrhAtc8Kp9HZe9cM3aI16fAJ5WI?=
 =?us-ascii?Q?GXz45FE1dFu97kNUiibshqjDBqdnHAYo9yHOBzpHs3sCbdZRthN+aDEtQPQo?=
 =?us-ascii?Q?tQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f073ed6-2bb1-4712-b1fc-08de1528f964
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 07:18:06.0022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4iVNK4X+5nnYX2+2hre+S9bAzPfjyOwl0HRA8fgpG82PVALynPbadorT4figHzgPlbzAx0ebaADyWZWVDFIf4YARPySYgTc3WCoOsIQ3m5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761549490; x=1793085490;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E/wpLVvwp6fUUxIEcd3tS5JpkEtcfYuZWAxXjPqENCg=;
 b=Tm9BbthZjwCitbLaVgLljj2oVJ1b8M6+DCitX/EU6qvuXYHAi4qKsdGl
 gY5DpjOg4GqmPJfJeMPjLvmkLxEGJECDwqdP2yRWYv/c5/1FEH0IkL0fO
 qOj/kWPZ7S92/bWCb11nI4c/oKwBXOQ/f1Y9VUGd8kcWqfZNSuhRjq6iC
 qGI+NjwM0kG4oBfrwbPvOWhSSeRu4fIGiXFnwEuIo1MDGaoZh0lamgaue
 C1+OGZZHG52only5mry/VbJSu6VibEvhNGc/PktGCF8cZ0sQk2ZWIf/Jm
 i84g8w2pxXrlSJ5r++aVaQ0O7C1AxiS/jxaacaGq7LOmhZ95AZa208dno
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tm9BbthZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: fix incorrect warning
 message in iavf_del_vlans()
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
> Of Alok Tiwari
> Sent: Friday, October 24, 2025 3:46 PM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> kuba@kernel.org; davem@davemloft.net; edumazet@google.com;
> pabeni@redhat.com; horms@kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net-next] iavf: fix incorrect
> warning message in iavf_del_vlans()
>=20
> The warning message refers to "add VLAN changes" instead of "delete
> VLAN changes". Update the log string to use the correct text.
>=20
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 34a422a4a29c..6ad91db027d3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -987,7 +987,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>=20
>  		len =3D virtchnl_struct_size(vvfl_v2, filters, count);
>  		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN
> changes in one request\n");
> +			dev_warn(&adapter->pdev->dev, "Too many delete
> VLAN changes in one
> +request\n");
>  			while (len > IAVF_MAX_AQ_BUF_SIZE)
>  				len =3D virtchnl_struct_size(vvfl_v2,
> filters,
>  							   --count);
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
