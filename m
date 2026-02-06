Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPNjEYEWhmk1JgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:27:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 208D71003E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:27:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 533D94119A;
	Fri,  6 Feb 2026 16:27:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4GwoORdedCkH; Fri,  6 Feb 2026 16:27:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE8544151B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770395261;
	bh=0PMHZ/Qnetj1LOhNE3X/dskW0SHkBgmNec4Y9yhizbU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fTRoXYyu9jPQp+Pyxa76FgvuQuSF6s+RvFDYxGEJg9IF/LCcoXIhAHL2JExZdRee9
	 6KHkYNkrOTgJgke9SG4QSayyt/TR92H2+lBbP65ElLPDq/gD7W278gBSqPdKTxlLnw
	 yP6pJIb95Qk8utQs5gXB3oKUfsL6AMTyBojvJedaexLrnH41J7N7dv0wINA3FS8iMW
	 kdbLCIA0vth7cCXPr7AcWKaK0NMJkzKJj890kowTrnf8m3otjg+iRYSnwduaH+DiOX
	 OTCaY124UuIKsQ0ojpFSFKoGW1rLtnZcDJMsc+u7udKd29CRhTgzknMFqcpL0auNPl
	 n/YQqkztAJSDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE8544151B;
	Fri,  6 Feb 2026 16:27:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F9F62EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5093E835A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fcufZkvmjbhF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 16:27:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5F82980D96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F82980D96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F82980D96
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:27:38 +0000 (UTC)
X-CSE-ConnectionGUID: LBJPGFnCSDyj8ytf5GmWbw==
X-CSE-MsgGUID: FvFdQAgeQDWrLcfaKuG3cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71326953"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71326953"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:27:37 -0800
X-CSE-ConnectionGUID: bfjItlbcSQmtY3awK4g+LQ==
X-CSE-MsgGUID: pQPnnt4tQCGBVBrubDgUtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215479962"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:27:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:27:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 08:27:36 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:27:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jkE4PcdZ1tyNYcAU1O4PYGnjG2JUU/7dIDcooUCntVRLNpHgDeQr1XsnL9ywC2tVrsshjMIdycMgIj8Ny0wdKvG7Sgge1h1YSDfyTwgDmaZD1djLU7NryPduMlKqqeBjwrrsOTlW5PpiDP7xryCA2SFbuVeDdnOQ1ZlYLD/0nXuuJUTYJQScjJ7IZYjmiOG6Xk/8BROf3WLWR9wbTte58J4/BwOCfTbrwnt1zJbjx/5wnH0jYuaZKJ7Pao2+RzUO+qxMgePLvJChRhRFvUy4xWfi4BZxIfhzUoy5j19fx5sOkjpcaO1yCNeswqzoWpotsCl5qeyGzW7CzgN7rraafg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0PMHZ/Qnetj1LOhNE3X/dskW0SHkBgmNec4Y9yhizbU=;
 b=PYp5PizwMqv6GW1QoHQloVTuFEcsMCTFbcYRCipXgfyZpJKaZ1DPCaF741bD+4ANIpTb1NBCh/p0+7hLyn2D81CUnZun+iotZsboM+IpgYIJSLYOs0KgO5eo+iSp8WmQhFLYpxiinQ3z7lhVQBo2ZRS+pxAzrFLMy4G/xwBTaCG8KVwyVEwj5+2bSg1X1rFg9RV6ATqUp1QR3rwpM67tQa9PE8m+qr1p8X1WPwSOhpYdhBz+gzByiyrJovB+9wnty4asd6faQd4mZsVpJ23tp01UPfmoT34SwzR+GsfGifm8kIr3lopYxfE2mzwGV/+CsELUsdB7559MNCspkb/3Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Fri, 6 Feb
 2026 16:27:33 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 16:27:33 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: add support for
 transmitting unreadable frags
