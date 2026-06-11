Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GoDnEyt8KmpBqwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 11:13:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D88670488
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 11:13:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2ebFnYh+;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E43780E62;
	Thu, 11 Jun 2026 09:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wJTcXMWhAQhL; Thu, 11 Jun 2026 09:13:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D1F981421
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781169192;
	bh=tOJgGTF5afCKQLhEfVG7xagOk1lIt1kcGeUAJyiWuvo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2ebFnYh+IeXePiS8JiHBoLpc0UYLrcKVt2JpSu8Hjm9+iGfvYnjlCElhOkFl1PYTI
	 +cYSWisr7e1uQPp4a3aYh6aEesF2FGrMh4ClBcRWDvo10C5uPpyq8zUADimcOf0xkr
	 M/0uwtoFVcuCP1Cp32ItjNtYKFPwCJ5UiCPC7kp2Dp2JwB2+P5Av35B/wMCjyt8yUL
	 87rPTGYS4zEDb3NTocK74IqVztpiwp1eXiJfy19RaKfbsk/JU14kUXSJ3KckN+SgPv
	 voVrAoCZu9Wb3cvw98JHaEFriIKbbGhnw3BtaA2IgXVh0qZ0LlKWeX6tDFJ6XjqcUW
	 xCh1KPeqdKvTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D1F981421;
	Thu, 11 Jun 2026 09:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AFD2112F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 09:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 916F660760
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 09:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9zvbXMRKSXm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 09:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 99C1D60671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99C1D60671
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99C1D60671
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 09:13:09 +0000 (UTC)
X-CSE-ConnectionGUID: YFzEud56RsysNdiFW+n6QA==
X-CSE-MsgGUID: l/L8PibKQAy/LCSPyeX73g==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92542032"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="92542032"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 02:13:08 -0700
X-CSE-ConnectionGUID: XqlTUNyhSQGGI49Qt609Fw==
X-CSE-MsgGUID: N4JBYekZQTqBolH1n/uLWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="243981806"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 02:13:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 02:13:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 02:13:08 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 02:13:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fLPE5YHJSl0Fou8Xcbu3u/5iUm4kKt/Y8sJZ4rX0E0wRKljq5Zkz2MPUIYd17XDC7qeElCLpw4uPfrQnsGEvwYaYlmXOeEwsAtbKlTuvwwg4qq3Y/FDWlnFMv9laRRddbgyNi7ocOlVVduHEFJMj640k5dYDHcez8rJK25l7JlyseEPGArQz7pGquLv0NlQ+beMbfvVoMppsXeVn7HBQd15by9/5pJZPaVyFzQLPgIBa5460FRhLJelDROuzv03tJ4yHOKJmc0mDeFSRqTQr8Vi2I3HGAZVurFlgHaZEB1pbUV/PDVeARjNR5NyMfwZDBhMknEj/hTTjs/0/rjN/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tOJgGTF5afCKQLhEfVG7xagOk1lIt1kcGeUAJyiWuvo=;
 b=wKl0y93PRbQhRqCqQ50U6BTi04osSHm4apyAh65EB/SMdZ2ZvMXu78YhZKFgFxudrZHjPJb/7XAnE+agP9JF+xQuxbZDCiyA2oCYrBSdbLTBF2kLig8xhXAoEoQfdZ4lZ3RwxQdeYpd/ASkeRkzaQHiJVIRuAFQZ+O/ocXaiL37KHGJvk694xdVEKabkFwUrgRoAKjg25hyNwGlH3dUDou9Jv88cdRNls/GJvTNyo/mzZH593WRxQ1mShaFPWZgF3mx3JJ3yqhxMQ9OfYrwxgPIRFpPwHzFbStYgvKse2zIz6VdOXJmqwLu3Xc7ngsupc4+OIPhySF+BwzY9DXbwDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by DS4PR11MB9603.namprd11.prod.outlook.com (2603:10b6:8:34a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.17; Thu, 11 Jun
 2026 09:13:06 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 09:13:06 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Markus Elfring <Markus.Elfring@web.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Shiraz Saleem
 <shiraz.saleem@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: LKML <linux-kernel@vger.kernel.org>, "kernel-janitors@vger.kernel.org"
 <kernel-janitors@vger.kernel.org>
Thread-Topic: [PATCH net-next] i40e: Use common error handling code in
 i40e_register_auxiliary_dev()
Thread-Index: AQHc+LIxYmXhpCmb10qi2ZoxXKQSjLY5EwcQ
Date: Thu, 11 Jun 2026 09:13:06 +0000
Message-ID: <PH0PR11MB59022C0CC5B22FEE5F442501F01B2@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
In-Reply-To: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|DS4PR11MB9603:EE_
x-ms-office365-filtering-correlation-id: fcc03b1a-e3c1-4478-f674-08dec799a5ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|23010399003|38070700021|921020|22082099003|18002099003|11063799006|56012099006;
x-microsoft-antispam-message-info: qSnjguInselxc6ouBc638ZfZibl22wO9MI0R1Lc4UUqx0OKu6/fyd5tLJi6XFiCN9W45wu9XHg6g5jgw8QW1MK+NwGePc/7kWc+KZEC+nt/iVS5QGsTVOBsf7N9Y8r76K/Yi6q5/IMGcIbexs/Hj5x7/Ivhd3Qsb589ob2bF3xJnBFNidksZwTSiJVyV0ppcggRjyeXaqwZpPfjxarMD1rcyAx9lZc5g60LT/OENAeruwSiVHovo++Yaa2t20dMcth/jpzYvKyZNOuRppPB3OYi060AKW1CA06gw4r8hi8VWw5ztl459oSluEkErJgOiuzJfYQHVAyncYuF+UZoEkiYlnyE3b4zH44EX5k5KZK8eMfbZ1mqHz7uwhlJ/INVSlWhSH/QYtT7tK6tq7dVPOri8qC4naCwA+aRIZeXVF47YpVmM4uah8InMYoev3OuIVnApN58o1+pkhIRHRHODveZJ9KWVtPfhW60ne/vElL1U2IGZTC6iTdb8Xb4+6dqbeiVwAup9JTQU3vwzXmtZpbZ1pVGZGPr8OevK9TIHxl3JGVlhyI91AuDiV5yuEEbZ+sMbJ/pUDa+7PwANTgcylAJQ3GNZ73/YHjd/jYKQZt1fVuHcrZg8mjlL2A+G82doLlfADa0xOaTQwY36D8Cj2yajJKFGHBkttfY2FXkDOvNIJvK6NUtCh7lIBpU8jBpHt8FFDqlWkjyiywZ5gxvUdfXqyIacIHXkG/fV0Dy9eg7GMvKENYYbtIfwjNHmJ3EAmpiseMLghPgPOeh9PBpx1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(23010399003)(38070700021)(921020)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDIvNEVLcTRIcjJ2QzNnSktFRHhrUlZTa2NBMEtLZDgrTk1lcGRrbC9Qd09o?=
 =?utf-8?B?ZDlJRHgweDhZZi9OZmQza0F5bDkwcC9HK0VnRnBBck5Dd29CY3J4Vm45KzIr?=
 =?utf-8?B?TG5IUTFHaFZmVENobnpFR3M2TFVITWNueHRoSk5KVExlanFubGJJT1BDamM2?=
 =?utf-8?B?Zlpnc0pyWjVGVFp6SzBNT3dqY3N0bE8ranpDejB2b1pFNTdEMzZMNEZsUFRo?=
 =?utf-8?B?Q1dCYUIwSHM5UGhKVnNLeEZrOXRoRXpDREgyWUgwb25EdDAwQ1J5Q21uQ2ZO?=
 =?utf-8?B?cEVmRUNZTXUrNER3OTlCYWJ5eHFMYTNucVVuSytsck5FUzRleEoyekVWSWw2?=
 =?utf-8?B?MkpZVTliVEQwWm5FNnFTUUMxL1J4UVJIenJhVnR2bHJMWG94L2prTldDZUxJ?=
 =?utf-8?B?Um9pTkJMVmI2UlFzQ2JEWVo1NlZjbVBHczdOZldERElmUHFOb0dRVTlSRk5o?=
 =?utf-8?B?bHN0VzBwdHI2WHltUUVMQjNSQ2JTaWxEUWJZelFtdHdBaTVKUEJzeDJOVkh0?=
 =?utf-8?B?dC80UjhoekxQNVNjU2Z2QWZUaVlva0lkNGxrU01LN1IrVkJ1U1d1ck5vZHJR?=
 =?utf-8?B?N0xxN0g5RUdOV2ZHN0lPb0dEQ05FV2NPTzNmcXJWMlh5V0xTNnRxVWFGYy9u?=
 =?utf-8?B?NlpOYko0cGhJSWFiRmo5Y1VpaXM1TitBK2hQN1JyYytvMlJxMUhZSVFxLzlK?=
 =?utf-8?B?eU1OYUovREtBU1BWSkhoRHdrZGxkRUpkbWpIcjZBSG56QmhrVlQ0bXVEdEx1?=
 =?utf-8?B?STZ2Q082SU8xWnpGdFlBWnFIQU9BTy9PQkk5MmFJYmt5MGo1c2dlZHB4Ty9W?=
 =?utf-8?B?Z3p5bFprd3RZZXowQlRjODdOOXU2OXIwOHY2K2NTdUdqMTRXaEhJKytDU1lR?=
 =?utf-8?B?R0psSnh5bWlObjZmNENBRmxydWVIS1BFQnRHYXh1Y0hHNUFaWW9BSm80cFVy?=
 =?utf-8?B?Q3ZRUkJDT1gzTkljRVJKUmFFb2ZlQlRuZG0rTWFSQm40YW5SVmliNzIrK2tt?=
 =?utf-8?B?SjdnWFdYZk1rUFlvejZPdll3S3ZwMmJqTnVqV1VMZTNqVWNtbmhTekVqZDBi?=
 =?utf-8?B?RHViVXV6aytQNmY1VnZqOGJTVlAyZjNCdHROQ1RzN2phSE1JcE9hZ3ZZd01t?=
 =?utf-8?B?MTYvdEJ5NThmNHpnQmx5d3lURXNlMEUxazYrT2ljWHdLalBUMHBuMHpEazF4?=
 =?utf-8?B?aHgweDFIZ3hLYXJFZ0Y2Y0p0bXFDdStwaWRnUGJLV3FkK1lPdzByNWtMRkU4?=
 =?utf-8?B?UTVqTVhaY2pUWWRoTS9zaGhILzVmWXpKU1BhU0hIQjZkbTh2VHV3UCtvZmgy?=
 =?utf-8?B?bHB2TTlPY0NiRGFQYllSOVlmZi9oNnYxMWZwY2o0ZDdPV3lOeWlUdGNlVGc4?=
 =?utf-8?B?ZTFZbzNlenVNMnUrR0oyRkF3S0VaL2R5MzdxcE9HTGVWUFYxRzRvYktBWTZK?=
 =?utf-8?B?Qk5heUxyLzg5RlhhS3lOZkZVRjRuRE5VbXNveHF3Zjh6QW1rRFFDSEJXWHcr?=
 =?utf-8?B?ZFBPVmxwVzAwMkJOUFFoZkI5Tkk1cUFqMEJKalJVQlJ0SDlyQTNXV2Rsd0ZS?=
 =?utf-8?B?VHhteEFwdWpsZkhXVVdua0hFOEliUFM2eHQ1WTNSL0hiMWZMTjZLWUhDb1N6?=
 =?utf-8?B?N0RsU01FRnJOSWpJSStzK1B0SjIzUXhlSU40a0FEeEVvOStlWmRQRVJ4aUF6?=
 =?utf-8?B?M0d0U2RSZ2JUM1hTbmFId1gzTkk4TTllTVEyQVoyckliRkNEODhqVURsVFQ4?=
 =?utf-8?B?M1dhODBxeE9LK3ZZbzBYZVpJNTI1QWV4c3BzVitvSFJMZC9jRFQzMWFTY0pM?=
 =?utf-8?B?c2lWMjczeWxDc0RrZ2Rqc2wwMDNsZXZFUFRIYXlCL2RGRlJ0bmdMWHh0SE9J?=
 =?utf-8?B?WGxCeko2WndTVUdtWnFGVkYxQXVUWmdPVGYyZ1Fld3R3eXNSMmRDRi81Tm04?=
 =?utf-8?B?KzVHUGswRzFJVjdQWkNoWUhvUGhEMXZXbFlZRUZJM3kxTTdSRGs5dU54TGh0?=
 =?utf-8?B?cmFJL1JpZUpMYXBVc0U5bUtXeFBwaUZjM05UaWk0WWZoMTE0WG9KNUhGT2Yv?=
 =?utf-8?B?b1Q4S2NqSXdpK1Z3R050MEVjcko2eTRScUxYSmhQODc2K28zMlpkRUxXbFhp?=
 =?utf-8?B?RkFkZVVnNDRTYjVGTWtNeU5WVUM0MjFzRDVtQ2lncE9GUjBqVFlxbS94MnZq?=
 =?utf-8?B?UHJCdjE3OXBOelE4WTY2RzRDaW5CUlo3QnhGRk8wejN2bmFDVFpQTVRvSkdE?=
 =?utf-8?B?WUNXd1RNKzVVcExmK05zTXZwL2ZlWWRneVpvKzlwa3VUWXJZdkNydUxUZnQ4?=
 =?utf-8?B?OVNTYVhsS254bmQ3OHYzVHZsRGw0L3dZRlhlVk5FWjdJQ0Z6TFNrQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NVHvAnMiO9MkuugcQteCpzsQKFeiXO3SddX8WHDi9nQ/1BV1bmi82G31/9eW+Hv1oYgklOPKiWWCgYmRgJHXsG0JJuRlbeStU9uLj3FZqfIYHf6hFKnIgZ6WZgep8K2CIUXU8S5AKM6K+Y+xzN+Pmo96qdeE1Fo6coTnbt7BQAyklwls8V0TBThoDY+5FjQAln0DVHKHE6bXejMbmj8uWkGX+8MP5FC7I7cZN45Uu48NjK5IJDyNQLOFWq02J/C1mU4WJdqYP4LcyWmS4lAXWiFsMr7fJbbRHfWejlvNGoDjHyMMZn2gnKWDPlzr6kJfVt3uatgolfmzLXayODr5aA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcc03b1a-e3c1-4478-f674-08dec799a5ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 09:13:06.0986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vSZPCHh40iFy05M5TNKnS3JOPgoMylqZm/5+7g1wc6j2KwqpHx3aKZIz2QtznbwL55uExqRqOB9WNmeXTmkw+jF+SzTNAvBP+47WNLR53Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR11MB9603
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781169189; x=1812705189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tOJgGTF5afCKQLhEfVG7xagOk1lIt1kcGeUAJyiWuvo=;
 b=lNsoZJYALaQ+9Ym7OU69w2r84Nf/eRmQY2qvBYgD1zQBk6AOXwULvKtf
 shF+LoTxWiUikDwYcqhHQYBV0EckoqC1iMXmyuYCjLmdZsL5KkEEtpbHt
 Z07AylEiPfO9/G/KNkuPJqfmZBZnjyQfgXvogWnG7qGBW4yQkfXpeT5vo
 huCX8spmW8b6a+XjTRVXUnt5EBjoY2IIzvbFnxy7Sl6AqS9eDaXqSc7LO
 RoAp8QBdfKJn7e50dFm200AxBRMwSBBBeNr+B/p0w/d8Wfl7EOFxLeEam
 n2O8w2JUXFHMCO404P+CoBSvlkbOOSLmgUtZCVdT3j3MGf02s9UOdEhWX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lNsoZJYA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Use common error
 handling code in i40e_register_auxiliary_dev()
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Markus.Elfring@web.de,m:netdev@vger.kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:shiraz.saleem@intel.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[web.de,lists.osuosl.org,vger.kernel.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87D88670488

RnJvbTogTWFya3VzIEVsZnJpbmcgPE1hcmt1cy5FbGZyaW5nQHdlYi5kZT4gDQpTZW50OiBXZWRu
ZXNkYXksIEp1bmUgMTAsIDIwMjYgMTA6MjAgQU0NCg0KPkZyb206IE1hcmt1cyBFbGZyaW5nIDxl
bGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4NCj5EYXRlOiBXZWQsIDEwIEp1biAyMDI2IDEw
OjAyOjU4ICswMjAwDQo+DQo+VXNlIGFuIGFkZGl0aW9uYWwgbGFiZWwgc28gdGhhdCBhIGJpdCBv
ZiBleGNlcHRpb24gaGFuZGxpbmcgY2FuIGJlIGJldHRlcg0KPnJldXNlZCBhdCB0aGUgZW5kIG9m
IGFuIGlmIGJyYW5jaC4NCj4NCj5UaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUg
Q29jY2luZWxsZSBzb2Z0d2FyZS4NCj4NCj5TaWduZWQtb2ZmLWJ5OiBNYXJrdXMgRWxmcmluZyA8
ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+DQoNCkhpLA0KDQpEbyB3ZSByZWFsbHkgbmVl
ZCBwYXRjaGVzIGxpa2UgdGhpcyBvbmU/IEl0J3MgcG9pbnRsZXNzDQo=
