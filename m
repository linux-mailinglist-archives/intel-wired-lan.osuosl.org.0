Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFfFKiKilmkNiQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 06:39:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C6015C270
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 06:39:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCCC060AD5;
	Thu, 19 Feb 2026 05:39:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rf1r_UP7sjjl; Thu, 19 Feb 2026 05:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0181E60B38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771479583;
	bh=tdCe9Mlnb7ccW+A+TdZEFEZ8cg2iUri8gvq01oJ/7b8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mxnqRkU5f9lG0lEphkKeRsgFrFgw4ip8Z7hLqytvXr1T3c8umiK1wkQxdxRkO/9Me
	 BfqK41u9OqVz/gDIn3AJi8hXuPD0PTSM83ooUsoumtKUDA2G9jofCJuwzcmouYut0H
	 fRXOSKaI7t9WGmwFYqcBVaqgobXjWQ0rwRp/S4qA7AWZ0PXwxnMt3QsE04TRdXsBWA
	 usJkD+xAJ6dWrfhn5x7wQ9d1y1bhxZ2nsKURHuJBfShRB3TBKuB8IKrlfTAN+YeMA1
	 DIu3pnxk7KUp+4vrZI5aSjN11QDxpzXsZ/6xb8hZozIvdPacXIAkjHWtf2O/v2ilRL
	 t4yjqyXQSOOrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0181E60B38;
	Thu, 19 Feb 2026 05:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D8D21CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 05:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F13080C1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 05:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QkEx6p8t5XPt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 05:39:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EF3BD80C0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF3BD80C0B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF3BD80C0B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 05:39:38 +0000 (UTC)
X-CSE-ConnectionGUID: YGaYzNjKR6upBaCR9kD0GQ==
X-CSE-MsgGUID: 15e0hkcjTe2bxgwGmLpqyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72270142"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72270142"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 21:39:38 -0800
X-CSE-ConnectionGUID: 9Bgb6SLkSWWoLOE19WoZig==
X-CSE-MsgGUID: +0RgRYzBRp6El5UmqUsWjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219413672"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 21:39:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 21:39:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 21:39:37 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 21:39:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RVegbCZXVKQD+kQTFR1hkPX+cWgv1/VBFLxj5SFzRjWakM9q4H7/DTB8VpgodLUUlOOKP05JgwmIXBBAiElWvmNQTibRDCCbB7vyCxHunLTtvRl+ulMo7UsUN8GLjlKlMMaa9u0YZqNG5vhgBlmLAnZ1J1udq5eUCXXNfmsWj65g658zggjsjHWLbiEJAvoCHqGzKj+uXbGev1cYU3O4msHoB7BYUMdK8sRDy7+vivsdChPN65Nt+cEMa1aAdHHRaxsz7Zqz6vDSjzYERnBMy9pP9JMMmY6GEk9l0RStI1fjc58c6p8/FNRcAAQB+Lxo82LuXiQ9ASOUOCdz+EEOvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tdCe9Mlnb7ccW+A+TdZEFEZ8cg2iUri8gvq01oJ/7b8=;
 b=o3CGrpRc5SF/AzklXe1q6dyQEIuWlkqnlya3oWMsuWIuK4hnKO0dIdHTJ2p0o+e6BNwj9/ZGeslTFU7gpOsH8FhXg2B4bJSOqHHZ9MpzaMiX8l8LF35o9wfR2E1ijcarCAdM0BSeAqNzaRTejvfBI+vwsV1PKo2Be6olTBfQEvTrt0hXTzR8k01cXY+vuc7L9QdsIqhZbmLCu/a6fIXMnauPPMMiwAsjfuXKog/lKGZ5cFLZ2GKEZ55LtrfQ5r5v48HcloyZvksaBD6SiQwAEUo0SW1O/Ew6h11zYMmj372ox4HtS5ifr4S37ck6a10equKKRp+IAH2Jx464u7mjtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 by DM3PPF5EA507B64.namprd11.prod.outlook.com (2603:10b6:f:fc00::f25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Thu, 19 Feb
 2026 05:39:34 +0000
Received: from PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::b0b0:8f42:9314:8a0d]) by PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::b0b0:8f42:9314:8a0d%6]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 05:39:34 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Behera, Vivek" <vivek.behera@siemens.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v8] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
Thread-Index: AQHci6qMUDTXEJj0oky3ZAXVL3CQtbWJoIzAgAAIJGA=
Date: Thu, 19 Feb 2026 05:39:34 +0000
Message-ID: <PH8PR11MB6976CF3AE6DA9C774294FDE8F96BA@PH8PR11MB6976.namprd11.prod.outlook.com>
References: <20260122141652.2444012-1-vivek.behera@siemens.com>
 <PH0PR11MB50131E3DD3D7357AB7EBDDC6966BA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50131E3DD3D7357AB7EBDDC6966BA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6976:EE_|DM3PPF5EA507B64:EE_
