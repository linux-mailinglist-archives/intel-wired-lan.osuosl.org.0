Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gdpkHRgJMWqbagUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 10:28:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B7568D26C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 10:28:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="zQ/BqrK/";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 645C542CD8;
	Tue, 16 Jun 2026 08:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mkr-ECHLKBKz; Tue, 16 Jun 2026 08:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9017442CD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781598484;
	bh=D7fsBTlHTz1X9uviu5ARGKZMxGgFqYxHmlWvnDqs7gk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zQ/BqrK/YtiOUU2/fJntf+DTNBy3lmQ5/VGfzBJ46Ck1nuU/SPtUiYoo3rjarRI/H
	 XJRYjNGKVKiaAlTWAabQHvxgk7g4BvAka3zwWwJ6qbU4HOktWoEjpwo2XHpOSZMSJz
	 UzNmQzeuGXj6alXybe9lznZ+sglx5PtYiTvb8eh/CnZWRFOSvi7yKi+luU/ywZLK5M
	 m8SK3g+6+867DWwnIgmQjIL4hC3UQIrwZ226dRWEug0OZfROQHNYOWBKK2Oux0PjvX
	 s043t0l7Kw6x72b4bWNXQPzUxRxSakqu6P5glhhHXhJkaVF063/EspWB4h02WgU8u3
	 EaLob0rAnNknA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9017442CD9;
	Tue, 16 Jun 2026 08:28:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3162A2F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 08:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15E3D42373
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 08:28:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ls9qeVjpnAwL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 08:28:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 37E2D40054
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37E2D40054
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37E2D40054
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 08:28:02 +0000 (UTC)
X-CSE-ConnectionGUID: hXAng5hLSx6Eq2xxQX1TEw==
X-CSE-MsgGUID: MauojLMWSfOeY3V4Els0fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="69901786"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="69901786"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:28:01 -0700
X-CSE-ConnectionGUID: hiOzgG7dTfC7G36DPgx2Zw==
X-CSE-MsgGUID: t1ABw98jRR60/PF2hIq5kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="277905216"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:28:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:28:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 01:28:00 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:28:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yzz7WS57MRUSuE9iRQWPEl+/Ci3jUBGkqOMLxbElLvuyIP1zUgeyCeEDAlFyiD6q9M+rEmJpsV7ysDVcUbTjf80eTeN/p9dAXCgoqsrLP0LYP2LA419u7QWFuEwVlp3611T/BnM1Y605d0YSRN2fXMUpqCF+rNfEmyZIwT8IV4jgQKa64/B81brmXquRS6doc8khjcXVuDKVzjtP4do5E8O2WQ6cBRFwff2DZaQAVIn0RNLa0hVv4zCSM76a6vYfh+AVA6LhqiS4mzz0gmdg7gkk/c9zun086gdEj/uJpF40l4f8xOmqvT4EjwQLqAY5ke0OZ+1vLUKRQheiq4ANQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7fsBTlHTz1X9uviu5ARGKZMxGgFqYxHmlWvnDqs7gk=;
 b=m4KMjLWYuzqOxmIv/b8hggC7EUOZ1sOas7YYTfujHuFzubBoEdaaF94wLNJHhXUdbKlqsd/mK6F0BV5ADu4OCpnmIecDpfEq4FqeSICotpZ0usVOmsjqCCDbQ0C29d+4+fmZ7DPI6OCj2lJxqX7jXp//FPenu2KIswp8oikULuW6VbmlTLxOLeznWdv/73hROqcU9YlKLWC70oki/tOqheDC42Ilt1IoiMlFhwlMR3OEhLc/FIrX9ALdAgmVzxpfoEnPZGYWi9+ZyzXQnfDI83GgGr0sS5czlKHpnou38Gc2zIjhrR4CmTJE8YcLDZub8GIorKgZFCc7LoAuPpKoDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by SJ0PR11MB8294.namprd11.prod.outlook.com (2603:10b6:a03:478::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:27:57 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%3]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:27:57 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: NeKon69 <nobodqwe@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "victor.raj@intel.com" <victor.raj@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix use-after-scope in
 ice_sched_add_nodes_to_layer()
