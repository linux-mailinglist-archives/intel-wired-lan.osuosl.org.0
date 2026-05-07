Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNMKJ4Bg/Gm7OwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 11:50:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 023FA4E63E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 11:50:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AA1E410C6;
	Thu,  7 May 2026 09:50:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mt5-vroLy8US; Thu,  7 May 2026 09:50:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CEE1410C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778147453;
	bh=G92CzxKyTy9kClnqgU5QDjynYXibM3BZU6ENwotTuxE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pnp0VXlJ/x+2ItO8//dooEN5JnZlqHsGSEzjPNQP0sFjWO5QNuIsCnKcnkhe3EP1h
	 xnMXG7/TU/mp3WHpJP2PGcRBDpXjjyGBij7w3weGnkAlOIsqVQYLK5ZpSAxtrzebE7
	 Ot1ZqPnOLNAAKZOKAiOpPdXuTTlPBJDSgjMw2cstweP7XYynRHGrEf6ezCoAEXvLbB
	 8sw5jcoHf7rHOBqnQ6QvoWh+AhdwMjIJrpQiyvNUUMdHcRmNqLgkTFPfWQeVJCTHEF
	 w/Y9AIRg0VQx4K+1rn4s5rXEMUUDn4y/KdX53oEfoXfRYWHtdzW741G60HylHAjVl4
	 Zd0Q9pSlRJTIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CEE1410C3;
	Thu,  7 May 2026 09:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCFD511B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA7C840794
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cn6Z3pWKFTuJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 09:50:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A17A540705
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A17A540705
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A17A540705
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:50:51 +0000 (UTC)
X-CSE-ConnectionGUID: eU1xKTRVR9yintg6RxrDPA==
X-CSE-MsgGUID: JFfpYF0QSheLyD41G5KkUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="79202497"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79202497"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 02:50:51 -0700
X-CSE-ConnectionGUID: +zMeG8fGRr+iYC8B8XjqlQ==
X-CSE-MsgGUID: ptbQlhelTz+8Fd6XMcqGIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="240748455"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 02:50:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 02:50:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 02:50:50 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 02:50:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mgip8pNzykgtdM5z8wSb9MkssuYHplREbNMqCnQvmi5ur5ANXHAAP+9iZXQPohEHIoL4XK+Z/tyoUHTtcbHl5vD6YU4AgwgmTK1MidIQartwpLCne9igcwWKpOuO9Kk2DEkLbMRpg/5YwaPlxiynnNM1YnuOhRFCDL7d/Srjjkduwxk9bVD0hRCQWB1nq+ywCs86QlnqnE4ZF4jtzGwizzB17UJ9EMVSUW66J1l2rhkG4/F3g57OOITJ3/xuNleR/2Oc6+YRtAJTrFamNvWw49qs9b+RY67qPrnWDKHCWFyiVtax7elGXBJYleybnimASMPYlervFTt16NA2uSTd+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G92CzxKyTy9kClnqgU5QDjynYXibM3BZU6ENwotTuxE=;
 b=PH+YLyp+coNzmpaKJCk1gfsDn3GnWCFhaqhNIwiuR1ODZQkUyQvJqD/mGJoeCEmiGOQfQ/Nag3lsuc7lY0JTePpBVhRWrXbKP2jBoXfcDOok9zlMh6J2IvIOnycQHZlIuni+Yx04mmnpRHec/BeSU4uWGY/+cJT0PgLhaYoD4dJl9czsG1aGbNAeCR45AVGxqHVhxChkNogkjJqChA09xOU+Y6hii683vxxfce3llGvxPGtItovB1CsireCUDsJKkmFBirqw4f28dqSZFa9x7+FxFJB35jOg4PP3U5arEMrF7+xoPd/3ElyWsJxGF9E0Aun7UjW5a3hZUaBUcawGuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA1PR11MB6147.namprd11.prod.outlook.com (2603:10b6:208:3ed::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 09:50:46 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.20.9891.016; Thu, 7 May 2026
 09:50:46 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, David CARLIER
 <devnexen@gmail.com>, Andrew Lunn <andrew@lunn.ch>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] ixgbe: E610: do not fill EEE lp_advertised from local
 PHY caps
