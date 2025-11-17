Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF49C649E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 15:21:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D22A60DBD;
	Mon, 17 Nov 2025 14:21:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-eSShKDIXjH; Mon, 17 Nov 2025 14:21:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE89960DC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763389277;
	bh=7gcv2xzM+sfsiO/X4ubYxZEMBIogEMBOVXFGIwKMzeE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=USA83gTg+boATkUfIZyajBNI8v6LJMagubet/yMtF+vl4v9hHoeU0KyIbdWlepsOp
	 h+esJhwpcQUJME342kDsdAusmOj4mKT5T9T3i7ZH94WiBZmPGFW/kxQvzQn9qLf0ed
	 Et2f6dIBPZSwmB1ZqhPLVel3TjXuUHV4waYHBbwtsft4aOFTQxc/bwpS/BkFaBeaIz
	 gKWXgk9KxrBOY5G2w2MXFniHWg27VkoinqwIavEYQ8NePjDY3AVa2xTh705xyvSYFB
	 zPJyHVWJiakQZQMXsIE/x9tqH6nYT8LTkHkrIsyPd3AWq/IEdmvTJQzsSZTJjFxhJy
	 7UuIitDgYVVdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE89960DC0;
	Mon, 17 Nov 2025 14:21:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E0D1158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 645A4823A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:21:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYiMZ2AxKIPo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 14:21:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A76978150C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A76978150C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A76978150C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:21:15 +0000 (UTC)
X-CSE-ConnectionGUID: hrNWox+DSBKlZyMi4U5K9g==
X-CSE-MsgGUID: nFo7aWzcSdao8BJUC2iv5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76738574"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="76738574"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:21:14 -0800
X-CSE-ConnectionGUID: CGqQMFCqTMyaaSuMgbVBUQ==
X-CSE-MsgGUID: z4bYG1xuTYmdjZjK6azR0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190693438"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:21:15 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:21:14 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 06:21:14 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:21:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LhD8HdfH5usm1yiy9jJrKLc/twoW+S227hODwwmcmjtBeUvl9Bc+kyobJk7iwAUDTZjC1HZ8m9VZBR/lfBuhVppqAnPM2bScWm9qM5r3qaut6B0P3erMACking7L6/N2jGA9bUhA5QhxGNFRKLG0N3bMw+CFo9TYRHB9VqxYO0zm2v0Z/npFqd/x4tMPbSqY+3HJ289fKGLAsUx+nPcHFywfXbAHpTx6S2fVqW8cYeW616IOLGZ/9MsmAYjcuW7Ocr2eEYzG2kpuJyoHbcc03WZ2dWQk+t3KE6TyWU7ywri4ziSY/+pgg+UOWxX17gYbLPf2bCPumv5Lo1G4dpXmqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7gcv2xzM+sfsiO/X4ubYxZEMBIogEMBOVXFGIwKMzeE=;
 b=vbhpHDMZhlqKu6cGtn2ekfoNqnOEMDmWi/iaUCctPISL0V71F0rLcSLWsp+G2MvOfMA0FEI8vNRRMMHrCTjx3K2Rp0lAfoXV3LH2nNhYN1z5X1bj4jbZnsurZVmUbEJyX8tJGsAAZ/WBy++4KNAG927ahKLWQRLYktyshvTugQw2All3jUH+SCEmTFN9GNmMqKAoYdvk5DJfAabg87ytXa9wAxEXjycZ2co4r5mcu9bxpmMfLvlRroMjfodZN8TAqLH4J3FJErTRvAUHu9ThJEFEFjdvm3bGQD7UsaLpgfiOCXj8PikTlNqfIBOmgIDfa0fnoi4WQgAZY0dnQ8Grlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 14:21:06 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 14:21:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
 checks and initialize the mailbox
