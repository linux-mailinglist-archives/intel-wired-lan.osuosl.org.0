Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM8OC2rvfGndPQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 18:50:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C75CCBD72F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 18:50:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07C7860E07;
	Fri, 30 Jan 2026 17:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BO78GfMMhHu5; Fri, 30 Jan 2026 17:50:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C6B260E08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769795428;
	bh=MqLBR1Tf/XWc3Dvv7ud5UYmDnH23z/EALYYBUspQ9aU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T/pvCpyRcUhIGZFlHZB0Mi7tD+ltkFEV6/Sf3xzizmyukZ2XnAz3twfG45KzrT4Ct
	 PlQG0IAOmeKHtm1DCE+NlX7ebQRiINSRr5lFWsOTB0oCMSsD9gGYgpUOZyTIBl8teg
	 3iJmuI2xz5Py1RhAw6/gfmn/Sbw6/D6V+tFjB2xuQe6V+BASMGhJqoIGXOpVDedJlL
	 TqaWko6cBQGc5IXs2rIuTDG7Wg6M0RkoN833syNuALreiWvXN5IMG8aPx+8JzEYwgL
	 5uFdh/1F9xQ3dsYmZgW9PRfKlV2l/gAgJfECLAcfcYCNfiFS9zS+G0pnVG9SE7wwTX
	 1sxT08rXXaPFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C6B260E08;
	Fri, 30 Jan 2026 17:50:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 04E661A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 17:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDB6884039
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 17:50:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDsOeVPlgJV1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jan 2026 17:50:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EBDC08403A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBDC08403A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBDC08403A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 17:50:24 +0000 (UTC)
X-CSE-ConnectionGUID: ytS8QIuTQd+eFd8tL2G2nw==
X-CSE-MsgGUID: JduhB24NRYG+Lyb0BvOv0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="82160077"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="82160077"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 09:50:24 -0800
X-CSE-ConnectionGUID: qN6dOrV2TjWiYB980zHDxw==
X-CSE-MsgGUID: Eu3OLaKXQOO32GaIoxTvpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="213852384"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 09:50:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 09:50:22 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 09:50:22 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 09:50:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DOtEktUE8hv9mikoydbARnsHm9KHbDzSesi/ZLSn7A4HZ3jInq8q9E+ZGeAodqX3EHJsA332ooZAs9i5y0xqJERJKhv2Li+OdYsfamLh9MPCw4EiJJuRCpKlJB8d9U4S8CO92WA0MWsCpOHcMuunQr8puJJJQcMSEoIrEHtX8UXYH/HcGQAPMDJJsRbPSdIg4ElycuD4yNxwMX/ij9cd1g25OfEw7AdNMfoucdXZJqG85ZPeBc8C4s88/e6ARuHrHA+jlNJ1vGAgaYZWFy52Z1tg8ifSygRKuJXpH7waSFn3Gl9pJ81fIOPvX3gfTPHNNHyLJP68GmiqUkJY0EOVlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqLBR1Tf/XWc3Dvv7ud5UYmDnH23z/EALYYBUspQ9aU=;
 b=FL6eQX03ON1DbfCPb6gexj+rHAoA6TRQMKyKKiCoKdyDNNBTR1nZz76VqOd1kbNa7Qf2bM8MhXILU/g0VBiNeAWTJdekUSlmOrTDNsxxaCGj1l87y4V3jNXdvC3Bs1JHZUEJwAC5ec4F/ZveEksegZukFmltYfqJjXXlLhTwJyCNyT0fCFMMeg2z5+HF8nJme03373sf4lltYd5EMxmV1G0B1WC6SBrJoBl2F3rNfCkYb0DqUrmbpQen8Wo2W8d8GWAof7uxDA8duewEVyULMUqfMY5o/PRkZCzeRRJSMLdRmrMyAiZauAbopN0VYPZjCMknBwt3DgKBymEuNssuXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF7A88A980A.namprd11.prod.outlook.com
 (2603:10b6:518:1::d32) by DM4PR11MB7277.namprd11.prod.outlook.com
 (2603:10b6:8:10b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 17:50:18 +0000
Received: from PH3PPF7A88A980A.namprd11.prod.outlook.com
 ([fe80::f7b3:4461:b4f9:1a0]) by PH3PPF7A88A980A.namprd11.prod.outlook.com
 ([fe80::f7b3:4461:b4f9:1a0%5]) with mapi id 15.20.9564.007; Fri, 30 Jan 2026
 17:50:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Jonathan Lemon
 <jonathan.lemon@gmail.com>, Leon Romanovsky <leon@kernel.org>, Mark Bloch
 <mbloch@nvidia.com>, Paolo Abeni <pabeni@redhat.com>, Prathosh Satish
 <Prathosh.Satish@microchip.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/9] dpll: Allow
 associating dpll pin with a firmware node
