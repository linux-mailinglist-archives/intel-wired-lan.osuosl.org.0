Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7300790751F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 16:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2684F61042;
	Thu, 13 Jun 2024 14:29:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTL8CjhYJwky; Thu, 13 Jun 2024 14:29:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A655D61044
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718288964;
	bh=O99ajDBkfYcoHribsbgQSRfh8/SHwV7D+L4pMnToJg4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dGzXdSvqfPNVmqlrrBFt3l083g1/U+sFqVShF6Cx+dljOoL2rTFYQUrj0dFGCgb7n
	 hjWwHFSdihG/w4SAaFYq9N6WAiet0zHMeljHHFVK3fv16pjDvT8S1m9U9rdb8Mu5bM
	 3fWu6arANU1rvUWnqlZstiJ5typGy47pCcl/rkg1aaoqbx91nU+uhx95bRKUF/GxzQ
	 ZrK+NTj76kObEzJaAabjWFkQBuxLOijA3ol6Vbpj3EBBf+A1iZzXIvxPhZo3OaWseH
	 1aaFDiEPeIU7EMT7IvYL7Zooy8iP3Jcaht6jUuLuXSeVUsNYRfPLtYI89poivAsyU+
	 FXxWdd5jw7mAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A655D61044;
	Thu, 13 Jun 2024 14:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6F61BF34B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37BDB80E1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:29:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4z128Kz8Ph4q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 14:29:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EEE7180D6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEE7180D6E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEE7180D6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:29:20 +0000 (UTC)
X-CSE-ConnectionGUID: U+Din2OXRRSprKhxoLK7vg==
X-CSE-MsgGUID: 8630eFctTqO5sj1O8pxU9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="14949419"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="14949419"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 07:29:18 -0700
X-CSE-ConnectionGUID: 9s6J67y1SJ+I6RuMq8ihWA==
X-CSE-MsgGUID: 7Q+3SwAVRo6vq43e9t+TCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40020644"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 07:29:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 07:29:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 07:29:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 07:29:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NjdNlEjSKfwE15IFC7JCLUbbwedHwIXxh5L/zw78+vPwkCIy50Id20LKjN+NV75nDMBB7ynBn0DnZKar7pDAAfGpKVT4HueZGVQVENp1lza3USODIwveTtTE8M8r1KrtSLecfVjEE2dyHhbP/NvTmROM0yUaRIvbcxYorzhFKAyR8K24tdiKRjA9H0xkv9WwWHiLLVJywlJuhU3r3v0bOVyqV7eVZs/U83IaQQrZ2YDONnNZlLdV39CvxMT6Cz49NzfT2YxoeUeWtKfFjLurfYATPq0vlB1RPp0IOERNC6b9X5xn4U9R0Yrg9E1faoF00cA8aQzrCnZPKCQx3KF5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O99ajDBkfYcoHribsbgQSRfh8/SHwV7D+L4pMnToJg4=;
 b=M1e64ekHfxyLPzV9g2D+lBPLK2MXgYYeNjc5McHweCaS7o5Dka62dHfRWbQkZ5mlarqvvKvVozsvSk79PT2p7YDbC7Y0rl6zf2j8lHlkeDLqXDB2O7WsdQ3VYb9zvN6ByAEVCTnT2jo3Ga/WpHNzJALWdAtuSZzkOH5D84my9GH0RwNKu5yPf9+DqiUN+Acczu+Kp4/5/hVx87X0TMtK0qV1praM/W6o2tTlkZPfvohiBQ2F7yN+8kBa7f2Kaj2Jbup5NlR7WVJ2ueb+G3uWbVjnPREoM6JgXFvkncBQIFwqyJyHiqrgJ53FoHuRATuEvYg+fBSTcLGqsOXXTIYN9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH0PR11MB4807.namprd11.prod.outlook.com (2603:10b6:510:3a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Thu, 13 Jun
 2024 14:29:15 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7633.036; Thu, 13 Jun 2024
 14:29:15 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Karthik Sundaravel <ksundara@redhat.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>, 
 "sumang@marvell.com" <sumang@marvell.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12] ice: Add get/set hw
 address for VFs using devlink commands
Thread-Index: AQHasRBGNFWYoEs7ckCc8YW5q7YvxbHF2deA
Date: Thu, 13 Jun 2024 14:29:15 +0000
Message-ID: <SJ0PR11MB5865343B3F6627340F8B9BF88FC12@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240528150213.16771-1-ksundara@redhat.com>
 <20240528150213.16771-2-ksundara@redhat.com>
