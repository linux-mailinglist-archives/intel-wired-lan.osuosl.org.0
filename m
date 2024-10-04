Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0DB990176
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 12:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E575584143;
	Fri,  4 Oct 2024 10:37:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dI_TVPPgzfh2; Fri,  4 Oct 2024 10:37:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CF8184150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728038279;
	bh=AkhGJh3Q3rrDN/PWj/auHHY2M3793YkWtl3AWsPFLbs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V7QyawnmOSo7SM2c6XH8WYiyUWW3mkyGeRJF6MHTrI0Bs6c2WfKJtg8QSzuBQhHv+
	 rHkEfETB9iskISzN31We3jzfVajWPlr2TQlMUd60iMVL1ZhhY5C01rnWTwiT13527F
	 QmqmUzQnYg6pTZJmqxF3OeA0wdrn3qmiEVfSQcjFyMQptNwRjIwBJyJ2NARtJUCBHD
	 cgcybsKH3BXzc+U/0SsxbI9cBP2Ie+yt/t5lMrIBkQ/xMyogfSYb8VgDARHhSAvXmJ
	 VWBK7u0tSRgmfRQt9wLVTTQNTNNzYis6ZHBCJJ3+uz96JZH1L1NtNv+HbnztVZ/jgg
	 ebcXVH6ODrO/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CF8184150;
	Fri,  4 Oct 2024 10:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 066651BF255
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8C9184138
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:37:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtyJ-bhBonDF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 10:37:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1891684136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1891684136
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1891684136
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:37:55 +0000 (UTC)
X-CSE-ConnectionGUID: TKKJq7FUSxu4QkB8bPRlKQ==
X-CSE-MsgGUID: tkHhy2TCT8KSFIoBrCbR0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27140898"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27140898"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 03:37:55 -0700
X-CSE-ConnectionGUID: F0bxhfT9T8SXVJm+9I2+vA==
X-CSE-MsgGUID: kEdBWfYMSue2+4hjqGpI6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="79433667"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 03:37:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 03:37:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 03:37:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 03:37:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jf3Hm+7SMLbhf8s8zru56JsASE1P6lxifYDjj1IysknUj4s3PXlKAcBO2KqZhfDMtIzsam+VBKvrwGOhkibNGBD39Q8eQ2BCYBYSFdM0m+qpbCzYvrK4TfrjKdDqXs8kmhymnaFlp3qofGLPxBmi8ByP+wb+zfFD5u4mtY+fft/c/EpSMB2QYSC6SKP0IFXnHzbqIa+8Kcan/b20NNkSD/nwZZ3CRijSIuCk79fEwDdFP475VlKRIrjX5EYGbTifPaBLw0MTkqYNup1x6zOetdQ3ospU4S9yK70yNXP7RnIWz35uZd2+ifkrtq2hFed534u35ggP7QiZ0BlNsbpmww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AkhGJh3Q3rrDN/PWj/auHHY2M3793YkWtl3AWsPFLbs=;
 b=mY0NoLV1NFWEpA720QM9x0SctHKwLnfQrAdrNPiSiP+lKz+3s/xXH1rwhUwfidMYxEW1TJWvz17tIbJtWEFnpELoh3qxo2GdNqQ5fc8N5L6CievVr4MmfrcLzDdeMn9FAfL3LiFUEV4W2ETOAdkA/T3MQDl8cK2oBI3n6XqOaBuJTia+oFgw0XyRvpe6kvC+hhV2BGy3Qz9e/3WGK1ApHYPUVfe7iy6n4z/RIP9iSOkr47X3/0GB/rFF0o9AxF0R3tnJA5X+z+UTNUrJs6T/wFDx/syHEMI9PCsELGMCuWKypIh8qJcbbxOpsDvdsnQjVY/kUHx9PaBE9i76U/7dMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW4PR11MB8268.namprd11.prod.outlook.com (2603:10b6:303:1ef::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 10:37:52 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 10:37:52 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: Fix netif_is_ice()
 in Safe Mode
Thread-Index: AQHbDmjmbCfn3eccK0WWHjMcV3a0+rJ2dfoA
Date: Fri, 4 Oct 2024 10:37:52 +0000
Message-ID: <PH0PR11MB50132832BFC0AABCD599591296722@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
 <20240924100422.8010-4-marcin.szycik@linux.intel.com>
In-Reply-To: <20240924100422.8010-4-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW4PR11MB8268:EE_
x-ms-office365-filtering-correlation-id: 574576a5-e8b0-4af3-faba-08dce46099b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?lPHIYfIw9sp1jCFnQ6QEwvUZcGpJYaysJxcarPPFTVYGom30kxn8bj0pL+ZH?=
 =?us-ascii?Q?qezZh2J6IQokHOwC31kMzDCkaLYXF28cKsiAu7+kqA5jet9gsUrrMnFOlW1a?=
 =?us-ascii?Q?VMQ8+97/es6YvyGms4+DxxBc8WAktHBPEIeZ9VAvWix0yWNSMCgGrggaJRYP?=
 =?us-ascii?Q?p0PIW9OndEfYGVGKL8/lFqEOzHapuIUWKWbsunxPdTyuf+Tgs7c6ghM1ZY1Y?=
 =?us-ascii?Q?lbggIY7rfkQpwhlgvqQIXaHAK5usQViXm25U6eflp02mg8IDQWbKFvtKi1Ar?=
 =?us-ascii?Q?OwypfJ5Fa7Zj5ED0gryN6WRrl7w0pxwVVwa+VpcMCgh5uxF0Mpzm/kLN1u5v?=
 =?us-ascii?Q?aGOtk16wLbzIQ0VeLsIj4ITq0Tvsiki1OaHjyTTg9+ENiusYBfMA02BWRvWB?=
 =?us-ascii?Q?i6Eic1Nr6t7LU2onq8kZDjwXficbeOpF7NQfPCLY8RHn8RTX2r/Xvpqm9D/9?=
 =?us-ascii?Q?GoXGA6j3cswzQO+gVuTs0whlhjRQdU9QXqt85SSMSRvrPEYbnJAzGg1eBDa1?=
 =?us-ascii?Q?nDktZ9Es8ES2MgsbPGTxAVos/1E/plLkwtOHZyKNqiDkQ0fYWB2GHbqPGVEM?=
 =?us-ascii?Q?HJyZnWE76mTK0wROWU4NEDfR8fAs1Jywa3J6qzysRb1xWSJsjoVx0TqPSb3m?=
 =?us-ascii?Q?GyT9bF1GJWqcMXywGZOi7E9CBkHuIDpnjabi6plWw9raK7aawQnoqLwswKDt?=
 =?us-ascii?Q?UgxyMlxXUtga1X3iqxRx/NQwyZoq4JiqgvJgAKSyGNAm9sV1XUJ+RZuw/dDT?=
 =?us-ascii?Q?Ro/JFH/SpOo0Mz0lxrpwSCTuI1yaRiUu4/w57fV/wo9gEb98VXMkDGFxZrYp?=
 =?us-ascii?Q?40Lf9wSg9NzxSX8WHjULg/+X9FhAfFf/6UbAp45d7OCVOo6LtgY7LanFr5r1?=
 =?us-ascii?Q?vb3k/Bck3FEEXtdLMBy1HFSSkWXRvMFS4Cs7pOdsf+u1Awh/2qsq/oVwVkw+?=
 =?us-ascii?Q?fhP3+fRJAJdQgggDnld7pscA2nkzHGahyfvMADJcnmQZcvwPt9WnupN9OliZ?=
 =?us-ascii?Q?rJWtWK8A0dT8TkAadVqF/qsdTfSrHxoe+oKyXdSbw/FwAp61/dXID4P1ABtb?=
 =?us-ascii?Q?Sf2sSbK2y8Pvd+mSyXIR2n6VxZ3OLM1HzdLK+Hv2JN+pm3UGX7LlegtZdA52?=
 =?us-ascii?Q?olEF6yXDNoUa9AwsY9wmbMbyGKlWLrGHG5lH69FUA84S5AcH5sFzLnaNx7Me?=
 =?us-ascii?Q?f55ODGHDlhDpe04T9OnwA6iPJ80k5csBaAKEuTSENAXJJzXWP5zotbSv3Xjx?=
 =?us-ascii?Q?qUrhUf+ydq1CaU6E26cgzV8v0Tt5aMtYeFozr7mhZpl46PIgTG/LZAvbgzSo?=
 =?us-ascii?Q?E8URh8CzEfmcVtAwgbgmVjCCGJTFNf+bL0X5T9ictOd7yQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ont/UJXcPiXNw+2vpsRWyD3jFHAbMYRUJ+WbboGVywwBUVbLgOxLauIGdz+F?=
 =?us-ascii?Q?xjtHl0uf/Issk7GbDYyXNJZy1acS2rDe1MNXTkOgCy1eKFacZT2zLWY/t47n?=
 =?us-ascii?Q?hJd1Sf5Gf1N3P5mVzP8k+ZePdQficXnCyVf/PbhXvwIAaeDj/02KFgJg3wFc?=
 =?us-ascii?Q?I3XquPZSuVlREDmpc3v7Ym4b20kWuH991u6BRbVLrNeR08Md3gRR2pF7oQRn?=
 =?us-ascii?Q?lXbbPP3qwz8cXgkcyZGjRiT7HjZi/cwRO4FrC58+fZSb5RS1wYO6G8/JMQom?=
 =?us-ascii?Q?GOcWquIR0I/NrKzUg+kzBWh4CE4Oyrc+x8KbLkBCorNmc0J9gntxCqxkaLLV?=
 =?us-ascii?Q?59oF60CODxRQrvNDScWZ96IRJ2Pmh5LltWteHurOASkfx1q/qRjmtHInQP5n?=
 =?us-ascii?Q?/vpx7gZzljpPNYEClfrIPTDw9M73Atq8eihDT42Z4Wt080pU/Rg9I6pgGtwt?=
 =?us-ascii?Q?JSnVow8FtVhzufsoJ/XbejGlWpBCdtWR5zeYr5LT77OPQ+r/7hZdDXSa5puD?=
 =?us-ascii?Q?vxIZq5ms9Z7gJ14uEqGGOIIA+8zUm6Jd1iIFVpuy4ZoKUHrjPdSYbTGABc2H?=
 =?us-ascii?Q?mkvScnvbeOxR2gaqW92wt+NSjXjS+lZzKHSQSJPxfFH6kYNjR49IC9PvOAfK?=
 =?us-ascii?Q?XlbQxzK5uoY6jk91mXzwFoaEte7esdjtmrd5eDjUzAqsIlVo5fRKtVVoS9lD?=
 =?us-ascii?Q?n+ZVFauWDDtMxrIbqmz9fZOCUr0K5iGfQlGWLxTY9mbYcsDGWcIviAOlKWzU?=
 =?us-ascii?Q?ZXVusJ6Y4GEeqQHYtPuRqI//LY0Azlm7euxVDJFgVf9UaOOjaKMyd8xiNkjo?=
 =?us-ascii?Q?taUm1qGW8CkchjgWPEEKYtzyKL0iR5CDkAvVNxrHMGEZTo/f/2yIYl7R0TIx?=
 =?us-ascii?Q?00eQnpbxDdQmSDIdCAKXVp8sYlPx1THdw+qS4LTmHwVOaxaO5mR46qUzfCc+?=
 =?us-ascii?Q?bwqNwhzXomScpxPToBVnQsbs7tXeFmYaoNqZryGeMnhxv68fhLpC7Mot+7vj?=
 =?us-ascii?Q?5rD0wKrig1djbwijlZDF/RzhMlBxjlyu0I4b+yNpl+pWiZTcvTFhKvOMBUS1?=
 =?us-ascii?Q?vVizNie9rbtoWywGPH13VqxoN1QALaf8gMN3UCNKYrZsdbjj7BEmKcRGelON?=
 =?us-ascii?Q?b3FLBxCPFuk4AUmgc3kjsku81HQDWftTgVFJMVf9PMJszpLmUb0Hn++fVc9I?=
 =?us-ascii?Q?+lZPwey1lwKxZZBFAxTgEdbhxYmxF2YzBGU3x6NCkoqdDPovCUttMWEWQ0HK?=
 =?us-ascii?Q?4aC9VbHeSfqplYFLjK2Z9GKjdSQFCY3unpf7fPx086jhKDmoM/7RrXC44up2?=
 =?us-ascii?Q?jNiIVUVb4uGMCpO2rGKGOHFnSKGDmBhba/r51jOoSkCpTlVsJmpi+i8X1ubN?=
 =?us-ascii?Q?IMga0fltMJUpJ3TYj35rFt6UUOKjfsUAa0kkdGq/0n8/h2X/1zL+eqL1oQ93?=
 =?us-ascii?Q?Ni+6ipWwBCKcxC8JyEYOdCRqKBtFHTK/gaaUYDfkBm5meYz82K3LVXAfPUo8?=
 =?us-ascii?Q?PHC4yBzUGlBjfno5SPfqT+aosD+KLQ/T9U73v8NbZ8WUxGc5TYBcjtNI1E2b?=
 =?us-ascii?Q?gE82WG0G5PKsCP2YfrEe6jfD6vYzNjdgGtbmTkxT6XA9HrqFCW2InzXAhRiX?=
 =?us-ascii?Q?1Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 574576a5-e8b0-4af3-faba-08dce46099b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 10:37:52.6115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wz0gyAb0o8TEdORd3ioPLQv+njOLAen9hWyJGq3TGKr8xtY7RH3Bc0L8rV3X1C99vMlaszq6CNYyAfG3OZlszgS6sxJnPSU1H0ErQIk/az4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8268
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728038276; x=1759574276;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zb0ahTMb8M6ELC6cJ0XENq8JQZHdDw+MsmswjrC1p7E=;
 b=mrMA0okbOvnKshOiyR7MMYVgU4zkZd+n6yM9lBhgtnqaaAF5H96t5b1k
 wLvGd7dWrCLBHbfUSXKx9hXHHLnb9CWCwtfo24RBPmX+aSjZP3XO2LFGq
 Sta+BYxg3slmlNAhfOyr14EpJSTgKQ3dQ547Q/OttzBUG6YuLSUQL8l9+
 aS5KNCBsVdXKTgkDtVOwRnaNOgY52RjgZzpKenZP3MiFAOq+rzyxFtdHt
 LUfZi8VfZwIShlEmKxmeyDPxXC2MW87gB8/Kdta4RkqU2tRxk4Yit7ehf
 KHaBOZKk21DaiPRXPEJoXn83X6NrOV6nWNAGA3HDv1vzU1FIMNeT9lYYe
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mrMA0okb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: Fix
 netif_is_ice() in Safe Mode
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "bcreeley@amd.com" <bcreeley@amd.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Tuesday, September 24, 2024 3:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> netdev@vger.kernel.org; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; bcreeley@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: Fix netif_is_ice()=
 in Safe
> Mode
>=20
> netif_is_ice() works by checking the pointer to netdev ops. However, it o=
nly
> checks for the default ice_netdev_ops, not ice_netdev_safe_mode_ops, so i=
n
> Safe Mode it always returns false, which is unintuitive. While it doesn't=
 look
> like netif_is_ice() is currently being called anywhere in Safe Mode, this=
 could
> change and potentially lead to unexpected behaviour.
>=20
> Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
