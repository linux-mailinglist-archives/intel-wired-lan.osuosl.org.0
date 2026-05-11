Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLvpIW6SAWrsegEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:25:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB25B50A0D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5647F84485;
	Mon, 11 May 2026 08:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JHP9dNLDiJhg; Mon, 11 May 2026 08:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 759848448B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778487915;
	bh=cjrwGliZSwdnRS5rc6UuSDdgUBf3ZPiPGhKufLxYVvw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B7QTFJBceHEAvr0n3xfVFHQ2A2O3c7pVUjp5uFgb0bRAWYz1x8KeWzvc1yORKsDzY
	 TCMZ/KjFgbXb0w9p1LKrooJMVYnVLtb2PAfxsQdf0zyFh4c2M6Gnzu6jFP+bL4NV91
	 ylk+9EDUYW5z8oeKYNTdRUdyt/qB75l29aOhklVt3p7r6cozNR1vF6bkwAkFH44sEc
	 Gyn0sqTW7Im6bLIj+fVeChZRdGpcxmYLcLbM+Z4fD/JpdWFpY4bLLpPkisy528rz/Z
	 zvLlmLhexzOTN5L9IZB4l5ZCegC1vWBTaC3sv7dZW234Znh52MXQq3ku6+bpzoW69P
	 aSEMMmPPvrRkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 759848448B;
	Mon, 11 May 2026 08:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 98AD1173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:25:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A77E607CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:25:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CKELBXxl0-zD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 08:25:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8311F607C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8311F607C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8311F607C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:25:12 +0000 (UTC)
X-CSE-ConnectionGUID: X/tu3om0RO6aj3KM1nOgdg==
X-CSE-MsgGUID: 03xiXMwzQ4+OxS2paSBBdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="66900509"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="66900509"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:25:12 -0700
X-CSE-ConnectionGUID: HexIP+UvR6a2d2xBaFzErw==
X-CSE-MsgGUID: C1ToB3BeTXOpMO1NxBivhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="242357522"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:25:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:25:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:25:11 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:25:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZdlEKzRUMOLMWfU57OsSV6Ls7m3+S1x0ur2IPlV6RmNG306QqDvTAIX52VW4SqhVc0QoWVauU3aOi2FLIFS7QfE5GaG4LVWbsHLtzAERLwQZFEfmuutA4Z7fn7SXRcbL8wjjXMTnZDAAv66ufblb4N/H0tODxHOnENnvLFqq80AL10cWlbCIPB6QyIUuNXCJxAk037NNvzgYxoFw4tQ8Uvlj0OX2gtdHOlw1BrtsgAy9yHfLBz5MqQ2xoW8IEyuQh7Xx49FuhhSVtq4OPAgkOwspJsBwE+jd56kiH8LxU398MBjdyt6W3ItDp++58juQBaeBG86FaLGBXAHgRdWC9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cjrwGliZSwdnRS5rc6UuSDdgUBf3ZPiPGhKufLxYVvw=;
 b=L7nUhldNe58HImvh6gsHoVX4mkMUcdPB2CDCfnTFTzsZuGLgENNKuYKOrk8bb6h4cILAjN5xU0idq9LvlQJ7R0AGSHMjHDM5hJRIUp6l0lO9cTqUj2mw3RUbM0G9ZWuBT6aUjAY0HR/MzCLCbc84qMd7hUdG/kmpNqnKGEYtizOKw3EzIfhPcvvCsawiT7BhhwYmw/8a7rrk9cG5GHjMUH/MH9vb5BKqbjFvl1lMb2DW7zpwKvlXYK/zFyZbhH8gVpg5ndwf37XDmUnw950kYr951+F9W3lvAXAHzR5IFYcYgG9nXkloePwTmn4sM549GlBgaYcP5ZjuKAOdXVtUcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH2PR11MB8816.namprd11.prod.outlook.com (2603:10b6:610:285::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 08:25:09 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.20.9891.019; Mon, 11 May 2026
 08:25:09 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kiran.patil@intel.com" <kiran.patil@intel.com>,
 "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "avinash.dayanand@intel.com"
 <avinash.dayanand@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/5] iavf: fix null pointer
 dereference in iavf_detect_recover_hung