In-Reply-To: <20240528150213.16771-2-ksundara@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH0PR11MB4807:EE_
x-ms-office365-filtering-correlation-id: 63604311-2550-4421-b0d6-08dc8bb5339c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230035|1800799019|366011|7416009|376009|38070700013|921015; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Kw2NETtrfAWX01zgRe5jdIBdxAmVTyFgpHKYJucQHEFmiX401jGPoN6YuMb6?=
 =?us-ascii?Q?xWj24yxV4yNXmVvwvJuVMLaX660V2ESnNNrgt5msUSA6ToT0PF89i6UCOJ7C?=
 =?us-ascii?Q?MspyM0j7MD1g6fKtd4RXytWFJ/hqpItxfjaSNM61YPU5BdQZl3moz0lMmya6?=
 =?us-ascii?Q?fXrrSi6ymRe9ibQUAlclg/X7Kmwj1BU2LuolRqF0KaPuepGMM+Yzh649VzVf?=
 =?us-ascii?Q?lKLkcJHHa4nnyspkQdsoPa2PRyXWOzw3GKUzkRAUQnZ12G7wZAuQJoFYh1aW?=
 =?us-ascii?Q?cI/wIKyjZCUldvzlL90SJChtE5tsc3nxmxD5Zy1InYGNInmGd1QmMixAeIlE?=
 =?us-ascii?Q?LhnSarrXvmN+R4OPObaEj2/gujMddkgmkCOqztDBHnTXuCoi2tYZi5lT+JMf?=
 =?us-ascii?Q?BNw7f9Ooy8mo6MH4gm/tHzxkmA2uby7aT9qwiwTWJS/pMUVrgeKtZpQ+jDYQ?=
 =?us-ascii?Q?nV1hG6Tde1sCqroTYEWPuAwKbdKi8GTnAKio8HT6OQM1k/t8VrdPegr+AXmu?=
 =?us-ascii?Q?9gbTPLVY0RDmDuq9vHpP+kMxvZ9gEmQSHhb1D4KArl0nsgAaWM93y6ew1Ojq?=
 =?us-ascii?Q?cANeruttDXdM6IyhnomvhF88IGQmiMXgduij4ZcKejt8W6pjO0s0iuw9t661?=
 =?us-ascii?Q?5h56soZz7GXO28UekRijOP7AYIkI+gpklOEeMvXf1avnip4SiCE6xxD+I2iX?=
 =?us-ascii?Q?BUMuOcz8yZDUeVoLjzLPrpSpcoXh7mt710FxrrvFbUvAJQD6Qv6V1mWZMx87?=
 =?us-ascii?Q?h4kXmaH/IPHiB54U2xQ8M7iLK1PfZ1oza0rXFG7upg+1uF9lRDi7ItAqilHA?=
 =?us-ascii?Q?VaK/KNUzTYNAkIvy9/YaaWW1ZFzBhMtupEsAGLQlHaTUmPs2hGY2ULuYZOja?=
 =?us-ascii?Q?ELqGzOqv3IfRQkuXJ/8wTjwfDbxMpN+37Y0ANhORtxnY9KrKzU8ojMbueg1g?=
 =?us-ascii?Q?lmaRyUOaPaWT0vpmu/bRPzx8aRNMv7295TZoPL97g8hfgFWqAqJAQixfFOa+?=
 =?us-ascii?Q?yIH3v7LoCOyP7FWYh5obdjADGLbhu6nXUHuuqYayDuBIQTz0uVV08tW8+inK?=
 =?us-ascii?Q?eUMyehVgFWt+zh3eltRxtbnzjjIPCblV2OHbWRNABA1OHPHsdaZffQg7fFzn?=
 =?us-ascii?Q?nfb+6feCXOrDlmZJy5qssEUj2ucU2iorQT4yzw4Zl9GMkwnO2UO0X0PSdqsE?=
 =?us-ascii?Q?HmE1pwHBuuBhwQ0XJFsyEgQbXfsbf376SOlg8+tuCiZn8+KVZHq1BLGrbZa4?=
 =?us-ascii?Q?k8Uvarzd6G86SSKwy1+MPyLQjg5WQyuOjTMP2TlS2Z7Rhvyan4fK84+uXSSW?=
 =?us-ascii?Q?AijPOu203DPu1m5qCOmL0b9ahq8J4VQmOAKl6DTlYVamG3wMmGnDCMqtMZft?=
 =?us-ascii?Q?cdEOnA57JSDZoD/fbniAID/jlqNi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(1800799019)(366011)(7416009)(376009)(38070700013)(921015);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d/9NL9a+lzkRw+0OSg1OtDw1ylYjzP3z5Dq0jfB/v1PX5Fu5Joosjm+y0w+T?=
 =?us-ascii?Q?smRttWsdZfzK/93tqMvHdNCvoq31d+U9HrUBDNoVx0tqfPptVugTz608AcLN?=
 =?us-ascii?Q?v6u1fJ4n/k9LhtqBB11Nzu1uLZUd/ABwFquWZN7qFlnBK8ofXSfT7/kJ/hUz?=
 =?us-ascii?Q?oaRM3n6OZtDOdesTYZ881ptlGOjyGIpobVmQ/7MCd8OadPurRQ9OhTYFNkS1?=
 =?us-ascii?Q?vVDib7J6NcFdmNyeul2MnatSO6/iVJfO3erJyoae4rfaKHHd475/9BA/pwV/?=
 =?us-ascii?Q?E1vs7/G18RYLgNWZ6FfC92VZ/f4xInvMsU52MBR1eJi+1NdP2Id3D9/skAs9?=
 =?us-ascii?Q?6v/g9TawP/ZKH+YIK5KCm1PUpw92RCTvpXocZscDWcZIlL5yV/gWlvDZzf6r?=
 =?us-ascii?Q?I6udyn8gCOzT/IslcW3NVGFVc8pdttvr9uE6VBEJCq0DrgI6IVLKmVhstutl?=
 =?us-ascii?Q?1SZrZ2okXrcK610t6Dr2WhxSXhhNQ57iRSiyIH6Ben39p7KnICc6kU174dRh?=
 =?us-ascii?Q?G3mnb5AY4Nt4h3/sosS374TvU025MgLkcNnEbJ6faNiTtIy6H0VtIxLXGdmf?=
 =?us-ascii?Q?vdDZqR2SYn+iRwp0BEez5mrQUg/+OHOOVQIYdu2SszV7kZJLwcULat6VJ+xO?=
 =?us-ascii?Q?FvZb/23pYh0CrOb5Ibo+AnD/CDSbBv2S7VOS9bhU3HZGtTIbqktFPmKw/aLK?=
 =?us-ascii?Q?mG7SZBqTFblDY79xiYDPn2H1EiJ85KhjW0DnZzBSikOT2haiPHczdNA5Bf2O?=
 =?us-ascii?Q?BAVQdDh+esm5ELhvHauc3GGmhytzcYFR0/n/4mifLmBo+h0qXdVGUoCkN3nb?=
 =?us-ascii?Q?S9koyMXdfPy0CJ7J8zzeGnjpRJNenPPnGdYJ78idlm9NuDl+YP+cdLhojkem?=
 =?us-ascii?Q?1D+eEH3wtz1KhHpvJOjRh6TwztNcHsUGocsh/gTP5Sh5NP8uTC/11JZFRhRY?=
 =?us-ascii?Q?yYT+ar2D2o0JMN7i0TuqJ9Fd1cwqqW3SFmUx4NaM1W0ZtMzPFshmzDdDw+V1?=
 =?us-ascii?Q?TN5sPKAk5epKuP5s6gidlTRJIGahKdjkYsSHmMhFCJqUJmUrKCNAzRtavQmp?=
 =?us-ascii?Q?8PkdkXYwcY6xDOXL4YnHbHAcZr3LsvSZ4EMfdkmog5ScqJJyRdCXJa0aRSMp?=
 =?us-ascii?Q?mHubPY/53ECyZCzvLi1WxK2ext1lKx3900Ry4cLbsvGj1mkhwjqmpW7+OkEm?=
 =?us-ascii?Q?5oNUxabHmJkgFpmTgpauuggXEjRFqoBJrdE+002FSqwm9zqJwe/Mp2BaXmj9?=
 =?us-ascii?Q?4geBCNJeerEKjRWkNs5I2kkg4cW++YRfcj629mVz3kSRIHkWbuRzD/QlHbYK?=
 =?us-ascii?Q?MHWHpYLgRGcy1yA5lyN1G8HexoETi6m67JvzUwrp0POJUREp/SdxHrkgcU4E?=
 =?us-ascii?Q?1o1ubtr9LErwDR+x2GLvaLeSZ3C4TH/jMuPfYo1EzpA0rN2cryEJ/nVIX4Lm?=
 =?us-ascii?Q?B96tWsYv5AlkO0OBbnpJvPR8eomWsBvXR9ggUB6pQrX8qlSf85cym0XoF58W?=
 =?us-ascii?Q?yGiL2OQcbj/WUsh1yLQk4CFSAEb+ccgB0d3ztai+Y4eTIue6wXfY6rREYrre?=
 =?us-ascii?Q?uIm18mRlrCZ92jLPI4HSXNj8Ukf37AuUhP4TrxaMVfYLmnAeGQFJJjS/ZdnZ?=
 =?us-ascii?Q?XA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63604311-2550-4421-b0d6-08dc8bb5339c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2024 14:29:15.0603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PuCwHOFj/yWNRgDM1TlF7txenIMmP9K5GZEVizWlDlIZWYOLra27s4HWTN7rMvuMIztZZ+5CC+RMl7sbP7PwsOgh/ruwFeJM8YxKAfk0APA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718288961; x=1749824961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fJ135ZLexwrDBQvhRWP+XpBUxY8EShU4b+ge3dQNahg=;
 b=h1wiyiyaA2XN2DQ6JxjeLFZI1fo2s4ANrLBbvgx6ixwrrl/pePRoZrrU
 OpixG5O40pm79l9VoSH6C32mySf4thMXrfVzXowFhzk/7FEheRKcOWHvr
 u72fwvuFR7CB0OUUA5NfYcQs9azq2DYEBCRMMyr7lgx13UXBRMuKy1kjt
 kPnh2eACG1MmSE4meg5YUW8+a3H8M2Vy4odcoBm/EmWKNEq1kvDZhGHsG
 Sun7VMHYcjtlweiWUdeFt98f0WPhcLfG/zm6ksJCHfWDrP5BSp4hjgbSq
 AL8Jiv3Lqr/BFb2SEvXPrh0AhFGkVd24K/qam7HJU3dAIqfls0EhRNanc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h1wiyiya
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12] ice: Add get/set hw
 address for VFs using devlink commands
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "aharivel@redhat.com" <aharivel@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "cfontain@redhat.com" <cfontain@redhat.com>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "vchundur@redhat.com" <vchundur@redhat.com>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "rjarry@redhat.com" <rjarry@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karthik Sundaravel
> Sent: Tuesday, May 28, 2024 5:02 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; sumang@marvell.com; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.o=
rg;
> linux-kernel@vger.kernel.org; horms@kernel.org
> Cc: pmenzel@molgen.mpg.de; aharivel@redhat.com; jiri@resnulli.us;
> cfontain@redhat.com; vchundur@redhat.com; ksundara@redhat.com;
> michal.swiatkowski@linux.intel.com; bcreeley@amd.com; rjarry@redhat.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v12] ice: Add get/set hw addre=
ss for
> VFs using devlink commands
>=20
> Changing the MAC address of the VFs is currently unsupported via devlink.
> Add the function handlers to set and get the HW address for the VFs.
>=20
> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> ---
>  .../ethernet/intel/ice/devlink/devlink_port.c | 59 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 34 ++++++++---
>  drivers/net/ethernet/intel/ice/ice_sriov.h    |  8 +++
>  3 files changed, 91 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index c9fbeebf7fb9..00fed5a61d62 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -372,6 +372,62 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>  	devl_port_unregister(&pf->devlink_port);
>  }
>=20
> +/**
> + * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink
> +handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_get operation
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
> +					  u8 *hw_addr, int *hw_addr_len,
> +					  struct netlink_ext_ack *extack)
> +{
> +	struct ice_vf *vf =3D container_of(port, struct ice_vf, devlink_port);
> +
> +	ether_addr_copy(hw_addr, vf->dev_lan_addr);
> +	*hw_addr_len =3D ETH_ALEN;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink
> +handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_set operation
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
> +					  const u8 *hw_addr,
> +					  int hw_addr_len,
> +					  struct netlink_ext_ack *extack)
> +
> +{
> +	struct devlink_port_attrs *attrs =3D &port->attrs;
> +	struct devlink_port_pci_vf_attrs *pci_vf;
> +	struct devlink *devlink =3D port->devlink;
> +	struct ice_pf *pf;
> +	u16 vf_id;
> +
> +	pf =3D devlink_priv(devlink);
> +	pci_vf =3D &attrs->pci_vf;
> +	vf_id =3D pci_vf->vf;
> +
> +	return __ice_set_vf_mac(pf, vf_id, hw_addr); }
> +
> +static const struct devlink_port_ops ice_devlink_vf_port_ops =3D {
> +	.port_fn_hw_addr_get =3D ice_devlink_port_get_vf_fn_mac,
> +	.port_fn_hw_addr_set =3D ice_devlink_port_set_vf_fn_mac, };
> +
>  /**
>   * ice_devlink_create_vf_port - Create a devlink port for this VF
>   * @vf: the VF to create a port for
> @@ -407,7 +463,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>  	devlink_port_attrs_set(devlink_port, &attrs);
>  	devlink =3D priv_to_devlink(pf);
>=20
> -	err =3D devl_port_register(devlink, devlink_port, vsi->idx);
> +	err =3D devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
> +					  &ice_devlink_vf_port_ops);
>  	if (err) {
>  		dev_err(dev, "Failed to create devlink port for VF %d, error
> %d\n",
>  			vf->vf_id, err);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 067712f4923f..55ef33208456 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1416,21 +1416,23 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_=
id,
> struct ifla_vf_info *ivi)  }
>=20
>  /**
> - * ice_set_vf_mac
> - * @netdev: network interface device structure
> + * __ice_set_vf_mac - program VF MAC address
> + * @pf: PF to be configure
>   * @vf_id: VF identifier
>   * @mac: MAC address
>   *
>   * program VF MAC address
> + * Return: zero on success or an error code on failure
>   */
> -int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
> +int __ice_set_vf_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac)
>  {
> -	struct ice_pf *pf =3D ice_netdev_to_pf(netdev);
> +	struct device *dev;
>  	struct ice_vf *vf;
>  	int ret;
>=20
> +	dev =3D ice_pf_to_dev(pf);
>  	if (is_multicast_ether_addr(mac)) {
> -		netdev_err(netdev, "%pM not a valid unicast address\n", mac);
> +		dev_err(dev, "%pM not a valid unicast address\n", mac);
>  		return -EINVAL;
>  	}
>=20
> @@ -1459,13 +1461,13 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
>  	if (is_zero_ether_addr(mac)) {
>  		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its
> MAC */
>  		vf->pf_set_mac =3D false;
> -		netdev_info(netdev, "Removing MAC on VF %d. VF driver will be
> reinitialized\n",
> -			    vf->vf_id);
> +		dev_info(dev, "Removing MAC on VF %d. VF driver will be
> reinitialized\n",
> +			 vf->vf_id);
>  	} else {
>  		/* PF will add MAC rule for the VF */
>  		vf->pf_set_mac =3D true;
> -		netdev_info(netdev, "Setting MAC %pM on VF %d. VF driver will
> be reinitialized\n",
> -			    mac, vf_id);
> +		dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be
> reinitialized\n",
> +			 mac, vf_id);
>  	}
>=20
>  	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY); @@ -1476,6 +1478,20 @@ int
> ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>  	return ret;
>  }
>=20
> +/**
> + * ice_set_vf_mac - .ndo_set_vf_mac handler
> + * @netdev: network interface device structure
> + * @vf_id: VF identifier
> + * @mac: MAC address
> + *
> + * program VF MAC address
> + * Return: zero on success or an error code on failure  */ int
> +ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac) {
> +	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac); }
> +
>  /**
>   * ice_set_vf_trust
>   * @netdev: network interface device structure diff --git
> a/drivers/net/ethernet/intel/ice/ice_sriov.h
> b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 8f22313474d6..96549ca5c52c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -28,6 +28,7 @@
>  #ifdef CONFIG_PCI_IOV
>  void ice_process_vflr_event(struct ice_pf *pf);  int ice_sriov_configure=
(struct
> pci_dev *pdev, int num_vfs);
> +int __ice_set_vf_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac);
>  int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);  int
> ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info =
*ivi); @@ -
> 80,6 +81,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
>  	return -EOPNOTSUPP;
>  }
>=20
> +static inline int
> +__ice_set_vf_mac(struct ice_pf __always_unused *pf,
> +		 u16 __always_unused vf_id, const u8 __always_unused *mac) {
> +	return -EOPNOTSUPP;
> +}
> +
>  static inline int
>  ice_set_vf_mac(struct net_device __always_unused *netdev,
>  	       int __always_unused vf_id, u8 __always_unused *mac)
> --
> 2.39.3 (Apple Git-146)


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


