Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A7BB2E17D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 17:52:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCDBB40C90;
	Wed, 20 Aug 2025 15:52:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxs_S7bSe8nS; Wed, 20 Aug 2025 15:52:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32DDF40C72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755705122;
	bh=KEtaB6o0Z+WzkqRH3AyVMFD4ka4XBPRGzSrXYIde4UU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YeWBIZnGobSH7pHKjTw+krL+qtztyNH7ucRJ75SZYhWoEv4hRG9wLjShHJWHLNySg
	 H4FBuHosY7iwF6mQkEi4Z5JM8yuGXiiv8pCeVLdCl0gf/6WnxGIrTU2d8G3gTZRI4d
	 Qryk9bKLoXiTEl4CKMSzl5v/w5wchCiEnHT7ynZFAvzmwX9lwBOYKkQJb9JFvskp3L
	 Yafr9mCknXPWTwI0RS26sqExamOfB/eBV0PyjuJAOpUxyAIljErQ9T8ZTXfgbO/5dT
	 FDS2yquyZExHl1Zph0S2p257THhrLpWdMk7szRQDDYjTnhn9r5fkXlgXncuhu3PHV0
	 zTnOzScH3oLFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32DDF40C72;
	Wed, 20 Aug 2025 15:52:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 94F5BE0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 15:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A34683AD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 15:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i63pKZ4xsntT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 15:51:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7B6B838E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7B6B838E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7B6B838E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 15:51:58 +0000 (UTC)
X-CSE-ConnectionGUID: cIPIORN+TIquu+7U++qkUw==
X-CSE-MsgGUID: jiHYP0w0Tby3/kt2clCI0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58074271"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="58074271"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 08:51:55 -0700
X-CSE-ConnectionGUID: 9yw7/T+FRJ6UxXm+E/SZbg==
X-CSE-MsgGUID: h3G0/P2sSXCF2fo0SFNH3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="199032718"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 08:51:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 08:51:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 08:51:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.41)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 08:51:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zHRsBcWCNFHpQzwqX0wh7dnUNNWdYfVw5qjxqc5HGDDpndsX0KrcaiPskDSdG+XDIHSRY3iSl2/feFSfTtWBiwjWm7vJtDPvU9BBQqTuwU/onXAlEGXbZdwKHRnai6s5ffUUtNrFY70CGNOc9inhjQslXrQwtdtckmV5QhZPDeuAb5p4utD44wS/v4GdFDao+PKQD3lTuyq9lhq+17j+FokKC6AokwlZlkXhJm0caXxnL6EjKcDYMkxFI4cYojpYcp0n0vkmxxYHHSOvg70UXF09p8gqfTZwUWW/PlS02kdkqNEMuR7i2irUVuBasVx6vGf2DMbi9pv+h1pbHGLKrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KEtaB6o0Z+WzkqRH3AyVMFD4ka4XBPRGzSrXYIde4UU=;
 b=enslyRBI/DfCFMgYu/kY/2U7tDsN2g9yQbEpv1vqAb2h0/NLsg7GLV74b5tBlVkVHnN2JMu0ZRo4VOL401LKZqdpu2XaqqmlpGJddUYYFdlrtk0zWMd3do/A6apXtRxdPfQTi8VIbrNr8vIfpXba+ROpkT5b9kHI1utNhWcXvvNP7//XjZODF6aL9QTMvZKBTWChd4DZXVdp1sRyItYnyUtYLeF6FFqAxIQkjLYAz1VUhmK3oCDo3j9hfsOSs01kZAfnb5CGZ0RTPaJPiATWejpsaHQha+iSgpSseguz/YuTh0HYLa+q3FiYplUz5+ab1ozxx8yyCLc5efq+aGctrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8555.namprd11.prod.outlook.com (2603:10b6:408:1b0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.13; Wed, 20 Aug
 2025 15:51:46 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 15:51:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Calvin Owens <calvin@wbinvd.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Vecera, Ivan" <ivecera@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
