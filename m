Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP7tEoRIB2rUwQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 18:23:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B155322C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 18:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32B9783D80;
	Fri, 15 May 2026 16:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fH2_-SzI-oEf; Fri, 15 May 2026 16:23:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63D7283D59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778862209;
	bh=w6BvN7sW4j78QMDLaks13VcmRZAm5JDuTtzkfFH2aYQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pi7UWXVm7WhvQXympe7udktPFfjwIoRxCUMiylgJJR/NP3K82d+Z4TQFYkLKjucXf
	 A56JiTvzXKBCpip0tf4OMyl2rxZSOPqzTERvDF7v5v0mKMS2O5Ap8Wj7FVG2XCyotq
	 dfX3wxfaMUVnQwFe5NUc8EECBKFOygpudBlo/MyAzZ5uDGyd8UyJtgMcxZrbOF5bmr
	 SC6s5NKHRJ9AW5lDhA8SZqQMrKp9ULYGRXHUhnvAeb2gCD6pzVK0uMTPON5QiZxwn2
	 yIijRxMHtnmlfclw1hjUItfsDvX3ndug8a3y73ws1NuRxrQzKJDyiYXLc0njRmgHTy
	 A/mzJHjSI0tig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63D7283D59;
	Fri, 15 May 2026 16:23:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B7D7436F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 16:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A96C141C4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 16:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zcN2b74siJx5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 16:23:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A2E6C41B98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2E6C41B98
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A2E6C41B98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 16:23:26 +0000 (UTC)
X-CSE-ConnectionGUID: nWb/i1ArQxiQLnDXuoicDg==
X-CSE-MsgGUID: 1mpPVxNXRmSIGJARL3glbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79941973"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79941973"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 09:23:25 -0700
X-CSE-ConnectionGUID: kdWDFkkTRoqSQot7Xplliw==
X-CSE-MsgGUID: BVLjOqtXSwKg8fmtoCZrng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="276822883"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 09:23:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 09:23:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 09:23:25 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 09:23:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oWjM7iPOyQrUMKZFVjVREag4X9YsojGlC1TJxCZByqNG6IeoorA+xjDQPWSIV+yK/t9HPCMFnCPNeCSd1IroyTMxC/iIMJypD84IOm1AAEtyocPJzP54gRVoypiN0w516kTca9jMPBrR+ePEpNnZF4RvlXJiJTBhQPWF6Ok6+9fEAVZb3xMX/3iUGY9k37iu0v65TGj57DyPUzaVpvbLkOE6japBa6Oq9j9+82urzI5BZ5rMA8aEDi5QjK01BPIQqR/pLhd2Xc+ZgOTP4pP/YlfM53VvgwB2IYpA7usO/gKA56MrFGCfSbGlbFECk/KrKCbW8lperMHYJneZCpNFAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6BvN7sW4j78QMDLaks13VcmRZAm5JDuTtzkfFH2aYQ=;
 b=gqhbwuFeEp4TFZO9+BzjYiCZnQJ/64QYi4ZL6J7q2G5+muj3BgJkIWXmVL8RlKlRCSN+AfNJbVSe2Sba4a00YCOZF1GFuqGgclVdDHdCZGo6tpRT6hUyDqrNoptN2RSmAKqn7vYdPZkbRxhmrKkR5cdoAR/2MCn6DjlvgmvcFNBU6/Tg1dGkYJMQ90YCvYUO7ZdoNRlZhwNCIRVXlCJcFQ285GgPLLWjGGsRMyvAPaOe0xM5CfJOQKvAcHSApSOS3uJeaMsyx/H3GLusXAk3o1GhJKoNZbdsMFtJwHL6Z39AjhA0I1NQPbtJ0yavh6lIvvj97mJxm2DVV1OYoW7Iew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Fri, 15 May
 2026 16:23:17 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%7]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 16:23:17 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [PATCH iwl-net v2] ice: support SBQ posted writes with
 non-posted support for CGU
