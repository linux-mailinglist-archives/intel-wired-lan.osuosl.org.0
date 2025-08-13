Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4587B24326
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 09:50:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76C0B41025;
	Wed, 13 Aug 2025 07:50:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tLbxbMV2zfY9; Wed, 13 Aug 2025 07:50:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D372410E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755071420;
	bh=aetTxH7klv8IV1YDpFgem85+T2uKahGkWX8NfYQXm1U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t9ifI5Ja5WpNk0ZRkpCkDaq1MCH+DUvm0C0GmYocMAJCGjvX5mZaqaMX44slpcnDd
	 TIvft1GlqXIQ9ItwIlWyJ3czhdvnlo9K0G5sG3ntxOH/muE0NPSkCdD5cuyinLW9Px
	 oHidLeT6XLbkI2XSdKkEyFgKphw36HLRbH1PWImS70c1BlNQHLAehOmyB8AROVQItu
	 AEMvuieeOHIHVRCtwFNwLVuOHJmuv+I4x4JbB25l8xli/XrHS7lYGuBhpxwI/kJGry
	 Xi8Q/iJ636YR0OzZh+VqxT+OPHzA9PM2adp+ZmXgbCVQuC1HOBEFce+pxU3GiXlM6B
	 oHFL68u5m7BrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D372410E1;
	Wed, 13 Aug 2025 07:50:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94C5A1B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B232402DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 25Z9eO9IE4Zd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 07:50:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 72E244030D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72E244030D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72E244030D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:50:14 +0000 (UTC)
X-CSE-ConnectionGUID: X+2M/wHDRDGk+rlWqz86WQ==
X-CSE-MsgGUID: rjCzjyAPSDW2pwq3naBdbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57260421"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="57260421"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:50:15 -0700
X-CSE-ConnectionGUID: NbRtJWXQSiuEncogCDYDyA==
X-CSE-MsgGUID: hEtvb8nDQ1W0lK66s4VjEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165585073"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:50:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 00:50:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 00:50:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.87)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 00:50:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jfce6Ktme4e1V70BJ7HuwmcVBSnfbTG3I0a8+f6HALNPgmU0RYMWAycQTpUGVFfaK9TAf+otrlGKh5XyocCkbyBbEBdBnT1FwFNILY7OujcHWwlOAMXwl/jSJu2uaKhaJ0fHtf2+F4pLBrysl7mlPaA2IzWeM5uPFbuTKCH/vWJgsHs8F8Y7rPA/slSRPtDffghKmJGKkOgv8uB/66e9buHwm8se/fx9ywr8c/zLDaYNB6w8d7lzckWmTmao0Vssf+IVPrZhu+u+mYWKx5CSY2a8vvgKDAEaqzqdCpGOeNaUSXKJYD/YAXWTuBc3InY8cDAKFZ2m8576erPdDSaO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aetTxH7klv8IV1YDpFgem85+T2uKahGkWX8NfYQXm1U=;
 b=O+fV4+XEVUrERkfK6WzAVNyAXprejVYP+UlmP4Z8OBuzyoiz2SL8GSHP+UiuHwmUONy3fCG3kN2A7y+LJFL47s7pcfqkL9OAJOopdbqjVW6qWGQQ4FF21JbxiNQRDANLrhds17NaYsy9n0LmyfAQQLkeXFlal1WCudmfBESQE9QILGs+o7+w002XWIOZ0b40rnhEaemuWGo0VqJMxOReqpwcrMmPtvT3jZQxHw4Glhzk6Zl0n18GT9XnFaTFVL+d0261RfIe2BV4lvfhoqwxt1GD/zq5f4534f060QOWkcoUwaQTsmsbE8C1ieIbIPhKus5i1y1PwdTVhcPkf/pxlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Wed, 13 Aug
 2025 07:50:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 07:50:10 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v2] idpf: set mac type when adding and removing
 MAC filters