Thread-Index: AQHc+x1yKNXc0+J3H0KfidisFB9cl7ZA3AmA
Date: Tue, 16 Jun 2026 08:27:57 +0000
Message-ID: <PH7PR11MB598358950C44703F3F166D5CF3E52@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260613101440.80190-1-nobodqwe@gmail.com>
In-Reply-To: <20260613101440.80190-1-nobodqwe@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|SJ0PR11MB8294:EE_
x-ms-office365-filtering-correlation-id: 113c827c-f749-4b03-adad-08decb812bb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|18002099003|22082099003|6133799003|11063799006|56012099006;
x-microsoft-antispam-message-info: H4yvhUMuNzgb3rmUA1pUQuwjVWWuwOzEMMiyLtiUai9e1aIxbAJuOIqJdq1+WccDYCFTHFqzeLXADJ0+N44KeEu8btO/OnWE56Ob8rXeGz5O04y9iVn4h3Ze8I4We8i5F6t3unf5oE0ibREaYrO9H+7zd7VWJCCG19aMTwt8D3arYO5DMYso+ZObhgtRqAaaJnmB/Vg3WeyHCA8EI43B17qXsDAYWFypH9OOAjnqIUFqw4D45uj/+23QcRxalUZtsSn7kKDNHGBnxPDb2VOF8tfusxpruUBpf5vsrd6wwKkNJMShs12Oj/Ssi71mnofwJZW1WyafQU9/ZcHQZtNx2NtZc5SWZUaCUIf7NdI5MAmHMjmWOpa50xlyePg00UTr+dTMTcfrut6k7PewKnEb/GLN2z32IOMAvGOk6wcGs5EBWGfCSBQP5pAUjISaDsmUcFCM6/vO2DO7OFNY8KmEOcr5vZ33ATXqZiB2I3fsoZc/UDcqTDte5ApeYZ+ZCZ+7jLWzbx/MgU3mQIFZVm2KTtq62HUBZO+zmkKBppE46H9iVDcoYmuIZIz6iM+wR4nBFOJP8sJtB2XMP5gkllH6+/PK+Vf5cewaYEL4SgXG1dY6Hee0cvb2JUXt7FTsRJVfD39Lk9TeAXgtve0akHxHY8K86cfwku0OvIR5FR4OmXpu7Cj4K/ywX0jj+rh2bOMFOMw72+DVYNa+3HuctTMj7jLt1lf7iaQhE1v3rBdeRp+McZE/w0RXJJcC5owOOuyB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UnVAlfZOPDtVbyZuXG9wBV9W+dQoTF3pCmvr3AvpFBNnXAjXE+d3uZzpcfix?=
 =?us-ascii?Q?n4kuoGsSIh5UmmTD7d+rUL7Dq4zJvPhLfWbsTHVMZ/fz7L6iGesBNEPTQi1P?=
 =?us-ascii?Q?CoEFRBiWUTEQO1EgJ5D3+d0DfnbIyTV7YjyUQaCy4NaPnEvzu5XVE32SJW3C?=
 =?us-ascii?Q?k7XYlCa89JwssDm/8jKH3SH8qSGRAQNT7xuG7ZfZWXFH3kTkabAeM7+pDBrH?=
 =?us-ascii?Q?WHGUiYGjVhmom2oKmatDJ5fu8dTenmKzg9qUcqW8LtAaa3j3HNFcgzQp5eo7?=
 =?us-ascii?Q?pJQg6pG6dq928Hiu4PyxhZ8TR4ZrQA6kBvtI6oVzadu/z51hXqIul1xROHnV?=
 =?us-ascii?Q?AtYPT/KRM0lekMCMsJthhuiODXTbsul1daG51GMaZ+kdUP5BhKP9LyxbytQo?=
 =?us-ascii?Q?OIDNDrsFM1Wcdo//T7urMzPqzImgMVwGqkR9APfK4VpxvD+aLJ+54GgI3hq2?=
 =?us-ascii?Q?ytlguw1no3yPyVJj623q/Q21aBbu7cvDPOE6NKG9zyQ+qI3F1c2awYS7EZy2?=
 =?us-ascii?Q?eG+peIGuN4E5Tc+V2fPNS7drEFAmSIrSYACQiYbkG8bM3oPnWZXVo0QuNoFP?=
 =?us-ascii?Q?KU+YvC/MBTyP5zshWVai7GPcxp5PAIX1AQFkMU4XacLS9OepDltkbxBX3514?=
 =?us-ascii?Q?P/HxP9oL6DwUBjriA2ifHgpraQg9PIRetxrmF3y3IrxSz8rbweBWzsiP+e16?=
 =?us-ascii?Q?EsRcEn8MyKwQ3z34aaKVy7fwYRmIao6eqc1j8+bMBsGFRU/x4qn+UwL3/FH2?=
 =?us-ascii?Q?VA3ivyb/RgZAYv6IZOoxi/YL8TnF3haaOwMnydh9QTvdjSOJM+cwuOhOsfmt?=
 =?us-ascii?Q?DRSlH1jLV41VliEpVsTU3u08KhVSG+B6gQWlbUPrVGpBtDDroIFDRAkEdl9X?=
 =?us-ascii?Q?/MmG0tybTrcXbWxpJIXjISGrqohYUBPpBF9cCmYZwhBbWxLccqrjK0KLtGcT?=
 =?us-ascii?Q?GSHRjsL/CvSNEQGKhawp3942slv/lvg4s/v/2KDriAAPBHwmht1170bsUloJ?=
 =?us-ascii?Q?Q9X6v32vGviwP5ktpO0NMTLyfPjLm7jC4XUGofuSrbD68z7nzVKW6ucxidOx?=
 =?us-ascii?Q?iDyBStqYHHTN4NyFtK2X5n6E/DuDdmeVM+X4IKikXdY78Ly492TlKvm5GPTw?=
 =?us-ascii?Q?2IFtJrt6GbXYYeB3doQ3/hBblcLVdldV16Vn7XvWeRhI/gDvTeL7nuh3y7I4?=
 =?us-ascii?Q?QkBbimXyGm9TvdBzEgY4KSyZGNm/n7InkKEPVQpOR77BH3QT1gMJqXuEw0+z?=
 =?us-ascii?Q?Km+Vpzt1Wo08xA+ZBKFkGGcfwv+xG+2BJIT5Q4ztrNd1pvVZ3HfD0QfAVUH5?=
 =?us-ascii?Q?b5Xrj1hqzQoZnReT/hSpXM100xIltsYLU1R42afn3PpDYoDVLROCbb05PufC?=
 =?us-ascii?Q?5JHDBVXoPQ8gNg95wpZnhbg8XmeLGI34yIkG7Cdquz8PbNi6F4LNMNyLQQb1?=
 =?us-ascii?Q?bSPGGU31po/iXdFOrlteyZl8ekvGO7TWWoy7jHszI1StBnxbOjFGkIgbjDyk?=
 =?us-ascii?Q?WJA/tj4067PdhDSzdV7zdgNEY4h4uNWCyKOyn2HFuNblQV9jclDIlMqyh46l?=
 =?us-ascii?Q?NVD98nSas2kykTc11IXhZcuz4Qo2+6GwsoxhGzLw1bWIap7/wPsiTso4Jk9e?=
 =?us-ascii?Q?9vyrNqygxUoxnNQCIRajR4Hu8TsDhjlOIVshjySi2gS7gwNvwcOFyCOnx4t7?=
 =?us-ascii?Q?uG/wwPi+XvAPco3JXp8uaaTwkxFUpOB0MEtXKWdrOFZCpy7NDtslpJ3osIzc?=
 =?us-ascii?Q?OMrkbOEe5w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HdZSGZY1tAmKwXs8bDd2BQhibYhb1+d8xrXO2gat5VeyeLvz8v+D0xufqIdIofKn2Q7vll4NTav6DTCxp5VXZF0ksQtqqCwbhd6HsDC8xnWcsi5daweDiSeyVKtVp0WdTyMTeClpFKoCtvficW8B7jCEQmMDC2uDW7BOe9YicIFIMAbDM6wLjk7sy8a+l+rI8cAoAhT4ajyqSmkmn/xkSV63vMPAZUQekmbXzn8SbL4/3LS4kcNLKgsUPkmaS0sntG9REAT42WBnoRIhM9CNwDDogZmv1RVzl4RKWpMtVxi1+9mj/7k8fKiWR2gfNOk14p4UL53fdL1oVixYIHHqWA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 113c827c-f749-4b03-adad-08decb812bb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 08:27:57.7409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t71I/wyBgTlUn+hbS3I/VVaofjDVO2UOf/sBM8YJ+I39B8ECnm40rNbVoYtqeF+xety9HcPUaiit1Og+CQgL0VJekE6Ep9xZLZwoACO2c0A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781598482; x=1813134482;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2hvf5U/9kDQBZ4NQnwvm/pYx8khoeNOQfjfcHXMJ5Dg=;
 b=EIao6KEGGKCeEk3WQaKbyVObg3kIIe9M6pjGDeXpff5Akhq4SpmhFlGg
 Hp7tF24SakDo2Y3U31xE0JatpBms04G2txhVOiLdh12NYzqeqBNH2elN7
 8nHzyrv7/LPwu70Q7987TvGn2AaAvIqYh6NrL0+CN9POgCalP9vp735K9
 9TAzDFkXi4N3g8SXmcJkhy5VoaALM7s+/PKWQWsVvFOSojMrlQ5ZjvTlD
 c4ZP4eI8yuOLjSu/ck7DNKFAq3vCu6rgSRuqRnMvfywVRavZS/6laG3pE
 dd9F4xeyZytYp/biQEhFleXDwcx1iEKrJojqk47ylow8YuhXqpLCyD2su
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EIao6KEG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix use-after-scope in
 ice_sched_add_nodes_to_layer()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:nobodqwe@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:victor.raj@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,PH7PR11MB5983.namprd11.prod.outlook.com:mid,lunn.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 57B7568D26C

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ne=
Kon69
>Sent: Saturday, June 13, 2026 12:15 PM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <p=
rzemyslaw.kitszel@intel.com>
>Cc: andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com; kuba@=
kernel.org; pabeni@redhat.com; victor.raj@intel.com; intel-wired-lan@lists.=
osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org; NeKon69 <=
nobodqwe@gmail.com>
>Subject: [Intel-wired-lan] [PATCH net] ice: Fix use-after-scope in ice_sch=
ed_add_nodes_to_layer()
>
>Commit 7fb09a737536 ("ice: Modify recursive way of adding nodes") changed =
ice_sched_add_nodes_to_layer() from recursive control flow to an iterative =
loop.
>
>Inside the loop, first_teid_ptr may be set to the address of a block-local=
 variable:
