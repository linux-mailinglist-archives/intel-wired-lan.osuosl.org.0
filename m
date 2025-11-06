Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 122F0C3BE80
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 15:57:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E65A842E1;
	Thu,  6 Nov 2025 14:57:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKCtd_5ywIgJ; Thu,  6 Nov 2025 14:57:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 004C7842D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762441062;
	bh=8QfDjFUXMFxMOE8BMn1EPXWXfhm0yFEWfKg80WkU72g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cqniu7hmo/nJGi2tEpw7uMVLG3PFEv43nS0KcRa7SbbBHgGFt0PprJ0w96mkLalmi
	 YBjJI+BiPB67Eny39pwmEbTXc+uuZw7UJdX4hD1ZWz2PoFvVY1aq6Z0zZ+Z1jqZPnY
	 H0E94YrStFVV6SN4i0iJwFomX3EwMEhFKf2TPiMIfSz5xuJfatRwSGWNfMBzgzbNET
	 lQOA9LnxtQEtDXcrAHSSovebQBXkakHkbWEZSy2345xEgG9oBK0QpSDX3/uKly9kcS
	 6iNC4UoQeHV7UWwhtVzTtRMccbYnpRQGOrUgzszXjJ7f22faARuAYlydgOJjEpZWVV
	 8R5OndBIPOKww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 004C7842D8;
	Thu,  6 Nov 2025 14:57:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 150D4A64
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 066A141416
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:57:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PA48TLiN_TsW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 14:57:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 318DF413ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 318DF413ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 318DF413ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:57:39 +0000 (UTC)
X-CSE-ConnectionGUID: QWYLn62pTXSiebr2tcyXrg==
X-CSE-MsgGUID: k9/KBknwQFyvlhduQ++/9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64276160"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64276160"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:57:38 -0800
X-CSE-ConnectionGUID: nhT9bIN6RTeRkinaJ4KLiw==
X-CSE-MsgGUID: ddnD7DHJTPexEZa3ljNk1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188493673"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:57:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 06:57:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 06:57:37 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 06:57:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CdQek6HnDXMciqqNuUHOyapxThxPDpJ/voWnl6I7EtSGxtRNcp6VGTK/xPOYL3X9w7WbpzgqK/GuxGXNN+xvH3iC87CK7x7eCumQf+nP+iuLQqwq2718z4a0WwbNRbbF+C8ADvo1ob8oJ5NWVzx1YTzsJyDUuHpjQi1v0K8dn31sIfSAPJtKlZlrdQbzt1atNn90OGTYP6WWc9ecywZYRx9oXCoqckTpSL2BtS6S6iXg86CaGnFnzwckVZjNypDY0nT9ELSj79johyCokpHnEF8EbItfrSKTccN1iGnmBYQHJ/EPnPlJugT9JbTvv7dPaQPkxPmjg62Dlf2pMxRgxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QfDjFUXMFxMOE8BMn1EPXWXfhm0yFEWfKg80WkU72g=;
 b=Rw6PfjGIn+4XfKTO3Au+62lECrnpVEjpSCvONDz+yKK1nCYfTQlGpUGpkcq9sz+Kh3ZQ/3YBppLoCCYyift3eNqZ+ARh8dXOFELvzvB0RgGbglxC0YoS946jfJ2VBrwB6zAAsOPM4vaeIZo6DOE3ftxQ3B7WTiaVaO8WRJ27xSLU5nXGKkOV4wtKvRz/jK8qjMvW4w8gpgV2k6Y7osauaVtvos4qzGv4LWKJoFFC7EG7Ik3e/nCwFX1TCycNRkiafdfE4R8+cg7NTZqvlvXt1IEao80EM8GQqWUEJjH0PLDZ5dhIqZx4v17w9AvsCIDtJhFYxLUg4MMdu06UwvYXGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA4PR11MB9156.namprd11.prod.outlook.com (2603:10b6:208:562::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 14:57:35 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 14:57:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v2 3/9] ice: use cacheline groups for
 ice_tx_ring structure
