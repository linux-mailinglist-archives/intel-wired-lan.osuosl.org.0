Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIwWHTxB82kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:47:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D144A250E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:47:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47E6D429D5;
	Thu, 30 Apr 2026 11:47:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rvLRYeMhizp6; Thu, 30 Apr 2026 11:47:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1EE6429D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777549625;
	bh=qgqDP69rUdJOlt1tgDYbderoQdUZxDAlagEbApr4eZE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g23WjSeRqO/2kqlBbDf4QNzxSk9mqXhKmBTqsUNa0Jbp0Ffql/f3meDB/16s2yWgI
	 FwhpyXaMXL5OFwtFHcT3RhAOlkYHBNaZjpNYsIzFuAJLkCkvqEoWC2ij7C/PeBDWYd
	 wlOmkpyHInHBfWl6ZCv9oqdp9NFdf/qNZVlL3lBW8/4KGMm7rWcnh5PU/j4y+h0QJc
	 pl9UnjwnAw4lLF5sVJ8xITaqDh9QnZYzXIknvCERqOxruII7BWjHjHPJjgL/vJZnvt
	 mdIV1BLhEOdlED+keiN3IWcNEOALVHyhpKKDj/o9Uy0GnlfU/4vtFlUdxNOUpHFA11
	 pezdYip46Wqbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1EE6429D0;
	Thu, 30 Apr 2026 11:47:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D496518F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA21661C1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e8NVoO9icrsg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:47:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7C6161BEB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7C6161BEB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7C6161BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:47:02 +0000 (UTC)
X-CSE-ConnectionGUID: jCyWLIEPTBuuylOz/VDnBg==
X-CSE-MsgGUID: iB44goYgT6aAkwz2PtjKxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78551291"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78551291"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:47:02 -0700
X-CSE-ConnectionGUID: E1C8/cooRDyM1NWspOiicQ==
X-CSE-MsgGUID: ilstJwQwQcezy7ytwUGowg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="231916982"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:47:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:47:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:47:01 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:47:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OK1Fe8gQ12rXjoIHp2sLA1pEDQa09lVFGn9fUuRp5geYccl0T+3UiM5+XrnmBwlVBhLsEfpoM6kJbe+sf69eeADFVqyoE3oj4UtrljhDOEkvLHpy3FIjkGs6ZxJeyv9YrEwEstewZsFUbcop4rIgsZ7MuVA06Oij0NhBbd859gGCOkSlBlLbdmWqV90Y/FpjgNaoOtIcSKYsbpmQoOwRiJYJuMne6YY6biUW17TCcqi68CoEAC1IWEtMslPegGgHMegysnXWjIaluUuTbXL2yUdlXZA1J24TPuwN0swRSvF6ZJLrCunlKEXZ+wryKQZ+PjMHmR7W9Mz7YFi993FyTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qgqDP69rUdJOlt1tgDYbderoQdUZxDAlagEbApr4eZE=;
 b=ctyfvR0TgYoak7y0WZ3nMJtfNyJU7EmtQjbyqVu/w3OtlwTrYnSiVeRXjK8vGc5OTQnqb/eeYyJHt9dhLlFypbrsGUz7Cd0UP/ijCsip90ABvdxSxSap/1yvr/J+6NtYAduj25D7Y5suUF+oFKQRu+bKyB1PeAVeN/hX92mWBee8qu3XFWoiEpDRGupliDynsMoRqA1Q4Ekqj/b3GL86ZfFSHlhLdnMqwskkn8bfWvDYqxbKA5KJJRq5/WZAydRNNX7Ch1ayUBaaOu7I1m9PMGhZ4O/fTpWKzabRLkq6mcyj8C5FuYzgMsA1CKa4E4dzRYHhzMz5Ys0s3aGZqV7Shg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6125.namprd11.prod.outlook.com (2603:10b6:8:9f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 11:46:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:46:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v7 net-next 5/8] ice: introduce TXC
 DPLL device and TX ref clock pin framework for E825