Thread-Index: AQHcyxeEOXrcfoiLwkupHlFLVxHbLbXgFjWAgCiS49A=
Date: Mon, 11 May 2026 08:25:09 +0000
Message-ID: <IA3PR11MB89850DCE009BD7002D07C5EA8F382@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260413073035.4082204-2-aleksandr.loktionov@intel.com>
 <20260415124845.797759-1-horms@kernel.org>
In-Reply-To: <20260415124845.797759-1-horms@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH2PR11MB8816:EE_
x-ms-office365-filtering-correlation-id: 7088ce2b-0954-403e-2a81-08deaf36d056
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099003;
x-microsoft-antispam-message-info: VhchNzJPUCVH0aibuvN6YErhvMZaZDYLzmxiFoKIaZ2Bl4XMhC2xXRGo5YgJ0WEB/Vrs0g16q6JP5Hzf21bdY2PCAk036OMOF0d6jAtF0R81YLWFL6Ce1TZiBjtuVZJ46DRYKimuY7xpP25xdKB+aJjMTOT9tbho2qwzmm5+UbZRfglqZMGWoB8jhOGHhNOFn8K1RfyA+TK+B4lxoj4SSwss2i5q2RFEB29BYkk8T7TpM86TNuyDSLaBq7hdQSXRF0oHuEa3RwXuVeA8Gw6TnRCo2EzZXk9dW+3j4eHWuNvmkY00UlXla5l0xTBGDpLqzbsnb2wBUsUXsmCnRBcrbcGYVFzRdNf88zb0YrFslMJYhXW1BMkL3YXRVzjwvjVwMfi9ZqJZJhfO6nJzOToOt/yJW3t7RYl5RDwbAhi3xRJxkYTWaUgAkwuC6OM4AH/TMv5KoIMDIS5Zgqh+5RCfcceezxVtez8+G2QsWWdUjUDEwymTIno2qqE5GiHdQ+/YV15ETk0ojsEEU2te9x+th6i0A2q35xXSjRp1k1xCnOq/xqylkZVH0jNhhRkoI8YUC1T5ykbFvFxVZ4rVJTvzo+8Kss/GyPmNH23ODuN5Hi4J1+911VAaF4bNrJtp4bn+rJx5PKf5S/SL8UsZhR5mG9hWt1uyhzk7/y/hPVno9do8nAp8QKWlQA0JucGPMNOpVS880HlT/v/xA457x3+JiA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gnRUH20AnimHwbjU/l/mr9bOCEJck9WQPUX+4Ugt0+Mx4j4UT2Qkx4Zru7Pr?=
 =?us-ascii?Q?8Q3FlsaXYDvheACPeOHyI8hGpKXqFRzVWlKptw9pK6SfN3zBGVLZksXPVUT+?=
 =?us-ascii?Q?/cumroHwFVuXHj9yUt2fkAsw5gXatUQxiA1xazqu039VCg1krAUcZMwJs3pg?=
 =?us-ascii?Q?bLLY2vHdlj1IgMxdr1A1PRbZnnYa+4Ia12XcV1vHFhwHhuSM0zyyxtZ8kT+7?=
 =?us-ascii?Q?okfzPME+R4zU+hjUCe5oODpZMPgJNnnniD3qzfIViDUV58sSFN9S7fPFfXuD?=
 =?us-ascii?Q?S3lnoQ8fR/V2B4E1igTLMIcT8gLh/2vMxqVpyOkRu/25hW/xLcJ0vy2mkfqi?=
 =?us-ascii?Q?NEiupv3Bv6VzFF5ofVn5FZ6tLdyGrawBu9vQyH5lsO0f1bWgyoQKhaL/C2jx?=
 =?us-ascii?Q?WCy99Kv/N8VCEZLEhS+cKfxSwj9bdQhs636XtHPUMCG5vpqWYZrX4E8Itazl?=
 =?us-ascii?Q?0KMyUW9TnMB2KRAtZFrGkvTCABFNzujflEOVyiqAuMEcp6MtgtSp5pCCMPTH?=
 =?us-ascii?Q?X7gKQ3Hj33Z+hKFCObKuPsrkGa4Tb1g+nFRKD0SMPIokTz6OctlTQsYm+RSO?=
 =?us-ascii?Q?GELrIin2nf8Tt6Gfn4AuMhaMGYaU+Ivs3lgn1S6qysy9iRr0KK8SyTXiUWYX?=
 =?us-ascii?Q?aNfiyN5GF7GXU07S9kU6kSWyClmFagvtCZbmk4b/QZQ6Q9990whEGl+I/RRW?=
 =?us-ascii?Q?5bTt2eNmcRbkNwPEXj+Jz5N7tpFIf6ei+lJwXvSLrM2ft4JkPTCMUY5Sccbs?=
 =?us-ascii?Q?9l3fT8LnQ2mDBgcr6qkVIBcs268+9TPhB3MjhDKagMCN+sSbVM8raMlniM6h?=
 =?us-ascii?Q?cIcUjqdjhrrgJisiTEW+JToJKIylxJGjzVw81rEDmqaX53QStIqd97kT504o?=
 =?us-ascii?Q?1MbIqWGWWQvZa5v42oTuESgF7h3lJ2egPr5djue8uuXHoWvs6+EVMKBxnWl1?=
 =?us-ascii?Q?CeyvSjhQ8/XHBGjLq2q7+otiHqy3jSuNLtcGxm5Hz+7UILlbc/6+0LI6TCI3?=
 =?us-ascii?Q?Vhx3ggKxR/f0jCLfaYWeuIzz4H2lEV3PeggtYmLMZLGqxWYnQIHxm8jQnTW4?=
 =?us-ascii?Q?zVKy0VGh0gx25VZN5wKkm4SFWA5s8cJO5OV3a8eeBhDltbM8X/vawX9b7ghx?=
 =?us-ascii?Q?+ue8oFblefjaOm7Sfb/4O8PQrd4BohOMAdWCAOEX/rjqCWp45ipDa2bgIiNf?=
 =?us-ascii?Q?T888Qa7G4vUwk0GX9ZbF9Fc1ZlR9jVEFrP+L4UirLeL6K/oV9627/z7O5su0?=
 =?us-ascii?Q?cwJdB7xvIvKP290hivq3ok7cdyOXTAmfN+D3cq02SOsNjIprjCRD0/V/gr++?=
 =?us-ascii?Q?4AXCpcVXrTufD7k2M0Zhes/tgcELvQTDb3l5hO+stUHpGXN9T7/3cnb+UKhV?=
 =?us-ascii?Q?+0l9A+QQQ8putBsbrjwE+4aLaxcozkmfrkec08yd27LpMKUOeuHQUZIpnYmd?=
 =?us-ascii?Q?D4fC0sZugRYIi90GJG7CUNKYS/MDQOgo+VEryebbFzBfblPQvbpPDTUS6uM2?=
 =?us-ascii?Q?s4OF+qfCnZLF12MFogcAWer6kEYukSfFQ2hHD0WXZEGOOkyYOxdL1RW8AtOL?=
 =?us-ascii?Q?5m1wm0SpbTM7VhNS9ndY6eULl7NoNSZDFSsV0gZA7UhV+VyLFWKqAJvk2b42?=
 =?us-ascii?Q?zu8+WTLmYZYGa5RiKZFa+Rcvx6RtDj0opsvUGjo/MoIvIBrfnF4fzizzwN7h?=
 =?us-ascii?Q?jNjiJJdUdEW4Nw9TaqNzVFMs3aqpHChjmlrlSD2Qc/wVekHucjja++r6t6kK?=
 =?us-ascii?Q?5QsAWnp4rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iTvrMZCRrrsGf6ytVsgwvRDXqGonFZK1m/k3bVzKyPYkrxONhSDYQoOKaSTmbfIZ2N7VldTK/9DScb+jOTEyjZy1n5s5L3U4QXPXD3TznPCH3D9Ab8jrQpbJnUlu4C/I0ePt4muHRqr76/5BkHd5YKJd8PcgEtIXZRIMFrUvBPS05D+lQLE17+nzhKF7CAToznH1BQwYV3uu3pF7p1GKTJT6II22sny7wTNyI36a+vdN/uTM743Zjv1rYjReo6ncsWynapmlOwYmBD0+di2LarxnWQBzOcD2qfXk9Kc4bUP+TvPgqauZnaX+HtY93CMKEPUHrKmSTUEdo1Z4R7NonQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7088ce2b-0954-403e-2a81-08deaf36d056
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 08:25:09.1473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 62ltRu/D6lEiID1/8k5QerOhQWi4uYWJKOadhGudiMlDhNpLACn+yJoB0944oc9Eajc30iph+HC54LfZXJK06wZ/vGdO7BxhrHi5EDke0+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778487912; x=1810023912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sa5Pv1v8xVF2QAbo6lUm+wKDEpS7Dg54KwtaPo3rrp4=;
 b=atPYahXnrWdauaytIKguiDludrjAcpdKhAhbqzpHmhnrGL/aaEn6+dJt
 4mLhz/PxBpRzAyEI+L0bsp3P83lrdvv2gXOLuFFbaA2Q8nPUzB/1hiPRA
 YbCnYvf5ruLafxIrmxWPS1g4oK4gpc0IAy0Xvu7lkFaB+RsStTuQsF+Ex
 V4v+GqmS/vWvcs24+1IJT0ERbhXJOazGkfYwlnQ500ya7lAclJXscrVwq
 wGiMpILttTOkz1KOcX5a+pA/1OU7AjvBnhYJIQZ9WAzS0W7/hmVbZA9h7
 53i6v0qKc67Kt0Ait9PhCkL1eAuHnA89kb12sNBZiws6vYabrJIwbjXAf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=atPYahXn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/5] iavf: fix null pointer
 dereference in iavf_detect_recover_hung
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
X-Rspamd-Queue-Id: CB25B50A0D0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:kiran.patil@intel.com,m:sylwesterx.dziedziuch@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:avinash.dayanand@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8985.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Wednesday, April 15, 2026 2:49 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Simon Horman <horms@kernel.org>; intel-wired-lan@lists.osuosl.org;
> kiran.patil@intel.com; sylwesterx.dziedziuch@intel.com;
> netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> avinash.dayanand@intel.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/5] iavf: fix null pointer
> dereference in iavf_detect_recover_hung
>=20
> This is an AI-generated review of your patch. The human sending this emai=
l has
> considered the AI review valid, or at least plausible.
>=20
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-loca=
l.html
> ---
> iavf: fix null pointer dereference in iavf_detect_recover_hung
>=20
> During a concurrent reset, q_vectors are freed and re-allocated while the
> watchdog task may still be iterating rings in iavf_detect_recover_hung().
> Dereferencing a NULL q_vector inside
> iavf_force_wb() results in a crash. Guard against this by skipping rings =
whose
> q_vector is NULL.
>=20
> > Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung
> > logic moved to service_task from tx_timeout")
>=20
> The Fixes tag points to commit 9c6c12595b73, but that commit only modifie=
d the
> i40e driver and did not introduce the iavf_detect_recover_hung function.
>=20
> The bug was actually introduced by commit 07d44190a389 ("i40e/i40evf: Det=
ect
> and recover hung queue scenario"), which added iavf_detect_recover_hung w=
ith
> the code pattern 'if (tx_ring && tx_ring->desc)' that calls iavf_force_wb=
(vsi,
> tx_ring->q_vector) without checking if q_vector is NULL.
>=20
> Should the Fixes tag be:
>=20
>     Fixes: 07d44190a389 ("i40e/i40evf: Detect and recover hung queue scen=
ario")
>=20


> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> > b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> > index 363c42bf3dcf..e7e7fc9a5c68 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>=20
> [ ... ]
>=20
> > @@ -195,8 +194,11 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi=
)
> >  		return;
> >
> >  	for (i =3D 0; i < vsi->back->num_active_queues; i++) {
> > -		tx_ring =3D &vsi->back->tx_rings[i];
> > -		if (tx_ring && tx_ring->desc) {
> > +		struct iavf_ring *tx_ring =3D &vsi->back->tx_rings[i];
> > +
> > +		if (!tx_ring || !tx_ring->q_vector)
> > +			continue;
>=20
> The check `if (!tx_ring || ...)` tests whether tx_ring is NULL, but tx_ri=
ng is
> assigned as `&vsi->back->tx_rings[i]`, which is the address of an array e=
lement.
> This address is always non-NULL by C language rules, as noted in the comm=
it
> message itself: "the compiler can never observe since an array-element ad=
dress is
> always non-NULL."
>=20
> This creates misleading logic. Other similar code in the driver correctly=
 omits such
> checks (for example, in iavf_virtchnl.c and elsewhere in iavf_txrx.c).
>=20
> Should this be simplified to just check the q_vector:
>=20
>     if (!tx_ring->q_vector)
>         continue;
>=20
> > +		if (tx_ring->desc) {
> >  			/* If packet counter has not changed the queue is
> >  			 * likely stalled, so force an interrupt for this
> >  			 * queue.
>=20
> [ ... ]

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

