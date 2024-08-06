Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F17949445
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 17:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AE2140A21;
	Tue,  6 Aug 2024 15:13:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id idrwhZWvXSPJ; Tue,  6 Aug 2024 15:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAFBC409FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722957228;
	bh=M6ntu8jp6RejyPT5hjeXBdvYwvD29Ug3muwCxuTqfH0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=crkdI2jCPZ9LOhUyh2jEE7qz4Z/BsnfhzkaT2l5gFFBGpdKx7zxYeZultgIACP6C+
	 KcsJF+CpePzMjGrPTy0snFgOASPPcsp1+JvWiUVwlaAhwqTVkkvUr3bSyH+O74wSZJ
	 SDs8GUymY9C0Abb479EspN4ySrCwhYrcyvXTyHED0edETuTs4UEBtmmw20gqDQ/zWY
	 xKOPgsapT8I1bINz1C02JKiEI6JBDVAGGP+hI6+AKqBGJxG8ZdBu25rsaGTEBWFBq6
	 yQPfB/zHNKco9wIU48+85mIW4rYN2Hf5171jz4+RjsIUNdL4Xo60RdCmoQG/3v3KE8
	 Zsoq/GtTdhCfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAFBC409FB;
	Tue,  6 Aug 2024 15:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D62901BF35B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 15:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C30A060671
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 15:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QWtjIXaIGReH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 15:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD8A660657
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD8A660657
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD8A660657
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 15:13:44 +0000 (UTC)
X-CSE-ConnectionGUID: 5H4aUzO4Q3+pbYp9j9P5Nw==
X-CSE-MsgGUID: QIMgoNqESvmXCXFrkNd8Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20858081"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20858081"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 08:13:44 -0700
X-CSE-ConnectionGUID: 2HdnnZxxTaOYZ0sth33iXQ==
X-CSE-MsgGUID: 7Qjr5OpMTiqo2/ojPqz2+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56480727"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 08:13:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 08:13:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 08:13:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 08:13:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 08:13:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QUeogcDIXW9938/HE0sU4nTZKciJTMbEJD9bd2rkRpba6djTxI6i6XFl1O4fGTD2proooA3aR8bf2Kqb/V6sTqzfac5WSuLLZhjloulfClwNJAkGwZA1vJpsn1vNNFMgf2wshxx8yfB27od1P+SJqS+P7krK913glBXfJwHZEupjpMdpdgE7EKsGoz+Za1PTAfZFQtxSK1+FlsU9oDVdU/a2xutwk8Jc8fRV0XmhHCSq4MbmYq94bkhTgvy3X4jhR8KUknOID/1WNgQxmviuv+LkrhSAiNX8cQprqfyuqIvm0/nJ8M/3KrVfiEKRH1XTc8DrKK6uP+qq0qMbDjXM/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M6ntu8jp6RejyPT5hjeXBdvYwvD29Ug3muwCxuTqfH0=;
 b=xiyxbi6A3348ZLBAVv6GeyUrDdwL+R8lqooc8c6JYWjt/IaIYkvH/SgoiJgmsIx73Uvjj2lWoO+BcQg7VovBb9V8d7kqUd2c0OhdSRYsvjJn9ZCTSmnDzRCTbENReyIUU+1d07VzKl27+ec/sRrzvA0BK/jRUB8gDIiMxGeDtuF+JzlCMgeRWO94PCheken0HTyawUrF1Kz9UspsPsBLI6FSiWgZvq76tvZomEb4btjFzXNM45l58rp3MJnIg4XVZNC5FbeC27ofz0EMGXYtPXYKS1YLngb63hKrIKYZDBJhahEx1e8j+l25cI0fYRrmF0wmfisQpSIySSeYLKOwjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB8061.namprd11.prod.outlook.com (2603:10b6:510:250::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 6 Aug
 2024 15:13:37 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Tue, 6 Aug 2024
 15:13:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Eric Dumazet <edumazet@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] igb: cope with large
 MAX_SKB_FRAGS.
