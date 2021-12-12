Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE3F4719BC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Dec 2021 12:08:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA4C740345;
	Sun, 12 Dec 2021 11:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id twI5RL6eaFRt; Sun, 12 Dec 2021 11:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60610400DE;
	Sun, 12 Dec 2021 11:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA561BF393
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 11:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 168C880C3C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 11:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="aV4t3vOF";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="mqy1VfTY"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFbD2XN_svw3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Dec 2021 11:08:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E146980C2C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 11:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639307325; x=1670843325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tSq9IXK0XcjtnX5AQflvVc5P13f8gqax3ot30csRxSU=;
 b=aV4t3vOFQazjO+1fAbEOizgi8rtiJTTBhPGfIQ8y+l0RUC+oJ6lHW3Ew
 aedueD0FCZSQHOFWGIj2Pu6w1w6TLb9FFlZaJSZO/o8kKdzaTv7Erv7Kd
 g0h95Py4ea3re1p3htETVHbxoxNU9wV0m9wL8sH95ZG0B8/g4FEfT32QT
 7B7btD4rJmiSj7hoSMC+I+7z/PeQF8Dq3rk6vlObhwjbIykToF/x8idpp
 DJLx5PAm+H/qhc/Kvqv5lC5tZQ05tfL+6350ebloQQohwLA3ZvcabNbzK
 xeQ2zxgX1a/CHPEtXWg2bkhvEeQuR9qotHxmE5db5y+4Fnq4DXCJw610z w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="237330546"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="237330546"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 03:08:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="751561082"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2021 03:08:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 03:08:44 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 03:08:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 12 Dec 2021 03:08:43 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 12 Dec 2021 03:08:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y6uQvH9EGrkvUtkLtrmXPfkUOJeIG6w6qLR9yfKwnMW/KYUVhDK3d9Rwi0bqBbk3kmskj1FXMH6uoJv80be63yHvqGawBlCUlQPCIUo3txgC3eJhocjFy+ktZ6BqjSdmegfGAQWyx2KuJSlHPDVfLaUs0eUqL8FBv9VMhGk5Yko8LvoH9X4nMEXXvX01JSEPEjhe01O6z3Ow7bAtqUj1XApfKSFHyiWhptlnZpO889Le7/fdklKbeO0rb9z+f52fCMkJy8ybXghzD92jKILmqGxasDlPa12xvgaNRgRYGemADncLiRWiooelVG4Mb6Xe38prYkxo6nmkxftxAm3f5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GhzfohMvRCA0KrWhbdDui4kvYLsNe3RsMCzPTGkK8Rk=;
 b=ofEl//DauMlda9UlyUG2rHu///ZFo162oCwASxF0/aapLISvqRdClutR+h9BUpQVJgW3c+OSZ9reNk4AW8sBoQhVgWVUi17g+wfL19yCGTKdJDULs0s+OQJgoXbB5o0QBu6BYRVg1rdo3+tdc0oqaLbESdOV4hW61FCNizVz5WMdE2Z1VODn6bcPWKeAuicMdbvzOqU0fq1spisp5cGqaZwPJjIzR2jgEOU0T8SiijOk9sBXlCbL+PNtp6GBNNHQoq05LC+DusIO1pS/qPe2+/XhfCKS7PI0ZSBGKM8/1bS3pRClsPzWHb7MzTNsjJeC+dHt4nEndI/g8Viyc9B+gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GhzfohMvRCA0KrWhbdDui4kvYLsNe3RsMCzPTGkK8Rk=;
 b=mqy1VfTYAWMsPZGA6TQQ2ceTswx+nL80mm0d3FjRe50/Am00BCvz5wranlRmoZdBdaDXhmEgdkdKcujfaUFSpEdoN0knWDZtDwzpG7jBUWwkU513+tUdxg1DWA/BAooTnmzlOJTD2H9ofSGVc6MC3xRKssQLdPdmyIXhFzrM52I=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.23; Sun, 12 Dec 2021 11:08:42 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Sun, 12 Dec 2021
 11:08:42 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
 queues is exceeded