Thread-Index: AQHcEYrz8MePH/IlYEy3yew6Rl5kibRrsLnA
Date: Wed, 20 Aug 2025 15:51:46 +0000
Message-ID: <IA3PR11MB898643CA16052892963547F2E533A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
In-Reply-To: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8555:EE_
x-ms-office365-filtering-correlation-id: 6b14ae00-d5d2-4d20-47d5-08dde0017788
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wnYBgwRbNPbshoq6B3nA3qD4qgCv5/1CLTtvVyY8C4VtIF9riD8xSevCRQDp?=
 =?us-ascii?Q?6QekMD9yf24BIlCIUIFlvUYvxo7k8eFSh7grlxiwyyHD/jATbtowLLUzPmMW?=
 =?us-ascii?Q?cNNZ31AixVR+YHN5ix1gk5n8v4JtKR3q+lv77dwPx2EZzak3sjsGQEEULBD3?=
 =?us-ascii?Q?I/hIomKvseRMwbzQELWV7LOBADyh8Pm1sdrTLQtkwaVN0yBzMKSWc9rIIy/1?=
 =?us-ascii?Q?xv7io0uI2BfojYjTO+60Twnx/bMFRqoTeCe7+YhY6FeRCmPJ5H/OPHHJCxlg?=
 =?us-ascii?Q?RjdukhMvIAgDiRFTdR7ZtpKyMZwYfTo3rhfcf6y3QunkebIi2/SJCS9PTu0d?=
 =?us-ascii?Q?yar2/mqFhiDwRH5qmI8LAc1VZch0cYAeXaPpZ3cBOdgyPCp8pmC7+5KR+cnw?=
 =?us-ascii?Q?N+zdYHYeGF8UF5fEbzQWCh6QRu6wniNpI3fGIEIVxMeFm/bz2HymLGmv1wMv?=
 =?us-ascii?Q?2ub/SkUMh2ddKLcudfCmemAhLYxGJIJHDt/Kazfkoc7/OvoRH6sbcVrHADek?=
 =?us-ascii?Q?G1aSutwUJXLcFpDEpcosuBoIRVW53c0nyz2SUkd1l/SZrxgD9v5egHgvyyIi?=
 =?us-ascii?Q?Kgvo2icvDNATfBSu/qXBpCX42PCk9OwPmz8efHCqUh/fDVbEe1cDsvPaVCFh?=
 =?us-ascii?Q?1OGt0HTAEBr5WEg7RkeBKCsKNGFaHqzmdbMQKS4MQyyIBcs7t2XOI0RO+uEf?=
 =?us-ascii?Q?XngIZ294xr5WLUB096tMF/Kjhxdc3wplppwxGySJzYYRTubwPondZYj8hRVO?=
 =?us-ascii?Q?wAX+BJOreQiXZdX6khdFecO8kCCFFMRVGPUTdJe/pk69T9wog8En8uf00rBX?=
 =?us-ascii?Q?12ACWzKjzmbpcAuG2BUK3sfH/QLUXkWHmwNyDQgHwR728f268Ha/mHs/BZZ8?=
 =?us-ascii?Q?H+5YDQ314Q0y5gf6Ix/6+wNlu3EiUgIezqUNDOdmY8fEiq7dh5/KkfddGar/?=
 =?us-ascii?Q?wNF00CBdIwW53zxX4D/ioOr1On2QCnuE9ok9FBm9m26DucYz99Y3oairi1BK?=
 =?us-ascii?Q?arA90zi2L5fCkXEdODHaZ5YDBgpNcpWSpCg/pDHYrdHgXDBXnCmN6Q7O7PwC?=
 =?us-ascii?Q?XkNPA4AAAKXuZZI1MGGQ0A/knH4YdaL2eWoGvAjKo6UdBpWRk0zK1sUjpO6i?=
 =?us-ascii?Q?pNOCLhy0A1ysGDx0evQ7DxXQ+KwyMKZJCwRDw4/MT0qd+n28t05wQRdWhpqe?=
 =?us-ascii?Q?yMF5FEhGL2u+Al0R/xanQmp1me0waUCQkN57g1pgp9N+/cxAx0BfE7WwzIBW?=
 =?us-ascii?Q?NyEz7P32CDTWjmx0EX1Q1uvINtHmN5F/5TS1Ro4Y9/GJTgHxDo3JXPtuZYMG?=
 =?us-ascii?Q?madJMg5671ySYvRXGiMM0qKRln2M5lmqg+tmEwLacx+3lJ5gAp7tATCMLdEf?=
 =?us-ascii?Q?L6glR+rA0r29UqIgslZjXsuS2dN0i/ZT3/RdsG0Vin++4uJ+cqlEUpBUidiE?=
 =?us-ascii?Q?ck5cCJ7bMz4UoQwjCrQgumY2Am3bYvYyRGOvUyClDkEkugrZjFHSEA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ms+Ko+xOZAm1N5MKQyBz+ccR8O47aS0NePzB49zO8bzSgPdY3j0L8RuCOR8q?=
 =?us-ascii?Q?LJ1wFgAbd53BQi6r+Nj01Uxy+F0iLzfr9HK4Zy5A8shk6zdLzp5SjpWy7+er?=
 =?us-ascii?Q?Gda+4i+jVklyj+0C1sp65vDM+YVeTdLkfzhUpVDMkIxG6G6S1HnLRKq6ZX7m?=
 =?us-ascii?Q?5wwxmQ1jeVwpQrw8aaoDxg+3MijOo9mLcUN6iOUu0cw3TaIqHDqLX3o/3mqp?=
 =?us-ascii?Q?n43mwhCRr9x2/w0uLhNow+5dETmb6k3LQiiXYZfO+xvHtc8/WcNEP0U97VoS?=
 =?us-ascii?Q?tCJ0SdLibr4PlcuiSZvuVyVLtmKZBfbBJVVkqnulE/T9JC/14eze18g+B8UM?=
 =?us-ascii?Q?g37m4MNVpXvNg1puSqL3n96y17QtY4nOMUgABSR+vqvJRM45x2UbHPhwoTqX?=
 =?us-ascii?Q?WKUsMx77yioq6AWCWUWiAou6sCXLp7ihZLk6I6g4Y5DeqEVt7ZHA29SXC/jq?=
 =?us-ascii?Q?rNa/NcRJwdisbX3vt/P9a7CBBoCyvUgJ66tuQqE5S7qoQ4CGodlTJZcAsaj8?=
 =?us-ascii?Q?U4PZCXulf71SHRNnpueHlffQ9d+mVFpfBZ2ZtrrzWb3ROE5AiDqgU+vIJhqb?=
 =?us-ascii?Q?0d4I+lxtp5TwdjrDS2Rt84T6ENj52W521mymwLShW79MXMsFkeuDes2v8fes?=
 =?us-ascii?Q?Q3AofDO1MSyiQIC7MIXRcss26gScniS/hcskMTijbnjVAoFNj78VZn6vpGWs?=
 =?us-ascii?Q?FxePA3db/wq3n1QGY1l+2jKU2pECPjOhk6LrBCVOOF5JOfNCf3JGbxO986Bz?=
 =?us-ascii?Q?vMi+cjG7VjCB6KxxkPMshdb7+cWRVavbU6GBJ8zrGwbZetPh2BelLFGN+Hhf?=
 =?us-ascii?Q?w3eXcgCVZ4YNJFu4DuHw0rOnZLIXc6a2SVj0banmdGBcKpwwz6nlEEOiq/fv?=
 =?us-ascii?Q?l3gbyo/qc1l3eeAXj5Osqdwbn3Sgwk07+3Poabm154UNjYCeH88h0HVxJWGF?=
 =?us-ascii?Q?IE9jRxqT1a8WRdCrS9qwm/ncE4Wxyk3VVVw8rGPhsVcT9xnTIOkFS5n4RVyj?=
 =?us-ascii?Q?Hjpwp+hElXEf1IiQiokBxV11grw1C63rMb6LrvJkkGwZJ51f98YNWedpJPE0?=
 =?us-ascii?Q?x/VUn/B07rG9L1O+hYE8m8+jNxXgWyztannqreT+ITDX18XLdnu6KQumqbew?=
 =?us-ascii?Q?92JIj8OCZhmHgtF8jvgQF/hAP4qvv5aTjWrRbOHEEPr1Gh/vaMfd9BJStJdP?=
 =?us-ascii?Q?gR0mvhacVxv2tiGJPcs+w2eo4r9zCBqcmHiiaqXlKxu2ANrbUTV6ozcE4s6W?=
 =?us-ascii?Q?12R5O3g3SQ+8fkhaQYw9mIutskM1s7Dg3IAkxRR5hk1l4msncA1Ct0B8nvS/?=
 =?us-ascii?Q?SITWeyBwcW09j14VyIPw9e1+BMdS7Y0Br+0JZjPIY+PweQMZAMNujsj2XDyN?=
 =?us-ascii?Q?lshgT3jfCUbyrLpqyvXUmyc0zqrNOWf3Q8Vx/OgnNp6qj5n8+XYeB0tynpff?=
 =?us-ascii?Q?5DCJ1hv4NffRRq1l5K9m+uSo0GjPgS3vB6wQFXBT7NjqIK/OVMXB0dMdsssS?=
 =?us-ascii?Q?M1LqjFnUZOTnxd3Exmc6WhC+gMr797kuey87suTbgN3Y5FOlXvVlBnsV4Y+6?=
 =?us-ascii?Q?5AIuV0dOWB0h+ODDt2hbbaTZjbixamKwEBSPbH+etTHUA5kv7BXt3LnMwwig?=
 =?us-ascii?Q?rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b14ae00-d5d2-4d20-47d5-08dde0017788
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 15:51:46.1255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u6dm7C+YIY5pjJAxsgKpNkGnJvAAN7MYsHMFyVitve5ZshpIPwXC23PjEmiQmrzm2f1m2sOXk8AX8SYVPkCobL86pZ8nzL0KSvtc37uixU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755705119; x=1787241119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oKdGqQjqhPFmJ3mEDKMuD3ofRLLJOXlgkMFgyZK8nL4=;
 b=mdNSk/emGcdYh3h1QGrL1r1+YUR9JMjjv390Ae0WdF7w+rGiphETQ7U9
 1zI25zPtohBPL8fTfniS8+Zsn8RiPIl4EJLFVFfzWlzkmVEzSrtYrBXvJ
 TAY9+0E4x2k4atx+qiS4eX3S+Srvpj1gKeoZdsI/6Dzo/BQkWJWB3M0HG
 0j9WqU3LB7gEFYScwDFulUxvByNGqVx4bYMdGNKrLNbup4Yjd59St4hVW
 agdMpMnoipLhO6rw6sEjW3L9o7F8WVjD7uA8P+jb+nO4Eb+4a0T/RaeKo
 5ZpC1h8gPnT9r5F7Pe7EeWhocuLUcPkaFKLVDDF5QBv58VGY8mRnZhRpK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mdNSk/em
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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
> Of Calvin Owens
> Sent: Wednesday, August 20, 2025 6:29 AM
> To: netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Vecera, Ivan <ivecera@redhat.com>;
> intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted
> interface name changes
>=20
> The same naming regression which was reported in ixgbe and fixed in
> commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> changes") still exists in i40e.
>=20
> Fix i40e by setting the same flag, added in commit c5ec7f49b480
> ("devlink: let driver opt out of automatic phys_port_name
> generation").
>=20
> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> Signed-off-by: Calvin Owens <calvin@wbinvd.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index cc4e9e2addb7..40f81e798151 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -212,6 +212,7 @@ int i40e_devlink_create_port(struct i40e_pf *pf)
>=20
>  	attrs.flavour =3D DEVLINK_PORT_FLAVOUR_PHYSICAL;
>  	attrs.phys.port_number =3D pf->hw.pf_id;
> +	attrs.no_phys_port_name =3D 1;
1 is acceptable, but kernel style prefers true for boolean fields.
Can you use 'true' instead?

>  	i40e_devlink_set_switch_id(pf, &attrs.switch_id);
>  	devlink_port_attrs_set(&pf->devlink_port, &attrs);
>  	err =3D devlink_port_register(devlink, &pf->devlink_port, pf-
> >hw.pf_id);
Thank you for the patch aligning i40e with ixgbe behavior to prevent unwant=
ed interface renaming. This is correct and minimal.

You're adding attrs.no_phys_port_name =3D 1; but there's no comment in the =
function explaining why. While not strictly required, maintainers often exp=
ect a short inline comment like:
/* Prevent automatic phys_port_name generation (see ixgbe fix) */

This will help future readers understand why this flag is set, what do you =
think?

> --
> 2.47.2

