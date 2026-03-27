Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPmBM8c4xmm7HgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:59:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B21B0340B0C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C65B83C3B;
	Fri, 27 Mar 2026 07:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dm_i-T4bc1HM; Fri, 27 Mar 2026 07:59:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E28383C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774598340;
	bh=zp8v65k1X+Gf5MrKB9G+rMBV2P69KJXYLZT9P2wQ07s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0+0e+t31lpKwIMRcr8uwLFcqbdKXwTAlrnkaWfa1V03pojBNQf0bZ0hoCraoaTdvg
	 ed2M8/lO1s1eooc5fHqQ/c1rcYGCmx9IYEohGdeGCQRUtganp3FP/TQz3s6sZYjhDH
	 cjwCVItSjdNoy6rBXWe7pLkovlaqdf77hLiinNuFSXeyN2MijqGyrcPSM+UjIa5ZrT
	 Qo/vDGTdubM11EaAA2AIZSU7gWGVH3Z+vahpeBoKSR4pDzG/6riIIWQIZTp9zaUdFd
	 hdIKmYhoTDHknASIpbsQhQ49/I0rpdwzBbomhrF08XEbPuIsudMZTthDTJvuBICWkq
	 qqoc6HrGSG1UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E28383C30;
	Fri, 27 Mar 2026 07:59:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 411D4249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32E3C415DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:58:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5KazTjm4HjHq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:58:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6ACD7415DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6ACD7415DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6ACD7415DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:58:58 +0000 (UTC)
