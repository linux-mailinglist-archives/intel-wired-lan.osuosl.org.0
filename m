Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB1oLSZNnWkBOgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:03:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF59182B52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C6C961374;
	Tue, 24 Feb 2026 07:03:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gYL9z-fK_Mxn; Tue, 24 Feb 2026 07:03:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFCF261379
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771916579;
	bh=R76MqcwaMjZHkjiperXGC1867EtG+RpbbudlgK+qc5Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W2urIT+Bfoc1D/oin1mNAMpzTyZ83RGWRd480ZWguTyTtW0OzC8UsASFsrC7BWYN0
	 d6LrMCp0vv3aA61omfjcLXMMTqK+phQiyHQGSQl/GGV5ILML0rPdu4T9bT2TdJERwU
	 HYyNxTi3e2ruPMVJv29GzzJUdiyx9pvV/7yXmNSyXWsex1x4BBaF7wacGeYVEulPBm
	 YcUYYpwGOcLYSb+6QrMPAu6EvSpFEc65txqPexXu1uaEAB2OdFsDfaL+/0i9NZEgZr
	 nzRDOuEvw/TxsdQvOTJ9Gv6O7WvxCzmTmkIfcpT9sFJ5+VCQp4Jy+5MZrkdl/hc/h1
	 URU4HwbJ3SNkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFCF261379;
	Tue, 24 Feb 2026 07:02:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 84FFC237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:02:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 821CF404E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:02:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E93SARyF9mBk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 07:02:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A2DAB404A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2DAB404A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2DAB404A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:02:56 +0000 (UTC)
