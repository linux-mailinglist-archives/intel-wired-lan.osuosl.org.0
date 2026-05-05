Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6O2KIbif+WmQ+QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 09:43:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF854C8276
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 09:43:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CA764099B;
	Tue,  5 May 2026 07:43:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BmbnLdPq39Df; Tue,  5 May 2026 07:43:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C4D440986
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777967028;
	bh=oKLgUYzYomC/jkVW+hSZk407T3RBXVsgsEdongvjLeo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PclKO0w5NlRUr3PT6w6f0bVoXzJdCvcfLXjEXiR+6PQjOJ1uPBafZWMwdadhvqyui
	 jpkKjxa/blUjUB9rjTlmf0xRSKLVlKJayHCULyoKsd0+6B084htr0TwLEMcixULMJ8
	 R5a0ViI2dEAyT9wqRYd04+hu5exuqSIYE0sehHq4WeZHhxABhXwV1fkVngshzIvSMM
	 L0glLaRiwtryd1MHk8hbhDauZ0SUsEA8j2uPdef4xpMKjUQptjpXziesCA3CiGX40O
	 QSTM3ZPnZAB3bjq934WI2mC5QudHXpezknUbGurHJs2Ee9/Ge+mLXpSMwtFvw8ayfU
	 8SzMxDFbDutfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C4D440986;
	Tue,  5 May 2026 07:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B7C82DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 07:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDFE9812C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 07:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cBji1KDzjfYR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 07:43:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E809D812C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E809D812C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E809D812C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 07:43:44 +0000 (UTC)
