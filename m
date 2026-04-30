Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHSLOyg+82kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:34:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F58B4A2334
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDFE384CCF;
	Thu, 30 Apr 2026 11:33:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DMEH5ki2s7jb; Thu, 30 Apr 2026 11:33:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BDF284CD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777548837;
	bh=dWaBI/aeWOOQRrqVrG4CraeMhK1Ypvnp5Wb3Rf91cNQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l1qCuIJMXjIycFXXhS/mx58lhDX1+ylu0CU0qUe0PNXZDuZb/08DmlUfE7fbAv8gk
	 7DWORCxQxnZLx+9Yk8jcoDIupCsn1CFV5pewwELEiEwrn6K4D1G9585R7PaLivJVHI
	 5zDw0XhmEaffOpsetUVVabGeZC6A96L3PTYHilyeLmXvraAYgUG6mOBYj8jsdNz0QK
	 P9tabDKzO4xJPnj9i+381A1erFpGSHTVk2ryz1i1Whk3ZoyWSPgMi3mT3Hs8HBu4Gg
	 kBW3D0x2x6SICV0cvFDUOALNWQa4/Misf8HAusDF0SqCMgHRqzGWtUOGN1SRSXuyfb
	 uJjRqFXjkWnoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BDF284CD0;
	Thu, 30 Apr 2026 11:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0D5F18E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE886429B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:33:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aHcuwVrbmwuo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:33:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F01A9429A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F01A9429A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F01A9429A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:33:54 +0000 (UTC)
X-CSE-ConnectionGUID: gnf9WxBwSlK8FynFTvJtvQ==
X-CSE-MsgGUID: zUz2zVKjSrecLS6DDjaRfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82361179"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="82361179"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:33:54 -0700
X-CSE-ConnectionGUID: AhDTr+8NSc2UrI6yK9aFxA==
X-CSE-MsgGUID: mX00sy7tTdOZA4UDEvEgbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="258134981"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:33:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:33:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:33:53 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:33:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jjp68EDX9LS5+BRmjjMtHJPW8Xo4E2Po7yR2Y/pzZVZHZx0XdBytasdMZIQn1kBXT7GphZvwLKKPx8pwG+7qiOoHplAd24G1eEIW1T848A4BDbFDdHDben1WsWmOAw14WLhDNEuSGrAa4b3o2zrwfYmUqZN5XwgqqmHC6wvCw0Mxzy0aYfX5Di3koP1QQSa3m2SAoncK9rmbsoqUAH3c6Jh1YPVk2Cj9yoZFv0+0d2v/jscc3HcRT5YEmcb91DGPoUWmf8MxMXv+Fof5BGd0UuOOvf+w6P0qFkDZF1T3kjJdhkLtdMKsDGftJt9f5tQiKNYPwdYdWPTztjUcOF8FEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dWaBI/aeWOOQRrqVrG4CraeMhK1Ypvnp5Wb3Rf91cNQ=;
 b=L8hhJo2FJEzftfZZj5VOY/Km2CEZTjjaPtsryoMAc0DA7Qp0kzSKspH8kgNQ6Hvt8gS2B40N5eInBifeA9qoIIRXxXp3ZsQFd5HClW8LxrOf6d/pihhsR8KfHJVO+FtfW6Mf4ga/1hFQWqugE/dao4bcGm9hK7KASNjyodq3GFLTz2mo3cfAxiVda1Kmpb5VqHTpxmn5dLgvYZKpNvUVtlTWszABkIQkfA3naKofTxqC7uoW6Uld39uQi2jCMNdCKFJacBMuRsdRvBQq8CnAHt89w6apBX6k94zcumZIUYr3pTUyle3lUzgu78U3zZ4KPAdrmMBM0UXYLp7w/HLr6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB8009.namprd11.prod.outlook.com (2603:10b6:510:248::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 11:33:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:33:48 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH v7 net-next 8/8] ice: implement E825 TX
 ref clock control and TXC hardware sync status
