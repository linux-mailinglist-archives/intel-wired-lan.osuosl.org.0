Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A048C838CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:49:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE6FF60661;
	Tue, 25 Nov 2025 06:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3nQ3RBBHgFP1; Tue, 25 Nov 2025 06:49:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BA106066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053379;
	bh=lStVyevHoy9iyOeURgnwpLKzeKutso//4jmpbIT2Cjw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a+HCG+nca/E0TROEeEaltoSv0ssYzbY7O0PCLL/nf7gfuRJUt8H6b6alTBBPUZPem
	 hzHdW4JvmRuVKhMnp94tlG5LC6O//apeTg+StJo4nA2sShIlnU/2VRtJI+GCo/04nM
	 s15ttz9lALZ/VjVaOn3tiU4CymrhVhbKkyCZZLb37jVDWdkXCk8qC3se/jOkJagC10
	 LT3owb8gCZ6N35t5eErFzACA7VHey/WMOYfHtyg5cLEAIbPx1Lj90yleIh+BpTeIJs
	 W8oyBSSIKk4NMs0eBqVU42TmXm7G4OrNb7CzXQ3mNMLdKWwEvlUknVvrhpymoM/hqH
	 YDXCZORRRxpGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BA106066D;
	Tue, 25 Nov 2025 06:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E637E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C0DD80B0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmFuFrmXp_4I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:49:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 94C9F80AE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94C9F80AE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94C9F80AE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:35 +0000 (UTC)
X-CSE-ConnectionGUID: damWwaJhR+y7SP4yaCtb8Q==
X-CSE-MsgGUID: lK02ml2VSiGnODUbqu9b8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77174832"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="77174832"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:32 -0800
X-CSE-ConnectionGUID: yHztUpk/T4auxgUY1J61Lg==
X-CSE-MsgGUID: Y7pJjGsqT2WlW2g+U98gew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="223525892"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:49:33 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:49:33 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.44)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:49:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sJm/HP07RhYGuxHbsf1xS1epWDlO2GBy/SurhH3jhnsCwwwLelhDS7JpPoWBGZHMIU7/xw6pmFuaWd/csIQfelvpVDJlhHxUWmrb84bzlP0NAOMwDY87KCVbgR+sTLctmCR2NwzOxiP1MLsO08lwxmeTrCkRvMa5Vpyzr9zGfEQwB01RxZXAnArCrpQnsT+jQ6rTAKgsiyIXoPqRSfAE6FvHC+/9QCB1XMO+R/ntjqG6aNdDSmdy+I1iD4zbxl7qofH2zEd04A4A63JVoYrBabBk2zOXFwWvrqB1nA6h4JhmNF4oWBSfpQVPrkJsXFhs3XIU1OlA01MCLnFjTMYHVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lStVyevHoy9iyOeURgnwpLKzeKutso//4jmpbIT2Cjw=;
 b=P7lvim9zSO+RrLzALATE5txwEytoQypReJ657rLp28kQUbGqu/hopdHiPruOsvUahE/znCnB+uefFMK9hg+tTzH4VR+8f5a64GYuGmJVqyn25+wnu9obLbAV+JMcDhndJSzzgJft9dUrBf7GvzohjsPvlkxLFIxLchv6NZY7JOIA4TvLMiHNrWSiX18DZhJYTsA4kkhRZGpgr5RjTrJVP0FTr7jGR+Pn1KTksfBA0V9GAExGfwhThKU1bRdazpGFQFp+2lYNQKwF93hDHir9SUQBxy2ZAEnY7thn3przLwSMjpGKNhrhXXpijhRSzeUNBCNUDjddWcTGKkR4l2HP5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:49:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:49:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 6/8] igc: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW7wLCMpRpLi3k+YXv8pUfwOErUC9GQg
