Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAsVCPhjemmB5gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 20:31:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB92A829D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 20:31:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94E284064E;
	Wed, 28 Jan 2026 19:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8KoAvsIK_LSP; Wed, 28 Jan 2026 19:31:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECAF2409BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769628661;
	bh=2ABCW5NCGaBzT1re5+wtJko46l7LNsV+g2PgOWEmqsA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kzcaHYJx/hBXrSh3E8fjLg9eV7v9sEMl5JZBzazWcTZ9w+m5OOuel0UISxA0yGlL4
	 scaSFQlzI7KIIDxpEDPVqab198btPBR76gZplDnLXj/h0aehy8Q/89aV0YmRNmofYx
	 amN4mvG3vSF2wc2BJn9/NAnvKFQt2hJbj/Muryn6Odl788hhZL2D8G7WXQF7wpPPl9
	 YfPNeySWfAOlDWeZDyGUV6YCIs43fcQ6ymlFPrdShpwLukVpmfa+ZGWb1fnlzH8Rs1
	 +eaX0dbcgBWXliD91ebMcnfbrbyj0ceTi7Yb99AKT9Di7g2YxcHIMqWGvZZh+5M7RE
	 JNBqvLN4xiQGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECAF2409BB;
	Wed, 28 Jan 2026 19:31:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FB87118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DA774037B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IdwRsaRXT6Ef for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 19:30:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48D18400A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48D18400A0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48D18400A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:30:58 +0000 (UTC)
X-CSE-ConnectionGUID: LcAeQRlCRVG9fdGO6GRl0A==
X-CSE-MsgGUID: ZySaC4fWSaWjrew+PgLtRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82280758"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82280758"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:30:57 -0800
X-CSE-ConnectionGUID: /deaDUX4R/aX943t5B1rwg==
X-CSE-MsgGUID: /pzulVEtSq+X1LP6j+1ppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208722598"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:30:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 11:30:56 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 11:30:56 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 11:30:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RmZZIfflSw1QJEqokjt2dlD1HQT9HTKGSY9AQmGDg21mQgIDjHB9mt2/1olKoZkPa/vbXQazgwcfICz7h+uG+Luv0A08ZkFI9cpW+vFdmIHAsWa1zTdBcJCpU1aDCPTblECdgKVjk4/m1j1HB3BP1advmG2w/+coZuzhr7gZT0BrDMHwKwTs6qcEuZhWQ8KI/wWW6G45HP9dp+fw9mM6RsbtCHccDwAt/vCDqrMqp3r2LZKg/3ql9uCHaQ54duU42QkSsgnlQzumcLmUQgv875QrGDiZEchrh1N9X1RsgkzWtzRD2kw7hgAYDmcEqJf84dyaIMAgOKStNDH8SnGxvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ABCW5NCGaBzT1re5+wtJko46l7LNsV+g2PgOWEmqsA=;
 b=XlItzIdgSP3nLqK4bNPfpCwtGu2jHOf/dwuZdBEN/MJiTvvTs24qWClwnk2TD21MKXCsZJEa8GwtuRHcRH5ADbPU0Akinhh5+fnCsqK1jK7opw3uqBtHF23AhQ0t8lk6sfINWEXk+uN3kafv2r1vNGgOVLYMbBciGIHr9gjCyb1CZE7jq+5+6NkVNB+KyKY1AUpq9rq5Vc8FjB3/01hTPvjyZmCEdqCItmYDPhDaZ1YH52B+GjrsmbQgR+otFL39MB1Uyvo3peq4RPkQlcduX439nlr5Y5BNhc5SdmMCq5XY0Tt2XhDSXi/CLbpfaJz8yb6/aPDcQ21B8k2CI9fjbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 19:30:48 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 19:30:48 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "'Aaron, Ma'"
 <IMCEAEX-_o=ExchangeLabs_ou=Exchange+20Administrative+20Group+20+28FYDIBOHF23SPDLT+29_cn=Recipients_cn=user5ad83517@namprd11.prod.outlook.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference
 during VSI rebuild
