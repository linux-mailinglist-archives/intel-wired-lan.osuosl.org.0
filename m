Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC/eEsWMnGmdJQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:22:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC5E17AB43
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:22:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E580983CFB;
	Mon, 23 Feb 2026 17:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vIDdVhrxxYTm; Mon, 23 Feb 2026 17:19:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE09B83CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771867142;
	bh=dIzNpyfxhD/jJhGAFT648GR8LFhxAqTtcjfV3BzZZvI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uxsk/aPiPxJ1ZMhG3sT0xRmSSXUmDQMIxji3j5l2oxQ9NGH1iNFcrp91VjMmT3PFs
	 7SHNsSyUTzIVi9QDYyGTrT23Rono+VHQZU2CplHQQllA6NLujjF1j3l9yT695J7zne
	 c3R5roYwGKGjVT5V0tVysIj2pw09dqI2jOqmBR+g0dEvSuwJGjKjFhj1zaEtPcvjXT
	 T3nhaukNm+D1P4HDqtct8+McB+HA9qUTlmLXSQRYpAKknmfHVxOlOUUlgk3PM8iAvk
	 bBVN6RcF8Gcy6GHzgW+sZqEFCkkL32ONvtnx5/2OIZuVarPZI2kFREmKDqLDjzGCui
	 LBdJWkplrpm8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE09B83CFD;
	Mon, 23 Feb 2026 17:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AA7E237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57542608E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXE-QWM_lngb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 17:18:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04D7B60847
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04D7B60847
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04D7B60847
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:18:58 +0000 (UTC)
X-CSE-ConnectionGUID: an5MfasYSBKjDRK26CPLjQ==
X-CSE-MsgGUID: aK9pDFa6SOWcULTs4AeK1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83579609"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83579609"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:18:58 -0800
X-CSE-ConnectionGUID: t1g5cjGbQYSMHekqIjfa0w==
X-CSE-MsgGUID: W+P91VLcRIy1uOyCckGDVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214853488"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:18:58 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:18:57 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 09:18:57 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:18:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bF3YGMJbriYpaHuk2Lxm+RSSv2jh6EDFHIoGzrUEB61/noYgrs+31j1aQxjyj+aDz0fax8vE0dg7M00VkC76VsqKPxOEmQotWlrrDpbkqZXCSnbC5RuCWV6Eymv27mmPgfte06RT08EqPgc/nqyX1IhJayfa2DhUrYRFUZsa2ZiLIRyyN6GltXjWlWEnv79uGz9SEhsCCTV7z/heNcXViVPc95ekoNF7M8QnK4C09wjMfxUWGbZZnT7v+0BQIyngw0mzdp40JEIOSGFzsxdxxsvOx6qbD0C1T+I3S+HvgfiCO+Y9u1QSRW0Vj900U/8B4n4eIlTifDPBCmgdr050Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIzNpyfxhD/jJhGAFT648GR8LFhxAqTtcjfV3BzZZvI=;
 b=QclNf0zQnvQCu0OnImBEsLW0hOpHCiUnmF3ch3NxwSh8dx1eH5jBYCTgKGVoeuJCTbiZcKTWfYASABqDxDDAsHqQlInyxH+QreSOKXVlV0TjT3VOf9oeIt8caLZPIoIOfF9p3lHDDXYAtoX7nAf68NY5k+aTdNXbF2oeMGTktQcQO0RU6GHBqzWzbrEcqSg9q/wqvRUqwIL82V8404jpW+bqpGIwNCmgzhhr45tt2lArRnb1BqwF1zuwdkvFOHJLnozrxmhwQadNcgGiY8PLvevuvDekcGRhqTgZXwJSmVh9WJSy8rz6/YfrbDEJPFJDaa5ta8+eDzvqqmgYA5aiHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 17:18:54 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 17:18:54 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, 
 Jacob E" <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 09/15] idpf: refactor idpf
 to use libie control queues