X-CSE-ConnectionGUID: PzGTav+UTIC3e/wYs6kJmw==
X-CSE-MsgGUID: jHZ8QIvKTxi0ePc+Gqb3Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75571143"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75571143"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:58:57 -0700
X-CSE-ConnectionGUID: JqLZpZkJQhiJLL3F8CUqNw==
X-CSE-MsgGUID: Q0KsTZlnQZON0yPAaRodeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="225171214"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:58:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 00:58:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 00:58:54 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 00:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QAId7AJCGmqk5FlutmJqCTBSpfTJlFHG+Ui8qme5DUBO0Tc/E6SHQHoi+0QVrOSGtzmOOIzebXZxIaJals46Jix0MC0MhzECyIIaA0m5adceqtdjTCGjysawntsM4dDPQHWW/2k6rJSHFk+mfv2lysZ9bYpB646cSX4ne5vOq8iR3SInqx6UM7b0ZVr++1xG9jpH22+syGUqx+RVXuP1avKwIofIvHphCJy/k2T5am67Zv6trirVFqAVoe8Ex8CJlwklW+6ljA7dioJd9l5s3YK0mHlPMQ06KQBGCaJEYAUTsu09+8Iu8JYY79GmI7elaM/JbDHJ3RcG5VXulMa0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zp8v65k1X+Gf5MrKB9G+rMBV2P69KJXYLZT9P2wQ07s=;
 b=DSKQMcVd/uVfa56koPVJA8wDPRmfnz+dX8VzS3ygQqmHOsHpxe+qmP6DvscXi11/FrqwnwW0k8Jf0M0Dk8WQWiYTh8qnFMH0t8BHd6Fx1mhn3W4ReBpepKcReuOcJvfzjbTRhZEhwjQF/Cd34k8eHpDdxo2dmWfiOTBU2eDPhRJXp7YIU+7RF3lzSnWxWXrvc+0dgpczgIPASLcbztWxR2FTtgSln9hi7Enxv7lm77BiSm3OFO+WXaDyq8pgfOb3rWfn0Pd1V7n/bfQSEL8iDYBa/BEN7lugFZwIUZ33syczJ8hO8SEBCvt+od7WiPrfsAsCpwKEFZJA3UDM+Q/rrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7762.namprd11.prod.outlook.com (2603:10b6:610:151::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.6; Fri, 27 Mar
 2026 07:58:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 27 Mar 2026
 07:58:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
Thread-Index: AQHcvT5QH1j+NfkwA0KuPUS5fZwNX7XCBHmg
Date: Fri, 27 Mar 2026 07:58:45 +0000
Message-ID: <IA3PR11MB8986EF991FBC8C0D78B6B5EAE557A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
 <20260326162832.3135857-8-grzegorz.nitka@intel.com>
In-Reply-To: <20260326162832.3135857-8-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7762:EE_
x-ms-office365-filtering-correlation-id: 8c905838-4eec-4977-93b6-08de8bd6ab8d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: Qj2RqnKsSDxljBT1EM7BTV/CpyS8yBTr5qzscIU0/w7Ikzvq8+6xcaOoxMCmljnnNSkuIFzdx7kshvasQ8KFYdPSAt7FluQq/x2WPra5dVybtR2fPEyUaYWBaZ7fXlAA1Zp1qBEFNwskIWA7rlceQc7+LXPpXUxwHmM6A0q6PjVT6mVN5InXkE7OBT/izFmhfyzMDXujUUjirxnkcQVLI6YvY77m2KyaEdSj14eiHzP2U4b/hKiGul1BU22FE6EyfRoJibI/muIrQrpnjTmqO+l20n9CdyqHqvbT42ersHXnELQMJL7EWUWR3Tg8nuVKphK880z6vt/2ZJiFQrYRCDDCQrcKgEE4k8UZ6jv/sy3kPK0q5fEM0vtKhjPVzwD3dg2cMEYaw94X73v6Pxh9eJm6wjKfa+n6uavXTXj1mSMFIjqVZoKT2YbDPL6w9nXYgq+axLrCg5mdnk6wePLwuDCb5/gvweiB5oCOjin6Nvn+/c0TgzxjDV5a0uyDryY8KwAIUjw6aa8qtYyUHOfT3vMVkdiIn3yepnsBNu+aUGBX40iUffbBf5BZXukWroV45wKSoKE/ZLgdoW7NXGTIgOwEuCYiBWzDDSQ33LxRDC/F15KCxczjHdhpYiH1rA96h28qTLMkXLlhWC3twnOL/ykDlBNU2RZ3329yX4tDSPE6gS8HHfjP1M7yTgNNUvQCI78LGt6uMTqGzXj8L8WIlCMrHHSI7+BzOVRQ9+msG9tRwzAn+3LIsZOMFIHugbzw7+e7gZEkFRs2ndkELsSif1BzFCE/gVQT/FlKSaE+Sw4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?El+s9QhhHZyFng+vaF7+Q4c0Hh0gAnEIN92xjgjII95VZcpwy6+HiHiKF/Xh?=
 =?us-ascii?Q?Puw75pjljQKK6+MIQ72PiMl5Gwc5oRfzuWQgwrr4Y8zq/Ec1FOYvXTKc55KQ?=
 =?us-ascii?Q?S0fs6jqRG/pf4NzgYiNyk++oAByPHL2oVEkmCja2PQPv+J1639j971LxNwpo?=
 =?us-ascii?Q?A4RIvdUrR1hjdK34nWjkNJfz1+VmEHJEkb7KuoqOa6C2QOIyl+GMDEJpVi19?=
 =?us-ascii?Q?fZPQI4HozxwaB9A05fpJBgeNx7rNZ+OJYAh1nCkkfBU+s6ElspQGmraRp9fH?=
 =?us-ascii?Q?6A64sJNYYhu0RX+XEx5Z9qxp8QNdJVfsRNvrQ0nIIrLR3VfC3ibycqUZ9QfZ?=
 =?us-ascii?Q?z3jq/oYCKWKY6V5Gc8og8BB6yghWEjGkbqaOLslXCTRmJrMEEV6nuV+Rvmpx?=
 =?us-ascii?Q?pGBkEbYGnLU3/eOV3MYc5e6KaDpiHBxXYe3qPKKIs9xyvUfa+7CqZ+puDBMn?=
 =?us-ascii?Q?RFFf7pYKOZdC+JaDv3wm2AEs1DZW1pFEvSrz28MCcLO5ecYei27axT3SYGbA?=
 =?us-ascii?Q?4BTyRo8djFHPhJD5hNFNq9535OELOHG3gO1JmBLRtcVrIXDtrGdXYU24oGTR?=
 =?us-ascii?Q?m2mf3eGnMAuAgzhPdekpN6htO1F2d5Ve/9Dov8LZLMnglIDLl1RrF8VdaSZx?=
 =?us-ascii?Q?sZ0zuCh/LFFJnTK1IlKgnXQ2EN4ldiLCNmH3LrCWjUW7S+g7t8W7A0k8r7nF?=
 =?us-ascii?Q?cneKVoI0yBqiZwh6l0R/bUmlpMU2+qx5k8DJQfjt7+RoP1r0yfBzU63yCCnm?=
 =?us-ascii?Q?TsFB7RhMsEPUb+GaC1ezVCGcZozCvU1H6Xg+FlCzJQgQp7ggAak91Zv5v+a0?=
 =?us-ascii?Q?uzejRNprz2DQXmv1o2jNCaasd5V+N+BxwyZhMfalKnLAk0OjZNfA+o5nZimO?=
 =?us-ascii?Q?jq3vEe3VbgI3GE+OUA0IjYGMJWpAGYKOhxuwMHWr6J2/SCXfic8eAMoEoAek?=
 =?us-ascii?Q?mG9gysnkuy97O1g5XsqzKiWmi+GKfYHECHk4IgadUrfs4w5/TEK094Vy/eIG?=
 =?us-ascii?Q?Qa5T8r+0EtjLCOPUlOFTWZ6nYzcYYPAsfpdx1RBUkIGfQtX2m8/UrZLdaFNE?=
 =?us-ascii?Q?l5OobwIv/TSwrByiZ9LsGtgNbZCip/ed5pAKcy+Z8neDWt6wNBCW773bVPBe?=
 =?us-ascii?Q?Y1bK6dRJaXwsaOwU7mcsK84ZZZyB3gmMWD7QTuWqm1nEOaqOVJ2/ZUueniQD?=
 =?us-ascii?Q?rsXzo8tuvjnQTD3ZYvxnTp2oWNqg8hL5DqVZKbIrbv5iRLx/3x3mCA1b1ERI?=
 =?us-ascii?Q?ZxTpwQFXDQ3zWlJZjafijhYMeODF1/4oXBoZ4qWJBvaVfDHmn94IbTjV4Ddu?=
 =?us-ascii?Q?koMQ3VfBVYGPGEtpbTlVn3k8FhzYGfxjs9CWLHWGsukY9w3CcxNzg6t6ezVP?=
 =?us-ascii?Q?N/tD/duit953N+1WzorvVGqBw8uQ6sPCcyAFGj82m0DXd5UIwegsIoM5QDLq?=
 =?us-ascii?Q?ziIcjDKjwjGCQpgD59l+bWeXdfp3RokGxW45mYHvU7dqXyaiPA8lDj3L7WI9?=
 =?us-ascii?Q?tHRpGjRe8BiytEszOslR1uZ/zLhlqnyHc5fJKVLtj06qC/pH9QERohMaZMWt?=
 =?us-ascii?Q?5UXkmTuvIPGSEDpifcs+cZ3vXYQaCfTR3aGtdXp8nD1y+xULwkdiKkPPpeZP?=
 =?us-ascii?Q?OQCFL96cBqaoknEhAgK0ALZVcgA0gE7tpT1ot55J8CJTpfa8xW90Ad8NfrcL?=
 =?us-ascii?Q?8juU5gcFGtlDLW++RRUHkr75JPR4OB449KnBtjhqZpM5JiNvit86+L4G9IFZ?=
 =?us-ascii?Q?faZq1i3QBPLP4rlrWjl5lBWYSbVHWts=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZDi93aFFOceeyyMyoz+zT2RRGEwgnP7nNpkrlO/INarP9rrFXUbNSbEDE6+gL7lB2uQ2HkE38Q/GSBCxgK3tC3mkkw1t3BtURShCfJNWj7Q4HLYnDbTNtwAwZFcXa3jwSdlTk+qQqENAsjIJa/m6TrxKgRF0T1Qy/GZm54YKAcyaxtXfhzFy8GYvpX/4QG1LLzE44jzV/ZJ0vMRHiD+uF5I8aBWE3QPCXrXAbUmDEMWg7NM4vwVxXuRFyV3xYWYArV9chzjS2u8SpSw9iPqNmxPg510jmvHkhPLs6hGdpCr3bbzuf+W7l0w/dRtI+2zl4M0fFyniCU2yZOXM6/XeIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c905838-4eec-4977-93b6-08de8bd6ab8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 07:58:45.0382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oz2nAi1VzCSgYAtqG+6VdwWz1M/+Oqf48md+fJJMPZWa17hqZ7X9vHUXsg4IxQB4Zac9zBg8Hd9EVEZNISkscbhH+T0V8oj52aU6WHiob40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7762
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774598338; x=1806134338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/qdK4v7nooFJ1iCPegNpjO+aejFvwDLI7xkhHAyfLOg=;
 b=j4uJEheZLSvzNdpTEDWfT3ehKZhqDjZMTrcsYMKf3vsq953wLxmvcxSp
 T8Oda/NTipfS5LDvRywjuk250ueNLVMDHvvFgNjhIW2ERq21ChqgCaERK
 4K6bE3xY6A01AyGdOhrPoL32A24bysuC6OX70jxdGSDTjksQY1dFHRtxA
 UQ3t9+4AtZb562F+VOR467odUVuKn4ZP2WLFHsKMbKLGHv74rY0qxN9K+
 JB/NwXVRyEO8FDz+msX7dSmbG1b4ugIrngdl/wMN3KqE7v8OFspvfLaJz
 7rQTgMcqYnRuHq8GVcwTSBBl3uAOjQlh2VztanMwUR38ndBh+7AlHs+P5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j4uJEheZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B21B0340B0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, March 26, 2026 5:29 PM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v4 net-next 7/8] ice: add Tx
