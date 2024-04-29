Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 852128B5112
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 08:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0492E605E6;
	Mon, 29 Apr 2024 06:14:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NiL4zcylMXnq; Mon, 29 Apr 2024 06:14:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31D4D605E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714371267;
	bh=UFuQ9Xg9aAyJ/vfUcty6HubVGMdgdtHpB/1R8kzCDpE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rXKwHhaH1yJD+0LDxJaZYBwvEULqDDScud7cupLAagOUimzWcSlc3X9HzhsLa1A8o
	 Hk9x0IleXoknPU4k45Y2eCOJEln8Kf4XBa9JPhsqqCUKQNlkMu5VcZGm/oeSdtXvc8
	 HnbjiwQzYMrFfavZPY1cc6g5wFZle9bOPYPB+2PRnlB0VDqGP1WiMH7nAWYvL6gSkh
	 AtNdB26ZM8Yn/v4xHZtBcjLvakpNBkdUN2bG4IPVD8SX9nylHWN2yNV8uf7V1Ry7J5
	 fhmlGcXBeg2GPcoXxMsPMMspiliDvdkfSmRtutXgsqHev+Iiyy54tPLZYi7VkQMDxX
	 MD41XPf7WSkqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31D4D605E9;
	Mon, 29 Apr 2024 06:14:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C0661BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 06:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 526844018B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 06:14:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJfZl-EVcIt8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2024 06:14:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 33E3440181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33E3440181
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33E3440181
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 06:14:23 +0000 (UTC)
X-CSE-ConnectionGUID: Ak7PZ6HsSWqc+5qKKM8f+g==
X-CSE-MsgGUID: NCwSpTbWTDC4JWtu5AQFmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="9944375"
X-IronPort-AV: E=Sophos;i="6.07,238,1708416000"; 
   d="scan'208";a="9944375"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2024 23:14:23 -0700
