Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPcHEryQBWrfYgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 11:07:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC4653F956
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 11:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 378A882306;
	Thu, 14 May 2026 09:07:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oKp3g09ABI-T; Thu, 14 May 2026 09:07:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9256A822FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778749624;
	bh=ReqOA1/fHPeggUGdNs2BhDstOmQLAsRScrdU9vIYMTM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2wkBOg4CuVBbwMTCoZ8ns9gGxdAX1KeW8U+BmVXFwedpgHpi++nsdN1O2OXufyJfq
	 q3+j7fm6a8wqfHQCPicTsSSOXJDNXPg0H4DhsXdRFirWwk22t7tuIa28STz1sWnjs6
	 W95v2/cILzhWGU5FTLv193vNSrIlPqPKkBgSLITJVvS5cj3YHxO3R/BMJ2ErcE9N/S
	 mdEK7A320wgwPVfzpeaQRB+s8NC0BtyFlrTJY6FAZyLBVzuQhdmZae8mAq1QGKO50a
	 rVlgjMkCYgG+I9MLNYgYUPiZBjdOUF4xNAQEaYdpc7AMix3zr5y2oisLgEl/25apRs
	 56g9SZg+D+NGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9256A822FF;
	Thu, 14 May 2026 09:07:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 977AB36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8845A60E27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aFsPF5JCRmDa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 09:07:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E5E5A60E25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5E5A60E25
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5E5A60E25
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:07:01 +0000 (UTC)
X-CSE-ConnectionGUID: MgKNu6UvRwKJRFC117Imlw==
X-CSE-MsgGUID: Gbc996LSSL6aGk/3TqHz7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="102357872"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="102357872"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:07:02 -0700
X-CSE-ConnectionGUID: C846Cb6fR8qp9LP6U1np1g==
X-CSE-MsgGUID: UOfABOx5Q0iNFh7P5WOptg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="235276361"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:07:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:07:00 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 02:07:00 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:06:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ml+8A/vx/DVir5ddqb7QqYx/3wYNI5DWhDMYSkgpSWUKsIUI/VQDJyQT32kHG/3noaVYuUxVczleYYVgAiLJEvi4BFQRZARDqVN1XBXUzOccCJEEi+qW0RcU+ReVz2yQgKIThJNeS58wxTE4vWusvektcUiylCX4LKTAcbSp7mHoSs5PmTX1WX20BMr34hg10RDVuyHYeM4HPmW2RlQvkKYM6opJKKaiCnIBTkyN4GOJGWsrcU7hWqoQXWisZeQ/g/WXjmrauOuCDV1josa66+DGjYjE8+7V9ucD+s4+usPBLl8uLwx5siy9cP1bwRR/+AkdBqIladLW7+6oJ+PCeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ReqOA1/fHPeggUGdNs2BhDstOmQLAsRScrdU9vIYMTM=;
 b=lkKJE0r8HQwfR4hdiZON/k5VP9aLym2qnY75A6CVrPZtpUku4VrKhDMLz53vtkxCrJ07tkYpqhW+mlMb28W8FTVSNZMDOYCIbrb3vl+GW3W0vKiMw9J0bFe/cxVPbRs3dQtg4GrhzdlFTEK4KP9s2CR6PWyIZHdrgtqRbZgTRkayxLudObfjuOlb9JXLBzAYjBZPEDOzCKNga+oYdoEXm2zTe/JQR/eITMOqQAzS/U7pC/x//hjduTiAiuhv8sZoE0zKdztsNAYvSCA/+W0abPMQHGhMhYx/Jq8We/mzLX1vN1T4pcXl/6sy8rAHWmgM72BpzCcEN4OyKwqqzhvKew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 09:06:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Thu, 14 May 2026
 09:06:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Blair Steven
 <blair.steven@alliedtelesis.co.nz>, Carl Smith
 <carl.smith@alliedtelesis.co.nz>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX
 filter warning
