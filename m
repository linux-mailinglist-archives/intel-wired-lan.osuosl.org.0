Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA21B3F8A2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 10:35:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E9F641BB6;
	Tue,  2 Sep 2025 08:35:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SlFnp9VLwKpn; Tue,  2 Sep 2025 08:35:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2F5941BBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756802156;
	bh=VRjFuQZVLzGeE22dPHjn6QRniaS5nF4toS5Rw4UsGRI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jj/+9HUAQ0pkdYFGH1alFTA2PuW1P1ZoDll/b/q4Tz1ma/UNOYKINBd0LVyzhD8sF
	 4cGecTiI78WWPEJFIuyPmEpVvEE9Ue8qNIwUA7agozoDolpdKZbszq8G6CPl4fTu3n
	 KmuYauIlR5IELKnS3s2cwbWtRT+iI+82SctKOB+X3rSqRtQHb4qKovrgQ1BRDdKz/L
	 vfHUJVcrsOA4tfMwPftrU3w6oRqC4P+yHVlmbSUc6gpgYNYaV8rgqNkuuKkftBXNmr
	 omuxpwrcJ84RhfQ2d1niHydoyUmH6iDg3MW6tynusPHW4rga2BPlTaDZWIeOq9ipI8
	 9eNnCi7KnZgzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2F5941BBA;
	Tue,  2 Sep 2025 08:35:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B0FC410E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 08:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD7E241BB4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 08:35:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u-dY9YnVC7iV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 08:35:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3B8841BB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3B8841BB2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3B8841BB2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 08:35:53 +0000 (UTC)
X-CSE-ConnectionGUID: LFQA3ECLTwOdDNDmRYWiCA==
X-CSE-MsgGUID: aGyUBfYiTYWbNbq2nnm8Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="84479822"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="84479822"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 01:35:53 -0700
X-CSE-ConnectionGUID: UY6ZB5JOQpe0VNzlisEp3w==
X-CSE-MsgGUID: B3Y7kxK/Q5iof4WWXGyteg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="194858049"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 01:35:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 01:35:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 01:35:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.53)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 01:35:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rfJQwdoTnPjPhBVx2CVDqeoNfiRFbTRzt3oliceW3y3Y2Y2t7QT893eSfbMq8xq7alO8GhWWVqahHKWkl8g8DJNPmJ+K0Xa4WwEf8wVsceuWQxjI0Pgev5PhMDIeQZzL1Z7DGLJAZIp+/ZBOZxRhTUvp8Yq4rvkxAUclTei7+Euh0CY13VYhkocZLUxqqTWt4+HD2E9R2LGL2Zylg2tOa7P6o8HdAnN41ZUOKMq/T0LRByfWzovhN3B9XJICw0d31okD8r6F01QZ0bfw9kYYH+GicSroYtOFndF6EO3gLfNmvGym5Ko6qdH6J+LZvMkWODFKb8JtQolrfARCiwebHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRjFuQZVLzGeE22dPHjn6QRniaS5nF4toS5Rw4UsGRI=;
 b=bPV2Z+AtHjzHQtJMXToyL9hI2eI4rPCWLt1Wu2xdQOWV0FsbDZWfLSC/pix2NfgSLDQqpGW8xZe7lWaKE2WsobJml8T29ZAvsFWcE0MkeJz6yp01mvukSHNQuhdHIe1iAbq9gZbKR1v73OtPPDDEXM9tRKeck+dSiNDYlcKXR9e9D7j+R9xPi7NHOzL4ijkW+Se4jAWOvXv65v9Nx1lt2MPPElXix9sKD7r8SYSJ1yX3VaEDXIC/J3155ivvsuVTo5cESFOADBHK4ooFwjbwUN1HSw25+wUZljXZbPfJOT889X/R1RByxSnIyxIALDIrBXNQ50V6Qmz+ms1HBWrtmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by IA1PR11MB9471.namprd11.prod.outlook.com
 (2603:10b6:208:5b3::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 08:35:45 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 08:35:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, Koichiro Den
 <den@valinux.co.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "mateusz.polchlopek@intel.com"
 <mateusz.polchlopek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v2] ixgbe: fix too early devlink_free() in ixgbe_remove()
Thread-Index: AQHcG92ZZ4lNSKlGTk+6jrqi2kIynLR/kU6g
Date: Tue, 2 Sep 2025 08:35:45 +0000
Message-ID: <DS4PPF7551E6552CD63288F6FA9A865F968E506A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20250902003941.2561389-1-den@valinux.co.jp>
 <PH0PR11MB5902B04FEBBE164EA836F2E1F006A@PH0PR11MB5902.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5902B04FEBBE164EA836F2E1F006A@PH0PR11MB5902.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|IA1PR11MB9471:EE_