Thread-Index: AQHcC/v9fXJk6goajUe8CAc3x0MwbbRgNWOA
Date: Wed, 13 Aug 2025 07:50:10 +0000
Message-ID: <IA3PR11MB8986B855C66D7961EA7981EFE52AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250813024202.10740-1-emil.s.tantilov@intel.com>
In-Reply-To: <20250813024202.10740-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6996:EE_
x-ms-office365-filtering-correlation-id: 966364c9-3afe-437e-df96-08ddda3e0767
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HI6K3J+bZ6EjGiciThJrGPQ1gvEE7k3LNLUBwP8DfgRojIrD1UZSgruVQ3x5?=
 =?us-ascii?Q?3KPr6QxiKGeFpBW5yGfp2gpzuiqpoEhTvmhoRPcMvB5u48KByxdOICDyMMCW?=
 =?us-ascii?Q?bqqJwZEG1gq10xLyXZ6mIflayPF/ZU8tVI8ohr9Z3C1xBg4JCNSuEbPtS534?=
 =?us-ascii?Q?OLie9LCxE9t613LdPN018R/OUw/FRvc2gzvi2lRHsAZqJgZ5PqV7ZzGhtaTV?=
 =?us-ascii?Q?EbyKg2bDsKd0PWJKRvs78QWTsOSi1wnxYidL6B4qqPbDDz3M78qiXP9SJqpT?=
 =?us-ascii?Q?4UbxwGKN9noxojYeBoL2Krmd30uvRfYJGBRrMU7doIXKkJbFFSfgz0K7+AQf?=
 =?us-ascii?Q?M33ocBWn551/ZfFOyilduIcifdBOKAxC8iRnhUKpxjBssElh4tjDUYLn3f/v?=
 =?us-ascii?Q?fc3ZaxyDao/LfTqhPV0YM8xZF5P61BjWWi5nhfemABOxn+r+orkcDwkzbN/I?=
 =?us-ascii?Q?8VRyvjOC7ezeds3v6vQe8brzcqei2LFNjdTpl3lgn45oCQEt5IDbUruIefqn?=
 =?us-ascii?Q?hQWJo6gGuydjoY22BgubNc2XQTCGRrzd47ediochxjFU1pRh6qw5STlCeK/1?=
 =?us-ascii?Q?uySzg/Fy/3ulJzMIUDneArqqGX9iL/aEF4KnBUC6WjVeK4SdPBLTGydMbaeL?=
 =?us-ascii?Q?eq3aoCAgu6n58uBLgSI4ZuykXxLc4JTY6iBeyS1yvqONxPHyMYobOa8VLLbe?=
 =?us-ascii?Q?njUvSq6mWPoKv25yC2EgVtuQqGtq1od6orbWyejrZ+X+R2DsQzhsL72cOdWq?=
 =?us-ascii?Q?HvJGzPbr/02mpZhj1PjRkoPQiPPBPl3lZzajOrBoUVbL5helGGvvgvltNEbB?=
 =?us-ascii?Q?y4hWAjWQ8+Ed/21WNv6z1myslB8NWfaLFJgzLvocuwqSNUx4VYMUtF8G+dNc?=
 =?us-ascii?Q?zehFQTUlWowQfXS3/7XA3gCQKwYhxwRthSSB+vlW4ByEu6uL+264kONfN0O7?=
 =?us-ascii?Q?GgYfk918M7OIfK0xJsZ22NihxoP48SKW11Q6LYm438SUE2sXqngkB75mt4op?=
 =?us-ascii?Q?8pRlv5L3UERS5terVq94FE1+okIIMslMnG7U98l+Hl27mxaxer+c045whSVO?=
 =?us-ascii?Q?PoWQuetfgwPIvZUTHzGNupo+dNAzdCKS1U8gBXcp7Agq/FQZGhnNeBMCqL9l?=
 =?us-ascii?Q?O9ACBzqaAB7A+01EmWiUborPJKdBOVAe29o/YeJvCgEa0YaBXZdEEKe5ZUld?=
 =?us-ascii?Q?4tLGEEpn66JNbubukza+VdVTc0tNED7KyxFHvLLBdcyHF82udUogRaYKOgQO?=
 =?us-ascii?Q?ayD94a1bZUYNVbX2EzayE8hzpjwaNqvP8U0I29m+eFZUzxGSHuP5V2hBNeCK?=
 =?us-ascii?Q?ai15wMtPwZhy/rQXJkFAdiCOLXMrRTdi/Enw71B45ld8xS8pcPosnqIHw8sC?=
 =?us-ascii?Q?ngr5/xyzL8eRReuAXGH5WGI+XgSuXGxRHh6WeZ6QlXWzGnfoF3BZiBl2n+eQ?=
 =?us-ascii?Q?SNW7ZI1Iqk34CyonuouMIg2j35QNnBeu3ZcOi2NJIVijAMaUudbXLhjASZZF?=
 =?us-ascii?Q?j38g3fRW/aN53WU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p7u3K/zfl0HUmmea/th1/TCzr76ddhy9ZomquVQpjIYB85gubUTiPphXO4Yw?=
 =?us-ascii?Q?ozMNlXJzBGI6KjgecXb0a/UfbLU/miMFXBRuAqq9RrFrCTFhNUlOP2eY04X3?=
 =?us-ascii?Q?sDAFOlmcm+AZY4eYsoCtdtt7JiCS6KDtELIR216ztnrcoRYW4tYBrANw0U9I?=
 =?us-ascii?Q?aCeWJx+jpuCDlEMGEafn8oQjt2WUAToRmCebs1O6ebH1piVHJo7Z6CHrXeia?=
 =?us-ascii?Q?EQflzDvzhzU1NSSRsWmbDLr8WtYgzRHOYJ5DWRBqtlr/vfSEpgLMBfxX9hV5?=
 =?us-ascii?Q?tIorIrQI3yJUDEbYt69NbpNceX32nzxljKfrrld+zPF7vRcdFoTp6eZPD6PP?=
 =?us-ascii?Q?bNW0s0Jj738vfUQ7I6Z7U7It9X1LXtSxsPnHoSJAl3QTHV9xUclsTKohmhp7?=
 =?us-ascii?Q?/Vugo/Zmyj299if7N8z+ZEpc5O7mtvcXjGvbnZBEOVExGF+QQ5B7gkt7qh3h?=
 =?us-ascii?Q?hLOACTUFYiqFeBSAGBsXHs4IaoJe9MXfoZ1zfor88o8B80wxSTJYYBBUdLSJ?=
 =?us-ascii?Q?eEkL6g1HnTLwaBjBSHXrG3tobVUv4bb0X8IO69kF7HxOxn3dBgUJXpiQFMzj?=
 =?us-ascii?Q?hvBnjcDvTtIP4pjxNP4J/w4Exhoa+VFz0hGUPFSL3Wgi5LJMO3By0oyyuEmz?=
 =?us-ascii?Q?NpuYQmVOlVD8JKK4fI4JyjYSkYCTas+aof2keDZ+LFCxUaqMQK+BkUiTnXgc?=
 =?us-ascii?Q?swuBG83Be/c/Yni6rwO8+E2vvCoN3GLrrNflvR2qB/+JW8uIseH6g/ibd2c8?=
 =?us-ascii?Q?iYdalPAAFdkXmraUQ7kPj4WByk9Z0JvWZQhQVMWyAP5H30+S3lUQNPotld9r?=
 =?us-ascii?Q?J2p/h4aEELLeaoMv1XBP4YGJ30+xLg/44AoUrcwe+hKRzCiv9MVptAM3cKat?=
 =?us-ascii?Q?20jbmS/8a8vj3EHF7w4UJEbxGHhvcDxTuC0S9nxqE49cRswH/NiIkVGyuBzU?=
 =?us-ascii?Q?oe269CrvIpxDTsnyloE7ETrQRleTRC1M7djYsVkUpgefo2rQB2cg+gJopCIj?=
 =?us-ascii?Q?IGto8RZimkABGT8CPRVNpsj94yHPnWWX4YihKL9Ofr0ALPdXjekE70i3yG2x?=
 =?us-ascii?Q?uPKrSPanB2xTS6KirII827x1XTCA1Q8kuydC2OOX/A2hbKG1NCEO3YFrvWnN?=
 =?us-ascii?Q?gm97hnddImOi8qtNyEoTURAcOwFO56/aRwnFKDKO16GL8/MuzL9o2aDIo9gB?=
 =?us-ascii?Q?uapzxJIBPe/jkFYj1kG3Up94J/4k0c/f/uW7CHola65hdpcEk2So9jCn7Hoo?=
 =?us-ascii?Q?op1hJDXmJhrVCTDhPJcc8zyM3jmyyyyieKo4WHULiJSh2r1zidVnWPMMDG1F?=
 =?us-ascii?Q?7Fc45ajNevrVPP73Cl2zP6HuRBUSJ6mQbnV3z+xops295sY3n4Ps1jv7ZXTT?=
 =?us-ascii?Q?7RQ2r8hOv96Q38dk28XK9nj30HU21ej8x4Yw0l+OFYKTZ3pzOa+aDRYOd1h6?=
 =?us-ascii?Q?TK++Jami0o+YNSErpPGdQ7+Gtv/aYqwtYHyHEEkYbGmOn0kf5paTKLw1KZQd?=
 =?us-ascii?Q?59CfTUE68Agpva1Hc77Oq71gvksVREJ3vSxYlHidJzO9Y+LpWVkM8fAMIfBp?=
 =?us-ascii?Q?OrfPlfMJqNZaGAwo2REvXcslxRpwBjbiCpFfh9Bpmcsl8i8m4wUKGKvzvpwT?=
 =?us-ascii?Q?3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 966364c9-3afe-437e-df96-08ddda3e0767
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 07:50:10.3132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VNdCxj+rJAHT4DHJnMHJA+OgkJEKaCGki6XxnBTOSl8rLZ1C1cd1Nyf6Ob6TlXj+2buwPiR3df5cJRqm685WlE6Z+ROHokgUIIOOLjEWBrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755071416; x=1786607416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iiOz8qgfGbfz3qeB/DizlatrLUL/FBZ1lx5mmoeudvw=;
 b=gBm0g/clP+t4RYb78zJnFFxRp2i8Sqo77a3cO8IjtPZuFa4ZUcJJxPus
 Hx0DNdflkhLPOAj7LL1OKSRNg/w6LXW0NH4XL7xd5jn5QFFoLii/Jh32j
 roepG3rN7y8oxHmAGTrn5GoFgxxYwI7mHnOwN2Yl2GWDGQSWjjquImps8
 unqRxYT4amUv6QMsECy8z44XgpZRTkSPb7y12CTVaNyWHX7hjVNHbFtpP
 /Lq7fNxVce/wHfTfQS0n/5SUfoOcr45gRxZxQ9eyh/80xufKkImNATzPW
 4oS6FOLsJr6lgDryBPEIJnV1e//YQT6Sg/TdzS/YVggNtsZUklCiBNE1d
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gBm0g/cl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: set mac type when
 adding and removing MAC filters
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "jianliu@redhat.com" <jianliu@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Sent: Wednesday, August 13, 2025 4:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; jianliu@redhat.com; Schmidt, Michal
> <mschmidt@redhat.com>; decot@google.com; willemb@google.com; Hay,
> Joshua A <joshua.a.hay@intel.com>
> Subject: [PATCH iwl-net v2] idpf: set mac type when adding and
> removing MAC filters
>=20
> On control planes that allow changing the MAC address of the
> interface, the driver must provide a MAC type to avoid errors such as:
>=20
> idpf 0000:0a:00.0: Transaction failed (op 535) idpf 0000:0a:00.0:
> Received invalid MAC filter payload (op 535) (len 0) idpf
> 0000:0a:00.0: Transaction failed (op 536)
>=20
> These errors occur during driver load or when changing the MAC via:
> ip link set <iface> address <mac>
>=20
> Add logic to set the MAC type when sending ADD/DEL (opcodes 535/536)
> to the control plane. Since only one primary MAC is supported per
> vport, the driver only needs to send an ADD opcode when setting it.
> Remove the old address by calling __idpf_del_mac_filter(), which skips
> the message and just clears the entry from the internal list.
>=20
> Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
> Reported-by: Jian Liu <jianliu@redhat.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
> Changelog:
> v2:
> - Make sure to clear the primary MAC from the internal list, following
>   successful change.
> - Update the description to include the error on 536 opcode and
>   mention the removal of the old address.
>=20
> v1:
> https://lore.kernel.org/intel-wired-lan/20250806192130.3197-1-
> emil.s.tantilov@intel.com/
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      |  9 ++++++---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
>  2 files changed, 17 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 2c2a3e85d693..26edd2cda70b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -2345,6 +2345,7 @@ static int idpf_set_mac(struct net_device
> *netdev, void *p)
>  	struct idpf_vport_config *vport_config;
>  	struct sockaddr *addr =3D p;
>  	struct idpf_vport *vport;
> +	u8 old_addr[ETH_ALEN];
>  	int err =3D 0;
>=20
>  	idpf_vport_ctrl_lock(netdev);
> @@ -2367,17 +2368,19 @@ static int idpf_set_mac(struct net_device
> *netdev, void *p)
>  	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
>  		goto unlock_mutex;
>=20
> +	ether_addr_copy(old_addr, vport->default_mac_addr);
> +	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>  	vport_config =3D vport->adapter->vport_config[vport->idx];
>  	err =3D idpf_add_mac_filter(vport, np, addr->sa_data, false);
>  	if (err) {
>  		__idpf_del_mac_filter(vport_config, addr->sa_data);
> +		ether_addr_copy(vport->default_mac_addr, netdev-
> >dev_addr);
>  		goto unlock_mutex;
>  	}
>=20
> -	if (is_valid_ether_addr(vport->default_mac_addr))
> -		idpf_del_mac_filter(vport, np, vport->default_mac_addr,
> false);
> +	if (is_valid_ether_addr(old_addr))
> +		__idpf_del_mac_filter(vport_config, old_addr);
>=20
> -	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>  	eth_hw_addr_set(netdev, addr->sa_data);
>=20
>  unlock_mutex:
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index a028c69f7fdc..e60438633cc4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3765,6 +3765,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>  	return le32_to_cpu(vport_msg->vport_id);  }
>=20
> +static void idpf_set_mac_type(struct idpf_vport *vport,
> +			      struct virtchnl2_mac_addr *mac_addr) {
> +	if (ether_addr_equal(vport->default_mac_addr, mac_addr->addr))
> +		mac_addr->type =3D VIRTCHNL2_MAC_ADDR_PRIMARY;
> +	else
> +		mac_addr->type =3D VIRTCHNL2_MAC_ADDR_EXTRA; }
> +
>  /**
>   * idpf_mac_filter_async_handler - Async callback for mac filters
>   * @adapter: private data struct
> @@ -3894,6 +3903,7 @@ int idpf_add_del_mac_filters(struct idpf_vport
> *vport,
>  			    list) {
>  		if (add && f->add) {
>  			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			idpf_set_mac_type(vport, &mac_addr[i]);
>  			i++;
>  			f->add =3D false;
>  			if (i =3D=3D total_filters)
> @@ -3901,6 +3911,7 @@ int idpf_add_del_mac_filters(struct idpf_vport
> *vport,
>  		}
>  		if (!add && f->remove) {
>  			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			idpf_set_mac_type(vport, &mac_addr[i]);
>  			i++;
>  			f->remove =3D false;
>  			if (i =3D=3D total_filters)
> --
> 2.37.3