Thread-Index: AQHc4znxAws3ky155UeDKINfRFUwBrYNO3pw
Date: Thu, 14 May 2026 09:06:52 +0000
Message-ID: <IA3PR11MB898611EDA9A5CB80EEAC743CE5072@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260514003733.1718771-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20260514003733.1718771-1-chris.packham@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: 02c8cca2-f733-410e-f46d-08deb198238e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|56012099003|18002099003|22082099003|11063799003|921020|38070700021;
x-microsoft-antispam-message-info: fQovX8ZQHYFtpelM8pOu6dKI1JOSFCiI031ilgjuxXimgX60jivH07rYqVoikjVGV/9VVLQ5JCGf0r73R8p92YDE1ImmAsNveQ5Yc5STlkPfnedEE2Xl7TaqXFxRj1bFg6qprzGJTji6PVAIB2VY+AOJzhRC83BNTRUqyZlWgreZwYZbnAGyDppl0GS0io3idys+y9wfGG/u+pIBZEiKo5xShcG5ELfU2aTkN1PitskzoAmTRnr0ke+I3nEbN5SmM8kKymOpOP1ny5fHwdocTt3YEcVMtc7mqO2RTP7bbSXPWlDgsPPtZpIkZT8vn+27Zky5uG3PMhoVykoGaS39oKc3f3QV+zRPQ0j9o7kES/MxCPrlkP3aCzGO6VCrm96tG3Ji6Ziwm51uDEAFxbaO1T6Bx6w1pkYzntmWuXW/ZINYPpoum92NAlXgLTsF2imsLGRHSFvt1l2m9GQDFCrWgQxfLqwCy21h1DPSfCkW5Ns7KUY+99Zzs19kdCb1itzFHYC+nPukO2hNgu/j3ZqTGEFWAZK1qI5qfobY/G8u5h1c1uj26xbCrb3uhYReWzTrbyS0MqtJMIgVKVYk038I9UREEcZcH38aHxlHWdmySyWoRGwgCecG36jo8kdKiI/N4aPI6a7kXGYdVFkJQuUFc/D9xZ3jJ49laWVB3DRnqA1fKy7d8oNoU7hpH6i6szrNm7WndqhOOea+NOIcOEoY322cmCQrPYQKCwfkaZFHwznGOxzZZFlLF6JdFsc2D+MwXt6hqnnwnyeHus2JxwG9ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(11063799003)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WaqCQ8wJve7RTi57+HuNyqX9G7ZvRKC/y+n9AE4X4DFrCcrBC09ekQOhSvrT?=
 =?us-ascii?Q?2toZkwm7ZIzuD/jhPbGf+3SE19/Fx7DdUJu9/ZZAciEl1FtcQTrTWuzMRYJ/?=
 =?us-ascii?Q?5by+gnTUuKRUEpELwFCDvdfwutElQK8b9JZ5oZ9KUkTgjJsj2eTEI8CFL17R?=
 =?us-ascii?Q?UEyvIrXC4+qShDz+CTXjgyiqGn6eJwxERcw60oIwc0wQNLSX3VccBuM5+8X5?=
 =?us-ascii?Q?PVq7WMwGCuYtU/4AFxH9jMKZsA1ijxBxtfSZAFz3AhvXa1LVYLW3AOJDnzEz?=
 =?us-ascii?Q?4v0pGd7uypVLgvWCHdi238Ee2dBM+AOsmUnIb53xhBilwrO1kICnEt/yMTkS?=
 =?us-ascii?Q?i7XmOMnVBN3LVEnPR++967G8YLn4C6/hd2Wx1GuU38w/qSXIRXZRRG77huaV?=
 =?us-ascii?Q?pyJKfZiadnTaLY5SS4sm7YIkeys3jpxAv5dK5XelssJDwEE4JhlUTNFbhNRb?=
 =?us-ascii?Q?lyKfdGx5hXFq6yrpuzU+FzgOT09F7gAyV4183R0bFfWQ3wUetTGZQQMC+C4g?=
 =?us-ascii?Q?9zWBQffeWZSa61YSsnTGOpSTGsLc/KBaiABpF80fNCbIcA1fjiY9GsAR3m49?=
 =?us-ascii?Q?lvA8+DtMkwkvn9uhgFuDbhhT6s7TkWmm2HrIZzGcBQ4Rj9rPwbA7xb7tZqWw?=
 =?us-ascii?Q?RGhc5av0ewfg2o0mZ8akRxAP2JoFfyGzGW7HjoLRmrim8FjKQKXRpVWw3fz1?=
 =?us-ascii?Q?fZrgHZR9lxHUXm1Fqgg99bp6UE7SnmCdeP4Fi0FC7S/q2EotoeIm6x+G6xSp?=
 =?us-ascii?Q?Uq1quz5tbsjQ49AydyFKuD9L1e8e+l7Tj1E/B3Ku+iSVuF7tlZR6lrlaEbGz?=
 =?us-ascii?Q?PfiXT10BroB4OTxO9QIL4uB2NXMMNYEFGw4KbGBjSmqk3wk0BYgmq3KZ3vbp?=
 =?us-ascii?Q?7ve5Xzncm9fYEYh8U/90fhRkVJ5f5xKHOIKbKLJtyl2rUHejVM206rfYAdgU?=
 =?us-ascii?Q?r/FJXvk+iVmZt/n08sLYa68zWk0eKEvjomP6B7r3o5da08KoYQQfYchGUU1l?=
 =?us-ascii?Q?+MUVMQdWIAj/NGlBhEd18MVUxOd03GmeJaCfXm7FTA3LPiG99ACBoI/DVlWG?=
 =?us-ascii?Q?tlEzumfzwwXzYj0I5t+t/8YO2cRFt5CNQVc0V4K055Frrx7DnVIJqd3FrhCw?=
 =?us-ascii?Q?d/gOkaX/X+xUvXyfsX8qzf30h29Mxnh99yK6V8Dk5UN1mLa0ohs8z9MC5UNY?=
 =?us-ascii?Q?asN33BAC/jlby5nu4f9JA/VeSehul7oMq0FLUfo5T/VvdSFMwXFVPDm/BVZj?=
 =?us-ascii?Q?ZoRapS9OsZ38GGabfZN0hKDbAl4Vzh/Xgn53uWHwUlZhlr63cKE7j3nXLgxP?=
 =?us-ascii?Q?gSF6RtvNdu8yIs1nvV99KedvEJ1FzbiQh6LE/f03K7Ccp97+55/ok+snwXcD?=
 =?us-ascii?Q?bILmbWzZdPS3D99mtjUAk80euFnjIB5Z2V56cyNP6hOCFQ2d93v0nrkiH06C?=
 =?us-ascii?Q?LGL4K5vJ5c+WD0SjaTpQefHdHOyZN2gOjjt43Tk1gyDpwj7KinbAOaRLyCQA?=
 =?us-ascii?Q?p9PO1n9Qq9uj5a97B0OhnF/feUdbx3Dsvzkj8e4jY4SYjEzGIUTQbVQTVVK+?=
 =?us-ascii?Q?7AcpvG4kkSG+FyB3uiNFu0iFjgOomZLCJ2KTOtu1LWvF06qQFPVLOJuP9v4m?=
 =?us-ascii?Q?S7VL2MEsyHjfw2syhjT7+/KmJ7ESjMnbf8uZL0VP7pyBt5FKM/lYN5qSdqcE?=
 =?us-ascii?Q?z93UNLFvbASk/PdDBkXeKSRqh/dfyQTeFqcXOfKtJfCTzwCtmKrenZlS6gkD?=
 =?us-ascii?Q?juQBbzNvDvBnjt8a7qk9giaS6P9AHSM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DTQj60kUmyUfTp839YcJ41+ayNrxrtwcIpaKnoroZKVKe0S2cuAOB5e41ZKLjUDsl1p+N5hdYyCyPO2Bo370/KL5EihvDuQlZsg+gNIKyTo2lZ8zsLDCsIoZD9cscgWgiu3V75/zDnDUwzQcdNFwc7gscBGpkA78T6/gNEfv3MZ5v+wKvqsn1QMvVudzpJbuY8AcSr6/odRsmdMHHp5jQ9sLvxWZnKuJTC/azaOKwzJDDk41kz7xfWjiJuSlDmhUqUFj6OQH86a+ze/vN37piWIuW2EebeD7oLjPFt2FJJcAgIvCbwGB8YW+QoTyym17hja1Ri3zmsQLtYQCynKLfg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02c8cca2-f733-410e-f46d-08deb198238e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 09:06:52.2312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKs61DcAcRmMycPmYkPmr033t33Xq/QHXwikKERtoTN0MeZwbGxxA+VBuurcKH0e4PyEQecGMlEx20d5m8wSwmbl8Q8xOZnqv//g6+mwyMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778749623; x=1810285623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jTkiuH0ehEQf9LOMJaiRm9IezdX9KIV2CDFbiCKKkIc=;
 b=bYJaxRP7HuVWMeQyBxik9hmIxIltEFhPI7gqrXZV90faqTFO+yfj+g9l
 BYIBjEv+stSuYzx0yq6vwXIiRgskgtmwvHsSzYQE0ILZAtBDN/ENh6Qfv
 vvI1x5arPAfu62HYjr3nwvJvsmEWV8i3DTBXqdu3PLizkTYEKG566EkfX
 9pykco2e3rmRqrtRkEbU9GUwmOR1sfCikgDHorUarJ7mfsagpVaiZ4O4l
 gU6DoUKxn/hPXJ+O61hZJbTbmTy0GPJpnrZ71gUw1362WBCexRuyW1qZc
 saFfauQnYFHDMP2c3CIqfkc2LgJ630CHzZFl1P36nkAyxx27bdqILV1/d
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bYJaxRP7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX
 filter warning
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
X-Rspamd-Queue-Id: 0EC4653F956
X-Rspamd-Server: lfdr
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:chris.packham@alliedtelesis.co.nz,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:blair.steven@alliedtelesis.co.nz,m:carl.smith@alliedtelesis.co.nz,m:andrew@lunn.ch,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Chris Packham
> Sent: Thursday, May 14, 2026 2:38 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Lobakin, Aleksander <aleksander.lobakin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Blair Steven
> <blair.steven@alliedtelesis.co.nz>; Carl Smith
> <carl.smith@alliedtelesis.co.nz>; Chris Packham
> <chris.packham@alliedtelesis.co.nz>
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX
> filter warning
>=20
> When the i40e runs out of space for RX filters the driver switches to
> promiscuous mode and warns that it has done so. In scenarios with a
> large number of these filters this can generate a lot of warnings. For
> example:
>=20
>   $ dmesg -c > /dev/null
>   $ ip link add dev br0 type bridge vlan_filtering 1 vlan_default_pvid
> 1
>   $ ip link set dev eth7 master br0
>   $ bridge vlan add vid 1 dev eth7 pvid untagged self
>   $ bridge vlan add vid 2-4094 dev eth7 tagged
>   $ dmesg
>   [   25.601705] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
>   [   25.601833] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
>   [   25.601961] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
>   [   25.602088] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
>   [   25.602216] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
>   [   25.602344] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
>   ...
>=20
> Use test_and_set_bit() so that the warning is only issued when the
> driver enables promiscuous mode and not on the addition of subsequent
> RX filters.
>=20
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>=20
> Resend with net-next tag
>=20
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 926d001b2150..8741990b5a5e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2408,10 +2408,11 @@ void i40e_aqc_add_filters(struct i40e_vsi
> *vsi, const char *vsi_name,
>=20
>  	if (fcnt !=3D num_add) {
>  		if (vsi->type =3D=3D I40E_VSI_MAIN) {
> -			set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
> -			dev_warn(&vsi->back->pdev->dev,
> -				 "Error %s adding RX filters on %s,
> promiscuous mode forced on\n",
> -				 libie_aq_str(aq_status), vsi_name);
> +			if
> (!test_and_set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state)) {
> +				dev_warn(&vsi->back->pdev->dev,
> +					 "Error %s adding RX filters on %s,
> promiscuous mode forced on\n",
> +					 libie_aq_str(aq_status), vsi_name);
> +			}
>  		} else if (vsi->type =3D=3D I40E_VSI_SRIOV ||
>  			   vsi->type =3D=3D I40E_VSI_VMDQ1 ||
>  			   vsi->type =3D=3D I40E_VSI_VMDQ2) {
> @@ -2461,10 +2462,11 @@ i40e_aqc_broadcast_filter(struct i40e_vsi
> *vsi, const char *vsi_name,
>  	}
>=20
>  	if (aq_ret) {
> -		set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
> -		dev_warn(&vsi->back->pdev->dev,
> -			 "Error %s, forcing overflow promiscuous on
> %s\n",
> -			 libie_aq_str(hw->aq.asq_last_status), vsi_name);
> +		if (!test_and_set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi-
> >state)) {
> +			dev_warn(&vsi->back->pdev->dev,
> +				 "Error %s, forcing overflow promiscuous on
> %s\n",
> +				 libie_aq_str(hw->aq.asq_last_status),
> vsi_name);
> +		}
>  	}
>=20
>  	return aq_ret;
> --
> 2.54.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