Thread-Index: AQHcV985SA31HIIOaEeCO9og4PUptbUb8LeAgAcaIgCAbhYioA==
Date: Mon, 23 Feb 2026 17:18:53 +0000
Message-ID: <SJ1PR11MB6297AAB4193E93DF1FFE60779B77A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-10-larysa.zaremba@intel.com>
 <f9a69abd-dabc-440a-a3cd-c88b184f7e77@intel.com>
 <aUAy5vJ04DWAVohe@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aUAy5vJ04DWAVohe@soc-5CG4396X81.clients.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|IA1PR11MB7175:EE_
x-ms-office365-filtering-correlation-id: 05d130fc-c61f-4cd2-c757-08de72ff9ed9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ttwLnZK50AgRut074ZF8RHh8vgKJpybitGLmufnwi0n+74N7QJSvf69P9c05?=
 =?us-ascii?Q?UYlFRf8vXSGJwRx8mkNzMPu4bZ5GaTK3d/gwtr03f4PFPRymBzv4R1TF1Jxi?=
 =?us-ascii?Q?DEg0rn5i9j//yg4M3E99qL9+U0lqrolp9oiD9RaK2hIQQRjBouruJdZuU6Fx?=
 =?us-ascii?Q?rzq/LHifpAaipOJr11kh9nU6bbDKKGGsPNVcAK5pt9ZzzwoK1ZDGt9Tpi8ED?=
 =?us-ascii?Q?ttnD44Dyq1Rol8AExUwoeHmp2eo/oHD7gSmXXnxe9dwBnXrr7Pk/aBZrI5ms?=
 =?us-ascii?Q?dtFQXV++hbQoI2ofF0HfFNIklnGxY7v8WJNMmtDirvzqbi03dmgQ0HwVSfym?=
 =?us-ascii?Q?9dI+3ELU93Syc2ogRsYyYzW5ArTJe9E/orlqo53/hyFMTo52g0PkOQqAKwUT?=
 =?us-ascii?Q?aYHGnhdr8is9Cpq0BVjaD/lPReKm9dnTi6IfYBGBlKorrRcrHEgzGtGQKaJ5?=
 =?us-ascii?Q?HL5eFQvJh4XUoBOEIXEPh0us3GMREKgKQ7FcHrANwdvQHVpGvKpo8GsmqvB2?=
 =?us-ascii?Q?49VtBmeJ8kDHtV/B/jq8fUVzM76JeGBreDSImkS3kyER1eGoLKAJUw2gk9sP?=
 =?us-ascii?Q?uZfYyqy0k+MMAE4QiK7kjOrh1hgVO9MqBXZzy9/5o5ufiA9PKZlkqIc7Wfws?=
 =?us-ascii?Q?T2keqARDCD5uCTDEkeTdoYuBek710GYEJfTu16YYMH/9/0wTMiU0WEjkPPk9?=
 =?us-ascii?Q?ynxT00xXQPN6rSO7SYqLPebwf/BYEaYIezkTOUVevVDu4d1FcSKmbMlThMu+?=
 =?us-ascii?Q?shbEAR9rxm8RAeeUOPHyfvx6vcpyjn6wOuuj7qgLdefi6zxcx2eHrsGC5Uk8?=
 =?us-ascii?Q?zvchao4vHVTHNBwckRx9fjPHgLcGBGPJvoc3Gn2+k2s+uOS6BsfclQRCmI+W?=
 =?us-ascii?Q?gv/qwCTGbB3CWdN3hToZMsIKlLy/O6TQy9TR3DGtQwdXX2VZJLmtkOMS6Cu0?=
 =?us-ascii?Q?NNq91RTQMyQGtO7wUdq1oEKCMXhEvn7n1rq1hprt97AtUq1bdJwrxOrCBLhe?=
 =?us-ascii?Q?DtNebfCW81AN1RMQ9LNHpyLLJvtdlrVdIx8cIa5PJh1lTQJJdKhHwQujPY+H?=
 =?us-ascii?Q?V5dt8XxLU+d7FPfsCW6Zwa2sIZ5gdUdWPBmgxtAd3Fk9R0zB/JiwIA9nnJav?=
 =?us-ascii?Q?ggfa5NdI2WY2GEn28scs14GL1SZb1znpW54rf6neqmOub1oWm+1Hyo8SQBpJ?=
 =?us-ascii?Q?DbgzcsjMfiM35JNHgKArCIIXns5glVNW+lpFg6GSAtdugNWWRISvSPNJYYSy?=
 =?us-ascii?Q?WKhTxdiUmvRpwssQegrAdIUgYladT3rk3WFZqAf8EuvSodLpLFJYqbO1pZqb?=
 =?us-ascii?Q?0D5Rw1sPwKKBHIjEE2mebrjCX/XtuxEM6PTx40npkdEOGhVIuyidnmC3XG+2?=
 =?us-ascii?Q?YHw9FR03dC+lEQlh6p0mUUHluXZ9tD9bQqUwhXIQO4vbTC04pCYm4HEMmicl?=
 =?us-ascii?Q?SmA+pINPHg6U1ey9yZRz5Du9VXyVAcvYTOnoMwMF0enWHRQJIKSMAOXmVKXi?=
 =?us-ascii?Q?WI+3JzZGvfcyQWY4rGNtMIMeVbWwGVD1qfQ4292t3K0A+pkTxWeOkHlGH2Mr?=
 =?us-ascii?Q?6ZOtpmXwKMfW+MxcwjiORvo4qFskc3l26GP0TV6saNMMUO19LgiI+Fo6Qxk5?=
 =?us-ascii?Q?yrdIT01eZg/UVzRDedaY7rI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R3AJ5586hT/wOcgq2gAOuFpScvqx7+/0blZXEME8tuF6+bTg+FjVcJ9Tv2hk?=
 =?us-ascii?Q?DQCj8x5vp1l5MtlCLz1ulc8QcYTyD112BCHEhPVuEBf6lU7FogqKlnGuO5H1?=
 =?us-ascii?Q?RYaE1zx6Sf6BfchnvnQCINhPtXELoLOrPhwM4ZJ3pnO2qn6LBTGTVitDF5fm?=
 =?us-ascii?Q?JUaBhjNMkmRmx/68WCvtEucCSctnlYag4iuEmzRTaN+vSJd3ds1L8sMydr2J?=
 =?us-ascii?Q?jjB5kPrdG2pHIvud9h0YLAmYhkXngK3uc6PrVQ4rdt43p/s3dXOCxzruxfP6?=
 =?us-ascii?Q?RcNckqmGG33noxw2un21/tJIvcBpgkjQ5wBn1f2TXlu6dGT5rn6S8wlYjULV?=
 =?us-ascii?Q?u3iUPEj1I4bgMgAKfHEN3LXTIXxshDdd6dkevn7FrY8isOxRW9PXNQlhM1BG?=
 =?us-ascii?Q?4YTT0qUa4tFo2NLtdRgiy/Qqn97F4NrXGtbVjlpEwUm74iC7tQtN7WviTtUY?=
 =?us-ascii?Q?rDdyEJ5ZSHhvpNt6dTdai2F7dIDUZX4UXLFsF5ZwtbMP3bIBiHVRNACzSG0H?=
 =?us-ascii?Q?f1QMuZwvdbbfDR6pHyUrPMLUJ8ge3td/J/OtJXAGup85dcTuYsBcvG5OE/qr?=
 =?us-ascii?Q?MzdteSI9t/bI1q0d59KFPkYHd7Mfr2IuvbmXTzRkdvsXR3mgFOwMWelviCoy?=
 =?us-ascii?Q?WBpW/9VFjWZt4i5xSwh4ZYVlhI+vYVWrXob+MoQXnJ/1/9Rfvcjp3w6GJU5k?=
 =?us-ascii?Q?K5wIGyhB+12QRv57IV95RFuBeVqOEAl/NAamwi1OftR78OByQHkSeqvZ74NJ?=
 =?us-ascii?Q?FEqT+0OcGGVWhAotfQ0dykWFUvPWE28xXT8efy1LNz9frgiIMloZVNFvbKJi?=
 =?us-ascii?Q?/jbv5s5EBM0mfYeKZClrKl3ZAEgalw8lPaAxWYd6TAh8XEfzTaUksBC0no4A?=
 =?us-ascii?Q?lrxxjtxyCdjUa4HjfWAmBRWYLBqENrE8NWzDV9NyIvVfPWJf2zQU0a5YgKkq?=
 =?us-ascii?Q?osAEJ0z7Yyt1Q+BXfj1GY62u0Pow+xMpJQlktti4KfZ9KmsF4LgYs775CVG4?=
 =?us-ascii?Q?N/suLou6eo3k/m9zfRmZfp21mXKIKrl7lGEiJTtwAIi8GGtjj4XPv1bM5MQ+?=
 =?us-ascii?Q?cgLYQVVj9WRWBtmWLdodFbwbf6JB8vkNbzUhTq/jTBqJq/QT0qp4Tl9L1Il9?=
 =?us-ascii?Q?Zu0FuIX+fPpzK3bCQGnXHzT9tXIXxnHY9Hsi7SOzH5NJs97/9YFSkm8M8dkA?=
 =?us-ascii?Q?T/n5vIAOv02109kIhRVrA2Tqemd8n9ZzNO/SMVuXvhDJq0cwY9SCfjpS8Ci+?=
 =?us-ascii?Q?+RZ8xx+Ji0ef/HJdJhSpg/Xqhn4JDmCrgAQLndBcwGItP/5GY+hEShHKHfjH?=
 =?us-ascii?Q?Syoh2cmZxspUBzoiPybm2Q4H2UWRMBoyOU8MotfQWZLcORO2/8CzbSKKp+Qz?=
 =?us-ascii?Q?bURFmwXavP+MIdcKlBhlieK3k1fy9rCzb65+dfe6LFbRDrzR7S7jFBRwNsxK?=
 =?us-ascii?Q?LoMXCN6NoXG5vDyujHkvUO1aiWUAh0KoYs48wOklb0IUki7nrgdDEaTsFrfw?=
 =?us-ascii?Q?N3KOyL1dhUx9WDl7V38xooNnBkgQkKtw96SFYfUF69nkcY1rNvHGVl2VFpiQ?=
 =?us-ascii?Q?QDwOXphztfq3T/Ov9Kse3e1F+b50xmtjUeZzm2m0NBi292p9dp7IoEpKIWFs?=
 =?us-ascii?Q?pLKSvTaO8KJ18tgEEXE4ShOgIF3rgvj/uo6g99QCob7XtXTyBMFUzSoC9C9P?=
 =?us-ascii?Q?U1AI7d+cBSHxydgXaZ9kc2HGXOsRs3bs+ERKjwX9N0o1PKWdw+Kb1KVX+Pc8?=
 =?us-ascii?Q?vfxPpIJXeQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d130fc-c61f-4cd2-c757-08de72ff9ed9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 17:18:54.0104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gqUi19WqcxsiDHmlfu9zCTf/0H77UDkSw8z9J0++janRNoh5Lq6Hfu3iLG0QGW7dYf0nTnOKd8Cqs5EyHUCKOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7175
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771867139; x=1803403139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xw8xZJfgPvvWrBv4uOUgjUx9XsEB2Y1LacxwEDwQhsE=;
 b=l/D4de2pDVzFGo94gStYchT/UCXGa9/2P0FpDMV/ClkWZ0kRJH9+1oXN
 QZuLGFdJSNDcE1A/ZXEq0tsDJEcIf6tWS6v/D6m/hjSFpyPvCTsG1H7IS
 SFUe9gFJwK914s5uPkkAooXeTLZTKSFTgYg5fRzKbm3HjC7OKN6REpdg2
 zNLWpEOq7Hx/bbezO6giLKYUpxeasYcMqzRjv9H5UU3UGRHeKI5/VvFeh
 1UwAr6T44BSHNSKK0PeyZsItNsQ4SVPnlqQTYAsADmLZsiSnplsOnxIJd
 OuGUUW96BqxFoluEoD7U+G7nmiQiJvIng3Y+zr6Qy2nb97pMklnaPNuc+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l/D4de2p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/15] idpf: refactor idpf
 to use libie control queues
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:emil.s.tantilov@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9BC5E17AB43
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Monday, December 15, 2025 8:10 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Fijalkowski, Mac=
iej
> <maciej.fijalkowski@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S. Mil=
ler
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon
> Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>; Richard
> Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/15] idpf: refactor i=
dpf to
> use libie control queues
>=20
> On Wed, Dec 10, 2025 at 07:42:53PM -0800, Tantilov, Emil S wrote:
> >
> > On 11/17/2025 5:48 AM, Larysa Zaremba wrote:
> > > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > >
> > > Support to initialize and configure controlqs, and manage their
> > > transactions was introduced in libie. As part of it, most of the
> > > existing controlq structures are renamed and modified. Use those
> > > APIs in idpf and make all the necessary changes.
> > >
> > > Previously for the send and receive virtchnl messages, there used to
> > > be a memcpy involved in controlq code to copy the buffer info passed
> > > by the send function into the controlq specific buffers. There was
> > > no restriction to use automatic memory in that case. The new
> > > implementation in libie removed copying of the send buffer info and
> > > introduced DMA mapping of the send buffer itself. To accommodate it,
> > > use dynamic memory for the larger send buffers. For smaller ones (<=
=3D
> > > 128 bytes) libie still can copy them into the pre-allocated message m=
emory.
> > >
> > > In case of receive, idpf receives a page pool buffer allocated by
> > > the libie and care should be taken to release it after use in the idp=
f.
> > >
> > > The changes are fairly trivial and localized, with a notable
> > > exception being the consolidation of idpf_vc_xn_shutdown and
> > > idpf_deinit_dflt_mbx under the latter name. This has some additional
> > > consequences that are addressed in the following patches.
> > >
> > > This refactoring introduces roughly additional 40KB of module
> > > storage used for systems that only run idpf, so idpf + libie_cp +
> > > libie_pci takes about 7% more storage than just idpf before refactori=
ng.
> > >
> > > We now pre-allocate small TX buffers, so that does increase the
> > > memory usage, but reduces the need to allocate. This results in
> > > additional 256 * 128B of memory permanently used, increasing the
> > > worst-case memory usage by 32KB but our ctlq RX buffers need to be
> > > of size 4096B anyway (not changed by the patchset), so this is hardly
> noticeable.
> > >
> > > As for the timings, the fact that we are mostly limited by the HW
> > > response time which is far from instant, is not changed by this refac=
tor.
> > >
> > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/idpf/Makefile      |    2 -
> > >   drivers/net/ethernet/intel/idpf/idpf.h        |   28 +-
> > >   .../net/ethernet/intel/idpf/idpf_controlq.c   |  633 -------
> > >   .../net/ethernet/intel/idpf/idpf_controlq.h   |  142 --
> > >   .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
> > >   .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
> > >   drivers/net/ethernet/intel/idpf/idpf_dev.c    |   60 +-
> > >   .../net/ethernet/intel/idpf/idpf_ethtool.c    |   20 +-
> > >   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   67 +-
> > >   drivers/net/ethernet/intel/idpf/idpf_main.c   |    5 -
> > >   drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
> > >   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
> > >   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   67 +-
> > >   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1580 ++++++--------=
---
> > >   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   90 +-
> > >   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  239 ++-
> > >   16 files changed, 783 insertions(+), 2520 deletions(-)
> > >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
> > >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
> > >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_ap=
i.h
> > >   delete mode 100644
> drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
> > >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
> > >
> >
> > <snip>
> >
> > > diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > index e15b1e8effc8..7751a81fc29d 100644
> > > --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > @@ -1363,6 +1363,7 @@ void idpf_statistics_task(struct work_struct
> *work)
> > >    */
> > >   void idpf_mbx_task(struct work_struct *work)
> > >   {
> > > +	struct libie_ctlq_xn_recv_params xn_params;
> > >   	struct idpf_adapter *adapter;
> > >   	adapter =3D container_of(work, struct idpf_adapter, mbx_task.work)=
;
> > > @@ -1373,7 +1374,14 @@ void idpf_mbx_task(struct work_struct
> *work)
> > >   		queue_delayed_work(adapter->mbx_wq, &adapter-
> >mbx_task,
> > >   				   usecs_to_jiffies(300));
> > > -	idpf_recv_mb_msg(adapter, adapter->hw.arq);
> > > +	xn_params =3D (struct libie_ctlq_xn_recv_params) {
> > > +		.xnm =3D adapter->xn_init_params.xnm,
> > > +		.ctlq =3D adapter->arq,
> > > +		.ctlq_msg_handler =3D idpf_recv_event_msg,
> > > +		.budget =3D LIBIE_CTLQ_MAX_XN_ENTRIES,
> > > +	};
> > > +
> > > +	libie_ctlq_xn_recv(&xn_params);
> > >   }
> > >   /**
> > > @@ -1907,7 +1915,6 @@ static void idpf_init_hard_reset(struct
> idpf_adapter *adapter)
> > >   		idpf_vc_core_deinit(adapter);
> > >   		if (!is_reset)
> > >   			reg_ops->trigger_reset(adapter,
> IDPF_HR_FUNC_RESET);
> > > -		idpf_deinit_dflt_mbx(adapter);
> > >   	} else {
> > >   		dev_err(dev, "Unhandled hard reset cause\n");
> > >   		err =3D -EBADRQC;
> > > @@ -1972,19 +1979,11 @@ void idpf_vc_event_task(struct work_struct
> *work)
> > >   	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
> > >   		return;
> > > -	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
> > > -		goto func_reset;
> > > -
> > > -	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
> > > -		goto drv_load;
> > > -
> > > -	return;
> > > -
> > > -func_reset:
> > > -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> >
> > This will cause a regression where VC can timeout on reset:
> > https://lore.kernel.org/intel-wired-lan/20250508184715.7631-1-emil.s.t
> > antilov@intel.com/
> >
> > I think we can keep this logic, remove the calls to vc_xn_shutdown in
> > idpf_vc_core_deinit() and add it to idpf_remove().
> >
> > Thanks,
> > Emil
> >
>=20
> Thank you for bringging this up!
>=20
> It's a shame that the solution that we have agreed with you on previouly =
has
> such unintended consequences. Well, after looking at it this way, I see n=
o good
> solution except bringing back xnm shutdown, but in libie. See the suggest=
ed
> diff below. Please, say if it works for you.
>=20
> When fixed up in a final patch idpf_vc_event_task will only have one chan=
ged
> line:
>=20
> @@ -1981,7 +1986,7 @@ void idpf_vc_event_task(struct work_struct
> *work)
>         return;
>=20
>  func_reset:
> -       idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> +       libie_ctlq_xn_shutdown(adapter->xnm);
>  drv_load:
>         set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
>         idpf_init_hard_reset(adapter);
>=20
> libie_ctlq_xn_shutdown() sets the state to shutdown, so no new xns can be
> taken (-EAGAIN) and running xns are prematurely completed resulting in a
> timed out error. At the same it does not free any memory, so no use-after=
-free
> risks.
>=20
> ---------------------
> The main diff:
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 69eb72ed6b99..dff931ebbd9f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1977,12 +1977,19 @@ void idpf_vc_event_task(struct work_struct
> *work)
>=20
>         if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
>                 return;
> +       if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
> +               goto func_reset;
>=20
> -       if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags) ||
> -           test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
> -               set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
> -               idpf_init_hard_reset(adapter);
> -       }
> +       if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
> +               goto drv_load;
> +
> +       return;
> +
> +func_reset:
> +       libie_ctlq_xn_shutdown(adapter->xn_init_params.xnm);
> +drv_load:
> +       set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
> +       idpf_init_hard_reset(adapter);
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/libie/controlq.c
> b/drivers/net/ethernet/intel/libie/controlq.c
> index 9b24a87872e5..a39ee6ea37f1 100644
> --- a/drivers/net/ethernet/intel/libie/controlq.c
> +++ b/drivers/net/ethernet/intel/libie/controlq.c
> @@ -694,7 +694,7 @@ static void libie_ctlq_xn_put(struct
> libie_ctlq_xn_manager *xnm,
>   */
>  static void libie_ctlq_xn_deinit_dma(struct device *dev,
>                                      struct libie_ctlq_xn_manager *xnm,
> -                                     u32 num_entries)
> +                                    u32 num_entries)
>  {
>         for (u32 i =3D 0; i < num_entries; i++) {
>                 struct libie_ctlq_xn *xn =3D &xnm->ring[i]; @@ -1093,14 +=
1093,12 @@
> u32 libie_ctlq_xn_send_clean(const struct libie_ctlq_xn_clean_params
> *params)  EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_send_clean, "LIBIE_CP");
>=20
>  /**
> - * libie_ctlq_xn_deinit - deallocate and free the transaction manager re=
sources
> + * libie_ctlq_xn_shutdown - terminate control queue transactions
>   * @xnm: pointer to the transaction manager
> - * @ctx: controlq context structure
>   *
> - * All Rx processing must be stopped beforehand.
> + * Synchronously terminate existing transactions and stop accepting new
> ones.
>   */
> -void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
> -                         struct libie_ctlq_ctx *ctx)
> +void libie_ctlq_xn_shutdown(struct libie_ctlq_xn_manager *xnm)
>  {
>         bool must_wait =3D false;
>         u32 i;
> @@ -1129,7 +1127,20 @@ void libie_ctlq_xn_deinit(struct
> libie_ctlq_xn_manager *xnm,
>=20
>         if (must_wait)
>                 wait_for_completion(&xnm->can_destroy);
> +}
> +EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_shutdown, "LIBIE_CP");
>=20
> +/**
> + * libie_ctlq_xn_deinit - deallocate and free the transaction manager
> +resources
> + * @xnm: pointer to the transaction manager
> + * @ctx: controlq context structure
> + *
> + * All Rx processing must be stopped beforehand.
> + */
> +void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
> +                         struct libie_ctlq_ctx *ctx) {
> +       libie_ctlq_xn_shutdown(xnm);
>         libie_ctlq_xn_deinit_dma(&ctx->mmio_info.pdev->dev, xnm,
>                                  LIBIE_CTLQ_MAX_XN_ENTRIES);
>         kfree(xnm);
> diff --git a/include/linux/intel/libie/controlq.h
> b/include/linux/intel/libie/controlq.h
> index 4a627670814e..98f082b5d039 100644
> --- a/include/linux/intel/libie/controlq.h
> +++ b/include/linux/intel/libie/controlq.h
> @@ -414,6 +414,7 @@ struct libie_ctlq_xn_init_params {  int
> libie_ctlq_xn_init(struct libie_ctlq_xn_init_params *params);  void
> libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
>                           struct libie_ctlq_ctx *ctx);
> +void libie_ctlq_xn_shutdown(struct libie_ctlq_xn_manager *xnm);
>  int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params);
>  u32 libie_ctlq_xn_recv(struct libie_ctlq_xn_recv_params *params);
>  u32 libie_ctlq_xn_send_clean(const struct libie_ctlq_xn_clean_params
> *params);

Tested-by: Samuel Salin <Samuel.salin@intel.com>
