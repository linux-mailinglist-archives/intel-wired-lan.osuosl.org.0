Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F07E5A607F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 04:51:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FF6E60807;
	Fri, 14 Mar 2025 03:51:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PuieczB5ZYIG; Fri, 14 Mar 2025 03:51:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4611D60B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741924267;
	bh=pp8T30Jc3nnZQ/P65eVIcvZ4CoZ8904nkTLhiIF2PiQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yZBNuEehJYG3oy5AX+vO8AnN6/s9yR4X2UxIm6XxUQPxSbbwsAGNIX4sy0sGNXXGj
	 dh08URNPTDYLBOqpQ3qeHL3yTvUNK4ePnAeG878HbrEoO/iWFxP4tHK9hMS4Thp9om
	 +oDXBwqDIQtaq5uNBTbHNVDPskB3Ds1PaOzD2Fe6UGMC9rjOSL82NDJzYaQIBBW9BA
	 2Trd1k3uP5KZvEQ4t9qnMkKALRCPIffphXC1NhiZmIxrTdFSOmaJnm/yEabo1oN0V3
	 CX2lCQnlcMcB7wXYJLeHG58GIr5zN8KPQUIhY7Ry1ru+ZS6w7quu/C316sLFBv+Lvn
	 bzuGCXn076xmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4611D60B48;
	Fri, 14 Mar 2025 03:51:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 88479115
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 03:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B2A383A8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 03:51:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O9BcfNCkW9mc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 03:51:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1DE2B83A86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DE2B83A86
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DE2B83A86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 03:51:01 +0000 (UTC)
X-CSE-ConnectionGUID: /MhPafjbRK6s5y2ksiPyRg==
X-CSE-MsgGUID: dDbqHA4XR3qa062VRnmgIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42233924"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42233924"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 20:51:01 -0700
X-CSE-ConnectionGUID: ZEekUT0HT3GkIJUNuW86LQ==
X-CSE-MsgGUID: q0eKQVKDTjeGMt18k8HC0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="144339498"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 20:51:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 20:51:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 20:51:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 20:50:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uHxv3qBhnh4VIalz7B4PYjcV+z2Ki4JwJKgzgQ8cJ3si7IMAHo2eyJkFDDna6YRwfOwVAodiijwMUdG2rxkmRJIhyniUoGu69WBWCPYt9wr9AkjknNaTmCRiIKZ5qfPlXZVOlPD+I57gjhGERYxZN1v8NqB+JI0ylIhVKDU0iHn5LeJoFTKmkRUYLWouDRnnfYJ01bhLCDX5DhBHQ+tp+yip29AdQ4YRBLpvhKZczg0p0OESqneJLN1Wvqu27FREnYGNaOwODpdbn1ogtTHiRGJM795+2IPZ3iga9+bfJFGtioQmFnKOdgQKYOJC9HD/9fAXe0NHnyuPuWLZFQjXmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pp8T30Jc3nnZQ/P65eVIcvZ4CoZ8904nkTLhiIF2PiQ=;
 b=NCzdTgEPM6BGIgZcNFIt8fQIaWLHGeYyhPywm20dyTDXwEPNELC+8V3gCQPpWVIwDaEpu4Ip9JFzOcuVJx81eFofj/ZLV4bgEg8jXgWXjacjXRrO84dfLTwC3m+33RATINymiJFrw3f9qOIu8Uo//mve9hh7cQYvTrrZxSmC/w6fuDDrpgGS5rtYlTI1ndr9M9d/ekvJPDu/BrtH2IdCnrzhJFClLWmgTSZi4XvJIIguFWp1M2CEs8Iu7tQ1+5EySAz2Oz4WG6sosfLI2RwtUgd8+mruGAxE66vGeq+Pu5n14+lRTN5D3GQizU7hePA50qUHeBbzrCl5ZVPRPV1Z8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 03:50:43 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%7]) with mapi id 15.20.8534.027; Fri, 14 Mar 2025
 03:50:42 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: ensure periodic output
 start time is in the future