Thread-Index: AQHcZTYC/bLV7dF/HUeXf6Y1z6+RZrV2P9yg
Date: Fri, 6 Feb 2026 16:27:33 +0000
Message-ID: <LV1PR11MB8790CF7EC6550B83E1A037609066A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-6-aleksander.lobakin@intel.com>
In-Reply-To: <20251204155133.2437621-6-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DM6PR11MB4577:EE_
x-ms-office365-filtering-correlation-id: aa10572c-627d-45a1-29fc-08de659ca1a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7zUyXroURXylLFwQetSik26LXVgctxx7quTlcOcufhu1S6JJL6nk9jtIhzv3?=
 =?us-ascii?Q?Wg9YNVdio2ooAt2ONUxqJpJW1mGxALb7JnUz6SBD2cO1oVbcOZNR2wY1FE9S?=
 =?us-ascii?Q?lQNo5yAeTUdc4zGgSVYAgfUtJYRZMp3GbCL4vyBYt+1i0+CH2FNAK69QRNY7?=
 =?us-ascii?Q?MR1/y/ThS5AT0YtdQy4968HQCCUqvhg9NrNBL/aZiX+3h67yIYdN56a0YMh1?=
 =?us-ascii?Q?vPhD1dZ10JRXGOAxtqEfbgoXIco+6SLiAkEsNXwjQY1/TxYdZdND7WV3hHHA?=
 =?us-ascii?Q?lzxDaXXiZxQSmPu42/9U8FQa+5sTZeD8JgBuRdpGIM3tApD3ltnzVDOIO/Ax?=
 =?us-ascii?Q?s1lDjpQt7XNjzzFQCEB2O1WnaYsdtXZRzZrOKbacQ62DeObVhF5TQLa3Ikni?=
 =?us-ascii?Q?rXCAPqR7eQ07HZyphWzeJeXg4YC4OmFc/m8AvEgrM+jJUvEySU6XeeitcJ7t?=
 =?us-ascii?Q?wincRCdiBOSFTccGairtiObemOzzKNr2PeySZwLZyRRmFl1cAuWr3PbxNeVU?=
 =?us-ascii?Q?NBsCPezcit8Aql0Q0kI5tgkwkW0HeIL+MrNO8coaziFe2rxu73UaipvzpNWt?=
 =?us-ascii?Q?8cC0CYnjwDCBqQUYySQKrK/Q2v7fWW/f19BqNj5o8p5Ra4QRiZlZfFAdgSwF?=
 =?us-ascii?Q?3xEymwir/ha+ncRsb7qPDIHf1qMhBKZmLC4O2+k4r3AsTtMdgC0bBRmkY+OI?=
 =?us-ascii?Q?1kxBE2EIunrWBCx1xderrxVN6H3yRNxK8YOu3ObqB+K6WW1sULt4HlFXXAYc?=
 =?us-ascii?Q?K0ZGCwD192s6Bi0TyFzJAt7PMe+1srOTMe2JGu92qW5J3l+fQWH2QCu882bO?=
 =?us-ascii?Q?J5BhkzZ2p8yP7p685IeBWn4Us1ft/SA7rxXYHqLV2TXa5927/1OB+t8vbs7I?=
 =?us-ascii?Q?F7CYp5AEIuAlmyJHzFDUIVp665QY/HLG9uclf990KHexuXd2A5HUpfgHWatl?=
 =?us-ascii?Q?bHTs57RVF9WbJpVWxrTOneERk8SFR2p3pLmL+W56dv0qn6eBQXt7IsgrhA8o?=
 =?us-ascii?Q?NXvWD+AC7fsrsF6709GaXFAiqWiL5kUqOOhEx9/FmJ9lu6zdDRcSCtTWO71P?=
 =?us-ascii?Q?Q0SfYaMX6dPf1lUZXCYNehauwFY6PGgpPgrVKSki93Kn5BwFtwGQ1k2nLDyI?=
 =?us-ascii?Q?ju2k1AKsRbqK2sHulCOCGiraJCGwEQ45juUP1CxTMC89cGXX1TihF7lIU1i4?=
 =?us-ascii?Q?Fen7ieXKjYUvBV32lzBCorvhY+fs0oUA8VMC38TCDnhkyxphAXUJ9Hvt3CCt?=
 =?us-ascii?Q?X2T2yTYLw4EuWeQUDMEN1MI/alucAFv9OzYatbZZ4XZBKRpthcQbVkcmEXa9?=
 =?us-ascii?Q?Sek80/0zXXfoWNVC3sGzRbBh3i3k7D/sGE08R2eEBVTG6wQ90cADLAFgL94a?=
 =?us-ascii?Q?3aoCBLecqX7ai5nFsSRTakqc+DE0Dn3yv/3yeEnxp3phI0gcAF2PMLLDmn7B?=
 =?us-ascii?Q?FouULGucALtQjZxehXHS8D+kAuPNd9D5j40cjU/YuaNJYdl+3DxDKN84O9K8?=
 =?us-ascii?Q?xeJk3IzdWUqnfMWjyaz1H6fxax0fKUA6ux9fiUrOsstFZQQKtOMdTmP7BO+j?=
 =?us-ascii?Q?7JgoA0znKIO/LOzc2DE6/37NcCzM6OGd8uKMzqwDiPceN392Esn2un9TUSt3?=
 =?us-ascii?Q?X1rGqICLHnSrCf25EqKiYCs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DdRkLkdOA67O/5IZOhhi5dz00/mgEHyqv8NxAejJEGdtkkGNP/qTDe/QystA?=
 =?us-ascii?Q?f/VgGerFYusHhtK/jPhFZtInlCZm7aC/Ofg8BQRZZEFWIbZJO+S0U5ORTQQb?=
 =?us-ascii?Q?JPZqeS3CLTTfXSvczADNfhcpzxGoMmOLiqUetxLQuyjzYCjODmeH6TFYRsE3?=
 =?us-ascii?Q?sCxkNi2wtaoOES4jzsgtLlatZfOyO3RnGJggNLNKL6/ojnxnxqPvyRVLRUhl?=
 =?us-ascii?Q?Fdeln6ERyDY03WZMM0YYfbSceONRfv4zA1vv+I0FTVEd+zix+v7T2JwqGuoE?=
 =?us-ascii?Q?EesWVZvxe7L17P6nQMeeT7wm0AxqLXm9ZFUXWkht/iXTK0xClMnQQDIcI2gU?=
 =?us-ascii?Q?BDQNXfYfuxdup+h+II44DXqTJCi3ag2fl1IFCw8R40J4fFB//5zjw/AwyPn2?=
 =?us-ascii?Q?RgCmPtu3Z6GKZqYnwMzyi8IqH7IqlT4CyKZyZZCdC1vDthTxmfMYNePWVms4?=
 =?us-ascii?Q?PqcyD4Fi4jm3B6Ogk35vyKB3PXagIF8Orl3ruvWLCj0Mm0rszPK3M+QdWkYl?=
 =?us-ascii?Q?D2Y4MwWLxdUWA4e5uex9xHSTaqCRbEB+0JyIEGi2jkA0wiu0OLm/bvImyu81?=
 =?us-ascii?Q?A/CsXal2GjoZDIiBr4NbxaakyLaUZd9U9KNGJBNPbqInAcNEQ1qCob/XzhOQ?=
 =?us-ascii?Q?qhvprBlRBe8Vbb7acyHFBfm3yInypqTzW5bVJrcDwtaToBV59igz7yP9X05z?=
 =?us-ascii?Q?b/IjanFHfwSZ9bq15KA2oMbfghqBvWp3paNBvumXc4Ve1VJusyjcR0stZr6l?=
 =?us-ascii?Q?+Hikg/zRgqklaHrmrdHL6cbki3Ib0KcOLMuE1tfe1Q4dVODM6SekaYoboaHU?=
 =?us-ascii?Q?UfbMC3bvdHRK1qtkAWE83NgECpYbhtu9D+5fBCQPdiK3pEzIpTYgNGDhFr0m?=
 =?us-ascii?Q?nKeIwz1CWV9Un5000VOlldF01A4QxZTIllEWfsAHZkfJQ1QAf4s60idRyzH/?=
 =?us-ascii?Q?/As7zg5o5RVeVduvPTfVO+CYEVyYs+/fERwg+/7/NdMVt1WiYegWdUc5Vobu?=
 =?us-ascii?Q?c8zWPOeo0JkofE6CeALsyGBbLhyHiovP734kXe0D74TilD/eSDQwZevcipaw?=
 =?us-ascii?Q?UGsM2GUeAYN7hQafYm0tWH8r+1nCtX0/4TdqbL9cywJkbiSQyNCjAY/yJlBs?=
 =?us-ascii?Q?zpT1eytQtT7N8j9yZ0u2+xbRfmI4AJym+tOITCWoCiRbL8lIfQEuN0W4g3f/?=
 =?us-ascii?Q?0lmlpAM2ekY+kIk1D0qvrbHfIEQz5Ni0pO7mviBy/n/8U48prFwBRhxpCwW/?=
 =?us-ascii?Q?9M0jasOylay1v+4Vg+g+GEKrex1Gsg145iBBQI4xm2NOyxHhJEysxuJWRqhA?=
 =?us-ascii?Q?kuy43zPXgUBwf8ZlQysLh4j3fS09zURmTfDbBDq67E14XvckIleBmnt+fYAJ?=
 =?us-ascii?Q?003TUmpOW8iRsFCQ2f674kyH57emv1mQi+3k7uxIb8aKLHVNDkIeDuFmH7c0?=
 =?us-ascii?Q?2bpMWAse1ql5hvmjakcEQOLRxDo+zNI42Q9aiYFLzepq7PMQ3KwTn9Ctisr7?=
 =?us-ascii?Q?y+CGvH7jp0N0ThrxzHONponac8Vs8A7tSVQyQ4qeHtIdj3i+1ipYOonKpBF+?=
 =?us-ascii?Q?rh+/cHJy/+pwz+S242DzHtUycLKKGORujf0+tIhk2Ghn3qVIwOI6e2AJP7J/?=
 =?us-ascii?Q?hO5PFh7hN7X7YRDXnXIvIxrPeDotAzQw3gavZk0J20ErZLRTTQbF5L7bH7ro?=
 =?us-ascii?Q?Z8Yen3s5igM8frDW6PsGkVeXegFL6kaFoNiHAVHjzBgkrsKCiUCgfAt8MMJU?=
 =?us-ascii?Q?nvtiHvWiEA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa10572c-627d-45a1-29fc-08de659ca1a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 16:27:33.4662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xdGPj0MBG/a2zxJyMk3eaJw3ZsfSXV458T2+/37SXL1iNbspbVt7DkAwQlPiRlud5tknQDzBvPVh8T2h9oN4+S5pqwfA0P+B6jc8cBhJf+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770395258; x=1801931258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p+cWobJpNQR/z7M8SSXbk7BJsAhWK9xbzkMc0XTgpJw=;
 b=UH/F7icMZD6nOlnr4JXwvlY5ICa0GXc+hP8npLAnTk2hfzYbfhxbSjH+
 gCnqDiZmxeMMlFAHdzsM6W6eOy4TXtPfizJLuJE8/ttriBjWhSjYWBOwh
 HDuwMtL00MiALYDIfT0BVJfoftVyz7VSecUNRTwPeAmRQiw9kFSR2smeP
 +3GLmfg0Jk0SxvI8YZOfHWMBSUMT4/JemoMKXm7AiioV4P+vkIk7fEDWB
 c/7hZwEXEzjbJ7Cg6tQ6SO8C876OoyC5IG5LYxjzKQD9EpujKW71fJf4v
 YWBzs/S5u37mMNlIysbKHfodq9LjIG/j5NhwnirixlApea4Pcwx/E6rnO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UH/F7icM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: add support for
 transmitting unreadable frags
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.767];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 208D71003E4
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lexander Lobakin
> Sent: Thursday, December 4, 2025 7:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L=
 <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>=
; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon =
Horman <horms@kernel.org>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@int=
el.com>; NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@int=
el.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: add support for t=
ransmitting unreadable frags
>=20
> Advertise netmem Tx support in ice. The only change needed is to set ICE_=
TX_BUF_FRAG conditionally, only when skb_frag_is_net_iov() is false. Otherw=
ise, the Tx buffer type will be ICE_TX_BUF_EMPTY and the > driver will skip=
 the DMA unmapping operation.
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   |  1 +
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c   | 17 +++++++++++++----
>  3 files changed, 15 insertions(+), 4 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