x-ms-office365-filtering-correlation-id: 9bef91a5-6a37-43a7-45d4-08de6f79434c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jYJQJQPrAvjUWRnwSkb9qgf/3sgtTYWRy6PziAuZOGI6OhDDxBBRb0hdHlRV?=
 =?us-ascii?Q?ulAFSURL9VM8Zm7nOvzSjQRn4iegjhki7lhuqu54pGI7zuGPEHviPaMgw0qb?=
 =?us-ascii?Q?+YO/z3DypgYHQajTWMUJtNeDX5rRqdHLiyoa82RnxmV8rrqhvJbFdQCfvZFo?=
 =?us-ascii?Q?wV6gXrhxRridZGfnS2H/hTJG8dILgd7umInFTw0lDT9ozqeypTAO09J+HnfC?=
 =?us-ascii?Q?fQn4fPqYhR1rs+oiDJGRBLrCGWApWxuXSb3xTrQycskcgjQn1+2GNe43LLom?=
 =?us-ascii?Q?RpGSwhCikJeePdNnVnnfa5dv2T6iG7dHJLGsJ6qJ4zjPDRPLl4Cq7yPCJl2z?=
 =?us-ascii?Q?1do9+oBVLNOz9jVqqnX/i2FwvHIr91FwHALOd2IiSOFFIpDwe6pmr7nt8NaP?=
 =?us-ascii?Q?CuP3qBv600rJIz55fml7INZz8KCm31lo3xxIQTXywEmYaGOTydRkbI342ncy?=
 =?us-ascii?Q?DsGsjQ73h8B8IKJmfWwn1Kj0Xn2a3MhVYWfSGG4/OPFP5kXtxHKNBOQgP7TU?=
 =?us-ascii?Q?MQ1nJgen+Xk1tUhpxj+vk9MCoMbf3mL9r9YuROb1HwagTgggg8S7B/EbdBVK?=
 =?us-ascii?Q?Sl3TpQTLShklGOySt08gLgGkPk5lDUJWquyekry1o4juCQ+0Oca17q+xEsUu?=
 =?us-ascii?Q?wy2hxKcGZhfFjHG2i8sOZ3rwYCkbqBnUnxizBiJqpkqf0rpjp6pIJquJbSX6?=
 =?us-ascii?Q?CpXAZ9U26vG3nECKx0Wb48nYRbNi2NM7mR3iTh3BClwd/7VCeV+Qs7U2cML8?=
 =?us-ascii?Q?zJuoakG7TynxFmfBsbEl5YxhRibLtfLufrsW1j+vhBXmXUnAMA/qHL/10aa+?=
 =?us-ascii?Q?WyDhO/6q4mdizpRpFsQpUZ2KJLFp8sffRukUYo6WUXI3BGe2KW/mnk00cv1/?=
 =?us-ascii?Q?Q84v6wd5Kc/JmVlwwsYYqzelamQ2gTLu7L7XY9eST2YVJlNTw9jhp0wq6QBQ?=
 =?us-ascii?Q?GZQLjMSLgW0gcUTcaCvjtmQUMpunkjFFfgrBhcSNi28mnOjvi6NRmoihiGyz?=
 =?us-ascii?Q?BpQAVBEaFXoaV72RMUhKCRlnq4rmnziuPLfr9aWsLkhOu8JQitwDkzuwxuQP?=
 =?us-ascii?Q?yYeqhf8NA+p4FGgx/1SKFjb7CQ6iaBMmbY7UlUPmWTybLubM3yxk7FEY4FGk?=
 =?us-ascii?Q?L1hJtPUztWpjSMKCkfUdRjeZdIgXWS1JBrULfRFWpHxVHUGlNaM3AbIftS8l?=
 =?us-ascii?Q?xDxcrpMM0pCd3P5NhEASl9QOm+BM2g6vbwB1BCuPsZq6TW/CY2UZmYoECiRm?=
 =?us-ascii?Q?VQ+C4cj3VyGevCQvaPOjm353ldEMVzylOuFuW2DFxEiNsn9SmYrQvjWnT0k6?=
 =?us-ascii?Q?I6KUZt3AsfXTLdU8/6XJtDQf1aov+Pa5Qf85jEaEUkf2SkLF9/qCw69B0hCc?=
 =?us-ascii?Q?iiDyDMFcIhy0rL6kS8OTmY8/jWrdDQmK1Z3qFV5X9QzEW3RYXFRx60YnFvm8?=
 =?us-ascii?Q?5dqDkeK9DVPXrZj+aJ/Am1f2iaVa7VtQmyWpBzii1tzW2rzr4DmJka1CtAAz?=
 =?us-ascii?Q?p19FvVvOMCZTo93SUT3objiPKKuWAYhrGpKpk8r6F21Y5Jvrh64jrFY2Cpnm?=
 =?us-ascii?Q?Y+u80Ku1KZ1Ln1hSCu9Oee251UCPgOdW2z4IsWjTyUQiyRXkSEpCCdZ3xkq+?=
 =?us-ascii?Q?OetIrsBI86MGUZ6xm6XCpTM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LN6aHugLbPfNvHF8qCyYli/NNjk2c62vA8Thz52DyyUf6EvFunMZOTZep8wU?=
 =?us-ascii?Q?ZFbxVyTIJKmobk/CGQVuNAB/ETbR6r1SqvKISZ7ItYtEXSIERcOpfg9a3sVs?=
 =?us-ascii?Q?ue1e9iPf07NlztFjVi1hfqtdeeX2clp59TPUXn/GW6fE3wZUPzOgLfm9QN6J?=
 =?us-ascii?Q?1JVtCGgxx5YKid8dUH6nRaj0DF4jvDz1yxMAPmCt8XVh8aKb3L8gTtWSok8w?=
 =?us-ascii?Q?KTEv/cYWxEF/l5pJFmnVDT8CgeZHgJ1KVS6o14gdM9riPbhS24Mo7vWDU6DH?=
 =?us-ascii?Q?+QoOlB/etRLJIYwolg5BactmlGKNCD0saMZHS/Grx/akQyIzS3sRCcW5yZ1b?=
 =?us-ascii?Q?9AMhCaed0e6sSBi7baTjUcnfI/O5yXcVxPHWi5ixvJmXDHvZ2ziCxMcaYm7Q?=
 =?us-ascii?Q?ysPA4/xIlp7uLCqv9ffP+UuedWgbD9IQuMDLWZYyEX/A7/oFkgvZL7beIPPz?=
 =?us-ascii?Q?aCioqK5lQvuTjhGjRorG6JzSjdmtxAwY3AoGeJHLimuQTb+vwN6NIlxhZsR2?=
 =?us-ascii?Q?MUH10mRpqMgexun4Eywfd1WNBGGwl22bPwJhIoAmFgqij3uZVqOFgqZUqvnp?=
 =?us-ascii?Q?oHq1uzMXEnb9fRHTLGU65ucGPn3sYVoc8Yy8wKMfUA2Diq0bgHpNo9zgST5X?=
 =?us-ascii?Q?RQfx03PyOCOD+wZsWiOminYd3ZcnETQ5WaoWr+GhhoLFCdb1X4+scuUawV1q?=
 =?us-ascii?Q?CVNuD8kY9fhedqVSqr0ZFLVISrcfERWf1Dg0UiEKELCR4PSOPzNeLDpRvgJk?=
 =?us-ascii?Q?A1WmDjjJJ8sqHpK0v1ueo0WgS+1k0trNB1UkOwnftpwTe7OwtS1OY6Cpwhu+?=
 =?us-ascii?Q?kaIlyeGvQ+oiKjg1xOL0P4Ie2ZX5HxfuqF6sXAmQ+9O8xoRMNWVnPQCsTQFd?=
 =?us-ascii?Q?vg5AONVOMXdVBVFsTbDohJowQZMxat0LwE5koJCzToMGIjbw3nqnIWmdGHV3?=
 =?us-ascii?Q?a1iGawkJ4rcq4Lt3ccMKP9omIcULqBFIkjFkcqRg9MZdQlpL7Yz3EHzp7XmA?=
 =?us-ascii?Q?TpNzDOFw7z2pG+4xlyN6t+5vjLAdAyAFm3IDOw7nF1oNEBiWe7DM4KATUKmj?=
 =?us-ascii?Q?Y27L2fy6UBwQ9VFbO9zPSouWx40P4zeNpo/ipRYdL5Sp1ZLFQPEhungr+T1R?=
 =?us-ascii?Q?Mk+kFFvqiNJh6cUrNV3n27twGI9FHyO5+PPpBH3wEyJmwCANlEh86TFFi6Za?=
 =?us-ascii?Q?xLhYomDsysEn9dv7lSPJZOjtfr7hKmUA0tSMlWf97bFBYTjcL5hJqBmsDTFt?=
 =?us-ascii?Q?izZzfDbEk9lv2hXmaHZtuTC6qNiKHZsFilMwCbKZqwd+6XVD8/L3jXEu2PV3?=
 =?us-ascii?Q?AqqfKBjQqrJcD/QrCWYKf7HL7PfyRbKe8wy/EAMgclDe/CqZ4YjiK2vc/trS?=
 =?us-ascii?Q?mTp2PRJ5+/8vUUvbhnsAB51xzjQ4DfMf8+1A+et1l8KKHGWGSfZjC3qRvRTy?=
 =?us-ascii?Q?tkMhkniWFTU62xG4r9VB3vd8s2zcIxokO0/vkskmU2lnx+vvdYEI2oFC4q6D?=
 =?us-ascii?Q?79lF4g4uFBSsMfX0ceWAhT108PxHFrfUcKlaecnhOi71ysGOOnPQ5RRvZ8yv?=
 =?us-ascii?Q?3raEYRcuhO7DTefjt/d+lbIE4BVYO5Wi20t9EaPk6tlj2l4G/48VxM1dqKXl?=
 =?us-ascii?Q?HX0ulL/eu9axYJzc6m+g/Zm79goF3AmGuOmBmoqi/wyrZjLB7/RLNYdGZSDd?=
 =?us-ascii?Q?qxpsezH/vV7/J9UM90QCwF5W+dHf9aqMk1nY2juTZV4dNmLfQ6C7oBCuyg+3?=
 =?us-ascii?Q?NeCYXsYVsukmOqitw/lN/nqJxLZd/zpP4F4ZIRMd6JMFmsokIVEwMw87h2Ei?=
