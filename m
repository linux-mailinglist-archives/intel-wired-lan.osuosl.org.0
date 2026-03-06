Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EG4OuamqmlTVAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 11:05:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8FD21E6B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 11:05:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3F5083B81;
	Fri,  6 Mar 2026 10:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G5CxFNphIWDy; Fri,  6 Mar 2026 10:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52F7183B73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772791523;
	bh=H07jo77iK/5G0fpgmyF1ZtMh+k6DCKfaOChvPLELpIw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZijaMy6MoJqVRYIhrg1QqW8Y26Oj7lwkqXgbHMnCX0DKHIcobn75QTXeWvZfaAcBM
	 IOzIJaqBckJ2Yeydj+wVwdeZFBL6FkG0Qp293cO7bmofg9kOMR99zRb8ewejJztlWT
	 la7NZr1NgDZ4zoIA6nHtXLrs0oMwQWOw2hB7ePW2LKpSrtLkXvezXpchr3sRI5cWfY
	 jz9yq0EcHo1aoTXjrOdn6bt/V8YkbaGqHoIDJK9Cgn+IfSf0YIKO35BCHySjdMYplu
	 kSP7pubS1PJimLRGp/qY+JGKbGV1dV4aPYL3RT7aUkOFPBldzDVH3kGbd5O+zBnKYk
	 /nk62Hlvyvoag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52F7183B73;
	Fri,  6 Mar 2026 10:05:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CD57D223
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 10:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF4BA833CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 10:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lRWFX2V6aBDZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 10:05:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BEF3E833AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEF3E833AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEF3E833AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 10:05:19 +0000 (UTC)
X-CSE-ConnectionGUID: kci5XU9GRs6PAlvK9DFRVQ==
X-CSE-MsgGUID: Jk0LXn14TpqmP+9E81VOsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="91286340"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="91286340"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 02:05:19 -0800
X-CSE-ConnectionGUID: 6vqT4XO8TbOrDbRF129xIg==
X-CSE-MsgGUID: FPCQKXjRSGm6Do0amqBP2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="245279961"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 02:05:18 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 6 Mar 2026 02:05:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 6 Mar 2026 02:05:17 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 6 Mar 2026 02:05:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s257eNEwArRoHW1QbLs+PwLATHgo07+WA06+7K85BzXtOj1UrcuO5O6R5HC0+Xz1JOmgBVoadpXPS1N21zG36aJACVBn30B8qjv2UJuLfo4Nk5oYATLREMAXywjSpnt21KgYA4ON8E1E44rZ6GTHFJvyRqbDlTtQM66aivVtQwmP2xz5i78iz6Y2RL5usPcCT5OqML0QH0hzXvBIFTSguaM8+Wy0oyQgE+32MpUQPPdZrqulvEqBwQ8tJGrI/IFUWpLyt0zEq1vAdxIjyrQ8QyWz7qRwUh94YIs39v0cacr8Am/bp8/R17kHR1vjhsEX24I6L98owlMSnQlJgxwkCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H07jo77iK/5G0fpgmyF1ZtMh+k6DCKfaOChvPLELpIw=;
 b=cGgVIHFK0i8KQ8XQjDIp3D/zo6QZOGhpPpAIkKE+FEequ8S+YW8CDUAsqTTor1Zkzy1wjUHkhqzhRs1+qgDTUuOUk8e7sz3/SyJNe54Sr8u2m1WAMpOK+Z+V9CwVNLuf9p9Dn7CpQsJU/yqLUyXi+P0O2VU3lkKvONTLjSX5sJXOBBI9jrbCogHR9H926a85/rUh4gmSzcYgNx5KACN3f+xXrYD8due8Ug7+9LaMrCkod/QsdyeAzWci3jse6z/HT6adBwkcJ8kQV2arAgxllIwRE4xPeHN0GqXaFgOJFlTAQ1Y5dG0RP7pmup5ix+jTA7TA+x6to3PO9aj5tQsmrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Fri, 6 Mar
 2026 10:05:12 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9678.016; Fri, 6 Mar 2026
 10:05:11 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: David Ahern <dsahern@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Greenwalt, Paul" <paul.greenwalt@intel.com>, Daniel Zahka
 <daniel.zahka@gmail.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Ertman, David M"
 <david.m.ertman@intel.com>, Mustafa Ismail <mustafa.ismail@intel.com>, Shiraz
 Saleem <shiraz.saleem@intel.com>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] drivers: net: ice: fix devlink
 parameters get without irdma
