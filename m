Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGCfDvYf3mkynwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:07:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177F3F91F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C495184C22;
	Tue, 14 Apr 2026 11:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eNafYQJo0yXt; Tue, 14 Apr 2026 11:07:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8F8A84C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776164850;
	bh=TWzrOyzDIS0scgHWhMf7gbFFlxVHfBbl3tWASC6mfRM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ai9EVHqSmSuW4Y2fpvo8Pa8svjGPA+3lvASyOGeY1hJCljk/2orijN+1u6E4CwiwR
	 MBg6M48KkHQwxGhpdd8sYbtdqjgUj4fqDZGCpalORBoOogQiCnScM1Ppvm3HO1zLNm
	 o17VBm5p/6Xj3+4mPpGlFLi97lmtfe2NNqTndiaWSM98iWOg2IUvwTyWxFCZTDfYnJ
	 H/kWaYhHV7uMjZF1Mtvm2AHROfDpwsb2Nmg1A58/vYfU1U6vVfk7BlUZ7aBDUTjqj4
	 E4cQtxtmsSD4wB/S8BudRDBjvtMDHqe+dOCW6Pwgbl/0kvh58M643C+YQFmgP4eeUb
	 +frZ+2Gr+75gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8F8A84C4B;
	Tue, 14 Apr 2026 11:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CCC7237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D9A1403B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6J0nDSIJefqX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:07:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 466CF400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 466CF400BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 466CF400BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:07:28 +0000 (UTC)