x-ms-office365-filtering-correlation-id: 9bf9cca5-6277-4942-e976-08dde9fbb5fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?DbbS1vZtQ6zgYG/UJGMV/U9Vt1QHK1VcHoKAi+QiQnVQmslXyIbpOTCyArgj?=
 =?us-ascii?Q?R4at7G2PKcTCUyqqKhw9DCK00CbAXMXSh/ze7BIDxMiCMg4NS3kYh58FBlMn?=
 =?us-ascii?Q?e5cpFCYuQb+6B2VfXPrpTmqKBTSZuQnboRYcx104W3fPG3ZcsMPzWJnMmGzu?=
 =?us-ascii?Q?UYjbucsKwrB8YApc+75fyPUBBoKqCoVu0XHZDd461RRTfanxynUgDTYrLnfo?=
 =?us-ascii?Q?4I2M8B+Qtv25Qoiex2o/MyZ0j80tFvIdf7k3o9qjNN5XDXhpjL9D2OyCN8MV?=
 =?us-ascii?Q?lnfsa2XxYkpZKX6BnI29luFsx1Mft6IDZBVygXqj4vMIoJngc5Crurc4FX5y?=
 =?us-ascii?Q?gtm1uNElcfl1eoZCfDtPO7YKhj/nawpduLH1rMG+b+EA9pwzfVsCSRylgjd0?=
 =?us-ascii?Q?kjmcl+EuLZrp856Fmf5AaouF6urXz5AUEK3UHsognznLblo2TwvxIFGtvzc5?=
 =?us-ascii?Q?IrsZSswjrg2FPwgo+FPwPG3VF00/M09KoO4xOjHH/JnHsdJ7GnPwKrv+S+gT?=
 =?us-ascii?Q?WZjwj2iw/05upCHyfpGo91wfvwzudl1aBUhwWdAw49DDEDf6Lz0Pt+Kc0X08?=
 =?us-ascii?Q?OYTmY2Cdv0defhNaDLmCBG50xO0uAMtvDt74xOqIciFcgoEIj1RM8GnvizfN?=
 =?us-ascii?Q?sCI/FaKAFpcc0r+gLJpjvK+osSmp2nsM9UL0RYLBIlL0zBqto4D/fNxxlYpu?=
 =?us-ascii?Q?1pCbSdSpjEcrwf9OQ7fkIbRDUFhTDC5QJGzKlOiBNOq+EuDI1wi0H2upHH70?=
 =?us-ascii?Q?0569sxyc4YHZnI1vX2eQ9raG42SCAv+MDI+TxubmK8e7ndn/3JFuO5H3zDS0?=
 =?us-ascii?Q?kHTME9otShgRILyiHa04SvEa8SRq7L4iU0Cnv0Kgi2xmtclTSN1lYWaPKfUH?=
 =?us-ascii?Q?wo+vH8keVK/jHWLLYpZFrBjLKOVw+MqQnUdF/u3d8qZPUG4r7m/bmLAkTV1F?=
 =?us-ascii?Q?zTx+5M/lWN1ycauwz1Qm0wf0HYav0xwCiuQ8RWPbqd0usAJ7I9ynpWRVfvt+?=
 =?us-ascii?Q?qI0bMRLSU480XqMtj5qhr4/eHecHeNzWPx286itAATOWFwRQd2WPu5FGfOsB?=
 =?us-ascii?Q?2BV6duqDsyKQj+DPUJYipiM5EvOWiVn1Ct169wAaVTCOWw1THu2E8qis5S71?=
 =?us-ascii?Q?scAmX368GXllu4RC6nhkavy7r+VcvRBkQOu0kUnK8RKqRFO7goFtwJJ6X5Mq?=
 =?us-ascii?Q?6U0w6bUEZqDxBTqhHTQ5csJiBQOD1Lu8t0+rOhlXD8LABm7eXSFwNtCuzEhN?=
 =?us-ascii?Q?gbEkZx2Q3MGWMTq27JtHsz5oW4q7mQcjacofnRKvu5sTUAedYn13ZG3Irv4a?=
 =?us-ascii?Q?Jg5x2EchJDqxN7zWNCHxJmQ+mV7u70fAQEzAShN7JA6rYakXucsitQ2xNcLC?=
 =?us-ascii?Q?UrGfVZg8ly3OW8Vo4CMfc3EXGq8yH9Rzo2bzMHoBTU4WmBae/LFj4Xl3fKbu?=
 =?us-ascii?Q?D92kRWLSZ0zIhhMRpxxo949wMOE+8lKI2NbDTbzrfN7FCxJQBGDEH+AVNhMR?=
 =?us-ascii?Q?PMsEryRvSQgoHoI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F6BCdeXw54rs2PRHqcNWrSS6Kh+PNw1xMJAbbcuYW6fQcHd5y1sphonCtn3U?=
 =?us-ascii?Q?QmCabgtBR/3UyRdQe0PYtc5lIIm0+TtCrGBwyFfQEBPQKFEriA1BIXft5AXd?=
 =?us-ascii?Q?ElsPckEAhbLZaZfz+4ijupc1zdjEfEe2EUk21i4fUq5S4hbclX7Dvb6BvzU4?=
 =?us-ascii?Q?NgtYr48LxHxZkqcW8cW7B01bfl2gNoMuHOS3nO6bpl33onoP1pgahFdpL4gc?=
 =?us-ascii?Q?PinCRzFYecR7ZQWfYgEUaAh8N5uxDL4td2lZyj7xlYKyXZr0vuNLTko3ko2j?=
 =?us-ascii?Q?3kkLt5LlDr7bKL99I+GWgEcHNuv6ZJF9pE2Au5KB2XEdbEahTxdVPgmRatzg?=
 =?us-ascii?Q?H9HqzEnSiFn3EF5khaxC97snstbEo7eHBaNBP7ecEsfW8o/pt9mi9sA/JkaQ?=
 =?us-ascii?Q?zQ7PpYCl8nRlOv9J0vZzWW2ev9CPG5zSE5WB8bS7jPaGKjJ667Lh9IUB5dPU?=
 =?us-ascii?Q?+1xYrlydNJcmNdLE0UqzIhj4bBslRdesIJBKkR7p/8ln8Awpkxxrs2Jyb4C3?=
 =?us-ascii?Q?jFD5arpJVLj96VFqUUsx0QVOMoH1RIzXae2m5bTcgRhd+PCJPHRhET2zDaF1?=
 =?us-ascii?Q?onABRiTuBQhN0UcQWumhrQhUugkFHAySdB+Bd0OIp1BQkBsrG+b2hXuB9bsp?=
 =?us-ascii?Q?03bm5aQMGibsTMLmzolRkgNrg/bkmZc4NULtbjMw9JDFMz7dg38lNdmXn9dn?=
 =?us-ascii?Q?lgE4cH+yFzJ2XbQK17DvLtu1ntkXJOlYvh2nWSGzs26M35gh0JIfYqzCeGif?=
 =?us-ascii?Q?7j60UYj5FVTZ8TOwcINXktRuiZRG0hlSsm72u1bxtEciehKZZJenO28ZN1om?=
 =?us-ascii?Q?iNjfXb5Pbr5kLK+T3kpRWcKZhKBKBZ7/L4FFVIOp2uIEPjc4rhn3w4HcHnK8?=
 =?us-ascii?Q?6DesVrHN3QgPb3x6veEtlUNQaZDmOjbYYJ90QEJoo6x9x3tok1R7mkqbaEqj?=
 =?us-ascii?Q?tOJJCNaBXZoD6zptx8ciA18ozX4hJjL5Lmv6bLKQcjWveq2G6/UTbqV7oOsP?=
 =?us-ascii?Q?CIy+hwN5dEHEJN3EjY15chofbxNXDVpjpD8dBEKfiTwcfq8y2K3Dd1RZ82xq?=
 =?us-ascii?Q?uOAV5qabG0+oxgZgBgd8ttJE0MlR5Uz1pN745pwHvnODFRrkh2MFWpIjJK7r?=
 =?us-ascii?Q?rdZTQ7OHLRI6Ara2JmFo+4E3HOyVlWGeToukFxF9Qg5iRIMC6AGUXlXwBg7X?=
 =?us-ascii?Q?SL3OVjxFVSmXHIGMR0OiVb47VzYn3rutRdMozy/WC0Jk5mtHSgH3DlZHQIPv?=
 =?us-ascii?Q?SZwpGlb9pRjBIoe8SmYf5vJsBk4o7AAhzcuWbwDKwas94ZYUlvTIpQ/dvvj0?=
 =?us-ascii?Q?CNleNHxJi/zqChes3Nt6UgLvETsM+2wVmzldhSr9BSddj6OC7ju/lWgwgbOk?=
 =?us-ascii?Q?4wEzjFAWpGznT3Q02bf8DAklV3k/26GxR/y3/p7dxsHdpFHq5tdEkY79IoUe?=
 =?us-ascii?Q?qIQ12Vqc7K5NamkHhQNOaelQO/GklJjvgDAlQumsPGBxAAH8i7i0plyFSLwS?=
 =?us-ascii?Q?S2uBjXnOmMZ2XyQC4PuYOb97tEqy+1+g21XN8qYnP6FzjFQd4ErUQzeuMgxd?=
 =?us-ascii?Q?NhZ2otwrx59RGhljkw5FMoEPA7WGsdWX2VjYSwtLsWO6HIhLTpl6CfqkTKYP?=
 =?us-ascii?Q?Zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf9cca5-6277-4942-e976-08dde9fbb5fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 08:35:45.5900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4hNHYA6S6h/iDB5aaOOm9lIND1M0zB2UDgZc98Zd6HTD4C/KamkOCpaspngmzPm+4TSzWnKctQD3I2MtsqyS+7Dhv/FwCc+WbCcsKiXWbjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756802154; x=1788338154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xS84EeX+bQTk2kUTCcZ6mjCnxJapbqqiAY/31YFxYjM=;
 b=AngmB7LKDafgVs/dFeKvqYu6WuBE3BEsw4kMkkvKTtgIKz87hHNnaf5T
 jUl5+cYzJSqLNFn4zcxJUcbk4jP/PNOBvn6pHziM+bKni3+5xgT3+0Fxn
 p4FhGZRhPDJnEicEvwyDST/cgD3WN5s9ylgPYb+LqeQdDvBh0GD0xB46G
 LZr14Fo/tuaT/Oi8dyqfeS+iwfxArz5faYIi4wp5vCNmPRiSpe4QN3zrZ
 tVcsEZYsgaiP4z0rZkU3y9v/8gxCXW5eDrLtukBy9SQma3YDd6QnhI5Xp
 Hq/9oVO8UWbRN5BlTrxS1GGb7n76NdLr2UxiLCY2ohsXYIdlvk6q5FlQE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AngmB7LK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early
 devlink_free() in ixgbe_remove()
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jagielski, Jedrzej
> Sent: Tuesday, September 2, 2025 9:45 AM
> To: Koichiro Den <den@valinux.co.jp>; intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> mateusz.polchlopek@intel.com; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early
> devlink_free() in ixgbe_remove()
>=20
> >From: Koichiro Den <den@valinux.co.jp>
> >Sent: Tuesday, September 2, 2025 2:40 AM
> >
> >Since ixgbe_adapter is embedded in devlink, calling devlink_free()
> >prematurely in the ixgbe_remove() path can lead to UAF. Move
> >devlink_free() to the end.
> >
> >KASAN report:
> >
> > BUG: KASAN: use-after-free in
> > ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe] Read of size 8
> at
> > addr ffff0000adf813e0 by task bash/2095
> > CPU: 1 UID: 0 PID: 2095 Comm: bash Tainted: G S
> > 6.17.0-rc2-tnguy.net-queue+ #1 PREEMPT(full) [...] Call trace:
> >  show_stack+0x30/0x90 (C)
> >  dump_stack_lvl+0x9c/0xd0
> >  print_address_description.constprop.0+0x90/0x310
> >  print_report+0x104/0x1f0
> >  kasan_report+0x88/0x180
> >  __asan_report_load8_noabort+0x20/0x30
> >  ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
> >  ixgbe_clear_interrupt_scheme+0xf8/0x130 [ixgbe]
> >  ixgbe_remove+0x2d0/0x8c0 [ixgbe]
> >  pci_device_remove+0xa0/0x220
> >  device_remove+0xb8/0x170
> >  device_release_driver_internal+0x318/0x490
> >  device_driver_detach+0x40/0x68
> >  unbind_store+0xec/0x118
> >  drv_attr_store+0x64/0xb8
> >  sysfs_kf_write+0xcc/0x138
> >  kernfs_fop_write_iter+0x294/0x440
> >  new_sync_write+0x1fc/0x588
> >  vfs_write+0x480/0x6a0
> >  ksys_write+0xf0/0x1e0
> >  __arm64_sys_write+0x70/0xc0
> >  invoke_syscall.constprop.0+0xcc/0x280
> >  el0_svc_common.constprop.0+0xa8/0x248
> >  do_el0_svc+0x44/0x68
> >  el0_svc+0x54/0x160
> >  el0t_64_sync_handler+0xa0/0xe8
> >  el0t_64_sync+0x1b0/0x1b8
> >
> >Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
> >Signed-off-by: Koichiro Den <den@valinux.co.jp>
> >---
> >Changes in v2:
> >- Move only devlink_free()
> >---
> > drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
> > 1 file changed, 2 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >index 80e6a2ef1350..b3822c229300 100644
> >--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >@@ -12092,7 +12092,6 @@ static void ixgbe_remove(struct pci_dev
> *pdev)
> >
> > 	devl_port_unregister(&adapter->devlink_port);
> > 	devl_unlock(adapter->devlink);
> >-	devlink_free(adapter->devlink);
> >
> > 	ixgbe_stop_ipsec_offload(adapter);
> > 	ixgbe_clear_interrupt_scheme(adapter);
> >@@ -12125,6 +12124,8 @@ static void ixgbe_remove(struct pci_dev
> *pdev)
> >
> > 	if (disable_dev)
> > 		pci_disable_device(pdev);
> >+
> >+	devlink_free(adapter->devlink);
> > }
> >
> > /**
> >--
> >2.48.1
>=20
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
