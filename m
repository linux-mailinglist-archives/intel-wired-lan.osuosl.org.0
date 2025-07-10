Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2B8AFFF58
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jul 2025 12:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A7C083B04;
	Thu, 10 Jul 2025 10:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fiErXEB45tL6; Thu, 10 Jul 2025 10:34:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D66FD83AFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752143646;
	bh=zpyHSPANBOSKrOKqYYjsEvWl7B/bWt/tVd/LlJLlVhc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FkT9xxJFZFSQ7EFGGWiUo93jAfgXWHwF2a6pHf/hEisb2U7WAGT9zvizd+gVGYdeY
	 9ioIE7+DaABkFg2ELHOiF8SWXKDXXTf4pmgy362xcXoUHX5rzmAt0Wc5LOPkUKRl4o
	 kr6nT3aQPtR+QIuDV+x2MWm5rqiHvhokMYdIm4r04PYGveC3JWASxXOtT4PChbyNDg
	 oM6cHJbrZ/IRXIc8gQ9QE9HUk5eCPDcsXyTZiqrP1NckR5fbgRc3aPOErmOfYmzXg4
	 HDWTbHkykCXqZx3nT3NsrJTTrEA2YiMyIIZemAezhqxPQcOiWSJYzWTEqTAqBdkY5f
	 rHLz1ZZbEbAdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D66FD83AFA;
	Thu, 10 Jul 2025 10:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D11012E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 10:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B72E60EE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 10:34:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f-5EVGU4_6fp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jul 2025 10:34:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 35B2561095
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35B2561095
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35B2561095
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 10:34:02 +0000 (UTC)
X-CSE-ConnectionGUID: O/ZzHqxJQbOGbJ+eyuJH9g==
X-CSE-MsgGUID: w1/qTKApTpCAoy+gMa1u7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="76963483"
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="76963483"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 03:34:02 -0700
X-CSE-ConnectionGUID: vusuETHFRrKGljKYpumyWg==
X-CSE-MsgGUID: 2fkn5W3LQmqt4YoP8a+d5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="187015031"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 03:34:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 03:34:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 03:34:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 03:33:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ButJZ/nVvqgvYH6+bmpZ66qhRH2LCWOPIqBg8WAogJlK2s+KioIYqoT0olkyxleum/4YGE2/wWRVK9M8wZX+tAMux7zQOS8hB7truH7dynp9Kk6CujxiZDBsa9VBMnSBlqwJuOxrDtqW7Ft14+JBB/klBETXykMefOleyO3IB/b22x17kPWnSxC3HFuu5AyILoIReYwXFKgJxConeRPd1FTdCOyu7bDzqItgzfnvh2zA6RC4WlmZwFvGjq2bNdqiwNmoAEY+lZKUFxGy8IQrLwk4poa79VnHR8xfXv7NzlSNTr5u5RbI9eZM+O9KPyOez/ZTJSl/EWv6bme2WShsuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zpyHSPANBOSKrOKqYYjsEvWl7B/bWt/tVd/LlJLlVhc=;
 b=rSFbk4VdTv3Fl6cpT4ucb0lKv5qUc+TCoVcHWOCdrbLjPdQ5mt39Jhu733B8dbuaKrYcfCjJPMKM2XTjVCG0awVSRrbI5S+uGBz6H0z83FqfI92nMEN/PiR3Xu57LErR46REasxsF3yGEB3dwNlz1V1WnLzA3NgXUasm5nML2KBCfOl5mFt8INqf/WDi9Cy+GVM4Ek8B77dCdFRjs1Xmud25Y2R6ZdKlfjw0oc3Uk3aP0lBE28OkmvYEL9tXd3u0mlpWtVX41B1A2XNBSg9TMEUhONDtk8FtlALmqaMc/4hv1IsyjsBGGPrQdokTU0V6s83qFz04R9z5uFRNtcDxHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB7413.namprd11.prod.outlook.com (2603:10b6:806:31a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.29; Thu, 10 Jul
 2025 10:33:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Thu, 10 Jul 2025
 10:33:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>, =?utf-8?B?TWFya3VzIEJsw7ZjaGw=?=
 <markus@blochl.de>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Lakshmi Sowjanya D
 <lakshmi.sowjanya.d@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Bloechl,
 Markus" <markus.bloechl@ipetronik.com>, John Stultz <jstultz@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
Thread-Index: AQHb8Pb4oXPIc6UOLkmuH961Jd6n0rQrJ+0AgAACSqA=
Date: Thu, 10 Jul 2025 10:33:56 +0000
Message-ID: <IA3PR11MB8986B554A8E1383F3D94DD58E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250709-e1000e_crossts-v2-1-2aae94384c59@blochl.de>
 <20250710102516.GP721198@horms.kernel.org>
In-Reply-To: <20250710102516.GP721198@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB7413:EE_
x-ms-office365-filtering-correlation-id: 7621d398-eccc-4ebc-ed5f-08ddbf9d4661
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SjdmdU9TdWJ0NWdjTzRaYUtOSlNFcmh5VTFTN1g4bU5rbDRjTVRVZFZpMmVZ?=
 =?utf-8?B?QlVraDB0QUR1Szc3WndScEVYNEw0Q2RsMmErVEhpK2J5UlF4VXBDSHFueDhQ?=
 =?utf-8?B?K0tSbjBNbnUvT0hnQzg0Y1pIOXozWmxYTWovM0JKbkZRUUZsanpMSDFFRHhj?=
 =?utf-8?B?VzFja25adEUxRjkvKzFLVVFVTUZDREVETmJ4amJjYnNIcnpvdlBRVzIrWEFW?=
 =?utf-8?B?cGRNSmlacENYVlVRb2VQV3JvSUpKR0MyKzBwZ1FYUm5yNFBJcFJnTGFYUmhz?=
 =?utf-8?B?Z2oxSXFXdG5XemY4MFVGeFBqbEdHb2RVVEVJQWUwVG9vVndEcHNoWnhTckVm?=
 =?utf-8?B?V3lRUFdRa2gvWkdoZzU0d2xxeW9ZZk9vanJhR2JGdUFWazdqMHljc05tUys4?=
 =?utf-8?B?bDFyMHdNMWpVNFY4bDA4S2N1bGpwRHQ1SjVQRFhHSE1ZSFNjK1hVY2hiNTdP?=
 =?utf-8?B?eUxzRmdSeGFkUDRwczVyOHlEVitWV0lWSmxkNEwxOW5NZDk4dWV4c3lZNVBO?=
 =?utf-8?B?TjE5YkRkeXVTYWRXRUZDRk5ER3lhbFVIaERrRFRiZExGQ25ULzF3bUE1eFRD?=
 =?utf-8?B?ZEhzVjI0Q1FyRFVDOU5XYm56YlVvazJVUngxNW1KK1JGMWlsazM4UmF3KzRX?=
 =?utf-8?B?bE1zbTBQRXV0OWt0ajZBRTQ1dEx3VHdSV0psYklpYXlxL0JmcjhueHVVQlJZ?=
 =?utf-8?B?Ums3VFgvaG54SnZhTmlrYnZiN1pZSjZwRVNDNnE5cGR3czJ1TWVJeDV1SlBh?=
 =?utf-8?B?d3d5dmRqUFgwa1JkNlFZMENUZmpzZVFFRFZsSTh5TUJ4ZDBNK2ZvTFJyWnBS?=
 =?utf-8?B?ZkszL2RhVjYySlRWWmhhMzlTcVJNTUlaR3A2VHBIRGZjUTRqRCtJTFRKaXhW?=
 =?utf-8?B?L1BHOVR0V1N3Z2tTSDBtMVI3TE45VFhYZ29CSFJpSUthT09XNldrWmR0dkh2?=
 =?utf-8?B?WlgzcG4yaHdBbTB2MTBXRnQ1Y0llOFJXMDRVMFpDZVFaZWRJNktXN1RwbnNI?=
 =?utf-8?B?cmZWdkJzbFZGZHFnNXhjdkZSVnRpWkw4YktDei8xSXJwOVowUk1SdU8waW9T?=
 =?utf-8?B?L2o5ZTBIMU4zVVU4ZVdTcVdJb2tkNCtLQS95OHBhYWxRSGZNcEJ2MFd6SDcw?=
 =?utf-8?B?U2NsaVNzbW5yMlllTWFhb0ZLNlMvZ08zOFBaQW4zd0I3dnRvR1hzQkNHL2VY?=
 =?utf-8?B?eUZYaWloWklzcDZibEJuemFqTGszcndOWkR5V05xWVlOd1d1N2VUbVNMMk1M?=
 =?utf-8?B?TkRXUzcrTmNVUit5NWJKSnlZaEpQZ1hlWFA3TzF3ekJOOExLVWdjZzI0WHpG?=
 =?utf-8?B?dHhhK1B5OWNGUURmVXdYZldIWEdyNmVuWDN4Nkk3V2tnVmJqSXl1QUdaMWdJ?=
 =?utf-8?B?RVJ2K1c2L3BxRFE5bXpHd1dQQmZ6Vkg1QWh5SnpBdGxGZGl4bXZaWWp4OTcr?=
 =?utf-8?B?d0duMTlXeXF4alpYdm9TZGxhbGZHZXlCQmNuN2MwaTZFOUNidWJ0UjB6QTFG?=
 =?utf-8?B?ek9FOHI5cDRKeHQrbVBpYUU3L3R3Q2lGbUJ0VVErcHhoK0hpZTBTU3BxZnhR?=
 =?utf-8?B?eUFNUFBySkJNZDNHbEhXYlVYWlhtOXhJL3Y5UnFCMkcxenpEWlUwcGE1VWVh?=
 =?utf-8?B?dmdMRy9tOEFwellzNStXWTFnN21WemhxV1dwOHkvVlpOY09McWVPNWV1ZC8w?=
 =?utf-8?B?N1ZjZzRySDlTbjFVTTQ5NzI0cUtKeWZtUWZmaTNWeXFTc05WUWlQSU84V3lF?=
 =?utf-8?B?OGFWN1pZRzQyRFVJWkxKUWd3bExWQ3FsREt4by94RUczWUZuYUcrc0JtTVhr?=
 =?utf-8?B?WVJVR3doRkswNS9HRVJIZXB4dWgrOExMTnlCdDBuM1ZFL3JMeG9MRXNvcDI1?=
 =?utf-8?B?VzhGeUZ3aEl6MjdHMjNBOGVncW1rb1d6dTQ1TXYwWkZmMERiS0lLR2REcng0?=
 =?utf-8?Q?DMJdJQmC3EVKOFN+Hn6EUb9cu0PHsRVJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWx1OG0xdUFubEdpMHZGU0ZnN2ZzaGpIL21yYXM2MzNOdTJZVkNkcHFzbXVR?=
 =?utf-8?B?OHo5aGRxUTlCc0RHdERBL3NEM1R6dEM0cklNbE1SdVFBY0lBcUEwN3pFWXlo?=
 =?utf-8?B?WkpRWFcrVUhHaTJRRFl5M2ZxT1d0NTdDS2lDa1NQcXF5dmd6ekR0Q0pBdS9U?=
 =?utf-8?B?bkR2RjhvZll3WXNuMTdkKzZWa3NmRHR3TG1rdTBxQVdyWDNTZC9WNDJpclN5?=
 =?utf-8?B?NlQ0UzNXT0VXdzZ3emFLY3lTSjVKVnB0cGVtMUtaTlNQZlBkSG5VdzVSZEF6?=
 =?utf-8?B?R3dPNXhWQ3NsK0hxd041UzZtMkJVUFNwemlTSWhTUGZEWURzVi9PQVdMNnNE?=
 =?utf-8?B?MThGOFZKV2ZvcHRuZVBVSWdycUFFK0lEUWU5TEFVNE94Ny9obFFZSDd0RTZo?=
 =?utf-8?B?UHJoS2xoSUUrVlBGaHZEa1VOTkxHZ3JLMmpMbGpkMGh4WiswRElkbFdIRFN4?=
 =?utf-8?B?Y1R5M01GUVFhb2RnemU3OER1cWF3TlU4Zi80REZ0eVlBZDY2eVNSdVFBbUh0?=
 =?utf-8?B?WGJoVUt1WXhlTVpvQmZIVStkdXhmY2tKWTdtTnFJZndoWFZIUVY1V3VlYXVr?=
 =?utf-8?B?Z0JRWWVGWU56RHpKZmRTaHB5TDZLeFJ0Z3k5VTZlUUgzRFh5QVB6U2gvTVQx?=
 =?utf-8?B?NHQvVkFseHYvK3IzNHJNRFNUUm9zMEtkU0RiUFkrQ3hrWE9MTjQ5dC93MWVj?=
 =?utf-8?B?VGFCeUN3V1g2M3owaWVsdmU0eHZuRXdUL3dRbFBtT2xLcGc5dTBGV29Yc1c1?=
 =?utf-8?B?aFVobTZRNVJhamVDajFwaCtmcEJLNmppekwwOU5HVkp1K040TWl6a0o5anZR?=
 =?utf-8?B?MEN5V0xCOUREVmkrcUJqOWNPcWN4NU1RNlN3T0pBSFZFQTVSWk1XUU9ydUR3?=
 =?utf-8?B?V3BDR3NtL20vNEhGTjN5Sk54VFZEaTRGZzg0S0RqdzNKVVhqbVNWWmNYN0RW?=
 =?utf-8?B?V2RjWDYybXBOWmpIaC9vQWxweCtRdHpsTkRBeS9EbXU3VzRNaWlWRmlZWElt?=
 =?utf-8?B?eGRLalFHRW91dFdTZkdYM2IxK3dSSml0Z0FUNkptK0ROL2wrdGg4OFB5SmRt?=
 =?utf-8?B?aWRLdUxKdVdNcWU5Y2FkL3Q1K0hIOU5vZzRQRWlKaERvQkFLNVRibWV3K2xJ?=
 =?utf-8?B?UWtwaGdKWjRacXNlNHVNbk12RkthNG5Fajl3OFBKSmJ4aDdMMjVMaTNndTZO?=
 =?utf-8?B?OFZ0S3k4NWZOcmd1VzVrZVRFTUFmNmM1enRyZlQxT2lNUE9JdDN6NnFCSC81?=
 =?utf-8?B?dWI3NHhyNldiZVdXUFRvWmtHNThKSm9aWTZjSXJXaGRTejJNSCtqcHk0KzZ4?=
 =?utf-8?B?ZVU2MkUxS3RaOGFsRHQrOHhDYXlyaFI1eW1sMHpDM3hMZDQ2c3JOS3duVVRk?=
 =?utf-8?B?bWhKT3dDVUY2TU9oeWRPWGg2VmlXenc2K2REYm1lMGM0MmtRd3NRemcxbXhF?=
 =?utf-8?B?SEJRWU9DSzdRaE8wMFZsRWh0R21IellBQStCU3ZkK2t1TElSV1lqaUlsblBj?=
 =?utf-8?B?OUNmQkdFZjVXNWcwMFlUZDh4eGNLSmIvR2xWb2x4bHFUUldqRGs5dlRuUFQx?=
 =?utf-8?B?UlRlVGRHS2VMMVd6WldyTERTaDJXSmk3WWRtVmp5bGVKdmZnSkhoaUJ3QkQy?=
 =?utf-8?B?V1plVUNEQzV4cmFFL3I5QXpSeFhyc2YrdWhyNkpGTFFHdklsZ3gvQ1FOY1Z4?=
 =?utf-8?B?K2kzZno5WlBZZ1dvUmZnaUpod09TamRmQWtpOEJwaXVEVjJkZFVKdGVxbXpX?=
 =?utf-8?B?UTRiRXp3NXJqK2oxOW5yeHJsV0w5Nit0d3lTdDd4QU0vQUFweHlXRzA2dGd1?=
 =?utf-8?B?M3ZTdUVtbjBJNno3VnVyNnFacDlhZHpkYlJMSUtUdTJNT0FRUndlZ293MHBO?=
 =?utf-8?B?VjhReTMzYXdTZi9ISHhaMXJLYjBTK2V2clZPL090eXQxYVQ3MnR6VjFlSG1E?=
 =?utf-8?B?UkdxM01QNm5seGR4MHF2enN5MUJrZkxHRlN6MEtQUWhGaHQ0QnN4ZGxkVjZD?=
 =?utf-8?B?WEoxN1BWcmU1YVpzNU1leC9ld04wZHdDZUZGZHFuK09LY3NONm1qa3htTy81?=
 =?utf-8?B?RUVVRCtmQWMvcDBrRW1rMWZVdW9PRG54cVQwUHJlbHVsM0JGMFErL1VDQnhP?=
 =?utf-8?B?VThZV29kSERqRFNyVlAwQWVZOGlqcHRZY3ZaY3BYNXZHRlZmSHk3aXRBcGhS?=
 =?utf-8?B?Qnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7621d398-eccc-4ebc-ed5f-08ddbf9d4661
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2025 10:33:56.8042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIZm2TwrV+qrbSPllURHfbASaAp9NtSSEsyp2B4Uqr7uKo9YSszsOiSRlPDe4fkBuQ5fye8advsI10eWI0RbveWbXuj0jAguTlPKpQYu0ME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7413
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752143644; x=1783679644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zpyHSPANBOSKrOKqYYjsEvWl7B/bWt/tVd/LlJLlVhc=;
 b=EjIhmW3UEHC0jQbe9kSIxDWRckarLmTDKUFhvS/hSZM6MEZvd6wacieS
 HKNme6rDQf3BuxltNGjVmym15fj/aergqxXe1swkci5Gao03PsTFgbUbX
 2GjfJSX2MI3RDYLscYb/myR1uJ9EevWeksScYP6rIadXfQBX8G657bTx5
 KQYl07t1UyvGGVJ07zmYA8Ipu5Bhut9B88W+4K+9T8oRPYxN4gKThSjCb
 sNnFNKANVgjWsm64eQZOlIyPFnqvvDml1CsQeFMNv3AD1x9DBPIA9Om5b
 LiwjvQUpn+fIJ+oKGtyySJ8YElVXBDM1uNNRJRPcp8UcZlYlyR11+2BdH
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EjIhmW3U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgU2lt
b24gSG9ybWFuDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDEwLCAyMDI1IDEyOjI1IFBNDQo+IFRv
OiBNYXJrdXMgQmzDtmNobCA8bWFya3VzQGJsb2NobC5kZT4NCj4gQ2M6IE5ndXllbiwgQW50aG9u
eSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcg
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBSaWNoYXJkIENvY2hyYW4NCj4gPHJpY2hh
cmRjb2NocmFuQGdtYWlsLmNvbT47IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRl
PjsNCj4gTGFrc2htaSBTb3dqYW55YSBEIDxsYWtzaG1pLnNvd2phbnlhLmRAaW50ZWwuY29tPjsg
QW5kcmV3IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNv
bT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFi
ZW5pQHJlZGhhdC5jb20+OyBCbG9lY2hsLCBNYXJrdXMNCj4gPG1hcmt1cy5ibG9lY2hsQGlwZXRy
b25pay5jb20+OyBKb2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPjsNCj4gaW50ZWwtd2ly
ZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0K
PiBrZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggdjJdIGUxMDAwZTogUG9wdWxhdGUgZW50aXJlDQo+IHN5c3RlbV9jb3VudGVydmFs
X3QgaW4gZ2V0X3RpbWVfZm4oKSBjYWxsYmFjaw0KPiANCj4gT24gV2VkLCBKdWwgMDksIDIwMjUg
YXQgMDc6Mjg6MDdQTSArMDIwMCwgTWFya3VzIEJsw7ZjaGwgd3JvdGU6DQo+ID4gZ2V0X3RpbWVf
Zm4oKSBjYWxsYmFjayBpbXBsZW1lbnRhdGlvbnMgYXJlIGV4cGVjdGVkIHRvIGZpbGwgb3V0IHRo
ZQ0KPiA+IGVudGlyZSBzeXN0ZW1fY291bnRlcnZhbF90IHN0cnVjdCBhcyBpdCBtYXkgYmUgaW5p
dGlhbGx5DQo+IHVuaW5pdGlhbGl6ZWQuDQo+ID4NCj4gPiBUaGlzIGJyb2tlIHdpdGggdGhlIHJl
bW92YWwgb2YgY29udmVydF9hcnRfdG9fdHNjKCkgaGVscGVyIGZ1bmN0aW9ucw0KPiA+IHdoaWNo
IGxlZnQgdXNlX25zZWNzIHVuaW5pdGlhbGl6ZWQuDQo+ID4NCj4gPiBBc3NpZ24gdGhlIGVudGly
ZSBzdHJ1Y3QgYWdhaW4uDQo+ID4NCj4gPiBGaXhlczogYmQ0OGI1MGJlNTBhICgiZTEwMDBlOiBS
ZXBsYWNlIGNvbnZlcnRfYXJ0X3RvX3RzYygpIikNCj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZw0KPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBCbMO2Y2hsIDxtYXJrdXNAYmxvY2hsLmRl
Pg0KPiA+IC0tLQ0KPiA+IE5vdGVzOg0KPiA+ICAgICBSZWxhdGVkLVRvOg0KPiA+DQo+IDxodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sL3R4eXJyMjZoeGUzeHBxM2VicWI1ZXdrZ3ZodnA3eGFs
b3Rhb3V3bHUNCj4gPiBkanRqaWZuYWgyQDd0bWdjemxuNGFvby8+DQo+ID4NCj4gPiBDaGFuZ2Vz
IGluIHYyOg0KPiA+IC0gQWRkIExha3NobWkgaW4gQ2M6DQo+ID4gLSBBZGQgU2lnbmVkLW9mZi1i
eTogdHJhaWxlciB3aGljaCB3YXMgbG9zdCBpbiBiNCB3b3JrZmxvdw0KPiA+IC0gTGluayB0byB2
MToNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNzA5LWUxMDAwZV9jcm9zc3Rz
LXYxLTEtDQo+IGY4YTgwYzc5MmU0ZkBibA0KPiA+IG9jaGwuZGUNCj4gDQo+IFJldmlld2VkLWJ5
OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQpSZXZpZXdlZC1ieTogQWxla3NhbmRy
IExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
