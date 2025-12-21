Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6AECD40C5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 14:45:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 646BF810B1;
	Sun, 21 Dec 2025 13:45:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yB2ipvnTZwLU; Sun, 21 Dec 2025 13:45:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 591B4810C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766324725;
	bh=UFbwb1Lzy7CVggOFSY+p5uvaTCOHzEnqkpe+v+FwG/Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GwsPtzEB/teJnjktNESnrzvTw2MS5wpDUe2MA0jfvvbEcHk3wtwnf67leM8DgpUn6
	 F4yJVTrQAqMlBINSrTtMqdwGGc/rhITbNRhHm2Oy3Gzs57Ngk5uM/E27zmEJd7yC4r
	 I5L2vV78TXisHcNAel8eH+IvvyhGcLicEeeWali2Ynrv00H2i6AcHEvB/KmtS7kR5Q
	 6ApKEMEJG2ZxnAKmA0KlAkuPflEGZGdDIH4PD4Fi8S6gjvLVnWGJLlV7JgX6ZDTuJS
	 zc3z9eeHa0DurR/3+z6ME30mjmPIN5RlzQywNzEN1m4m6EnzWPUgoxynmdQqziPpfJ
	 VvHqVkazzymwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 591B4810C3;
	Sun, 21 Dec 2025 13:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 68286119
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E7FC404E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:45:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BuV2sicMEXbM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 13:45:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 097624039D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 097624039D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 097624039D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:45:21 +0000 (UTC)
X-CSE-ConnectionGUID: x+FEQYumTk+HlAxD2J64+A==
X-CSE-MsgGUID: 2B3q1iTMTXa3i8VR7xcNeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="68186678"
X-IronPort-AV: E=Sophos;i="6.21,166,1763452800"; d="scan'208";a="68186678"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 05:45:21 -0800
X-CSE-ConnectionGUID: qMakMTP0QaWikzTYXqUNeg==
X-CSE-MsgGUID: NuVSFLcJTlSfd7ThRg/GWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,166,1763452800"; d="scan'208";a="198553950"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 05:45:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 05:45:20 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 21 Dec 2025 05:45:20 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 05:45:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qYcNDDwljCEVxEAOIzYoaFEGI2chaEr8h7/IXwZu7BXtd/eHTDFwPcAMwqryLbErTkvzIrUgD6F+dWSye3KH69EJI/xCRQaobrjUg0U2D9bgr0NLnMOC6iqNbJmJzKkqkygksae6ybpQ7rVv93qcKVQDBzK1jKMdp3xc5FjoXg0SSuj15RC4lxGNXeLwsBOeCIzNHbJvQeePAGTY6ZR0uJe2nBoYA+VR1aq+oTmxC+w9i6I5cKap2cwzHcp4bXvapTBY4Khv/pBDcDUhLpVfXJdfv63w4lEQLKWSPXyRrbDgqI0cc8Jr4nQJXIR8MujujZCEd3IgWu4cpTKfq74UXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UFbwb1Lzy7CVggOFSY+p5uvaTCOHzEnqkpe+v+FwG/Q=;
 b=DF9O6IxUrahb1ireadPDVgm5gl5RJ/C4j1mW30sQDgV3JjjK2SWigTGmwymx6m7l9hbgguXQvozGdACmupJKffuTkWlHlidf9jtJFPl5fhFp/0GIYsf3ljwPTPrl7ToU1WGKENBVJayAPZ7WfwbFSgm7fFevkMrKsda2PgR3rYAw/MbNHeD+OOSQxOf2y2ElVHX2opTTHL0V2qrMLCLwsRoriRMR0pGjy7Oh7xvQvrGndZwgeGqHqDBdndeTS8H8GcPObA7eKgPHO7aEI0BCFtcq3WgmjCzS6EroMs+jwAk1e3lHChzTaSkHs2h9cjmJSfPiLkaBGEI3rVbbLRqpJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by IA3PR11MB9135.namprd11.prod.outlook.com (2603:10b6:208:579::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sun, 21 Dec
 2025 13:45:18 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%3]) with mapi id 15.20.9434.009; Sun, 21 Dec 2025
 13:45:18 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v9] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQJrrJb7shZ0hYnvqHXTQw9stFQRpbQNpJHw
