Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC7qNnKm4GlZkgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 11:05:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 853EB40BFD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 11:05:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D0A402B3;
	Thu, 16 Apr 2026 09:05:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJpuOpR31F0D; Thu, 16 Apr 2026 09:05:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7801D402A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776330350;
	bh=aMWjFtAwvh05P54+jsbiO0MlgwD4Eoy4DyzA+vGQKlY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G7IuWo43axVw14P7sUjubjulzLO2YDOU1qADL0h9EajfSjWyf4yi1JE7HF3RzVyd+
	 Qr0/pGb0Gs6FEQUb4jLhJ01mV3F9N7Crpzwyid1SuH9W572z3QZ9LEXmVN0m5hsK6S
	 xIwkn8ks1HI9fh8CRad/hhv1h0gCDmOpSSRcWrMQGDa1R903JQibdBUJTpZJlAHk17
	 L4NobHBShA5d2keGJQrHnINZUBLlpiqQFSJlzwAnYUW2LUwX3Ej6hirps37EX9jApz
	 gd1veceYs+R7YMxeujPRSiSZpPmhzv97UCIHfcseVzmYGvK82VZa7gflZrD1Lbr8yp
	 0ZNMoGsWag03A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7801D402A7;
	Thu, 16 Apr 2026 09:05:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3B81127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9753606CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:05:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qZc5bXRJyzHX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 09:05:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F15BD606B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F15BD606B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F15BD606B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:05:47 +0000 (UTC)
X-CSE-ConnectionGUID: lB5xvFqsSQ2/IG5UeozMQw==
X-CSE-MsgGUID: BYXJoIsBRYmif9UESRPqpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77299195"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77299195"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:05:47 -0700
X-CSE-ConnectionGUID: 1l/nD6StQt6nxZiVjjL6+g==
X-CSE-MsgGUID: Z4P/Zz4hQMyXOLPNmnTi7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="226342155"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:05:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 02:05:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 02:05:45 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 02:05:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K0EtxCV1aZ9VaiX8udd88+zmSouJaAVDKPG35yxdbyFVHLFMcxKUnK/W+14ZqgV+7BoitpfRuGtdeenmUWRxpyqr68ZhNAgs/1i5Uk+HfbSJGK3DfiQg5Sj3Mg9AXm7Pst8ei5BtJTibRoGw792NBdmF5B1HTK9oPbZKrFOwXCm2Inzyye0r9D9bmb0lchrG568ryU1i9iDlseVk4XRdS6ke5Cv3nk1rAKv39FJB9K2QXP3+DV0dC5q70kkS7Nl3wCImLz3EdOATQ3StZCioO/hsJurrclBaMXf3UPFA1y6YgpLLAucf7Cv7bMI2aBHx3D/JTzIU6zXxgGQNGjEYFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aMWjFtAwvh05P54+jsbiO0MlgwD4Eoy4DyzA+vGQKlY=;
 b=TrYbLa1IYoBzr+zbCxRbUeqenZDZ1xeuMJ3OXu/Ap3D41RjRRpxoPt9XV9gzguFhPZSEEjG7eFUk1lDIMUzb9xW5170oC115oldOd7+nr9WTVxa2yG0Nlj9c5Drec/cNKYZW5I/c+rfXMGXdMvqZCWoE6b764Zg1PXKxjFP1uYQFfBg0vQaY0LIstSR+PMA9K0G2CPxnsNwPHv/wdPGuHx9AKEj+/N8MqSIhizDh6BiRuKrQHNf+Mmp3XvJtcJ+PQM1tgTpfBI/V/ofL1gXNRhpVtMczt0E0m/sbrUkA4twOqfj4NcwfndKO7/T9qPJ3bFTEhlQS5mbO//FS3JarLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB4998.namprd11.prod.outlook.com (2603:10b6:510:32::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 16 Apr
 2026 09:05:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 09:05:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Abdul Rahim,
 Faizal" <faizal.abdul.rahim@intel.com>, "Looi, Hong Aun"
 <hong.aun.looi@intel.com>, "Tan, Khai Wen" <khai.wen.tan@intel.com>, "Faizal
 Rahim" <faizal.abdul.rahim@linux.intel.com>, "Looi, Alan Chia Wei"
 <alan.chia.wei.looi@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/3] igc: move
 autoneg-enabled settings into igc_handle_autoneg_enabled()
Thread-Index: AQHczUdidN1z1jWSu0KNazCuWSAS/7XhZcHQ
Date: Thu, 16 Apr 2026 09:05:40 +0000
Message-ID: <IA3PR11MB8986F372515790F3D6F4D03EE5232@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260416015520.6090-1-khai.wen.tan@linux.intel.com>
 <20260416015520.6090-3-khai.wen.tan@linux.intel.com>