X-CSE-ConnectionGUID: fYTnAqcbTOaqlrHZW0LsqA==
X-CSE-MsgGUID: NgFQhgY0QaqrjViiKakF7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="102574913"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102574913"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:07:26 -0700
X-CSE-ConnectionGUID: EZech1U6REC42dsIfecq5A==
X-CSE-MsgGUID: XNt3zVagSAGH8dMysUTIwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230288649"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:07:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:07:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 04:07:26 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.68)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:07:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CSpZzj1/jrX/iNwKbQzBYwbMziAqy6mzwUX4E0jXS2/OPKEaQ3Ib5GVDrFAXw8D0JaSMLg/V4rhLXqfUKMOwGblNj0ppNu7ExHo8j6qoBnWInnULnz5GEl1jKL9CDQlXyOlHCpAchnuJbebWgVAoTDGUt8E9asreU7kWYl9uCOvrzW3Poz6SUFlyjWfZGu+KUkSbM7fFnS5FeNa9FLqiSsLKdkfIPdWsaB8V/wQvDH+2oARi6+XsofNA1lYzdcNZcyhlhBWszqZecCP0zqzf+0Wdys5EpOhYzSyozsp05FR8dIttu6uN6UcEUKqa1sw/UD+NxJDr6lpL6TRz73qLvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TWzrOyzDIS0scgHWhMf7gbFFlxVHfBbl3tWASC6mfRM=;
 b=cVLEQqlWl2AZ1kz8OqZxkQ7+B8lh7j6BhrengnWdZKZ0qPqiBd7iGj6Z6Ghu/Ky0mjiMkJ0gG8ZFA7oIjED4uInvHqlJSQTFI2pHkTBmL2KW2U36SkEbwaBVSVLK51H/6Nw6mWQtQYun7KHgo95p4vembMTLvyc9K92vM6wDAFQGIBm2qyY1xPs2n8LkIJ3/5PBfJnOfg2uq9SuFktMVCwY6oh0/JOwdF6E/3qhvzZC3I0bAp9E/+2T+RBRjArgugly4RQ/Kagr/fsZK0jnDryTFypKY8lSxRUX6czs2mC8q3XxnbSUCzRZk8VBo7htntWsdhOH+/ZSHusvCIs6KCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB8123.namprd11.prod.outlook.com (2603:10b6:510:236::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 11:07:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 14 Apr 2026
 11:07:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Bhat, Jay" <jay.bhat@intel.com>, "Barrera,
 Ivan D" <ivan.d.barrera@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "decot@google.com" <decot@google.com>,
 "willemb@google.com" <willemb@google.com>, "sheenamo@google.com"
 <sheenamo@google.com>, "lukas@wunner.de" <lukas@wunner.de>
Thread-Topic: [PATCH iwl-next v2 1/2] idpf: remove conditonal MBX deinit from
 idpf_vc_core_deinit()
Thread-Index: AQHcy70bXa0JJO4YuU2JyJc3EXRkm7XeZa6w
Date: Tue, 14 Apr 2026 11:07:21 +0000
Message-ID: <IA3PR11MB8986EDBC27D4267AA0F48BFBE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
 <20260414031631.2107-2-emil.s.tantilov@intel.com>
In-Reply-To: <20260414031631.2107-2-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB8123:EE_
x-ms-office365-filtering-correlation-id: ab021629-7cc2-4f8f-eebe-08de9a15ffdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|18096099003|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: ckAeQ1Z1RmieIoS/zslJl+vwmqHliP6/oEQ7ssjkqqJz71t/sIiQARcCrLX1dTIXWRiQrczDGKGKg9sDusVFP1JhBz5Cwye/73r7oc73nxEfVauI48ZCdinpVSAMmE3JfN9WEPhTghyEf0TXlckECCAoitahd3JyZFcghm2x2iTpN136WkZX6bVYKmAz5ARSoKCtPZQgXz65mZKMpVXlJPx9qwGmRb++tMDihy15jbuxi/Fu3YgJuVIb4tx3jrm72EuhNDx5BzCm6VCA7Qi8t9qVuPwstlBZ3ZIhPOlUgzg1Q43ZMrrl0AcaatwsT6wxe/qi09mIcNlcsL3djkK3t0N3LRcx4T02FhED2gk+u/sA7i/1jlMSyND2izelUW+EHMivXHMVXBgKH7Fc9ItoK+ENl0si6zNPcVm50J1l5s4G6UGSBybozHWS8l6gQktYfSOdVtf4H+M0ogrmOd1t/XwZP3LIGQvzWY8H23uJ9BvMAJe4wHvzyFt2XKLPZa4ztOr49hDxVPofiH+qqwtItMHq/5qsPlQ/LV433a9lQNTivclbzb0tD7frgqXFMHKOM0k7bfj6P73QNDP8qEJuDQzVn1fVuKjm8lu1KxluCkQ12TvPNsqCdY6xQ3jWoa7UAQ8MriJ4YewtS7DkHaI0lMUNaQMNHSLCkSNlolUPc0vU7LT291nRbXHzdOz8jBo4IO4MKehTJGNcpDxqm8sq9iDS0gDCsFLqhZqnld5hOCRglN0nZTiCkvKVbuTwMqtxmU+dwoflIfPZ14uhDEC00ZQaE/ajeRRZKangROrWk7M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(18096099003)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7HvG6M8AbIZE8JS1H7LXOA7LuXzFFYiseyMUGeEh8q7d3nR7fuYHiityG1aY?=
 =?us-ascii?Q?dzKO/4Jg8EmcIc/EueFGL6m8fLUNBIxDOtvX9zOasIz9OyGUBbYKI+P1PlGH?=
 =?us-ascii?Q?+f74wz7PmAb5NLBnUMx0yoUdtE0uxki/9cDuTiPSAq4BAbHVX4SZ0+Udpt/G?=
 =?us-ascii?Q?51nx4UasO7eVvBieog2D1ic3hmSBFdvHXLArho+6B49dq/uqmMIz6nrHfD3O?=
 =?us-ascii?Q?XCgFpzjrxIbTLcRBxOVmp2T6VX59K8N8/1eWxCHVtuWzlZyxHcJqjpX6yZWA?=
 =?us-ascii?Q?8VaiXksSzPiUxW53amXgTpke5bj0aG4NZdR0PUsHi50M4yye6l7P+ddJzYLP?=
 =?us-ascii?Q?GwK3JTzBxp/sn0xfqzu6h5BBm1X+8QU8gREUMgrIP2Jmdq5PDDGJMhsOHJ3T?=
 =?us-ascii?Q?9/Zc/H1m98iToK9laF6oIMZ9M8DNND+lzCae7QuYxn+P34PkpQWWzoKcTY39?=
 =?us-ascii?Q?I47MJxCvQvv4yPOWbz78RnGg5NsuIC5M2kz1LD8NOy7gClc567Lxn+MSSOzd?=
 =?us-ascii?Q?YNXHVK2voWa8fP1gaOWhc8uqnpYrd6pokSUWItb4cu7mFx/wWAJCPaIiMRvc?=
 =?us-ascii?Q?nIxRziGAw8DlMzx7PSjAApehkPBzCaUgVBxFceTSDbpQYsfUBUO8xZ+WGe3R?=
 =?us-ascii?Q?cU9T/gBUXS54Gk/QeXZc0MFtt64RGe2EuD+ralg6aQ53GmzgSBDJHmmxXrur?=
 =?us-ascii?Q?fBSKp8F8wppYJNTK1UxHLfvqToD1Sdcsgz7uiR/n5yudcvrel0J67xBpFwij?=
 =?us-ascii?Q?FzU1BeObDgQsEm6Svv2ISUz6NT7RdYzbxUGctK9L7iAEEkKac9IJUI/g0uHy?=
 =?us-ascii?Q?MPtgdZsUA3FPgDKPWYqjlUx1f9/F4v/ZVOA1usjviCXG5WRGb9lL74rg6MQP?=
 =?us-ascii?Q?bsV3slSWiIMmDc8WzDp+hz2LjNbcGFBPV3YNAd+5wMWEgaa0Gi7PiwK8syHn?=
 =?us-ascii?Q?pptdSjk514WAPHYb5SzbGyWeX36j62Cje3WD+m2uEPLxMN8tsjaNUClEp2cc?=
 =?us-ascii?Q?XnInxkzwlWZlCcKALTJDXstvSfn5Y99vl7HfrtlVg4eLHAWOGm87bKfC77l7?=
 =?us-ascii?Q?nYLiOWJUA+2fDsk7rbwGDD486u/OlBPtaNhsf9MPgeFFg7X2JP5+kirMYqyV?=
 =?us-ascii?Q?rcKWoNcCTVU/qj3BY7X+d6EPSd1Gs0bDwFfvA5ZeGY2A+1hyeq17JykaIbT3?=
 =?us-ascii?Q?4qmYzYMf65HZLRn1EX59vlUhVKBDhIO2XfA0gqAF98yP+Quw8R5jBiFJ3iTL?=
 =?us-ascii?Q?nkgbXC2/sGxqcIa9iAu0wIf3giV8JEohAzDTgIcVp45501PikLVpUvoZWJNf?=
 =?us-ascii?Q?s8dfafkmTBFro8UvfxA1KyNtsmY6LhrRSpp6Ny0RAjItlGuEbHyx1P8pcJWG?=
 =?us-ascii?Q?3ltweJsq27/vhAARFNjeRXKPcXYnOMIUuOazDuiuc3/RnevDZXH9IXRGarlR?=
 =?us-ascii?Q?9xwUXbPl7NZUakNkXp1kA/BMg9jabaoxqOk7c1O2oiyj4p4ackaTLkzR6xmN?=
 =?us-ascii?Q?5SwsGAVkC1b9yyVJAE0BtY5pM6DsMZLyfRUX/8vVAb39Fq8RTlhyA6P+efeP?=
 =?us-ascii?Q?XPp8R+jAgFwZqu0+0zx4//nD/wym4+EWANEyMBHXMdXI7Z7R1y+SNY3kpPvk?=
 =?us-ascii?Q?ECXperSgFm4LaAbQ/nLUd36iX4NZyREAVTfTdKLuDwXmS20dO2cdhXICCJYC?=
 =?us-ascii?Q?8zui/WPLlDqwafn1qAnqIWXSIcDP4cAR5SHAt6SOMiBfbxJczufU2aDLKijV?=
 =?us-ascii?Q?TriNC19zZdV6DbLaRMdCM7EHnArxDjQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AwEkDEEfcIvS5a2vLYYLkdEXM53tw3AYFo1RHC40jdnq/LEPvf5Y6PQib9vhuFuA+t4B+grLoMUKOy4kDc7qBRoMw82D7wrKLoMBDX/BGzL342LFSkE83eStaZJzGThGyGjT8FtH0LlHz2kAnqoEP1S8lRC3thnip4dyOKHKtgXS8n3SsYmjeydCjtM0xw74bh+uIZNA3u/jyj1bt6atGJeIkxZAJVdibeJXE1akXLfneSEiy+FadHcDra/H46xAWjIPiXnnOThTf3L5ri7m10he/ko/ep7Hrlb4zdseo7/jAZ/RF3vK1fsVCq9hDJErdySdiBn9K7GV9/kxJ05pWw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab021629-7cc2-4f8f-eebe-08de9a15ffdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 11:07:21.0525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QMRukR7tKm1HwB8cEkjq6+EXi8mZTZ17xAHoOGFwMRXQSf2nx8g6M1dJJ0QT9VJAGWSFR6QOuVcq25rssbSF1FQlUfYqHGiZjl6xcujxTs4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776164847; x=1807700847;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+BTUZSZUhpIF55hrnc+qbcybJA69vYa984V8tL5c5js=;
 b=oF2vU3ZZWCiOMO4e34woL9r+3xp2W7ek9y9Z0lfi+oCCDPqcUO4AobNe
 vtQpAHKk46j1Y+lIy+JhxjzpuAXGfPs9dKMvrn3hg8mJsiMzwvIwcbv4p
 YM1eMtmxj+2sAcBo4VeHoXKWfgwqTVLj7yDy5uvZ+Z+h0KC68EyLehmkA
 O0+bT7+jXr+51k8WdHq5evZZIMFSWixJbm98OaQ0j8puMtb2ZJItPqLvI
 QQzws26IFjIL7O17symOALZMdmD9KM6FMPxmK4r2iQB1f4mWvt8G5aZtE
 modRH1tBIXrynK5XAKwfroLGfILrQay4UldSSwwYa8SqJEVw02syF7UTe
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oF2vU3ZZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] idpf: remove
 conditonal MBX deinit from idpf_vc_core_deinit()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:lukas@wunner.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8177F3F91F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Sent: Tuesday, April 14, 2026 5:17 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Bhat, Jay <jay.bhat@intel.com>;