Thread-Index: AQHc2459zMlGobF0DEGAar3JUmUAzrX909cAgAATSgCAAIgPgIAD5x6w
Date: Thu, 7 May 2026 09:50:46 +0000
Message-ID: <PH0PR11MB5902E858BB52D5ECCAA9F6FCF03C2@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260504062257.77460-1-devnexen@gmail.com>
 <2e4cc698-70da-4305-ad0c-b5258f029daf@lunn.ch>
 <CA+XhMqxjWOXVJXGUx5BE+U0S0SOOoSwaKu8eWigS=J5EfFejcQ@mail.gmail.com>
 <92b40e66-3f68-4d4a-b0cf-47b8aea5c72b@intel.com>
In-Reply-To: <92b40e66-3f68-4d4a-b0cf-47b8aea5c72b@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA1PR11MB6147:EE_
x-ms-office365-filtering-correlation-id: 5dc2f59c-99a2-4cd3-cc19-08deac1e1ce2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: n485dE5Vd6LgwExdWJyrHOlr1R38FeXu91pZzP37byFcza1/i/AdN+fuGXnuYzewO//jmgl50Bij6xhu4oX8uCEendYJ/tMlVXxK7WEO1AB6G0bXiJFbSoyjO11y5GcV5NMk5K+fKHDTYWcoszJffKUKG3jWbVGg2WxSyDQOBBaaoNUiQvTUEuHaz70yNkIoSzGMuDPDB2xNpw+Bw8ExPQeWoBT4OGk+wENDwqoO3xRwMx3VmJ32+pGmSv9f+rz4DGn3TX5GNLfxfHMaTo2OawRt01zdQv83sYPkA3qGlSz1MjOZJNOMl+iq3xDGuegvDxOZd823K4gt9MVT5ivmkkrv3bv0go2vTWyqxiAniE0vXnvJmxugBHLbJITn4qLXaW5a6BO++Li7yFkkpMizslRk7Bx1Y5cO9UWeiLh0yX3RE1VogF7D1ytW7kh0tLEmfRsYfO36zcnSYscNH9AVIeoOvzUpk8mmlNLoKTjrKaz6QX+d1lWYRcRB7FCLhq7DqNrv3wS3lyhrebU04BZnWCA/wHAqRzm/Fx65Hp/UWEDP0BU7+vtmg13AWDTbzIOoQD8fozR9lPNg0a4aPqejXdmt7zbDn9Qqd4uEJeHBfArgLqTEEX0jZKAmXZ+Mya38jN2olW9Ye3RIX2YBW4MO7kardAn6vZcLHZn7+NzP/NvjA0jjup0fQ0l8/r3NZn3t9SFvP5dX93H/FbysnaHOK2CXCSKv1w38//UC/NEt+c73bLJfWPstUrkF1C6RWoyA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnRDMzB2L3U4SXZHTHBuenZhMGp3TTRTcit5R0hSRWJyZmxWUzIydFpzZkFC?=
 =?utf-8?B?eUxsYjVOWm92N1pNYWtiRHBhMlk2bEF3RlplQTI5VXhhazNhT1RPRnFsUnlG?=
 =?utf-8?B?Q0RYUnd2aDllQjIwZGcxRFB6Z0N1RFRwZkFHY1lMT1ZXUERqT3dJT251bFJ3?=
 =?utf-8?B?QlVyZnprU0pGKzZaYzNPWVYxd1BTNkRVcG5ESkgvV0FGcmhDeXhjVThsclhQ?=
 =?utf-8?B?QXFjTnRKd0o3RVNMOUEranoyOURRQWIwZG9OZFVkZ0ZMQmZRVkQ1dlZIbld0?=
 =?utf-8?B?OHpRSk16MDRzVkN3dkJZU092MmxUV0dlOUxyeUdHT2dFYUtGbktyb2xUUm12?=
 =?utf-8?B?cGVCTzF4cTN1bUZjQ3BaL1p2cFA0MllSR3JiUFl1c3Z0N2V2Vm9qK25BN1hq?=
 =?utf-8?B?TDV3OWlnTXp6KzR0N3o3WHlIbzIwVStHZFlmNFBzY1l3TVFpYmV2ek1UM0FK?=
 =?utf-8?B?T1pGU2hzUXlCbVNGOUxhckcyVjZaVytFOXBuQjRrY280RDNQVWlONWtXQk4x?=
 =?utf-8?B?VFhyckdyd210L2ZRei9qNnJLSzlOOUxxNk9PZjNzRnkyQk5yN3cwM3gwd0Nt?=
 =?utf-8?B?enFWZTQrN3dMNElGZHNJRnVLbGpBTlk1VlJZWk4xZnFxQnFWUDE3YjJKLzh4?=
 =?utf-8?B?UTBkUzBnWDdNNGs1SlNIZDhYK2tTTnlma1o5NDNIeUx2SW5qUnFzZzVnaCs0?=
 =?utf-8?B?MjJoM1NmTDFzWXhRRmtKcGg2VnJCeG1CMkovSUtBUjk4QkluMTRtV0hKYjl1?=
 =?utf-8?B?RTI4ZlhNY2ZFY0h6dk9TekNNRHRvY2Zjcm5ITDVWbGVOc1h4V004dFVMWXVu?=
 =?utf-8?B?a24rclBPcUs1Q3YxelpDTVc1MlVPdUFXTHlhby8ybnkxV0swZk9sbVdnWG5Q?=
 =?utf-8?B?OGIvMmJoTkN5WWx1U09pZDRjRVFzYnlMMUxsbGc4MFphV2VOMm4wNVRuOXVZ?=
 =?utf-8?B?bDNCYUh3RUFhYjhKdTA2Z2tzWUVBa3Z3NWo1Um9pNkFNZEl0cnpkZUtVeWFu?=
 =?utf-8?B?QUZPRGplMGViUEcwSENSQ3lnYkVyK3hkbDluc3FTMDl5eDJXVG9VanJMcUc4?=
 =?utf-8?B?ZjJVWG9TQUFkK3RVS1BjZlRObTdHMmZQWUM3dzhzdlBCNjNUUEFxemRTQVNm?=
 =?utf-8?B?MnJieHgwbmt5VmVIWGJlTC9DV2xTRkJMSnVmZC9jRFNEVWczS0JOVmYvSXI2?=
 =?utf-8?B?TUN0cFJ1MnlBVmJocEJ0TFRSODNaRktaVEpaWWVaOEJpSVNPV2FyWnh3UXpB?=
 =?utf-8?B?RUM0ZHYzQmRheDhtNFM2Y1VnSHdyV0I4YTU4TXlMa0Z4eFhoMWZxeWdmUmNR?=
 =?utf-8?B?Skc5ZzkrdWwwbDRqeFkwQ05TN1lUZmVqL2JWM3RNRTF1UkwrcjZabitlYVNY?=
 =?utf-8?B?YVlYcXVFcy9MSHRaL2NWVTEzK0FLL0dlc0ZxaWQvL1QwMEtrci8yMmZRRG9R?=
 =?utf-8?B?a0FTaWROcnN1K3ZqeGlJRm1DTldyUE5QWlJ0QXVtM1JJSW5sa0YzL29TOFhH?=
 =?utf-8?B?TndVRXFRaFVQWjV1VDRqeURqSVB2RXlBaGt1azdGZnJVZUlBWlJKY2lROVBJ?=
 =?utf-8?B?SDZlK2hSbFJnSGNLVURFcTJvS2FtZ3lCRFozRG1aQ204SGk3Z1FVYXdaU25S?=
 =?utf-8?B?MmdGdWE3NUFtVkY3ZXJDQjdObEViS0VZMTBVTHUxYXQrZGVnTXB1bzJhdkF3?=
 =?utf-8?B?VUs0OHQ1Uy8xOXJYWDVJSEtKeGhPYjNvTXlCRUM1ZmZZMkpYWWR3cktvaVpI?=
 =?utf-8?B?UXFpcDVwVUxYZU13TWNiU2txbGx2ajZDUER5eDRrZldxL2VHeU8vL3dnem9D?=
 =?utf-8?B?L0Y1R21oVkpWd1JkelhBYUtYRzBncVo2R1l5am9BamwwWkYvcUFqWHdXanBz?=
 =?utf-8?B?cVVYYzlXK0gzVStWUVlNUStUM2NmS0lhNVdEdXgzN0xRUzlndHZlUHRJTGZF?=
 =?utf-8?B?RW5xVElZNXNRcHBmOXlOUGZpYk1aNTZNdzFmd2c3VUFBMUlFMEJGcGVmTzlz?=
 =?utf-8?B?ODVycmpwVmR2K1BLa3NQVG1udGF6TStnTkhzbTVaWDhtc0w1S1ljVVpobVNq?=
 =?utf-8?B?cGJvY1IydThvTWFCKzM2Q2g3aHNmR2tiSkV4UG5CQ1VNUWN1OFc1SjZJSjQy?=
 =?utf-8?B?b3A0dS9NY1VoUkJ6aExaQ1lwTllXMmZuRzRjd094MVdCZXI2RTRFYUsycFl1?=
 =?utf-8?B?MCtqa2l5RlI0ZW42bXZ1UzYralE0RU5vcnh1ZWczR2VDVkhkUmlPR2hVbEta?=
 =?utf-8?B?aVRRZzF1WHQvNUVJdWVQTEo1bldEV2JyYmhUWDBCWGpxMks4UXZ6QytnOVRI?=
 =?utf-8?B?NFl3cG9ucnpvV3pOaDMwbGtTa3BibjJOckZZMEU1YUpZeWQ5Z0s4Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rX+kKEWUjtSW8+/nub0ry1VY6n9r+I7NaaWqzpJcV9c/wngPTGMo3Ts5/Wg94dRPR6k/oQOlunSXaAJzvMfV4H7R2vsDGiGyxCzYqSMa2CCQ6AeeEWuAeLKWXL7aowFEXFcUQ69Oy4CD1yfAO/uDkzsAetzMYvumkV1PesESTOhBNb59df6nKnd6Kkgl5SC87SZgvTY28VgGmwr3EGiXOMZdlo0agEjEVpNNjtQUkIXaSgq3m7QrUbVT4rV8oXn4EwyQv5OIola7oM/aLfJ+OSrGiLs6wJRG7MV96Fy8yyLLJWEdToK0qSjQbk7/l93lHKGUN7leyq7zFqTK1obDSg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc2f59c-99a2-4cd3-cc19-08deac1e1ce2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2026 09:50:46.6751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eu+INtdL9vYaAL6xF/E53T3sP5WiV3/wdbbl5APaYwJwF1f7nZBOtcNYVSv25qahtPBXbNSaBLdvYHhHXdB13O3tgbghwnCg1crVSF9T7VY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6147
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778147452; x=1809683452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G92CzxKyTy9kClnqgU5QDjynYXibM3BZU6ENwotTuxE=;
 b=QG8OKX5Gf1TWdGJG1vsif/8uv1tRFrLvnBMgVJlREzaXuq6ZokOQCqpX
 wrkr5emmsNhiZe8EhVx2or+q4rrdBJgR+z2i/12/Fp781dGdao5IReA7i
 W/qqpzq7JARWd6KGwcsjqgEAQtEC76UEnsfEIxA7QxKuyE0kkY1PgmutK
 QBDeNUJOlZHfgGEJDzThdLnXGnxKvJJLep/Cmwp+/qI9M620H5i45vspl
 Id1JK6zR9Zfe9yZe6n4ApY7N5UQLBxqugAGsqHHPwU+6Pz3fXVvIWBSJA
 Flwfr2SY3UMTpJE92dlMFF45IyUFn/RSoHgiH4+/t/nAHj2HJKE48W2EI
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QG8OKX5G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: E610: do not fill EEE
 lp_advertised from local PHY caps
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
X-Rspamd-Queue-Id: 023FA4E63E5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:devnexen@gmail.com,m:andrew@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lunn.ch];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,PH0PR11MB5902.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