Date: Sun, 21 Dec 2025 13:45:18 +0000
Message-ID: <IA3PR11MB925469A16F98ABDA7415BC45D8B7A@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20251220110009.137245-1-vivek.behera@siemens.com>
In-Reply-To: <20251220110009.137245-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|IA3PR11MB9135:EE_
x-ms-office365-filtering-correlation-id: 6e5f0dc4-44b2-4a2e-52aa-08de40972d87
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|13003099007|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?NnhxV0dKYUJKN29lZFN2TkNQNWNkcFNyNUhMQVNaaTQzUzZJeDV1cmQ5QjR4?=
 =?utf-8?B?T3hnSDZ6Vk5hdUdLUWkrZWN6RXhQcFVyR0xCRTZkRUYvU2tuTFFDT0M1ai95?=
 =?utf-8?B?bk5UeThuTEtubEZLUk5wNmR6endlUGlZTiswbEpFL243L1F3TlpLSytBRDZF?=
 =?utf-8?B?WCt1YncrSlJHRVQrZkxBRkFGbUdIT3NxaVF5VzJ6MFRRN3ZIQVBSZjA4eVZr?=
 =?utf-8?B?d2pjZW5lZFh5UTN3K3I2ZzNlSmp1NWI1V3RYVk04NmhMUCtSbjh0NlVMZTZ5?=
 =?utf-8?B?TDc3bXkybjk0Q0MvTUxnZXptZG5ibk11d3VuWHZhV1dlNFFSR1RkSlFLZTg3?=
 =?utf-8?B?emVPUWFNZlZuSUhpc0JvNnpOeEJNR3ZIdHVyY3dHNG1EcVJ6OENHeUozL21Q?=
 =?utf-8?B?QmxLSTNpd1NidEJQNTIzVlZIQzg3M05Bdm5yZDVhN3QrRWlHWGhyY3g5akhZ?=
 =?utf-8?B?MnpBTHAremhsenpTSGwwTlRIdE8xUVYwd0ZrUDFmYSt4bFRodUVqTS9HdU9y?=
 =?utf-8?B?NEMxa0FFclhoUmdvbkoyVDQ5RHppVTQrc3BpYnV6RDRGdkthZkxYakpQRWlr?=
 =?utf-8?B?MmgvOWplUnYrSksyc3UvWjAxL2NVZUowTEpmdStMOE44SDQ2MURRZVgrNEtC?=
 =?utf-8?B?aXlsK3ZJdVlkbWpPU1RXeFlqa0VMS25sRVdFSEU2MFlzSDFTRlBzY2JKZnRw?=
 =?utf-8?B?Qm9qSTJIZHFxYlBNc0l0dW9kQjhaZHB5aFFwN1Q5QXpRbGczWGRSdEthMHhI?=
 =?utf-8?B?RDl5U3hFWTFDZXUzeUV5TngwVlQyWVFTc0Q5T0psU2lHNk8rTnV0V3V3UGpL?=
 =?utf-8?B?MWxLSUtRaWEvR2xRMnBNdC8yckY5YUNEK3ZTSEtaK25LTDQzb0hib2dtcEhC?=
 =?utf-8?B?eFVMeG1palBnb1ZjVEpPRDFIcVROdUwzU1UybUxDa29jdVNZNjkzYVZKeGJp?=
 =?utf-8?B?Sk5zZEtiTHorcEtIOVJ3TUhjS2g1aWN6VDBiNEtoSlRvYUw0VndtSUFlcXhk?=
 =?utf-8?B?a2ZTZXlaSFVXSkVvd3FCbUNCRzVla2NZTko5b3l1Z0JoSG11dW02TkpZNnRx?=
 =?utf-8?B?UjdoR3Y1T2tablNkcHpxNHp1MzhmdjYrRk93TUpIbWE0eXJZaHBTL1BhQUkx?=
 =?utf-8?B?TXFxU2o3cnFiN3l0OVVaanp5QXJRWE5vL1NWdHJIdTd3ZmJsejFSWVcybitN?=
 =?utf-8?B?bGNqc1Z3OHVCOThMOVNxdG9oQjd2RjJQbURQbkNPeTZ1bUM0M1p2QWtqQUR2?=
 =?utf-8?B?RkR0MWFZMTVuV3lZYjRyMm5KNElDZUloRVRJU1dvTGtCVHIyOFFUUi8zNS9r?=
 =?utf-8?B?bDdKOXVIalh4eXMrOC9HTlJwSVJ5ZkpHUVEwYk90bWNFUjlDendFWjVuY0Iw?=
 =?utf-8?B?RGcwVHBXV1VwSGNaOEg0ay9mRGt0ZERNeGtZZVRvQ25wUHBwZVhNY3FiVkhr?=
 =?utf-8?B?TXVmRi9CcnZmVndRYk85MDg5cGNRckQvRG51bXFGNTNYd0pITGdxK3NMNG5M?=
 =?utf-8?B?ZjNPSHlVSHFNck5nd0VhblJPZkZnRHRTejRISGR1N2txRnBBZldGUzV6dUhT?=
 =?utf-8?B?VkRrdHh2MkN1eWVBRmdWMGlYNXY4Vm5DeDBhWlRMWUVPVEhONFpLL2F6S0FV?=
 =?utf-8?B?UWRRMUZaYXcxMmE0Z1pvSHZ0OXNPTldOcjAvZ2VaOUpuRG0wdUF4aDZZcmVU?=
 =?utf-8?B?RHdLNzZMV2VlbjZISDVQTTNycFZVNy9zZzc5YmpjL2RLSkllMW4yUWtuMVFI?=
 =?utf-8?B?eG11OXNaSk5OczRjNW5jeXBPdEpBMnpXcERpcWxEYUM2TVliSko3bklObFo0?=
 =?utf-8?B?RUM5eTR5SFBvcFl0bVhuaHNxSUU1aVFhUldRUXdJTXVXdk1HN3ZxdzNnUEtM?=
 =?utf-8?B?VVFlRWpzQTN2R1lnT0poTUVXZ3IxeE41UmxiUVpBYUtHamtTRE42Mjhsa3lr?=
 =?utf-8?B?cy9QWGVtRktFcXdueE9OUjZDQ2VqdUlwWVFNQ0taTnRwRWpRWnl5UmwvMXpY?=
 =?utf-8?Q?SjeFb/GzjoR2fSh4fv99qbTgeGABxk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(13003099007)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWNlQXVJNDhJNUsxK2FGM2JieHhUZllHZUVSTlFuYS9ZQitjeXhxUk0rOVlM?=
 =?utf-8?B?NGZ3dHlOLzkwNzJWMndZcmF4UG42MmtKMExEb2tHRkFJOXI2TG5pR05zOUdm?=
 =?utf-8?B?V0htamlPVVloSXdqbElselh2cmxxVW1LRVJVazhtUGlobXRLdE55UnZURUdv?=
 =?utf-8?B?dGlzMkM3WmNXdWZibkprS3RpN3hGdjdaWDU1dXRabDFVQVRnSVo3anNQZEk2?=
 =?utf-8?B?QXlqaGtOZjI0MlVvZm1vN3hhY1ZXcHBzNjAyN2phajVicTRNRDhqd3JySVVJ?=
 =?utf-8?B?MElYMG1KKzlqSHl6T0IwL1loeDlzNHhRbXpsSk1tbk9Ma2RhZUNmTU0rMVVB?=
 =?utf-8?B?MC9MdTA3ZkpQT3dwTU1lTUVaemdHQXdBdlJWaVFlbml0K3Q5bjdFN3NUWTAw?=
 =?utf-8?B?NFZydExMYmZNSy9NYVhNSWpqT0YySGZpdkZMeEFOQU4zM0VRaTFpb2NQRVlh?=
 =?utf-8?B?cnVoT2xseVduZXhjVlYrSkdYM01xeGNLalB6eWtJSldQUHgvUWJmQ240bmtk?=
 =?utf-8?B?aFpIU1hRdU5TOGNPSEtsblFFR1NJd0JUOTNWaVZuYU5HeXpjdGpiZzgvV29V?=
 =?utf-8?B?VS9meHJJK3k3TTJDcENxY2R0bjNoYWgyeTVyNHhUYTN1N2FHa2s5RUZBVFFD?=
 =?utf-8?B?RGxRcnJvd043RmJIMTFCNUs0YStocDd1Y21JU3pyVXJQUWFtVDIyak5CdHVU?=
 =?utf-8?B?S2RJS3RMV1dYMHVZaE5yMTZmblFCODdINVdzMFFFTFVQTno5TVNZcm11S2Vr?=
 =?utf-8?B?b2VoOEYvZ1hNSzkwZ1dyWkRMN0FVTnhaUk9SaFpDWDl5aEtVNVlIWk1IUnkr?=
 =?utf-8?B?QnE2ZE9ycUQ2L3QzVEpQOXNJQm5FSEdHbWVOREQ4UW9yR3EzYXI2MmR6Rjl2?=
 =?utf-8?B?N2Y3NHBETzlJb05jZ3VVdldBRmFIUklORVFYMElkK1BzeHF0T1ovdE5YbHRy?=
 =?utf-8?B?aTZYVXQ4c2tkSklOMXZaVTdlbFloeXY0SnpUYy9WcGt5Q1M5cURNMTNJclFP?=
 =?utf-8?B?RStGZ1VGaVZ0UjNKelUvWVhEMVpjVlRyRGZzWHc3T2lDdHpHK1Zhajk3YWFD?=
 =?utf-8?B?ajh0VHd0NkNSbjVudEswMFM1cVA4WFdOclU5YW8vdHVTM0gwSGpEd1hadlJV?=
 =?utf-8?B?a1lMQnhLUW1QOTRKQUN3RDJOczhEamVLTWFRMXZRWS9oVE9aaHV5cnpLSDJV?=
 =?utf-8?B?a2QvTUZseDZXSnoyangxRERBanZiWnpiUk5HWnNpamxZNTFzWTRvSmY5b0hq?=
 =?utf-8?B?bWYwMXROMmVYbGlCbW5wSEtrdXFDd1huZGx6S2h5TzFFTDV4TEZQbTZvRk5W?=
 =?utf-8?B?T0llRUxYZGo5eTJMME1YTmFOdzV1djROVnpEemQ2Vy9tZ3gyRlYya245MVZz?=
 =?utf-8?B?RmhDMzZ4MFR2RHRvcDNha0tRQWh2Ry9aTlpwbnlsck5lV3NIZFEzZTQyRFky?=
 =?utf-8?B?em5nN3BZWmY3ZVJrWHJjU1FlU2N2R1BKNDNNUFZFNkdmQ0NReDQxbW12ckF1?=
 =?utf-8?B?REw1QjRpQUgycjlzTWNyejAzSjlybHVIbnVRQlB0RHJYMHdnNkt4aHVEczIx?=
 =?utf-8?B?bGMzVGprZXEvSzhrYkdYci9ZdUpuYTRpS1ZVbm9acFRKSWVqOVlGSWZ6OEFw?=
 =?utf-8?B?bFVOZ29vM3d4WWRGV0hUWC91cXVnSTZQdnNTK08ycGxkWlM5cXlXcUJKaHNR?=
 =?utf-8?B?WngvV1Zkam5PVmtLbzV5M015RUhQZ3pNZitEUmczUlNrTTRYcXpTL0VJRlVr?=
 =?utf-8?B?bmI5Y1VDZWQzWVhlSWtrUWtzZVZoeXVjWXpBQjBpSk5lSW5LU2pib0c3VU1C?=
 =?utf-8?B?b0FBZmNHSWk0TU9KTWw0dGJSVDRaWGNRcFVSMjJ6MytNZytYSWR5TFBuOS9h?=
 =?utf-8?B?YklScE9YNVJYLzVaOFJhZTBRM1B1NWtVWWZBZTYzUEJCN0lZQ2VwV1VnRm4r?=
 =?utf-8?B?eVM5OXowOXpKcFk0TFN2WHUvb0R4c3M3dXdndnJCZUVOb3dsUWVwdW1sK1kv?=
 =?utf-8?B?b3ZRMmxPTzBNOU5kMWtFa1RyNXdWYThWWWdlRmNPdW41NUNpdXIxVU9KdkRU?=
 =?utf-8?B?U2FDdVIxako2V29jUkJWU0VFd2FubFpCaWtIdVRyZGQxWTRSay80eVhRcXoy?=
 =?utf-8?B?UzM1M01vWlFyRUpLU3dXakJPQ1NPYlNMK1NBVWhDTDcxZ3Y5dUFnSktBUVJE?=
 =?utf-8?B?R0RzWGw2RnpodEU1eTQ2NHI0anpMNmdmbTRVMWFJQjdva0s4Tkk5c1h5TzJ1?=
 =?utf-8?B?WEFIbWdpVnQydmNQcEoybE9vdDFlK3ltSWMyTnJ5MXdvTjNVUXJlSHBzZXcr?=
 =?utf-8?B?UkY4ZjNJOGlrMisxZVQrSWkwcnJEVjZZc1dpQzhrMFdxVG5GdTFtZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e5f0dc4-44b2-4a2e-52aa-08de40972d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2025 13:45:18.0932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r7NAFKkimC9/nfTcX+odGONS8eReAgMD35RRxb7cv2mbbqR2lwoFEDgeyO5ZvXGJoP9UgJZ56BwYcO8AbxLjwrCCsORKhsRlC0V1d0671HA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766324722; x=1797860722;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UFbwb1Lzy7CVggOFSY+p5uvaTCOHzEnqkpe+v+FwG/Q=;
 b=hBx1R/5Zoq4tL2eMvq8qgGMcpluDKGZ592+2jEQ/RzAKQIuVwc1FtscM
 7hn1JdP0pd+yoJyytW+Z7HvN8hAr+ovuh4wpg8jkul20+gFxx97tjZDV3
 C/jo8RiFysNg+wP+8z93QN9i39Xny884a7I5gPc26pqX0ocz970vPPyCS
 xdMbK+sEblphekcWdyG2Tej3K6DjADFWelLydimPpC38xvVn495lBrP+g
 aDOV74pucSRH54fCx+609FuOGmyWvDkgV7Ij26rOu9nXaYL9E+JTcm9Dh
 SdcbGUJmkpYHa4zrV3p9E56ldx8bhuzvqZm7XcCeYsOShsfNJlbrPcRfw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hBx1R/5Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v9] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