Thread-Index: AQHbgyAIFyVruwqsRkOkFlf5UOLPTrNvKUtw
Date: Fri, 14 Mar 2025 03:50:42 +0000
Message-ID: <IA1PR11MB6241464A47652E95CF8008C28BD22@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250219-jk-gnrd-ptp-pin-patches-v1-1-9cb3efaf9eea@intel.com>
In-Reply-To: <20250219-jk-gnrd-ptp-pin-patches-v1-1-9cb3efaf9eea@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB5794:EE_
x-ms-office365-filtering-correlation-id: 40afdb59-2b7d-4c93-42e5-08dd62ab64f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?NjYxSnhmbG1jYVRveEdTZU1idUxmbWJEaXVKZjU4WU16d1lHUjREUUdtdG1R?=
 =?utf-8?B?ZG4yb1IyWDJVeGI4L3hiZDQ2VGc1VWdJY1ZhNlI2cWQwL1NoMmZVWmNCZWxz?=
 =?utf-8?B?ZjRTa3JmaWJZN3hjM2sySldpVTMrWXNMVUU1RDNKUDR1T004UWEwSWVSTkZ4?=
 =?utf-8?B?YTBLeXdoMlQ2dkNKM3g5UVBZQnU5NnFsbmhvdzYvV0djM1o2MXVUdTVEWTIz?=
 =?utf-8?B?OXlINDVFTHJveUFIdW8rOW5temtDWURrMUZ5V3JwNlRPenp2d3Btc1hSeSsr?=
 =?utf-8?B?b1ZJcVE5clhXNXpzWkF0NXIxNC9jV3lFb2hDdzVOQkFFRTQwWXVnc1c2c1VD?=
 =?utf-8?B?SGhPbTR1bnQvSk5kaEVsbC90ZXp5R0ZiN1pab1BFby83ZmxKa1dlMmVkYWc1?=
 =?utf-8?B?QjhDeW1CaUxGSWFiNlYyV2N4SHpnL0I3QUdDZTd1dytaT2hPcGxYOUVyZldi?=
 =?utf-8?B?L0pjTHhOdGJEQzNPOUcvQ3lZUHFlU1lTNWJoTEVOTGtrenBJSWV2eGhPYmla?=
 =?utf-8?B?TzBQSS9qWEZ3dnJ4T01QWUorV2tCYjRITEI2SFZQMkZEM3F5YXZyMm1rTnVz?=
 =?utf-8?B?WXZDREhsYit6S201M1pWZTZTdFlhdFFtVDd6cjY0dzZ6TWN6RWZrdFlLTXcv?=
 =?utf-8?B?UkdxNnNIZWJFV09DUExPR042bUJXODhzZ0prMUNMODlyaTJBcng0dmtaYmxr?=
 =?utf-8?B?NEF3aTNrZnptVDJLNDk2ekhNcndUajJPckFBdkxUUjEyejBVSFo3elJHQXUv?=
 =?utf-8?B?anBwZ0RzWWlVYS92MDB2WEZybzU4aGtxS1N2ZDdTSE1paWxqd0ovK3FJVDFt?=
 =?utf-8?B?N3JZNVBmdjU0bHNMbXZMRnBzZlpEVitRQ3E4dDVBOHNrMENBVU44YjEzK3Vm?=
 =?utf-8?B?Y1dCcTNKdU1zdHE1L3pnY0hPclE5MnhpN2hyQlFRYWFqOXptQ3UzbEYwTG5V?=
 =?utf-8?B?TW1rbTNyRDdHVkhvYnhvY0lYUU80U2RwUDFpK0ltRTRRSHZQK09Va2laT21m?=
 =?utf-8?B?RmxUSkpVakxuQnlRSGxpdVllNUtabnUxRFk1NC9sUTZqbWRjdm9iMkdLbVlB?=
 =?utf-8?B?MVBkOEovOUllSmMvbXNoU3RxUGZodFhqSjZTQWNuMzRjRVhiRHlFZkI3dFZ1?=
 =?utf-8?B?SDVUZS81TWczYkRHY1VNSVRxTFhlVVVBS1VMREFGeGtCb3FCQktuL3VtZDFG?=
 =?utf-8?B?VDNZUiszUHhncFVXbDZnK2tKelhtNS9DTURsb0NhZG5Yc1doOGV3QXE3Yy9q?=
 =?utf-8?B?OFdGdFhkelhvMm9OUEJrV2R1ckkvZzFVOU9lK25qSG9pZWxKRG5ZVnpmaEJG?=
 =?utf-8?B?T3dzYUNrSnlVeWRoY0FJSnR6WmN5OFk3SkZlSXZ0cW10bXIxUjZqc0k5Z1Fr?=
 =?utf-8?B?dWsyRUdYYmd4UVdFUmYzemFiVnBPcVo2dXQ5TVR4MmdidURuWUpIV21CYTR4?=
 =?utf-8?B?TFNLdXEvZ0hnbUZmaUx1M0I1SUJ2M2lFclRQUW5UQS9OOTlnenBBTURLQnRM?=
 =?utf-8?B?bHU2K2dBOVBnekliVTZoY1RNNGhDMzlMRGgzRXRZRlArbytET1VUWEE1WDlj?=
 =?utf-8?B?YzZENk9QN3RhR0VzR3BHQVc0U1ByN0VTV21FVFJ0RlZTNjducnFPRXJxb0ky?=
 =?utf-8?B?UWE5RmkzUTVlSnB3alEwOEMxU2lhUVcxSGZTTy8zNG9jbGdiSENGRkZyQTlD?=
 =?utf-8?B?aS9BV0R6K2RmdUI5b2d4SUIrTmlLOWM5alduTmhuQ01oUUx4QU9tcUV1R291?=
 =?utf-8?B?NzhrSlQvS0s1OHNIQW5rUEI5TjYrOXdPY1I0c2ZUNTN6RC9JVkNESFRLZjkw?=
 =?utf-8?B?YmRjWXk5blFGRDczMWRwN0pFbi82aG5nSHFiUkhtQzVNUE1uaVR1Vk53WmNH?=
 =?utf-8?B?eUptMTFRWnJtcG95M1JhN2RGOHR4R3NPc0Q3czQ2WmdyRWllUGNkMEphb3Za?=
 =?utf-8?B?L1dLa3ZINGN1RTdkOTZNR1NXeTJjLzB6R0lnc2x2b2NFUDR3bTVuZ3RkZkVu?=
 =?utf-8?B?eUV2Y0lkTkR3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjFWV2hrY3lEQko5Z0R5QVZXM1V2QmIwTmh2L0NDcFpvWXpuV004VnpQeUc1?=
 =?utf-8?B?bmkvU0Y2dXdLR1ZZc21qMlM4czdVRTdzNVd6QkVGZTdsTm5OS1VoczgyWTA3?=
 =?utf-8?B?Njh2aFBpVzFSSUt5c01kVUEwa2krZC81Ly9Xem83VzRkR0tvVUJkdlAyVnhV?=
 =?utf-8?B?QVNYWXo1OFZ6d2d5ZmtubUgxNEJQZHJsVW5FRTdidmRvWEVzWnU3MjZEWWor?=
 =?utf-8?B?SlNGT2UzMW5UeC9LSy9aNWVGeGpUVEdOcXVwSDVPWURWRXIvUFEwTGRJRUZv?=
 =?utf-8?B?WXNXdmdmTm8rZnRsdUY0b2grUFRmVzllT0lOV24xQ1FGMk1NbGYyMVYwUGVN?=
 =?utf-8?B?bUlCUWlVb0tPWWZrSU0yZjM2OEtVMXdCR29lajFxNmRTcGYvY0Fjc0FMVDdD?=
 =?utf-8?B?R0RxekE1WGNlK1NUdXptOHRnK0NSVXMyR3NyQVhXanM0Z1MwSUFoWFJVN2I1?=
 =?utf-8?B?RGNFaUV5UXA3YnpQZHhIcjdyZUVsVURoTWRndHgxNVdCZ2MzRkx2bDFObTlk?=
 =?utf-8?B?OVE5NzFxYUdraVZzTU9WdS9ocVVDOTFsMlAvcm1hZ2pIbUtDU1BaNWo2YXdV?=
 =?utf-8?B?bldnaU5QcG9OaTNCZnVRcC9MVk96TElHMDluTDJZamY1OVh0TVJydldxN2w3?=
 =?utf-8?B?N0pnbmRnbTVzbVNiR0Z4ZVRzdmZSVG9POE4ydzF5dzhsUmZQM2RIM1llZHhr?=
 =?utf-8?B?aENIVmJYbldod2tvR0hPS3RWYVQvZGNsbjgyc0Yrcm1yelQyS3p3YlVBNEdl?=
 =?utf-8?B?TG92N3V0WWl5dURUdWU2bHV3SDd1d1pUWjV0TmE3Q0p2c3dvRjJwVktxdTI5?=
 =?utf-8?B?WkZIMVVyTDd6ZkxnS1lLQnIzdk9VbS9JdVJXQ2RoRTJQV0VIclh6N0t6bDRE?=
 =?utf-8?B?S0VoTXZpRWlBbTZLRFlzYTRKelU5Qml3eDFpK3FPL3Y3UHc1S0JGZG42K0tq?=
 =?utf-8?B?SEI2MUFoOS9yZmN0Y0o1eFFnN2M0RG1CMVdrYlRDdnhydERBUXp3cFVyRnpZ?=
 =?utf-8?B?azNuVVE2SjdjL3czWHVVRlAzWXFFTEhIaHBwRVdFalVtMnZGbGI2MTZjQm12?=
 =?utf-8?B?Zkt0TlRhNUVmSFV1WWNXcWVmbjR0eHVwRjhjZ3RNRk13clVzY0xadjYxSmFp?=
 =?utf-8?B?TTN3ajQ2S1BMdE9mUDhnTFBiREJvSkxIaVNHOThUbG9Ic3ZuRmZFOENFNk9M?=
 =?utf-8?B?RTZoeGpaUHFHZFVKMlhtNnUzUjZodHBHeUFNWFc3b3J6WVJ5NW80U1JMbExo?=
 =?utf-8?B?MGt1MzBYcGRKSk5Ld21NQTE3N25BOUZEd1VJNEVRLzBRNjlSSDI4eWhxTXZu?=
 =?utf-8?B?Mkk4Z2NWUHkxREVZQ01rSlFrSWdKSUJTREZTRTFkSHVERGlaUU00V3YxUDRY?=
 =?utf-8?B?YmcyYTZuSXlDZkZIeVJpdVZFUCtNbVJwQ2dUQlh2MWR1QlFyWXp0WEpsSGsw?=
 =?utf-8?B?K1VqWGRNbWk1djlzcHo0WGhzbXN3eWtaWkRRMHB2UzRiWGJGdTZmekdtMzU4?=
 =?utf-8?B?TGZpV0t1OGFNaFAwV05Cd2U0Q2VYanROUUtQb2liRTA4bW93Mjg3OE1ITGpp?=
 =?utf-8?B?U2R5NnQxOFlyeVd5d3lLTklkeTUwUys3a2hleDdvanVCMzlBU1hPV1FpbkFF?=
 =?utf-8?B?YW1WQ2FRQ0x2eGNyOE5zMkNFUDRlSFdYQUVSYnFmYmZKdi9yRms1R01nc3l1?=
 =?utf-8?B?L2JObEU2TmI5KzNqTXRmVFRIMHU3SDBqcXN3cCtKL1o2cTAzQkhQSU0vMktk?=
 =?utf-8?B?MkNTL2NMTUdVNG5qTERWbmY4NlVJNm5TOTJrc1NucDVyUFUrWjhBRjhCZ014?=
 =?utf-8?B?bWNRZElhTWs3Zlp4dWtvK3Z6SnZ4Y3N1MXEwR3hDQzFkcE5ORmF5NUYxQURJ?=
 =?utf-8?B?K2xOYUxTenFzNnRzQjFuTE9mODlvUHBzMHFZSXN5aTkrWEtTSzZjSWdYbnMw?=
 =?utf-8?B?dnVZMERFNjBRZmRHT1EwRkdYT3NzMko3Tmg0dGdWNkZVN3JUL1ZHTzFXMjMx?=
 =?utf-8?B?NDI0OG1BOVVhdTVtVzUyd3lkd1pMTnFtcm5zd0txUTNQNkR6dURKMEcrS0JF?=
 =?utf-8?B?enRVRktieE1QQlZyNm5DZlJ2UWtVeXQ2UGVHS1BXNG8vR21hS2lHazBTSkRW?=
 =?utf-8?Q?vZY/GiBcZylswJ+JDGRDgyTU3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40afdb59-2b7d-4c93-42e5-08dd62ab64f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 03:50:42.8832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Up6txzGPTo5sIaor8Pv0Xysnk9T1gvrCYZdjsw+sAhs0P5g0x+TipcxJx3OZ8MsTCTL+UGEOrdAPlTXkbnSkEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741924262; x=1773460262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pp8T30Jc3nnZQ/P65eVIcvZ4CoZ8904nkTLhiIF2PiQ=;
 b=K1ApuPsJmSDtQDvNlRbHz3HudehaaBtlGnPIK4kjFCpbwiPpx8TM0XLs
 EhOz7NaTHwA+Xm8XPlGKZp3vSgfTvj8OBcqncQFUE4ZvMINLR28uxFXoh
 O6kiLANLa5Kpd0uo86DjhcgocWU6cQtuHIsyXHpeYPKQFIY46fUVSnuNx
 G0aXscQvtfwUURgKpQ5FbBUNjWrIM2RCyCmNguS0jeGJD2r4OzOiXZO2N
 bfA8NTJ0EqUCdayUj8N4PawyMt7mlll+ayIgjyyywOABwopohp0V1yDPv
 2qMu3ph4CqINkgmtLN+64Jgagp3DEhFMFcNgMhsl+sn8RNBY54gQY4hry
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K1ApuPsJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: ensure periodic output
 start time is in the future
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMjAgRmVicnVhcnkgMjAyNSAwMzo0Mw0KPiBUbzogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJrYWRp
dXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPjsgS29sYWNpbnNraSwgS2Fyb2wgPGthcm9sLmtvbGFj
aW5za2lAaW50ZWwuY29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnOyBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXRdIGlj
ZTogZW5zdXJlIHBlcmlvZGljIG91dHB1dCBzdGFydCB0aW1lIGlzIGluIHRoZSBmdXR1cmUNCj4N
Cj4gRnJvbTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+DQo+
DQo+IE9uIEU4MDAgc2VyaWVzIGhhcmR3YXJlLCBpZiB0aGUgc3RhcnQgdGltZSBmb3IgYSBwZXJp
b2RpYyBvdXRwdXQgc2lnbmFsIGlzIHByb2dyYW1tZWQgaW50byBHTFRTWU5fVEdUX0ggYW5kIEdM
VFNZTl9UR1RfTCByZWdpc3RlcnMsIHRoZSBoYXJkd2FyZSBsb2dpYyBsb2NrcyB1cCBhbmQgdGhl
IHBlcmlvZGljIG91dHB1dCBzaWduYWwgbmV2ZXIgc3RhcnRzLiBBbnkgZnV0dXJlIGF0dGVtcHQg
dG8gcmVwcm9ncmFtIHRoZSBjbG9jayBmdW5jdGlvbiBpcyBmdXRpbGUgYXMgdGhlIGhhcmR3YXJl
IHdpbGwgbm90IHJlc2V0IHVudGlsIGEgcG93ZXIgb24uDQo+DQo+IFRoZSBpY2VfcHRwX2NmZ19w
ZXJvdXQgZnVuY3Rpb24gaGFzIGxvZ2ljIHRvIHByZXZlbnQgdGhpcywgYXMgaXQgY2hlY2tzIGlm
IHRoZSByZXF1ZXN0ZWQgc3RhcnQgdGltZSBpcyBpbiB0aGUgcGFzdC4gSWYgc28sIGEgbmV3IHN0
YXJ0IHRpbWUgaXMgY2FsY3VsYXRlZCBieSByb3VuZGluZyB1cC4NCj4NCj4gU2luY2UgY29tbWl0
IGQ3NTVhN2UxMjlhNSAoImljZTogQ2FjaGUgcGVyb3V0L2V4dHRzIHJlcXVlc3RzIGFuZCBjaGVj
ayBmbGFncyIpLCB0aGUgcm91bmRpbmcgaXMgZG9uZSB0byB0aGUgbmVhcmVzdCBtdWx0aXBsZSBv
ZiB0aGUgY2xvY2sgcGVyaW9kLCByYXRoZXIgdGhhbiB0byBhIGZ1bGwgc2Vjb25kLiBUaGlzIGlz
IG1vcmUgYWNjdXJhdGUsIHNpbmNlIGl0IGVuc3VyZXMgdGhlIHNpZ25hbCBtYXRjaGVzIHRoZSB1
c2VyIHJlcXVlc3QgcHJlY2lzZWx5Lg0KPg0KPiBVbmZvcnR1bmF0ZWx5LCB0aGVyZSBpcyBhIHJh
Y2UgY29uZGl0aW9uIHdpdGggdGhpcyByb3VuZGluZyBsb2dpYy4gSWYgdGhlIGN1cnJlbnQgdGlt
ZSBpcyBjbG9zZSB0byB0aGUgbXVsdGlwbGUgb2YgdGhlIHBlcmlvZCwgd2UgY291bGQgY2FsY3Vs
YXRlIGEgdGFyZ2V0IHRpbWUgdGhhdCBpcyBleHRyZW1lbHkgc29vbi4gSXQgdGFrZXMgdGltZSBm
b3IgdGhlIHNvZnR3YXJlIHRvIHByb2dyYW0gdGhlIHJlZ2lzdGVycywgZHVyaW5nIHdoaWNoIHRp
bWUgdGhpcyByZXF1ZXN0ZWQgc3RhcnQgdGltZSBjb3VsZCBiZWNvbWUgYSBzdGFydCB0aW1lIGlu
IHRoZSBwYXN0LiBJZiB0aGF0IGhhcHBlbnMsIHRoZSBwZXJpb2RpYyBvdXRwdXQgc2lnbmFsIHdp
bGwgbG9jayB1cC4NCj4NCj4gRm9yIGxhcmdlIGVub3VnaCBwZXJpb2RzLCBvciBmb3IgdGhlIGxv
Z2ljIHByaW9yIHRvIHRoZSBtZW50aW9uZWQgY29tbWl0LCB0aGlzIGlzIHVubGlrZWx5LiBIb3dl
dmVyLCB3aXRoIHRoZSBuZXcgbG9naWMgcm91bmRpbmcgdG8gdGhlIHBlcmlvZCBhbmQgd2l0aCBh
IHNtYWxsIGVub3VnaCBwZXJpb2QsIHRoaXMgYmVjb21lcyBpbmV2aXRhYmxlLg0KPg0KPiBGb3Ig
ZXhhbXBsZSwgYXR0ZW1wdGluZyB0byBlbmFibGUgYSAxME1IeiBzaWduYWwgcmVxdWlyZXMgYSBw
ZXJpb2Qgb2YgMTAwIG5hbm9zZWNvbmRzLiBUaGlzIG1lYW5zIGluIHRoZSAqYmVzdCogY2FzZSwg
d2UgaGF2ZSA5OSBuYW5vc2Vjb25kcyB0byBwcm9ncmFtIHRoZSBjbG9jayBvdXRwdXQuIFRoaXMg
aXMgZXNzZW50aWFsbHkgaW1wb3NzaWJsZSwgYW5kIHRodXMgc3VjaCBhIHNtYWxsIHBlcmlvZCBw
cmFjdGljYWxseSBndWFyYW50ZWVzIHRoYXQgdGhlIGNsb2NrIG91dHB1dCBmdW5jdGlvbiB3aWxs
IGxvY2sgdXAuDQo+DQo+IFRvIGZpeCB0aGlzLCBhZGQgc29tZSBzbG9wIHRvIHRoZSBjbG9jayB0
aW1lIHVzZWQgdG8gY2hlY2sgaWYgdGhlIHN0YXJ0IHRpbWUgaXMgaW4gdGhlIHBhc3QuIEJlY2F1
c2UgaXQgaXMgbm90IGNyaXRpY2FsIHRoYXQgb3V0cHV0IHNpZ25hbHMgc3RhcnQgaW1tZWRpYXRl
bHksIGJ1dCBpdCAqaXMqIGNyaXRpY2FsIHRoYXQgd2UgZG8gbm90IGJyaWNrIHRoZSBmdW5jdGlv
biwgMC41IHNlY29uZHMgaXMgc2VsZWN0ZWQuID4gVGhpcyBkb2VzIG1lYW4gdGhhdCBhbnkgcmVx
dWVzdGVkIG91dHB1dCB3aWxsIGJlIGRlbGF5ZWQgYnkgYXQgbGVhc3QgMC41IHNlY29uZHMuDQo+
DQo+IFRoaXMgc2xvcCBpcyBhcHBsaWVkIGJlZm9yZSByb3VuZGluZywgc28gdGhhdCB3ZSBhbHdh
eXMgcm91bmQgdXAgdG8gdGhlIG5lYXJlc3QgbXVsdGlwbGUgb2YgdGhlIHBlcmlvZCB0aGF0IGlz
IGF0IGxlYXN0IDAuNSBzZWNvbmRzIGluIHRoZSBmdXR1cmUsIGVuc3VyaW5nIGEgbWluaW11bSBv
ZiAwLjUgc2Vjb25kcyB0byBwcm9ncmFtIHRoZSBjbG9jayBvdXRwdXQgcmVnaXN0ZXJzLg0KPg0K
PiBGaW5hbGx5LCB0byBlbnN1cmUgdGhhdCB0aGUgaGFyZHdhcmUgcmVnaXN0ZXJzIHByb2dyYW1t
aW5nIHRoZSBjbG9jayBvdXRwdXQgY29tcGxldGUgaW4gYSB0aW1lbHkgbWFubmVyLCBhZGQgYSB3
cml0ZSBmbHVzaCB0byB0aGUgZW5kIG9mIGljZV9wdHBfd3JpdGVfcGVyb3V0LiBUaGlzIGVuc3Vy
ZXMgd2UgZG9uJ3QgcmlzayBhbnkgaXNzdWUgd2l0aCBQQ0llIHRyYW5zYWN0aW9uIGJhdGNoaW5n
Lg0KPg0KPiBTdHJpY3RseSBzcGVha2luZywgdGhpcyBmaXhlcyBhIHJhY2UgY29uZGl0aW9uIGFs
bCB0aGUgd2F5IGJhY2sgYXQgdGhlIGluaXRpYWwgaW1wbGVtZW50YXRpb24gb2YgcGVyaW9kaWMg
b3V0cHV0IHByb2dyYW1taW5nLCBhcyBpdCBpcyB0aGVvcmV0aWNhbGx5IHBvc3NpYmxlIHRvIHRy
aWdnZXIgdGhpcyBidWcgZXZlbiBvbiB0aGUgb2xkIGxvZ2ljIHdoZW4gYWx3YXlzIHJvdW5kaW5n
IHRvIGEgZnVsbCBzZWNvbmQuIEhvd2V2ZXIsIHRoZSB3aW5kb3cgaXMgbmFycm93LCBhbmQgdGhl
IGNvZGUgaGFzIGJlZW4gcmVmYWN0b3JlZCBoZWF2aWx5IHNpbmNlIHRoZW4sIG1ha2luZyBhIGRp
cmVjdCBiYWNrcG9ydCBub3QgYXBwbHkgY2xlYW5seS4NCj4NCj4gRml4ZXM6IGQ3NTVhN2UxMjlh
NSAoImljZTogQ2FjaGUgcGVyb3V0L2V4dHRzIHJlcXVlc3RzIGFuZCBjaGVjayBmbGFncyIpDQo+
IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMg
fCA2ICsrKystLQ0KPiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChB
IENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