Thread-Index: AQHckgkYDcTvfmsrF0OPfFWlUyvSo7Vq/aOg
Date: Fri, 30 Jan 2026 17:50:17 +0000
Message-ID: <PH3PPF7A88A980AC99717848C75407D76FEE59FA@PH3PPF7A88A980A.namprd11.prod.outlook.com>
References: <20260130165338.101860-1-ivecera@redhat.com>
 <20260130165338.101860-2-ivecera@redhat.com>
In-Reply-To: <20260130165338.101860-2-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF7A88A980A:EE_|DM4PR11MB7277:EE_
x-ms-office365-filtering-correlation-id: bec2b52d-7dbe-45f0-da85-08de602807d3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xHQtSGOFsrbOmYps5eHzCfnlFUF030lcQoYC643/9pSciLefIJEd3vl89Bww?=
 =?us-ascii?Q?admCJjUwEMQodv/odmePLakuLlF2QK/GzVEe1heTc5uvCV4MwGj6Q283HBKz?=
 =?us-ascii?Q?aWnwEjQxNkiHGsuPmaDDreeE5azK8doxaB/yIBHM5a20lQ8iwm4P35PfW/76?=
 =?us-ascii?Q?yn36nORaCb2W36/+jp7zZwOJixrkRWaW0w3yBmXbPjrHVsJenpxSRR9MZkK9?=
 =?us-ascii?Q?S0ndbT8BAOXFpfLUhGexWJi3eJmwV+iNXthRrPloRXC8+DhDtmfULgR092hq?=
 =?us-ascii?Q?bzgUNnxF3t/tE1vxg/R7yFB3xXTU6BnrgixNtKdShLc1aZaA0sPZD9W9PynS?=
 =?us-ascii?Q?yRwvgBAxVQWjHrMiQ2qg28rmFm8qzpQjX1Pgwb9kJQvwWgBOifIx+U6Td4pz?=
 =?us-ascii?Q?JkC0ZlGimxwmLgRXLhUR0lHX70rsLz2JMTFvKoPZJWRXRp2Y2S9dCtSLDHD4?=
 =?us-ascii?Q?1wsVFukPvaI0MpFN0RPiM4VbGDlrUwqdO9i7wo+MqaT+a0BObI5g2Ld1r3Wt?=
 =?us-ascii?Q?I/svFkboJqPyo/scODboViBEOsCnffr1hwdIdpUsWKDo5lBGIV3jkw5w3m0E?=
 =?us-ascii?Q?xPgcHL1K34djopS2IdNc5x9voGNqIh6rAPeYl7Z/BBK8XT2jD5e35TpTpRDK?=
 =?us-ascii?Q?Ip/vKkLFjEWUvGlpPdmF/5OT8mjRArAY5S4hbWC/nereGUc+qDa0fwvVmZQl?=
 =?us-ascii?Q?W58PB943lP0a+3bqNgUHcj/RMWu/DI70reGSMgvAh2yu4gQqiD6wwM80Aexa?=
 =?us-ascii?Q?uZzFqoInGqWiP8TqndtM29IWQh9RmbEUXqQm8U/Utz2nxYX+jhtcel7VNXqr?=
 =?us-ascii?Q?Kii/2nCjl/PR2MexGKJ5ZayG1S+RO+ISYzVyizTICD6eqCDS6v/Fg6aij8f1?=
 =?us-ascii?Q?4J9kUGrnZPclDb8/7TmBX/GuI+1ORh20z+wKhixhQtTlvB6TJfOi+R7W9r8G?=
 =?us-ascii?Q?2Z6+goZYGzL5vwsyqejCIRd6NA3oxG50BIamWIkzQ45Au0wB4P441A5goLhA?=
 =?us-ascii?Q?31VhTWKikWOWvJy1U/L+qFWS00+qC4syRrV32FD9+MqEjnc/anhEcQBBIus3?=
 =?us-ascii?Q?VpqutSt+kaTFOL4zYlubptSxuM2LtFoS4dUbHnSto4OwACFkGtHLOovJN7Gb?=
 =?us-ascii?Q?E0h3MKxKlqJdpOF5RgDwKu6GWwU8tNO5gwy7QwPS83/QG1G9DFyvM3z7orD8?=
 =?us-ascii?Q?+QfAfJNX9PAPYzoS/4+TwpOeqVnc/RCjR/tZ2M55xit4QasIR97+RpB9L4P2?=
 =?us-ascii?Q?Lw8vRGRfOadqrxtL30fkE1lvQy9B0cOCLECGWltzGlgO+NjnSuoLfYLR/D6z?=
 =?us-ascii?Q?bvfKZ7+wp5pkf+iStzGOV6qTNq4c3vszrodyaXlQRncwRYiejkW4iOaL45qR?=
 =?us-ascii?Q?FMBLq2gCUlhe6IZjnQ/+3xUgd/VRFYo5HGXtTaB8l49a13XZ1AsxJNxpqDDl?=
 =?us-ascii?Q?HLclVlpeUM/BwPJ38NjezHxJZwJOiF9SSWefdpnDLi8zQuGjTU8r3xTUVnvT?=
 =?us-ascii?Q?HsRNLEx5JsjJqogxDMbs6HMi4lVIMl4j4lENblIWrJ+wrU4H/pLZnLKhXNKA?=
 =?us-ascii?Q?bFvlmPI0J5I/wQETzBiepqRaD5FfDxVVrDBkVbEGpu31LzMMrSShImAVfrJz?=
 =?us-ascii?Q?B1ZEhpiduE/iyyYVfAbXVmY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF7A88A980A.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3MNuA8P+KtkzWJOWsI6v0PkiYaeU4hUZ5RvFdb7JrS83+TjgktnSAg+J2SiV?=
 =?us-ascii?Q?RSGc6OUJZIgImjWmMg7vlSJm159SD8DzhqVdEEJgc6G+sK0mPg8IEuAn4scY?=
 =?us-ascii?Q?OaP1Wc6PXNW1wDdFK5Z2w1zmFHepoRqdEYmxSbNgt+oFWmXUVDyM+tmrLs6Y?=
 =?us-ascii?Q?qHvy4Wgid8wQY52bxdA7c11IYk0WtesGk4lE2peN2vjxv6KFOfh/vJf6zLS3?=
 =?us-ascii?Q?PuBrtZFEV7BwYoZOopEjDF5ZrrQONkgLA8ioQ7fO8z6UdJ2D6wJ6F4jBbu9Q?=
 =?us-ascii?Q?rRY2taO43PpWkfjyalSOCDvc5vBvLT76r89Wz0ZCvAMGjFXZJtlY9MSpA4Gn?=
 =?us-ascii?Q?fR+ocfIVNYx1uBY36Jx3yU2DWi9IIrpWfGWFaqPqAPVouUgKBnQveDsgYyK9?=
 =?us-ascii?Q?q0yXKhF2liOYxuBX8Tta2Xn/A+siM8pUOIB3jhEG2OcVK/+xdmeLNoMLMPN7?=
 =?us-ascii?Q?TOQTlikT85ldr4pGxljKo+aagw5i1pBfGQCt7AfwwWMwT0frf7wmYo7qm9+7?=
 =?us-ascii?Q?PhVGqfrCnfCM8TFiVBLjfrlX8iDzJ0je9qksNHF63hkOqtsPYv8mpvVC9gCH?=
 =?us-ascii?Q?6logHkCNn1mmKYhByta/TBULInyyrdugz25iFxsj8sHjnoQq+z+Y6yNIn44y?=
 =?us-ascii?Q?E4/myt3zcvlw8zTM5/j4LSteUuHdXp/9D1cRpufkNtr14T09t1gPbBFCfoWq?=
 =?us-ascii?Q?qqqbx24vhwm3oTzmJo86F5V6JZ1GjQ+qVTU3YoaS2IBgTpS6Ns/o7+6+i2Go?=
 =?us-ascii?Q?NOI6Qs0Vjet2KYkSUN10kPeuyY8PXNK5rxANPrhMwCJOpsimGuCMaIJz8DFK?=
 =?us-ascii?Q?YqV6M29a3W9qTVQ3+Oa9F+WvXhMfmWk3iJDyYWLbaildAKmKk/AuTjNPnJU2?=
 =?us-ascii?Q?BcRQgxkIEp87DQrIU6mPQBch3sPsBmWQOs0XTwErXDtIBvUs06Q2WMr58cIj?=
 =?us-ascii?Q?r5dweMbUQmKqYJZmG/QcDS7bzaszBh+QdOCXw5BK/qrNerpvyZhabxOZxNFY?=
 =?us-ascii?Q?ziwEQg7TYHMiuperwCTyu99i5ErzwPMQxDf+7lwS9SBbFQrkkD2b19JYzKGa?=
 =?us-ascii?Q?vZQVwowJBUddWD0hXWKX/sOD3j0G0V/sMxQ3pdRCLR4jKLNeQ538lsFeO16z?=
 =?us-ascii?Q?aCO/oBXwlqHcjINeYfLrOthp68piYE5qHqfwhX4NxkFoQeUjqioi70BCgTI1?=
 =?us-ascii?Q?3zAoWt6ICB/HsLNDJGL2EOrtkGQh0tPSEPncZo3T+wOC+Pr/ssP5FohytiWa?=
 =?us-ascii?Q?sqtyvBOtGA6+swTL6yhm78DD1hs6zXLZMiC0g1qK6dTCgg2uQB1fpVUeEg6X?=
 =?us-ascii?Q?pnEPYLunCKjViDfBnRjDg/OIWTc9UDXXVvky8aTd28LQrtZRZaPID8L3bTNg?=
 =?us-ascii?Q?OefnBste6QamtyUeMBRyDdfJHCVbrXJtNMgkONqKdiIOMP7pnr38FoeeAzBp?=
 =?us-ascii?Q?ojJ4QKwuQ36IbQ/K3YkhQCl850iVZqao5T3QU5sU3CXTGCG+eMLBK46GnTUs?=
 =?us-ascii?Q?LLxHDWC4DUVP1Dws9jir7JjrKle4mDGk1/TH65ihr+3HjJLFjnRM9wxxgdiG?=
 =?us-ascii?Q?ucvA3fg05S7AuXXE69s4xfG52DYkFQO7WeXRAC0zkRYH6PDZlepBDltQ+R0C?=
 =?us-ascii?Q?xnwdt0i+6U7S5nV80TTiY3CHdvid1BKetcMkBI3YOGtJxoUnwTpuNotKBD04?=
 =?us-ascii?Q?HEjFLALcCeo469K8TUkoAMIFkwkY+1ehgEQOf6kVZJZ1qfGK5aupgfkrUdm9?=
 =?us-ascii?Q?gjizCPzQBA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF7A88A980A.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bec2b52d-7dbe-45f0-da85-08de602807d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 17:50:17.8998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mYBFwwQIDBP0HvqGGQ7jzzxfQIUKqmIMVYL8nn18RnPX9HYDk7STYd/Eib14ifP1PHOCCW2jwR9TTIQ6vjjH5gJ5lQzoYrzOJbHq9jma/wk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769795425; x=1801331425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cUn9xs6MSClymVNH5Tq1eyXT7Z4c6GhFAZ79iAkZR/w=;
 b=XMSellHnXRHcuxBr8kD1x85xXR9fvemF5J/hcCBYGbQCXclOUOvhMhEd
 WSdCMlY83VRMxqRWOXSErmnw0rIAnq0srEOJYvJQ3rEefhoghuFHusPMs
 Aj/VcPgrC36qWuPkWDE9JIpmQVurasSWR7lN7r1nPXr2ZIrMPqdJp4dty
 RedLIzhs1oHjH29pY5fWv6d/PxXE/oJJ6GfiHmwPcKDsS3g4tWVxzIING
 x1yy1nG6DYBHEpLrzPL/Eh1L8ReNQ0FNeMPJio0jno9CQwyQT3J66Sx+v
 oR5Ua2xJUFo/Q9O2bY3rW/DZNR2wA9ugFXJ6EaZCjtwy0j5v2Kw/f+Ox4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XMSellHn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/9] dpll: Allow
 associating dpll pin with a firmware node
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:vadim.fedorenko@linux.dev,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:arkadiusz.kubalewski@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:jonathan.lemon@gmail.com,m:leon@kernel.org,m:mbloch@nvidia.com,m:pabeni@redhat.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,resnulli.us,gmail.com,nvidia.com,redhat.com,microchip.com,lists.osuosl.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: C75CCBD72F
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Ivan Vecera
> Sent: Friday, January 30, 2026 5:54 PM
> To: netdev@vger.kernel.org
> Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; David S.
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Jiri Pirko <jiri@resnulli.us>;
> Jonathan Lemon <jonathan.lemon@gmail.com>; Leon Romanovsky
> <leon@kernel.org>; Mark Bloch <mbloch@nvidia.com>; Paolo Abeni
> <pabeni@redhat.com>; Prathosh Satish <Prathosh.Satish@microchip.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Richard Cochran
> <richardcochran@gmail.com>; Saeed Mahameed <saeedm@nvidia.com>; Tariq
> Toukan <tariqt@nvidia.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org; linux-rdma@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 1/9] dpll: Allow
> associating dpll pin with a firmware node
>=20
> Extend the DPLL core to support associating a DPLL pin with a firmware
> node. This association is required to allow other subsystems (such as
> network drivers) to locate and request specific DPLL pins defined in
> the Device Tree or ACPI.
>=20
> * Add a .fwnode field to the struct dpll_pin
> * Introduce dpll_pin_fwnode_set() helper to allow the provider driver
>   to associate a pin with a fwnode after the pin has been allocated
> * Introduce fwnode_dpll_pin_find() helper to allow consumers to search
>   for a registered DPLL pin using its associated fwnode handle
> * Ensure the fwnode reference is properly released in dpll_pin_put()
>=20
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/dpll/dpll_core.c | 49
> ++++++++++++++++++++++++++++++++++++++++
>  drivers/dpll/dpll_core.h |  2 ++
>  include/linux/dpll.h     | 11 +++++++++
>  3 files changed, 62 insertions(+)
>=20
> diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c index
> 8879a72351561..55f3ff50a8709 100644
> --- a/drivers/dpll/dpll_core.c
> +++ b/drivers/dpll/dpll_core.c
> @@ -10,6 +10,7 @@
>=20
>  #include <linux/device.h>
>  #include <linux/err.h>
> +#include <linux/property.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
>=20
> @@ -595,12 +596,60 @@ void dpll_pin_put(struct dpll_pin *pin)
>  		xa_destroy(&pin->parent_refs);
>  		xa_destroy(&pin->ref_sync_pins);
>  		dpll_pin_prop_free(&pin->prop);
> +		fwnode_handle_put(pin->fwnode);
>  		kfree_rcu(pin, rcu);
>  	}
>  	mutex_unlock(&dpll_lock);
>  }
>  EXPORT_SYMBOL_GPL(dpll_pin_put);
>=20
> +/**
> + * dpll_pin_fwnode_set - set dpll pin firmware node reference
> + * @pin: pointer to a dpll pin
> + * @fwnode: firmware node handle
> + *
> + * Set firmware node handle for the given dpll pin.
> + */
> +void dpll_pin_fwnode_set(struct dpll_pin *pin, struct fwnode_handle
> +*fwnode) {
> +	mutex_lock(&dpll_lock);
> +	fwnode_handle_put(pin->fwnode); /* Drop fwnode previously set
> */
> +	pin->fwnode =3D fwnode_handle_get(fwnode);
> +	mutex_unlock(&dpll_lock);
> +}
> +EXPORT_SYMBOL_GPL(dpll_pin_fwnode_set);
> +
> +/**
> + * fwnode_dpll_pin_find - find dpll pin by firmware node reference
> + * @fwnode: reference to firmware node
> + *
> + * Get existing object of a pin that is associated with given
> firmware
> +node
> + * reference.
> + *
> + * Context: Acquires a lock (dpll_lock)
> + * Return:
> + * * valid dpll_pin struct pointer if succeeded
> + * * ERR_PTR(X) - error
> + */
> +struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode) {
> +	struct dpll_pin *pin, *ret =3D NULL;
> +	unsigned long index;
> +
> +	mutex_lock(&dpll_lock);
> +	xa_for_each(&dpll_pin_xa, index, pin) {
> +		if (pin->fwnode =3D=3D fwnode) {
> +			ret =3D pin;
> +			refcount_inc(&ret->refcount);
> +			break;
> +		}
> +	}
> +	mutex_unlock(&dpll_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(fwnode_dpll_pin_find);
> +
>  static int
>  __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>  		    const struct dpll_pin_ops *ops, void *priv, void
> *cookie) diff --git a/drivers/dpll/dpll_core.h
> b/drivers/dpll/dpll_core.h index 8ce969bbeb64e..d3e17ff0ecef0 100644
> --- a/drivers/dpll/dpll_core.h
> +++ b/drivers/dpll/dpll_core.h
> @@ -42,6 +42,7 @@ struct dpll_device {
>   * @pin_idx:		index of a pin given by dev driver
>   * @clock_id:		clock_id of creator
>   * @module:		module of creator
> + * @fwnode:		optional reference to firmware node
>   * @dpll_refs:		hold referencees to dplls pin was
> registered with
>   * @parent_refs:	hold references to parent pins pin was registered
> with
>   * @ref_sync_pins:	hold references to pins for Reference SYNC
> feature
> @@ -54,6 +55,7 @@ struct dpll_pin {
>  	u32 pin_idx;
>  	u64 clock_id;
>  	struct module *module;
> +	struct fwnode_handle *fwnode;
>  	struct xarray dpll_refs;
>  	struct xarray parent_refs;
>  	struct xarray ref_sync_pins;
> diff --git a/include/linux/dpll.h b/include/linux/dpll.h index
> c6d0248fa5273..f2e8660e90cdf 100644
> --- a/include/linux/dpll.h
> +++ b/include/linux/dpll.h
> @@ -16,6 +16,7 @@
>  struct dpll_device;
>  struct dpll_pin;
>  struct dpll_pin_esync;
> +struct fwnode_handle;
>=20
>  struct dpll_device_ops {
>  	int (*mode_get)(const struct dpll_device *dpll, void
> *dpll_priv, @@ -178,6 +179,8 @@ void dpll_netdev_pin_clear(struct
> net_device *dev);  size_t dpll_netdev_pin_handle_size(const struct
> net_device *dev);  int dpll_netdev_add_pin_handle(struct sk_buff *msg,
>  			       const struct net_device *dev);
> +
> +struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode);
>  #else
>  static inline void
>  dpll_netdev_pin_set(struct net_device *dev, struct dpll_pin
> *dpll_pin) { } @@ -193,6 +196,12 @@ dpll_netdev_add_pin_handle(struct
> sk_buff *msg, const struct net_device *dev)  {
>  	return 0;
>  }
> +
> +static inline struct dpll_pin *
> +fwnode_dpll_pin_find(struct fwnode_handle *fwnode) {
> +	return NULL;
> +}
>  #endif
>=20
>  struct dpll_device *
> @@ -218,6 +227,8 @@ void dpll_pin_unregister(struct dpll_device *dpll,
> struct dpll_pin *pin,
>=20
>  void dpll_pin_put(struct dpll_pin *pin);
>=20
> +void dpll_pin_fwnode_set(struct dpll_pin *pin, struct fwnode_handle
> +*fwnode);
> +
>  int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin
> *pin,
>  			     const struct dpll_pin_ops *ops, void *priv);
>=20
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