Thread-Index: AQHcTpgw5OKUOKKZPUWfo1GYhySPo7TlvhIA
Date: Thu, 6 Nov 2025 14:57:35 +0000
Message-ID: <IA3PR11MB89866EC061D27E161769CB63E5C2A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
 <20251105-jk-refactor-queue-stats-v2-3-8652557f9572@intel.com>
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-3-8652557f9572@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA4PR11MB9156:EE_
x-ms-office365-filtering-correlation-id: 15668f92-fd4a-493a-42fd-08de1d44d267
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ODdiblM3ZURpTE00RTMzdGQ5OUM3QlJ5eUc0Z3ZzOTM2a1lOMkxYcENtZVVW?=
 =?utf-8?B?T2ZDYjA5ZHZiZUpleFZ5aTdIV0FwVEhWY0dSSEpVVFZKelRCc2hNRVNZNXhl?=
 =?utf-8?B?QW8zTGNkYXBzK3lpUThURVRNWDZCeG4rWDA1alpPNEcxQU1UOTdaNFl2NGFE?=
 =?utf-8?B?K2hKa3VYQ29mUXB5LzM5aS80Q2JVVG1Yc1VkeXdRbnpRdWtGUTI2bTZmMURj?=
 =?utf-8?B?R1I5NEt5WnBpcnd3OFpqQ1Erek4vWHVEZXdLd3VESzkvZmV5NjlPY0VNdUUr?=
 =?utf-8?B?UGdzOVBEclVZQXZaaW1XSVFTUmJya0FwOGo1ekFuWnQ4dmpzejhnOERFbXV3?=
 =?utf-8?B?OWJsczQyWEp5bjd3ZHJpUHlwRC8wNW9iOTQzMHc4MmxDbEdDMnRuV0dCRGU1?=
 =?utf-8?B?UWN0aVBiVWpRaWNyT2NudkYvR2V4YXBxdGJKS3FSc01jQ2tvNmxkd0xIVCtD?=
 =?utf-8?B?QkpOclFKM3R4N2hTWEJpU2NodXpTbjJSZ1VNd0ZaQ3BQU0JDTHg1Y3B0ZzVy?=
 =?utf-8?B?WjVKd1FudWNVaTBNM3JqaDBrNng4alN4bWdaODRRMVdjU1BaczJnN3YybjF6?=
 =?utf-8?B?RkNKdGhBdGV6V0M1TlM2eElZdUdMa1RVTnN5a1Njb1ljeS9DZDZoYzBKRmlM?=
 =?utf-8?B?VnJ6UGh1emFjR2E0dUc2ZTIwblk2Z1RFVWZ4b24xOEM1TFBRVjkxampTSS9j?=
 =?utf-8?B?QVg5YTN1aThhS0QxemthTlZURGlhQmgzeTFTcEtnZ2FheVpJRnNuOGx0TDFB?=
 =?utf-8?B?TjFGUWtJQlhTRUgrc29FSFNJUWRReDNjcTV3VHBpTFlFb2V1R2loazBRM2RG?=
 =?utf-8?B?eHF1NlNMVU94cE9wc0JIb2xES1k5NTM4L3NMY0VNR1R6MDVzTEhTN2JYdU5E?=
 =?utf-8?B?djBzNzJOQWE2U3AvOWxOa3pTNTMrdC9vZDJPeTNSbnZjYVhFVTJUaDBIdFJ2?=
 =?utf-8?B?ZHJBNkdoR09iVkpsczkyU0txYjBlM21oalA0QW9Fb0JKRzJWQ1p1ZmdMR25m?=
 =?utf-8?B?bVdma0J5a29IdEhiYkp6VzllbTJDbjQxSzAvN3plTjRSQmpqaVBlMXBDRHZH?=
 =?utf-8?B?d1loUEZqZG5rSGhUOVlNalBEZk4rclJNemdXZUxEbUIwMUl6NFdKa3Z3MFgw?=
 =?utf-8?B?bk9mOU1YREFtMFRjcm1hNkQxSDhIdXp2OEhJYlF1anFJQUt5YjN6cVNiREs2?=
 =?utf-8?B?dzFEdFdFc0IvdVFCM0hCWDQ1dlZzYVJ4TGRMaElJaEltWTd6Q3E2RjczVmtk?=
 =?utf-8?B?ZDlJM2RPankzNmlRQWYwOTVTcjlSYmJ2TCs1bE9UQWhYcG1JRFJlb0hHK0ww?=
 =?utf-8?B?TjhseVJYSHFzZ3RpczBobGdYejYvaDExVFpqVVFPbzRSQXNFRys4a21JelM4?=
 =?utf-8?B?Ry9jQ3RHeElQTk9rcm9vVUR1aENaMURuS1ZJT1J1Vm5oaTI3TWhDNWl5RmVh?=
 =?utf-8?B?Tjh5bmhSM0U5cEVUTGtON3g4SHgzczBPNUxIV1F1MUJPci8wbFNTTCsrYzli?=
 =?utf-8?B?MlVKT21Td1FidWNiajduSUgvcno0elZmdXNwdlNoUUtjUXEvcTJXT2o3U05Q?=
 =?utf-8?B?djhSamkvcHBJcWl1RVh1T3pIalN2bmZXbE9IUjZ2NmloWEdya2g2VWJXa0w2?=
 =?utf-8?B?azFycFVhNTh4RHdaQlR0T1ZEeWVlRk5RU0xFMlAwc2NWcE51WHpDSWVrb0pw?=
 =?utf-8?B?ajQyQ1g0UlRDKzZCV2tDU1pQQXNQeDFpSTVBTm8zblEwaGVpbFRvOGloTHRz?=
 =?utf-8?B?RlBSeTk4Rmdsa0hhMGFRdUJGTUJFaTk3K3llZTFYYkplZWZXaUFRbHpPVzMz?=
 =?utf-8?B?Qm1qQ0JPY1FzMUQ4YSs2d1BCdVJwNkxmVkwxM1ZGNnlGdnhpMkQ3Y0ZtTlpZ?=
 =?utf-8?B?eHI2NzhXZWhhV0Nkd2xTaXFyTXpINWFGbllKc1ZvaDVUM052KzlJM1VnTmQ3?=
 =?utf-8?B?ZTlXY1Jla0RubEM5elRQbE83THJPSlZjRDdyWlhYWk80TDhiT1ljM1lhc2hz?=
 =?utf-8?B?V2lsMW13TVZXcmhOMVJTN2ZEanpNaGFEbWlCVkExaHRkS3BXYXNSbjZ5cTdK?=
 =?utf-8?Q?WAWxTg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2NydGsxeS8yMXdyenQyS3NnZ2p3bXRJRjdYSUNqbXdtZmxkbHlWcWJ6Wjli?=
 =?utf-8?B?UzNMRDJraVRVa1FPN3lPQ0pCSElrSUZPT0dMbnF0a2hXVy9IR0ZlNTZUbnV2?=
 =?utf-8?B?RzByejZKa2d5cnJPbldld0JXVjU5T25EaUM2a0NvbDRlWDV5ZFVkLytLb20x?=
 =?utf-8?B?OUd6NnRkdlVhWmNFWEJRemFYcHhLL3dpeGhyQk9YdUJPdXVmWWljb2hPZGFk?=
 =?utf-8?B?bW5nRWZ2TTdoTG4rZUI3TE04Y0lkc3pXbTQraEl0Ti81WEdRb2xwTzZwNFJo?=
 =?utf-8?B?RjA0c3NhY28zTlcveUFpbFpDK2NRcUtvdHVTOTdZc0pJc3oyYjBoem1HSUJh?=
 =?utf-8?B?eGtYN3lIcFJobUovdHdpY2tBVVlEK0FqSFRFZmMzUWJxWWZDU0hUR2VSZnda?=
 =?utf-8?B?TTgxcURKU0pmVnZXeHE2UmpaNDhBQy80RHNJL05VWnRzTTE5WFlEbGp3dmhu?=
 =?utf-8?B?R0plSEcrcUxtOTZxd2F6eUhReXE1blNwNlRVR0JKOWJ6Zm56WjFEa1FodjRL?=
 =?utf-8?B?RDRXNitEYjVaWkFEVWZsWW4wYUdRV2VTOFJyd1NyZ3NUSG5DME0raW1JTXE2?=
 =?utf-8?B?bkxEWms3UjY2OVZOTWl5djU1UnptTkxCZDRTeENibmJBdkFHN1pxMVJDeG5Y?=
 =?utf-8?B?U1JMTU5qanFCekJKZjk2VWZmODlzYnhzNFE0SDYvcGdxTXNiU0xIdERHTTBo?=
 =?utf-8?B?V2U1SHVRZ1A4eFg5YTI0b1RTT01RMHRmemRmMFhNeEtHYTdpbi9PM1kxOWNX?=
 =?utf-8?B?Q0pLRGRicmx2c2dRU3ZxSnkyM1hOcEF3Z0ZzTStmMXd1NllLbFl4eTVieXJE?=
 =?utf-8?B?UTlaMU1KbGc3eTBXd2hjQmxXaFZpalM1OXY5MmY5eGZEZ29KVEFuU0tpcWxj?=
 =?utf-8?B?YzRubDcwZGd3dVZJdGlPL2xUY2FZd25tZ3BrNno4MzRYc2RKZmdIZ2tPbG5C?=
 =?utf-8?B?WG85WVdPYUczWDQrTnQzU1VRV2QwRnlpMm1UZG45NWtleXBqMHZtZlFQR0Qv?=
 =?utf-8?B?STI5dzRXWTZudHBrNjNlWXlmWCtIZUJncHhEeUFBYmR4RHd5QnQyV3ZsSXhq?=
 =?utf-8?B?Y1pMdkNhYWZyMHRnaWxIeWgvZEdOaFpIQ09vb3FVU2Zkb1o3NU5mRm5Qek5B?=
 =?utf-8?B?aEp4YmRaQkVMNmtCOFlnWmhZeDl6Uyt5aVdUQkU2YkRGR2psM2RFNzJiOWJ0?=
 =?utf-8?B?QzhVRzNyS0ZFVVdZM0hWY0dZcGp1Q09ycTg5bi9wdUxFa2ROTXNuMHVYVmY4?=
 =?utf-8?B?WDhZRjllZm9UVy9ZTGM0Qm9nenVSbk4xUE4zdEFqWTRjUHZRK3A3OTR1NVpR?=
 =?utf-8?B?QzZkdGl2d1ZMT3l2bXBxaFEzanF2TVZlWVRacHgwTjBicS83THA5eXdUbWVq?=
 =?utf-8?B?SkkzdWwzK2tBUGRFYVBQMFdwVW5nL1lFMFpqMmpvaVozVTdkZmVhZWduV2lE?=
 =?utf-8?B?eVNtMU9pUDdEY29uR2dEeFdMbmVISC9FYzJvb0RWYmtabThXaGs1eHEzL2N2?=
 =?utf-8?B?UnFOMEFTSXcvUFhhWTZkQlVhTzEyamFxb3J0WDFKQXpQTEdNVFlpNzFtZk0r?=
 =?utf-8?B?WnpuRWdXYzc3eHhOMDc3bnp2S3hwamkwdFhtNEdHd2RybkZJYzRkU3Q5MkNw?=
 =?utf-8?B?SDlKWjNBS0VkRDFNWmwyMDZkU0pQUVByZTB3WGxEL28yWDYyTkFwQ0RKWU53?=
 =?utf-8?B?bG9rVjRnQ1ViWVQ5UWtkTFQvVjdMUWVqTGNCQzNaakl3Z0RHNXEwUDN5cUtB?=
 =?utf-8?B?bkw0R2dsOFBsdkpHejlvaGlzdFdwcDdtNjBFVjNlT3RObXcrRGRvNFhwYUha?=
 =?utf-8?B?R3NVd2VVL2gwTHFOZUpQY0VIQk80a3pJbk1ySzVpUzA3alFEZWR3RzlFNkJ0?=
 =?utf-8?B?dm5OWC9HQnN1Q3Y2VTh2UmZvVTRMMVAxVEZSWE5rYXhONXE2TlJ1OVhKaEtN?=
 =?utf-8?B?MTZ0Y0xkeDIzL3MvbGtkTXhoaE1aYTRlZnEwdTVYeXNDdkh1NWNlK0N0alFh?=
 =?utf-8?B?T1N6NWQrY2RpODBNQlQzRWNOaXlTcnJudHJtbmZxNjhScmFoWS9ubXVCVW9M?=
 =?utf-8?B?UkdRK25VWjdCL3VyRWE0Ukpuam1QYTR0cDFKcEppaUpYd24ybHRIWG1ubXM1?=
 =?utf-8?B?Z1ZQQmMxOTBtWmJuVXVIditKckRIVmRObGdVdkNaTElQK2xudkVVVm5lWVF5?=
 =?utf-8?B?SEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15668f92-fd4a-493a-42fd-08de1d44d267
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 14:57:35.7533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 36+EFsHvdmbQt6hCd55vPsHHJ8Mi+6dXJLRg25ifJF0K/OmmSZP6pQOd4lSCisPu3FyfYbLTD4Nn3IzKfNUd8dy2G9sHTMRsIdHniAkx10s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762441059; x=1793977059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8QfDjFUXMFxMOE8BMn1EPXWXfhm0yFEWfKg80WkU72g=;
 b=EDnZxEWXvDK9io8AeWHpAP/3KgL8d1kYo7xwq7J8LsPqTFX+RWEoNl7H
 GsocEMdpETWohRua9G7oiDCxxVkW6dMjiVkPN5/E0olNeBOzmOg1u5fA8
 UCcSh5iPeuUPynsQng/QbKwguWNpZBoCC16q4hjsLJ05PmIW45yEkfarG
 vStvQdDvOzNdvHFCbW4DLfCNT/RGr0DX3CUX+tmdm1I1rZyZxsxYkFIX8
 mSnTjD0LKJUzwbuTq2Hgm6DlyRKCMFFjLuUUqmkv3yDRXNVrY2/w1vAol
 pQnVUFE89TABNME1ZXcclpUURCb/8kXReVA7gFC1vtfoNcCBgG5Za8HsI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EDnZxEWX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/9] ice: use cacheline
 groups for ice_tx_ring structure
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIg
NSwgMjAyNSAxMDowNyBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5s
b2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVu
QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCB2MiAzLzldIGljZTogdXNlIGNhY2hl
bGluZSBncm91cHMgZm9yDQo+IGljZV90eF9yaW5nIHN0cnVjdHVyZQ0KPiANCj4gVGhlIGljZSBy
aW5nIHN0cnVjdHVyZSB3YXMgcmVvcmdhbml6ZWQgYnkgY29tbWl0IDY1MTI0YmJmOTgwYyAoImlj
ZToNCj4gUmVvcmdhbml6ZSB0eF9idWYgYW5kIHJpbmcgc3RydWN0cyIpLCBhbmQgbGF0ZXIgc3Bs
aXQgaW50byBhIHNlcGFyYXRlDQo+IGljZV90eF9yaW5nIHN0cnVjdHVyZSBieSBjb21taXQgZTcy
YmJhMjEzNTVkICgiaWNlOiBzcGxpdCBpY2VfcmluZw0KPiBvbnRvIFR4L1J4IHNlcGFyYXRlIHN0
cnVjdHMiKS4NCj4gDQo+IFRoZSBpY2VfdHhfcmluZyBzdHJ1Y3R1cmUgaGFzIGNvbW1lbnRzIGxl
ZnQgb3ZlciBmcm9tIHRoaXMNCj4gcmVvcmdhbml6YXRpb24gYW5kIHNwbGl0IGluZGljYXRpbmcg
d2hpY2ggZmllbGRzIGFyZSBzdXBwb3NlZCB0bw0KPiBiZWxvbmcgdG8gd2hpY2ggY2FjaGVsaW5l
cy4gVW5mb3J0dW5hdGVseSwgdGhlc2UgY29tbWVudHMgYXJlIGFsbW9zdA0KPiBjb21wbGV0ZWx5
IGluY29ycmVjdC4NCj4gDQo+ICAqIENhY2hlbGluZSAxIHNwYW5zIGZyb20gdGhlIHN0YXJ0IG9m
IHRoZSBzdHJ1Y3R1cmUgdG8gdGhlIHZzaQ0KPiBwb2ludGVyLg0KPiAgICBUaGlzIGNhY2hlbGlu
ZSBpcyBjb3JyZWN0LCBhbmQgYXBwZWFycyB0byBiZSB0aGUgb25seSBvbmUgdGhhdCBpcy4NCj4g
DQo+ICAqIENhY2hlbGluZSAyIHNwYW5zIGZyb20gdGhlIERNQSBhZGRyZXNzIGRvd24gdG8gdGhl
IHhwc19zdGF0ZSBmaWVsZC4NCj4gVGhlDQo+ICAgIGNvbW1lbnRzIGluZGljYXRlIGl0IHNob3Vs
ZCBlbmQgYXQgdGhlIHJjdSBoZWFkIGZpZWxkLg0KPiANCj4gICogQ2FjaGVsaW5lIDMgc3BhbnMg
ZnJvbSB0aGUgaWNlX2NoYW5uZWwgcG9pbnRlciB0byB0aGUgZW5kIG9mIHRoZQ0KPiBzdHJ1Y3Qs
DQo+ICAgIGFuZCBjb21wbGV0ZWx5IGNvbnRhaW5zIHdoYXQgaXMgbWFya2VkIGFzIGEgc2VwYXJh
dGUgNHRoIGNhY2hlbGluZS4NCj4gDQo+IFRoZSB1c2Ugb2Ygc3VjaCBjb21tZW50cyB0byBpbmRp
Y2F0ZSBjYWNoZSBsaW5lcyBpcyBlcnJvciBwcm9uZS4gSXQgaXMNCj4gZXh0cmVtZWx5IGxpa2Vs
eSB0aGF0IHRoZSBjb21tZW50cyB3aWxsIGJlY29tZSBvdXQgb2YgZGF0ZSB3aXRoIGZ1dHVyZQ0K
PiByZWZhY3RvcnMuIEluc3RlYWQsIHVzZSBfX2NhY2hlbGluZV9ncm91cF8oYmVnaW58ZW5kKV9h
bGlnbmVkKCkgd2hpY2gNCj4gaXMgbW9yZSBleHBsaWNpdC4gSXQgZ3VhcmFudGVlcyB0aGF0IG1l
bWJlcnMgYmV0d2VlbiB0aGUgY2FjaGVsaW5lDQo+IGdyb3VwcyB3aWxsIGJlIGluIGRpc3RpbmN0
IGNhY2hlIGxpbmVzIHRocm91Z2ggdGhlIHVzZSBvZiBwYWRkaW5nLiBJdA0KPiBhZGRpdGlvbmFs
bHkgZW5hYmxlcyBjb21waWxlIHRpbWUgYXNzZXJ0aW9ucyB0byBoZWxwIHByZXZlbnQgbmV3DQo+
IGZpZWxkcyBmcm9tIGRyYXN0aWNhbGx5IHJlLWFycmFuZ2luZyB0aGUgY2FjaGUgbGluZXMuDQo+
IA0KPiBUaGVyZSBhcmUgdHdvIG1haW4gaXNzdWVzIGlmIHdlIGp1c3QgcmVwbGFjZSB0aGUgZXhp
c3RpbmcgY29tbWVudHMNCj4gd2l0aCBjYWNoZSBsaW5lIGdyb3VwIG1hcmtlcnMuIEZpcnN0LCB0
aGUgc3BpbmxvY2tfdCB0eF9sb2NrIGZpZWxkIGlzDQo+IDI0IGJ5dGVzIG9uIG1vc3Qga2VybmVs
cywgYnV0IGlzIDY0IGJ5dGVzIG9uIENPTkZJR19ERUJVR19MT0NLX0FMTE9DDQo+IGtlcm5lbHMu
DQo+IElkZWFsbHkgd2Ugd2FudCB0byBwbGFjZSB0aGlzIGZpZWxkIGF0IHRoZSBzdGFydCBvZiBh
IGNhY2hlbGluZSBzbw0KPiB0aGF0IG90aGVyIGZpZWxkcyBpbiB0aGUgZ3JvdXAgZG9uJ3QgZ2V0
IHNwbGl0IGFjcm9zcyBzdWNoIGEgZGVidWcNCj4ga2VybmVsLiBXaGlsZSBvcHRpbWl6aW5nIHN1
Y2ggYSBkZWJ1ZyBrZXJuZWwgaXMgbm90IGEgcHJpb3JpdHksIGRvaW5nDQo+IHRoaXMgbWFrZXMg
dGhlIGFzc2VydGlvbnMgYXJvdW5kIHRoZSBjYWNoZWxpbmUgYSBiaXQgZWFzaWVyIHRvDQo+IHVu
ZGVyc3RhbmQuDQo+IA0KPiBSZW1vdmUgdGhlIG91dC1vZi1kYXRlIGNhY2hlbGluZSBjb21tZW50
cywgYW5kIGFkZCBfX2NhY2hlbGluZV9ncm91cA0KPiBhbm5vdGF0aW9ucy4gVGhlc2UgYXJlIHNl
dCB0byBtYXRjaCB0aGUgZXhpc3RpbmcgbGF5b3V0IGluc3RlYWQgb2YNCj4gbWF0Y2hpbmcgdGhl
IG9yaWdpbmFsIGNvbW1lbnRzLiBUaGUgb25seSBjaGFuZ2UgdG8gbGF5b3V0IGlzIHRvIHJlLQ0K
PiBvcmRlciB0aGUgdHhfbG9jayB0byBiZSB0aGUgc3RhcnQgb2YgY2FjaGVsaW5lIDMsIGFuZCBt
b3ZlIHR4cV90ZWlkIHRvDQo+IGF2b2lkIGEgNC1ieXRlIGdhcCBpbiB0aGUgbGF5b3V0Lg0KPiAN
Cj4gSWRlYWxseSwgd2Ugc2hvdWxkIHByb2ZpbGUgdGhlIFR4IGhvdCBwYXRoIGFuZCBmaWd1cmUg
b3V0IHdoaWNoIGZpZWxkcw0KPiBnbyB0b2dldGhlciBhbmQgcmUtYXJyYW5nZSB0aGUgY2FjaGVs
aW5lIGdyb3VwcywgcG9zc2libHkgYWxvbmcNCj4gInJlYWRfbW9zdGx5IiwgInJlYWR3cml0ZSIg
YW5kICJjb2xkIiBncm91cGluZ3Mgc2ltaWxhciB0byB0aGUgaWRwZg0KPiBkcml2ZXIuIFRoaXMg
aGFzIGJlZW4gbGVmdCBhcyBhbiBleGVyY2lzZSBmb3IgYSBsYXRlciBpbXByb3ZlbWVudC4NCj4g
DQo+IEZpbmFsbHksIGFkZCBhbm5vdGF0aW9ucyB3aGljaCBjaGVjayB0aGUgY2FjaGVsaW5lIHNp
emVzLiBGb3INCj4gY2FjaGVsaW5lIDMsIHdlIGVuZm9yY2UgdGhhdCB0eF9sb2NrIGlzIGluIHRo
aXMgY2FjaGVsaW5lIGdyb3VwLCBhbmQNCj4gY2hlY2sgdGhlIHNpemUgYmFzZWQgb24gd2hldGhl
ciBvciBub3QgdGhlIENPTkZJR19ERUJVR19MT0NLX0FMTE9DIGlzDQo+IGVuYWJsZWQuIFNpbWls
YXIgdG8gdGhlIFJ4IGFubm90YXRpb25zLCB0aGVzZSBjaGVjayB0aGF0IHRoZSBzaXplIG9mDQo+
IGVhY2ggY2FjaGVsaW5lIGdyb3VwIChleGNsdWRpbmcgcGFkZGluZykgaXMgbm8gZ3JlYXRlciB0
aGFuIDY0IGJ5dGVzLg0KPiBUaGlzIGlzIHByaW1hcmlseSBpbnRlbmRlZCB0byBwcm9kdWNlIGNv
bXBpbGVyIGZhaWx1cmVzIGlmIGRldmVsb3BlcnMNCj4gYWRkIG9yIHJlLWFycmFuZ2UgZmllbGRz
IHN1Y2ggdGhhdCBjYWNoZWxpbmUgZ3JvdXBzIGV4Y2VlZCB0aGUNCj4gZXhwZWN0ZWQgNjQgYnl0
ZSBzaXplcyBvbiB4ODZfNjQgc3lzdGVtcy4NCj4gQmVjYXVzZSB0aGUgYXNzZXJ0aW9ucyBjaGVj
ayB0aGUgc2l6ZSBleGNsdWRpbmcgYW55IHBhZGRpbmcsIHRoZXkNCj4gc2hvdWxkIGJlaGF2ZSB0
aGUgc2FtZSBldmVuIG9uIHN5c3RlbXMgd2l0aCBsYXJnZXIgTDEgY2FjaGVsaW5lIHNpemVzLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IC0tLQ0KDQouLi4NCiANCj4gLS0NCj4gMi41MS4wLnJjMS4xOTcuZzZkOTc1ZTk1Yzlk
Nw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25v
dkBpbnRlbC5jb20+DQo=