Thread-Index: AQHc3tRZfcpI8HnZTUqJn6zPnz9cnLYKJYCAgANMRYCAAd5YAIAAAGRw
Date: Fri, 15 May 2026 16:23:16 +0000
Message-ID: <PH0PR11MB4904080E386215093310641294042@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260508102247.826375-1-przemyslaw.korba@intel.com>
 <20260512092740.290008-2-horms@kernel.org>
 <PH0PR11MB4904E65A7FAA26DD5B6EFBE994072@PH0PR11MB4904.namprd11.prod.outlook.com>
 <20260515162130.GA227382@horms.kernel.org>
In-Reply-To: <20260515162130.GA227382@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|LV8PR11MB8606:EE_
x-ms-office365-filtering-correlation-id: 69f28e58-7c9e-4928-a552-08deb29e4543
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|11063799003|56012099003|18002099003|22082099003|38070700021|4143699003;
x-microsoft-antispam-message-info: LC6J4hoV7IZb/kZp/BwbcZ5nnrkPRq2nYlWbJ5VilciZQlopRf1y8gjooDS98nmBG/9/jIIiMQCrlKcjL84i8nLPzs4++DSGIDrSD6GzVMhurLzd/1NJw297Bun8fUDRoPtFRyMi6e0xtHr8iWwPKek6WA9qTzKiSo9soz8ShRTknz9B/nbir1otd17f+blx+rHAztlazivaADIwCVklLQ6Z9i/e8IYdAb35ny2v6YgdwAkIJel/kIR1AvYtpNn5qTnu7y2zcKLBckN7cgOAnyIZl+GYDqCZRMyyDWR2lMET6AMjI5g6pd4guvtwdKLRnKzsTdMfUg34VPGYeDAyqaWNQ3LxJQwjodo9kUsB7AmPNxU+UxJYUvJsJ7FndVXpwvE1Pzi4dXowsPxnY8hQe2u+Fp5rw3lSgadZfzdFz/iz0aiSSIfRXL62RQAoNe1U8ZbWUL7LDLscHOrEutloA1PM0r37OywlK5psJ5gdvD4duvW+23RLoPEQwhh4Ds0tRT4TpgtCjiQ6pZLI1LNEJa1k/U3NOXxFWjRFwOtdjpyLV8DQ6fvVg2xpbiYorP+6HK734ItbN1DzJRLQY5zkiZvuwNKeye3Y7l5VfXkbtmOuCQvUB+q7ulx+VY1NKxm2CCa7v6hYxxexv8RvcU9xRjNdkI672OIk6XdsfhBFyRm18Df6Ai0oW6vJ5PCo2+ZU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(11063799003)(56012099003)(18002099003)(22082099003)(38070700021)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGJqTWRsV3p6ZVBadXVVcHpxR2hyRW5oTysyaEQ1aVBtLzNLYUEwbWpBSTFC?=
 =?utf-8?B?dW5CZEF0eXV6c0MxL2ZVeGtPMnZkeUlaWWxtYnVmcDV3dFgzOEZ3Zk1oVnYv?=
 =?utf-8?B?RVMxd0RNaXB4dTdiUW9RRktuUnZPMGhqZ3djdmJGMUlJaFdBRUt1ZWk4emV1?=
 =?utf-8?B?QmxLVnAxQ0taaXdENy9oQ0JpdWl4dWx3ZER0cHJxTDZsL2xNOW55ZHMvTVZM?=
 =?utf-8?B?U2hvQ0RhRXVZOUNOSnEva0I1QmtYYWpmaFVzZ2hWNUwrUHR4SFhwc0Z0TDJy?=
 =?utf-8?B?WHRnVm9xejNDYnBtYUFqc0RjVVpsUGlJVzlJUy9SVTZoME4wK3J2Q2k0d2dR?=
 =?utf-8?B?R21hVnNnKy9HcUs4Wnltam4zdTVWSGFmVTBweVBTV1hQT2ZvUXg4amFSTkRx?=
 =?utf-8?B?ZWx2NFpkU0dVWTN5aFF4c1JaSHNPc1JDWmIxZGJQYllESUVZVUwvbGc0YmlY?=
 =?utf-8?B?TjIzYkZxbGFsTHVvai9hWk5ZRm5EQkJMNkluNC9GSzhYYjBlUWpCVGVjKzNF?=
 =?utf-8?B?RnY3aWhEUG9IMVhzbGF4aUttd1VkNlN3L0ZvZFFQTTdXZ0kxVUlSQm5vTkl3?=
 =?utf-8?B?TzVwKzVndk1YWnJmQzdtdk4rOGI1MFMwUEcrRkxkNGxmcnpSU2dWZU9pU2ZE?=
 =?utf-8?B?NlBTRURhWnZyMzUxMk1qd25uWk9ydFg3VGFEQnVLSXlFWnBBd0I5T0tTTW5B?=
 =?utf-8?B?MUplNWh4M3N6TUFUTHFRYkFJM0d1M29mQ2V5RTZOdnpZUm14Z0puVExFZ0dl?=
 =?utf-8?B?V1J2cXV5L05jdnJYeVFKc1MvNHVmYVhEcWpqVnZaTkhQZkpiS0MrODRXVGlk?=
 =?utf-8?B?NkxWQUhsZ2I2dVZ3elczVldnMmpMelRoTFdyK3p4blI2V1NzK0cxc1U1Y01Y?=
 =?utf-8?B?REJ3Vmo2TzVyeFVpUC9hNjVtKzZlMHpsTUxMZ3JEMll4Z0pLMmRQZFVUQTEx?=
 =?utf-8?B?bEpQQWYrU0VuSW16cHBZaWI2dkZ0dW1ZV09kRFIzZUIxeE9wSmZyeFJsSmQx?=
 =?utf-8?B?dHI3Nzd5OHhOeG9jRWl6L0hPc2RsK2JoY1ArQWJ1d3dtaFF4eGphRUZJQ01i?=
 =?utf-8?B?b0pHcm1OSHRpVVJuL1VyZDdLOCtEVFJIREtxRCtBV1FzS0VHVFlsUENjUWNz?=
 =?utf-8?B?OW42YVQ3c25heU84Y0ZIQTRPYUtJSWNVQVY1MzlPbHZZZ2I1YzA5cmVFeWlu?=
 =?utf-8?B?U3AvQXkvekNOZzdSaEZneVpIaFRrNm5VRkhmaGZZLzZvY24vU1A2cnhpMk5C?=
 =?utf-8?B?TzlXN0xFRUFKSCs0UGptODQ4dDhLVUV5Z1VWTElqWUVkcHgxZEZxWFk3SG1J?=
 =?utf-8?B?dktuNXZpVVpxbEkwWDdBSTNTdDZRZ2hpS0k1Q3RRWkpRdlg3TmNLUHR6NE9Y?=
 =?utf-8?B?OVpDbXlkY0FpaGgycjA2aEVHQTZGV0JpeDZBN0JVUmpCT1ZzblJqSkVrc1p6?=
 =?utf-8?B?SzNaV0R3S2p2RVBRMjVYNEhKR0tSM3hVRU5ITTJuY285NEVLY2pqU09vYStS?=
 =?utf-8?B?SWNQcFhlemFXeWJVaVBHQnBDZjl6VHo4TGVrQmg4R09yNFd3M1ZRYm4yaWNP?=
 =?utf-8?B?cXBWcGlHRkZoKzhUcHI2VjczZFd2MEEwd2tISzROR01maWkxMXJ0TFVFK0ls?=
 =?utf-8?B?U1NtMGlMVW95dWorNkNrbWcySnVSeFJNSnEyQ1ZPVVRISmdBS3dlNytsSHli?=
 =?utf-8?B?R3M4RXZYMEt1OVE2eng4cDRGbDl3cjdzcktmSG1VaVhRd3pWWGpCRkZkZkRE?=
 =?utf-8?B?WWtUZ3kvNlFNS2FINnhTbUFIYXlrVU0wd2dpMjJYV01NejZHL01MN01jR05R?=
 =?utf-8?B?NlZOeXprWG81WDgrV1NOWFk3aTl4U09CNTZLYVpSUzdKVU5qd2tJYVJPdzRi?=
 =?utf-8?B?c2ZwN3E1b1pGcHRpVGhvN0ZNcHpBUk1HcThIb2lXZklwaXlPQ1M0TnFBb2Qx?=
 =?utf-8?B?TjQ4dk5IZFNiTmYwL3dmdTJ0UUJRcTg0NWhrdWZ1M2doZTh3MTZxUjRDTnVR?=
 =?utf-8?B?UWt6RndVbEdWZzdSNDRaclpiQy9wSnRNQVE5NEZjNzhEN3RBUGFZNGFYU3ho?=
 =?utf-8?B?NGx4YWY3c3lYZmUvUW14UCtjVzBTbkR5TVE4U2VNdGNWdEY5Z01KdktPM3BJ?=
 =?utf-8?B?UzlvNkl5M0lFbkFrZnJyUEc2a0dZSkovSmN0N1F0ZTNIMlgrSi9lVUg3OGVC?=
 =?utf-8?B?MWdEbm01bHhLaVZ1UktCeElGb0FRU1hoSE91cStiK201ck54SDc0L1pDV081?=
 =?utf-8?B?Y2x0UUhXV29ZL0pOaDhUWVJSU0s4b0pMZ3d1MFpha1JLVUhEWnVld0RrYWg5?=
 =?utf-8?B?Tkdnd0R4QUs2VVQwbHVuMHcyTk5SN3VDTlJVRXpGcmo0U1RsbUg5Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MCPZ4HY05sdpuClrY3zBCbOgtaABJ5Ei/VWYtqw/KfzqqQ2Q8MHKFcS1w3d/RMsPBhwffYtOdFYJ9GTHuvyiawycAx6YKlLPqq8oR20T24KyDkU9/sTBEGbH33tcGFyF9BpWmLMw5dbAuIgUpfwyjf4Ic3AmgIQRWPBCPB8ir7HP5lSUBnJVZw7105zcH2d0Z4SzBIQj6S3CRcteHwN4Mc3mi5Tjez6Nt/x13c/IxppcnP5hfwRNObxGSdSFQbTBlOHho2gxpJev2XAt5lqdUpMukdqW/Lgx+y3RqU+AlrCb/9nSLdIXcYfYWZJYpYq5PFHQFVs1lgFsQjtEt7gWBg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69f28e58-7c9e-4928-a552-08deb29e4543
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 16:23:16.9694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MG8JCJ70Gt1gN0pmZAAOOr+pCAh6jJY9AXTzTiQPH9NOyPIIwsWwDE19FYJj9l5Fbcz/YGaP5ITX5B8Ue0MBgaEw9QxonPRoMqQ+hhndocE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778862206; x=1810398206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w6BvN7sW4j78QMDLaks13VcmRZAm5JDuTtzkfFH2aYQ=;
 b=G17iGx2MiIz8dTzSoDkKzRsy5OHoWjD3b4Ht2aXk7BLMEE0FU9YjIRro
 DQF6a7/Z3MmpBPca8RLcGl9hXkc3dK3U7tomBwrtWMNQRTowy0ljxRM6n
 63ymiCi0IZqraPSrNJLKh+f8Ki09xDeWgEiA51bJ/Onuh/8xImFqrIVS+
 kQeWGCr9HTnUC7kP55BJqKfAp4XScMxnG3u50yS6ouNShFr2tNzwETBEU
 Qd+FlBZzfCY/fRgiE/4Liw8eRcKwwb32xp95jEkoCpG+YYUATNtF8oclg
 eBGuU+QBeH6edX+UpP/jycPR4GjOWJ7uapg0cRZ9iBgL9XIQ1JNXBPnsY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G17iGx2M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: support SBQ posted
 writes with non-posted support for CGU
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
X-Rspamd-Queue-Id: A04B155322C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,sashiko.dev:url,intel.com:email,PH0PR11MB4904.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

DQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTaW1vbiBIb3JtYW4g
PGhvcm1zQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE1LCAyMDI2IDY6MjIgUE0N
Cj4gVG86IEtvcmJhLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4g
Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgTG9rdGlv
bm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgS3ViYWxld3Nr
aSwgQXJrYWRpdXN6DQo+IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggaXdsLW5ldCB2Ml0gaWNlOiBzdXBwb3J0IFNCUSBwb3N0ZWQgd3JpdGVz
IHdpdGggbm9uLXBvc3RlZCBzdXBwb3J0IGZvciBDR1UNCj4gDQo+IE9uIFRodSwgTWF5IDE0LCAy
MDI2IGF0IDExOjU4OjIwQU0gKzAwMDAsIEtvcmJhLCBQcnplbXlzbGF3IHdyb3RlOg0KPiA+DQo+
ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IFNp
bW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gPiA+IFNlbnQ6IFR1ZXNkYXksIE1heSAx
MiwgMjAyNiAxMToyOCBBTQ0KPiA+ID4gVG86IEtvcmJhLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3
LmtvcmJhQGludGVsLmNvbT4NCj4gPiA+IENjOiAnU2ltb24gSG9ybWFuJyA8aG9ybXNAa2VybmVs
Lm9yZz47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA+ID4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47
IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47
DQo+ID4gPiBLdWJhbGV3c2tpLCBBcmthZGl1c3ogPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVs
LmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5ldCB2Ml0gaWNlOiBzdXBwb3J0
IFNCUSBwb3N0ZWQgd3JpdGVzIHdpdGggbm9uLXBvc3RlZCBzdXBwb3J0IGZvciBDR1UNCj4gPiA+
DQo+ID4gPiBGcm9tOiAnU2ltb24gSG9ybWFuJyA8aG9ybXNAa2VybmVsLm9yZz4NCj4gPiA+DQo+
ID4gPiBUaGlzIGlzIGFuIEFJLWdlbmVyYXRlZCByZXZpZXcgb2YgeW91ciBwYXRjaC4gVGhlIGh1
bWFuIHNlbmRpbmcgdGhpcw0KPiA+ID4gZW1haWwgaGFzIGNvbnNpZGVyZWQgdGhlIEFJIHJldmll
dyB2YWxpZCwgb3IgYXQgbGVhc3QgcGxhdXNpYmxlLg0KPiA+ID4gRnVsbCByZXZpZXcgYXQ6IGh0
dHBzOi8vc2FzaGlrby5kZXYNCj4gPiA+IC0tLQ0KPiA+ID4gaWNlOiBzdXBwb3J0IFNCUSBwb3N0
ZWQgd3JpdGVzIHdpdGggbm9uLXBvc3RlZCBzdXBwb3J0IGZvciBDR1UNCj4gPiA+DQo+ID4gPiBU
aGlzIGNvbW1pdCBpbnRyb2R1Y2VzIG5vbi1wb3N0ZWQgU0JRIHdyaXRlcyB3aGlsZSBhbGxvd2lu
ZyBwb3N0ZWQgd3JpdGVzDQo+ID4gPiB0byBza2lwIGNvbXBsZXRpb24gd2FpdHMuIEl0IGFsc28g
YWRkcyBhbiBTQlEgZmx1c2ggYnkgcmVhZGluZyBhZGRyZXNzIDANCj4gPiA+IGZyb20gUEhZIDAg
YmVmb3JlIGlzc3VpbmcgYSBTWU5DIGNvbW1hbmQgdG8gZW5zdXJlIHdyaXRlcyBhcmUgY29tcGxl
dGVkLg0KPiA+ID4NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwX2h3LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3B0cF9ody5jDQo+ID4gPiA+IGluZGV4IDI0ZmI3YTNlMTRkNjMuLmVjNGM4NWFkMTJlNGQgMTAw
NjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRw
X2h3LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9w
dHBfaHcuYw0KPiA+ID4gPiBAQCAtMzUyLDYgKzM1MiwxNyBAQCB2b2lkIGljZV9wdHBfc3JjX2Nt
ZChzdHJ1Y3QgaWNlX2h3ICpodywgZW51bSBpY2VfcHRwX3Rtcl9jbWQgY21kKQ0KPiA+ID4gPiAg
c3RhdGljIHZvaWQgaWNlX3B0cF9leGVjX3Rtcl9jbWQoc3RydWN0IGljZV9odyAqaHcpDQo+ID4g
PiA+ICB7DQo+ID4gPiA+ICAJc3RydWN0IGljZV9wZiAqcGYgPSBjb250YWluZXJfb2YoaHcsIHN0
cnVjdCBpY2VfcGYsIGh3KTsNCj4gPiA+ID4gKwlzdHJ1Y3QgaWNlX3NicV9tc2dfaW5wdXQgbXNn
ID0gew0KPiA+ID4gPiArCQkuZGVzdF9kZXYgPSBpY2Vfc2JxX2Rldl9waHlfMCwNCj4gPiA+ID4g
KwkJLm9wY29kZSA9IGljZV9zYnFfbXNnX3JkLA0KPiA+ID4gPiArCX07DQo+ID4gPiA+ICsJaW50
IGVycjsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCWlmIChody0+bWFjX3R5cGUgIT0gSUNFX01BQ19F
ODEwKSB7DQo+ID4gPiA+ICsJCWVyciA9IGljZV9zYnFfcndfcmVnKGh3LCAmbXNnLCBMSUJJRV9B
UV9GTEFHX1JEKTsNCj4gPiA+ID4gKwkJaWYgKGVycikNCj4gPiA+ID4gKwkJCWRldl93YXJuKGlj
ZV9od190b19kZXYoaHcpLCAiRmFpbGVkIHRvIGZsdXNoIFNCUTogJWRcbiIsIGVycik7DQo+ID4g
PiA+ICsJfQ0KPiA+ID4NCj4gPiA+IFsgLi4uIF0NCj4gPiA+DQo+ID4gPiA+IEBAIC00NDY5LDE1
ICs0NDgyLDE1IEBAIHN0YXRpYyBpbnQgaWNlX3JlYWRfcGh5X3JlZ19lODEwKHN0cnVjdCBpY2Vf
aHcgKmh3LCB1MzIgYWRkciwgdTMyICp2YWwpDQo+ID4gPiA+ICAgKi8NCj4gPiA+ID4gIHN0YXRp
YyBpbnQgaWNlX3dyaXRlX3BoeV9yZWdfZTgxMChzdHJ1Y3QgaWNlX2h3ICpodywgdTMyIGFkZHIs
IHUzMiB2YWwpDQo+ID4gPiA+ICB7DQo+ID4gPiA+IC0Jc3RydWN0IGljZV9zYnFfbXNnX2lucHV0
IG1zZyA9IHswfTsNCj4gPiA+ID4gKwlzdHJ1Y3QgaWNlX3NicV9tc2dfaW5wdXQgbXNnID0gew0K
PiA+ID4gPiArCQkuZGVzdF9kZXYgPSBpY2Vfc2JxX2Rldl9waHlfMCwNCj4gPiA+ID4gKwkJLm9w
Y29kZSA9IGljZV9zYnFfbXNnX3dyX3AsDQo+ID4gPiA+ICsJCS5tc2dfYWRkcl9sb3cgPSBsb3dl
cl8xNl9iaXRzKGFkZHIpLA0KPiA+ID4gPiArCQkubXNnX2FkZHJfaGlnaCA9IHVwcGVyXzE2X2Jp
dHMoYWRkciksDQo+ID4gPiA+ICsJCS5kYXRhID0gdmFsDQo+ID4gPiA+ICsJfTsNCj4gPiA+DQo+
ID4gPiBTaW5jZSBpY2Vfd3JpdGVfcGh5X3JlZ19lODEwKCkgaXMgdXBkYXRlZCB0byB1c2UgdGhl
IHBvc3RlZCB3cml0ZSBvcGNvZGUNCj4gPiA+IChpY2Vfc2JxX21zZ193cl9wKSwgaXQgd2lsbCBz
a2lwIHRoZSBjb21wbGV0aW9uIHdhaXQgYW5kIHJldHVybiBpbW1lZGlhdGVseS4NCj4gPiA+DQo+
ID4gPiBJZiB0aGUgU0JRIGZsdXNoIGluIGljZV9wdHBfZXhlY190bXJfY21kKCkgZXhwbGljaXRs
eSBza2lwcyBFODEwIGRldmljZXMNCj4gPiA+IHZpYSB0aGUgY2hlY2sgZm9yIGh3LT5tYWNfdHlw
ZSAhPSBJQ0VfTUFDX0U4MTAsIGRvZXMgdGhpcyBsZWF2ZSBFODEwIFBIWQ0KPiA+ID4gd3JpdGVz
IGVudGlyZWx5IGFzeW5jaHJvbm91cyBhbmQgdW5ndWFyZGVkPw0KPiA+ID4NCj4gPiA+IENvdWxk
IHRoaXMgbGVhZCB0byBhIHJhY2UgY29uZGl0aW9uIHdoZXJlIHRoZSB3cml0ZXMgaGF2ZSBub3Qg
YWN0dWFsbHkNCj4gPiA+IGNvbXBsZXRlZCBiZWZvcmUgdGhlIFNZTkNfRVhFQ19DTUQgaXMgZXhl
Y3V0ZWQ/DQo+ID4NCj4gPiBIaSwgdGhhbmtzIGZvciByZXZpZXchDQo+ID4gV2l0aCBFODEwIG9u
bHkgb3Bjb2RlIDB4MDEgZm9yIHdyaXRpbmcgaXMgc3VwcG9ydGVkLg0KPiA+IE9uIEU4MTAsIHRo
ZSBGVyBhbHdheXMgc2VuZHMgY29tcGxldGlvbiByZXNwb25zZXMgZm9yIG9wY29kZSAweDAxLCBz
byB0aGUgZHJpdmVyIHdhaXRzIGZvciBlYWNoIHdyaXRlIHRvIGNvbXBsZXRlLg0KPiA+IE9uIG5l
d2VyIEU4WFggZGV2aWNlcywgb3Bjb2RlIDB4MDEgaXMgdHJ1bHkgcG9zdGVkIChubyBjb21wbGV0
aW9uIHJlc3BvbnNlKSwgd2hpY2ggaXMgd2h5IHRoZSBTQlEgZmx1c2ggaXMgbmVlZGVkIGJlZm9y
ZQ0KPiBTWU5DX0VYRUNfQ01ELg0KPiA+IFNpbmNlIEU4MTAgd3JpdGVzIGFyZSBzeW5jaHJvbm91
cyAoZHJpdmVyIHdhaXRzIGZvciBjb21wbGV0aW9uKSwgZmx1c2hpbmcgU0JRIGlzIHVubmVjZXNz
YXJ5IC0gYWxsIHdyaXRlcyBhcmUgYWxyZWFkeSBjb21wbGV0ZSB3aGVuIHRoZQ0KPiBmdW5jdGlv
biByZXR1cm5zLg0KPiA+IEkgY2FuIGFkZCBjb21tZW50cyBleHBsYWluaW5nIHRoYXQsIG9yIG1h
a2UgaXQgYSBiaXQgY2xlYXJlciBpbiB0aGUgY29kZSBpZiB5b3UnZCBsaWtlIPCfmIoNCj4gDQo+
IFNvcnJ5LCB0aGVyZSB3YXMgc3VwcG9zZWQgdG8gYmUgc29tZSBleHRyYSB0ZXh0IGFsb25nIHRo
ZSBsaW5lcyBvZiBzZWVraW5nDQo+IGNsYXJpZmljYXRpb24uDQo+IA0KPiBZZXMsIEkgdGhpbmsg
aXQgd291bGQgYmUgZ29vZCB0byBhZGQgYSBjb21tZW50IG9yIHNvbWV0aGluZyB0bw0KPiB0aGUg
Y29tbWl0IG1lc3NhZ2UgYWJvdXQgdGhpcy4NCg0KU3VyZSwgY2FuIGRvDQo=