Date: Tue, 25 Nov 2025 06:49:31 +0000
Message-ID: <IA3PR11MB8986324347E05CC4C99897B4E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-6-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-6-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: 5f332b49-7986-4b26-a4e5-08de2beec976
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?RHM4RFZEaHNwZjdVK2szUkFNdndUbXh4SXFzVU01QTFIbVh4cGF0cVlkdDI4?=
 =?utf-8?B?ZjFDYWs0OFpNU1diRm1OR0tCTStrY3p3ZG5wVFVGekwrdzdtR2h0WnZpNVl5?=
 =?utf-8?B?UUVuZ1IrQjZXVkJidFFjVk5ReTNWd2NFc3VIQ09tSUtnREc3RDRoRWlZb01P?=
 =?utf-8?B?cGdjWkwzNFFOVU5DU0tHOFFMR3gxdk9SS0Uwb0xWZVUvbzlwMDV0SCswR0FE?=
 =?utf-8?B?U0NwM0tiVk1tSmg5QmlTMEo1YzhlWjFiQVk1OHI4Z2JoeG1LQUgwWUhrSlhV?=
 =?utf-8?B?bjhkbU4vMk9yU2RZY085R2FHNFVOV0xJUHJiWGcxdlVkejFCQ0FOaThUR3Nw?=
 =?utf-8?B?cWhlaW54ZGxOMzRjei96aGFwSENJOXJ2OVl5TEliUGMvNk5JTlJVWUJkRkJ6?=
 =?utf-8?B?NjJyRnhoblpiWjdnOEEwMEcraG5SL1JUbVVCRFAzc0YyOGNTZmdQa1BIS2lU?=
 =?utf-8?B?c0ZGeGlhVWhVZVdENWQ5bUZNOE9TcUhVRHgxeDl6MW9LYWtYWSthZDlld0Mr?=
 =?utf-8?B?M3FlbGJ6cDRiMnJxWTVVS3Q3WnBTZlV3cEVlMDNmb2lsMmttNDZ3eVhabkxj?=
 =?utf-8?B?bTFjbUw1MVI3Q0tYS0gvMEUzZDQ5WkZEM1c0QWEyMkxhd2VueTYyS0FzTWp4?=
 =?utf-8?B?cHFXZHVWM24zY3VIR3FiZ0pyL3MyV1RvUEtzaHFQZmV2ZW5xQmZVQ1VBKzNW?=
 =?utf-8?B?NS9ESVlUb29Na1dRN3R5a05PTDR6MWFCOEJuZGh5Y3pBSExTR052ZkZWekUz?=
 =?utf-8?B?RTd3MkJ4MXgwc1hUVGc0L2NzdWsxOUk3MkRTT1NHdURxYzA2YzJlWlNsK3FV?=
 =?utf-8?B?UFdmcFJOcUFyd1ZLZXc0UW1QSlR6KzFVbE1QbkNHM1dTbGowd3ordEdCdStV?=
 =?utf-8?B?aGdUMy9ZSDZnbzh5YUI0L2graWRzZHdZdXY2TlJvOTFnSGdMdXJyck5WaVdE?=
 =?utf-8?B?K0ZvL3BRR3NyUHlEcWc4RTJGVkIzVGZJSnBtSWdIcjE5MmhyY3NRQjFiSFFY?=
 =?utf-8?B?bmVsVzJNdVdKZWR6UC94djNZcDY4MmhFeWFURWlSYkI1cXpMd2lldStxbFFy?=
 =?utf-8?B?Tm1IZFFxMFh1T2srb3Y1NHVjMDdoYUhKclEwdlJLMHJwNUUzd1hvV2RpK1dw?=
 =?utf-8?B?ZlZFTlZMZU1qdTNPeE1oTFJzVUU4MWlJelIzNmlEWE15V3N3MnBJdWNhTUhK?=
 =?utf-8?B?TDhPSklKbXRpQXJnRTJkNG5FQ0xWdG5BYU1EMzU5cmNSd283bHNwVExxMXdt?=
 =?utf-8?B?dWNiZTQ4am9aWFFjU3FuQldsTDR0aHVYTElmd0RNblM1SFB3OVgxdVpuelJ6?=
 =?utf-8?B?VXZ4SmYxTGxFWnF5V3JzZWdacWFGWjlYRXNpbjcrUnRYQmRoNUJZSFJlQjc1?=
 =?utf-8?B?OTN1REhOcTdrSHliQWtRVzlqSXZYQmY1Z2RBNEtpdUNOTXN1TG41b2lvRXdL?=
 =?utf-8?B?ODl5VFhxQ1hleVVUaDA3UFV4V2dOdEh2RGJlMkxEU1N1L2VVck1pUldkK3pz?=
 =?utf-8?B?VkNIOW5meWpTeThaN2dGcXdIZ1RlOHcrMU5GY2hZUTFwQmxBUGRMNUJtbVlK?=
 =?utf-8?B?dlVuMmdiaEZkRm1CWjQwWEtpd1RZVEFEMlFId2hPd29VcERRVU1CTWdKV2NH?=
 =?utf-8?B?UVAvU1d4TFpSbnMvcWVwZWIwQVVRSE52bVRzbWNEZGpZQVE4N2NFWmh4Tmp3?=
 =?utf-8?B?Q2lXZ3hPbFhibEtzZHhlZHJEQ1BCR2Q2QXhvbjFQWlhYUzZUWHAzUUFnMXFS?=
 =?utf-8?B?Q1kzekNhWTVsU05BSkx0MmJ6Y1pIeVoyY1F3ZXdnTWNsVkQrT3ZXaEFSUjBQ?=
 =?utf-8?B?bjg1ZkhqNGNLS2xSOSt0NXFGb0oxcGtrcVFIVUpQNXUwaXhYSWZOY1dRdGJQ?=
 =?utf-8?B?MXBHSmtZSlE5ckIyVzBlZTZkRmtMdnF5QnVMdUM5SVVSYUJMbi8yU2dqaUlH?=
 =?utf-8?B?YnJEZURncnpvSHZBL2pxR1FBT1JUdGJjNmVYdWpEa0lFZDl4ZDJiZ2RZVVJr?=
 =?utf-8?B?eUFFN2puRW1MajhxWHdNanpGMjRaUzUzbkZjemdvKzVKdVNQL3VsNllaN2Uz?=
 =?utf-8?B?STZDUzNFWFNhb0xYODN4cE0vQjhZTFdRbDBuUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWg1MmtyRnJicXJ5MTIwLzNaTlc4VkRVbHl4OGlHRXowdUtFRDgxNkF3RHlp?=
 =?utf-8?B?cWpsdHRWL0hzZjdYb1dibmFwcklMWjQ5YmpxajQvRXhRZFJMZVVUT2Eza3pq?=
 =?utf-8?B?RU16K1pMYUhZb05yeXY1KzBzOHNlWFFQL2Z5K2xHWS9WT2pIRkJRYXpBU1FU?=
 =?utf-8?B?SXFvMU5SOUlwRkgzcHVtVkJZd1JiOGhOd2VxQzcxSEh6U2VxUnEzcG9URG5v?=
 =?utf-8?B?TWxsbk1ndWROWXk5V0lDL1NqWHpQQXlXeXZSdDhFS2RTZWpmY0hIbDY3UWJu?=
 =?utf-8?B?V3V3TVFpdGg1bXNUYk02dG9HSytLSTdaSE5SZjFsTGV0U1lFVmRnRFIrVHp1?=
 =?utf-8?B?ek10M0JnTWdmbkx2YW5uMmM4bEZ6Zldlb0tBS2tmcVREekZuNmxvdVQ4dHAv?=
 =?utf-8?B?Yi9ZQ2FSWXN1eHJXT2QxUnhZbHVuemVZY3o1eVpKS2ZlbkNadTlaMTRwMzV1?=
 =?utf-8?B?Q2Y2K0xNNEpNYmdZVWdXUjFyWnFHQjM2Qys1WlY3eERxeTl2VkNnVG0vWVBo?=
 =?utf-8?B?RXFMU0ZTNTRicHhGRDFKUEJadnZmOGc0cHozZGl6TG9IWWUycmxza0cvZG1K?=
 =?utf-8?B?dkUzUFEvTXpaSE9idEtXTWRoMWVzUnFYOU9YUFZnSlhteEV4eWIxcVZqc2NN?=
 =?utf-8?B?QVNOOWR1WFNIN1R0cDNHVisrcktNcndCYnNsTjJlcjAyMWZXZjM4d1pqZ1hX?=
 =?utf-8?B?cTdaL0VuRWJlc0ltMHRIYTZlYkR4U3NxRFFoeVk1RCt2V2NxRG5xRG56WVUw?=
 =?utf-8?B?SjBzM3FIY1RSdTV5ZHhQZW1SU0QvK0I3bWZHdzExb2JBc3hzRjlYMlQrYXhV?=
 =?utf-8?B?dGM5elhuUDkrVVNVYndaRmNRTmhmSm5QVXo3RzRodk14OWw2eXhhc0JFenp5?=
 =?utf-8?B?dDBOa2lnOXh2S25nQ3dDUTY5Qi9mMG1JMmVtMkE4aGJ4U2l2QkJJMUs5RlEx?=
 =?utf-8?B?bDU5OWRwT0JwU0dpbDZPY2k4Q1dNWDBKd2IzTnBBbEtWdmV3Nk9naHhnQTJy?=
 =?utf-8?B?b2QyR0NSc2xWdURSQjFDZ2hyT2tSOGlMc0JRMW0rTDdmZ1BJNEM0Y0ZFaHZT?=
 =?utf-8?B?QUN3ZnB5Wnk2ZXNBZTdqRm03TGpJOHJKTjF1NWZZN3hNOGs2TXQ5TllGajhT?=
 =?utf-8?B?UkJOeFN6V0luVzNvMk4rTXlzci9JaDgyT2V0Mm5NS0xhWjlTcGRiYUNEUitj?=
 =?utf-8?B?SUs5dDdpdE1VV1poMVJOUFcxMnlSM0FUYmxLL0VtYWpRK29uakRRNjRmeTkw?=
 =?utf-8?B?TFBhTElJMUduYUVXaW5pVVpzZlpSVEU2K28xbmJSRlIzSEM4MmZhVnFzYUF3?=
 =?utf-8?B?YThKdkMrTHI0SGlQeC83YzFSWmNDVnhqMWFwc3JmQWlHVmNtdU0zRjRtSXZD?=
 =?utf-8?B?K0xYYk4raXl6bmpIV3B5SXVnUWppTS9FMnE1K1N4Zy8yekExdkhqYklRdXdR?=
 =?utf-8?B?NERtNjYvUXhxSEV5S2RzV29PTER3OVNWdG1yNHVWVzZ2TzdsY2JxTUpOWGZS?=
 =?utf-8?B?RThzN3MwZmNQQ2cxQ3JYS2NOQmYvQkYyc0tRUVpPenoxdDFYNlpadXdmZE94?=
 =?utf-8?B?cUlma01mWm44cnJ1WFl3c0ZkajZGMlZibXVxSmlOYWVDRDdEdnQveTg3ZE56?=
 =?utf-8?B?Uk5aQUovbW5WWXE2QzdocFhFS3lQSEZwcWdINUVOMGFhT0FybllkY3c4WmUy?=
 =?utf-8?B?MmN0b05GejJZb1c5OUMrSnp6UEpCVkRnYVFBOVFqa2tsRWM4SDExanRIazZM?=
 =?utf-8?B?M1VJcVZoRUdXM2IxT0x4dm5WMTFHOWRuNXZtbUE2ck0xeUcrM0c4OGJPbzZ2?=
 =?utf-8?B?Tk5zeFhNVEthOG1kREcrNC9ZSFFQU01VYnlYa1BTZGliR3ZZbmY0Y2Y5VWhw?=
 =?utf-8?B?TUd2bU1KMFpvcnBOQnVpUGpWZnFRRXFnd2VPZGJMeXZKZGtuZ1NmN3VTalZq?=
 =?utf-8?B?UkdLNFpHMjlUSzFETHdsc1p5WlZHYytwUFFxamdweGhkN2JOcUtGR1VCcU5k?=
 =?utf-8?B?YStMNG5lR3NKVW5QbHU1VnA5Vys2N0tpSXRPWDkwakg3Y3BMK0wrSFdxekRi?=
 =?utf-8?B?dFlVelJST1lPbTF2aVRQZzBBVEVwZWhsZWtIdkQxa3pKdzNhVzFnOGs5VU4r?=
 =?utf-8?B?OWlKbEJDa0FYNUpXOWk3Y3JvTkN5ZFJocFc2alRqU0hvWUk5NTJQV2xhVUQ5?=
 =?utf-8?B?TUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f332b49-7986-4b26-a4e5-08de2beec976
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:49:31.4948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bIcBTHlyDu0qE0v129NzjFVFtt1GCdJMDlCK/hd6bQQDRZ4hwQnswmjDCQdQJtSZJ83jeBznVtBhVQspV6UP7eiKgbCL+aEZnmcOIt/FxgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053373; x=1795589373;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lStVyevHoy9iyOeURgnwpLKzeKutso//4jmpbIT2Cjw=;
 b=mQ+BZcfb9jQ1SJq1JpzkXw4o5pW6SC0kwjJKlFl0xIQMXbHYpHT2U4tW
 Wev3UOxHIMntxmN9zNg3zDfI+iY4kGqRctP5syJ9Jrhrg4Q0LUvovl6YZ
 5wMQsgiVefBIGmsh1UcBSE0AkEdMhdjeUiThf7siEl7h7xWE6qW89nBSa
 vRfbO27v3l5+K3vL6vXEWnu32yu/TXoypBqV53v1leSlCB8k2ew4fsI5A
 8VVJ2wbdFfmNI5k4amWzvXuJKmiPr7HPn7N/kuscJUdcBMIbLNO7+bZL7
 xAc/iXFIpl/k/sHNCj4bxKUl/N7MBU/OhAhAwG2Y66q8N+JvCdBKm2ZIq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mQ+BZcfb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/8] igc: extract GRXRINGS
 from .get_rxnfc
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0
LmNvbT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5r
dWJpYWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dz
a2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsga2Vy
bmVsLXRlYW1AbWV0YS5jb207IEJyZW5vIExlaXRhbw0KPiA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCA2LzhdIGlnYzogZXh0
cmFjdCBHUlhSSU5HUw0KPiBmcm9tIC5nZXRfcnhuZmMNCj4gDQo+IENvbW1pdCA4NGVhZjQzNTlj
MzYgKCJuZXQ6IGV0aHRvb2w6IGFkZCBnZXRfcnhfcmluZ19jb3VudCBjYWxsYmFjayB0bw0KPiBv
cHRpbWl6ZSBSWCByaW5nIHF1ZXJpZXMiKSBhZGRlZCBzcGVjaWZpYyBzdXBwb3J0IGZvciBHUlhS
SU5HUw0KPiBjYWxsYmFjaywgc2ltcGxpZnlpbmcgLmdldF9yeG5mYy4NCj4gDQo+IFJlbW92ZSB0
aGUgaGFuZGxpbmcgb2YgR1JYUklOR1MgaW4gLmdldF9yeG5mYygpIGJ5IG1vdmluZyBpdCB0byB0
aGUNCj4gbmV3IC5nZXRfcnhfcmluZ19jb3VudCgpLg0KPiANCj4gVGhpcyBzaW1wbGlmaWVzIHRo
ZSBSWCByaW5nIGNvdW50IHJldHJpZXZhbCBhbmQgYWxpZ25zIGlnYyB3aXRoIHRoZQ0KPiBuZXcg
ZXRodG9vbCBBUEkgZm9yIHF1ZXJ5aW5nIFJYIHJpbmcgcGFyYW1ldGVycy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEJyZW5vIExlaXRhbyA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+IC0tLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19ldGh0b29sLmMgfCAxMSArKysrKysrKy0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2V0aHRv
b2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jDQo+
IGluZGV4IGJiNzgzMDQyZDFhZi4uZTk0YzE5MjJiOTdhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYw0KPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYw0KPiBAQCAtMTA5MSwxNSArMTA5MSwx
OSBAQCBzdGF0aWMgaW50IGlnY19ldGh0b29sX2dldF9yeGZoX2ZpZWxkcyhzdHJ1Y3QNCj4gbmV0
X2RldmljZSAqZGV2LA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB1MzIgaWdj
X2V0aHRvb2xfZ2V0X3J4X3JpbmdfY291bnQoc3RydWN0IG5ldF9kZXZpY2UgKmRldikgew0KPiAr
CXN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KGRldik7DQo+ICsNCj4g
KwlyZXR1cm4gYWRhcHRlci0+bnVtX3J4X3F1ZXVlczsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGlu
dCBpZ2NfZXRodG9vbF9nZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwNCj4gIAkJCQkg
c3RydWN0IGV0aHRvb2xfcnhuZmMgKmNtZCwgdTMyICpydWxlX2xvY3MpDQo+IHsNCj4gIAlzdHJ1
Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihkZXYpOw0KPiANCj4gIAlzd2l0
Y2ggKGNtZC0+Y21kKSB7DQo+IC0JY2FzZSBFVEhUT09MX0dSWFJJTkdTOg0KPiAtCQljbWQtPmRh
dGEgPSBhZGFwdGVyLT5udW1fcnhfcXVldWVzOw0KPiAtCQlyZXR1cm4gMDsNCj4gIAljYXNlIEVU
SFRPT0xfR1JYQ0xTUkxDTlQ6DQo+ICAJCWNtZC0+cnVsZV9jbnQgPSBhZGFwdGVyLT5uZmNfcnVs
ZV9jb3VudDsNCj4gIAkJcmV0dXJuIDA7DQo+IEBAIC0yMTcwLDYgKzIxNzQsNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGV0aHRvb2xfb3BzIGlnY19ldGh0b29sX29wcw0KPiA9IHsNCj4gIAkuc2V0
X2NvYWxlc2NlCQk9IGlnY19ldGh0b29sX3NldF9jb2FsZXNjZSwNCj4gIAkuZ2V0X3J4bmZjCQk9
IGlnY19ldGh0b29sX2dldF9yeG5mYywNCj4gIAkuc2V0X3J4bmZjCQk9IGlnY19ldGh0b29sX3Nl
dF9yeG5mYywNCj4gKwkuZ2V0X3J4X3JpbmdfY291bnQJPSBpZ2NfZXRodG9vbF9nZXRfcnhfcmlu
Z19jb3VudCwNCj4gIAkuZ2V0X3J4ZmhfaW5kaXJfc2l6ZQk9IGlnY19ldGh0b29sX2dldF9yeGZo
X2luZGlyX3NpemUsDQo+ICAJLmdldF9yeGZoCQk9IGlnY19ldGh0b29sX2dldF9yeGZoLA0KPiAg
CS5zZXRfcnhmaAkJPSBpZ2NfZXRodG9vbF9zZXRfcnhmaCwNCj4gDQo+IC0tDQo+IDIuNDcuMw0K
DQpTaWduZWQtb2ZmLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92
QGludGVsLmNvbT4NCg==
