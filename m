Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF22B44C6D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 05:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE8D9812DE;
	Fri,  5 Sep 2025 03:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsC53XKu42en; Fri,  5 Sep 2025 03:43:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD985812DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757043833;
	bh=tsANqpZjOSzfUq9iLY29KBc1WDCJP9Z9t/4jOQBaKlI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jwIWIybZyLQtwc0K9oEthPpkdTOG5IN4LXiiOzfeBWpX0jOBciEG6hnntXVbNV42i
	 gtQtitBvZ9/b6bFH6Dhp6R8GsdbuSYHbsFwkkX1OKh2yu+ODz+3iey9tryX3Oftabi
	 XAyrnVXS1UQFtOOYNEdClJ0jlKU6WIjBRwAOhaT7sfyr256xxM/vzYTGCOFjLTACXv
	 OqdhntBEoWqvKjQWL936zZ7a4Z14gFJTvw76GEKa9CExxsXZtYdtqxckPKM/kbYAXg
	 VYLzTnf2xqdcIhFMvXGZMKZBqFccXZMMmVztnXqkNCSYmmvdwbA1gb5g2SWtLJO8MB
	 H2iWkeuC6Xz6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD985812DF;
	Fri,  5 Sep 2025 03:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C9833B69
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 03:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2C4C812C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 03:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 822s2TAVk84L for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 03:43:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA558812BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA558812BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA558812BE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 03:43:50 +0000 (UTC)
X-CSE-ConnectionGUID: RcU+qla0TOK/aifcW3oTUA==
X-CSE-MsgGUID: YgwqWP76QQWWU4SNn+yxtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="77003075"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="77003075"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 20:43:50 -0700
X-CSE-ConnectionGUID: 1gucskq7T0K6MolqaGZk1g==
X-CSE-MsgGUID: 5rt0v26OQuefNsBZpNxZxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="209234836"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 20:43:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 20:43:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 20:43:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.45)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 20:43:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aZD2OBBHFbMG5g/LsqnX7YkmIyffUPAUO5V6ufBXv53lEOy9P4pbSte1qxu59VwBYTWOhnGYf3EEbidxyCb6zmKOaWeqWJ5x8ht+Q/aPie4HXupZ7l4MijnI3b3K+GfQmi9vxqj44/w356xiO7totoW4brDXUwriYc8TpcCdC0uq8C6CiVjGKuq8YSxNbsHmaaLi178/UzHi7O8SXogsGhSyM6txheAkdhX5l6wVkOb8T9LDomQbT3n03u8SUXQpJm17PkbYdJaTi/gDfXru/M45cgvyKt7l0to6CjhmyPkvPXdCY4iP2NXfkxQGOSkC/GjR1npUkqA6fgb8ifBBqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tsANqpZjOSzfUq9iLY29KBc1WDCJP9Z9t/4jOQBaKlI=;
 b=gc4l4hnIx1RuJpyUo2zxAdYRKdKuhJGtaZjgXvbIxm10q7Q95oOeCGgCPo1OxAIIZ8j47xccNQX3heQkxQV8nTvkap6CIqb7uxswoPBuf6Rrl6Ru/uKYOwtiepp+K5kqXAXt2jkjXzi6t+pIloiBXFvc1bauiDMUWvE/XmL/YztU9Hg4eIio8UU8cuI7lm6VDX6I4+LTDjUymhr4BHfPsAyzt2hRgIQ6quwT6DdXB6HmgOXePYTvHLSPSw3FCNnn6rQGhEBNrc+gKcH9idlS6bpShOgnJJhKpOMSBzgqrKXcVIjd8Hx0JRUoXoirjbffnAq/7KELnEufK9tcNiCTXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH8PR11MB7070.namprd11.prod.outlook.com (2603:10b6:510:216::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 03:43:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Fri, 5 Sep 2025
 03:43:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ixgbe: fwlog support
 for e610
Thread-Index: AQHcC0VMkWc1sZiV+U2IX0IS2nWzcbSBEFjw
Date: Fri, 5 Sep 2025 03:43:44 +0000
Message-ID: <IA1PR11MB6241236B3E0DAC6DE33EFF1C8B03A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
 <20250812042337.1356907-16-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250812042337.1356907-16-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH8PR11MB7070:EE_
x-ms-office365-filtering-correlation-id: 57a2b5b2-b09c-4c1e-dc66-08ddec2e69df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?x/ru/H1Aw6CkF/brjJbo6nMAMnsAqndkwkGbpVSDqkZPwMeK2sqx2CymN4+5?=
 =?us-ascii?Q?tnn3FFkc+dXlLHRD7WKIn6FQWAS0NVT7nj3NFlBdwDk/DC9O95c0EJWXPXa0?=
 =?us-ascii?Q?z860/g5aKK+FgKvFTYyvKWI8WLn5QStexm6Yd5JMg5X5pEOnd+Mp4w/0bML6?=
 =?us-ascii?Q?zRLr8AHZXZ1fTaaqa7UP94qOKAzxgM1sBe0kmO5NqMkOFF5X0f9s4NmMInh/?=
 =?us-ascii?Q?CNUl38MSDqYNrelrOFEoN7LIhLy+j8yI9lEJ8mZPNZkXJv9X+nJ7uS3f36Do?=
 =?us-ascii?Q?SH6N1vTpTDHpYQrUG3SSAL4N5K8OCU9B9p7+GEgy7rCyBXpgXGCy3DGgm7A3?=
 =?us-ascii?Q?E6HDE8bzUvqhg13Duxf+5sABcl9LJ+7M9mlOowUh/542zVAtD8UTz8c7RY59?=
 =?us-ascii?Q?PmgnvmBDeld9bdfGjPwfq5cOZjqPK+Uxtb21SfmQTL+EfXdsw/YiW1DxSqqr?=
 =?us-ascii?Q?CgKpTZhTHMUkkYu3/VZXQ8pdt9BilTDZ8eM/tZdxd5/feoDqR+DVPsWe1cEK?=
 =?us-ascii?Q?y2XT2XjED8Igay8TTu1BiYWWUaMA2MTeedASN9HgNXJ2JdPzkvLpHFdTnNiq?=
 =?us-ascii?Q?S7TpbW+VXTepObqn7H5eU6RFPdo+Nh+tkMb3BO8rgyxwbO0asCUHybDC0zmr?=
 =?us-ascii?Q?9zkYFLOrmEowZ5bXS4H1PElEWgULzbvgN+KQ1h2RcYT23Nn+acLweLnpWqXG?=
 =?us-ascii?Q?yeSWBhXOduoZTrw2sXV7tZY+lA+yIdgD0SWYuikvx0WOUiOIl5Dma2oJ3jUC?=
 =?us-ascii?Q?ccVvmtw9vy1c4xr97r4MkNqHgMcUuM8Mf9wRlCTjSXhc7zzOSMcHxyE1xeix?=
 =?us-ascii?Q?IQ/t7goTufxUkgqyB09XdeFQuA72V16ZM1KY7HK4h3sxI6baBwSP58X+7csU?=
 =?us-ascii?Q?R8td1hOsaR037B+x5ngwSqnp+/V60GMRlxqHQDnQez1CvYmuC/6n61wVPm8Y?=
 =?us-ascii?Q?vvuVDtFly65dAmBAUrAlarEtj3DtOkQxWOvtOeb4bRbndwCYRjo0/I66RK0w?=
 =?us-ascii?Q?4j3LRIBO9gymKkj3GnJDvpxFxwaMQHNeB0/rgywyfQenvqoSeadrBru6M4mI?=
 =?us-ascii?Q?8jVxVONIKuRxTcooc20Y92otQP/ZPpuOUBJ/irwPBetyJ6iMNmy8DFh7Kn13?=
 =?us-ascii?Q?J5hgkxsyCC6TH4S22rsBSKHq5lf0wuiPTyvZaElatz8WOZek/vYgbSau+xwa?=
 =?us-ascii?Q?Llszkbde5wV32hMTRsR6GinRnPrIMesZHbYlkXaArXTN7zPWgclN9TMls1tR?=
 =?us-ascii?Q?TqiY8fDaM0nUcbQYThJlIVfwtAkB/wjPDOIaFlT1CTcgtKSp+U4yW7cXWxNR?=
 =?us-ascii?Q?vcZJq8Yu05Yf2Eo44nbWSaNTKnkf01WNZA0LSdC1LhVFPE4q5U2PXQfa2Noa?=
 =?us-ascii?Q?0XOo6HpN803O+BsHvw+0NJwp/qW/qeZ1bosmA3OPJt77Jg76BN6oB57Qi80U?=
 =?us-ascii?Q?nPcrMxgI0wV8cY8VcvDR3FOTDd7coNpFIJmY4bkRQv7zgJWZg46h5g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zwYiQIPM1JR1DWN88Mw1CvEskaysPiDgoq9wnOBAnvD6GfJ5ReUL2Zcv3f6g?=
 =?us-ascii?Q?8JQZam/7+qBjPRtok1hcCPHgwZeL18tlVmNyrGFmEma5ICfWUCCJKKFF/qfu?=
 =?us-ascii?Q?ekRj0AAhBsGE/EUoa73m0Foyb2Y5Mce+e9sRzXoWvUStKsir1pJ4ysqa257i?=
 =?us-ascii?Q?vAYPgNjvSlqcn928oUKoVHvjz8G+xysBP+7au9xZAjwoW/spwhDwSCLUjMXG?=
 =?us-ascii?Q?muqzgPM5T/ZcUxF0BJuY+5GEpKC1o54z/2qoTVdwVja6ajjiIDVQixryPUTj?=
 =?us-ascii?Q?PARJhwevICa/E86WuVBHBfpxPb2OvBYyGIfe/p4FajriKAToK9+5Bx8LNCPU?=
 =?us-ascii?Q?gtXk5uUJUpLOw4CCqh/sNYoRzf4kEG8VELBn5Ge7QATUCZ33O9NNz6dbgI9b?=
 =?us-ascii?Q?jc85ruwQdRZAu2a4q6FEOKMVVJ3RxSsyS4bSe9eyQMBE6NCpNZHRaAmcfjVm?=
 =?us-ascii?Q?AnQb/2aTkylkyJopOkfVrQaY5MgnpHSADNCYkJL9iyK891DFBawVvIfdY5ar?=
 =?us-ascii?Q?LWUCyLSRUVs3Km2RKTG7Aw7Z/kTufPYd3QObisxiBNubp9TQa+5ztYTKueuU?=
 =?us-ascii?Q?MlvA4DzwdGOAUYKL2XVcHLHm2kNuGzt3W9stLOFNDsq6pNU/5jT9sshxHLef?=
 =?us-ascii?Q?+2EuBFH2N3KYWdEMmfoZ18XU8+u/sU1ktScp1pL9F5COcwrY82R0BR/EvMtz?=
 =?us-ascii?Q?qlg056fr/mO9Tx/izQ/ujeFEWV0qL5Bv7vgPehjdfz9HVTEblhs9+l5E1JGm?=
 =?us-ascii?Q?o5AuNzXhn8PcPRG3BhJFFVasLcTRKH1rIXlSX9b8vk4FnPt+cJapCodHvVke?=
 =?us-ascii?Q?KM4p0Xhj1/FJ/3stAEzOWCp9p4NTOEz5iLsEV/oSUrK1EMwMM+TP5H+k6MK6?=
 =?us-ascii?Q?29TngnTjWyxy6KTOFj/RTZq8R55UXGlp9ukwcpYSVg8c3DMPL8ql6/9Z5ojD?=
 =?us-ascii?Q?yCor2sgbGnYje2XMZnKhq2blfBCI/xtpuf2kGCwLa40+SLkgVRJ8g0YOsXwm?=
 =?us-ascii?Q?sbW/s2S4YOuFLIfKufZdHcTT0u6uqlFIMmPcIrV7wqHjFg/clL0s+RHjzB9t?=
 =?us-ascii?Q?RERSoHBRhNdVD6XqrVO+Xr64YdplenkRdAmzjC6vWW116qDa4njaAR3vcVud?=
 =?us-ascii?Q?61/2IxhZEBiWXQD/MZOxP99Vj9A8liGLH479YvOi/IzcDgrRIk5TDjfrGMW7?=
 =?us-ascii?Q?x7TazpJZFqvDV4DBu2o6XVuKm5UsItzSCEr/7Zvj5NFtytWv6vy68OsT46wP?=
 =?us-ascii?Q?DESvC3tKqauxWKLQ7vJmZpjKBDxu6ck/2UQHM0cySApjCHrh9Dvh5OtGeg6b?=
 =?us-ascii?Q?DpvRq5dlV5p5ArTchkk5XqnKxnSyHCP60tkSLElW3qLN83061sSWUmw/mqVN?=
 =?us-ascii?Q?nIM7CMfENua6YUOZsUxtX3Np1YDQ6Tv/OaXRScqKsZXmUVr65aj3i06M8pUR?=
 =?us-ascii?Q?xUtYKb8IEE3o4mHHVZbrG1cTOK1if2CQRk2ZqijcoHr+jnQQi6UT65x52i2O?=
 =?us-ascii?Q?OIyTP2EFyRJ2XtwFQPQsbWMfLGi6jCvwPsQEDsfE7Xt6fh9HA68FlMqW15D/?=
 =?us-ascii?Q?C87UmuZYazSirSl3gIjW/5KtlaPk0VpXuU2nT+SZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57a2b5b2-b09c-4c1e-dc66-08ddec2e69df
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 03:43:44.4934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H0uiFVwOdpZDZT2IZB0JluCqzVzygtGFe2RB70lHMlYmNpC1VygcrRBV559JuMH/1Oz6H6IC3lPPvbQF1OXkLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7070
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757043831; x=1788579831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XG+Va9Dxcz6qlvcJfhdrDQgM+ECsIRKgO0mjfAJlmAc=;
 b=mKkOZ1JXP13/nDFD5AJ2PuXgb+U7PVVja3DselxdqJ6B392GvBcg+a/b
 gTGjGFGwMFKMjxhbbv58VEyIypSPLs7+lUn6dXQRTIW/8gZFzgormDkzq
 rfJsGBEdICKg1828pdiQRx7GemOU3Inlb0daoBXwjH5Ccbu8zijvFBdL4
 cEZHzImQd/QuTVLzy9cD+rARP9Uk/BVlb23MxJ5Qwly5vQEk+e98Coxli
 QVc49p4ynZ/+2eCoYBSeTxd02lEU40l8PLqyFS+pi+O2rhhT0DXm2F49q
 iFrNglV7GnIiMWxhcw1+pwF9T6InwZAI26T73tK5T0q2n3cPGuyKWsseQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mKkOZ1JX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ixgbe: fwlog
 support for e610
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 August 2025 09:54
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; dawid.osuchowski@linux.intel.com; horms@kernel.org; Michal Swiatkows=
ki <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ixgbe: fwlog support=
 for e610
>
> The device support firmware logging feature. Use libie code to initialize=
 it and allow reading the logs using debugfs.
>
> The commands are the same as in ice driver. Look at the description in co=
mmit 96a9a9341cda ("ice: configure FW logging") for more info.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/Kconfig            |  1 +
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 32 +++++++++++++++++++  d=
rivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  2 ++  drivers/net/ethernet/=
intel/ixgbe/ixgbe_main.c | 10 ++++++  drivers/net/ethernet/intel/ixgbe/ixgb=
e_type.h |  2 ++
> 5 files changed, 47 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
