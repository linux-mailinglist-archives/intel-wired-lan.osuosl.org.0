Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPs6HmWV62m7OgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 18:08:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A6461267
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 18:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 776A884D36;
	Fri, 24 Apr 2026 16:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vCeFioP9EpII; Fri, 24 Apr 2026 16:08:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD34D84D33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777046882;
	bh=RdnrpqyiMdF2AQIXcG4NnRGCJODBA6wlMOI/vMtBYf0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ssglnqk/Qc5bnHpwqK6GfG4OH+vkXQPbANCG6QXukKPogGdyw+NylAOSnMxJCYVBS
	 d1gjQwxKNLc1ZGfRRP0TLhSDgXGjZQs/lQ+BjK6wHWX+GfcFoQHUpePmyAhOg7YL3j
	 hadBn/3rdQWx/FMLtCg9Ey0yzndjAdEEoy4E4QI73aYPLe5cSyM/jhXDq/+R9GfY5E
	 FAuGzJXJskc7DXzWARFAmTFNSI/DsOhYYMMMDmPHZz8rProOKepZqZL7LNPE7pP1Ek
	 pQX8jbXscRqtgB3rxtnvnJhD4HpKzSQ39R931MDAoWkWcumzHVZjtYMS/UTnhk2pOb
	 1ZYk5lnXk0kVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD34D84D33;
	Fri, 24 Apr 2026 16:08:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D53FD194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 16:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6BE7423CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 16:08:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aGS-MeL7lHJ1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 16:07:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF69A42389
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF69A42389
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF69A42389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 16:07:59 +0000 (UTC)
X-CSE-ConnectionGUID: ZKD9oZ0ASxujrpq9oqenOg==
X-CSE-MsgGUID: wpEgVxDLRAGM91G7K8tvdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="89413094"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="89413094"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 09:07:59 -0700
X-CSE-ConnectionGUID: Vjiaz5BWQb+y37rwzkWKGQ==
X-CSE-MsgGUID: mOQs0NTWSLigvL6dD+zs5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228650021"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 09:07:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 09:07:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 09:07:57 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 09:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HpAsz5/2U/zsZQ1FZ1W+5top9RpUHaUvDeUv1+A/xbC4ti2TyEBLShOnLHNtp/OnzUUbb5GvegvNP0+hwxrMKr9CzGg/mmP8htxzWvxhqNfO0unCe5iGeq3mS7/snTCLDBHvs+mhdiTK0tM8TK1/4UYsw3KJEcDDEdIOp5QcnwvglXp/9CBu/tatdInVSpiUU4W0PNq0JDD0lJHQFzYLjKCveHw0VqIg5w9wrGE7ZfyHyDx0440V/GXB2i02g9o+kklBReax/DJTb/CS7fOdUC1+QkciM/gcGDrim5QO+N8NQO4YFO+PSEG6/DRXb8cUp1HdhPI5Rx0FGoha4Fh+jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdnrpqyiMdF2AQIXcG4NnRGCJODBA6wlMOI/vMtBYf0=;
 b=aLDRFt2agWiW0FpBbvBIa0Ma1CVtr2qonUYluV2LKYSFV2l9anYVMVqmtHPlXaQu+oCyBCsZKBGCIo/D2AL1bRYCA1CwCbF/47EZpdZG4neXkQs17qmUQDOBPSbPlawr49j0diHr3SaHvnd5rhXdmmc8AVOeuz2w63YZiGmd9ydXnYVFpI8+AGkEdE1vBcNpHO/DDSHQvX+B2rKcqY7a9/MNt2qIk4UgmSyqNgkSMpCq0MmrLEJHb5JsEgBlR4TypvYwtdIJqQwmCCrkptass9BK4v3avvdEiZR7XX69eFX5KBVJG/B4vcTZnwDtZ2W6fB9OMx8cpiMfB0Dfhd5hEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF8B3F23403.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::842) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Fri, 24 Apr
 2026 16:07:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 16:07:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] libie: log more info when
 virtchnl fails