PkZyb206IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPiANCj5TZW50
OiBUdWVzZGF5LCBNYXkgNSwgMjAyNiAxMjoxMyBBTQ0KPk9uIDUvNC8yMDI2IDc6MDUgQU0sIERh
dmlkIENBUkxJRVIgd3JvdGU6DQo+PiBIaSBBbmRyZXcsDQo+PiANCj4+ICAgTm8gRTYxMCBoZXJl
LCBmb3VuZCBpdCBieSByZWFkaW5nIHRoZSBjb2RlIC0gdGhlIFg1NTAgcGF0aA0KPj4gICAoaXhn
YmVfZ2V0X2VlZV9mdykgdXNlcyBhIHNlcGFyYXRlIEZXX1BIWV9BQ1RfVURfMiBhY3Rpdml0eSBh
bmQNCj4+ICAgaXhnYmVfbHBfbWFwW10gZm9yIHBhcnRuZXIgZGF0YSwgdGhlIEU2MTAgcGF0aCBq
dXN0IGZlZWRzDQo+PiAgIHBjYXBzLmVlZV9jYXAgZnJvbSBSRVBPUlRfQUNUSVZFX0NGRyBpbnRv
IGxwX2FkdmVydGlzZWQuIE5vbmUgb2YNCj4+ICAgdGhlIElYR0JFX0FDSV9SRVBPUlRfKiBtb2Rl
cyByZXR1cm4gcGFydG5lciBpbmZvIHNvIHRoYXQgZmllbGQNCj4+ICAgY2FuJ3QgYmUgcmlnaHQu
DQo+PiANCj4+ICAgVGhlIHNldCBwYXRoIGdvZXMgaHctPm1hYy5vcHMuc2V0dXBfZWVlKCkgLT4N
Cj4+IGl4Z2JlX2FjaV9zZXRfcGh5X2NmZygpLA0KPj4gICBzbyBuZWdvdGlhdGlvbiBpcyBpbiB0
aGUgZmlybXdhcmUuIGVlZV9hY3RpdmUgLyBlZWVfZW5hYmxlZCBjb21lDQo+PiAgIGZyb20gbGlu
ay5lZWVfc3RhdHVzIGZyb20gdGhlIHNhbWUgRlcsIGlmIHRob3NlIGJpdHMgYXJlIHJpZ2h0IHRo
ZW4NCj4+ICAgbmVnb3RpYXRpb24gd29ya3MuIENhbid0IHNheSBtb3JlIHdpdGhvdXQgaGFyZHdh
cmUsIEplZHJ6ZWogb3INCj4+ICAgQWxla3NhbmRyIHdvdWxkIGtub3cuDQo+PiANCj4+IENoZWVy
cw0KPg0KPkhpIERhdmlkLA0KPg0KPlRoYW5rcyBmb3IgdGhlIHJlcG9ydCBhbmQgcG9zc2libGUg
cGF0Y2guIFRoZSBFRUUgc3VwcG9ydCBqdXN0IG1lcmdlZCwNCj5hbmQgSSBiZWxpZXZlIHRoZSBz
ZXJpZXMgaGFzIHVuZGVyZ29uZSB0ZXN0aW5nLiBJdCBpcyBwb3NzaWJsZSBFNjEwIGlzDQo+c2ln
bmlmaWNhbnRseSBkaWZmZXJlbnQgZnJvbSBYNTUwLg0KPg0KPkBKZWRyemVqLA0KPg0KPkNvdWxk
IHlvdSBwbGVhc2UgbG9vayBhdCB0aGlzIHBhdGNoIGFuZCB0aGUgcmVwb3J0IGZyb20gRGF2aWQg
YW5kDQo+Y29uZmlybSBpZiB3ZSBuZWVkIHRoaXMgKG9yIGEgZGlmZmVyZW50PykgZml4IG9yIGlm
IHRoZSBjb2RlIGlzIGNvcnJlY3QNCj5mb3IgRTYxMCBhbmQgZXhwbGFpbiB3aHkgaW4gdGhhdCBj
YXNlPw0KPg0KPlRoYW5rcywNCj5KYWtlDQoNClNvcnJ5IGZvciB0aGUgZGVsYXkgaW4gcmVzcG9u
ZGluZywgaSBqdXN0IGNhbWUgYmFjayB0byB0aGUgb2ZmaWNlIGFuDQogaSBkaWRuJ3QgaGF2ZSBh
Y2Nlc3MgdG8gbXkgbWFpbGJveC4NCg0KQWZ0ZXIgbG9va2luZyBpbnRvIGRvY3VtZW50YXRpb24g
b25jZSBhZ2FpbiBhbmQgY2hlY2tpbmcgaXQgb24gbXkgc2V0dXANCmkgc2VlIHRoYXQgRGF2aWQg
aXMgcmlnaHQuIFdoYXQgYSBjYXRjaCwgdGhhbmtzISBBbmQgc29ycnkgZm9yIG15IG92ZXJzaWdo
dCwNCmkgd2FzIGNvbnZpbmNlZCB0aGF0IG5lZ290aWF0ZWQgc3BlZWRzIGFyZSByZXBvcnRlZCB2
aWEgdGhhdCBmaWVsZCBhbmQNCml0IHNvbWVob3cgaGFzIG5vdCBiZWVuIGV4cG9zZWQgZHVyaW5n
IG15IHRlc3RzLg0KDQpNb3Jlb3ZlciwgbG9va3MgbGlrZSBFNjEwIGN1cnJlbnRseSBkb2Vzbid0
IHJlcG9ydCBzdWNoLg0KDQpTbyBpIGJlbGlldmUgd2Ugd291bGQgbGlrZSB0byBoYXZlIHRoaXMg
Zml4LCB0aGFuayB5b3Ugb25jZSBhZ2Fpbi4NCg0KUmV2aWV3ZWQtYnk6IEplZHJ6ZWogSmFnaWVs
c2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+DQoNCkplZHJlaw0K