In-Reply-To: <20260416015520.6090-3-khai.wen.tan@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB4998:EE_
x-ms-office365-filtering-correlation-id: 49a27a6f-11e1-40b3-10c0-08de9b975586
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|921020|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 6FXPxZMB+u7hNJbNeD6UKd0Xn7iVzvn39XiPZavdqsyY1ek6jf3Tk0XMzRX/aBycEPln0bCvCsEWm2lhrP/lcS2VxXrQ0bzCyowGLO0fSgBqkjgtRpzBsguW5+jyZIjuEGRKzxbASj9tlI7Ba1SWbaGcF9aakvuNdRJkvKtiPOTQN5THuUg7a7GDWBOGrQwnS8dauw4RQnRQTJyZ1+ptPVU9JLoc/wDiqPRchr0z3JmtFSqO5Py9VuWnYQ3/RfqZM+H6irHZAJzeQOby+2e0A0ihmZBu9P5kmYfbDfl9ZuGa6w8qyCusnS6jfCRXtdrfpwyraMSE7ieVH7pa64aw4IK2xf0hX1yIQyqzALGojGjjsodej8F10Z2/XxFaNB3/Bi2h+yIkGuEdtaPiKRUYanlmZ/qVYC3bl3oBytcORE9N7V9OHNui+Myyr26xl4bX3xmxSrYDUuZy41AD+PP8wSAHOZeTqWTmsQF/iTRYUFsRgOyK4YcFTOAb4aKp9+6o78FUZ48cXNFxFDit9mWJrelxn027VBohkO2NdVYgxsvVmRFVJezLiyGvIrwdSY6p5BYv5u+Kchral6eRi7J+GNvvoEwAXeLi5EDd4R6LVIvZ9c6PNt3gnrwdboATmSLo2Yj8DFGagL7mhgLOo0o8uCDsdSO33UAZcXin+hiQMRBWAl1jyx18YtK5eYnSXqzIgF2AQRS0GY6IiNgrdmxQ+mxTFG55GMNbaGZu8z3OMEJNsm/yQkDh8RNkffmPNeCfOkZ8297Kud0ofeLTO98KI9kuJ+36NO+HV42Etn2uK7c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(921020)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t2LhPx91HP2vqgE3EX3CE0GwvqemOepVfI6T4wrYjPxt+oF5pBlxEKUtJRr8?=
 =?us-ascii?Q?cRXYAA3sEQ4ulbNEZP7z4LhNNsFhCakvj1nBusVhXEJX3WGb4Ty+Zm18lVaj?=
 =?us-ascii?Q?hbxCDrN3ZMW1UdshJIRv2sn5sykRLlGSlHDB1BT6kXj9PhUQ1gt3kEmwo4jo?=
 =?us-ascii?Q?01BC3TLv3JAOlgRG2UdU0LrH828r3kNoKvdEHmsls2FJ3TR9gjpw3vu5pDsh?=
 =?us-ascii?Q?MPW/0bH5uYUZrx/uYj7q0JNc+RoAuYqOt0ugfX/GmHcOX/hoUy/uMkxKldky?=
 =?us-ascii?Q?UJb2t/mgK5w87GHDeGl7X3VimeawBoYokK+wF9KRJ8vKGNT2B7GKAj94+K/+?=
 =?us-ascii?Q?uQYo/ETpJC/73LAaZYkKDq5TgDNEff1l8669UD5F1FpvQyUny5TZZ7MMCMpJ?=
 =?us-ascii?Q?lLMVN56o8BTfHau2Uulr2RqZ3NGlDv9LbYunLyRo+oXwFhmUvI60YHX2LkIQ?=
 =?us-ascii?Q?LcrG3yR0VctUVswHFPdD4nQel55RmD7Bym/6ogVev3nrQbm0urNhS+WGm974?=
 =?us-ascii?Q?3rlFlhbnI+ojK79Yj7VfpzdH/mz/1Gi+y5yL+qRUGNxz9limhNppFbSYkw/E?=
 =?us-ascii?Q?8wV6K5B1V4GEtO5y+jomuaM5Fq9/RZsij0rLXDhvqGIcu3CZrkxC0HrTqdDz?=
 =?us-ascii?Q?cU6beca+2snptAK9musWjWtwRX914gXtnJ9ErnfOmj77Wz9lmbpMttbyfUT4?=
 =?us-ascii?Q?XJR3nZsyRDYyMtS/nl+63cLvtyDJ+1xXnAnGr/izFau8c2TdjTvDQiowVFQq?=
 =?us-ascii?Q?3cwrtsxzUOZwVnLXCbhuL9ZpRi118ln+TfBEjSDAwPElbllR/aiWNnErxaC6?=
 =?us-ascii?Q?IvfjZINBKIwCz3LoDhTchAw9AD3coss+UxPphT7t+z9Cum+1t9Ar7g13U6Ks?=
 =?us-ascii?Q?TA4uQla/TJ2xhRoy0wkPibuHozC8pZ/a8rP3cIN5Lvdcq2uqu/qHGAvmJE4u?=
 =?us-ascii?Q?zdF7blY+e/rWcvV4q6wyVkufHrA0ABz7yyO6pjVfG+vXgZd7L+jM8JjV2TQn?=
 =?us-ascii?Q?h7iViC4Jq5VRyXKkviVh1HCbZ0cxWA2uXvJZnP+5UViPGd5b5m6Jcg1q3MF8?=
 =?us-ascii?Q?MGSlh2TAa0Ui8DFUmJ9FJgO1mxScwSEgHmwH02X+RQXo6Sr1i3KsH8Ulc+1l?=
 =?us-ascii?Q?qJU3qGz8M1l/Ktl1zQyniVIlgs5GFhDDPWc4EWwLK7STQfygpqMCiZVWpGQT?=
 =?us-ascii?Q?Elck+GW8D6UTPlzmV3PVIrQBl1toaBw5sn3yHA4km38kaxwDybm3+VvKyJ5e?=
 =?us-ascii?Q?xEQGpjqOiyFdCY+leu/GLvhfc5Z7AwN/xR+/o4FmH2qyk7YdWaO7voJcvjku?=
 =?us-ascii?Q?xMYTDDnnz/HAExFl8AAz9cc5et9tHO9qslemq30xLIcu+SQejvxlzTziZNN2?=
 =?us-ascii?Q?7I4ubSTF7yzfSNvA8V5P+kG+uynrS/uOhl0yHrRIzLet0lszt8ZRQ2tgcGa9?=
 =?us-ascii?Q?qhRpY1bxgH5tguRGcPI1BPosOgmvfxnXKCUL++54HoIEce4CZIiNH9aA5hH4?=
 =?us-ascii?Q?AmgKQR5m3mOehUR+ujSK+J8t8/ulnOOCGrF8SkldOq7qjJCewDlP+K1x62iv?=
 =?us-ascii?Q?EQO79DL0YXCl/FyeA7htSEAItII+r+5jwLqdbALsBdftA26gIax9xmxGi0RH?=
 =?us-ascii?Q?qRbpwgjXJaCpe14BVlskpqRKZ4MmuKzfRsdRUYnI0qGk0g89hah4iUn3S9ml?=
 =?us-ascii?Q?2IJOeSn+N4/8pjSWo7QCISiqK5KcTMzm05gaGsA8aANGurXqIXU/wWtY8vvP?=
 =?us-ascii?Q?XN1nkZJjTLwV53Ji4+MAej3BZ6rasTU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZtF1CAfuoJRvqTacySY/COXEGcTEMwRq7QVrMxYpgYV3hAIDFEsZ2dPO8HGjd8mKijeKmB78L4QlieX1uQHXqYBsmYuI0ETlf8BNY3nLmNU+AMmkC9DtfnpVARY0wu1SQsLhDWC8fyx+tHpPF3WuJHxMfzGZIvCsZ0bUwnLmwJDVJL37iAW5o1TZZm1sfkbv1flvUFb4OuiIPEIBdAJV1Bvf4DXFn4WSXBgrFnRqPz6d+dLrWsDOm5FtHvyyoixSmZ/TDhfVWDTy8u896TICKGRfk2DnehXkDTxmLBrmi2oGb8UH8Anqi25ilyiNq/dSArwtDIQ2MYVK8hhfi1nIpw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49a27a6f-11e1-40b3-10c0-08de9b975586
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 09:05:40.9697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CJWi71BO08NLUAVZXGEQksFfx+BloGi6nQJrVmhNm7q1SC9Uohid/ZGkbxlF8gZSbmg7S74qzFxIPrRuvuTwSzCpcA2LRizbY965q+Zz464=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4998
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776330348; x=1807866348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2wZs0VmgoKPqooZrROD+aysXOH9tpVqoGNc5k22bqAQ=;
 b=Bw3qbd3NtGPvFZu0ZBDFjxaXNpAbB8eZvq7a0bBC0g3V2IP2Qi/mrDeu
 vm8TA+876wx1NKgxJHnIkT8gKABNfVh6WGYGhn5o5afQXcv3IxKXSZAA/
 u/ZXhF301l0eY/O0wXog60gHuaIWkuZbOQTRksDUqXqISRgVgV/3H6weh
 LtiLlCxzAG8YLL+4lD+iVjV7CI8tlYxevQ4AW6NEBr6kFOoMe9QoNDB/1
 x+Yc1YOCYUriNMQht8hcuv7j/xSEMVOUnYXqhv3QN2E5l0pLuZhi1VNeF
 YfG0SxZeLZNaW9Q9wdIbMr1xtW0jVMY+RGOyTBAdX4cCA0kzGBb6ZEpAr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bw3qbd3N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/3] igc: move
 autoneg-enabled settings into igc_handle_autoneg_enabled()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	ASN_FAIL(0.00)[7.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:server fail];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:alan.chia.wei.looi@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,davemloft.net:email,osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 853EB40BFD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of KhaiWenTan