Thread-Index: AQHc2IZvbYDkxcc490Gf74IrxYpNULX3eNFA
Date: Thu, 30 Apr 2026 11:33:48 +0000
Message-ID: <IA3PR11MB8986091E5036AAD76172909EE5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-9-grzegorz.nitka@intel.com>
In-Reply-To: <20260430094238.987976-9-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB8009:EE_
x-ms-office365-filtering-correlation-id: 89dde237-9fde-4cb2-926a-08dea6ac586a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: WsqhKr4umQkJnPg0K77kRTNAPiE0f8P72GoadBaaXmqGXRRaXxrm0HYv4HrXyHYoCjPiKXWNKK9K3SjEPiaFuQrfXChEifrtbxiqYzjWaAFyjwUuTcCgyfWuc9iTQwzvqQAzRTnNjZoDhwxhtNhgsK0NjL6/2Fd/0TyfEq83V0KI5uf5QzlGXucwrIVgKYIX1o23Kw5Gyw+5EfWNpxZ5KEFvuXWMkJtHiLxF33o6n+ZbWfZSzEOHNh9X/WiJPUDA4sWiET2Y7wurQ0oa9GvH7Tau/eqTKy9zNlMtbI5J9CIoENOAGZgy4xWnTqBa6HeO5lf14dOJTwxqyasANdm9K/WcmttB/ZGv/2X/X0O2iTSDc7QAQoQfAwyS4SmiKSDawGWgQEfj++nevDrz8ZcS2B5SUaDZHGHKr+HmCvn/CMpDxl/DYG3Qc66vxLKXQ8KiJ3FZ0XHSwWw6CCqjveFesAuFd7p97TCB8vTQtEU0Vwpl/APf9IkmvnQD9gFZD8dhFDtkY86aLtWRY/4TUFZ5cTles3PbyH6w8xEZk0wfXASP4PMJTtMnUilFbemV6r6dRR+vYsSyFeMyIBjJbCYIMYPLLSO1yYefhNCkmmywN96Vf3aj2K3SsKwn3/G4y/LIiydWGj11k8ZSmBWIwx4xt0z7Yw/aKrH0Mnq4PM1vejemXm1TbzbDmsCIrCl21UyD+HYAXmhIOca1wlOhyBnsX41iQ5Qdb8kXQpz/kCw1f6mjqu/qj+MlyYIKnJwzanahWRMniEb1z9dNonU7JUOptNlnhNoswCbzoxNhuDu+pZg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gb4uCdmAheMbhs5dAbBBHC0dwtpVgS5Vef4SoMtcX0k0xPON6hu9KER7FiDE?=
 =?us-ascii?Q?N6BQyuO+hHsfYRkaW73oDQFKx2sQvJ/Egh9bolTKs/sMyM1OzXjqUtm8yeVF?=
 =?us-ascii?Q?+q826ZeJkILq0sz4uH/r/k8hbj++zd9qTFQ4HFC7cvFLtfFynterRu2fSlXM?=
 =?us-ascii?Q?ix6Iv9AB/JWIP3UiIpFo0aOfqU2sXd4OSLgOtq9sVTiXwhsdLvEvZXAyE4Sa?=
 =?us-ascii?Q?IKSsqRBePsMK2Z9+6VJdcJfP8CuyHU2NqpFdSr55mjhWd4OTPtPXgAZaZWWe?=
 =?us-ascii?Q?oB19tALHGI4G7A1KDi20IEd9djP4wrlOyIGHHQvATx/FcKFv8mVd9que1FKW?=
 =?us-ascii?Q?NOT9kziIxZMrjXZhA/rzNXDD7WIcKCELB3mDajVXa+lq7vEjOKtnhNA0D2ws?=
 =?us-ascii?Q?FvdRxbLDOBIU1pcRqANiKsB/JJ6IrkEYHl/KsAylKi2fKJTL5VsjQvRFZCdN?=
 =?us-ascii?Q?Sfb8ekrHzUoqJPNAim7ZCkq/cTe8qhH6S/US7UMD/kusKaF6y8TPQWPsnM6t?=
 =?us-ascii?Q?ujInZTyuhA+mJy3TfoSirywF/sNriBfeQn/qM2Zi+44WqFz6RGb+TC8wbwrO?=
 =?us-ascii?Q?SajfJbZxZYMoi4dl5xy925DArLvOdHcYU2dahxvIOuOmTUz8lA0p5VR7GsdK?=
 =?us-ascii?Q?WVoZK4nO0WAVV3rvZJ/+GbHOufwe/ABq2rb4ay1RLfNC+zf8KTMSai448ja5?=
 =?us-ascii?Q?Dn37VHae5tlMX6CxgT8AeuUe0GRF01AGkF6lxz4vcDsB1fEXpfWxaw2VEHir?=
 =?us-ascii?Q?rAVQqSPX7X2GoeOdbnbAPFSkaZ7bXR/UuLxwXD/+Y8v92A8eO+vAkdM5qRwp?=
 =?us-ascii?Q?dWVnQR5eLHSrSfZ7zJGiFBI2gJJ1vgw2XHBAlrQcTlO/Oox6fhVBkg2n7B0c?=
 =?us-ascii?Q?DICVKiBcLS4OEhsGmdVWSnlLaJSL5zXPehF0LsqnWJ4uAh8QMYVUJhKrHPBd?=
 =?us-ascii?Q?cwAlJfSOaWFqFvoKHJnLs3imb8QvUrTeuqiMMtoL5dcyStllMZTrgCIEetbQ?=
 =?us-ascii?Q?gofZOi3BJQbe3PbgePXObR2yXadFT9Hu5YigHBRGDRMqFoH68CK3PdSEbKZp?=
 =?us-ascii?Q?GTp2pOMwcbgwU2LsqToXi2GuL01XwjkLrte5WgDNXuhwoL6Y7iIEKFpnbiQ/?=
 =?us-ascii?Q?8z/o1BPctTwxSxHAWjlPSs9GI6gYxkA2wW4p3FrzQ1JmID9SFzH7JDYBwU8f?=
 =?us-ascii?Q?rLsF98HOBUtf/bQVMoEF46/vZtoNWdy0PrN2Ni1NhpyHB1v9IGObIlqRuKRP?=
 =?us-ascii?Q?zFmAZq7u1Ga2pfnz3tybN5n1QZsxw/YkYGHMZUzYAAeQfMoYtEGDIwnslbHE?=
 =?us-ascii?Q?mKz0PDVAzlBQh59/crrAZ7Scul70Zm+9nISW7P6eJ5+broJ+5xZqPCLueF9j?=
 =?us-ascii?Q?g84kGc9dN8tSJnGyEzxnAXlol4jy2egZlhJDglwWBL9lBWF/ZP1hhndjpMRv?=
 =?us-ascii?Q?SS30zzX3RUSEnZ7vLA6s3AJVUpyUI1tu8dH7+dzieGD46eZVUeO2kPQesQFo?=
 =?us-ascii?Q?xxr4vDAjs9YupZ1Kvqip00tMf0PUJ2tELL+YD2EvB7Z9JfLVTJReNAYwRNZw?=
 =?us-ascii?Q?jEwyxYgfI7HOCAi07d2jFOoYjJybUUr1dERnUO3Qb7l0vXFWomqlEFHnIbHL?=
 =?us-ascii?Q?eMgVBX9t4PO3XSTE4KSvKPt9ibxINUv9cLwP284tdzOI4XJkblFXtEfJxApL?=
 =?us-ascii?Q?U82qSO4HM7t/QyiHSDeQYBh5eDcBIcG20nr4xgkNp/oDlrpJMZVwKOXnStva?=
 =?us-ascii?Q?lQuyPagNl90HeaZ+wDJkysv4sdQTz0E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: k3Ef7vsrSpu4QX2SCCn6hP6yOFz79BPqDY3UbYpLEDlcGvDq4uXe3dtyJerrtXbF+tcyLo/g2SDWBXPlqDx2bh22l0ym9RKJSV+Y6k2seddQDVar8PKl4PabuzgHd+gE9PJQP+I07BBdQLh3QwHr09dQbMh+0dtEigj35zM5/LhQrva+ajNp16SOgtKkunhu9WrBaa5/96w2kuUeJbI/BLb6Qnlw3MxzAzo90UmBxfXvEuUI/W64rMSEbEDoywrtq/A6sVeU9ApyC5vabWnUIQ/pGbWI9IHayT2RYxf1fG1+Z4GnOJOUEeKhlAO7eDBn6n0MZ+AesQ2cGLqQSP2swg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89dde237-9fde-4cb2-926a-08dea6ac586a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:33:48.0717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8r9+b/0M1yGKvNcSuGZf1V5Jk7BsHHMYmOy899Wkx67KO6ciFojcWYJ9VbT+Y7b7iJ4Qo6YRNYQa4uuDLD1YJ4vTnYTs6QWUdku2lELnvP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777548835; x=1809084835;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GFiNv0GNeOVzy6SVXcKHBNMuNBXPx1Zh57bYeLgw7Ag=;
 b=gBeXTSPGSPoflq18FavdBvYjj00uQYf/hJPk2UsER+gfGJafWyCbLgWW
 imGaPKTKT4Rt49Etg2rGKp2ZmBHe/Hi4FbJqiETNvhBoFkZ5/ddT1vcSP
 6DW1gisiBiJKReJXwu/3TvgPcUviGNiSgmzItfgvxYw2K++b4WGKtq9v7
 HGVMn8UOXWjLAMkU6bS2DUM0znaUl6X23/2hYA3Ox56n4n6ZyfmOB4N/G
 nvNv8PwyMq8Mx89OqbFARSBBhysjsrpkmH0B5KjEuaghTm+SBiqE2Zas9
 r+c78wMCeJh6Au08PEnrI4cnl6FA9krpgVdfED81w+eKJO75PAPkW5Cha
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gBeXTSPG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
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
X-Rspamd-Queue-Id: 3F58B4A2334
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	TO_DN_SOME(0.00)[]



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
> Subject: [Intel-wired-lan] [PATCH v7 net-next 8/8] ice: implement E825
> TX ref clock control and TXC hardware sync status
>=20
> Build on the previously introduced TXC DPLL framework and implement
> full TX reference clock control and hardware-backed synchronization
> status reporting for E825 devices.
>=20
> E825 firmware may accept or override TX reference clock requests based
> on device-wide routing constraints and link conditions. For this
> reason, TX reference selection and synchronization status must be
> observed from hardware rather than inferred from user intent.
>=20
> This change implements TX reference switching using a deferred worker,
> triggered by DPLL TXCLK pin operations. Pin set callbacks express
> selection intent and schedule the operation asynchronously; firmware
> commands and autonegotiation restarts are executed outside of DPLL
> context.
>=20
> After link-up, the effective TX reference clock is read back from
> hardware and software state is reconciled accordingly. TXCLK pin state
> reflects only the selected reference clock topology:
> - External references (SYNCE, EREF0) are represented as TXCLK pins
> - The internal ENET/TXCO clock has no pin representation; when
> selected,
>   all TXCLK pins are reported DISCONNECTED
>=20
> Actual hardware synchronization result is reported exclusively via the
> TXC DPLL lock status:
> - LOCKED when an external TX reference is in use
> - UNLOCKED when falling back to ENET/TXCO
>=20
> This separation allows userspace to distinguish between TX reference
> selection and successful synchronization, matching the DPLL subsystem
> model where pin state describes topology and device lock status
> describes signal quality.
>=20
> With this change, TX reference clocks on E825 devices can be reliably
> selected, verified against hardware state, and monitored for effective
> synchronization via standard DPLL interfaces.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile     |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h        |  12 +
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 110 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |   4 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  26 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |   7 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  27 +++
> drivers/net/ethernet/intel/ice/ice_txclk.c  | 255 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_txclk.h  |  38 +++
>  10 files changed, 499 insertions(+), 19 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 38db476ab2ec..95fd0c49800f 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o
> -ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> ice_tspll.o ice_cpi.o
> +ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> +ice_tspll.o ice_cpi.o ice_txclk.o
>  ice-$(CONFIG_DCB) +=3D ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>  ice-$(CONFIG_RFS_ACCEL) +=3D ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) +=3D ice_xsk.o
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 725b130dd3a2..f72bb1aa4067 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -1155,4 +1155,16 @@ static inline struct ice_hw
> *ice_get_primary_hw(struct ice_pf *pf)
>  	else
>  		return &pf->adapter->ctrl_pf->hw;
>  }