Thread-Index: AQHc2IZoG8wmY2Y2X02sL0bK5p4m7rX3fKbQ
Date: Thu, 30 Apr 2026 11:46:54 +0000
Message-ID: <IA3PR11MB8986FF98531AFBFBD03D10A6E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-6-grzegorz.nitka@intel.com>
In-Reply-To: <20260430094238.987976-6-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6125:EE_
x-ms-office365-filtering-correlation-id: 5d65161b-30cb-4d64-5e24-08dea6ae2d4e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: S9Ahspn+wog1Y1RW9/3cJvn3jB2vG4oFa2byHoqW5ytajbGmFAhANpDwOswAGUDJfaLtfDfN/zULQUiGClYFWRbEORpFMpior5nPC4gF6vVonkuj/VYEJbEgbT6B6S8mKrBW9Y5gPkPAepC1g3fFL34jXJ1uV8tG8Thq5NUJ/+NmkHmea6sj0a8Pa0tI8vPwj8JCa8GXbP8yoGerChcqzVcqNRSRoDkCjSmRmXQN1r0c68EuTUU6wLY+MNsWr4KMYlW0gKnwpsUUi6kRK7JNHb9Zfmq6y9sDS68pqtyQzrx3Iqk8xHVe8eoosCoL91KVwa0fWP++/m1Cnwa6MSUbeYLXKYIqjVGhT5mLfElCNK4tAwAPMoDiFUfjldb39QRPtqg6Un2ZdtEeS7OKWmlBXfnU+x65MI43LZWAznwGsSBsY37+D/nGweTtpZ/FCh4ZOnQxEuBJjcG10VQHGRWP6KJR/5lDxJqxteeTC2g9hz2ycJvTBOifR/07y2qXGDxhw6RElhh3X2WdCLlnguznCoijJ1llf0G3On0z0zM09tn7Qnk39UZ0qcpg2uec/hy/4TEFe3+1epAqTlCRKsdhctz0L4a+x2Vjbump9gtjti3F8S0rOl6Tb2emZ7iuixr9bFV4HyGaZzfP6cbghwkT2RuWw0fTbsDZaD0/tV1hW3RWxXwVo9DjQ0TrKUZWY5favIxKo/Y60uIKwiAftsnQVCJ8XZtOMLkEiHf1II4AIO9ReXh5zqOSyrXyUykvzSsg9m+XCkTTMoYydoM39g4QnR0bVRNrjHlcOtpYBK25za0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XPzBeA0dfQ5dUiuFjtkX1T3Ld3Do0GEV2Po5pymrA4ipecniv9qGX2obBAgf?=
 =?us-ascii?Q?I++YayisPjMiJZUlwzwJCotQpuw/FXIJ+4+QGQUm5k79+lFkyEyX3ISgq18y?=
 =?us-ascii?Q?01rQhVtRIoUEVOaJFGN/gB/GahV6x4mIwI2uHzmVEH2AJx5teejh7TyehHmz?=
 =?us-ascii?Q?93iHAidx6mPYNRraU/RUR4X+bBcAWmKpA0ft7EsTVNMQRyy6MwyFoxbmqYO1?=
 =?us-ascii?Q?5rMNHBpFnKxqCwP9Oknz7kBNuF0+WS9lLxcXRjA/kzQlB4K0RCFc9/BZ053z?=
 =?us-ascii?Q?6i3pWyVEI6TQHZ7MslbZqLAmsNqi9JJqoG7falWmFYgjZ4gBUia/IUub6q9z?=
 =?us-ascii?Q?16ZYZuTS18owD5Z69jS45M5Rqpke/RaJlwD0b4eRhS7DCHZA1YSx5aOWh6q/?=
 =?us-ascii?Q?NXaUG7MCQRR8ioqKvhOksNzeykX13vXrzxkgGF5EN5j2T+TVxmjD7vQ+H8jp?=
 =?us-ascii?Q?II1FPIDSG2OLMo8hqJkoJL/mJMHEfvKnovdE/r00q/WAEh6nxMVdvKQVgE7N?=
 =?us-ascii?Q?pzjDflkm4elHXT1/+4xOqM139WlRS/pBuqsRs9OQF9ywzUzwqb7CppKs8yLv?=
 =?us-ascii?Q?jDZTgSb+KSzyAjFOupcxZ1aQ5PULxmZE3n5k0HCD51eqKS+f4f32M6hwLHkM?=
 =?us-ascii?Q?Q9QaZMRRtneO9NLBOuAONX6YmyUbviETcjq0nEUBvGWhV7bJHUGmQxsSe3QA?=
 =?us-ascii?Q?6+UsGAwET5/t6Uz+w29vwvdER41PSjhKMr+xl82FEn/7mI2E8jTuRCBFookQ?=
 =?us-ascii?Q?wfoeGF5RglrfSMRvtbQR5YQyGDAaYz44dc/4RV5dGeY/EbNgmZiyGxgEhCFV?=
 =?us-ascii?Q?xRhkoRN71czcQk3f3oAjt1GOHhvLZC+Onz/5KZKHElJL/hKJtzmBu079UB/r?=
 =?us-ascii?Q?epxxvs0w5OFFe9GlJZIZW2LUEVaI+rgHxGPUibqm9AstDsTm7tnte9S82Uo2?=
 =?us-ascii?Q?OaSwypVIZUisZS0o7iQpbN+2vVmbTX6QkMXIObcHBSjhA2vv+715c3WibPNS?=
 =?us-ascii?Q?2LrSZje9aHbJWaC+d2nI1wtqv2IZuCxGZir1HrmA2D7lHrb4yoIyaW6Jw8QM?=
 =?us-ascii?Q?LMOjuOGAAzyyt+pJJMHKbLIojnUxEYQYyd81TPNVO1IYv7ol5vv2H4gIp8tH?=
 =?us-ascii?Q?ItaAoxOgPkvznzpp6QuVPciIiJD5F9wb6AKivYLXsf3B0qa9ntIRZZ3k5h3X?=
 =?us-ascii?Q?VCKDpG3Xba9L27DNdr80gtM7SQWp7YfGe2+aePofuwWLE3Cr9K6CtoCREtWZ?=
 =?us-ascii?Q?QxfZd75clRC4yX4xKlZ6q4ZUT2iE9x4aa+CkkuOoA5aMSnXMyA40yCMSxpC0?=
 =?us-ascii?Q?/yO6r8XI5Hd+bEcETZ/uuMXftuQN+BNgSwrtoKgiJMAfPqwIQ6Te2kIGGgn1?=
 =?us-ascii?Q?rWZsBEBS7fgdPKQVvhXaBzOJRUN12yA0yL04s1kHuGJRfpicD/XrxAaMOpDX?=
 =?us-ascii?Q?qC9CLOkQJ0qurNGRcL1YYHa6Y6fOiJPpTrM/1YfOMccdY11q9cmdWhNp4l+4?=
 =?us-ascii?Q?2tlXQ0cw5e70l3H9bU2vA/fgbjuJuURTkY6TfmJdkdDjmo7/IcY9DzympBxu?=
 =?us-ascii?Q?Fkvh4U73Q0S6/zW9JCb/MYJlpG2QhPSnVq7lE44ikXktDVZukuiK2oO4ua4z?=
 =?us-ascii?Q?4MSRdGHWqESzgpOQAawRCovITeJOkFy9mhzNqV3zAF+6ZlmFhw46yj3UUTrH?=
 =?us-ascii?Q?bvtfNCT98edSf+AgazpkHdVTJzoeAmAqN8JSYeqS9eJHAsFpKFxRpSUAmPYq?=
 =?us-ascii?Q?juSV3mAK/0ejLvtSRQBPGfKKEAcqfWg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: COK2RR/MqIp2d8lXKJNM0AAcV0Tl/1cKSUSUxSvsN5m+PB2iYlKmql4WbShPryBMhA3xCvzNFzKaAR3opfhMHaKxZI91+YliqRRvV81ggRBHetKn0b8goD1Ig1aKUSGbl/WiO5WccvM3oaCLUiyc2NDz7kY274lVsiUpbNiTsn/ArZgxQi+8T5vwD9wDpUVrp2fjObGc1hS0BlIq23542cK/kEMpNyprPf2PVnm91YfWAfoLv2O2TIEPbaTK4ZqYrfOY04QHBZ+uLgMP36IcVH0HhYpIAZo0ET/xvOjtXT+EFmBrv7sRSprPw9o9aVzpnD6tAa1RHkORWUWU19UEHg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d65161b-30cb-4d64-5e24-08dea6ae2d4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:46:54.7300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u+mN6wAWhr7NTRoCvCzrB15XqXaRIMlK03hEgn8DQsyp2BYvy0yQ3+YchZtnRj++w9DzspiVSR8z5UuJKxC9VButph3LkQy9JMSlKnuhFTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777549623; x=1809085623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nFHgo6wm9MAuvZXb1jMBB5MTI9Zom4Pc4wiuPtuRx9s=;
 b=n1Pmcc017Oy67h6biRcUEIlGJwziHvz/yIvNrt+pCqRcGxwZbcSEehug
 oWa072YsPR+xfDtatoO1R5fV0n7E6KnC6gImkOWHTvYnNAEFkEdfSbcP3
 64ndScj2VjpX/NM3hjt9nIushc7BYDlNUD4+wjUfwTmE6mpwlDYWGpnti
 c0HU2+Jaq+h3PpUF4pltvtd6uga8thZlxXoACbHzkXxgcOYCZU5LEWJXk
 ySuSgTVIZA2PSLHeK5AvEFV762DoAqo6d9jc0gxGQDw8SI1TWP/bk/4r8
 ISx88YgLk210hDksfs0FbxIF/nqjfzJazuPmhshy5a0mlOA5CXYSpJbHX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n1Pmcc01
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 5/8] ice: introduce TXC
 DPLL device and TX ref clock pin framework for E825
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
X-Rspamd-Queue-Id: B3D144A250E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, April 30, 2026 11:43 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v7 net-next 5/8] ice: introduce TXC
> DPLL device and TX ref clock pin framework for E825
>=20
> E825 devices provide a dedicated TX clock (TXC) domain which may be
> driven by multiple reference clock sources, including external board
> references and port-derived SyncE. To support future TX clock control
> and observability through the Linux DPLL subsystem, introduce a
> separate TXC DPLL device (of DPLL_TYPE_GENERIC) and a framework for
> representing TX reference clock inputs.
>=20
> This change adds a new internal DPLL pin type (TXCLK) and registers TX
> reference clock pins for E825-based devices:
> - EXT_EREF0: a board-level external electrical reference
> - SYNCE: a port-derived SyncE reference described via firmware nodes
>=20
> The TXC DPLL device is created and managed alongside the existing PPS
> and EEC DPLL instances. TXCLK pins are registered directly or deferred
> via a notifier when backed by fwnode-described pins.
> A per-pin attribute encodes the TX reference source associated with
> each TXCLK pin.
>=20
> At this stage, TXCLK pin state callbacks and TXC DPLL lock status
> reporting are implemented as placeholders. Pin state getters always
> return DISCONNECTED, and the TXC DPLL is initialized in the UNLOCKED
> state. No hardware configuration or TX reference switching is
> performed yet.
>=20
> This patch establishes the structural groundwork required for
> hardware-backed TX reference selection, verification, and
> synchronization status reporting, which will be implemented in
> subsequent patches.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 296 ++++++++++++++++++-
> -
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   7 +
>  3 files changed, 286 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 62f75701d652..d839b50187ba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -19,6 +19,11 @@
>  #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
>  #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
>=20
> +#define E825_EXT_EREF_PIN_IDX			0
> +#define E825_EXT_SYNCE_PIN_IDX			1
> +#define E825_RCLK_PARENT_0_PIN_IDX		0
> +#define E825_RCLK_PARENT_1_PIN_IDX		1
> +
>  #define ICE_DPLL_PIN_SW_INPUT_ABS(in_idx) \
>  	(ICE_DPLL_SW_PIN_INPUT_BASE_SFP + (in_idx))
>=20
> @@ -57,6 +62,7 @@
>   * @ICE_DPLL_PIN_TYPE_OUTPUT: output pin
>   * @ICE_DPLL_PIN_TYPE_RCLK_INPUT: recovery clock input pin
>   * @ICE_DPLL_PIN_TYPE_SOFTWARE: software controlled SMA/U.FL pins


...

>  /**
> @@ -3199,19 +3276,40 @@ static bool ice_dpll_is_fwnode_pin(struct
> ice_dpll_pin *pin)
>  	return !IS_ERR_OR_NULL(pin->fwnode);
>  }
>=20
> +static bool ice_dpll_fwnode_eq(const struct fwnode_handle *a,
> +			       const struct fwnode_handle *b) {
> +	return a && b && a =3D=3D b;
I'm pretty sure that return a && a =3D=3D b; is enough instead.


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> +}
> +

...

>  #define E810C_QSFP_C827_0_HANDLE 2
>  #define E810C_QSFP_C827_1_HANDLE 3
>=20
> --
> 2.39.3

