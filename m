Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A1AB44292
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 18:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17448605FA;
	Thu,  4 Sep 2025 16:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eB0bphzcg0Ey; Thu,  4 Sep 2025 16:21:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EB1B6060D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757002904;
	bh=4jbJVRiF2qdYxSngbc67OTdPTGKpKgzlJr9jZ8O8yFE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KaIPb6K74l1MIbma/Dp5Q7mByaUYYsvsXJ/W1K4+2MLWNhu4LIwsjs79jT3rwNQ7x
	 hyoakJrnQywrU9NETbAn558LKu7VDQheuArY6Fvtq0mSdFPSjuaDt49yZIiu/w0vJR
	 /t2v2oVj6EJk0ZjrCK6jj2THrsnNS1UkxEhHxaM4ekKPfGOkPHyjBi9S25hK2F9ABI
	 N1vCuvSEOlez8oqkAkWXelb3Hny1L/JZ8ys4OV5xqzmFygq4PlkqxBdLMtCK5S6YpI
	 jOe6d73GX4lMZklmjZO/qA+PBVRYMQtrzvf45iOuN44mLsvUq0RfjgKWQOFKttrY+S
	 /mNjSrWUXaCeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EB1B6060D;
	Thu,  4 Sep 2025 16:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B2141106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9894D605F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:21:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vc6vzkcxvdrq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 16:21:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04402605EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04402605EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04402605EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:21:41 +0000 (UTC)
X-CSE-ConnectionGUID: NrUGpAp7T76Y8kBUrgZ9LQ==
X-CSE-MsgGUID: NjPZfIEHQlSvNrKxgc7HVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="84780071"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="84780071"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:21:41 -0700
X-CSE-ConnectionGUID: rWIK1mtiQSGtyZzT6BzmRw==
X-CSE-MsgGUID: 4SgWRm3/TcqbQxyty34MLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="172747732"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:21:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:21:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:21:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.64)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:21:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BHjPNOFVc8P+lsMBAlQhzj+NGmJoufhFmeHQYAq5LjHOZwv/nuLy8aF2Ns/4edXBgR6X1rMDbPtfDEia5/Gry0dgKOMtJHvpP31qDvA7lIVxzY8cVZkVo1JYvCbahP2o1/fWAl6EohzzmtxbhHT6Wv0jLEiVCyzyfYm6Aup5NSbMrJunLYSJhAjV1hvefmugxXfUJBeGBuvHfq92sCmJhW4SwsU86l2GUO8dOHAW1FrLQKG11+j6ZTOkI/700ovulP/qHjV0p3X4fFuz/nY86MRUHSGVSn/NI94opwCMAhfrFNl8+VVWVFTQbf94S7T5Bi1sTx3HQaLftgYHbyGxsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4jbJVRiF2qdYxSngbc67OTdPTGKpKgzlJr9jZ8O8yFE=;
 b=ynlrP2w5SOyKJKoTJzR7irqKfwzjoaCVddsDdr/AYtJ9S3bzLVmHU2KyM5K+3GsUqx0vUz4tBUFaFsCWtu1N8mYH5V+63f0ekvXaY20Ug/FtxRvAI1120PxOToYIuRV4EslXNOmLzToB/t4LC0ikEdxRHhsP4fIRf9he3+ZHCFub9q31r50BhQDmbXVF4x2ZLWGYlVnmnsr9V7LiRWWHAzL3n94bB15k9gmNx6uGcho0AD57sB5CkuOdcZbi1LDu86jGO+iS1x0yFIdjdYmOidMaVGCyRR1MhxX8eMcK/sJWQ7S/7G/AfNLpRr1O/wWVRz6eLRbbFvOaLwPvb29Syg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 BY1PR11MB8031.namprd11.prod.outlook.com (2603:10b6:a03:529::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Thu, 4 Sep
 2025 16:21:32 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%6]) with mapi id 15.20.9009.013; Thu, 4 Sep 2025
 16:21:32 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 10/13] idpf: use generic
 functions to build xdp_buff and skb