Thread-Index: AQHa2PCD3TsUUaYkl0CDaiqkXLGyg7IadB3w
Date: Tue, 6 Aug 2024 15:13:36 +0000
Message-ID: <CYYPR11MB8429498A55692627ECB2B10FBDBF2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240718085633.1285322-1-vinschen@redhat.com>
In-Reply-To: <20240718085633.1285322-1-vinschen@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB8061:EE_
x-ms-office365-filtering-correlation-id: f6af63ce-5443-4cbb-7525-08dcb62a586a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1FY52KTtl/JyQHpOlcL2eoppD/T3PHAXPuI45bZiIbu2yHm+/giI2p6GR3Vz?=
 =?us-ascii?Q?EuHSkiYI4cHJ5uMpDI3hR0dx9u6lUFfeMyG3pYF9dE8RyNT7RTBTkmvs9O1U?=
 =?us-ascii?Q?TVSvQm2jJO7D2A7eyGR5KXG3+/+vSQRC3xskQ5HhvHV15OH9OUGpj9kloFT3?=
 =?us-ascii?Q?5Ff4haLpcEtIRBPwDzzub8FHK8vWs1OY1MpWMJlf3SFosmv1sAcrRfh/ulNE?=
 =?us-ascii?Q?K+HXWGPurqY4gbq3HmBTv8EtLJr8X30xesGorddUJ8zU11D+ufO0CDz/VJim?=
 =?us-ascii?Q?diGRRxyfkRZ91lzQ8EYFhHCw/eFnxIGHvcuPnk9oK6idCFsfy5Fu/HYT54wV?=
 =?us-ascii?Q?j8TDe9u3n9Ox3z7r41CctQg4ya9AJNawFR45/OgjkLgF+YkFV5o81wEdb6wW?=
 =?us-ascii?Q?w6rfCJfcf3Yz60nARfaewzLwgs7L/UmYeOFoM96qSl2IAULRlDOaKLlZZMq9?=
 =?us-ascii?Q?oKzLoQC3zCHOv2pf/wB1D3UQ9anQ0wU6gE8rKfZJkgi72Ss9i+ardWQ1KGX4?=
 =?us-ascii?Q?9XWQY2oPancATPKfItyry4FuGC3/b2T2yiL5mVysj0V7CJuPuDZfHuzM+0f0?=
 =?us-ascii?Q?L9hDB64piIFFzYZXSpnlllO5EZupAfzCUcra8ZRxLeGDMxLoG0MYIM2LSzp7?=
 =?us-ascii?Q?aWZkvXCJ1YqvMhD9xQEC8Z1AVi20v/bhzD9/sMncX20bsefj8fjPpDvjUJAI?=
 =?us-ascii?Q?puWDwLLRgQthXu6KcNfQwKfA6CYnsBtBAOhZMCKoLIx3BfKrJnH2yqVbNYY5?=
 =?us-ascii?Q?HCbvbx8I8PRfeseBKP4EJrAVxcxSeNz6W9FBt0HCXLAZ0wA0B96mvLmTLwlM?=
 =?us-ascii?Q?6mNW2+0qAgaWejj8h4n++ZsgylxP5XGOwK+3GyHg6LJJIv6UwbuhDtaEpKWy?=
 =?us-ascii?Q?2PlcBagZckBYcq36qJxneUoUaP6JVKGPKfR8BlbWQU7umfNXqOSdo2OGSTUu?=
 =?us-ascii?Q?QgGz5DsKeQv4CSkSPCdbXHnON5lYREHTWxB+48hs/s022lLy7vTCyvT1LkNu?=
 =?us-ascii?Q?BmUhN/dVtLvOsPImCqozkfimgjBbuajhSorTvUHItd7iupBM5XKp0FOMXK5z?=
 =?us-ascii?Q?3xcf0syyjFWDv013aBgxw9yNqovisusag5+Abn5M2/EmkEazgpsQFxyGtO2s?=
 =?us-ascii?Q?Lu4vZfl8tRDna01iN0zHGeLw4pRqM3SqxrFY4UjRb+FTTmdtTO/T4Fz7+xyT?=
 =?us-ascii?Q?9rcK0dKO3YKCTQTrzrAB9edQT03aereNeOCwBX9ohRfU/SOxETHQh0zSRw/H?=
 =?us-ascii?Q?Xmc7fwawpAZdKrtaWPjvm0Y6e7h37N+FYNj30QwMW3soqmxo83/Kz4Ds1Ljj?=
 =?us-ascii?Q?nDtag9wr7ki6g/6GufpevKr+y0BgYq1FnN1U6WMn4QVPQbR9oSNGgBpKHRng?=
 =?us-ascii?Q?xQ94/v/puRuLdbwZDtWBwQjj9BcKQgsGdlIdV04plyYBLXFg5g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kIL7PEd5TgMYKcsmNb0ZkcIs03qy9rj2FWn0sTZmmiI9ahSZfJQ6zxZ9qPj3?=
 =?us-ascii?Q?8/f3b2oS+RkwQjqQiFm8UklKqdGjKfiKqD36Oss9HQMlHzaeQLHH/wdQajkJ?=
 =?us-ascii?Q?gDDcCkhTRJ3l12v9HSOzrgCOuri7snWRCQkbc1eWezDg1+ghZ4c1IpYypx6a?=
 =?us-ascii?Q?bc7L65uA46lIxc4R2BXyyYX/Bd4X6OwAT3IFXp7lJ4Lrjx4gC1yqQU+2cQsR?=
 =?us-ascii?Q?/4y4Qm+PTvc4RFkRevnwUPetCatvuPZ10Xqrui8O4Ve8iKlv3OB9S9RE8v9m?=
 =?us-ascii?Q?2SMEp9n/2Q7hkT5UUslPJ83oO3PodAcRh0L3qwUNmyAHytpGTL2BGtejXTp9?=
 =?us-ascii?Q?QvXFTqZ1QEzQU3qw6GBjTzTGB1UfNaf9Lhp0awB2oOLObv6rPT4st3e1FFfJ?=
 =?us-ascii?Q?6+lorojyNO2hJKWf++LL/M5aepJ7h0nStBPFSiuqpluNgAzNErM694pjyT5C?=
 =?us-ascii?Q?OQ3WDjtpDMK7/XfePaE8TGZldRXg74dbmnthiaUjsfQeokd9125DoKzOmRpT?=
 =?us-ascii?Q?gweva+6SZJqjw8FqFWGrFQE8/yjov67iXjSOVbSCCXsL7RA7z3oDZlSq1XV3?=
 =?us-ascii?Q?uPCypSX5fSBd36xda7kjdaE4VkcEUcM9RLxCrkoD1yvKbDeyfsdA1WCjckMq?=
 =?us-ascii?Q?etvLglyMJjD9CQ6woKlnVKkiJ10MGWl7pVlo+8P+WDSAN3dTvK8iErLNl/dO?=
 =?us-ascii?Q?dMHZdojB2tJyrCbQAxjdXfRK2UL3JY90vtLUDC0iqZvUfI8EHzlfw5FmO1vD?=
 =?us-ascii?Q?v3utkm94Pws8u1G68mH1zlUdOhvazmeGsNAaicfCoB6aBOOIXqFnYuVTcv+v?=
 =?us-ascii?Q?qNH2zhJXfr4ecNyRd/wIw0rF0TP5A1ZjJuU3dg/FT8J1xshYQkNv0sayQWQA?=
 =?us-ascii?Q?lCV2x9+k7vPuP5zl5+Ad7sfn5t0IDTJ58p51Fo7hy77N2p9Fi2gEzk6rE3ju?=
 =?us-ascii?Q?dlnWmyD8hbTQpB4+GrFAjw2w3XcWgpLHB0O3tXhoBGP+sWVXfCpsvq51ERNG?=
 =?us-ascii?Q?5a4GDZagim2RU9PQLKpU7vRXaTmpvfImydbBTPtLyue46t4eahp6IxBpAljl?=
 =?us-ascii?Q?zBVZ9qCglSR/oqGsVo1mXxvIRqMgJSy6hZrv9cmPlVlOb1zrY2qYMv/NdoGM?=
 =?us-ascii?Q?LckQHg9hGSlJOyvyFJUcdE/wJIsdlxVeijvLmmnhu4wouZjY4L8Q3s1BgJ3n?=
 =?us-ascii?Q?DpfYTbko3V1Y1EjsX8w+6ATn8nUBFPHitDxYi0r6NoY+LVn7QrLPmiO9T78M?=
 =?us-ascii?Q?Pqz7OcgdxKcpPeHi1oQt6e6i0q4Yz96x36Zf5y87/On1bOoCrFeSFqUTRdoy?=
 =?us-ascii?Q?LCBk9B7wP4aDGQoO/+g1b++rhdwyCvuT41UPClpywITrnNTS392jqkapTOCv?=
 =?us-ascii?Q?JIxe2gFl/+JX4YpQBBpNaaCxcG8XM1/hQ9TPlTKgz9d+nAcuqncdUheBn4hc?=
 =?us-ascii?Q?eIZJYXtaSLb8/rEgjCLRmKaGGuzMjyEI2i4I2ZWjB/XsTPku+up1M0LBJzw8?=
 =?us-ascii?Q?t3TfnJg0ipB0oqUhLMnT0HIVi/jQ+l/nSilDFrvhP7Ov97JEKomWiQEv+d5X?=
 =?us-ascii?Q?C6tRMRMebIzq3nP3ZLFladp2W64HMCR0rgLNDJjE+KA+OEQT4P1TVm+p30JH?=
 =?us-ascii?Q?0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6af63ce-5443-4cbb-7525-08dcb62a586a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2024 15:13:36.7857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BSZUPoHVGev7ka5lVPOjMSk4jP2Zkzd5ZJ5aOds+7cdBLQPQ15612Yh94EOq7/ky4EbNV+xvLefZu2g70rzMjabicqhhKYTe3nsszZz7r2a6uwiQ1c5SjfJHVh6uyVvL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8061
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722957224; x=1754493224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xMVpO1wgp/1J+aMbvJn48MyV2Pi8LKN2KAWxiDvTzY0=;
 b=SFNzyRd5Gs83t3MKsAO4y5n26KD0v60MGmcaZ3pBzh+5QWpseVbTSTHa
 4s0V1JIXjzIaI8c7hLJJz4NQ/aCnu5WH3pE4boj9t6aHe4bBoidCeoZrD
 4HGUO9YlUUMK4+sH4Dr1I+gsGe5UE+arEKTD/OP5sfvLne4k1nsQioO7k
 uzGQUgaNjNeEuqVfCKsi+vtVK0e4gBUAajRi8rXBsDv3NrrclFMeZhlKH
 1ihK2t8XafS4QqThH7mm1fu6O4fH5AQRFhOccxdTzgzjx9ff7keZHRMXG
 vINUbHAx83tkeeBslxvBfRV9MX8ONDb9sfulh9/TubXE6X/reOgXS+j18
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SFNzyRd5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] igb: cope with large
 MAX_SKB_FRAGS.
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
Cc: Jason Xing <kerneljasonxing@gmail.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of C=
orinna Vinschen
> Sent: Thursday, July 18, 2024 2:27 PM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Eric Dumaze=
t <edumazet@google.com>
> Cc: Jason Xing <kerneljasonxing@gmail.com>; Nikolay Aleksandrov <razor@bl=
ackwall.org>; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthony.l.ng=
uyen@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redh=
at.com>; David S . Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net v3] igb: cope with large MAX_SKB_FR=
AGS.
>
> From: Paolo Abeni <pabeni@redhat.com>
>
> Sabrina reports that the igb driver does not cope well with large MAX_SKB=
_FRAG values: setting MAX_SKB_FRAG to 45 causes payload corruption on TX.
>
> An easy reproducer is to run ssh to connect to the machine.  With
> MAX_SKB_FRAGS=3D17 it works, with MAX_SKB_FRAGS=3D45 it fails.
>
> The root cause of the issue is that the driver does not take into account=
 properly the (possibly large) shared info size when selecting the ring lay=
out, and will try to fit two packets inside the same 4K page even when the =
1st fraglist will trump over the 2nd head.
>
> Address the issue forcing the driver to fit a single packet per page, lea=
ving there enough room to store the (currently) largest possible skb_shared=
_info.
>
> Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRA=
GS")
> Reported-by: Jan Tluka <jtluka@redhat.com>
> Reported-by: Jirka Hladky <jhladky@redhat.com>
> Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
> v2: fix subject, add a simple reproducer
> v3: fix Fixes, tested with all MTUs from 1200 to 1280 per Eric's suggesti=
on
>
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  1 file changed, 1 insertion(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