> Barrera, Ivan D <ivan.d.barrera@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Lobakin, Aleksander <aleksander.lobakin@intel.com>;
> linux-pci@vger.kernel.org; Chittim, Madhu <madhu.chittim@intel.com>;
> decot@google.com; willemb@google.com; sheenamo@google.com;
> lukas@wunner.de
> Subject: [PATCH iwl-next v2 1/2] idpf: remove conditonal MBX deinit
> from idpf_vc_core_deinit()
"conditional" -> "conditional"

Everything else looks fine
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>=20
> Previously it was assumed that idpf_vc_core_deinit() is always being
> called during reset handling, with remove being an exception. Ideally
> the driver needs to communicate the changes to FW in all instances
> where the MBX is not already disabled. Remove the remove_in_prog check
> from
> idpf_vc_core_deinit() as the MBX was already disabled while handling
> the reset via libie_ctlq_xn_shutdown() by the service task. This is
> also needed by the following patch, introducing PCI callbacks support.
>=20
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Jay Bhat <jay.bhat@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 129c8f6b0faa..fceaf3ec1cd4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3229,24 +3229,15 @@ int idpf_vc_core_init(struct idpf_adapter
> *adapter)
>   */
>  void idpf_vc_core_deinit(struct idpf_adapter *adapter)  {
> -	bool remove_in_prog;
> -
>  	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
>  		return;
>=20
> -	/* Avoid transaction timeouts when called during reset */
> -	remove_in_prog =3D test_bit(IDPF_REMOVE_IN_PROG, adapter->flags);
> -	if (!remove_in_prog)
> -		idpf_deinit_dflt_mbx(adapter);
> -
>  	idpf_ptp_release(adapter);
>  	idpf_deinit_task(adapter);
>  	idpf_idc_deinit_core_aux_device(adapter);
>  	idpf_rel_rx_pt_lkup(adapter);
>  	idpf_intr_rel(adapter);
> -
> -	if (remove_in_prog)
> -		idpf_deinit_dflt_mbx(adapter);
> +	idpf_deinit_dflt_mbx(adapter);
>=20
>  	cancel_delayed_work_sync(&adapter->serv_task);
>=20
> --
> 2.37.3

