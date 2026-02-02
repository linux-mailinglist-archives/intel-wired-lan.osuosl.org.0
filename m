Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAQqAlKUgGnL/gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 13:10:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BE5CC37A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 13:10:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C0EB834DB;
	Mon,  2 Feb 2026 12:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9fl-Q0sFfSX; Mon,  2 Feb 2026 12:10:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC0AC833AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770034253;
	bh=OL/83UdFv0UD0ZSGoGmEIJHVdtF2XQJZJXb8kP/0Nj4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w0kNX10+48EF6Z6IxBzutU9wp6N6Ed+5dQ9F/0NdC7XKLQ+ErrCXD6fT7gj1JXrPp
	 aTP/zwV1ySJhveZrduDL8lluKth9DDKDNqVtcw0luD9BIWC8VPGYYSIS23He1ukCv1
	 RUxzK6wZggikUhZP/288Trr0qJyU5bE65Anl5hWuhTejUOe1lIGy3C/0Ti3rL3x9Vz
	 ixsTiEN1UYi7OudaB41fX1uFA0JplbYDE+p9sGBgl9NW9UjE2TbLLTpiZ2J1l/be26
	 uMqxUCzMUInUEue++4c2YfPqBUZZz3b5ZQqLxvEIXhuiJkoPEcNwoNO2h9pFTOUxhp
	 WeQLOZvp4YYFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC0AC833AF;
	Mon,  2 Feb 2026 12:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DE0523E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 12:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7845340A78
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 12:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oayTZS41pFBb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 12:10:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2BBD440A64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BBD440A64
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BBD440A64
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 12:10:50 +0000 (UTC)
X-CSE-ConnectionGUID: okYvUyitTeO2fieLevV8SA==
X-CSE-MsgGUID: F2L5KDRSR9Slz0mVPIvz+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="82298144"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="82298144"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 04:10:43 -0800
X-CSE-ConnectionGUID: CAPhFYL6TdWB+wm6P5dUjw==
X-CSE-MsgGUID: uiULswSFSWGs7e70hzOeEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="214442675"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 04:10:44 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 04:10:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 04:10:43 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 04:10:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zAliMBgIE/GTPlunD1nQRZ2KnIOJ/DVnWCj9IeVHivVa/68pZBjrVDqt4vrZCHpfJi0LBNb8Q6BG+5o5mKXwztjf4SgkUkVtuV1nRrKSa3TLw003Xi0iBVMBmu48KfU85EVCc3QIkygM6sHUMGtuwppqb0spgKjLIeZF6ZAdsYy1Gm0BJ8Ssb8gFCfSxJiGrHGESUb/MQlYQFgHn1hNtO/S8emviG/2TyVtSWAsmkrsLesTYNDEIyf5PMwi9r+4v9Q1R14vNuN2U1xRfN201eLvdCJmekerDTpxUiQNLoDD/7aRYn9/4iLtwTwbFP+/XfbHLSNkP2QpWQsmc3ZpCbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OL/83UdFv0UD0ZSGoGmEIJHVdtF2XQJZJXb8kP/0Nj4=;
 b=C7bw1rQpBLYYQHuRzvIUsTNCBE/9A5C0iZRsqf0FeM6Eky/olvYTJZ0ZSuYz/JQhS/9rcUWXDxcmzUhuefc2RY/l3oHUl+7q6r90+13JPw8PjqItWbf8UdF3trKkGc6GRdtahatZnMzcYCPnVwkgLstAowqRTJpxFi73R9JM0rKIB8U8HUHHbaSsDKbZEJogoitzFnn+nar7BpTXQdHN4QP3bLblC/8n1NGGgDRaQac7HxMasBBz7FA4sH4g7R97l5nv3WK8Vl97rKMzGyIXeRtql/fUKsVEPDh3YSS4N/FtVHRrmNrNSjGB6UisKJZVmd2d/O5nIuJitBlpEe3MsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6769.namprd11.prod.outlook.com (2603:10b6:510:1af::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.14; Mon, 2 Feb
 2026 12:10:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 12:10:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Michal Kubiak <michal.kubiak@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix crash in ethtool offline
 loopback test
Thread-Index: AQHclC1NjSH1n8HQjk2OPytOV5bhGLVvUWDg
Date: Mon, 2 Feb 2026 12:10:38 +0000
Message-ID: <IA3PR11MB8986234C9E57E6A57FF408D8E59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260202101755.315528-1-mschmidt@redhat.com>
In-Reply-To: <20260202101755.315528-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6769:EE_
x-ms-office365-filtering-correlation-id: 4a54d297-d72e-47b4-7a21-08de6254143d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pTFEWbMKSgQ+1hszZ03q3JirSvF/fSOWvhhmjR0G8OZPk1PWGi9zFy9U9x/e?=
 =?us-ascii?Q?OFUzh9RFRcwkFHJ7qLqbdJmHWYJL/WX0gNqRDR0plEXJWQT/Iw0jJs+SXTuS?=
 =?us-ascii?Q?1uGC8fkwJXQtvWKy4ieGV+FKNZhLSC1DfjtrU4VgzAcSXMhk0SNgVCJHXdIM?=
 =?us-ascii?Q?t27Fmt8XUNZ4iZ39mSlmnL77XZK9ujYwSeNJ1aM3zLocZMC8O7nVNX5M58xr?=
 =?us-ascii?Q?B3siRq0dPS7E3J2Agtecmc38QkW++oBAY47aMIvI6X1H1oQRvr0qu3rzHYUb?=
 =?us-ascii?Q?ixaQ1Ks20d5aV9wdqA9LsstjyWLAXo9QRLzOI3g9oPDGg01ZBuhQ7d08OHfG?=
 =?us-ascii?Q?wgs3VDwetv2L6903SMXlGThi9VtFzy32t/ZP2cD+0SkSEBDuKpTA2jwyqlz7?=
 =?us-ascii?Q?X1fLGqURutV9n5ZzN5NLsYcWU2YbCTN3tb/jtVIz2xccda8jSE6LpRamq4Cg?=
 =?us-ascii?Q?yJ2bR0Nzlunnvx9kMXwdDuWJyFSU+n6Fubji+TWkGBAfHw8lyc/9UdF+bGDZ?=
 =?us-ascii?Q?nFaeM9E3w342wl6PPzNKA92wLZA1w+0cLcldq6z/6rCJcCZbX1SrHAKdIyV8?=
 =?us-ascii?Q?go6THW+onY+G3bYLZWMl2rPsqFITTx5uyUAD7vGgZ4kPvOiFw0tjy7/UqS3C?=
 =?us-ascii?Q?0qJ/RjNu9oQFTexunryuaFOsSqe4ieRaoKHR6eipFnEQCfmNYU1yIsFOy/sA?=
 =?us-ascii?Q?gAjL0tZUxcKHJHL/Q+3WAovvzjx1QV+u3/yfjx4eQqVHc08z4x0rkAebHRwj?=
 =?us-ascii?Q?18PcwDEhCjsx9y3HTLQvgRUUsx4kMT97tFSZtLJjtzU5054QTfnNJBKNddqm?=
 =?us-ascii?Q?ufhfeQaZWpUlyJ3tUTNMhBnVYA7Njx7ewkPVrif6mIkAmb0/dTsPPM22W9yq?=
 =?us-ascii?Q?41lGHCzL1epiBZtIOjS91utpw3LSfFzZmnNL3khYlGDPNSqPSC5Q0ZydfZVS?=
 =?us-ascii?Q?4UOtBo0xgBn76q7nnm1BtHs78X/QaeWHVxPRUjnqi0MPKB83yeAIOD8nt2PV?=
 =?us-ascii?Q?s2FkQBJUtAxoBzw5CYROIpxn1FL1X8wL/lZ0wmHya2m3iSIZMJhKW8vel1Ej?=
 =?us-ascii?Q?RW8UMtqf4ycxP5L51SU2Ff8nsDzg0w7MAfZNJxrAG+dZIkmNZzdvhfGfQP+h?=
 =?us-ascii?Q?Cmr13X+snkxRGDdD516cGY8baTQVItH10y3sOQ6G4K0OU8EDDP16/22RfuzE?=
 =?us-ascii?Q?gjstJy4Ct8D/albKNTNAcx0W7OL+BzLnfYAcUPs6IYPQWpUB7tgXhVAEA1q4?=
 =?us-ascii?Q?WcmkdEbmXGOlx+8f8OA9+z+7A+AhezdS5hDH1GqQwU9svlGCaWV4KhQFHyEd?=
 =?us-ascii?Q?vtEk+KOqMHTUuAgMyc0INns+xo0QlCImIJNTaT9BLEuOmuLs9FkWbAAlq6Yi?=
 =?us-ascii?Q?MQAk7LElbMO8Ydv4DbRFOCAhYqWJ5GzIc1HDlpRSP3Efn+AzAltLDrAbQK1g?=
 =?us-ascii?Q?KXJ+jB6cON8fIf4q/9vuwACn0pH/Qn7Kfto2StFpmheY7b9qCwBXUV6+hI0j?=
 =?us-ascii?Q?bsSOmwaU4+Y8fyQ3BrVaXdfirpDAxG/w6nC99w04iD5mvNy0nAvGhXvqQU4q?=
 =?us-ascii?Q?l+tHkMp/mGZ1ZNrgqa1+JJM2+tzHcEDTtfZHQqmS/ALZEvG7QEHrRuGO1v8P?=
 =?us-ascii?Q?5i5SLx4g4JR8YF8dbTQOtiT1m/4I1MdNpWrmtNA0zqYW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ySuXUDvOtwVvym5NV54VBW0l/cqdlxNjMjaAlwYWlmsDudPCUXrur8hynqjU?=
 =?us-ascii?Q?j8N36QKG3VoAIf5kto6mlplqrfBB1cORd6OqBFRbNpW6TGoxM6ZNcSIXG+ji?=
 =?us-ascii?Q?7Giiol2wAl/MD46jqtaJCHaqfWSvV+Cs9AAAUE9nIkm+JBI++jbIHbZINo4Z?=
 =?us-ascii?Q?1psIm1UZuwOT1wn8bbSn4lOCLgLAfNDiywCpBtYIIRFAdvBRd5EM6uKB066X?=
 =?us-ascii?Q?Q5wb8wb9Dc7+kFZs3PCsQQRIktGp0m4kCRJvHMRZ5fTEL5iYPsrQsWEXEvn9?=
 =?us-ascii?Q?BJUHfyOMgwIo23BvFtiWgtGMZOho3Hg/8aDWxCUcExs6ebYtaDmKQC6fy8tH?=
 =?us-ascii?Q?R6uYGmvQCxZaPu7lX11uJ7nXet/RBY0xU3ehCPvgCBAKJBp0OVILZDq7x0Ik?=
 =?us-ascii?Q?vYGcEbreU9h+vZGLrjpQ+R0QUl7fvVsR81AFUZrKFCAnvng3MmobrToz7AUJ?=
 =?us-ascii?Q?2e74SuN+rJOq+sXq0RGn7xPdpW1blykLemSyVSEX7KfdyluDxkF/VuN3PowW?=
 =?us-ascii?Q?2FRVbA/ARj3zt5h0G4dr69LVjS+BIHMguIr4wffEGFCPqIxT11dW7mP5F9Ks?=
 =?us-ascii?Q?KLLzebvppe0TLr9I1gPyA0GGdw0ScJY5i1V4P+R1Z6hLGy9JM6Pa6MQSgQhv?=
 =?us-ascii?Q?MkQ/otd2TzU3VPyEexjCas93Bnp61O2ZGrpBCoYCV+a6Dy1RvbzEUziVtRAQ?=
 =?us-ascii?Q?aHEVHCyCI9MrDeFHYuU7ybPZJDARgHoFp3rwVXovU3ZmHdTH2P7NahLze3F6?=
 =?us-ascii?Q?c/iSyP6K/bvUnuDF2XiXRx02ra0XoeCOKswNrGn31cRdlSeMGuZMbw4ef0mm?=
 =?us-ascii?Q?Z9ze2CDldZYARJOFA0S1u9t0Gr8OCOwFrCP/+eX6CM2Zt3fZPyAT78bIH3wc?=
 =?us-ascii?Q?v8k5dZlZ8oPD6nUWU3PipLIdpILqlQJZh47YM1ds4bXCKDe40sQuQ7e0oJ5p?=
 =?us-ascii?Q?knBd3pFwzfyYMNysTQbxP3e458p1+Cvp8tLUdg/uXzikhvVx+UfT+T0LKxCG?=
 =?us-ascii?Q?S6UofoX1nkllGIp1SuJ4+JMDZHegOe6haNdxChFsUu3ER6y0aDed70m92AcH?=
 =?us-ascii?Q?+QessP3KBaIqt9Hk1dZmSVhE6SijBFZOCCnx2txKQZyf0zIilklcgZlyKhaq?=
 =?us-ascii?Q?VH5tvH8GqpmYDgX0t5WXJ6iHao938hLwXlrJWPFkyb9dntd9hO214VXb6LyI?=
 =?us-ascii?Q?aPIso0e3gqF1PygG2djKinDwKx9UPR0B4ZoNaundHDTtp1ZL8fRhVzdeJMXj?=
 =?us-ascii?Q?BVO+aiP+YZQO7dAHd8u7zz+xIhBoI1JWMeX1CpaRoOGakm+8bI8wcI5dYFSQ?=
 =?us-ascii?Q?azA7I4Ci6s4OmVicSDTgkPyU/KenA2yC5KKOI6/j8qx+kUQeWOD7jPEPDO7F?=
 =?us-ascii?Q?eHt1o0VI482+c1Sl5sOK3u63gI0Jz05yvDWyLJ44EpWU3KpnxEH7ccx6WU3q?=
 =?us-ascii?Q?IFuZLI6xOIjZIK3VqQR20gU1Xi4rypAm+G2gW7ksp9NRyYe3rCDqd6dB4ivK?=
 =?us-ascii?Q?8u24HiYRQYKaGeoC4tcR5b3FEyMX+AylgoswsJHJMJU0OktzjYUAPwFhgs/L?=
 =?us-ascii?Q?6ibv61AIcyYX8eFljURrFJDP743XhEpZBbyUXV0Ws5gFrYVb8kyWbVyacmqB?=
 =?us-ascii?Q?lIfNm+dUXjxy8kmzr0xX1jGO7b8uJRRgeJ/Zcg6zonlf4OBkGYXB40dHJ3QU?=
 =?us-ascii?Q?gXlLYM8tLZDSAMr90ZDURBCbhbPXnycO/cXIH8TwCAtWKqjOGqQgf52eosrM?=
 =?us-ascii?Q?+o3nMBaPnA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a54d297-d72e-47b4-7a21-08de6254143d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 12:10:38.9386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 86Zv8/1towLSB5qPZyuds1VUV0a1K6WSZOMuLgxRvusuBMuD2Z8qCzz+6srVP4dBkmp3YKf1JBGw52IXX8uSM2rSPi6j+YSSziLEk+GfA0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6769
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770034250; x=1801570250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jVcaoS9iWkcJY3d0mH7gKPO+IK9FOBEc0w0pVlbE4/8=;
 b=RyG0SSXPbVini8XWn5hM/MP3I+zaaYHGBitXmk7n4KnlqYBMbWVeN4+U
 l6XgyzlIofpyDPCyEkaNQncYNAvrqr2FL5bQCGNnc2VeojYSCrtRlgFYJ
 3gQ5gIRflnMVMM5dwL2Dp+rLD2KBljMCF6wFqCWsbS9XVudWjd9uGElLq
 l4VkmLnGg/r++YPpii695irtKbbuOJ4EzHrfyJbwdLgPSnwpToRvFsPQP
 Q33KsDFdTNSztYl3TL1jBn9276VIg53XOzcGCNIXYNVn663P0cPNUajrK
 7aa4MbMZhERYNP5FiMXTJ2cjgsq3Kt/yluKV8a5V0BvViwQP+Syg54HrA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RyG0SSXP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix crash in ethtool offline
 loopback test
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:michal.kubiak@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,lunn.ch:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 14BE5CC37A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Schmidt
> Sent: Monday, February 2, 2026 11:18 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Michal Kubiak <michal.kubiak@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] ice: fix crash in ethtool
> offline loopback test
>=20
> Since the conversion of ice to page pool, the ethtool loopback test
> crashes:
>=20
>  BUG: kernel NULL pointer dereference, address: 000000000000000c
>  #PF: supervisor write access in kernel mode
>  #PF: error_code(0x0002) - not-present page  PGD 1100f1067 P4D 0
>  Oops: Oops: 0002 [#1] SMP NOPTI
>  CPU: 23 UID: 0 PID: 5904 Comm: ethtool Kdump: loaded Not tainted
> 6.19.0-0.rc7.260128g1f97d9dcf5364.49.eln154.x86_64 #1 PREEMPT(lazy)
> Hardware name: [...]
>  RIP: 0010:ice_alloc_rx_bufs+0x1cd/0x310 [ice]
>  Code: 83 6c 24 30 01 66 41 89 47 08 0f 84 c0 00 00 00 41 0f b7 dc 48
> 8b 44 24 18 48 c1 e3 04 41 bb 00 10 00 00 48 8d 2c 18 8b 04 24 <89> 45
> 0c 41 8b 4d 00 49 d3 e3 44 3b 5c 24 24 0f 83 ac fe ff ff 44
>  RSP: 0018:ff7894738aa1f768 EFLAGS: 00010246
>  RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
>  RDX: 0000000000000000 RSI: 0000000000000700 RDI: 0000000000000000
>  RBP: 0000000000000000 R08: ff16dcae79880200 R09: 0000000000000019
>  R10: 0000000000000001 R11: 0000000000001000 R12: 0000000000000000
>  R13: 0000000000000000 R14: 0000000000000000 R15: ff16dcae6c670000
>  FS:  00007fcf428850c0(0000) GS:ff16dcb149710000(0000)
> knlGS:0000000000000000
>  CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>  CR2: 000000000000000c CR3: 0000000121227005 CR4: 0000000000773ef0
>  PKRU: 55555554
>  Call Trace:
>   <TASK>
>   ice_vsi_cfg_rxq+0xca/0x460 [ice]
>   ice_vsi_cfg_rxqs+0x54/0x70 [ice]
>   ice_loopback_test+0xa9/0x520 [ice]
>   ice_self_test+0x1b9/0x280 [ice]
>   ethtool_self_test+0xe5/0x200
>   __dev_ethtool+0x1106/0x1a90
>   dev_ethtool+0xbe/0x1a0
>   dev_ioctl+0x258/0x4c0
>   sock_do_ioctl+0xe3/0x130
>   __x64_sys_ioctl+0xb9/0x100
>   do_syscall_64+0x7c/0x700
>   entry_SYSCALL_64_after_hwframe+0x76/0x7e
>   [...]
>=20
> It crashes because we have not initialized libeth for the rx ring.
>=20
> Fix it by treating ICE_VSI_LB VSIs slightly more like normal PF VSIs
> and letting them have a q_vector. It's just a dummy, because the
> loopback test does not use interrupts, but it contains a napi struct
> that can be passed to libeth_rx_fq_create() called from
> ice_vsi_cfg_rxq() -> ice_rxq_pp_create().
>=20
> Fixes: 93f53db9f9dc ("ice: switch to Page Pool")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c    |  5 ++++-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 ++++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 15 ++++++++++-----
>  3 files changed, 18 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index eadb1e3d12b3..f0da50df6791 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -124,6 +124,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi
> *vsi, u16 v_idx)
>  	if (vsi->type =3D=3D ICE_VSI_VF) {

...

>  		/* clean up the resources and exit */
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