x-ms-exchange-antispam-messagedata-1: WIeuNhigg/UU4bJEwqZaxvg93aFGwz9kuKU=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bef91a5-6a37-43a7-45d4-08de6f79434c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 05:39:34.3397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k36T1N3PDUGMJG9uu1JJVvPNorO/shK4BVvOrtOoabdUIJPYNHpfj4EmT8dlmBBaDnegSZNKeKNyUnkDd01/y3YkCEbpYetcAs2WpIkax4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5EA507B64
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771479579; x=1803015579;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W9gsvE2MlFHLGxtwgRHXm85Eg4kka2iCSIKPk0iH6xc=;
 b=Jd2Kc3KVui9/vX2b1oN+xDfzaIT2mt3LtpoJHMg23KKgNUwkqupOmBlF
 OhTTig+BcI6YROSpjB8/ows/92kucCGQFZ6srlxLXuEhwPyiPaOoX1W+L
 1VnRW07+7W7iGR4xb/5CL3m5dcDIiUVvOVe61oZCnr/IvnLKbe3bfDwJM
 8eWrgfDk9z0/Y9xLfTzVWlZ9zusrNguh5bpv/niFmy7HQDyKgkCIiXIMP
 f57wifZRfXgOvtvRP63VzzdAHEzBN1aZnfugFC42IEorhcUzNNiJG1DZn
 NjtNbslcpF2SkkiofgTEdbsjxDhg2w8gtup9GMVy10B8gA3XVLhC0QtoB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jd2Kc3KV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sarithax.sanigani@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 69C6015C270
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vivek Behera via Intel-wired-lan
> Sent: Thursday, January 22, 2026 7:47 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> <vivek.behera@siemens.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v8] igb: Fix trigger of incorre=
ct irq in
> igb_xsk_wakeup
>=20
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> queues to share the same irq. This would lead to triggering of incorrect =
irq in
> split irq configuration.
> This patch addresses this issue which could impact environments with 2
> active cpu cores or when the number of queues is reduced to 2 or less
>=20
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  4-edge      eno2-tx-1
>=20
> Furthermore it uses the flags input argument to trigger either rx, tx or =
both rx
> and tx irqs as specified in the ndo_xsk_wakeup api documentation
>=20
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-
> vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-
> vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-
> vivek.behera@siemens.com/
> v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-
> vivek.behera@siemens.com/
> v5: https://lore.kernel.org/intel-wired-lan/20260112130349.1737901-1-
> vivek.behera@siemens.com/
> v6: https://lore.kernel.org/intel-wired-lan/20260117145112.2088217-1-
> vivek.behera@siemens.com/
> v7: https://lore.kernel.org/intel-wired-lan/20260120075053.2260190-1-
> vivek.behera@siemens.com/
>=20
> changelog:
> v1
> - Initial description of the Bug and fixes made in the patch
>=20
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and triggering i=
rqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use
> case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
>=20
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
>=20
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queu=
e
> pairs
> - Fixed check of xsk pools in if statement
>=20
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
>=20
> v5 -> v6
> - Further simplifications suggested by Maciej
> - Included review suggestions from reviewers
>=20
> v6 -> v7
> - Removed redundant braces
> - Updated comment block to improve explanation of implemented logic
>=20
> v7 -> v8
> - Added acked-by tag
> ---
>  drivers/net/ethernet/intel/igb/igb_xsk.c | 38 +++++++++++++++++++-----
>  1 file changed, 30 insertions(+), 8 deletions(-)
>=20

Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com> (A Contingent Wor=
ker at Intel)