T24gU2F0dXJkYXksIERlY2VtYmVyIDIwLCAyMDI1IDc6MDAgUE0sIFZpdmVrIEJlaGVyYSB3cm90
ZToNCj5UaGlzIHBhdGNoIGFkZHJlc3NlcyB0aGUgaXNzdWUgd2hlcmUgdGhlIGlnY194c2tfd2Fr
ZXVwIGZ1bmN0aW9uDQo+d2FzIHRyaWdnZXJpbmcgYW4gaW5jb3JyZWN0IElSUSBmb3IgdHgtMCB3
aGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3VyZWQNCj53aXRoIG9ubHkgMiBjb21iaW5lZCBxdWV1ZXMg
b3IgaW4gYW4gZW52aXJvbm1lbnQgd2l0aCAyIGFjdGl2ZSBDUFUgY29yZXMuDQo+VGhpcyBwcmV2
ZW50ZWQgWERQIFplcm8tY29weSBzZW5kIGZ1bmN0aW9uYWxpdHkgaW4gc3VjaCBzcGxpdCBJUlEN
Cj5jb25maWd1cmF0aW9ucy4NCj4NCj5UaGUgZml4IGltcGxlbWVudHMgdGhlIGNvcnJlY3QgbG9n
aWMgZm9yIGV4dHJhY3RpbmcgcV92ZWN0b3JzIHNhdmVkDQo+ZHVyaW5nIHJ4IGFuZCB0eCByaW5n
IGFsbG9jYXRpb24gYW5kIHV0aWxpemVzIGZsYWdzIHByb3ZpZGVkIGJ5IHRoZQ0KPm5kb194c2tf
d2FrZXVwIEFQSSB0byB0cmlnZ2VyIHRoZSBhcHByb3ByaWF0ZSBJUlEuDQo+DQo+Rml4ZXM6IGZj
OWRmMmEwYjUyMCAoImlnYzogRW5hYmxlIFJYIHZpYSBBRl9YRFAgemVyby1jb3B5IikNCj5GaXhl
czogMTVmZDAyMWJjNDI3ICgiaWdjOiBBZGQgVHggaGFyZHdhcmUgdGltZXN0YW1wIHJlcXVlc3Qg
Zm9yIEFGX1hEUCB6ZXJvLQ0KPmNvcHkgcGFja2V0IikNCj5TaWduZWQtb2ZmLWJ5OiBWaXZlayBC
ZWhlcmEgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT4NCj5SZXZpZXdlZC1ieTogSmFjb2IgS2Vs
bGVyIDxqYWNvYi5rZWxsZXJAaW50ZWwuY29tPg0KPlJldmlld2VkLWJ5OiBBbGVrc2FuZHIgbG9r
dGlub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPlJldmlld2VkLWJ5OiBQaW90
ciBLd2FwdWxpbnNraSA8cGlvdHIua3dhcHVsaW5za2lAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1i
eTogU29uZyBZb29uZyBTaWFuZyA8eW9vbmcuc2lhbmcuc29uZ0BpbnRlbC5jb20+DQoNClRoYW5r
cyBmb3IgdGhlIHJld29yay4NCk5vdGU6IFlvdSBkbyBub3QgbmVlZCB0byBzdWJtaXQgYSBuZXcg
dmVyc2lvbiBqdXN0IHRvIGFkZCBhIHJldmlld2VkLWJ5IHRhZywNCnVubGVzcyB5b3UgaGF2ZSBh
bm90aGVyIGNoYW5nZXMgdG8gbWFrZS4NCg0KPi0tLQ0KPnYxOg0KPmh0dHBzOi8vbG9yZS5rZXJu
ZWwub3IvDQo+ZyUyRmludGVsLXdpcmVkLQ0KPmxhbiUyRkFTMVBSMTBNQjUzOTJCNzI2ODQxNkRC
OEExNjI0RkRCODhGQTdBJTQwQVMxUFIxME1CNTM5Mi5FVVINCj5QUkQxMC5QUk9ELk9VVExPT0su
Q09NJTJGJmRhdGE9MDUlN0MwMiU3Q3ZpdmVrLmJlaGVyYSU0MHNpZW1lbnMuY28NCj5tJTdDYjYw
OWE4NTlkMTliNDdlOGY0NzgwOGRlMzhkNzc2MjclN0MzOGFlM2JjZDk1Nzk0ZmQ0YWRkYWI0MmUx
NDkNCj41ZDU1YSU3QzElN0MwJTdDNjM5MDEwNjk1MjI2Nzg3OTYyJTdDVW5rbm93biU3Q1RXRnBi
R1pzYjNkOGV5SkYNCj5iWEIwZVUxaGNHa2lPblJ5ZFdVc0lsWWlPaUl3TGpBdU1EQXdNQ0lzSWxB
aU9pSlhhVzR6TWlJc0lrRk9Jam9pVFdGcGJDSQ0KPnNJbGRVSWpveWZRJTNEJTNEJTdDMCU3QyU3
QyU3QyZzZGF0YT1TMTA2MHh6Q09HckpvMGNPMmVuTmhEbUNJSlVjQw0KPkxaZCUyRiUyQm1LTEJ5
YXptOCUzRCZyZXNlcnZlZD0wDQo+djI6DQo+aHR0cHM6Ly9sb3JlLmtlcm5lbC5vci8NCj5nJTJG
aW50ZWwtd2lyZWQtDQo+bGFuJTJGQVMxUFIxME1CNTM5MjgwQjE0MjdEQTBBQkU5RDY1RTYyOEZB
NUElNDBBUzFQUjEwTUI1MzkyLkVVUg0KPlBSRDEwLlBST0QuT1VUTE9PSy5DT00lMkYmZGF0YT0w
NSU3QzAyJTdDdml2ZWsuYmVoZXJhJTQwc2llbWVucy5jbw0KPm0lN0NiNjA5YTg1OWQxOWI0N2U4
ZjQ3ODA4ZGUzOGQ3NzYyNyU3QzM4YWUzYmNkOTU3OTRmZDRhZGRhYjQyZTE0OQ0KPjVkNTVhJTdD
MSU3QzAlN0M2MzkwMTA2OTUyMjY4NDYwMTYlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKRg0K
PmJYQjBlVTFoY0draU9uUnlkV1VzSWxZaU9pSXdMakF1TURBd01DSXNJbEFpT2lKWGFXNHpNaUlz
SWtGT0lqb2lUV0ZwYkNJDQo+c0lsZFVJam95ZlElM0QlM0QlN0MwJTdDJTdDJTdDJnNkYXRhPWtz
RFZmbmRWbGJhZnlleFoyJTJCM2o5R2NjTzlodQ0KPnB5YnZ0bDF0d1pzNU9TayUzRCZyZXNlcnZl
ZD0wDQo+djM6DQo+aHR0cHM6Ly9sb3JlLmtlcm5lbC5vci8NCj5nJTJGaW50ZWwtd2lyZWQtDQo+
bGFuJTJGSUEzUFIxMU1CODk4NkU0QUNCN0YyNjRDRjJERDFENzUwRTVBMEElNDBJQTNQUjExTUI4
OTg2Lm5hbQ0KPnByZDExLnByb2Qub3V0bG9vay5jb20lMkYmZGF0YT0wNSU3QzAyJTdDdml2ZWsu
YmVoZXJhJTQwc2llbWVucy5jb20lN0MNCj5iNjA5YTg1OWQxOWI0N2U4ZjQ3ODA4ZGUzOGQ3NzYy
NyU3QzM4YWUzYmNkOTU3OTRmZDRhZGRhYjQyZTE0OTVkNTVhDQo+JTdDMSU3QzAlN0M2MzkwMTA2
OTUyMjY4OTA5OTAlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKRmJYQjBlDQo+VTFoY0draU9u
UnlkV1VzSWxZaU9pSXdMakF1TURBd01DSXNJbEFpT2lKWGFXNHpNaUlzSWtGT0lqb2lUV0ZwYkNJ
c0lsZFVJag0KPm95ZlElM0QlM0QlN0MwJTdDJTdDJTdDJnNkYXRhPXpFV2hqN04yJTJCbXdzU2ht
b3kxQUNBamIzdmk3eUpnYg0KPkEwNzdmSVNJT1ppTSUzRCZyZXNlcnZlZD0wDQo+djQ6DQo+aHR0
cHM6Ly9sb3JlLmtlcm5lbC5vci8NCj5nJTJGaW50ZWwtd2lyZWQtDQo+bGFuJTJGQVMxUFIxME1C
NTM5MjZDQjk1NUZCRDRGOUY0QTAxODgxOEZBMEElNDBBUzFQUjEwTUI1MzkyLkVVUg0KPlBSRDEw
LlBST0QuT1VUTE9PSy5DT00lMkYmZGF0YT0wNSU3QzAyJTdDdml2ZWsuYmVoZXJhJTQwc2llbWVu
cy5jbw0KPm0lN0NiNjA5YTg1OWQxOWI0N2U4ZjQ3ODA4ZGUzOGQ3NzYyNyU3QzM4YWUzYmNkOTU3
OTRmZDRhZGRhYjQyZTE0OQ0KPjVkNTVhJTdDMSU3QzAlN0M2MzkwMTA2OTUyMjY5MzM1MzglN0NV
bmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKRg0KPmJYQjBlVTFoY0draU9uUnlkV1VzSWxZaU9pSXdM
akF1TURBd01DSXNJbEFpT2lKWGFXNHpNaUlzSWtGT0lqb2lUV0ZwYkNJDQo+c0lsZFVJam95ZlEl
M0QlM0QlN0MwJTdDJTdDJTdDJnNkYXRhPTIzYVRNNFROc255em9TJTJGcFNNMUdjbHVhV3oNCj5M
UE5iclBLRW8lMkJPcm05aFpRJTNEJnJlc2VydmVkPTANCj52NToNCj5odHRwczovL2xvcmUua2Vy
bmVsLm9yLw0KPmclMkZpbnRlbC13aXJlZC0NCj5sYW4lMkZBUzFQUjEwTUI1MzkyRkNBNDE1QTM4
QjlERDdCQjVGMjE4RkEwQSU0MEFTMVBSMTBNQjUzOTIuRVVSDQo+UFJEMTAuUFJPRC5PVVRMT09L
LkNPTSUyRiZkYXRhPTA1JTdDMDIlN0N2aXZlay5iZWhlcmElNDBzaWVtZW5zLmNvDQo+bSU3Q2I2
MDlhODU5ZDE5YjQ3ZThmNDc4MDhkZTM4ZDc3NjI3JTdDMzhhZTNiY2Q5NTc5NGZkNGFkZGFiNDJl
MTQ5DQo+NWQ1NWElN0MxJTdDMCU3QzYzOTAxMDY5NTIyNzIwNTAyNiU3Q1Vua25vd24lN0NUV0Zw
Ykdac2IzZDhleUpGDQo+YlhCMGVVMWhjR2tpT25SeWRXVXNJbFlpT2lJd0xqQXVNREF3TUNJc0ls
QWlPaUpYYVc0ek1pSXNJa0ZPSWpvaVRXRnBiQ0kNCj5zSWxkVUlqb3lmUSUzRCUzRCU3QzAlN0Ml
N0MlN0Mmc2RhdGE9SmRZM2FIekljSVd0aXI5ZkFWJTJCTUVMTld0aXlMSg0KPllSVTdJTXhMWjBt
UHFRJTNEJnJlc2VydmVkPTANCj52NjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2ly
ZWQtbGFuLzIwMjUxMjExMTczOTE2LjIzOTUxLTEtDQo+dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29t
Lw0KPnY3OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyNTEyMTIx
NjMyMDguMTM3MTY0LTEtDQo+dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tLw0KPnY4OiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyNTEyMTUxMjIwNTIuNDEyMzI3LTEt
DQo+dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tLw0KPg0KPmNoYW5nZWxvZzoNCj52MQ0KPi0gSW5p
dGFsIGRlc2NyaXB0aW9uIG9mIHRoZSBCdWcgYW5kIHN0ZXBzIHRvIHJlcHJvZHVjZSB3aXRoIFJU
QyBUZXN0YmVuY2gNCj4tIFRlc3QgcmVzdWx0cyBhZnRlciBhcHBseWluZyB0aGUgcGF0Y2gNCj52
MSAtPiB2Mg0KPi0gSGFuZGxpbmcgb2YgUlggYW5kIFRYIFdha2V1cCBpbiBpZ2NfeHNrX3dha2V1
cCBmb3IgYSBzcGxpdCBJUlEgY29uZmlndXJhdGlvbg0KPi0gUmVtb3ZhbCBvZiBpZ2NfdHJpZ2dl
cl9yeHR4cV9pbnRlcnJ1cHQgKG5vdyByZWR1bmRhbnQpDQo+LSBBZGRlZCBmbGFnIHRvIGlnY194
c2tfd2FrZXVwIGZ1bmN0aW9uIGNhbGwgaW4gaWdjX3B0cF9mcmVlX3R4X2J1ZmZlcg0KPnYyIC0+
IHYzDQo+LSBBZGRlZCAnRml4ZXM6JyB0YWdzIGZvciB0aGUgcmVsZXZhbnQgY29tbWl0cy4NCj4t
IEFkZGVkIHJldmlld2VyDQo+djMgLT4gdjQNCj4tIEFkZGVkIHJldmlld2VyDQo+djQgLT4gdjUN
Cj4tIFVwZGF0ZWQgY29tbWVudCBzdHlsZSBmcm9tIG11bHRpLXN0YXIgdG8gc3RhbmRhcmQgbGlu
dXggY29udmVudGlvbg0KPnY1IC0+IHY2DQo+LSBSZXNvbHZlIGZvcm1hdHRpbmcgaXNzdWVzIGhp
Z2hsaWdodGVkIGJ5IHJldmlld2Vycw0KPi0gVHJ5IHRvIGluY2x1ZGUgdmVyc2lvbiBoaXN0cm95
IGFzIGRlZmluZWQgaW4gbmV0ZGV2IGd1aWRlbGluZXMNCj4tIEluY2x1ZGVkIHJldmlldyBzdWdn
ZXN0aW9ucyBmcm9tIFByemVteXNsYXcNCj4tIEFkZGVkIHJldmlld2Vycw0KPnY2IC0+IHY3DQo+
LSBJbmNsdWRlZCByZXZpZXcgc3VnZ2VzdGlvbnMgZnJvbSBQcnplbXlzbGF3IG1pc3NlZCBpbiB2
Ng0KPnY3IC0+IHY4DQo+LSBNb2RpZmllZCBzZXF1ZW5jZSB0byBjb21wbGV0ZSBhbGwgZXJyb3Ig
Y2hlY2tzIGZvciByeCBhbmQgdHgNCj4gIGJlZm9yZSB1cGRhdGluZyBuYXBpIHN0YXRlcyBhbmQg
dHJpZ2dlcmluZyBpcnENCj52OCAtPiB2OQ0KPi0gSW5jbHVkZWQgcmV2aWV3IGZlZWRiYWNrIGFu
ZCBzdWdnZXN0aW9ucyBmcm9tIFRvbnkgYW5kIFNpYW5nDQo+LS0tDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgNzcgKysrKysrKysrKysrKysrKysrLS0tLS0N
Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYyAgfCAgMyArLQ0KPiAy
IGZpbGVzIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPg0KPmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPmIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj5pbmRleCA3YWFmYTYw
YmEwYzguLjdiZDlmMTBhM2YyOSAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX21haW4uYw0KPisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfbWFpbi5jDQo+QEAgLTY5MDgsNDAgKzY5MDgsODMgQEAgc3RhdGljIGludCBpZ2NfeGRw
X3htaXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgaW50DQo+bnVtX2ZyYW1lcywNCj4gICAgICAg
cmV0dXJuIG54bWl0Ow0KPiB9DQo+DQo+LXN0YXRpYyB2b2lkIGlnY190cmlnZ2VyX3J4dHhxX2lu
dGVycnVwdChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIsDQo+LSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGlnY19xX3ZlY3RvciAqcV92ZWN0b3IpDQo+LXsN
Cj4tICAgICAgc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+LSAgICAgIHUzMiBl
aWNzID0gMDsNCj4tDQo+LSAgICAgIGVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7DQo+LSAg
ICAgIHdyMzIoSUdDX0VJQ1MsIGVpY3MpOw0KPi19DQo+LQ0KPiBpbnQgaWdjX3hza193YWtldXAo
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lkLCB1MzIgZmxhZ3MpDQo+IHsNCj4g
ICAgICAgc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYoZGV2KTsNCj4r
ICAgICAgc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+ICAgICAgIHN0cnVjdCBp
Z2NfcV92ZWN0b3IgKnFfdmVjdG9yOw0KPiAgICAgICBzdHJ1Y3QgaWdjX3JpbmcgKnJpbmc7DQo+
KyAgICAgIHUzMiBlaWNzID0gMDsNCj4NCj4gICAgICAgaWYgKHRlc3RfYml0KF9fSUdDX0RPV04s
ICZhZGFwdGVyLT5zdGF0ZSkpDQo+ICAgICAgICAgICAgICAgcmV0dXJuIC1FTkVURE9XTjsNCj4N
Cj4gICAgICAgaWYgKCFpZ2NfeGRwX2lzX2VuYWJsZWQoYWRhcHRlcikpDQo+ICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTlhJTzsNCj4tDQo+KyAgICAgIC8qIENoZWNrIGlmIHF1ZXVlX2lkIGlzIHZh
bGlkLiBUeCBhbmQgUnggcXVldWUgbnVtYmVycyBhcmUgYWx3YXlzIHNhbWUgKi8NCj4gICAgICAg
aWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+ICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7DQo+DQo+LSAgICAgIHJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVl
X2lkXTsNCj4tDQo+KyAgICAgIGlmICgoZmxhZ3MgJiBYRFBfV0FLRVVQX1JYKSAmJiAoZmxhZ3Mg
JiBYRFBfV0FLRVVQX1RYKSkgew0KPisgICAgICAgICAgICAgIC8qIElmIGJvdGggVFggYW5kIFJY
IG5lZWQgdG8gYmUgd29rZW4gdXAgY2hlY2sgaWYgcXVldWUgcGFpcnMgYXJlDQo+YWN0aXZlICov
DQo+KyAgICAgICAgICAgICAgaWYgKChhZGFwdGVyLT5mbGFncyAmIElHQ19GTEFHX1FVRVVFX1BB
SVJTKSkgew0KPisgICAgICAgICAgICAgICAgICAgICAgLyogSnVzdCBnZXQgdGhlIHJpbmcgcGFy
YW1zIGZyb20gUnggKi8NCj4rICAgICAgICAgICAgICAgICAgICAgIHJpbmcgPSBhZGFwdGVyLT5y
eF9yaW5nW3F1ZXVlX2lkXTsNCj4rICAgICAgICAgICAgICB9IGVsc2Ugew0KPisgICAgICAgICAg
ICAgICAgICAgICAgLyogVHdvIGlycXMgZm9yIFJ4IGFuZCBUeCBuZWVkIHRvIGJlIHRyaWdnZXJl
ZCAqLw0KPisgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG5hcGlfc3RydWN0ICpyeF9uYXBp
Ow0KPisgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG5hcGlfc3RydWN0ICp0eF9uYXBpOw0K
PisgICAgICAgICAgICAgICAgICAgICAgdTMyIGVpY3NfdHggPSAwOw0KPisgICAgICAgICAgICAg
ICAgICAgICAgdTMyIGVpY3NfcnggPSAwOw0KPisgICAgICAgICAgICAgICAgICAgICAgLyogSVJR
IHRyaWdnZXIgcHJlcGFyYXRpb24gZm9yIFJ4ICovDQo+KyAgICAgICAgICAgICAgICAgICAgICBy
aW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+KyAgICAgICAgICAgICAgICAgICAg
ICBpZiAoIXJpbmctPnhza19wb29sKQ0KPisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOWElPOw0KPisgICAgICAgICAgICAgICAgICAgICAgcV92ZWN0b3IgPSByaW5nLT5x
X3ZlY3RvcjsNCj4rICAgICAgICAgICAgICAgICAgICAgIHJ4X25hcGkgPSAmcV92ZWN0b3ItPm5h
cGk7DQo+KyAgICAgICAgICAgICAgICAgICAgICAvKiBFeHRlbmQgdGhlIEJJVCBtYXNrIGZvciBl
aWNzICovDQo+KyAgICAgICAgICAgICAgICAgICAgICBlaWNzX3J4ID0gcmluZy0+cV92ZWN0b3It
PmVpbXNfdmFsdWU7DQo+Kw0KPisgICAgICAgICAgICAgICAgICAgICAgLyogSVJRIHRyaWdnZXIg
cHJlcGFyYXRpb24gZm9yIFR4ICovDQo+KyAgICAgICAgICAgICAgICAgICAgICByaW5nID0gYWRh
cHRlci0+dHhfcmluZ1txdWV1ZV9pZF07DQo+KyAgICAgICAgICAgICAgICAgICAgICBpZiAoIXJp
bmctPnhza19wb29sKQ0KPisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVO
WElPOw0KPisgICAgICAgICAgICAgICAgICAgICAgcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3RvcjsN
Cj4rICAgICAgICAgICAgICAgICAgICAgIHR4X25hcGkgPSAmcV92ZWN0b3ItPm5hcGk7DQo+KyAg
ICAgICAgICAgICAgICAgICAgICAvKiBFeHRlbmQgdGhlIEJJVCBtYXNrIGZvciBlaWNzICovDQo+
KyAgICAgICAgICAgICAgICAgICAgICBlaWNzX3R4ID0gcmluZy0+cV92ZWN0b3ItPmVpbXNfdmFs
dWU7DQo+Kw0KPisgICAgICAgICAgICAgICAgICAgICAgLyogQ2hlY2sgYW5kIHVwZGF0ZSBuYXBp
IHN0YXRlcyBmb3IgcnggYW5kIHR4ICovDQo+KyAgICAgICAgICAgICAgICAgICAgICBpZiAoIW5h
cGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKHJ4X25hcGkpKQ0KPisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBlaWNzIHw9IGVpY3Nfcng7DQo+KyAgICAgICAgICAgICAgICAgICAgICBp
ZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKHR4X25hcGkpKQ0KPisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBlaWNzIHw9IGVpY3NfdHg7DQo+Kw0KPisgICAgICAgICAgICAg
ICAgICAgICAgLyogTm93IHdlIHRyaWdnZXIgdGhlIHJlcXVpcmVkIGlycXMgZm9yIFJ4IGFuZCBU
eCAqLw0KPisgICAgICAgICAgICAgICAgICAgICAgaWYgKGVpY3MpDQo+KyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHdyMzIoSUdDX0VJQ1MsIGVpY3MpOw0KPisNCj4rICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiAwOw0KPisgICAgICAgICAgICAgIH0NCj4rICAgICAgfSBlbHNlIGlm
IChmbGFncyAmIFhEUF9XQUtFVVBfVFgpIHsNCj4rICAgICAgICAgICAgICAvKiBHZXQgdGhlIHJp
bmcgcGFyYW1zIGZyb20gVHggKi8NCj4rICAgICAgICAgICAgICByaW5nID0gYWRhcHRlci0+dHhf
cmluZ1txdWV1ZV9pZF07DQo+KyAgICAgIH0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1JY
KSB7DQo+KyAgICAgICAgICAgICAgLyogR2V0IHRoZSByaW5nIHBhcmFtcyBmcm9tIFJ4ICovDQo+
KyAgICAgICAgICAgICAgcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KPisgICAg
ICB9IGVsc2Ugew0KPisgICAgICAgICAgICAgIC8qIEludmFsaWQgRmxhZ3MgKi8NCj4rICAgICAg
ICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4rICAgICAgfQ0KPisgICAgICAvKiBQcmVwYXJlIHRv
IHRyaWdnZXIgc2luZ2xlIGlycSAqLw0KPiAgICAgICBpZiAoIXJpbmctPnhza19wb29sKQ0KPiAg
ICAgICAgICAgICAgIHJldHVybiAtRU5YSU87DQo+DQo+LSAgICAgIHFfdmVjdG9yID0gYWRhcHRl
ci0+cV92ZWN0b3JbcXVldWVfaWRdOw0KPi0gICAgICBpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21h
cmtfbWlzc2VkKCZxX3ZlY3Rvci0+bmFwaSkpDQo+LSAgICAgICAgICAgICAgaWdjX3RyaWdnZXJf
cnh0eHFfaW50ZXJydXB0KGFkYXB0ZXIsIHFfdmVjdG9yKTsNCj4tDQo+KyAgICAgIHFfdmVjdG9y
ID0gcmluZy0+cV92ZWN0b3I7DQo+KyAgICAgIGlmICghbmFwaV9pZl9zY2hlZHVsZWRfbWFya19t
aXNzZWQoJnFfdmVjdG9yLT5uYXBpKSkgew0KPisgICAgICAgICAgICAgIGVpY3MgPSBxX3ZlY3Rv
ci0+ZWltc192YWx1ZTsNCj4rICAgICAgICAgICAgICB3cjMyKElHQ19FSUNTLCBlaWNzKTsNCj4r
ICAgICAgfQ0KPiAgICAgICByZXR1cm4gMDsNCj4gfQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+Yi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+aW5kZXggYjdiNDZkODYzYmVlLi5kZjJlNTAwYTRkN2Ug
MTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0K
PisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj5AQCAtNTUw
LDcgKzU1MCw4IEBAIHN0YXRpYyB2b2lkIGlnY19wdHBfZnJlZV90eF9idWZmZXIoc3RydWN0IGln
Y19hZGFwdGVyDQo+KmFkYXB0ZXIsDQo+ICAgICAgICAgICAgICAgdHN0YW1wLT5idWZmZXJfdHlw
ZSA9IDA7DQo+DQo+ICAgICAgICAgICAgICAgLyogVHJpZ2dlciB0eHJ4IGludGVycnVwdCBmb3Ig
dHJhbnNtaXQgY29tcGxldGlvbiAqLw0KPi0gICAgICAgICAgICAgIGlnY194c2tfd2FrZXVwKGFk
YXB0ZXItPm5ldGRldiwgdHN0YW1wLT54c2tfcXVldWVfaW5kZXgsIDApOw0KPisgICAgICAgICAg
ICAgIGlnY194c2tfd2FrZXVwKGFkYXB0ZXItPm5ldGRldiwgdHN0YW1wLT54c2tfcXVldWVfaW5k
ZXgsDQo+KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWERQX1dBS0VVUF9UWCk7DQo+DQo+
ICAgICAgICAgICAgICAgcmV0dXJuOw0KPiAgICAgICB9DQo=
