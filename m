Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6C3CFE3D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 15:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADD8382051;
	Wed,  7 Jan 2026 14:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOc7UWoCKmvB; Wed,  7 Jan 2026 14:19:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15D9E81EC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767795561;
	bh=nO2Qc12jjkPchyfMxyc+XvhmGVluv9B6nzYiqJo3lrs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q2I4WfMJwEP5HuJ/yyhScFbqy+Zt2S2KgRD4gBQNL9qpZCN4vbl6xiiwWnyvSbQP0
	 Q+qijvJjt0KavT/sajUhBFLUIkCw1TZJ7d0NicAywIt+84r3jNRkkX+JwBIaXgJppI
	 m4bdX37mksQI6EqwC24ALGXV2AQ44a10zFXU8T7viHr0ciGLBZLm7Sot9rPy7W/6qp
	 5kxSJQ9xzlCXP9826MFYzZPRQdk4HocGntwPiif3bHI916jyNuY507pVmSmHICfNrE
	 u1rv3908ImmvQvQlANp18dVYT5+R905ECjyoDGLj89DoNOhIrxrG3vQkyt+SVEFlPW
	 mtAv8fNVNCRHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15D9E81EC7;
	Wed,  7 Jan 2026 14:19:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2138F2A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 14:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06D7860817
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 14:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TAx0QCofg9O0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 14:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3EBD2607B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EBD2607B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EBD2607B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 14:19:17 +0000 (UTC)
X-CSE-ConnectionGUID: L4toO2wWRJqESkLkuxII0g==
X-CSE-MsgGUID: Of+BSTKcRcaQ/eT2110YXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="86750825"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="86750825"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 06:19:17 -0800
X-CSE-ConnectionGUID: 17ymkS3ETdqPjWke9EDi6w==
X-CSE-MsgGUID: iRGkhddqRj+lYwa8XWa5BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="233643632"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 06:19:18 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 06:19:16 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 06:19:16 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 06:19:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y+uuuIjRDbq4LhSdZMdeFAt7L6VSjPOIXKLpvPYGSMyEVdORy7vq1+GRCgTczu3Yv0ouEGFieKUghjaJrfwLR8r0ykMwieii96jbkIanO/Cf7sHN9cZOWpoaCovUbrp8HMAaTCn2rgNok980qk0DYJDy5Z0hB3qGHo5hc0lcp1QQ/26IA5O7LJpoW9iLLeRFwr787JbKFHwY+2snhIQrEJxdjQ2z6zqwRLpgSsoqAH091Fki9+3xkk3NNsNs8D7Yp4e/OY+lzW4BV3E2AkrWBueVg+UDiBkXH4c6KqkbkITodsaQJVU/2d6iwsY6A0FkJNGloUnLXIjQl1gw+DoZTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nO2Qc12jjkPchyfMxyc+XvhmGVluv9B6nzYiqJo3lrs=;
 b=H0yLpus5gc8CBMd2bs4lCJEHoLjRQ7NvnUxUKNP5zNrbozy0EhVlMDwgQQWXr0jwLqBWXuXmOjOafPxzY+SFRWGU70btHDarDdAaTXye/fDD+PLKmm43E2hpeQgxfHAxL63OPX12Vq8TdeYEF0LyUJ50g/HqbiDtOKX/Sv8MqbnvG1H9khKpdHqDjAksK+TduRVw7SK5DUXYBm5CXdqOFx3Wzc29eKN3Jg9S0FYMSVkADMvP21bsWMM08CLFgzXE7B2qCulJ/F2P/I0i+ueJ/eEMrjuwqdJbWi+S0VGjQL/HIKTwaBRUkZCuDqZXQYmjLYFnHSceAGKVssHIvVmFxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by CYXPR11MB8756.namprd11.prod.outlook.com (2603:10b6:930:d6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 7 Jan
 2026 14:19:12 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9478.004; Wed, 7 Jan 2026
 14:19:12 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
Thread-Index: AQHcfvPNQK1vCTsKokCbEkA/6WvSZrVGwNgA
Date: Wed, 7 Jan 2026 14:19:12 +0000
Message-ID: <PH7PR11MB5983F49754AB057DCF618094F384A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
In-Reply-To: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|CYXPR11MB8756:EE_
x-ms-office365-filtering-correlation-id: d0c5b90c-9945-4b72-1a19-08de4df7bb3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?iSnab2LQdoHDCYG7Ue4jdctEEYroiSRc5OxO+kDW26F2O1sUE3YEN0ShxTkq?=
 =?us-ascii?Q?7zoJDtUKZC+FGn61pZ4gvnORv6E1afTJWFrCCoQCfVwXmkGAtXsnKb4Ds944?=
 =?us-ascii?Q?04+ZK3UFKce+EYvsf7OUgKF8GZsu2e8QHfI5OGEfEBqV08niT4nC2fxPbyJI?=
 =?us-ascii?Q?TYtlJfCO7LwNnTFh6YQRcV2Wn4+rraGkfQQfaITury5dSMSw4Z0gv1XRkBAO?=
 =?us-ascii?Q?svSGkGwAFc95bmXv4kXu7gGCAUp21mX2DIhKuGSSwc7oJIpEwLxw19sr2Akw?=
 =?us-ascii?Q?3GHYfoflccWWzjainixdxledjqSEeXCbQjZ/pvPx8fHZG2LochL4ufz83NOE?=
 =?us-ascii?Q?HfrFaBpglClQIV9AqSAtSov9wMjb3a0bGRcX/HML7dJuKlNPk04BNUYM/G/H?=
 =?us-ascii?Q?YXSEV0I5QEsTR6Os36HTmJnOKWTLepksulV27hisn6QS12JwZToOD1kN5me/?=
 =?us-ascii?Q?+4VoFb0+SjJ3NTn6VIWTa258nOVtg2l99UUsjK00bwh3gxfNYARrKfXFCqWb?=
 =?us-ascii?Q?v0mMZk+/VTQgg7T5+XF7kKxrDppzs670ICTWfV5RDRREq+o/Cmwn/+ZA74GN?=
 =?us-ascii?Q?DHOfwY8f87WBvbm9+/UuB5Xs6KjhdX/L17DwymANbF5fM/PBk61sPnauXXtn?=
 =?us-ascii?Q?leU/cQ4135u9fFu89KcAUwS4fr/MInVi7NV3Y8t2+Dgqha/Rql8xfXSJrtWD?=
 =?us-ascii?Q?M/oW1KePTKPQKQ3UR9alLFfhUD1WwuNY9errvuM4lLhft4VArXJLNUlhMcRI?=
 =?us-ascii?Q?r7y7CYKq4bKJxnUav0dNTjIAwaLIzIsezwkAl1JMZQCYJpQMuYId+ocdAWFs?=
 =?us-ascii?Q?XXB4g5iF3CswpAGpE4zDTEWNYAkiW8WgQfuROMjhr6EFZmB3oKog0QidaZL7?=
 =?us-ascii?Q?1dW0mIGHUP3dHnbl4SycqJEQdsMRmD+jXLv2CUXVevLNew97Bf6//RapZNy8?=
 =?us-ascii?Q?8lRyObtRk+J1S/Wbo8T0hr5cGaZ21LvDRtWwON9U7lPtAIzLJh8vp8C494F0?=
 =?us-ascii?Q?5iR2aN/F2saFA14BopbUjQQz/id4ek2EYK/kgljzNtMLlnhjvM4j0poCakpT?=
 =?us-ascii?Q?6FxiJylmdaaNzOu8mvt/2BXTEInMr0QFpfrDHKT/8d772oZnRFmcxDQvWKlI?=
 =?us-ascii?Q?nfOZMqDeODHHzZV30iN4srr/hkxgL+0Y4TWdI64hcJol2XHli6fQtRbMo6TJ?=
 =?us-ascii?Q?EFIzV16BcdUQDll+tSYLvUVBchtZ+Wp1/sZc+L1itQ4nwnrrhDO7GfLE4Cuf?=
 =?us-ascii?Q?QHZTIrgrN1uSnaWma99ZFLi17Qc2nf9ujCXcgAXOXDnIjHeiznsy6lDpkokS?=
 =?us-ascii?Q?5/ClM/38bAEHqcsmiVNOpPzosodOOVWBos+MmfZ1UAT37k+cKraBeFej5tB5?=
 =?us-ascii?Q?8lmzZ/ZblneD7Ef7dU/+xqdAbsM0+4dsFd0WruSmvaG1Eq+r7quqNkYlxHDU?=
 =?us-ascii?Q?ahQGIv6Yg5zNZg4FPHSBD6xXIXV7Ghgl1d0KrquiUeP2fTKlpBnHyeTIG9f+?=
 =?us-ascii?Q?2F6HkNygMoe+Qappo8Du4Rt+7vJVs60SuD/r?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TseRY8BbeHU14al1r315IbUfOFYcLJrJB7B6676pCjGmKBDeyf0yGOl9nbjs?=
 =?us-ascii?Q?14kmSk7mhgTjTbLQdgbku8OKbUnHskkxV84BJElxQrxttzajVzVETcV69gvb?=
 =?us-ascii?Q?jQRLSG7P4aykf0XC3ZrcIh/HMWb3r9RMoxv2Yd9G5uAUncnNCa7zwO0XaCkx?=
 =?us-ascii?Q?q5NLdozVx9cdR6Crrkh7+3E+9UJoul3FcIF4DOX3EIJ9fiSETKiBKIMdsUPx?=
 =?us-ascii?Q?gl+MYHtacF8LB4A3PiQDdEK8FQOpVlhPPw5JxhdYs/7I3NFcH4RHbB95hJhT?=
 =?us-ascii?Q?C9tJbCpCYDMzkXyjyauZugfoXphLl6OyRm3CCHGHUdy0L6Pc/9iiZkyoG1YS?=
 =?us-ascii?Q?MOpG2LZ2a5BUGCGSr78HBgbFYSrlMAA5V9Pwy29rCQ4UHqNZUW7QtMkJidaU?=
 =?us-ascii?Q?tewvXpPxU0AZUnQi6F3oRXHdhLSz+p3/0aMYjJArg2Vs8n4DM/xOvtsBlsVP?=
 =?us-ascii?Q?CJdoB8BnGfHmJPbjohMotiyqDWNm3Km7E/HBVlEivddeRLY3HYpGLwWfsA+e?=
 =?us-ascii?Q?hArbpRhvAQmBTpsZLaMqyqh4koZdkLErNtoKnR8lavEfC1Y586Jgx16fwURO?=
 =?us-ascii?Q?2+XHMgT+GvMQL9NIoGS/yqOOUe9SWLVffNHk01oWMsnHLDb1eE3qu+lSbJCN?=
 =?us-ascii?Q?mznRGMaiKXIXcWFVcv7WMGzptpwVZL8vYS5FG9vSSb7dOw9A7ilqm4dDs6lZ?=
 =?us-ascii?Q?58sI0UOZvliNwwZgwUjy9EI2eF8C9/PjNb7eT90/kOERz/HfjMoWarCwza3u?=
 =?us-ascii?Q?d/CBfYhMwSwH1COX3NZvFUKYfqboZQcTRzSChmBa7+hk2xvh6HsX/TSXr26W?=
 =?us-ascii?Q?DCGSSyq43pH02m41um28w/08c+nV97FsVRa52xODqqK4rLbVxpNuuBcTAWmW?=
 =?us-ascii?Q?xHV/JgO/L3LFSR18PxecbvAFEbIxqVloWnmqp9W4pTWJFWCGUuhlmLfZjKMx?=
 =?us-ascii?Q?kEojqm+DQrSbvZo2OLpG/QpsH9Czz6lNpTCo/hjdsnjXGFE4JoOIMww9TkHO?=
 =?us-ascii?Q?FdI/8t/s+KKVSJRSLmVsm4OakJj/Xj8adcyevBO9W7WM8j6zeOWMY0OgSVy7?=
 =?us-ascii?Q?JQhdqgs1L3eScMn6THxAvxsFymaRZQmL5B5jKmNj4DKKL2JwpEvE9ItKhE6+?=
 =?us-ascii?Q?CN2qKzZjcpVpEssaJWmYvniGF/PtD+5UsaH3i8bL9j373loPwXwAw2nR4oWj?=
 =?us-ascii?Q?+uQju74QsQTxDNFwvfLOmaDApITEeu1lu2Lgopo46Gx9JFc1Keks54g8yzal?=
 =?us-ascii?Q?sIUxONN+fB5mCAT4F0WoqiwPh30oOVPA4rp1lIVqtgmlmss4ly1CukLmzw76?=
 =?us-ascii?Q?cBr8Es9g7gNGOWqLhlK0OpufFLhvAf0lk/EBoWAJ4rX5GkznNtunF50C6FLu?=
 =?us-ascii?Q?HEf++5PG9EUcL+AzghJysYqhF14uQFRd6dvknHWquL8rNvNrTWoDoypwBl1R?=
 =?us-ascii?Q?HIBnTBetdFDbQzYVDKO4wIto/uvb9rs9dnhK3pC47+/SnFDzxKPFHEWeDS8Y?=
 =?us-ascii?Q?RaChkRTedRwhCjEfLBuMP1WQBYGxgEiZeY1GaE1DteALQH34FeDFcQk0aXpk?=
 =?us-ascii?Q?dDK2IWhW75DfZh8VnpMQBybQ+tnK04JvqIq0CmnsHRwUfhA+AF/TcSowA82D?=
 =?us-ascii?Q?+L1ZTtfvGE70wnOFGx+Zs9VAP5l09aU+lY6g+y4SaxbxrC4nbxGHZn4cTPXO?=
 =?us-ascii?Q?MPdVEMNmvs1XHStaHGfDUgb1B6lkFMRpEvy1DrgN1UhNzVgMaZ0L0BGd2T/X?=
 =?us-ascii?Q?Wjs6gXHpUA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0c5b90c-9945-4b72-1a19-08de4df7bb3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 14:19:12.6492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BoJy42io4YRy6jHu6Zp5kVkZVhqP6ZbB/5uI7VV7gW9QjTBKd5abmx6eloRnDIxcld9mIhcUZEbL6B/fQv4kYPvCp+ow2EXexJlDcbggc1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8756
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767795558; x=1799331558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nyU2ykFduzjVTww25jSR1jIt9xHHVrQsxkIVUJc/Rlg=;
 b=GShbsD1HMhujfsCcrP6/6uYy2uVbDq9gcjhupYpX0YSFVzr0oMo5GNAy
 XA7wsNprSVRwCrLRgMm1lz8S/EwpaCE00zcoO2bNL0qqNAwQPCAIO99Ni
 ImIpJy45IsdyVAZEWaKfh/HQm2RSyfgafrXNWmrz52cV6JR/PVurSajkK
 Rp6RQ7A+x71xf+aSrKhxo88Z8bAG1dWELzXMF05i9/G6jSWD4coxG2xrV
 sCCptIS2cnMuoh8ug0FEZ6b52Q1je/4TPKU97mw7rWIbJmep2vrSshl1U
 6U5oqqsd3FUN0Q0C9PqgZlzykgwPcsIcZHALraA+jBapQwegiPFydwRlL
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GShbsD1H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vi=
taly Lifshits
>Sent: Tuesday, January 6, 2026 11:04 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct TIMINCA=
 on ADP/TGP systems with wrong XTAL frequency
>
>On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware XTAL=
 clock is incorrectly interpreted as 24 MHz instead of the actual
>38.4 MHz. This causes the PHC to run significantly faster than system time=
, breaking PTP synchronization.
>
>To mitigate this at runtime, measure PHC vs system time over ~1 ms using c=
ross-timestamps. If the PHC increment differs from system time beyond the e=
xpected tolerance (currently >100 uSecs), reprogram TIMINCA for the
>38.4 MHz profile and reinitialize the timecounter.
>
>Tested on an affected system using phc_ctl:
>Without fix:
>sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 16.000541250 (expec=
ted ~10s)
>
>With fix:
>sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 9.984407212 (expect=
ed ~10s)
>
>Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>---
>v2: avoid resetting the systim and rephrase commit message
>v1: initial version
>---
> drivers/net/ethernet/intel/e1000e/netdev.c | 80 ++++++++++++++++++++++
> 1 file changed, 80 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethe=
rnet/intel/e1000e/netdev.c
>index 116f3c92b5bc..edb72054d0d9 100644
>--- a/drivers/net/ethernet/intel/e1000e/netdev.c
>+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>@@ -3904,6 +3904,83 @@ static void e1000_flush_desc_rings(struct e1000_ada=
pter *adapter)
> 		e1000_flush_rx_ring(adapter);
> }
>=20
>+/**
>+ * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and=20
>+system
>+ * clock delta.
>+ *
>+ * Measures the time difference between the PHC (Precision Hardware=20
>+Clock)
>+ * and the system clock over a 1 millisecond interval. If the delta
>+ * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
>+ *
>+ * @adapter: Pointer to the private adapter structure  **/ static void=20
>+e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter) {
>+	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
>+	struct ptp_system_timestamp sys_start =3D {}, sys_end =3D {};
>+	struct ptp_clock_info *info =3D &adapter->ptp_clock_info;
>+	struct timespec64 phc_start, phc_end;
>+	struct e1000_hw *hw =3D &adapter->hw;
>+	struct netlink_ext_ack extack =3D {};
>+	unsigned long flags;
>+	u32 timinca;
>+	s32 ret_val;
>+
>+	/* Capture start */
>+	if (info->gettimex64(info, &phc_start, &sys_start)) {
>+		e_dbg("PHC gettimex(start) failed\n");
>+		return;
>+	}
>+
>+	/* Small interval to measure increment */
>+	usleep_range(1000, 1100);
>+
>+	/* Capture end */
>+	if (info->gettimex64(info, &phc_end, &sys_end)) {
>+		e_dbg("PHC gettimex(end) failed\n");
>+		return;
>+	}
>+
>+	/* Compute deltas */
>+	phc_delta =3D timespec64_to_ns(&phc_end) -
>+		    timespec64_to_ns(&phc_start);
>+
>+	sys_start_ns =3D (timespec64_to_ns(&sys_start.pre_ts) +
>+			timespec64_to_ns(&sys_start.post_ts)) >> 1;
>+
>+	sys_end_ns =3D (timespec64_to_ns(&sys_end.pre_ts) +
>+		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
>+
>+	sys_delta =3D sys_end_ns - sys_start_ns;
>+
>+	delta_ns =3D phc_delta - sys_delta;
>+	if (delta_ns > 100000) {
>+		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
>+		/* Program TIMINCA for 38.4 MHz */
>+		timinca =3D (INCPERIOD_38400KHZ <<
>+			   E1000_TIMINCA_INCPERIOD_SHIFT) |
>+			  (((INCVALUE_38400KHZ <<
>+			     adapter->cc.shift) &
>+			   E1000_TIMINCA_INCVALUE_MASK));
>+		ew32(TIMINCA, timinca);
>+
>+		/* reset the systim ns time counter */
>+		spin_lock_irqsave(&adapter->systim_lock, flags);
>+		timecounter_init(&adapter->tc, &adapter->cc,
>+				 ktime_to_ns(ktime_get_real()));
>+		spin_unlock_irqrestore(&adapter->systim_lock, flags);
>+
>+		/* restore the previous hwtstamp configuration settings */
>+		ret_val =3D e1000e_config_hwtstamp(adapter,
>+						 &adapter->hwtstamp_config,
>+						 &extack);
>+		if (ret_val) {
>+			if (extack._msg)
>+				e_err("%s\n", extack._msg);
>+		}
Please use "if (cond1 && cond2)" instead.
Piotr

[...]
