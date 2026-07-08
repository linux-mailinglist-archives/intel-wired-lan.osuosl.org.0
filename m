Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 766uIslaTmrBLAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:12:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C98F372728A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:12:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=3JJNTzSZ;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4F7A81EAD;
	Wed,  8 Jul 2026 14:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQKtoLH8xjCX; Wed,  8 Jul 2026 14:12:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAACE81EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783519941;
	bh=laxnNFpS7Vi1DX3mrIG3OE0ECfwChbVaR1NIF3mm+CU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3JJNTzSZt2NUnXHnre0u3HoBHmsMtvfi9i9JQ356WOAarxD1cXT3F82rNNLlBkRm3
	 fx3q5CuERY+6H3TdwDBo6ixTtbG6k3S+y2tfGgUkeCVkx7Grn5KlxtqmiUBQ9jCHuW
	 H2vqaF5DHWGyyN71oJzOoZKwYGy5DsQH5H4kpOFPCCeTqXWuTbAbRLBa1vm9a7rKRB
	 mKNaCnjxB3dir6UHULYjCgws7k544DBt4Xn79UQRcpEdhtggExZ7r68NvjAQjhCQJz
	 XGMYgGX6ILv65tMsAfGE1HLakNG6DpmtzhvvOBxiAwNkMrDjVGGOIJ1zeNvF9WVMed
	 ck6iY8sQDijhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAACE81EC2;
	Wed,  8 Jul 2026 14:12:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 75B74315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97BEB40E59
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:12:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NA4z6QjvOF6o for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 14:12:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A523340B2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A523340B2A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A523340B2A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:12:06 +0000 (UTC)
X-CSE-ConnectionGUID: 1D/HMa4LQrGq8gNopJ7QtQ==
X-CSE-MsgGUID: XW1jMFqKRXa4OyR6kBb0aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="109727851"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="109727851"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 07:12:05 -0700
X-CSE-ConnectionGUID: rSqdQyMKRtWT4tOHEMREbg==
X-CSE-MsgGUID: v44SlSPzQVSSAL3FO577NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="258166228"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 07:12:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 07:12:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 07:12:04 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.20) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 07:12:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UwfcmQUavaWIRI4tG7oWHH9p4FUclQR9Wotb9hQgPzsaxwp9n287VqbtPIx7ZecIAyQkvdlvUUkUeSsnEQtLx6dVtHpGmvxvqYuNsT91R2lJRS5zD+9UTZz+25bh2bkEcfM4bcBASmUjn6uUE6mpEtCkYF8bnQXLTcCbbGjKJEGo9Nm73L+J6Oqegw7SkzaXMFR3rPlkJDYy07g69bv59YVyPaKOrz/YhozPROf8dp26LuVR5CewXFY4XdeqO0RT2Xbitkg86dZInOWSFtJ0oAEUMF+MyHd535CYn/ou+iwgavYbxpZeo0c0TlmhtPAg0/w8V4R+W9w4FyIAf9VN8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=laxnNFpS7Vi1DX3mrIG3OE0ECfwChbVaR1NIF3mm+CU=;
 b=hNXdfIOMESq3lc8QgFUySrX/2EQM1yJWqGhIzvNwkEhYHhTF0YCWK+rykXfvXzHB7QqQJFmrT1pAsgDrd4l8WnYfzBMfDi8AGEOsdeBh63DKqsXzDra01rycLB49KdlnNTlzhyutIyY/PZNPbbIFNoF7Y77gXC39I0p8CvdJJTDVLO6Jm6LywH3aC5v21zQf5N3eZkMLqQcs8PIw7pQUGoRxDeiE9Xg8BMvglzxqzXi4vQ0o67X9MkmrnqwxO3tO2IKl854M4m1GHttcxKs6MXirKt6JYpMiuRB5VB+i9XL7MMQr2c/5IDapCVx6md4eIqbvEOpKsN8KzGIiPXL23A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB6863.namprd11.prod.outlook.com (2603:10b6:303:222::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 14:12:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 14:12:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [PATCH iwl-net v2 2/2] ice: fix stats array overflow via proper
 realloc
Thread-Index: AQHdDZucvkDJkTnbH0Wr7c0JBOZxNrZjrCGQ
Date: Wed, 8 Jul 2026 14:11:59 +0000
Message-ID: <IA3PR11MB8986C47DA43C5A358645CB94E5FF2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
 <20260706224346.22546-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260706224346.22546-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB6863:EE_
x-ms-office365-filtering-correlation-id: f1484889-d118-494b-5ed9-08dedcfae080
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|11063799006|4143699003|56012099006|18002099003|22082099003|6133799003|38070700021;
x-microsoft-antispam-message-info: vU0h3hOfZKnFc9wZ3XA8lBPGRf8l2YfrSquDlJVYpU/sHpr2nehg8nMvQtX8MLAZZC1BO60TnKdhBLTBbgAcy809HbWxz18lMv/Je9pAN2UvRjY55CY8xSi55GPLpQgS8Ds6Z6X1Ky4Cf5XJ3diPIRpwZYQ5nya7bCd/pF+ycLqoDszrQJ2kbwQZkgDikdttGwIEJAMCD7gl3srN26ii0wxURKNsPR2tSGX2HME78IpbV4qk6GqTWW8P7KCWi5P3v+ccmERcZ11/ZYeadeuu0FJ4k5MEBSx72ftSPOc3Nco/RWDXAJ6czSzpw8KCdB6H4G1wMkgwuPe21vfoIqr+v+xuqzxChPnmETG0mRPJ10Jqemz87WqlNLeQBI7SyNgYWTtNx/doWKtNpE1gWxHbD6yGE38OCOtdWa90JSMUzm7mqFwRUfZqYthp/+M34b9DTUwZZRTyT+0IueA2Ilen9XqNfELZBfY6P+8CViT0xnWVZHHJsiZx2IVVGC4FrK55Y9OxaVhqPVhRywjAiaRFqD/WRTWaf7pUAnwM9tkxSvDnO8lCsRV92OkYh/2rNOBAWiV4ZOE0TQ9/FAZaUe1fMQ9Tz7NE1Zk7Eu8iQ/cMNA+Y3bcYnA0DTPad5pr4Vszh3XpWJWmphmV4QJNmwZxzGSZFKnCSbI853fEF87YDqvY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rkviAgSrr5v9mUK4PRYIM+dO00inEzPd5o56ehTU30eCHt/BpygOR7YWGfan?=
 =?us-ascii?Q?YRDNHbBGfqtIZmMvwcej5RtqfEym/HRclRRMW8rT86y2AoEoZYGi4UZtwa9B?=
 =?us-ascii?Q?zDlc/2rAWOIkZaFFJiSf7us5iuRinsN4q/7WnL0GGrsyExsTZ41XoBIg1RJq?=
 =?us-ascii?Q?M42XjSxipHN8Kj/BxnxolJGlRUTkijq4jzR/q8FkQNCn6M4wkjKl8HZD4+rn?=
 =?us-ascii?Q?OomMXedhbqyyy+yabPD5uyMJkX8ljYhNbYcdD2ZsGQuk8Q2ZgqUredXLKsbR?=
 =?us-ascii?Q?myTn9MoouohhzY218ABnHC+WCuKN36w08haqsqp8iii5lfpeEJC+s7X1M5GI?=
 =?us-ascii?Q?Wn3+zRc8Ecrdgvw4F8rJ+6Nrf5K08Z5vGIkxFunRPXZepT4HWqYmxfDL0LN5?=
 =?us-ascii?Q?cNLjyTZnnyfuko550iOQDyh9xOKeTjab+cC7f7V95gZ+R/RikBPbCqVdkasf?=
 =?us-ascii?Q?eVQJiyeGnpBTMPcdfmDcYD8tuZzJtWQhE9ZG/QR67Vqecsl3aonQ195DyqE7?=
 =?us-ascii?Q?vTSwZ17Bj32ZeD6nRVeFo0CoKDZbAyisf3otwMWcBFvGwaZjuaT2dmLhquMy?=
 =?us-ascii?Q?uauMaFdT1Aw/INajgp4RzmSp+j6Kn7y1m5bogE/N8jZxN2x6YpAYw3JIWgFo?=
 =?us-ascii?Q?zCin0rNqtuoGUN0yJFPUSCgJoQeXdZoAUUs/sgpMDdBk5SrVoO1oc2xmZnl6?=
 =?us-ascii?Q?yPZnnBayVxMCf+crMw64jtBgjh8BH516ir9V1o+/MtHSS7mn9q+GJ80QqFRW?=
 =?us-ascii?Q?Qa0RImBnTpf/FuTCN3cTqyAvSU6dbZO4ONWSr2egr3y7OpDCHrXQdAXlMrGW?=
 =?us-ascii?Q?GTRYOFGb62mlYbc3Bm21VfHEVzJzUwdzyYiPoG+4bvc35nsXlhFIlukbOaWK?=
 =?us-ascii?Q?waV4/pnRywZER2598IJuTKWOiLLah5guNeqSldeFA/GiL1MoeXRiBe6PIcwC?=
 =?us-ascii?Q?EDk7A3bNiOtjgChWFAewvSazsKb/XRR1EUYiFWcZNHNTAhpH96gWx0pQqXXV?=
 =?us-ascii?Q?Plri3imiQVL/EGcf/41wj83mqGdyXTEU/zoYl7ZXLIsOl4zygZDUXw1DfEju?=
 =?us-ascii?Q?AaUGBQeMtGmmjt8j/DAtPzwjBlgCRWT/1usAnaWixM12UF3GkJciAK/m++z3?=
 =?us-ascii?Q?Der8wvmbSJF+ghL/b1oe2pa5nQlKgCU5y11hcqQ43BKPzOTMmM1gWI4qrngF?=
 =?us-ascii?Q?ZWVRJ5s0L/2wwvQtRGr+ZNoDlGoGi/81DvkdgJaukotz5+LHCxuC+9MP2fgH?=
 =?us-ascii?Q?wDQ5OpUKRe5iAM59cirP207g78rksfZnqB+jwXLq0FD1XuOlu+tsi3FaGFz6?=
 =?us-ascii?Q?u5L6pKK+VrZgXlnL0Ap9pYkGuhV1hKVGctfCz53TPUJDhixuvZ52j97/Y15d?=
 =?us-ascii?Q?PdcOrgDyiINUjHmEZpWVaynm6GthfQWoxYqpWIKYd07ykg/50bWrJZlQnEUt?=
 =?us-ascii?Q?V2OQybefYGf+zyjztEZh6dQhNA1nxm7dYa2JRr37kIJU3qjYrkOFH24IEKul?=
 =?us-ascii?Q?hNIVVIZgc3hYgX80sSLBNhWNf83fv29MiquD9FLl3VD2OG66GEadl4cwfxLI?=
 =?us-ascii?Q?uVnnXe0v+WqUX+MxZPLabKkn6o8GgRtKXLJkNaj4DjqOG1Tx2ZOC4F+Gq03Q?=
 =?us-ascii?Q?wDwBIU4GYG1ZV34ZQCXfQlOXum9Bhffr+BtxueIZJgGKGfS8bXuRUrExtL+4?=
 =?us-ascii?Q?xhZ6A33/ISJBmM5FttAVHO8zcgnCrktaB0hvUUlbkLrCZ0lDN4AXwagBnGAj?=
 =?us-ascii?Q?7kOMxEIEB/NgaBYRyBmdntd6PzFrNLw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FlQfXIw8ajfZX4hZ+s6OV7gvgqRGhzSUro9esoUwd2tddZ5maMXE/A7RKJzSE2zlcvpCHUhdyg/OgeJRm4XqYYClx8rhLFY+DgylieJqpyxvoR+xhsGVXbERwmb+fNqLt4Bk+M0oYOZg+brvQam24z3B8SPKBZYSfCIhYDDx+rY+/vb6jyMg+ZkYWfwbW50sqrwxVLCOCcGTdCRB7+x5ARL81SuW1DH+xyDFHZgdnVOvDK2dnEU71aWw8m6YrQ5fdeoPs/OQ3c9z97X/ma9wN373c5TidS6K+k1+CcbI6Dz/QBSE1ZQwID7nqHhsXZrkpqo0fbO/SovqOInkQisY+A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1484889-d118-494b-5ed9-08dedcfae080
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 14:11:59.9137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ycmjAY17eLFD8JZsZRskRSTqa1H/udxMVRrD2VbWzS9kReH4AaLwgpB3o7DPKeIhQCsuku6qItxciRVwTtHUK+6Agh0C0tsDe8m4KJ/mjBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783519927; x=1815055927;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=riHQCfhRRaLZ/+BhSJ4b19daC3TNqetq3sMoRoKbFE4=;
 b=IwMCvYBC1DOQnI5w0mlRec22+idngSM8iztcH/O9oXgem7zQat4WjIrw
 /vXnK8B7VMARAxcSq6akn9mig6JigATI+50geemCxHSqqzL68zShKs3qz
 1vUjvpwKMd142LLmHi1ytkVizHpEeRG1oxdSbMrhactJto8rJtjNGsyXo
 ecHu3Qmcaa5bMLqwXi0UrRQgojDWDcqRMEg4I9wkwu0FtQsU4DRJRcXvQ
 0qoEkcCSDCBFrY8mmtjpYgQu5jFmynpaDIpq+cngkgcQ7e8wimFv8k1m2
 qDatUQVscgreGUARaC8NgEBFHpETfCfu59mVl6g+1+7oZUNBqRGdJn2cL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IwMCvYBC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: fix stats array
 overflow via proper realloc
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:marcin.szycik@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C98F372728A



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Tuesday, July 7, 2026 12:44 AM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [PATCH iwl-net v2 2/2] ice: fix stats array overflow via
> proper realloc
>=20
> Integrate ice_vsi_alloc_stat_arrays() with realloc variant.
>=20
> Instead of keeping two functions for stat arrays allocation, change
> the
> ice_vsi_realloc_stat_arrays() to handle initial condition (no vsi_stat
> entry) and replace ice_vsi_alloc_stat_arrays() by the more generic
> ice_vsi_realloc_stat_arrays().
>=20
> Note that VSIs of ICE_VSI_CHNL type are ignored in realloc variant as
> they were in the replaced ice_vsi_alloc_stat_arrays().
>=20
> This is a fix for stats array overflow that occurs when VF is given
> more queues (an operation that will be more frequent, and by bigger
> increase, when we will merge my "XLVF" series).
>=20
> Splat for increasing number of queues thanks to Michal Schmidt:
> KASAN detects the bug:
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  BUG: KASAN: slab-out-of-bounds in
> ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]  Read of size 8 at addr
> ffff88810affea60 by task kworker/u131:7/221
>=20
>  CPU: 24 UID: 0 PID: 221 Comm: kworker/u131:7 Not tainted 7.1.0-rc1+
> #1 PREEMPT(lazy)  ...
>  Workqueue: ice ice_service_task [ice]
>  Call Trace:
>   <TASK>
>   ...
>   kasan_report+0xd7/0x120
>   ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
>   ice_vsi_cfg_def+0x12e2/0x2060 [ice]
>   ice_vsi_cfg+0xb5/0x3c0 [ice]
>   ice_reset_vf+0x858/0xf80 [ice]
>   ice_vc_request_qs_msg+0x1da/0x290 [ice]
>   ice_vc_process_vf_msg+0xb15/0x1430 [ice]
>   __ice_clean_ctrlq+0x70d/0x9d0 [ice]
>   ice_service_task+0x840/0xf20 [ice]
>   process_one_work+0x690/0xff0
>   worker_thread+0x4d9/0xd20
>   kthread+0x322/0x410
>   ret_from_fork+0x332/0x660
>   ret_from_fork_asm+0x1a/0x30
>   </TASK>
>=20
>  Allocated by task 2439:
>   kasan_save_stack+0x1c/0x40
>   kasan_save_track+0x10/0x30
>   __kasan_kmalloc+0x96/0xb0
>   __kmalloc_noprof+0x1d8/0x580
>   ice_vsi_cfg_def+0x115c/0x2060 [ice]
>   ice_vsi_cfg+0xb5/0x3c0 [ice]
>   ice_vsi_setup+0x180/0x320 [ice]
>   ice_start_vfs+0x1f3/0x590 [ice]
>   ice_ena_vfs+0x66d/0x798 [ice]
>   ice_sriov_configure.cold+0xe4/0x121 [ice]
>   sriov_numvfs_store+0x279/0x480
>   kernfs_fop_write_iter+0x331/0x4f0
>   vfs_write+0x4c4/0xe40
>   ksys_write+0x10c/0x240
>   do_syscall_64+0xd9/0x650
>   entry_SYSCALL_64_after_hwframe+0x76/0x7e
>=20
>  The buggy address belongs to the object at ffff88810affea40
>                 which belongs to the cache kmalloc-32 of size 32  The
> buggy address is located 0 bytes to the right of
>                 allocated 32-byte region [ffff88810affea40,
> ffff88810affea60)
>=20
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with
> ice_vf_reconfig_vsi()")
> Closes: https://redhat.atlassian.net/browse/RHEL-164321
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> This is an alternative to the fix [1] by Michal Schmidt, which were
> blocked due to AI feedback. My fix was already developed before
> Michal's, just not public back then. We have agreed to go on with my
> version.
>=20
> [1] https://lore.kernel.org/netdev/20260520183501.3360810-3-
> anthony.l.nguyen@intel.com
>=20
> v1:
> https://lore.kernel.org/intel-wired-lan/20260701104141.9740-2-
> przemyslaw.kitszel@intel.com
>=20
> v2: Sashiko:
>  * defer pf->vsi_stats[vsi->idx] to be done only after successful Tx
> and Rx stats arrays
>       allocation - this avoids "half initialized" state processing in
> ice_vsi_free_stats().
>     The above was reported by both opus-4.6 and gemini-3.1-pro. All
> other errors reported by
>     just gemini were a mix between false-positives and too-
> cornercase'y. Gemini report for v1:
>     https://sashiko.dev/#/patchset/20260701104141.9740-1-
> przemyslaw.kitszel%40intel.com
>  * store also array lengths in separate variable for better tracking
> and proper freeing.
> ---
>  drivers/net/ethernet/intel/ice/ice.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_lib.c | 80 ++++++++---------------
> -
>  2 files changed, 29 insertions(+), 53 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index f72bb1aa4067..b63b59f2d203 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -328,6 +328,8 @@ enum ice_vsi_state {  struct ice_vsi_stats {
>  	struct ice_ring_stats **tx_ring_stats;  /* Tx ring stats array
> */
>  	struct ice_ring_stats **rx_ring_stats;  /* Rx ring stats array
> */

...

>  	if (ret)
>  		goto unroll_vsi_alloc;
>=20
> --
> 2.54.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