X-CSE-ConnectionGUID: GIjDNIC8T5+/+r5v0QAi3w==
X-CSE-MsgGUID: PdQzTPPLSD2lODkQPf/4WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84380551"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="84380551"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:02:56 -0800
X-CSE-ConnectionGUID: ISEV3HxyQ2u1jjY4l6yNqA==
X-CSE-MsgGUID: 7Len4V62QGyhhQ7Zhmxbug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215833965"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:02:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:02:55 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:02:55 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.17) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:02:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IYqnJ5QB5aKcTyCsNY+9WRPwMj7LbhNaPn2Tp4Vrvjk5LuydaGjepJwXVW7cvPPsQIDptrhuqkGZAUH7JCbTLq+fRwSfpwO57Wcp62MlKKqGrXfGEUL9xmiOtH7lecHoiNYkACdlt7RiJ8970dikt+sV0CsOWaiTfar8knPEe+8aoAoIWX5TsZaN1lheeWdj0garzJ7HXXzBDmJt9sjRQiOGz6xnqrmcxDDHTSNsnh48JDJe+gHmLfLncKJtzSkSm1KfY/ZX9TPoWPgWCyCHf4hcxrLJhVU/k84+3Fn5uqB7wmX6gbZau13ferPPQLoqjgFSpbfJsAULvafimL+GKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R76MqcwaMjZHkjiperXGC1867EtG+RpbbudlgK+qc5Y=;
 b=HlOpe3llJHfCQHV5FicYUdjb+tvbv5aW3aG8fHxqkVeaEL7G1iNhTWwfqwRiqyKrgXsw8WW0/r7YZUvGmaELs0BKp26niDWk8wNsal21WUjRUyYgBlcn27sOLEi50jukvC3pOiNJkBbwa0+nL4UuAKduZ4AhtKtcmy/EYfa89+Itiz89HApKehsk1ytkPxrQ4TGbz9V/Wzn1tPaLr4H78YtAqjqi1+eY1ZF44zEHaK9PQS+p12p0grlhxJwrUK6XwiuvdrLmrS53hjzlPfwBxD1JmsfFq0hKE5gMc0Dem2C6D32zVU3/mIMkopTrvAQmyKqEfmQWxTbGExXqkLrTnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SA1PR11MB8476.namprd11.prod.outlook.com (2603:10b6:806:3af::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 07:02:51 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:02:51 +0000
From: "R, Bharath" <bharath.r@intel.com>
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
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
 driver framework for Intel(R) Control Plane Function
Thread-Index: AQHcV8kTzdC9eaOp3kW3AwnKJoE4XrWSB1Fg
Date: Tue, 24 Feb 2026 07:02:51 +0000
Message-ID: <PH8PR11MB7965FB0E59EFADF46B2C2402F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-13-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-13-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SA1PR11MB8476:EE_
x-ms-office365-filtering-correlation-id: de58f055-c687-413c-4d68-08de7372b9bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kv6UWrXkPqH4+8rePclqDp518S6vvJN8SxmrhuuFDhz6CDgyETiZUCLO/2/E?=
 =?us-ascii?Q?w18YqB46z4hc1TaoxjxbbANBUylUuIW/FXNMr396NHHOPgyafO9IsmkNmjVi?=
 =?us-ascii?Q?uoCf2HIubkjDK87kazqoLnFevkdIDXtH6NTikWzdX9J2x3MFCRxDYgM2xlSE?=
 =?us-ascii?Q?LqPwBX0v7PAblweT7bF4zhyd1a8Ewf+aYrkjLo2rrUYbS/SezB+JSgJ5ADQe?=
 =?us-ascii?Q?4COstqPtKPi49J/SJmuaMwL8BTJaSFo6CnIVQcfOUPN0Zc2JRKmEpfMPoPKC?=
 =?us-ascii?Q?6ZXEWcrcd3UM5EFzH6pps9P5pyHEpyKuqK2W0L/vxjw+bJ5eGpUAdrcTmA7d?=
 =?us-ascii?Q?9L4XEOUJ4Et6/qRTQX/NFLdAqUvg3hHeSQhPmyL07XcBV3u5lctdcvnucCYL?=
 =?us-ascii?Q?OBaENkORZibwzff+QxAAXrVmiHigUAPQ6KNlJSZCJ8vQJk2rEnghc6SQzXuJ?=
 =?us-ascii?Q?xyg0Vx9af1sLRWdzl92zqa4Cwycyu5uoZq0NN0eojhqbpep1oBV4EgIvFTMO?=
 =?us-ascii?Q?35aehCmnXh7aeerlbDxi7Irih0C+K12St5kMSk5k/4PpKptyfKZJxMPDKT3/?=
 =?us-ascii?Q?4F1m/yJDW/G8s7l2maAq7IsltKpngKKVn1Pnl31CKsZz/QltUzJIlfXq3JE7?=
 =?us-ascii?Q?F4eYUF/S3gFMaJl6NHGtjB7aTKVVB9JA2Bom1DJp5S6KwJfPPZbU+0X0Uzqm?=
 =?us-ascii?Q?6bCE/R2/1JfIay0+tnvh9KPUwEfSykW7Ybuj6jA9573G1mq06x9pM4JSVCM+?=
 =?us-ascii?Q?LMne9z+RP9AICQ2XVXeoGC3q5uTgmOWcWz7F05wpBORiaKDtpVzlg2MYTh6+?=
 =?us-ascii?Q?5IKeKjlw30kiVzGXbpMh0oxMBHuPagk5lqDukmtiniTRYPkbARgPo6rgEorf?=
 =?us-ascii?Q?Xh9yKF/jngGW9+cLIf/fRLzT5/Qr05jxHHJkZ462Gz8X4EjwTNlTORwVW8YB?=
 =?us-ascii?Q?0lp4kbPKFaACFUefnqRrRHWxfBrJFbNIswc0ub+ofzf3vLoLH9FaOzCCoVIs?=
 =?us-ascii?Q?rWNM9cAX+76yfdHb9LPyg3XUpeGUUpnZqTSBQQRr3O/ORE933evUyBeeAnwi?=
 =?us-ascii?Q?tEENViZUaEd5fio5GzgOGiLL7lNrMO1XEHy86oHjtm+ItyB/H/utO3PGRwxW?=
 =?us-ascii?Q?VotIoxBmkIzzjD2FbgSG2NlH8eHXluBRuVnFwI9bDqg8QBqWCZDX8aGQHbuq?=
 =?us-ascii?Q?nHdZUwSutMJJG2stNQIhSMNL9NYmjGXf02I6j7wWlMvPmGn+Aq4cqufHMtO7?=
 =?us-ascii?Q?LfYeynD2R7ksr5DMafrlQLz83064ao3cg64L8rgiuilP16ygTHPs0K+WlKAY?=
 =?us-ascii?Q?yPt/XY+j7M2VMxM9nn3VSdcP7vnae0ttANCn5UbvN6oAzwNOLLJOsdht5glX?=
 =?us-ascii?Q?gjQvvoTeQA40SiOEk+6zR7WQyb40f1BcJeDkAa4q+vTSLC3+l9mEFYlngUq3?=
 =?us-ascii?Q?hzsfMarU+WgzMmGirsHIlzqBl0jA2dmSmH89xdAUpWdnGBUPD7dyl5nMZPZa?=
 =?us-ascii?Q?o/X08eShWNuDzcX/EQXxzKEbPFip+cIMRyNulEoqKNipLO5TYFvF8jYW51mF?=
 =?us-ascii?Q?YEtn6XY+EDaB8SsXkTEd55UX+JflZQW25V0XJL12+2P8A5JJMZci+2M5Oc46?=
 =?us-ascii?Q?ox/ynnDy+vLMZtoF7ENaGq0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Sl8JUSjsdEk4UBswescOR0j8/A5hWEG0EZwkYykig8eeDbC3/QBcF2WJBxF9?=
 =?us-ascii?Q?9Q173UdyS7qpkoV6X7KcGPOABvx3UaoykA9d5FxvUB5QH8PbrX0q3kwbXR7e?=
 =?us-ascii?Q?bX1UezksoCvTKGkKtkPDz8EizuySwpbN/WfOVZP/PtTGLj+eZKjvupXJGeQ4?=
 =?us-ascii?Q?vaYu2wAy/ArxacfRg6gTxTe2JHyu3jxieqk9J9MEykV8zWUsDyKwV4cOHrRK?=
 =?us-ascii?Q?XjLSXwjDlT7OxMnWQr2P6NcgHv5Cs1KRXsuPhzsr88sBXPGPYfYfq8ELyher?=
 =?us-ascii?Q?UVGHdKj01C2gPUW3uMUBtZGKN5jZsCh2wRQm4RNcs3BNxB/9cJui4NiN2Sug?=
 =?us-ascii?Q?x7xy4uT8I91d3aCZuSdtxvqgo5TNdBf4vVi9cLCT7Ak8GcR2kPXpnmKeS5zN?=
 =?us-ascii?Q?HkwKRf5qF7zQsOwiIIquKBud79ttA/ZSuIYzUiqD/shRSZsjNYfgCbkYUtwg?=
 =?us-ascii?Q?lQsEAp1G7sPsKbcqUVuS9NqbbfByMe5mqEQZcPu/a8RzltnFvEdKPcR/54Qz?=
 =?us-ascii?Q?kDEi7QLRBwojneHojXjBgXQUi/eu/azlA2YObUnpdsNOd4bSy7iW0gGnh0oz?=
 =?us-ascii?Q?AjI0MrKmGtKJ3NEBCpqjHS4NdyoBTiOwelGMxw1Mls0WRpypSkB4WJcSGCIo?=
 =?us-ascii?Q?iVx1oSeOBPmHC2rMoW5rAaPUAyqrJ5tDmLFhZJq8AbA/bG7fAXWPdI7RsmtH?=
 =?us-ascii?Q?14oG43tEkq7RPddccxXWIUDlvXATjuTx+oq+DF3kVrq9drr5uaO+lc+5f/I3?=
 =?us-ascii?Q?zWlmqPsF6a8mFisFs+nH+B7pZ14LeaCYc04iuA88nZ6vU2VLucx5Z0uhf8dV?=
 =?us-ascii?Q?u8e9TckdvbvD12qi5S4P0cd5CHlQ2TmcDuf4QbXkiZb1cLIH17FBNcqO/2lw?=
 =?us-ascii?Q?K6SJqWE+d6WkquCa6g+/BKO8s0ggMK3Gma53zLyqDcMutNCntLs8BKnf3M0a?=
 =?us-ascii?Q?gc2bzksmPcybSR3vvlCSHSnQV//+QmFepZoQ6NbOKlbrdUcUr/0FHuaSFrb1?=
 =?us-ascii?Q?dQMKpAy95BvKEJh6CCiqCgWllvcU42VS5xvkiwHl1KvtIn1UnVd4nSbPo1L+?=
 =?us-ascii?Q?bgpgt4pQquMlVqy5CrsAkJ1zM+f2hkbfngREk2uoNfyMeYBKHr3ZHGHWKAHg?=
 =?us-ascii?Q?2TSLxju4JPYVGwqRycBLADw+3dt5tc0yXGeiPqaTc748TFXQzogLPRAJEhrP?=
 =?us-ascii?Q?QYLDMHmuGZ/9b/vH5EGq349FTFMiYwOLwX5U7tZ25csxEX8L2cxOyLEIPFmo?=
 =?us-ascii?Q?H+ZRVu8c6ebc+NgKKyuSEt4pZZ3oFmLtPVYoI4RRUoR28U0wzwHQOzQUVhzn?=
 =?us-ascii?Q?FVLrf7x1yjMGrLH6o4iXUq34B8KrBmJZo+galgcYuYp82vpqlBS8DZsm9jVF?=
 =?us-ascii?Q?m7YY0E7aOoA5kDkrDobjQAR1fj8t2C8X4Wupir8IFXKdFQO5whrxMyreHc/m?=
 =?us-ascii?Q?/rCtHttRWgkKmAq09EOpz4fNP/MKRjdLh5dN2DdX8B6gSgXSm2KPIQ7G1m3+?=
 =?us-ascii?Q?+iq/B7Pf9507lj/+qTxSlFxsoI292mr0Pi6kZZFK8ks5CJ1OxwmRCszfe2k3?=
 =?us-ascii?Q?Ahqs2bmJ5EZWij553ralYcbz+bzgEdDZ6MzgIkJXCq9B2pqkC8EIKjySrYjz?=
 =?us-ascii?Q?Cl8DOreX9jbeFW1sn+RpMmadCPLaEzeLEQBzj7/UQztRiKY3bhEEihshKT05?=
 =?us-ascii?Q?eVreSbd1i0Pkq5Tn5jnZ2paS6QbdVwJX7hChrCO+AdszdOwI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de58f055-c687-413c-4d68-08de7372b9bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 07:02:51.2503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kyjyNrnSfKkmXKmOBz1MgZhwwcASTnIy9rpI8qS/NsfuwYyHzVyj7sphqfbA+vbzlPZ5u1tIGLlWQONq3eVruQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8476
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771916577; x=1803452577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ewi0T6lnqN75X0pgbNbWt8OuTTX6VfpHsGQ+TB+5GlM=;
 b=nInw82fQI10yvpY6H4S9300dBoB08qzxNhZ+cyVM3GRxHuAqSjcsvf5v
 n1D2yRTSDlq8GyEQQlwaDNI36DR1jvCE4eqbNcI/VGCw0/3Na3Oz6cP0u
 ZW3FrKcxsYbZQUQMTPWViTo4Gj1hZLJ4kxYO2PkO+44DhYOeXNctMppkS
 6BJSBNsY8upu0jsa5bhszfCtE+3814/1tUXCYoG7AAtglKVxQUbXF8F6c
 kKNIwnxdIVBeXEDGgO6SBIyc0+fxgFqsud6FdvJbTaVmwpfigJPbtJtEf
 xVtXGqp4mcVIQ1sOHlCOZh5S33soyeJjprM64x9eKLspEyOZQE1UFzF6n
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nInw82fQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
 driver framework for Intel(R) Control Plane Function
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0EF59182B52
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic drive=
r
> framework for Intel(R) Control Plane Function
>=20
> Add module register and probe functionality. Add the required support to
> register IXD PCI driver, as well as probe and remove call backs. Enable t=
he PCI
> device and request the kernel to reserve the memory resources that will b=
e
> used by the driver. Finally map the BAR0 address space.
>=20
> For now, use devm_alloc() to allocate adapter, as it requires the least a=
mount
> of code. In a later commit, it will be replaced with a devlink alternativ=
e.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  .../device_drivers/ethernet/index.rst         |   1 +
>  .../device_drivers/ethernet/intel/ixd.rst     |  39 ++++++
>  drivers/net/ethernet/intel/Kconfig            |   2 +
>  drivers/net/ethernet/intel/Makefile           |   1 +
>  drivers/net/ethernet/intel/ixd/Kconfig        |  13 ++
>  drivers/net/ethernet/intel/ixd/Makefile       |   8 ++
>  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++++
>  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  28 +++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c     | 112 ++++++++++++++++++
>  9 files changed, 232 insertions(+)
>  create mode 100644
>=20

Tested-by: Bharath R <Bharath.r@intel.com>