X-CSE-ConnectionGUID: DUPa3/xnSlejXOzHFSKqig==
X-CSE-MsgGUID: G1wQuF6OR9OfWmzKIF7TBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,238,1708416000"; d="scan'208";a="49230964"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Apr 2024 23:14:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Apr 2024 23:14:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 28 Apr 2024 23:14:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 28 Apr 2024 23:14:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/PbryZvSstrM2///2st8QyVV4Q/fX5AHV1j71ZvXVMz9LI64ZDTirrTz+NbPrtggibBIghoKuU1x4u5ncyYooRnoyziyxKCB3pLSVc84aMkGNAJH1fwunLJ9+Tjj37ImnoGF/HaKcvTuzBtWABBztB0/h72MJwv1EKUjWxYK51Ns3S4dX3bhvXvBcc2VnMolleEuxu3z28tGz5uuinpUbRJ/vo7uJ+P7baR4RDCwVs6CFOF+gB9ylqHBggEUDnCyBGh//0VTGUIMUN+TouJdpzEH3rLi+XwfJ5jcBRA81bg0PeaUuu2qlTkXHe4ygdASDqzwXXeGrN7RUHYvgrX2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UFuQ9Xg9aAyJ/vfUcty6HubVGMdgdtHpB/1R8kzCDpE=;
 b=HPMayIgckc/thFZ0oNYQGsz6Q5CY6Nrf1o3mDpbPCJfMI8kMX76MVGPN1vpLJjsXpjFX0FGrTHnRLn7hfwDL15oPXyn4GjIr6N9NxYo58VhgcJHLb7EnB6MntLRw1U07Mv4jxkHK7co4KznBoQ8y7EjzHipenf1VpagFQ+vOr+mlBBWj+PgJNtieqFHZ3DCBblJ21i3h1p7y2je9r36FDxJiGW7ARlUJSU4Ri3mNHwH/A2QNNOA5DMDhUXzFGkJv6SknhavVD/fHX7qNXbLggF+tvWBZJelnMnTIJY9gp706dlkTt6wCEcq/pqzbfR1W6ZJO4P+TsyEiwGOgWK9ykg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV3PR11MB8741.namprd11.prod.outlook.com (2603:10b6:408:21d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.32; Mon, 29 Apr
 2024 06:14:14 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7519.020; Mon, 29 Apr 2024
 06:14:14 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: add additional
 E830 device ids
Thread-Index: AQHagXa9NOWfZp/sCEWMAaTLQ1ocUbF+9bOg
Date: Mon, 29 Apr 2024 06:14:14 +0000
Message-ID: <CYYPR11MB8429728C87DA830A4EABA465BD1B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240329010708.2805384-1-paul.greenwalt@intel.com>
In-Reply-To: <20240329010708.2805384-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV3PR11MB8741:EE_
x-ms-office365-filtering-correlation-id: e5f7c398-f21a-4305-4efd-08dc6813981c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?/uLp3pxMrnAzyugguvtvztmoMbEzw8dTRPLshSxHJ7UrOJuj38U3ZjebWHMY?=
 =?us-ascii?Q?YLCQ5lT70dUZzgEu9LqcvsiCX21TsvwEoqW2/HpRrLmOdvRd2F99bANzmz9p?=
 =?us-ascii?Q?KYxcBSXtKX1Jqksjmfhy/VTAvwXxphoQEIhk1TkSx8oXH9gk9wE7OxjbDIIm?=
 =?us-ascii?Q?EeC1aXa/ISYdbC30ZGkIp+JP/a+7cNYqbLq9qCRVJ+1FUN9CAFFEW3OspDok?=
 =?us-ascii?Q?l6gowbSvhky3XR2NminNJmUqBoTlLXm88QqJkqNv6iWtpLC8Za0qa/oz8G7O?=
 =?us-ascii?Q?eDFvy4bFO74Yad6J+YXd99eN7JooK3+2RUiYzlwWI/d9LlgzCB3U95E/8vXg?=
 =?us-ascii?Q?GiWq1MkZVhqOpB1bUU5MvItCZ0x1M/xxqsoJVV/i4s1VZahe+qbsvKtaPNPB?=
 =?us-ascii?Q?qICMANrOJFHVAj57egJdJk0Af6haKSRIIPw5xZCUf7mZ5/hQuLZJ5wBh1kM8?=
 =?us-ascii?Q?TTuOCCOI5a7acdnGdfB+p4dZqmi6Sue9Wydus2sW42Ec7gD39rCDVpD1EOON?=
 =?us-ascii?Q?It8GUCFv0gp/I0utIr38A4jVnJMooE+4YRMxOPuB/4f+gOY+T0xHsedcL5tf?=
 =?us-ascii?Q?LqMAcp3cN8Px9x8B8lwkTeDW2hUpCEBJfi1CrBRMCc2LMIeHHrDD4ujYER4c?=
 =?us-ascii?Q?K5UbcLAMXUjjaEDZIN7kQNt+UdJIC0J3sKWO9By3Wvugmwi6AgdpVQvJXkvy?=
 =?us-ascii?Q?ldt73nsK63pVpDTT/1JNj8hjpSUX+F8nIiq9EU+ZNPCWIXJTeK9xAen6+2av?=
 =?us-ascii?Q?Z1eCDebZzkNeNe5NgphTzfXBbCTBa/o5MTr8YUN3KAWAVoNJZY3GzmoTddnP?=
 =?us-ascii?Q?IGwF45d8h2MMmxwG54BTp0/9hSVYKfuBe1/lH1mIjTkomlpIBMHdikHYcMR0?=
 =?us-ascii?Q?/OkKdncjItit3omCv2EBFA6dLQ/K4JwzCAySerL4iPmsJgYhjiImhESw1dbE?=
 =?us-ascii?Q?Wigph4BN2C3E9QV7blsP3LlO+ZHNTLM1L2dptqcRecgIlZMERt5+SZ1kagk8?=
 =?us-ascii?Q?Czvr3k6Z3SixxBGfDwM6/vW+s4PYaDwsAMZkb5/vxUIiIfNiMx7cdA7fpiiO?=
 =?us-ascii?Q?xI0UANmGmOVdT48FGbInUDfyD9TJJ8d8u3yxu4TU6KymlKaXkd57HgvDCe7h?=
 =?us-ascii?Q?7auakIuXVCoQS08rnNTB3kA6V4Zdb26WM6Yn+y0BOYPClQaOaFqmw21npJPg?=
 =?us-ascii?Q?i0dScmeM2Aa/RRYpN4lyNluOL/2vJVwrkIqSriN1GGLnnWFEArVl2PMSuSCs?=
 =?us-ascii?Q?VbTbAqQY2uUa5CjQvvzGLOg9UDp6a+gA/qVmZS3/QizkA7axtOPeNTCQba2S?=
 =?us-ascii?Q?k1u28OjYdgpwa+kV+cwuf1Jq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t5XrJMtIyqSd8gbyocE8XWbtUqeaa02btSk5nk3ZCsohPorqJAkaGfhSAGza?=
 =?us-ascii?Q?tJDDxbm/WD7u34OpZ2l5P82DPuJPf6PILz+x6DJldYssd2uv6wVPJls5MqPC?=
 =?us-ascii?Q?MKus6u094ER1DnTZtjnVbCfUa9MLYeN+ASJcck0UYjCt0GkMKI/wNySkfQ9p?=
 =?us-ascii?Q?X7s6bxMnWJ2D2plpRVdQt1wQFZn1SEmK4IeHVr8vqeXWetVLw+Or2+qQfJw6?=
 =?us-ascii?Q?ZcvJ0FFk9wym4ewhEdZMaVQ0E+TJQdiOJQutI5A8xqfF5t59jEz07t5Yl7k+?=
 =?us-ascii?Q?R7bap8N9uGrZksHVjnXsnNsNy0g9X5a1bmjhCSt72VotDRuAocOjn33psnzQ?=
 =?us-ascii?Q?XYL+upVQYlngO8e82TGEZBb6iDElBoq56Gv6BLAbi9BfM098Rtkz1uhxt5M7?=
 =?us-ascii?Q?TTawcfhUIhzCsOZ6lav63IBbtZCSBecX6bGcC2ppH2+dTfr6SGMJV4PQkpPR?=
 =?us-ascii?Q?NuxOAAJKRpCannlbX3BEYIX0siRcveHd6osuSvGATR5kQtbqAuxmpMPEPAx9?=
 =?us-ascii?Q?HtQ7eJxXobVUlqnDEglc0WrbohoXcV6j+8xYCXv7gS2UuMagDT495TPpaKt8?=
 =?us-ascii?Q?lGLNbTe+5noUuAddlvu6dSNJ/0EqRD3oM3EugNAdD/LR2S5HxbxTrsoepUSL?=
 =?us-ascii?Q?9x6cYUQAG4CcGVzr40CmxUhcVG/Qm5FK9RiFFZ9eb7Okl/fplKJprxDQvgvX?=
 =?us-ascii?Q?cvvrP83/5w8KOQJWBMdPVfp7jEoo9TaB5Xm+Qtu+c3rzuIySFbx/yuyRxm2A?=
 =?us-ascii?Q?vm1/OdwuJ9dWc8Nc9r3ytBBwWUUak24euarq/OGtaVKJsyrIAs8sNW0Jc+um?=
 =?us-ascii?Q?7c9FN6Zf8kEnjUPnqBsY7sq5WPkUfgWZgLPBsaqKIDGJ2/6yk7xiAL1CrmuO?=
 =?us-ascii?Q?DSfdCUKahRFOzvge+70wTwcOGKZUj0K6IskDA+LjH50QnAlNEgg0jxBSleU7?=
 =?us-ascii?Q?N8Bd0ccQ4TVCe4w/EoYeRJky31SmPKqAZ1NKJfGlx3bw+rM9r70Tknf58cNG?=
 =?us-ascii?Q?QT/M2geC7LNgR0EH3TTYkbN+K7owAJRvxBHUqWW+lNEfjuz9iWJ5ZsjjIyqZ?=
 =?us-ascii?Q?hzj1sgUyHLuMIhy88r+uwZuM6pEiH8Q5O+OVHWsUe2rv7kSOAvyl8wYoy00Q?=
 =?us-ascii?Q?PdSb6pWMQu6o1Hk3I605kIBIzkawRvq6OVjkl3kj4/aGNgsY1toLiyPT4841?=
 =?us-ascii?Q?YifnLR/OxSvMRKrHeGcxoRd8N+vgvzlYCKtLiwBzXoVgwq7i8LMPKsoO4hwP?=
 =?us-ascii?Q?m7/MWacEfNOQqCpDRL32TKpO6Npe5O0I96AumyeijSICDysGlgBVvb2dEJUU?=
 =?us-ascii?Q?/xYV3brr26fQpDeaJwwF7ILos+o1w38BsPz1/CyouNEpSAi3HIqRsiupdDI+?=
 =?us-ascii?Q?tn5mdipTlawzhbYs/Ljzo9LF5RFociBqV7miEkLjAv1OUZd/qwCBbRDYrjRo?=
 =?us-ascii?Q?4L1dJ2anf0wpOo4+y3Mnj7GINAyl2m/CsrWG3MCcTxFiiglnZigFY7KcpYFT?=
 =?us-ascii?Q?U37qbsSrhRiWqBNBdpVViAZ1uJORRIvA+TbsDyUtDu4lVCoWiv8yZAOk26Of?=
 =?us-ascii?Q?lLf6yNuX6kABpkEH576I8YmoAyKpbH6BEY2C187X62pc6UpOHG8KA6SyqtPH?=
 =?us-ascii?Q?CA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5f7c398-f21a-4305-4efd-08dc6813981c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 06:14:14.5157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rdWaQu351AoMi+nsdmfnmfC3l1NrqtTKtjb4pszPJsZxKiw5q6HUJAgRuTpbJmWa0dxzid0z+4A/b4IWmA0LUqDBAoeuH/D9HmofemYhtcXnmE2sknkk7QXWQKnSf5JD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8741
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714371264; x=1745907264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GJG+1ETKYkCUndZQkh0yTDM223jaAOKN4hKUndsHLMk=;
 b=XgVh8fs6vf9Znr4W+LVgoZspcpoe0m+7RyetI/78HVrKq6Ta6DA2DM4Q
 skK+TPVyEXb5kGqm+pRS0JBDD1RYsuur4ur1RaAYMWUN/IUDEWvsZ8q02
 W1u4J4kDNLMIL7ssUFQ36zbLh3WAhueRgqgA2uICm3nqZPeTC5VhEf+HY
 N1/rRLw1qw45dI0SH/jKMF9F+CXXgyMWbztqDUfmqu4mXcEIOZZsulrgG
 8cscpRchxwI4zUWV3Zopud6ZezqAqH31iDgP4hEkVB4+6b6HcXvsXAOxf
 J6gjmhh8X1ewTYgVomjK0F1V4TRFBcwXtpqqwXTallELB+OI5hXCnlDtP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XgVh8fs6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: add additional
 E830 device ids
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Friday, March 29, 2024 6:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Greenwalt, Paul <paul.g=
reenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: add additional E8=
30 device ids
>
> Add support for additional E830 device ids which are supported by the
> driver:
> - 0x12D5: Intel(R) Ethernet Controller E830-C for backplane
> - 0x12D8: Intel(R) Ethernet Controller E830-C for QSFP
> - 0x12DA: Intel(R) Ethernet Controller E830-C for SFP
> - 0x12DC: Intel(R) Ethernet Controller E830-XXV for backplane
> - 0x12DD: Intel(R) Ethernet Controller E830-XXV for QSFP
> - 0x12DE: Intel(R) Ethernet Controller E830-XXV for SFP
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> v1 -> v2: add device ids and strings to commit message. Rearrange device =
ids in order.
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  6 ++++++  drivers/net/eth=
ernet/intel/ice/ice_devids.h | 12 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c   |  6 ++++++
>  3 files changed, 24 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