Thread-Index: AQHX0ja69HvW7cfAq0Gh52yUGcC11qwu7Ljg
Date: Sun, 12 Dec 2021 11:08:42 +0000
Message-ID: <DM8PR11MB5621C9E713125315822A32E0AB739@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211105111700.204333-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20211105111700.204333-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2c4b58e-05d1-4b09-7405-08d9bd5fc251
x-ms-traffictypediagnostic: DM8PR11MB5576:EE_
x-microsoft-antispam-prvs: <DM8PR11MB5576AE70DD627EFAF6E06C5BAB739@DM8PR11MB5576.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n+T6rTblQGEFfhehYHlaEgrD5dzAOBdYWrQP7yDKc7EgjcQJGNF6+PEe70OSU1yKISXvIIZL4XQPQygiWtsP8mi1fDXtcpQoix0Xc1vQpSIRcms68xRwjbd8QNpVBLE1o7hsr84IizfwPP1OyHVQLGFu3M/r5+jUDYPKkV4gp/bVgDV+zG8rZgXxFFoahMe27LDlXEuwHsio0WSnWwH+nElvUWXbW6EFOpQJ+VHa8JdDqAwegIhWtBKaMQxG1rGP3uwaKpReucLfv0UXayftDrfCLccgqHUbe7msEtxtBUeHcLS81VquIvMDP5thgSPD0op6jLTBWEW/KdOlQQTtgYFpVUIPqPmzDURH0hD2y1jK4Olt9ePIR22REq9DncUadeXpbwhzA2P6bab/CZCVOiuxc0hlg5ZO9dvRRVG7A0KeQV2nFEeP3wR37lzaPg282mWPXSwm38SRxiicDZ5aUhUU1y/Zx3aQLE1UTIKMK3t5MfEP4jsRMyy/wX3pxNHtOWJAb/DYTOMAZvDMHFntCct6acQIDrAyEItlA8CpYv9PLT7jKPUCfgDI+Z3qX9RCxJFHnFucFYuwOBZ+WFbFsjR3kkvYisD38/ae/x2CbrwkweEwXYYX8VOtUJgfZqAdU7E5B/yLSTaMwM6tdDnp2YSA6Lr1GLXTDNcQiiBHj9jnts8L2AMywEXn8hyz9SuHRkQEo3pWPVkxTMIMzbrm+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(38100700002)(38070700005)(53546011)(5660300002)(508600001)(186003)(86362001)(316002)(82960400001)(6506007)(2906002)(26005)(4326008)(55016003)(52536014)(122000001)(9686003)(107886003)(33656002)(7696005)(76116006)(66476007)(66946007)(71200400001)(54906003)(66556008)(64756008)(66446008)(83380400001)(8936002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?gFGp3SIQ5+Jffcf8PH/Yg4UpBFjMJ+0uKuMptq+gBDszQ6bnPVsOw7wLtj?=
 =?iso-8859-2?Q?MntYtryL5YGeT3ygpIVIGzu6eFXK0+nqhS6f0AUwWuM9ssB7E2CiLELtUR?=
 =?iso-8859-2?Q?gaZbauRk2/SK5ucFfg0gerir5qOefRCgT7BUC0A0JJSP5daiQBq4SAFRPv?=
 =?iso-8859-2?Q?YXDwFMYzAJ/kt/wafGeXF8hh2E/Wml3YoCUi37pf+ziuid3HhMqhZk2zhH?=
 =?iso-8859-2?Q?FqKmAx1x4eAxEUDblUlviKKrZfAJJQ0tlifTuDobhB1UTVx+7Yyl2VcE+T?=
 =?iso-8859-2?Q?Cf4QUyaE/1vapzqRoHVOwfBE8UFIvLvJQU7e0LV6il1CP8Whyzx7S7zPen?=
 =?iso-8859-2?Q?+NEigtceJKP3U7rE36H6UWaIO0T2HNSwSCyysep+BZ/7vfdqSZVS6O4gws?=
 =?iso-8859-2?Q?EQ/0x/eYeYrxLTkCa8FLgHdO2yCJ1gkC8aQYOF6lXgRse/n6lnydheZyeg?=
 =?iso-8859-2?Q?OS9kAasXErFunNFnInbWuLt5NM9sUcAQ2XKqArjg00gF7ZmMv/zFrBO2Dd?=
 =?iso-8859-2?Q?56UHNqwb6XheFBJhgDI6kp2GuBGvEJF10QPkdq76Oztkv6IsuzTmkD5I5B?=
 =?iso-8859-2?Q?cynSOTdsecRfab3w5LXL//r1nBKOKrQuLjnhRkVQrngj5mS4dLoCOsACqY?=
 =?iso-8859-2?Q?3/A5s0HMp8JNMV1/H633vnOSdsoJWwooaFQj8hjSDYb0sSQRTp0eZXkD2+?=
 =?iso-8859-2?Q?R5pjiEqtB1HCDzQTk0yHzFCXk4piQYh7hwsqHe5slew8d5CDlsWzTkmCt3?=
 =?iso-8859-2?Q?57hhg8ACtta7z91IHnrnixABuoGRX2Jtx+5L+Hn756Q4s2pKOyhe+ajnvY?=
 =?iso-8859-2?Q?Ts8TNHiqhfKFuSvSA0tXpJvqaz2bKFMlr8nkHq286WKV1SxOIbA4us1gLE?=
 =?iso-8859-2?Q?3zGbyeEEQeWOWJBk/ZdXnJwwBR3k1efjTMWqvKs5LY69kKSFfvMT8VYnM1?=
 =?iso-8859-2?Q?x3tCooB/aNegTxNOBw0TQ7h62owcV29twARCAkzmY7Y9VLALa1NGCSnp7K?=
 =?iso-8859-2?Q?hIwMzJZlJWyaJ8WDh/VsPqwIkF34GQw2dcEgFAF51IekoDGMy87GVWVItc?=
 =?iso-8859-2?Q?ayduaCT7H3+CpuDofNzt1ZokWS+vrc94MnSZ1rQiAW+CInT4iNLRBxHJv6?=
 =?iso-8859-2?Q?x10xt94GhzP4q5mt/d6CHQovBKg914+q/+ab4E7ceQPTwF2W3XhTRqgvjN?=
 =?iso-8859-2?Q?oEGpjubdWngqmvfjX7mZFwuPec/PpMvLPt/B1aV4Xs7ulguQJpcn4Bav+7?=
 =?iso-8859-2?Q?y8Rq5Jz2/5MkqDPivzn56StWNFC82HVoOrpAzkKKY+M3G0hcwMPsm03i2U?=
 =?iso-8859-2?Q?pH+dS5azTZs+YZv8rpG1cwMYI5dxzzHoVT+/T0LQngpAgSCP/dDJQfErSq?=
 =?iso-8859-2?Q?YF/1Kzi0DyA5NkrXIfN7uNbY9Sk764QdEWS8aV90m5JgB28IXjr2jKFea2?=
 =?iso-8859-2?Q?88kNnmtd/IjWlMao10hu1zNC5HwGq/ArAT4/ZjScPw7nwVkKm7fwFxg9m4?=
 =?iso-8859-2?Q?LPtWDdvZRTJHJOOAicMSEQuw4hjHRq9ruaWcxbQoxhvGV3KMWOOzwlne16?=
 =?iso-8859-2?Q?HDfWYGD9jkogAoVZahISQhBFFwhenlx2O6WvhplPyuyJOhu8zZ3hWsPcJW?=
 =?iso-8859-2?Q?kqys72etBCfg3+esjGfjftKdkhep0/k7VZsAXDrgQdESO9rrcAAUcSj18a?=
 =?iso-8859-2?Q?bHLNA0S9NZeaaB4HewnBh0ecuzuiBd+TRd5XvGIss4lYm6gE10FFLe08rs?=
 =?iso-8859-2?Q?ZAIA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c4b58e-05d1-4b09-7405-08d9bd5fc251
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2021 11:08:42.8241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0+1N45IMFicfozbFdTDjJBTrS9YYBvuTpdaUzcWgGk4NDALdSyPekJkUj0IB32aK0TsvsK1ow+GmatL2VQIBLCj+xaojKkUVgK1jZuKZvK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
 queues is exceeded
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Laba,
 SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: pi=B1tek, 5 listopada 2021 12:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gawin, JaroslawX <jaroslawx.gawin@intel.com>; Laba, SlawomirX
> <slawomirx.laba@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.c=
om>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
> queues is exceeded
> =

> Before this patch VF interface vanished when maximum queue number was
> exceeded. Driver tried to add next queues even if there was not enough
> space. PF sent incorrect number of queues to the VF when there were not
> enough of them.
> =

> Add an additional condition introduced to check available space in 'qp_pi=
le'
> before proceeding.
> This condition makes it impossible to  add queues if they number is great=
er
> than the number resulting from available space.
> Also add the search for free space in PF queue pair piles.
> =

> Without this patch VF interfaces are not seen when available space for
> queues has been exceeded and following logs appears permanently in
> dmesg:
> "Unable to get VF config (-32)".
> "VF 62 failed opcode 3, retval: -5"
> "Unable to get VF config due to PF error condition, not retrying"
> =

> ---
> V2: little tweaks in commit msg and changes in the code including:
> change from u16 type to unsigned int,
> comments change and line reduction
> ---
> Fixes: 7daa6bf3294e ("i40e: driver core headers")
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 46 +++++++++++----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 59 +++++++++++++++++++
>  3 files changed, 94 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index d7db443abeaf..88883724c575 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