Thread-Index: AQHcnMWNW/ul7w6ZvkOjhICbx07HPbWhZ1ow
Date: Fri, 6 Mar 2026 10:05:11 +0000
Message-ID: <IA1PR11MB6241A88179CB7D5CF82E3E3C8B7AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260213084841.1406442-1-nikolay@nvidia.com>
In-Reply-To: <20260213084841.1406442-1-nikolay@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB7468:EE_
x-ms-office365-filtering-correlation-id: a3c2e946-47e7-4bc6-5ece-08de7b67dae5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: Sek2pKKkshLflpJ/7fbKjShU5QHNC276wXXtn5mAzPIf8ZeVOCcmxUziLM6onWqDfyHjxXmmOuNzX3yOaf6QFWrjd+7Tc1c+NaQoLzoFBrZ9n1Vmp6AzfqyVADkNlzVlVTnEYN+KdPx1EMfxV8SU3UtC9oWU6UJNUzXYnK5p2fAn7+vnTTmDlX50iL+X3Otd+QOPVYwQy0YfNw6W3fEaB2VTmOWQYQRPWYYwmGfV8nHnMJJTl5FGf2KC1FAZyHdLo5wqYcOmbDiVGVzQ7DVEoHEpvUM+JoIuEj5Ssa9t1m/YE6kdhRmrmG4+kgSCsl1t+EoGPdeB5fY0nXCfrnp20GrL3cWB+p5+FTwRtKyAypIMWiIZGz8g1jycsFejCN9pPyXVbeTfqCZdYXP/Bx7F6py+J+B5RJqSfBuXrZ0HZ5OtGM0tLu2nSnQJwnxbA3/PuTZT9jEtDZTBfnXuUKC8mODsFcB/WnsAWvXw6ffqYCrlVPaT0pfI3yEqhvxbZdJmoeia5msf27r4pACnHMwUHibLoSd/uCgYocrOQaMeLE07IFGAzat1k4fYN2z0w6JFz4Mec5zL7/sNKOkd84lwdo+Ix3TcDBS2gceSvBD2dU79p7nC7CVQZ7lTVfpTP5EmlL3AeKWRL/B3B2JyNZUYXDDvME+eCxP8Fw6jf7bhyeTqkrIqRORxwcziJwXqTe+Ywo3E4RuS/gTLhqVcVSPZyolFTIIJmvWb5jo5mMd0AGjflJNNnwgKTcH0vikX9/sJQ/0bvYCUFkFbnqjrhn7ak5aT+gZrGPYBE3/T5HveqHo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GaWTJBsAGmaWw0vqyZ5eRPBXO4M8Wnk950+k5lQbh6gMaG7YiS2HngQJlZXA?=
 =?us-ascii?Q?QsIkozUw3n3HNcJ5Lz668rFlTHcYI5UlVyBgil8Nzt5/pGza70S9AljElJBC?=
 =?us-ascii?Q?9rkaXJ5FUO62XZexpAwqG4JRfGwqMGEKsG4dPDHCuq5OgSIHHJqHSCcf0D0s?=
 =?us-ascii?Q?XFize0vFT3FKkpvhvAS53CWhA0pl1UNePTJN3vK8q4D+W3eLqtb+o/zbZf7J?=
 =?us-ascii?Q?Qe9/ldpbK+sd2YYTgl+tUPOC/zHeZI1rgTRhiS8//sR6OYchuNBED6RmrwAs?=
 =?us-ascii?Q?W8EGLob6Q8AdHKil2HQ58HAjdMPLbylac6KpLf48rH66PPPMWJ2uqzVO2NiK?=
 =?us-ascii?Q?G2uPbuQ1eiTwzeffLiZFl8GbQSM3dArmmKmxu4Rhw8RAhl0JcpQwNLAMadzx?=
 =?us-ascii?Q?fi7KXqK4LBwLvptEG1px0LwPjvqqhRcScqMMs9/hoaLFQsh0H0FpiEb62YAu?=
 =?us-ascii?Q?/L6W4fGlWSp2n9lOvkmA8cjLtk+P+qP9NTY/HnehdjhEukdzIa6RdXQi4koS?=
 =?us-ascii?Q?rYvgLsoVzScwjgjesxbCig9lAbVPZayQ4QuKCHfNhJwOmadAGRoq5lVJAo6L?=
 =?us-ascii?Q?6NvDpxEhZwR4TMV8Obi0Ijze5aKKc2odvfjkS+IAzxtE/D1gVQS4wtxVYP8s?=
 =?us-ascii?Q?Mmn5HESx9UDJK4YR3jtdtCWVuUb0MQru+iu8eyt3quNaISSFkWuL4k9BH2CJ?=
 =?us-ascii?Q?Bw0wHlR5OCK8tqZ4NxkvtmdPuwKYJ4/zt3vdpL/52imemjB1sbywR8p1prWP?=
 =?us-ascii?Q?8VTZqyh0ysCh8YCnemvYAqbp2LzxB2jeptm+2cCh2u+vXqk3EmBTT9ado8AD?=
 =?us-ascii?Q?naoGIGL3TTcZb/MgkZ+IYvf7MfxneIUlTNQg0mcfQ/GDZ1wqb9bQNrK4FtYW?=
 =?us-ascii?Q?QtnzgzR1lsLOALTDgjnoGEr3B4p8rQAdUmA/0rcw4KNunTUIO1xrCPGSOQu4?=
 =?us-ascii?Q?p/4Skg/NNkz/uD3m6we4U+Q+zAAi3gkwR/nbxHxBiiabuSAPti1ridgrO1iu?=
 =?us-ascii?Q?IFS8PXVieFvw3S49GsssF9oNoZQIv602hNImlK0xlMqjfRlyPDWGtR4cxPTN?=
 =?us-ascii?Q?pZVz6IXoIZbwsR7yJCeF16RPD6xgHQNyJV/TaoDu3c9V2giwNNtffHJQooUT?=
 =?us-ascii?Q?0U8FyMPa8tHLwZ7K1bqv3SGA9A+0OV+sDeBKD0vNBKFVSdLjavfY/qZx3830?=
 =?us-ascii?Q?j7y0l65qHDe3BW1gAwWTaZuElPNnNxhe2XtMUYFt1mLyd8rTPjqfzPrsvQeU?=
 =?us-ascii?Q?oKnxWh6nURuFLzFmsyXeVb7F2sCd1ySJdREht/CZPcw6GUqkKeAA3rWuqJmC?=
 =?us-ascii?Q?WAilv8k7+okB851/YzV9V5T5xVGRI6f9mpw9xNSDW2T2MakdDqFsDueJBMaq?=
 =?us-ascii?Q?vjvdw/Y8ShlkX038IrA67Ly405DdDHwOFw/28Xk52pUjN/QsgYa7SvXorGOt?=
 =?us-ascii?Q?AMEV135VnJ4GtTymRdR7MBqxQO26Q7vwQArKVhdnwx6Su9EIljxzaqHAZRNH?=
 =?us-ascii?Q?PXrxkiN26dhnzFIjRoq8lICdtfGUxXldu00PkSiHwbwwJYahxwuxoVCOVM3L?=
 =?us-ascii?Q?Lj9kd8F+o+j67fHzEjvgBHAUMKg3trPbUj35afgkWoerYOhpDRTwqCM9A+Po?=
 =?us-ascii?Q?kubtOT90zwDfKK18oq79CnOoTYJ+Nyneerg5ZGPdCD62TykuuAaT6PluJMEn?=
 =?us-ascii?Q?uYNVZbvE2wiXZlaZ3V5ETvpnj/TEw67qD/BDGbGIa35ZLI+a?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3c2e946-47e7-4bc6-5ece-08de7b67dae5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2026 10:05:11.6657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xGJrqz7axoX5ktP3G4jxuuyE6OKSQpsgQRzzaBDXKmB5p0hd5w8+QpevxIbgXWnTj6FVMw933SGzlKv4jXcRcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772791521; x=1804327521;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+ClSVlgl3g9fs9LNjeXWyNFn3fTPSHPQyambslBo8wQ=;
 b=AHN7muKFs4d2/H8YeJC5OgA++OAOp86DMLlQB4UCy2txWnJEwLqrxdAv
 8mrNBo9aX6TXvud5XxLhlykCi/yD2huhgbbJfJ4Yqfme26XQ9Yvs+j1yz
 JOeErGW4b9s8nJkIhm4UV8z/fimqnqXmVmo7njbEVdcmuY86V+w8enGU2
 gFUhTOQAGW7cCU0N0oT0+shjjsIQRAdOF8pl6MFNA/R/tjgt32ickT6Ip
 ifl+VNTPpr7g0AEURwlJZiwNdvWgfqdLq1EaUqdtAsRYhzxo4xXIwaf6+
 S2Ug5RyE10xm/hiEDM0AD/eMmL3+b3jaurxxm0Kxuvv+b35c2TLx1pxgC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AHN7muKF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] drivers: net: ice: fix devlink
 parameters get without irdma
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
X-Rspamd-Queue-Id: CF8FD21E6B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:nikolay@nvidia.com,m:netdev@vger.kernel.org,m:dsahern@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:paul.greenwalt@intel.com,m:daniel.zahka@gmail.com,m:michal.swiatkowski@linux.intel.com,m:david.m.ertman@intel.com,m:mustafa.ismail@intel.com,m:shiraz.saleem@intel.com,m:tatyana.e.nikolova@intel.com,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,gmail.com,linux.intel.com,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of N=
ikolay Aleksandrov via Intel-wired-lan
> Sent: 13 February 2026 14:19
> To: netdev@vger.kernel.org
> Cc: David Ahern <dsahern@kernel.org>; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lun=
n <andrew+netdev@lunn.ch>; davem@davemloft.net; Eric Dumazet <edumazet@goog=
le.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;=
 Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Greenwalt, Paul <pau=