Thread-Index: AQHciqrS/Mv1hfN8F0O8HQhyheEhorVoAFjQ
Date: Wed, 28 Jan 2026 19:30:48 +0000
Message-ID: <PH0PR11MB75228C386AF3A8C3586A899FA091A@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260121075106.401770-1-aaron.ma@canonical.com>
In-Reply-To: <20260121075106.401770-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 12b7232f-88ee-400a-387f-08de5ea3bd86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Gi8viRYDO8xwl3tjzF7kEbMcegRUatURoPu2JazvsNFOoJjwSg0ZkSrPB9og?=
 =?us-ascii?Q?d6efRBlIsLXDhWLG0qwIu/Q77nZQm+SyHaseWhuA4N//x/rteh+tLQDO2dxA?=
 =?us-ascii?Q?TxtuNzEdAsQS/eh9zdedW1TX1ItuWjud7F3LEm8FPiIF/Dix1Ofltnl/cOTu?=
 =?us-ascii?Q?jiz6XWNWJTxgfRX0FPyNLwaMkepEUH/E7zRLXkiPdCjaAb10SexXbBWk+ogm?=
 =?us-ascii?Q?WdG20oc4sePYjSFfjn6jhQ4vOeRCSQKQGUjazxAgUK1CWCQ8Rs6ySznqSnSi?=
 =?us-ascii?Q?AkQjhYQPcfbV4t5XPKFpFhmK/nYPGooESFoT9dg4bS8gDnnbvIZqKofT3mZZ?=
 =?us-ascii?Q?H4LKpqiBjrujOyPXBymI23oElPk5g+o6/U2d7sg0PxyOcibyunqkoSXF4vuK?=
 =?us-ascii?Q?8tQvRIeYLf89iQ7QHH0R46IfJfW06OCDVpowm/lS3y8G1Y0wt2BTnT122NB4?=
 =?us-ascii?Q?FntKFR8Uv3bXkA2A+3VGsh6g5WVWso9oJ9Fph+LKRTqXCuGLIMDvgPILwcyD?=
 =?us-ascii?Q?KRVksIav3eaaplH6/nhQ8zgKmSrcacMEk0JXldjzu20t/Pj6UECFHQQeu1Dv?=
 =?us-ascii?Q?25MQ8bNEl7F2v+0HwWj8SdGp89k61ijRTHllYsTb7t7w2n2BFwMdx2E37TI4?=
 =?us-ascii?Q?qssHa4bFDRs4S5r5gtI1buV02R3WblmDUP6opjZiUIWVh2sY3iTdgwa9CDuL?=
 =?us-ascii?Q?/K9JPrJNWexPcve+1wya4+ijsvoaX0aqoMYXw3sX8i6PDh7LfCFuLV1lfxyY?=
 =?us-ascii?Q?29YJTup7cRVTb1eOPj2Koi+AiAl09UycEXW8A4cqt7YY2kojHjRfWtSp70SV?=
 =?us-ascii?Q?f4m1rsiiNRZomxgarNPy2JFzPIBdPJUu82MUxFRiQjYlH2iR4flxvmYMaMOV?=
 =?us-ascii?Q?V+NZGlVK/uoPozAiL6A/nRO871plvq/1H+eUEdmmirlwwfrRIrFir3WYcOML?=
 =?us-ascii?Q?/laW3L0n3Y+5p71kYsK0NPqm2ieceLS49hH7Po/yDTD4RRffsJCClYgMyV8q?=
 =?us-ascii?Q?q04+QaA3IIgZZVsPCmJyjj/LQvbXNAIT63cwh+xIs9MoLv34o5oBWO5552j+?=
 =?us-ascii?Q?1caUiLddGpT4f7Pgo8Y/P0pC25PGxaY0ie/F6Nc44azOYUOJQ89TqPpiNzAc?=
 =?us-ascii?Q?FH9gs/FH1Wk80UmWnmTZgboN1iY3O2xunUFgovpE4+9214ETMDuVtRCyrILh?=
 =?us-ascii?Q?Hvj3NUISAhKNYs4y3PW2z8JNKH9qdLkohRKp9aMTV1tsI+8ubzg+s1B+eO+q?=
 =?us-ascii?Q?m2olCFPYLOk3/zgzB036bhroN+VAiZtfxJBHPzCw7ImbosJhuNm6zw2RlPk3?=
 =?us-ascii?Q?P7tdPlSLBhraEiTnCiA+L0yVeMRBCjBpleZeDoRdDgzBCUj8P5aBz//ycjXO?=
 =?us-ascii?Q?8NowlS2YIceQe0OBQ90TICxaZ5YiU8Rabh25A0yL5myc0+6K8DOmFF0dJseq?=
 =?us-ascii?Q?O+htQpFZ/JCF0AOTM//LKbAHVcopgVTZY1EGFbyiZD1TkTEiJr/chAuJm5W+?=
 =?us-ascii?Q?PqgDQA+nMWGFp6Ay6maTKgsZzDBEPXbCnwMTuJy4kwWXheeGBnfFXNxaOQi+?=
 =?us-ascii?Q?unz/aw6/nM+2bZqLRaAZQlE/iMgP85Z/vUsNiOo5Dogmk5nus5K0OxfJwWqs?=
 =?us-ascii?Q?GBUC4Wf4ZSpmafa3PToIPoK99VARnO9/J53prpeOzo3N?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4kjTmEkq42z0Z7Rb4d1TjG6CMac0QZS8NRBoh0VbYgXOm+NmIMt5nH5LnPQ8?=
 =?us-ascii?Q?jPtDtDYtNREHxj73ZvLrsyyYUDYw7hzgU88TnXszaFlufWdBI27tqhRVONEi?=
 =?us-ascii?Q?tYQslD5u0eMoRsZq6X7WgZ1gdQoMF5J/pNKCHhywabhlpqQFig+a6lypJus/?=
 =?us-ascii?Q?LkIeglA5Z/7WaMm+UspV5OYbdi81s85RNAnZX38csKdGC3gdpduBaaTJ8Nbt?=
 =?us-ascii?Q?jJNaQWDy+oTIeVUrapbixxXJq8hQ5UqQf+lf33udWuY8p2CuL978SUQCcj4Z?=
 =?us-ascii?Q?35dglfYbl4CdEcEef5rDZbe6lYjE83bjuNVr10YlRzESNXSdFvofss5ImR6g?=
 =?us-ascii?Q?Pg3vOqsYJyb5MpmibCEqIESp3FzmhNIMqdVVE8HwC4jrRnm7DtP6QZciSEky?=
 =?us-ascii?Q?H7b47r1qck9fpSLFEugFUaCdyev2fSgojmGjjlgZQw661xLT1vwFi8xHTNmd?=
 =?us-ascii?Q?bcnF+U4bbyo2tkCr6zBBCWQOb9B4SOuEdihIB3ufqQwqYu2TLCgjo4VGhO3g?=
 =?us-ascii?Q?WG2TkeGxKO8chEYBiv/tWoDy/0VV0FgZ4xVRbU5PGei7ylTFg2o22MHLsvhO?=
 =?us-ascii?Q?p0rdP//WBdBoVtts7tE+bIXVaOfL+tVbPzBr5nQpCYceuChZ1bURfyBWHHHR?=
 =?us-ascii?Q?WtbwXGXxxvYam8l107T1C8B2ouXpEn4smq4GHrNFFuZH6o2sa8KV1r7Pdf5z?=
 =?us-ascii?Q?Gmr0qRVmfDaneWrvfzZpM7juwiKFwIaqOvHeSP1NF4zD09rOnlgcYQMoyck1?=
 =?us-ascii?Q?It4O1jfQp+EO58ULUaOL+AV0/ikqWWYTbY/RPvF/9DtafuCXOHkEL8Hjgfti?=
 =?us-ascii?Q?Dr4++yysEwQPVJAaQKL97+MBCqZZHHdLUqsZc1OyY6zuSkCIt864mU4IB5ZT?=
 =?us-ascii?Q?MVwunluhoY/9CcqmSrb9pQxDb1e259uPET9cYj4Go4cc4VUcOZ/TLdDbhVT2?=
 =?us-ascii?Q?DQmkJS4eToUy7Gam2nIfzDSmMr7AOt3OIy+hdfvOF8is+3uJrUCpTFsoVU3s?=
 =?us-ascii?Q?4uKO15RoGykE5EOKeyP2O91ievgvputB9hJX1uY8b5LD42ZWlOylg9kw0Wax?=
 =?us-ascii?Q?sO5ifSKWzkfm6i0Suf8gtd6JcbYlrxlUKM40EwXt6fRjDskGarudqWFDbXxS?=
 =?us-ascii?Q?Zka2i486U7FsiOQ8OWGJlazzFKf7AaI2nmTDB1SFNsKcerAbwqHo2638eY6c?=
 =?us-ascii?Q?Oa9dsuFtSbTgcnijPB9Dhstbdb2vWqwNPvoOfu2q5Kf/50pAO8j9qcfirncL?=
 =?us-ascii?Q?rHDgxM+lhnDGOaKYr2yaBYKXA3YADlIQg93rgGmy8qK4FCVttIW8DotZJ6vL?=
 =?us-ascii?Q?FSgIjawQLWQ9j3VkkYBXYXJ3jwTuWgbnLPV0rXpMpgZJ9j4cEn6gZypWIvoF?=
 =?us-ascii?Q?MqejQlfBbrJiGSScewrrva+AjcrB1rqkEG152d9izMGE+/1fS9/s8nI0TtVo?=
 =?us-ascii?Q?vA8crxDJjJRrjwnBw0QzNWgLrYt5Bf5rrwgow6Wf069YUSxRk2eo5eDZQmZ5?=
 =?us-ascii?Q?vNMey73LEnwjbMJFUV2oJT3e6fC/JjHv9DLron4q6JhEEQSrSj8+p11LK5mj?=
 =?us-ascii?Q?9dn9nmJMbtkvwMRmMqBm91WhsEGPyaH3JWifIKN6xq1cketCG/egpNx91T0Q?=
 =?us-ascii?Q?oXjVW3OaFjpmIdslc8HPpf0H+Iwx+0agdvgvxoUqPzowfJTL8xkaj8KpaIme?=
 =?us-ascii?Q?WCaU3oIFOozmsGz8Ea/B+wntbvsekP82MzX+eRIzXjWfUlVIiLbA264+Ff3G?=
 =?us-ascii?Q?rAqzTLpG4lYt3pTQtMl7TooAg/1Zq40=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b7232f-88ee-400a-387f-08de5ea3bd86
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 19:30:48.4771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WXefT+erCSLGMOWN+EY1HJEQkYEMP3/ozjdqhWJzG5BeUAoIruXc9E1lXImW+D19z5JwaQ7Pm4JVvLcFdS0GMvhBHztvjWBoPSTO6d8XdP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769628658; x=1801164658;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dRJLfMFicFXNJ8orN77XreJHSuP1WyzvXrfV9I5XEP4=;
 b=UaU0GtW69N9SQElAgwgA6wtRj2Mac5v5yquTzKf9aR4QbMeoPo3iySXE
 84Z/m8zzGzTwZYLNF0psyJuEZUaj3IeQpup9dFyOoaRUuC/XctcoZuHeR
 si89V42AJzZcg2rfjBQUjzy2buLZRn3w+RB/lsYHDtGc4rqVxqAUyP2dm
 GcIIRGpSR+U5XfB0Q5P2KYDO8LWk9vshkg/tAnNglKsXEclOctkYejhZG
 Rk3okLzawnZWwG8jJ7fshF4gfcvuZ/jyutBn8W0K5oElSSw6Ixz0EagoM
 DHy8S0YQMFAB1yNpWOvzH5tg6NFZwbjFFKdCbAqAvBS6UaGkyjDbMCevQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UaU0GtW6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference
 during VSI rebuild
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:IMCEAEX-_o=ExchangeLabs_ou=Exchange+20Administrative+20Group+20+28FYDIBOHF23SPDLT+29_cn=Recipients_cn=user5ad83517@namprd11.prod.outlook.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:IMCEAEX-_o=ExchangeLabs_ou=Exchange@namprd11.prod.outlook.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,20Administrative,20Group,20,28FYDIBOHF23SPDLT,29_cn=Recipients_cn=user5ad83517,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Queue-Id: DFB92A829D
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
aron Ma via Intel-wired-lan
> Sent: Tuesday, January 20, 2026 11:51 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; > kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@=
lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference =
during VSI rebuild
>
> Fix race condition where PTP periodic work runs while VSI is being
> rebuilt, accessing NULL vsi->rx_rings.
>
> The sequence was:
> 1. ice_ptp_prepare_for_reset() cancels PTP work
> 2. ice_ptp_rebuild() immediately queues PTP work
> 3. VSI rebuild happens AFTER ice_ptp_rebuild()
> 4. PTP work runs and accesses NULL vsi->rx_rings
>
> Fix: Keep PTP work cancelled during rebuild, only queue it after
> VSI rebuild completes in ice_rebuild().
>
> Added ice_ptp_queue_work() helper function to encapsulate the logic
> for queuing PTP work, ensuring it's only queued when PTP is supported
> and the state is ICE_PTP_READY.
>
> Error log:
> [  121.392544] ice 0000:60:00.1: PTP reset successful
> [  121.392692] BUG: kernel NULL pointer dereference, address: 00000000000=
00000
> [  121.392712] #PF: supervisor read access in kernel mode
> [  121.392720] #PF: error_code(0x0000) - not-present page
> [  121.392727] PGD 0
> [  121.392734] Oops: Oops: 0000 [#1] SMP NOPTI
> [  121.392746] CPU: 8 UID: 0 PID: 1005 Comm: ice-ptp-0000:60 Tainted: G S=
                  6.19.0-rc6+ #4 PREEMPT(voluntary)
> [  121.392761] Tainted: [S]=3DCPU_OUT_OF_SPEC
> [  121.392773] RIP: 0010:ice_ptp_update_cached_phctime+0xbf/0x150 [ice]
> [  121.393042] Call Trace:
> [  121.393047]  <TASK>
> [  121.393055]  ice_ptp_periodic_work+0x69/0x180 [ice]
> [  121.393202]  kthread_worker_fn+0xa2/0x260
> [  121.393216]  ? __pfx_ice_ptp_periodic_work+0x10/0x10 [ice]
> [  121.393359]  ? __pfx_kthread_worker_fn+0x10/0x10
> [  121.393371]  kthread+0x10d/0x230
> [  121.393382]  ? __pfx_kthread+0x10/0x10
> [  121.393393]  ret_from_fork+0x273/0x2b0
> [  121.393407]  ? __pfx_kthread+0x10/0x10
> [  121.393417]  ret_from_fork_asm+0x1a/0x30
> [  121.393432]  </TASK>
>
> Fixes: 803bef817807d ("ice: factor out ice_ptp_rebuild_owner()")
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  3 +++
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 26 ++++++++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +++++
>  3 files changed, 29 insertions(+), 5 deletions(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
