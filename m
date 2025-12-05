Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8956ECA9541
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 21:59:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC29D606EF;
	Fri,  5 Dec 2025 20:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vuqrcgHK-fdq; Fri,  5 Dec 2025 20:59:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CBAC607E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764968367;
	bh=8mt4cQgO7jQndq7y/c9n766ytbLn4ldfNGoCx7wwUxk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kVxqMrzhnPCa6tAM1AySmitNmpy5QYdoxpYGlum+mSnN/pKdKBJMt2riVr9ndOucm
	 S6GBEG0K+AuOOKAYyqU3/DwuVP+xnVCyBALgCEJSd9us+D+fOMPSOY5UVe3KaBIo1T
	 +FOgJBSTZHR8FyZFuaXXxb/Ogpqv7uyky5yvCt8tnFYXwOPHuSFXtWUspEtaYMGXOt
	 rEvW78a1duVzuz27F+3ldKimBL+JnqL+BISEzjwOwM3uZ36iKmHu5q7EOUxAxHuoBF
	 B1mUCb9W/J/ACHMUpFxlSQLCtlXgQcIf9wH7WL1vVTp99o/ETNJ1ynZ9jL4lDpEycH
	 mwdt0R+xhxBUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CBAC607E5;
	Fri,  5 Dec 2025 20:59:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 821BBE7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 20:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 518A780707
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 20:59:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_Y0Zlbx-0b1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 20:59:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 958C084C26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 958C084C26
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 958C084C26
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 20:59:20 +0000 (UTC)
X-CSE-ConnectionGUID: wXo2XV1wQRSNoFarTObX4g==
X-CSE-MsgGUID: PfIBMpPKRL+uZWShVUXU3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11633"; a="84611036"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="84611036"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 12:59:20 -0800
X-CSE-ConnectionGUID: k+ZoHFNhTAqRnzZVuqBx5A==
X-CSE-MsgGUID: zISMBrAMT16NDqxuQorrvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="195831294"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 12:59:20 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 12:59:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 12:59:19 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 12:59:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IboGFJ396O4IcQ1wPjG7mLHC8gpNA9KoQIkFwyjq+LV2fAnjW9CAm1YWQ2CBwr9S7yGkuforyUEjD9VavVMh/j1UeRzYzv9+Wt2d179bBMNtSzYHN+SG9eaZFv1PZc/qYYYcFuJOIq6Qu6EY8Dot1in9onjvsc2XVoxsAlp+9Txy7keMN1EdrOkKqmUc9+09mo6fy2zVj3eurLaMCFRIdnKnUJW0Z/9L3R7yp20G7gFl3LEeiMWylo/Qr5h9W6RIWSzCMbdrMZAt3pChrVlOFla4S944/414fgZxBb3XzBNI+goIZblaaRK4PlzW5aaBEiuwO/A9ELqMjiAwXLRdRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8mt4cQgO7jQndq7y/c9n766ytbLn4ldfNGoCx7wwUxk=;
 b=lw78JIfw0oKZXIgdI2fPfL0G8Ydi7QkzJ8oygV8qmFyhnPz4Xb081DhTSLjU5/ZSLns7H+6N9dNf93gdoMU/nd9qmcG4vU3v2utPj5sNVKe6fvpLZXPpWF8v26wmlTxdpSYiFv7w6C58vtrbVFWrHeVrJ8nf+0zt00l0yA1VSTnY2cdGHIwLyc8E7S42b2TrYqHPnFNjYD2qR84xAvi7VNIH48q9TI7Zvdd1cyZRo3onM76QH1nCxkwpPvcRwOwsxHqYMkuffOYagDCK3QSMx+Jx2P1Q2Mwc2OT0M0ESEIFulGdWvZLDUtlwqfMCzUma5w4Hm5Vg/CSa2L4jE5l3Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN2PR11MB4743.namprd11.prod.outlook.com (2603:10b6:208:260::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Fri, 5 Dec
 2025 20:59:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 20:59:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Kohei Enju
 <enjuk@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igb: expose RSS key
 via ethtool get_rxfh
Thread-Index: AQHcZggbTNpZv5KTMEucsd59Dvv2bbUTh8XQ
Date: Fri, 5 Dec 2025 20:59:17 +0000
Message-ID: <IA3PR11MB898622ED2EB089057FC4E73DE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251205082106.4028-5-takkozu@amazon.com>
 <20251205082106.4028-7-takkozu@amazon.com>
In-Reply-To: <20251205082106.4028-7-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN2PR11MB4743:EE_
x-ms-office365-filtering-correlation-id: f2ff90b2-a2be-48fa-8f12-08de344127a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?l/hK7jHVoEZU8A4QxhAdrNnmQxcG4nhQ7NjyKknDoL4l7jlaWw0w7LVgQLCi?=
 =?us-ascii?Q?PKQb6Man/VRl1V4IEA4xGmr7t5ZLC6jUThBZ35bHb24kz5fIDUa/niDm6mjK?=
 =?us-ascii?Q?UlFir55XqmuPnifDeozHSl/TkJtaUvZ2dUk6kd+TMSE29IPvqQaq5CzQj9Gq?=
 =?us-ascii?Q?fefjEYLE+bEU826Hdr5zdAxYf/p1KSGP/+FpIRtytszC/7JT7tjgpFRfeBXl?=
 =?us-ascii?Q?4APVaqKJlbj1ibD67csNO8vuPyUC/b+QxAZO5ejVhQdIsZb8DSglBTGIgFGh?=
 =?us-ascii?Q?9JVrliHEn77fuQbulUQgb1VIMY4+3z4mosVraObGjFBicColUnfjkAjtArMU?=
 =?us-ascii?Q?34jaUO/2h4xvUyYt7FN6j3QMKe0Oo6ik3Dkck3OqU6fcvoZH2hhgKFsTUxNI?=
 =?us-ascii?Q?jYzXPTFv9ez/lx1EbC8jq1z7s8LTydFfb1A4yFjndnTbiZmeiACdb7HNeqAO?=
 =?us-ascii?Q?ZEyFNBx38Bieq0Tq6sJQdlUxE9Izh7JqNtHaErhuowmpjCsNszWxBIGenXsA?=
 =?us-ascii?Q?b9udsOTExoIg/h176RwiDsn/C3pUhvlDiaA8OF2unzCYNOxXGCs+deVQJaCM?=
 =?us-ascii?Q?JLjtdt48nSlH278Nht2jXEUMjPrwl69wzgmpExlMZyEml3UG5AaZatR+RFGI?=
 =?us-ascii?Q?NeTFQr3kdicCU61t/+BT+WdWTXoCPrJifos0oqcMeRzJfUZKBYU7v03aqWa5?=
 =?us-ascii?Q?vtnIIg//1TKGI39ZbBblLiW8knjfkumwNnb75SNlCXyV0BlUxYEnUI7GOLXs?=
 =?us-ascii?Q?tZfwkszAL7Gq2mQ5iP5Lt4ijT1wCcresBbCCi9izDOOOXloLaD3+ZkXM6qPo?=
 =?us-ascii?Q?NcSCrKU3KmqbOrqMASKrAbEwX/D/7GIW0UWnVI8jjJJYI64rpQJfokQR5feb?=
 =?us-ascii?Q?L5qdKgs4J3aSHlQYw3X3vcKyF0XeaklriNltK2EztQwvYVdp15vkp0C+Iu+0?=
 =?us-ascii?Q?WebUSoRFuGdcViDwclmlA7k5FWWrC34PGLmEaA4upk8PGncKoYjJ9d26U+uk?=
 =?us-ascii?Q?7Bno/7LTJHgr+N4bD6L3si8NuY3tKPUU2PX6JvDmD2S1u5sFflQKwhIZLEcz?=
 =?us-ascii?Q?55nLcSUVnyLPzvdOlNI27qVZXuj8FVvE/2TzmyVh8bQTVfTN/mXYDOLicSGj?=
 =?us-ascii?Q?WyqtbrIi6yYcsyzHL0lxdn1Hw5Vgs6MdHhFGm8CDut3s3IT9xK91mWj5tKpM?=
 =?us-ascii?Q?J/bv+cjPkPWNujdD5PN4kwGisk210Y82+rVuoQoMAngjEmOQZVIcQiPFa4h3?=
 =?us-ascii?Q?UxmCrfy9NEFOpQWKsI6smfklC8AIeP0GYXthXRf1AgYVFpv7HPmnjg1t8hmD?=
 =?us-ascii?Q?yPXyKiXFnoN1Tmlym7aP5rc6wwg5fQkKbFkmRfHFDLNXY34kHt7Rsr/tyBgM?=
 =?us-ascii?Q?ra48bvJdUpfCyIK+EV1fpoH67xSG2ejRC4ttwznUJ4KYfagtORA2URc5FwQ2?=
 =?us-ascii?Q?VJVoMIaJbgl7/bliCRdr75KOA/zDLK9GSlgxCJC/gmINhcxQGH4ukyXPk5fk?=
 =?us-ascii?Q?vqTe2AyPyVpKZc0OdNlCar/KS8MbP7uoNF29?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RjkA09yGT8o6AkVA1oiXkzHVvtCWhte9DSCV1aSCCZANQ/AR8JNcut3derzv?=
 =?us-ascii?Q?3z+WD4CIWqb9ic9BvlVJ3zHyxpCw2hp3s5OskP4+1oL+s7MMVSQUbXknt04f?=
 =?us-ascii?Q?rH2HOBG05IpnlRffS0o3WIOWk1n1pKb6ExdxhqKM6trEZ+w/BQre5vWFoRCG?=
 =?us-ascii?Q?qHqqvL1damazACRIuj3spiAPmRBg7c6woCjSFp4JqJc98fWDp5scT64MS+xU?=
 =?us-ascii?Q?QjMUgOjhKxTy48AdpCTeO3GaRr98iAYRMgTjf9MqtjV3yk32DBLKxRZnmksb?=
 =?us-ascii?Q?E5GvO+RjtI+zRwvKkyOFADZ48DXfLh7q9WPwjEq6ISuIc/6YAjoBh6J9J+hI?=
 =?us-ascii?Q?k2KphfbE6KF/CrHtmPHuNS2XYkpakTWonXtS+nJ6CpPt2nHt1yotFCbXk10d?=
 =?us-ascii?Q?kinEo+UHmiPLgmL6NnPaANNM87yg4EQrGfMzB69EttgjZJTSFC1l/KLgiska?=
 =?us-ascii?Q?UZynqKBccxFQE/kgZZv5KkOUkEoVY90/YtkSRxPueCdo0lZF3vvWO0S6x+oR?=
 =?us-ascii?Q?qcL6XUpUoxvXitYXtk6XP8Mkn0kSs6wZ+3DerXFg/RzSkmbBWIrvOSF7yE9+?=
 =?us-ascii?Q?jwXriob0i9ShPHiyoFT34R1qEI1CRejcdieRh4hwCRFrUPHopx3Dgt0Ixe4Y?=
 =?us-ascii?Q?V0Y83a19UxFAuI8brpWpEuywDnWDfFjZXekQnJNZPygSwIrQhA16utd4Z3HB?=
 =?us-ascii?Q?zGnlK70GxHSZdys9MS/GXBeLxqhxyefrCWmW5LsfSfbMuRP7ioxPqbLgh3K5?=
 =?us-ascii?Q?m0IHzlIGlweHqggC7r43/lU/2CHLG1DQsCuvXejzKmyvcTWgFV62WJyxrhqY?=
 =?us-ascii?Q?Xvns3fnqu8fgQQqOhv9XMA8ZDcsN7u8LlFwHzy/Hk4NJ2BLc5xL+pOsKLV2v?=
 =?us-ascii?Q?0UKfvojLIpipa5WYIM0UdyWMh039K0ymqfPKEGarHrRfJp3cdnQa5uUkE+Yg?=
 =?us-ascii?Q?EN2Aq+3bvo7Et/AcpY9UlDm4tFSLd19nGk+LiIF0VTLbvC7YQCnPE9qSerPx?=
 =?us-ascii?Q?y4y7/RI9AXGxHUowszg9+0WFrFp2AC1OdD5bXUA9tcUbdBqDuOeFwnoi+Vdc?=
 =?us-ascii?Q?BaJqSUcQ+CnVA9ZeR1kdtZavWK+uaBwBwbZ0lcTuLlcX7Qgt+ttKFS3l5gf3?=
 =?us-ascii?Q?NfGxYVN62GzVo0dCqAgaBz6R0Vdt2trJvXqBgIVhxCAe5uZjdLb+clls/zpD?=
 =?us-ascii?Q?CkH1xR8omNQWD69SCKbMTEmR5brQdWi3icQI1sajOntmnCDTLahu6KIbNNKa?=
 =?us-ascii?Q?WYTDddMRP1FxJCN4psjmsNYkyXLHQepmqw5oqf66Ssim98sRkHdOMKE08IJG?=
 =?us-ascii?Q?FdZN3rbKdcRZ6/PL1oN5Qq4mF8zjGPvGxP1SuutRU+5FoetmGGKZnToh3mmj?=
 =?us-ascii?Q?bC0eN/0ke6ZTR4alqV6J7zWcU2WuNpC+6t/clEsyAJxs2LhivS7D3CUmTRGr?=
 =?us-ascii?Q?UIxBZVOFjuJrNo24hAQVMi7tKTT4J0l0uA7LvYbt335ncsyfWpSahEmPH0Ba?=
 =?us-ascii?Q?V3xDkYB0r9psEhDue8yjw0lUCOJlXofjUCc30594zEk5ewk+6A1QPX8fQ89O?=
 =?us-ascii?Q?+mdzD0e/GNGSWKdp506gD/A/3YSAS0MabI9DdSAmlTErdUnYnRg9U5lieN9C?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ff90b2-a2be-48fa-8f12-08de344127a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 20:59:17.5238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t5tt6+i0XImhpW8WH7xUOoewsreI3yfRCWHVyidNBcUYx/WTeHHRlxNLCObhoDNJFgppSUeomZtX0rmqPy7P9nBn0KBFUspSjn5goJZtqeo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4743
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764968361; x=1796504361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=maCxUXwpNr8MjfuGG2OOxaaT3So9o1VUpAE0KmAUWmI=;
 b=BrzAv2g0mrOho3I++Ih7ul6u67tNLIGAESKwp0jrv19TPuxBTF8iqxb7
 /X0QDxVpQpelxrjDjjjcgR4JfySPf/5wQq5Bs4SOuKslR+aF0CzoGshJd
 4+wLcuG/lc1GYr28e6uIcXJxs90He68iiNJ38dsdg2d3t59I8qZPsZudK
 DwwDIGOix3ioakehVTkZKJ8rhZ6ENJuC/z/fMx1wuLys+QVLEfiqNupte
 xx0A1PCYYiGupI45IS2kFeXcFh0ruzZHdDWgHrPst+a7i7AE2DgG4oqUv
 r8nFBSvOJnlg5AxF8HmO39Ft6LPf8I5957czuJE+RpQ4quJ7OpvWHag1c
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BrzAv2g0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igb: expose RSS key
 via ethtool get_rxfh
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
> Of Takashi Kozu
> Sent: Friday, December 5, 2025 9:21 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; Takashi Kozu <takkozu@amazon.com>; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igb: expose RSS key
> via ethtool get_rxfh
>=20
> Implement igc_get_rxfh_key_size() and extend
> igc_get_rxfh() to return the RSS key to userspace.
>=20
> This can be tested using `ethtool -x <dev>`.
>=20

nit (commit message): s/igc_get_rxfh_key_size()/igb_get_rxfh_key_size()/; s=
/igc_get_rxfh()/igb_get_rxfh()/.
The code implements igb_* symbols and wires them into igb_ethtool_ops, so t=
he message should match the actual driver.

With the best regards
Alex

> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 8695ff28a7b8..2953d079ebae 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -3285,11 +3285,13 @@ static int igb_get_rxfh(struct net_device
> *netdev,
>  	int i;
>=20
>  	rxfh->hfunc =3D ETH_RSS_HASH_TOP;
> -	if (!rxfh->indir)
> -		return 0;
> -	for (i =3D 0; i < IGB_RETA_SIZE; i++)
> -		rxfh->indir[i] =3D adapter->rss_indir_tbl[i];
>=20
> +	if (rxfh->indir)
> +		for (i =3D 0; i < IGB_RETA_SIZE; i++)
> +			rxfh->indir[i] =3D adapter->rss_indir_tbl[i];
> +
> +	if (rxfh->key)
> +		memcpy(rxfh->key, adapter->rss_key, sizeof(adapter-
> >rss_key));
>  	return 0;
>  }
>=20
> @@ -3328,6 +3330,11 @@ void igb_write_rss_indir_tbl(struct igb_adapter
> *adapter)
>  	}
>  }
>=20
> +static u32 igb_get_rxfh_key_size(struct net_device *netdev) {
> +	return IGB_RSS_KEY_SIZE;
> +}
> +
>  static int igb_set_rxfh(struct net_device *netdev,
>  			struct ethtool_rxfh_param *rxfh,
>  			struct netlink_ext_ack *extack)
> @@ -3491,6 +3498,7 @@ static const struct ethtool_ops igb_ethtool_ops
> =3D {
>  	.get_module_eeprom	=3D igb_get_module_eeprom,
>  	.get_rxfh_indir_size	=3D igb_get_rxfh_indir_size,
>  	.get_rxfh		=3D igb_get_rxfh,
> +	.get_rxfh_key_size	=3D igb_get_rxfh_key_size,
>  	.set_rxfh		=3D igb_set_rxfh,
>  	.get_rxfh_fields	=3D igb_get_rxfh_fields,
>  	.set_rxfh_fields	=3D igb_set_rxfh_fields,
> --
> 2.51.1