> Sent: Thursday, April 16, 2026 3:55 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Abdul Rahim, Faizal
> <faizal.abdul.rahim@intel.com>; Looi, Hong Aun
> <hong.aun.looi@intel.com>; Tan, Khai Wen <khai.wen.tan@intel.com>;
> Faizal Rahim <faizal.abdul.rahim@linux.intel.com>; Looi; KhaiWenTan
> <khai.wen.tan@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] igc: move autoneg-
> enabled settings into igc_handle_autoneg_enabled()
>=20
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>=20
> Move the advertised link modes and flow control configuration from
> igc_ethtool_set_link_ksettings() into igc_handle_autoneg_enabled().
>=20
> No functional change.
>=20
> Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 72 ++++++++++++-------
> -
>  1 file changed, 44 insertions(+), 28 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 0122009bedd0..cfcbf2fdad6e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -2000,6 +2000,49 @@ static int
> igc_ethtool_get_link_ksettings(struct net_device *netdev,
>  	return 0;
>  }
>=20
> +/**
> + * igc_handle_autoneg_enabled - Configure autonegotiation
> advertisement
> + * @adapter: private driver structure
> + * @cmd: ethtool link ksettings from user
> + *
> + * Records advertised speeds and flow control settings when autoneg
> + * is enabled.
> + */
> +static void igc_handle_autoneg_enabled(struct igc_adapter *adapter,
> +				       const struct ethtool_link_ksettings
> *cmd) {
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u16 advertised =3D 0;
> +
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> +						  2500baseT_Full))
> +		advertised |=3D ADVERTISE_2500_FULL;
> +
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> +						  1000baseT_Full))
> +		advertised |=3D ADVERTISE_1000_FULL;
> +
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> +						  100baseT_Full))
> +		advertised |=3D ADVERTISE_100_FULL;
> +
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> +						  100baseT_Half))
> +		advertised |=3D ADVERTISE_100_HALF;
> +
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> +						  10baseT_Full))
> +		advertised |=3D ADVERTISE_10_FULL;
> +
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> +						  10baseT_Half))
> +		advertised |=3D ADVERTISE_10_HALF;
> +
> +	hw->phy.autoneg_advertised =3D advertised;
> +	if (adapter->fc_autoneg)
> +		hw->fc.requested_mode =3D igc_fc_default; }
> +
>  static int
>  igc_ethtool_set_link_ksettings(struct net_device *netdev,
>  			       const struct ethtool_link_ksettings *cmd)
> @@ -2007,7 +2050,6 @@ igc_ethtool_set_link_ksettings(struct net_device
> *netdev,
>  	struct igc_adapter *adapter =3D netdev_priv(netdev);
>  	struct net_device *dev =3D adapter->netdev;
>  	struct igc_hw *hw =3D &adapter->hw;
> -	u16 advertised =3D 0;
>=20
>  	/* When adapter in resetting mode, autoneg/speed/duplex
>  	 * cannot be changed
> @@ -2032,34 +2074,8 @@ igc_ethtool_set_link_ksettings(struct
> net_device *netdev,
>  	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>  		usleep_range(1000, 2000);
>=20
> -	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> -						  2500baseT_Full))
> -		advertised |=3D ADVERTISE_2500_FULL;
> -
> -	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> -						  1000baseT_Full))
> -		advertised |=3D ADVERTISE_1000_FULL;
> -
> -	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> -						  100baseT_Full))
> -		advertised |=3D ADVERTISE_100_FULL;
> -
> -	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> -						  100baseT_Half))
> -		advertised |=3D ADVERTISE_100_HALF;
> -
> -	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> -						  10baseT_Full))
> -		advertised |=3D ADVERTISE_10_FULL;
> -
> -	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
> -						  10baseT_Half))
> -		advertised |=3D ADVERTISE_10_HALF;
> -
>  	if (cmd->base.autoneg =3D=3D AUTONEG_ENABLE) {
> -		hw->phy.autoneg_advertised =3D advertised;
> -		if (adapter->fc_autoneg)
> -			hw->fc.requested_mode =3D igc_fc_default;
> +		igc_handle_autoneg_enabled(adapter, cmd);
>  	} else {
>  		netdev_info(dev, "Force mode currently not
> supported\n");
>  	}
> --
> 2.43.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