>
>	u32 temp;
>	...
>	if (num_added)
>		first_teid_ptr =3D &temp;
>
>On the next loop iteration, first_teid_ptr may be passed to ice_sched_add_=
nodes_to_hw_layer(), after temp from the previous iteration has gone out of=
 scope.
>
>Move temp outside the loop so the pointer remains valid for the lifetime o=
f ice_sched_add_nodes_to_layer().
>
>This was found by Clang with LifetimeSafety enabled while testing C langua=
ge support on a Linux allmodconfig build.
>
>Fixes: 7fb09a737536 ("ice: Modify recursive way of adding nodes")
>Link: https://github.com/llvm/llvm-project/pull/203270
>Signed-off-by: NeKon69 <nobodqwe@gmail.com>
>---
> drivers/net/ethernet/intel/ice/ice_sched.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethe=
rnet/intel/ice/ice_sched.c
>index fff0c1afdb41..089ad3967be5 100644
>--- a/drivers/net/ethernet/intel/ice/ice_sched.c
>+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
>@@ -1074,11 +1074,11 @@ ice_sched_add_nodes_to_layer(struct ice_port_info =
*pi,
> 	u32 *first_teid_ptr =3D first_node_teid;
> 	u16 new_num_nodes =3D num_nodes;
> 	int status =3D 0;
>+	u32 temp;
>=20
> 	*num_nodes_added =3D 0;
> 	while (*num_nodes_added < num_nodes) {
> 		u16 max_child_nodes, num_added =3D 0;
>-		u32 temp;
>=20
> 		status =3D ice_sched_add_nodes_to_hw_layer(pi, tc_node, parent,
> 							 layer,	new_num_nodes,
>--
>2.54.0
>

Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