> reference clock index handling to AN restart command
>=20
> Extend the Restart Auto-Negotiation (AN) AdminQ command with a new
> parameter allowing software to specify the Tx reference clock index to
> be used during link restart.
>=20
> This patch:
>  - adds REFCLK field definitions to ice_aqc_restart_an
>  - updates ice_aq_set_link_restart_an() to take a new refclk parameter
>    and properly encode it into the command
>  - keeps legacy behavior by passing REFCLK_NOCHANGE where appropriate
>=20
> This prepares the driver for configurations requiring dynamic
> selection of the Tx reference clock as part of the AN flow.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 5 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.h     | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c        | 3 ++-
>  4 files changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c66f3e7..a24a0613d887 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1169,6 +1169,8 @@ struct ice_aqc_restart_an {
>  	u8 cmd_flags;
>  #define ICE_AQC_RESTART_AN_LINK_RESTART	BIT(1)
>  #define ICE_AQC_RESTART_AN_LINK_ENABLE	BIT(2)
> +#define ICE_AQC_RESTART_AN_REFCLK_M	GENMASK(4, 3)
> +#define ICE_AQC_RESTART_AN_REFCLK_NOCHANGE 0
>  	u8 reserved2[13];
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d0..de88aec9137c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4126,12 +4126,13 @@ int ice_get_link_status(struct ice_port_info
> *pi, bool *link_up)
>   * @pi: pointer to the port information structure
>   * @ena_link: if true: enable link, if false: disable link
>   * @cd: pointer to command details structure or NULL
> + * @refclk: the new TX reference clock, 0 if no change
>   *
>   * Sets up the link and restarts the Auto-Negotiation over the link.
>   */
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd)
> +			   struct ice_sq_cd *cd,  u8 refclk)
>  {
>  	struct ice_aqc_restart_an *cmd;
>  	struct libie_aq_desc desc;
> @@ -4147,6 +4148,8 @@ ice_aq_set_link_restart_an(struct ice_port_info
> *pi, bool ena_link,
>  	else
>  		cmd->cmd_flags &=3D ~ICE_AQC_RESTART_AN_LINK_ENABLE;
>=20
> +	cmd->cmd_flags |=3D FIELD_PREP(ICE_AQC_RESTART_AN_REFCLK_M,
> refclk);
> +
>  	return ice_aq_send_cmd(pi->hw, &desc, NULL, 0, cd);  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> b/drivers/net/ethernet/intel/ice/ice_common.h
> index e700ac0dc347..9f5344212195 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -215,7 +215,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct
> ice_aqc_set_phy_cfg_data *cfg,
>  		enum ice_fec_mode fec);
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd);
> +			   struct ice_sq_cd *cd, u8 refclk);
>  int
>  ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct
> ice_sq_cd *cd);  int diff --git
> a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 689c6025ea82..c2c7f186bcc7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3769,7 +3769,8 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
>  	if (vsi->type !=3D ICE_VSI_PF)
>  		return -EINVAL;
>=20
> -	status =3D ice_aq_set_link_restart_an(pi, ena, NULL);
> +	status =3D ice_aq_set_link_restart_an(pi, ena, NULL,
> +
> ICE_AQC_RESTART_AN_REFCLK_NOCHANGE);
>=20
>  	/* if link is owned by manageability, FW will return
> LIBIE_AQ_RC_EMODE.
>  	 * this is not a fatal error, so print a warning message and
> return
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