Thread-Index: AQHcV8kj9CQiYmcEUESD0EXZgpLxK7T26tMQ
Date: Mon, 17 Nov 2025 14:21:06 +0000
Message-ID: <DS4PPF7551E65522C74552DC2ADB1887607E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-14-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-14-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|DS0PR11MB6399:EE_
x-ms-office365-filtering-correlation-id: d532ccb5-ca0e-4af5-d70f-08de25e48bcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EeGttYm/MqpwJwxeSbKra4pk/WxV552l+lHLaKw+9ztID/H0VeC1hwKmsxKG?=
 =?us-ascii?Q?1ZmYW3dLwQTZet2S6JJ/M0wCFHnPUkkNdt4kFKHqMC4AIXckFVHt2F2BZGkp?=
 =?us-ascii?Q?uQXz53G60IN5W03uny1hi6VfQeTj/W3VAUMKEgYSlRrGbx08Gxy75N5kXWN2?=
 =?us-ascii?Q?KatZfCN22pvx9iYL/x6FpEkA5Ri1VV9lG9kAvoqjvRXODDH4yUa1YbNFxMnR?=
 =?us-ascii?Q?zqUjy/4lRd2F6UJ2ddQAkEIPnWFX31uMo7GbWKepORJAs5O4OBmBzrtPSyhC?=
 =?us-ascii?Q?3jGXIA4ki6DeiScoweH/Jua6yZBP8UfniObcOW8TPOuuucVJ6Uo2PEczd1VJ?=
 =?us-ascii?Q?HV5fW5Jwc0sbEcp6qCynV7oS7mQTPidMsZkhMU+GMRsGO4eKo1vVXp8YFA2T?=
 =?us-ascii?Q?aAw4W0De9Ahr3CvKv/DgcVigFYCmm4q1XIZjf7e5iBt8wpa3NcohT7d4Vx9b?=
 =?us-ascii?Q?kqVER+FTyqOimWpi+LxRChWcQVwhH6Zkk+x1Gr22aBbwzlfVKhHQ71o0m13O?=
 =?us-ascii?Q?PHbjxdNcZSdustDFIZa9X3RgqJQa091L1X7XOJw0Qrhsob6bz7XSXs6pj+Wd?=
 =?us-ascii?Q?gzcXGFVbP2fs4yqZdK52qUZnTL1JqZx5FjHRzuLpe8CDLH4yXudM+KT4fZFS?=
 =?us-ascii?Q?HHKRRLSRiTNBACgZGpmWYmn9MLTHBtQZR1dmdDsk48fWOh8vV+eLRxF8eVvd?=
 =?us-ascii?Q?81FyajxM8tQVX+Mk9WYjzHUjhLRyynsDuouzL/S6tBzXdelTfiJUISzUfauC?=
 =?us-ascii?Q?sBRnrkFdJ1whLdQMggZUs5abSUlBS6AwtC89oS5MRDGyL4X8BQdaSjqkigEo?=
 =?us-ascii?Q?nxSkhrbcxPvM+F8SZEqHzLkZUQf5VXi5qrKgNLKoDfjXa8+P83gzYInweU9K?=
 =?us-ascii?Q?r/WvDVrN9y7cM+MyOna7LKOCcdYg9dck+TwHicRB5G6GNDgTeMexrcYOtlyo?=
 =?us-ascii?Q?iQLFS+iSCbdRjAMFVDS2curlcmo3nEg+0COZkbDosHRdtumkHgRiSiYZT/hz?=
 =?us-ascii?Q?grknajhhrb3UgkjJ9d7p1Fz4g1Bgo5rliFgLEBKmKDYu3PHJZKTlKEg9EWjS?=
 =?us-ascii?Q?E6zKFu7kNJr+JY13YRzIGnN5pXZhwxBEvPYOCEjJ2WMhn+anmnZkx0+36D25?=
 =?us-ascii?Q?BBIG8FruD2C0uOIMI0/gNFbnPiZojt7EehTieUmAUxLb2M1StQ+BmOtVT3fZ?=
 =?us-ascii?Q?LuPuOI/n1KPzO1VCLqlHrmVrndzoMBY36LrqpcnUkG7oAVjqXhdKEfM+EUYA?=
 =?us-ascii?Q?9OOgkb0yRJZn5p3WsN7hsw6qyqXHGBoVaT0qf3dzvdIyzE2Q24YqIS+Ipq10?=
 =?us-ascii?Q?TwDJXDo7vLwSNJX6vbHHbM3p6NQRFit7tUhAWVswOO3ZkZ2QuGpdfE5Z4ZBH?=
 =?us-ascii?Q?o1tWda76XTnqjp7nM5MSdAkfc3mMN5iFQe3NGmykArW6/VTDCOoIAHQ3ZH/m?=
 =?us-ascii?Q?CZFsDv77V2fZk+Md0p92frMjyRuWlgFGWjVJYgonLLGh6yrS7/fH/x1nBdnA?=
 =?us-ascii?Q?Bq34KuTcPdX0xCqVXLDqS+r6EzfqwU2qOWBE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kG/c5C8BnO7CnUuF2XXk1fXI3OrRpdaJexMNvfnzg6Febx6bJ/b0ExByjjeT?=
 =?us-ascii?Q?B7gr771nkMkb2XjBt2fTbtLutNL7cBA+RW6OLMX0BDRGcnDfZLtttsvLGmtq?=
 =?us-ascii?Q?sWSMSBFdcbZ0u/LtskERs/0tDrvUO/FIgJuo1D/YtF9jwrr1S0gBIwXDE0M0?=
 =?us-ascii?Q?zWrvor+l+d2WKhe1PeNE/xGhKOYUR/Jy/JDgZEphe3wxsFMWIenQ1KTaBTLB?=
 =?us-ascii?Q?Nd/cLQTeukMbcEHVb5vCC6aU67wEcCaL5XUkL1NjOWTRMwaxkOxnHgZ4QcIn?=
 =?us-ascii?Q?4akbGXsJlISzmaMPCpIB1cv8lAZ21y0ZENzn71ukWy9dDjiQLhQsK+sXTVw2?=
 =?us-ascii?Q?94fOP/szqm1B/bPZvG+5rvIQ/ByRVXnYRU37Y8PNSkl7bEZ3J/au0QBTjtAp?=
 =?us-ascii?Q?84pOmaQtKMR8Z/ZTXW4y2EXoncCfYdIaTIVBYlywdNkSyigCAxkZMIj3zny0?=
 =?us-ascii?Q?UqCQCtPRUPnRrSC3BVdWzU1XDn20bpuAW+91R2IaUW3wqtibV4j7U5gc8L0C?=
 =?us-ascii?Q?RBtpD/jcGMwrsbRRh9/CTK+aT3V75bwzYjHesfYRMM571ibhz4RT9eL0WPrj?=
 =?us-ascii?Q?Udirid2MI+E2woQ2Pvx96BD3OoT8/mnBV4MdqDccA5+LeISTM2w3fKCkToaG?=
 =?us-ascii?Q?x2JpFRio2URvrldwMzLMOEO3Opnf1vXmH3rA7lSvi+t4A2VEHzlsCA6qHVMQ?=
 =?us-ascii?Q?AB2itPLQuhBR8y7/wh8mKrEwfl1XxsZepvq8C4hPnqdd822waw32BggbJmGd?=
 =?us-ascii?Q?usrHQKsBoktpnu/vSdz4PgzIGBgQ0/X5vpWN9w0dHTsUZ1IAipx+kbXuZ76S?=
 =?us-ascii?Q?Kmwd12sfCkiFT8poBiUh3xTb+LzEd0el0Xj5G/a7Gry9VHJuk6/7HsmJGyLp?=
 =?us-ascii?Q?qDxY5JEt/xkKRHmS52N8A2L2Bs388N3u3Oc8NkQQyRqek2ImhRZ2SYlU5Od9?=
 =?us-ascii?Q?DrAPwJSHfuIz2PArzik07h3YqEEGEgeJI3N0y1MEiE36muE1YytvJxFYwuB+?=
 =?us-ascii?Q?muytGqxIxwE7HOiMz67HVjf1hYmVlbLwyCQWDjMIfPlLQPOqICZxhHNhz/Ds?=
 =?us-ascii?Q?9TtVf7GG+BDtqP3rVElxx95l0fM7+nV5C7cQfikSU7aUeT3ftAiPoEnCvjks?=
 =?us-ascii?Q?bBi4TxAwdwkaq33arYBD7qAJyY7KzZmrX68CyCVpgCcoCTJEYSm4MUYJxgJp?=
 =?us-ascii?Q?MC1tYAuHLqeTIggV+P84xIlapeczFBtCPy5MQG04aNkwSMPLuMSsXp7l30Pu?=
 =?us-ascii?Q?JZLodaB/q3X/h7jBBDqcwZyNj5unQNhZUoziejem+cLOmevD6CaTdjyw9XWL?=
 =?us-ascii?Q?CFbufw23EaCf9361jIYX6ckkLZk8G9aAHfsMLIV0RvSAIi6jIZ/m6cdvRGRV?=
 =?us-ascii?Q?9hyOgFTqjFBJTCqR83TKMHgTrczQaSUtLrsC0KzQD83mnEfzgpzrddC7HDU1?=
 =?us-ascii?Q?loOb1CmBf0SKkktDBb2s+FNCvtufioduZomCfMydV0jP6EsjV8CYXi5QaTBS?=
 =?us-ascii?Q?Q2YkJl6nXu5dPiLQ57nRiTttzAt2DVJ+Qvu33GXD7Ubpzn4e6qFVZarQXlcs?=
 =?us-ascii?Q?D0JmJQ+NKaElnfgXKJro4DSODspK6pkzP65eUAA9YsfRy1LO9CvvJAbH4xXO?=
 =?us-ascii?Q?nQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d532ccb5-ca0e-4af5-d70f-08de25e48bcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 14:21:06.1544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lr7Ph+5SZtHnw69BZsWUgs8gzz9IL5eRJZ81IM2ndUVSBvuyqVF61ZLxbWQQ3B7cz+6riIDGCD7BZ8ycVqaZnYFjtjX5JUPOilNaFdbMEtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763389275; x=1794925275;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=56ndzjZIk8t3PyYb3bDZ3hLNSAjS2BPof9FV+/DjCVw=;
 b=Q14fc2K70otMkMe1xvE5SgyjMqY5xOv30E3H4ODIXzBEb3EBK7hZH+9D
 YqxjS1BI2gBjg4oZbOmFjzxIyaCAa/5mkF/dM6fNu4TDdVHP/YoIoePaU
 nOfE8fV7mNQha1WZ3rT2kxotHmSV3xiTlGg7IpRjJzvelL3XrV1XOH4VG
 kWBhLTDZ6pV34JRu8cGymQno2j2JOJkskc1itWDrISEe5hPzwGl+g/j6A
 r6JYPMqn847tGkSE4Yydxnt8pAJoLJEc3bgvbjvaqwhi7t46GIeYgvmyd
 S7PeSsK5d76uW1/oCrLl71U37XQYv7a0iTiou69/sINlo7/NOYPALM8Gi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q14fc2K7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
 checks and initialize the mailbox
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
> Of Larysa Zaremba
> Sent: Monday, November 17, 2025 2:49 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S.
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
> Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
> checks and initialize the mailbox
>=20
> At the end of the probe, trigger hard reset, initialize and schedule
> the after-reset task. If the reset is complete in a pre-determined
> time, initialize the default mailbox, through which other resources
> will be negotiated.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ixd/Kconfig        |   1 +
>  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
>  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++-
>  drivers/net/ethernet/intel/ixd/ixd_dev.c      |  89 +++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  40 +++++
>  drivers/net/ethernet/intel/ixd/ixd_lib.c      | 143
> ++++++++++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c     |  32 +++-
>  7 files changed, 326 insertions(+), 9 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ixd/ixd_dev.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lib.c
>=20
> diff --git a/drivers/net/ethernet/intel/ixd/Kconfig
> b/drivers/net/ethernet/intel/ixd/Kconfig
> index f5594efe292c..24510c50070e 100644
> --- a/drivers/net/ethernet/intel/ixd/Kconfig
> +++ b/drivers/net/ethernet/intel/ixd/Kconfig
> @@ -5,6 +5,7 @@ config IXD
>  	tristate "Intel(R) Control Plane Function Support"
>  	depends on PCI_MSI
>  	select LIBETH
> +	select LIBIE_CP
>  	select LIBIE_PCI
>  	help
>  	  This driver supports Intel(R) Control Plane PCI Function diff

...

> +/**
> + * ixd_check_reset_complete - Check if the PFR reset is completed
> + * @adapter: CPF being reset
> + *
> + * Return: %true if the register read indicates reset has been
> finished,
> + *	   %false otherwise
> + */
> +bool ixd_check_reset_complete(struct ixd_adapter *adapter) {
> +	u32 reg_val, reset_status;
> +	void __iomem *addr;
> +
> +	addr =3D libie_pci_get_mmio_addr(&adapter->cp_ctx.mmio_info,
> +				       ixd_reset_reg.rstat);
> +	reg_val =3D readl(addr);
> +	reset_status =3D reg_val & ixd_reset_reg.rstat_m;
> +
> +	/* 0xFFFFFFFF might be read if the other side hasn't cleared
> +	 * the register for us yet.
> +	 */
> +	if (reg_val !=3D 0xFFFFFFFF &&
> +	    reset_status =3D=3D ixd_reset_reg.rstat_ok_v)
Magic number, I think 0xFFFFFFFF should be ~0U per kernel style.

> +		return true;
> +
> +	return false;
> +}

...

> --
> 2.47.0