l.greenwalt@intel.com>; Daniel Zahka <daniel.zahka@gmail.com>; Michal Swiat=
kowski <michal.swiatkowski@linux.intel.com>; Ertman, David M <david.m.ertma=
n@intel.com>; Mustafa Ismail <mustafa.ismail@intel.com>; Shiraz Saleem <shi=
raz.saleem@intel.com>; Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; =
intel-wired-lan@lists.osuosl.org; Nikolay Aleksandrov <nikolay@nvidia.com>
> Subject: [Intel-wired-lan] [PATCH net] drivers: net: ice: fix devlink par=
ameters get without irdma
>
> If CONFIG_IRDMA isn't enabled but there are ice NICs in the system, the d=
river will prevent full devlink dev param show dump because its rdma get ca=
llbacks return ENODEV and stop the dump. For example:
> $ devlink dev param show
> pci/0000:82:00.0:
>   name msix_vec_per_pf_max type generic
>     values:
>       cmode driverinit value 2
>   name msix_vec_per_pf_min type generic
>     values:
>       cmode driverinit value 2
> kernel answers: No such device
>
> Returning EOPNOTSUPP allows the dump to continue so we can see all device=
s'
> devlink parameters.
>
> Fixes: c24a65b6a27c ("iidc/ice/irdma: Update IDC to support multiple cons=
umers")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---
> drivers/net/ethernet/intel/ice/devlink/devlink.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