X-CSE-ConnectionGUID: rBIeXoUZTZaxwOd6qLIPyA==
X-CSE-MsgGUID: MThRFTmARoa2cI+SxohznQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="101497870"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="101497870"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 00:43:44 -0700
X-CSE-ConnectionGUID: IoyJGmxTR8ie6gUH6T7iSg==
X-CSE-MsgGUID: Wz8jYHkVSh2L4Qx668mr6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="240733563"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 00:43:43 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 00:43:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 00:43:42 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 00:43:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJjP01L3nh12U/P5oly7FcwVktUmrG70iPqywVqs2f3I+1/7xPH78biRob5gZrSfhhgOrLL+dPWm9cAf9OYhT7H0Z6pEBUqr0WkFnYKCOR/CUMu4galMad5W9GxIRU/5UoViYPsIf4bKoJlm1Z2l2nepoSFr1F5n7JwPUNb/qu/KIJFr+s4vUVisOIvdhG/T7lK/inTxxWiUhee6ZLDjsIo+8TU4CAwZrRUjXlN+wzNzCOaQPRZYYESBKKyZzKw9DqyYm1XpDZdF/lGmZfngSrmKA6mAIM+mDC0PQnl36/UTjMSA4T0pBWPsQp9Ii2oFaRbqDJYTQ03VdteLvGn5pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKLgUYzYomC/jkVW+hSZk407T3RBXVsgsEdongvjLeo=;
 b=n04Qqowaqc7yLyI7PVzFxt9iThx0p3nvTm2A4mU6ykIM4eLoubjUW7MFNtPHzboWGudaERxNQ3ac5WNDxRAllEK8CKHDVGMc/8TDW5WJSXdVQc3NIRpqPZBBGQH7yqbVHSa2WMvP+vYvoi+jzC/mLFNqSCCVXRtTqSVrBXr2E7yPpwvTLEFKHbAfyMBhufLb4uWtehYjivAA3CKq8rL6jSeSNad3P9KRjN/5/GS2DgC+zU7AglSYMT5a9ya+J/sngaA+nEj39xdpcgOc+iFrF+Npzbs4Ujlg1GZjhbzYOEn3d+cCZVfGefMEekKuyg0w7mLliLb9ZTolQT4StNxJPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by PH7PR11MB7662.namprd11.prod.outlook.com (2603:10b6:510:27d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 07:43:30 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 07:43:29 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
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
Thread-Topic: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic DPLL
 type
Thread-Index: AQHc2IZHsdQespj/80++VHZiPJlAf7X3fZ+AgAeWeQA=
Date: Tue, 5 May 2026 07:43:29 +0000
Message-ID: <IA1PR11MB621955B19491F6655BD3EA00923E2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-2-grzegorz.nitka@intel.com>
 <IA3PR11MB89864B070906C21C67EF0886E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89864B070906C21C67EF0886E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|PH7PR11MB7662:EE_
x-ms-office365-filtering-correlation-id: 4f0c12ba-f683-4391-7ee8-08deaa7a0033
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: OTLIRIymRbQGmF4C3nUzbObmzDIb/61xQolqLZ01V8gGZ9sKHs08tVtrT5eIhQCuTS5kXMO+WjHdMzCrK5AFvXkjO7K0qrwUp//cmB1l/Sr+yBcd1rEBF38m/KZ1SnrW+TEzO4mtLFU3R4VprI3tqEA9MTKN3IvTCvo5am3/1YElBchK8RSgViN+dysB6mRMz/igB/w45XNMfD+SDF4dT//zIbz48KjZfDUkSkYXJ1Hamn05qnrr34hi5Sqh1hR75x/1wTfiCP3S2HhutX8n4Xo0r9hVC+zLEJDxhbQUpSYI2Mu1Yt4P3wST1j7O1bHw0foxfMH2r+T/olbgERw5H4DL4HoXkqpeclySoN+TpFp3D70CMhgR7LkepE0aS4wYU/pS5EpYeQjGU2GqUmYRefxLkUz6As0XJjYhh4nmTES4CVhLtmwEFiD+gO8LNqISA4M0MijJGIp1x5ANbf6rBM16MJaAn6a1/AuLVFmr9webTuVUBKjl1R0GF3drRv+xpWHuTOxnAS3Sy/NvwiXlV8Q49OzL3SJNLY26RBWBZsjLzxeKFU2hCGCC7G2zl175CfmQOnbNDo0yvDD+9YsREHdz06bdvJrRQnuAtrzqezUbBFWKCc15hPsJEDZaS+3OWJEz0QjdTAvzNenwgo0mc4rPl1Btn/JMB94AE/J6GGb7ZIfEavsjkOtI7nzuOzQd9Q0Ojrok131AGCU5qMxRn2heVe4vLUIiCwC9OfRYwOfBkH5gu6+d40QhzegLlSa3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L3OEON2fQez1OaP/kZzkrCLS0l46dv7cJDK+VlAD5UpkRFc9rlqzQ++5Tsje?=
 =?us-ascii?Q?6SVjGez25zEATBuFL34YBBKmgZKyTebY0jfuzgQTTiiJCipn42n93zMiVk9C?=
 =?us-ascii?Q?Zi8FhRckPHmcqw4cs3L8e/uMwP/XGHfwsGblHvtoiclf5GwPg45uPxHOfHxp?=
 =?us-ascii?Q?SgRErQziWPSiZUo1xn/OMUHUaixtJI4H1LUXa01lE14MiP0aAErEuucGSwHM?=
 =?us-ascii?Q?zAJrnBJ2CV+WLn3v2J63VM/k6MSejdRt1Y89xwKSyBtlva/5bndGkjoePEHV?=
 =?us-ascii?Q?Jn0/W6PKII5jUAiiplOLxI+gC0fcCVaqmQEMNEISDyJFvVmoCCQD1cFXOiwi?=
 =?us-ascii?Q?cn+6vIKNKPb3MjsxXS+Vxk8SSarIzAE9ivQQ9uZr5nFGVTrGCp/Kv0pWlqnd?=
 =?us-ascii?Q?7wG3ht45P/BQDXOc0R1TH7ncQKgktdgbGmUGL4TYhOUU40PFDtL3MN5aG9mj?=
 =?us-ascii?Q?ecRWxx8jiHPzf9j4MjPCTNR/mFoi5akaLSl0ASStr25lNP+S4aber8dYi1k7?=
 =?us-ascii?Q?m+HaEwCfCy+T/giUSXDOog+U9ZeTydxW71gVCIvfiA3W0ylK/WZwmjggzcbO?=
 =?us-ascii?Q?4WekN2KQaKIyGCCT+Q+8HFYMIu3++Zss7bfpQ0m4jWjNVL9Nqjlw7ke8wvnz?=
 =?us-ascii?Q?/QBNLBPyUcNR8uDeOqQPwOuSTbbGnzJtroqooRQzBKYI22OQ6naf9PScdMB4?=
 =?us-ascii?Q?AX6BRfeP7aNhdzAo1mXf1q9q0lneZmsctWEV/a4grQ7khOH+w3HYqXAq8uOI?=
 =?us-ascii?Q?9s9E3Lk3tCdhGkXLKLU8Z8xOVFY8kFETxTCRRad0MsffjucZBFfqlXFLNZCV?=
 =?us-ascii?Q?dx0gomkLm9+aoH3E/d9NulDdgPb9wCQtYnZfgKJ8dwSAAMS5QH4wdsg9h50S?=
 =?us-ascii?Q?LGj9IFmH/5bJoyDscwUgNDvcqNDmZqo5IfLM7sSf5yLZhfxjcqiVwrHBHs0a?=
 =?us-ascii?Q?xpyBtpzlo4O383vl7jRidMTa4JeJroPrjCyxQcuXs4wsgfj2XhyLe29s8/Sx?=
 =?us-ascii?Q?X2hKZzGxGkUGVR8mRtRocZOtIYaKz9bA+gf/1KDv2Ss7lFCR7jSWcld0HtR9?=
 =?us-ascii?Q?HJwGJaiGtZYnY1U6Dozqq9mwzXcLOklN4af6i4JfQAD1UB5Qvei63BFF1LUw?=
 =?us-ascii?Q?RUweaXbS80cj4Byd8VYD9KaH/adamr1jSSobu7iWiggo4u2/U/CQ/9jFgQXC?=
 =?us-ascii?Q?OV94ufuTTmsepDuh8CFZ6/q0yBG6p/ltPeLxPeQfUU9KfLH/eImMRVhZnbEM?=
 =?us-ascii?Q?mexZ+Ae9BjcDRp0MruwAY0Y9JmwVpwcvE52CFAFsV1IbjMGIS8ruc0DVRhkr?=
 =?us-ascii?Q?stcBt2qIFlBxGudkw4Frr1B3Q7zeVnJ1cDaNa8du6a6EWM/kcZMd7pUP832H?=
 =?us-ascii?Q?rzJeQjeClkvHjQP+ntH+fnFspjcQBcGUkdkxjjz6KpQlzWBirYjRXhX+dc8R?=
 =?us-ascii?Q?g6Imkiqq+8p2GdytjYeZHEj4p2u6SPBPMdDR1zd6gbjukUz2ttyTCTkGltAc?=
 =?us-ascii?Q?w23SflH3MDdpyV8d4QNyf5hf5I2TNgE3MfJhkkW5dzfUH0VeDpdQzs7J2pPM?=
 =?us-ascii?Q?dqTFFqozsNUXg3qph5h4sBSwgr74Iqj2Rny58CA6y683UcL1vAwVLdtsx72N?=
 =?us-ascii?Q?ZQTEXSN8tzEROnn580kGGICedc/1VoO0l+TbdwJ+Pql3T2C3csu8mpqc7sR1?=
 =?us-ascii?Q?IAcy+w+BaLaoe8bLxcDCzDuAdx21d49viIO+jmlaR5Sd/jJANdkz+0hrUj1y?=
 =?us-ascii?Q?LDb2KY2nZQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tao9DhDDPzz5sgOanx6Etfan3RfE0PUlrTxbFhSBzJR5HZengt+RYBe4MecCnr7YTJUWTKiX/wLsLWjJUhFbps6Fk87/4MoBBO5dE6dH0Ii2vaXCsRoJzGkZ1hgi03aGRoNwCAivzYVzXBT5AocPYMl3ogNcDgISCZjeKwqaRwV3ULys7NuzfHR05VGF4tc6fjTC0mlGxEzsnaVvXLAibe2BQuGuTckUVXc8HTPIrkDlBkQjBWrysJeQxV5b8MnYI5gnNIi7t/lu53w96nX77cB3M8Ur5KJjyYEAY51mBxcF2LB/EMz2Zyp9Z1ojBCvde9jkfmTgGSMZHNsPTKwQRg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0c12ba-f683-4391-7ee8-08deaa7a0033
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 07:43:29.8703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hIYE68h7EzwXCpeO9htFMOAm/mca77ImaQ03MHlZbyX3bcBEfnhosdCaOTEUYUtH+YKEHlaAbdzWSJw+q/K8RZPKG+jVJGnbhGuuOx8+sNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7662
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777967025; x=1809503025;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PzdM7Ex4Bx9ySwYWK+VjbIMsTtFqEUuXPvabweu7hvQ=;
 b=O6wD6rtDrrzkSqbHaM/IvMw4qWuLwjy4xZ9YA0azJjf53vgI+YJp2vs1
 csgJ8Yc6qMD6D50WcouVb6KGDJjEm8cHMLcPYP1e4Y4BSbp0PhYEA0Plz
 jWFvt9rcDiYMBX/hUoIDpCMYszS+ir2B6PDb2oMX9JNO8Wz2EYydt92k+
 Cza+PtpJSjMYMaMnuAAekO/W8RbJeya5Y0I53j/n8Gl2pNrunWV5T5B0J
 TGawZAWmYkJ3dTP8AMlAHlvGOGW7PfMxMw4DG64HsgVgZ9iDelPMFSGUN
 7e2yUruHZbSD76zcxWPZmM/JPvaI7411Bssu5Y8vRUvGajJwWHTo4ssyK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O6wD6rtD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic
 DPLL type
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
X-Rspamd-Queue-Id: 4EF854C8276
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Thursday, April 30, 2026 1:49 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> Subject: RE: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic =
DPLL
> type
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Grzegorz Nitka
> > Sent: Thursday, April 30, 2026 11:43 AM
> > To: netdev@vger.kernel.org
> > Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> > kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> > donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> > Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> > intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> > Prathosh.Satish@microchip.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> > Subject: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic
> > DPLL type
> >
> > Add DPLL_TYPE_GENERIC to represent DPLL devices which do not fit the
> > existing PPS or EEC classes.
> >
> > The UAPI type is intentionally generic. During netdev discussion,
> > maintainers pointed out that introducing identifiers tied to a
> > specific placement or single design does not scale across ASICs and
> > vendors.
> > The role of a DPLL is already inferable from the spawning driver, bus
> > device, and pin topology, without encoding additional purpose-specific
> > taxonomy in the type name.
> >
> > Using a generic type keeps the UAPI extensible and avoids premature
> > naming that may become incorrect as new hardware topologies are
> > exposed through the DPLL subsystem.
> >
> > Expose the new type through UAPI and netlink specification as
> > "generic".
> >
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  Documentation/netlink/specs/dpll.yaml | 3 +++
> >  drivers/dpll/dpll_nl.c                | 2 +-
> >  include/uapi/linux/dpll.h             | 2 ++
> >  3 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/netlink/specs/dpll.yaml
> > b/Documentation/netlink/specs/dpll.yaml
> > index 40465a3d7fc2..572cf7ae5f36 100644
> > --- a/Documentation/netlink/specs/dpll.yaml
> > +++ b/Documentation/netlink/specs/dpll.yaml
> > @@ -138,6 +138,9 @@ definitions:
> >        -
> >          name: eec
> >          doc: dpll drives the Ethernet Equipment Clock
> > +      -
> > +        name: generic
> > +        doc: generic dpll type for devices outside PPS/EEC classes
> >      render-max: true
> >    -
> >      type: enum
> > diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c index
> > 1e652340a5d7..9a3b70ea3ae0 100644
> > --- a/drivers/dpll/dpll_nl.c
> > +++ b/drivers/dpll/dpll_nl.c
> > @@ -34,7 +34,7 @@ const struct nla_policy
> > dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] =3D {  static const
> > struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] =3D {
> >  	[DPLL_A_MODULE_NAME] =3D { .type =3D NLA_NUL_STRING, },
> >  	[DPLL_A_CLOCK_ID] =3D { .type =3D NLA_U64, },
> > -	[DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 2),
> > +	[DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 3),
>=20
> I think you need especial note if you manually edit "do not edit directly=
" file.
> Isn't it ?
>=20

This is not manual edit. This file is generated by ynl-regen.sh script.
And attached to this commit.
I believe this is the way how it should be processed.

Thanks!

Grzegorz

> >  };
> >
> >  /* DPLL_CMD_DEVICE_GET - do */
> > diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> > index 871685f7c353..648553053cd8 100644
> > --- a/include/uapi/linux/dpll.h
> > +++ b/include/uapi/linux/dpll.h
> > @@ -109,10 +109,12 @@ enum dpll_clock_quality_level {
> >   * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE
> > attribute
> >   * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
> >   * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
> > + * @DPLL_TYPE_GENERIC: generic dpll type for devices outside PPS/EEC
> > + classes
> >   */
> >  enum dpll_type {
> >  	DPLL_TYPE_PPS =3D 1,
> >  	DPLL_TYPE_EEC,
> > +	DPLL_TYPE_GENERIC,
> >
> >  	/* private: */
> >  	__DPLL_TYPE_MAX,
> > --
> > 2.39.3