Thread-Index: AQHcFqWDSfwm2CoeQEKuska0aNe3hLSDM1tAgAAPCvA=
Date: Thu, 4 Sep 2025 16:21:32 +0000
Message-ID: <DM4PR11MB64559A25028D7AE53AD6EFD59800A@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
 <20250826155507.2138401-11-aleksander.lobakin@intel.com>
 <PH0PR11MB50133F214C27D489B08EC0C79600A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50133F214C27D489B08EC0C79600A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|BY1PR11MB8031:EE_
x-ms-office365-filtering-correlation-id: 891b34f5-781a-45b3-cf6b-08ddebcf1c9a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?q+LVMX3krfUTzOc+VwDbNtWPJkLBwJLb8k5K37T5FzTWMlYUeX9s/kNU8tW2?=
 =?us-ascii?Q?9/NZ5KU9iSyHQ1u9bU1h5kuP+JYV4sef39Mkx1umh8l+Ws1mNnzqT96MBxtZ?=
 =?us-ascii?Q?TbfrCcGD4ybcMMDEkS4YweQc74AP6nmnwlaTDvO+A7Qt4m7S0pqFHUJCZf7/?=
 =?us-ascii?Q?2BOYNcXK02rAvKAHAUxPhTrRpfzxjKSEhSXncfD9FyJk45okS6/P3zcQn+GT?=
 =?us-ascii?Q?X0l+NXvXkx8BN2rTdkN6/EKoar5poIZJC4L13vR2Z1zgEmk7zWafLuA9ZdV6?=
 =?us-ascii?Q?0WdfYpMMAx6uNj2y6ctz1BxsmVmsd1KmLKZZrDr5KW5CzCKh9LL5NiOjmVVr?=
 =?us-ascii?Q?hnPeAbdkj0JeA94aDbyhdr/lAfKUR03z3XB0K3VN0cySkOcNPNKvtvLFdU1N?=
 =?us-ascii?Q?DSzbGNTz2DiB39pMtCo0BafxrLntgcz52LTmsmTRrKZpBqgHDNW63GrIwIyY?=
 =?us-ascii?Q?KIs4n8rlB69zxopwFXw95uCKpgLwES3hDIiJmDG41fJAvn1jbLJ3sBTQe8jl?=
 =?us-ascii?Q?b6LCMOSzZOC9tM+/Hkt2FMfhkQs40UwO2xQKXT2hTqz8RUCfBR+KdMdvvo0g?=
 =?us-ascii?Q?gsZzA7+ZYOGfTmB/NQHnZg+94ZtyGHgOYxo4ijm3sm744SEvOS+gqHN05vpI?=
 =?us-ascii?Q?VUKz8o1CuZLzfQWlv6ufloYC3oKe1js3c0yKa7WOu7/+aYOsM//nAKSzQL1o?=
 =?us-ascii?Q?Rb58fUjDvs6YeZRJoUqLgUudAOYo73uf9amL/UdHCr/BZkcS4apQfSP7wTpS?=
 =?us-ascii?Q?O66PNx+bYb67QMHZmhkmfNeR/VCq0QkJwkzWdeRTroVXTbvav1ly7bcZi2af?=
 =?us-ascii?Q?Tq1lIbm8E3k/BMbfcjxKDljyOPBBrOj54oeWfQZ0ASN3JvPHX0oUBsAJaokv?=
 =?us-ascii?Q?AElvwesDoRPKfYM5H0t/LVlXEGN/8EeFII1JY3K5e7BTJnBUa+L6rTDBcDqh?=
 =?us-ascii?Q?pfWAT3SNkMjfC5ZTDUstX2TMsyIFmWjKbCPwrtu28aeiZ+bjv5N6/MKNf1bF?=
 =?us-ascii?Q?tzxlXpYY599LUilxDBN+pxgtvZqcU8o+miUNto7aBtSC5ETbE6d4SjT9OVa6?=
 =?us-ascii?Q?9LS6ywa7JHTqMjSGhkl3N3QY0r97PQWXHeglUU/C/KFfIFFTVHKIqtlsp4kr?=
 =?us-ascii?Q?t1ZScqygp86238JayAWUHt47q9b9RnY2F8KV4RleeYM8YjJOAKQq273Flubh?=
 =?us-ascii?Q?1bgnrF5ZY5IPhoVvczUlSN0BQE4jEETPsJ3JszAuXUDKb0kZo3/h77cb4zg1?=
 =?us-ascii?Q?KmWqU5vhW6HQoAr/ayp6wtI+7nMkmB9J25yuSlegufjNAw25+HL257sG1z3n?=
 =?us-ascii?Q?xTb1sBSNpdvUeGNfU2xlLp2RCdaI4msyg6IwfEhjMZdEUCfYlZ7ycYoGEWLK?=
 =?us-ascii?Q?RS7yh4Hji5BqWVOczwEDRul03kXpcYETycbSv3gmlGQnYrK36+oVGgkfEnar?=
 =?us-ascii?Q?uhEQnQN93zdvRZIc34sNwouOqFk2Hbb2Z5LhiOy2je5559KkVkhDzQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y9ZaiRQrisvxQjlo4SrvoUc9mzM/xnG8XzjU7ObY+F25ZJTpz6y7kqm41F4b?=
 =?us-ascii?Q?LTcVCUg5n6gxR8cwl0l3vfQ3T6Jxh4iDx2gIQQOf0jlFnxxu2G5ceaX5i2tD?=
 =?us-ascii?Q?JJ5KMg/SHPUTBnwLpzF+IcU1OPU3fyKisIBMaS0+WxaIVv/yl55MkfJl5wS9?=
 =?us-ascii?Q?ejv64PGPQDkBm2edFn0l7vUdSYjmfiXjDhZ9MHfQ5YxXrMQ1MfUDmrVxYI8F?=
 =?us-ascii?Q?VNWyCVSx3F4QJm3nnNW5iiJeTUoKjMtFfrQQxvVwv/1EN9/7IulcDWX2mHDU?=
 =?us-ascii?Q?b0VLAAxjltoX7p4JTnJgCdYglzYauyrszgorN7c2fqAuZCgcOmOvG0E9I8dU?=
 =?us-ascii?Q?7XDiEZ8SIoLm7VhehDUF6fiISU7U2phsXzfkNjlHa6CfijdeajtYCHc+fIeM?=
 =?us-ascii?Q?hJfxys5gMzqaN6gZ8mSu56Hvp8atEQc2ng5ePlsCQczJdaD0KKoO5aZr8wHG?=
 =?us-ascii?Q?/VddThLCsvb8DbE+nfEfYVANEfLnYoqBWuvY8IxgICq9Bdppxeo7KS7gnAd1?=
 =?us-ascii?Q?gItDccMPpxZg0h5zDhKhDZtrzoUiRf+uL/ZHFERkRxUgJpUsX8Z7Wc4cpC8a?=
 =?us-ascii?Q?038853OsHQnnh61CPTRgQ/VKcU7ZcZD6otu78ckIA9QGN8CHfFAgyfctjGrO?=
 =?us-ascii?Q?TNObRD/pAwkSNd6HbJP1PJYgi17J5dq6Um7b34grEqxZ7qW53fMxr120ZLUP?=
 =?us-ascii?Q?V7XF2z0Z4fASl2d7mQ05qfohPfjK7qJdIET6E2hDb8Fln764evkqFF5RGuOV?=
 =?us-ascii?Q?qDMknEotMeOuLLc3XyTx8r8j3M8Cmri15p1t9fQGHLiCh3Yh1JnalIuw+Lxm?=
 =?us-ascii?Q?lYvDlOtudk7ffDimV8l53w6pIeUDXSf4BQeV8yTuK7xBvMkZmnzQ89LGMDak?=
 =?us-ascii?Q?JjH3zYvXyQCBfykrsotawMka3crBNLTcqqgO9/rOtskCjaNYhCS2o9qHo5qz?=
 =?us-ascii?Q?2w4U1RRmXsEyDtMp0jvh2Dg39HC9ifoa4hm8ruvGmGD2HKiJoUof3f4Pu8hs?=
 =?us-ascii?Q?JKpzCDr9aZFY7lumfB/wXasSDuFR6CBiHVEEzK1MzYNym+8UVYlHWpibz3wM?=
 =?us-ascii?Q?hPfXpFisBlC2ioiwNf+dzDGSaiv2vz7EWt+rpuVERn2WfEQfL9ZED4zf0ZEn?=
 =?us-ascii?Q?9pvLb6JH2pT+KHJWMOj6SaGY199Z59LBgXOVRqfZ1ECHwnnD875L6n2PpMk6?=
 =?us-ascii?Q?CwmnzYx5MbWOxe9xSvkcUT6aojZBWewqAZE3pHxVJR3kB4/9e8j/g/MhgwWZ?=
 =?us-ascii?Q?xniQep+AhdjBnkMBU5cmyc63SYHFf2womPDQtiRXPAf5+dkBO+fW76FMrNYZ?=
 =?us-ascii?Q?7iEiVYw/NcjQG5AgDSW+9CDSmaMIZCck2Lu8KHSccTa0e/c2hpjRU3IeSNEO?=
 =?us-ascii?Q?LUIG995MsItGwY1DPmb1qVVpRcJ8+m9Cxkq4DiyOBGkSw80UOM6I6p0bSKWH?=
 =?us-ascii?Q?/IkS4vViJeIv5InaeHhbvzUMIP63NoDveu8FCSPq4yxoJet92dawunHG6Ple?=
 =?us-ascii?Q?xv0JcMTHXBfxIM1fsOi/ukhdXP/PI9b7Qw2wht/T+cSGD6Y3Iz8OHGdHjEK/?=
 =?us-ascii?Q?sXX+NU31nwQw0WHeahk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 891b34f5-781a-45b3-cf6b-08ddebcf1c9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 16:21:32.6741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f9Zcb2X4KWxDYxNGlLbEvYlUd2ZW1cjN6SsxJdX9GCVHn7q4wm7Jh/SUjBhlxnNzbtpZkJOJL7IY98SABCiZIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757002902; x=1788538902;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SYrtVImAJmYoxZmB3ItFjhR2gq7NP8ysyLb21cIGjK0=;
 b=Z3UUyBgCnKYmo4sdrRIyKuZ8peGP9Rsek/yrhNL+kj/Hqe/hQx7DoxE0
 YgXhlghCKNxXBMSA4V4H57dGU2mPLNV9RBexBt133YoMlDITjNxCWEoSv
 NYW3IXavFsE4XVotxO/p+BDo7u8DlNkekDJyS18JuXI8oK3EExDEHrhJ/
 z01meG1TXrH/7z/3ZkGV5OTD8VZXSrRXdgyAv9mSjJURl/KjTAP8cjibc
 mxuFrInSFT1s7ypr9MkMyG4Oaj/RxQarkYrsDrvSLy9jQrN5SVytURjCT
 8kYw3WMIqL2QxSUWP2Kld0rvj/bG4JEYhB309Hw96aI7L6gx6bLO9Y/h9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z3UUyBgC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 10/13] idpf: use generic
 functions to build xdp_buff and skb
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: Tuesday, August 26, 2025 9:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 10/13] idpf: use generic fu=
nctions
> to build xdp_buff and skb
>=20
> In preparation of XDP support, move from having skb as the main frame
> container during the Rx polling to &xdp_buff.
> This allows to use generic and libeth helpers for building an XDP buffer =
and
> changes the logics: now we try to allocate an skb only when we processed =
all
> the descriptors related to the frame.
> Store &libeth_xdp_stash instead of the skb pointer on the Rx queue.
> It's only 8 bytes wider, but contains everything we may need.
>=20
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  17 +-
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 104 ++++++-------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 145 +++++-------------
>  3 files changed, 90 insertions(+), 176 deletions(-)
>=20
Tested-by: R,Ramu <ramu.r@intel.com>