Thread-Index: AQHc05i825tHGOMIxEqOum4XlilsCrXuYX3A
Date: Fri, 24 Apr 2026 16:07:51 +0000
Message-ID: <IA3PR11MB898659D8A18DF05024CB56BEE52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260424031545.3777023-1-boolli@google.com>
In-Reply-To: <20260424031545.3777023-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF8B3F23403:EE_
x-ms-office365-filtering-correlation-id: dd3a4b0c-6b96-4319-942d-08dea21ba334
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: a+dqy7IV/Tp/hkjzeCBGnxA/XwEwp29EdwIAY+Sx24+WgkNjNGedShxkXcCMQGya9x4SPn9ktBURNufIo6ROutafqEzk0qi7ba0R6o3r6QA5Bkrui/EhBlW8jFanJ2M7DoW4ihVBZhMigsoTZvaZ1blCXgntWlYpMI6Nm2LpY2SDhmYJwhQ8F0JmFi0359LExywQ+aBvBwz+b//DSLjogLDIA1dHwxFu5iptqPNeVdFae1IdlFdeRB5+foDbgddSDEHMvUUTy3pyuXA9wAqjC8kni3qN+NNncOpR/7ukuu+Uz6UXFQkKdCRvT7KEHpleQmucxW+lW6Yegg0GgdwSlKwrllaMseFa5CBbV9okMhmgBiAr5OKMCqLYIL+Ky5r5jgyMyJeO1/m9T5VMtc8pv2OLanY44l3+ktSNk4c5cqC2Oni0e0GwwCCkO1pzw1TZjBYGdhGZlqtEx0gw/1bmSHnFe+7nVqw4mm59Us3azcH2S+ZZj7dFgCuGYxnjUDXUGPuRDF2AIzqWpiD0YRYhRlPHd++60YUU2Tth5bwabXG0+lmzOudN4e5xc4tflDnV0baomWFXPMFVgZKVHcJse0Uw8Hv8FSfmRbrA/IJAL4JmjXpA57X3fNEDeNuGgysYoEOgMFp9Fv1phQQmOOK6fJR6F/Lk3GCb2XdZQDtJy99k51fLr0JvLgQSdbqUgLogQpBJ7+E6pMyy8kq/ULxL7bKwk+xfGBgTyw6Tacw4hF6MqjYomM5oaP5O5AA6Na4hdN7X8qzpEP5Jo4LeIIz8AvBgUoLBvnA6cJf/RYPKwqA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVFFV1lqaGtTTFhUcUFXbERQTE5rWVJPSHM3ZTl4VEJZejBORnN1NGhWUCsz?=
 =?utf-8?B?K0Q0NzZua1ZXZHlXQU9SMXNqeU4zZ1hZTE9yNk00YzZQNVgvL3ozTERGbGYx?=
 =?utf-8?B?WEc1THRIeXVqQVJNM1ZjRHhBdkFqbzU2NEZ1V2FPd2NXQnRGanZ4NU9lWFlx?=
 =?utf-8?B?M2lweWpCVXNiQWk1MkJPaUM0VzZTdmlzMkpZdXBnN1pvODFuZnVCeUU1U3Vz?=
 =?utf-8?B?QjczeWg4azJGUFBTTFQya0prK0VvVEZDQWVpZDI3V1I1aklXZkkwNUtmb1Rw?=
 =?utf-8?B?czZOMG9mVkZESmQwUWVXTXk2eU9DbzNJWG92djJwYzhodFVjdnMwL284NnFy?=
 =?utf-8?B?K2s4UWZ2RzBRdE1ETFRiTHoyU0lWVHJVSWx2WFZGRy9La0NYeE01aFkrSjg1?=
 =?utf-8?B?UTBKeDYyTW8reG9yRGlZN1BYTkJsd0xDTDRNZG1PL0xPZE5sdnBUWDZ4OVRV?=
 =?utf-8?B?Z1hiaEd0RUtZTlM5Q0h0MlYrbHRLVmpmUnVEY0VPOVhkZGZqSmF4VVp0NTZy?=
 =?utf-8?B?c0VWNDVQcWRTTGMzVnMwQVA3MDlNdGdvKzNQTHB6WEJMSTFvUnNxUXVMbk1F?=
 =?utf-8?B?ellkUDVBMDVwbkVtU2pvTERIdWxwa0hjTzRvNUZ0amJZOFd4M281dk9XREVo?=
 =?utf-8?B?dWV2MC9QcFd3S1JJN1cyRXZOT3dPVE8yYjFONFV0dFB5Q3BNWDdCWUNoOVNO?=
 =?utf-8?B?azk2cnFLVXU3V3JKNmRvZHM3ZmJwU2djK1VQQTBDUjdXZHpKU3RVMVdrVkdO?=
 =?utf-8?B?aVVUMEllYXQ5dVFwcGRZVGFBZXh0ZUNKOENTNE5qUk9KbUJJN0Y1MjUzMlpj?=
 =?utf-8?B?OExOOUlhL0NBSTlNZlRHcjJFVXk4b2tNeCtsVWxMWTFPVzBkbEdVOW5YMGZS?=
 =?utf-8?B?WmlJNVRyamw2T3MrcVdLRDB5YUdaekRHS04ybnJjYWU0QWVXcTIzTGx2ajJL?=
 =?utf-8?B?Z2JXWXlCNTNLcmhualZJMDI4ZzZhSDJTcFhCNmJYRTNqdkFtdHV4OTFNYmJW?=
 =?utf-8?B?WTdtanczV2JoM1Q5alpPSlNjdE9QSitLeForTzdXbnpTKzRYendmR2hnNnJJ?=
 =?utf-8?B?dElrc3RKaDJkb0dxN05DNDBJMGFzdUxkY1BRVkdFRElpSGZnQVNPWnNUcXg3?=
 =?utf-8?B?ZndkbGF3dDVGOHVrWGhBNkZkSVd5anRkM2xTTWpDcEp3VmJrVk9VVXduaTh6?=
 =?utf-8?B?Q0xkUm1pa3pTVDVWOEJ4QVNVTzBQRHZ1NkVrVVZZRExmN2YvZlRRRXk0dDVB?=
 =?utf-8?B?ZkdKWk00dkhjZVExaW9yRWpqVzFCWklrSUgrMjhwZTBQVTVSc2g3d1BsVE1x?=
 =?utf-8?B?SU1HV2pYbDYyUVNrQjR2YUhCR1YyRFp4RWNMeGdSMnhvMDNkUXptWU9HTTh2?=
 =?utf-8?B?WS9KT2d5VE52STRtSFdxMDRvaG1ZTXNNMWtPeEVYVEdITzlJNE1ZNzNxQWhY?=
 =?utf-8?B?WGw4SUU0bU12UkhwWHpoQ2F1a3FTMG9LSkwxcFdYbXRrcEplL2d3bTJTYnlu?=
 =?utf-8?B?TUEzV3R0aVR6U3YxbWhJQk9nbXVsM09ZZWYrSXhydFlYZXd0a3R4UXdYVm5G?=
 =?utf-8?B?UGo1dVViZGtPRzNsdWk3ckh1R2tsRGFna1dLRHFQdjlvOThJbWpJbzZMY1BX?=
 =?utf-8?B?SEE4Q2U2QlhsWm91Z05pZXpHVzRyOEd1VkUyTlFnVjFRaGFTekNJWHEyM1dh?=
 =?utf-8?B?bjdJb3VaM3liKzBQWUZCWUJsYVJieWpKQk1vcDlsMzZUQnlEV01rOHVLRXE5?=
 =?utf-8?B?TVIxRDhJeEczdnhLVnZqeVZnaXFXWkEyNnNCZ0JWSEJYZ2J3c21rZnBXdmRP?=
 =?utf-8?B?SDVrazV2TWNqTjhDM3R3U21nL1ZzN2F1VW5FOXp4c2IvVFU1aUJFc0FaR3Vw?=
 =?utf-8?B?L2pYcW1NWlpGd0pIQXU4b2dhc1ppZ29KeGlRSWRmenB5L0Y5Wm1Zclkzb1R3?=
 =?utf-8?B?eGMwQVpnRjhLSEZrTEtOT3A2ZG5sYkhLV3hRaWYweU9taXA5cnNkMTJHaUpI?=
 =?utf-8?B?WUpXZXBlc2NlckJRQ1ZHN2FFcHV0L29TUWt3clF6MTZvTFg5TEN1VzJGVEhJ?=
 =?utf-8?B?SU9yRTk1UE9LRlFnN2pxOXB2V1ZReVE4cVZTWkJWMnk3aGlHSm9JcXlkM3pl?=
 =?utf-8?B?Syt3R0swZmRaNmIreUszQmh5OEtpbTZZa0lCT202QllYUWRJbmFvU3dQYllR?=
 =?utf-8?B?SVFlVUdXdWhSK1UyN3dpdEYwY2lPNzlqWTg5aUlEM3BOdW5ub3gvd3NZK1NY?=
 =?utf-8?B?YnJXdU5HVmRVMG1uOWl4M0d6QkVBMElNaXVOa3Z3aWdpRGtwZ1dzOEJFVnFo?=
 =?utf-8?B?Qnp4QlkxZEtPRU1BOUhnNkVOaWVKbEgzVmFzSkN4SjVLMEJkMzVyZlBQbURr?=
 =?utf-8?Q?+AGmL0V3MB+wVjKM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Iif7wyXvqdVQhIjFHqIZutubrBj99HrkPfisGl7HEIkgGn0Y/vnDrSpt2nUiEMQXZDMs9hl2n6iVpJ79pQCU1t48ux6mpH1LqJafm8hh10Zp0f/2Wd9hHzjHMluLyPESqSWWtCeHvixRZnxnegmxk4oM/jxG2aTgd0ZO2TRSOpNrQLRRAdV8HwPxl5qS4y9Piy2pOkNVK5qCJlkvwUuipTyWMhqhuatvq4jsbtTc7PIHSh8iBNPS0Q/ApT06InfRKCTUJCtUk8PSeG+/d73c5ArqdoHofgAcwTxb7J+a4BjHFBt3Ux6PNBl3C/EoHkjqeQ/9ArLmj3uoRTldsT6iNA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd3a4b0c-6b96-4319-942d-08dea21ba334
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2026 16:07:51.8804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CLz2uppDteRK+6GG+0uq2jRDemJueDsT0IJPUIH2fusyL7n9n7o19zHFMfrZ5X1yhx+NxxqIU753/lmMlA8gQ8QN2cmtO/2V6ea/rJQLaDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8B3F23403
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777046879; x=1808582879;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RdnrpqyiMdF2AQIXcG4NnRGCJODBA6wlMOI/vMtBYf0=;
 b=PsC0FxcrnzMMJqfz9KwDulLZl1mQh1kUehr5hlsSobR7DXQmR4Ua8NZ2
 07NPhAbLUE0p8IRgNsT5p0bLcqd8udnGpSRvprEV2NPFfdq/evpch9N3u
 4HZKGxo7GJloLzpZAgFzZGni3guzZq2+5n5l+ygcTHqg9lzkXBZR5kBsB
 Ge7L+exzWQWgVc/lKHZD8hVPsLMFp0b+HC7V6WuJLpFEBZAmIYNsrH/ND
 nxLHkWmQ/z8o7zKvDNhSMQ/l2qSE0aFccyIb2v94Nt5T2K0195msMQkQh
 F7GVVSYJtzFLbPhD+D5DM1WqGt/Dqhw6jvbBpqt/U0GukMP1e63rrpQf9
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PsC0Fxcr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: CD9A6461267
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBGcmlkYXksIEFwcmlsIDI0LCAyMDI2IDU6
MTYgQU0NCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
OyBEYXZpZCBTLiBNaWxsZXINCj4gPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBKYWt1YiBLaWNpbnNr
aSA8a3ViYUBrZXJuZWwub3JnPjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29t
PjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IERhdmlkDQo+IERlY290aWdu
eSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNpbmdoYWksIEFuamFsaQ0KPiA8YW5qYWxpLnNpbmdoYWlA
aW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRl
bC5jb20+OyBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2QGdvb2dsZS5jb20+OyBMaQ0KPiBMaSA8Ym9v
bGxpQGdvb2dsZS5jb20+OyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHRdIGxpYmll
OiBsb2cgbW9yZSBpbmZvIHdoZW4NCj4gdmlydGNobmwgZmFpbHMNCj4gDQo+IFZpcnRjaG5sIGZh
aWx1cmVzIGNhbiBiZSBoYXJkIHRvIGRlYnVnIHdpdGhvdXQgbG9ncy4gTG9nZ2luZyB0aGUNCj4g
ZGV0YWlscyBvZiB2aXJ0Y2hubCB0cmFuc2FjdGlvbnMgY2FuIGJlIHVzZWZ1bCBmb3IgZGVidWdn
aW5nIHZpcnRjaG5sLQ0KPiByZWxhdGVkIGlzc3Vlcy4NCj4gDQo+IFRlc3RlZDogQnVpbHQgYW5k
IGJvb3RlZCBvbiBhIHRlc3QgbWFjaGluZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExpIExpIDxi
b29sbGlAZ29vZ2xlLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9s
aWJpZS9jb250cm9scS5jIHwgMTUgKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2xpYmllL2NvbnRyb2xxLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9s
aWJpZS9jb250cm9scS5jDQo+IGluZGV4IGViYzA1MzU1ZTM5ZC4uN2VhYTc3NDEzNjIxIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9saWJpZS9jb250cm9scS5jDQo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2xpYmllL2NvbnRyb2xxLmMNCj4gQEAg
LTc2Miw2ICs3NjIsMTYgQEAgbGliaWVfY3RscV94bl9wcm9jZXNzX3JlY3Yoc3RydWN0DQo+IGxp
YmllX2N0bHFfeG5fcmVjdl9wYXJhbXMgKnBhcmFtcywNCj4gIAlzdGF0dXMgPSBjdGxxX21zZy0+
Y2hubF9yZXR2YWwgPyAtRUZBVUxUIDogMDsNCj4gDQo+ICAJeG4gPSAmeG5tLT5yaW5nW3huX2lu
ZGV4XTsNCj4gKw0KPiArCWlmIChjdGxxX21zZy0+Y2hubF9yZXR2YWwpIHsNCj4gKwkJZGV2X2Vy
cl9yYXRlbGltaXRlZCgNCj4gKwkJCXBhcmFtcy0+Y3RscS0+ZGV2LA0KPiArCQkJIk5vbi16ZXJv
IHZpcnRjaG5sIHJldCB2YWwgKG1zZyBvcDogJXUsIHJldCB2YWw6DQo+ICV1LCBtc2dfY29va2ll
OiAldSwgZGF0YV9sZW46ICV1KTsgeG4gb3A6ICV1LCBpZDogJXUsIGNvb2tpZTogJXVcbiIsDQo+
ICsJCQljdGxxX21zZy0+Y2hubF9vcGNvZGUsIGN0bHFfbXNnLT5jaG5sX3JldHZhbCwNCj4gKwkJ
CW1zZ19jb29raWUsIGN0bHFfbXNnLT5kYXRhX2xlbiwgeG4tDQo+ID52aXJ0Y2hubF9vcGNvZGUs
DQo+ICsJCQl4bi0+aW5kZXgsIHhuLT5jb29raWUpOw0KPiArCX0NCj4gKw0KPiAgCWlmIChjdGxx
X21zZy0+Y2hubF9vcGNvZGUgIT0geG4tPnZpcnRjaG5sX29wY29kZSB8fA0KPiAgCSAgICBtc2df
Y29va2llICE9IHhuLT5jb29raWUpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTEwMTEsNiAr
MTAyMSwxMSBAQCBpbnQgbGliaWVfY3RscV94bl9zZW5kKHN0cnVjdA0KPiBsaWJpZV9jdGxxX3hu
X3NlbmRfcGFyYW1zICpwYXJhbXMpDQo+ICAJCXBhcmFtcy0+cmVjdl9tZW0gPSB4bi0+cmVjdl9t
ZW07DQo+ICAJCWJyZWFrOw0KPiAgCWRlZmF1bHQ6DQo+ICsJCWRldl9ub3RpY2VfcmF0ZWxpbWl0
ZWQoDQo+ICsJCQlwYXJhbXMtPmN0bHEtPmRldiwNCj4gKwkJCSJUcmFuc2FjdGlvbiBmYWlsZWQg
KG9wICV1LCB4biBzdGF0ZTogJWQsIGlkOiAldSwNCj4gY29va2llOiAldSwgc2l6ZTogJXp1KVxu
IiwNCj4gKwkJCXBhcmFtcy0+Y2hubF9vcGNvZGUsIHhuLT5zdGF0ZSwgeG4tPmluZGV4LCB4bi0N
Cj4gPmNvb2tpZSwNCj4gKwkJCXhuLT5yZWN2X21lbS5pb3ZfbGVuKTsNCkZvciBtZSBkZXZfbm90
aWNlX3JhdGVsaW1pdGVkKCkgbGV2ZWwgaXMgbG93IGZvciBhIGZhaWx1cmUgbWVzc2FnZXMuDQpX
aHkgbm90IGRldl93YXJuX3JhdGVsaW1pdGVkKCkgaW5zdGVhZD8NCg0KPiAgCQlyZXQgPSAtRUJB
RE1TRzsNCj4gIAkJYnJlYWs7DQo+ICAJfQ0KPiAtLQ0KPiAyLjU0LjAucmMyLjU0NC5nYzdhZTJk
NWJiOC1nb29nDQoNCg==