...

>   * * negative - failure
>   */
>  static int
> @@ -2547,11 +2586,29 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> dpll_pin *pin, void *pin_priv,
>  				 void *dpll_priv, enum dpll_pin_state
> state,
>  				 struct netlink_ext_ack *extack)
>  {
> -	/*
> -	 * TODO: set HW accordingly to selected TX reference clock.
> -	 * To be added in the follow up patches.
> -	 */
> -	return -EOPNOTSUPP;
> +	struct ice_dpll_pin *p =3D pin_priv;
> +	struct ice_pf *pf =3D p->pf;
> +	enum ice_e825c_ref_clk new_clk;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	new_clk =3D (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) ?
> ICE_REF_CLK_ENET :
> +			p->tx_ref_src;
> +	if (new_clk =3D=3D pf->ptp.port.tx_clk_req) {
> +		NL_SET_ERR_MSG_FMT(extack,
> +				   "pin:%u state:%u on parent device
> already set",
> +				   p->idx, state);
> +		goto unlock;
extack message attached, but ...

> +	}
> +
> +	pf->ptp.port.tx_clk_req =3D new_clk;
> +	pf->dplls.txclk_switch_requested =3D true;
> +	queue_work(pf->dplls.wq, &pf->dplls.txclk_work);
> +unlock:
> +	mutex_unlock(&pf->dplls.lock);
> +	return 0;
... function returns success.
IMHO either drop the message or return -EALREADY/-EBUSY.
Or I missed something?

>  }
>=20
>  /**
> @@ -2563,10 +2620,21 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> dpll_pin *pin, void *pin_priv,
>   * @state: on success holds pin state on parent pin
>   * @extack: error reporting
>   *

...

> --
> 2.39.3

