Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eF93JN8Xhmk1JgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:33:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF189100519
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:33:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69A9C41A77;
	Fri,  6 Feb 2026 16:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id opRXqY57fsFN; Fri,  6 Feb 2026 16:33:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4F3441A37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770395612;
	bh=jH+iv5NF5sTrQTXOoStx4Li/IM7IEzYi71ONVD76Qn8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3W0FHGcOJ5LAAvTogE7adJ8aFXtpKRvVubwOBH0lHyuZgxFF8UTIVSkCxWWDG774x
	 wF/rAXrX4aGGlNCCqfHP8/bMyKiinL+UziIrb/V/9zqXcKigJ3zd1ebUh1k50fgIkH
	 gTmYDnuzd9FFS/+r5UbR4yc/qTuwJafNEib3Vgjm7wC/dYQy5w7ZksE/dZQHSUJQ6N
	 JaDaXShQZf2/OCootYXy5mHiLjGAf21PE1HwxQxxgF3vqD0C2+Uy6CGYw9DdLxigDw
	 +p0BgQh7LZCu6V2pun6VeSOR42UAucVZaQCRBiWndpj7mH5IKLt63cmMzUyjpyE0NA
	 FsPiPB+lB3VOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4F3441A37;
	Fri,  6 Feb 2026 16:33:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 850232EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A149408CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sds6acv7MPYP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 16:33:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5DC8A407DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DC8A407DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DC8A407DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:33:30 +0000 (UTC)
X-CSE-ConnectionGUID: H3ne+ONDRgK1Kwd41wvWQA==
X-CSE-MsgGUID: FSXxxyUaRcWGKAISOJhbzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="82973388"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82973388"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:33:25 -0800
X-CSE-ConnectionGUID: Kox6OUsbQdSNJNbXCC3B2A==
X-CSE-MsgGUID: JDC9IcuNRk2s/gbJi6Ah/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210197224"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:33:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:33:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 08:33:25 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.54) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:33:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vF44pgZ8vDhmxXkz1yp00Fi2iDU8W70+tNCBlDPGAG7wy7gAvRnPavJ0GQLHzjz8HQlt8oKr7Qr8LXK99SvKr3uAAE9yU/x911b0ccmWUBFKLWtboPand/GkTnKYdip10gA26xEY1FwnEI2a3MMlZKSABVjJ7KM4H5pTDa2Rman1ve/pF5moLyQMzrtkS+/WIfCZz0bOEoTeQTg4pGZ25htqVo2o7cfjd0Kwb1prNH5iey3Z8gcxBF++U3V2wR8Y2piA2ukN/N079qjRzJc1HgMvPMtuZgxPlCQsFx9ZkD+ghqEhm48mBaOD5pPDyPLjBOqO6+QVkuTYgRCAKnzhdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jH+iv5NF5sTrQTXOoStx4Li/IM7IEzYi71ONVD76Qn8=;
 b=v/RsEDdsGYXaOtgC1LWfGAdhoHeojoKGcngn+efL7AUbGLIIjAVhpJO3f85VKwtuFdM1QdDzPorlCBpQLpI+Pbnxe+P1AbySHgVvuXO3q0z6DHN1ZZEyU2top/40ouLz/vQkQqN1JweYJoTmQRLBmK8JuaK0BELf0mNNLYgM1R8BPh0wz60fdQISf18Sn72Kc/BhHXZKCM14Ful9NORX0P0IXLey6nK1q3/SdnTcB5eZodFEK6Lzj+5WFdmYtSNJB598+UfuZH4+4x4hUg596NrRm3Zc6tURleA2+DgL3+IdhFVgCuxekycEMX68AoQhebc0ec6bTX0KiOutIsOS4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 16:33:18 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 16:33:18 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/5] libeth: handle
 creating pools with unreadable buffers
Thread-Index: AQHcZTYq/kLZZSpx7UeCjmmLs2B4prV2QdMQ
Date: Fri, 6 Feb 2026 16:33:18 +0000
Message-ID: <LV1PR11MB87909472087A9DA0928B13569066A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-3-aleksander.lobakin@intel.com>
In-Reply-To: <20251204155133.2437621-3-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CH3PR11MB8441:EE_
x-ms-office365-filtering-correlation-id: 61020d15-cb03-445f-8e87-08de659d6f4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IdwwXhTcGfnt9yCb6/p95gya27ENysPj/E6BGwmBvzGoGtM3zRgtNF/L5rlA?=
 =?us-ascii?Q?7M7GxN4WcH9NxcEuPZkPont4acLqC4XpdHWP5zKB0MlOcIO2jQm7l4+E1xHX?=
 =?us-ascii?Q?z1Ptjt6npiczCWtUWo+VeY7pcAM6qUWOKduR4IcAbmmCQW1kEVBtI1CBd1Ud?=
 =?us-ascii?Q?q9tYCZqRwqSblL/3TxI2C/eDLUsl2uJktBjGZ+sGCvfzLI3g/yn2fUkqNWjv?=
 =?us-ascii?Q?lP0f4o5LZIItT06iG4/96App86KPRT2XfVoF4oOPMSAximVoj8djfsxKXC1D?=
 =?us-ascii?Q?LkivCM+34so9Zv9owpXzT/2BA5FWIi7XfwHj273ZljoxFO9ROWfb3i4yC/FP?=
 =?us-ascii?Q?V377rs866u5t6aN54K9y0r/SAQfGMiQMWYgWBgtnPYyiiLoaHUMl1um2WfyK?=
 =?us-ascii?Q?DgmfzsNWstcEtonK/uT6bAh8w1YuHPodMd8acNXYceWjgxTkMLsJi/0NhHHL?=
 =?us-ascii?Q?7tIobwsM/1r08N8Vkn2myefKD1n/2bN2Wo+Hwlbf1RcdqPORuVlhwhzZ/b29?=
 =?us-ascii?Q?YeJNIjDMNKptW6frY97ScAKdUKG71cX0n/LFtfqgolVEfzdI1vAMsUxpU31J?=
 =?us-ascii?Q?K+vahE877hY4HWjHA6A+7sY+PQymD6UxvkhQxLbS9fmOinqWhvmqPX8fxmDF?=
 =?us-ascii?Q?PAS7zA04lmE313Xb72Zb1loGQ1wbd2P6BDknW0v6qpsJUTI194r9vVuif/CD?=
 =?us-ascii?Q?5Ce0/kL6e9KKjHcAMVHeSPPn88Wczo11oINJuoZuWVjlzKfBtaRlXcAYlydD?=
 =?us-ascii?Q?Lhj+peZOlK9VfLhHI4hxJf6ggKsDyVOGPMYCwUlQ0n8yjThJ1phekDuejp0r?=
 =?us-ascii?Q?2WMLggvrq05bBFxxSbwiFF6A2ToiES9z3xJC+6o01k9YkFbewzlNML3wnZaE?=
 =?us-ascii?Q?7gH7AvesGuMBszDrT4zeuOLjb+fmXc5iqQAQFosf4LWkffv1OfiRGmfOpiYZ?=
 =?us-ascii?Q?Mt8hOK2kl6TeKzVPIaimbJPazV75ftzjmrNi+89VwCB9Zws9FqG1pNTR7C/H?=
 =?us-ascii?Q?FfLLA2BumoWhgOLUizxwRuWBwDNKHDw4rYxuUuAqx7VneLofqkM2k8MZC5l8?=
 =?us-ascii?Q?NvlwiyR5YHkDfi2C9lriHrp0STEToBBOV6LGyiEJw3sETiy+2qLOENQqUjPs?=
 =?us-ascii?Q?sIRidNTgfBOvQ8cu3RqcnMWEjzzAGrzArktHo8leiFWHQiKXnaQso0PPzHMS?=
 =?us-ascii?Q?CTOjdx/Tb3DXpugoZyz0yu9tb9xVKgJPIu1dlakwCuItNTeQKnkbzG27QQPp?=
 =?us-ascii?Q?tL1yajyfev6B2VE2RAfaP/voz5cvspy6oUeRIinplKO5YGvT8EA3SJMl5ria?=
 =?us-ascii?Q?D6oJMt2hFXgEp9tNNWjqBWo71vrEfd2ZWRIXzmZovqfEoEkrqhsQ7vXuojEM?=
 =?us-ascii?Q?Quuo6HA7mOTMO8BHse8HzcnhEXZsk2Cz5+DqNsc0b2vcl81UV1qsh4twZ9uY?=
 =?us-ascii?Q?5SdMFBNXrsyML2n6SLGADt6VqsrLq0x4e3SH7uVqQ+4ellB5vfWkrVYf+5kl?=
 =?us-ascii?Q?QEZgQrifwO8IQDgW7QGHzZJvekE7XEWY/afEMtINtD/r5P2yJf3lmUs0iJEf?=
 =?us-ascii?Q?mcCYGEz/4//645oGtqoUc8CySCGO6iL1gL9TjiGLEZ0yGJ0jhgQBLxCKOD/8?=
 =?us-ascii?Q?IEiPXuffz1ueC0zL3o2bR7A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1azNEtiXh94P04rUlboPJzqSDIbsK9mUUDZULgqb33/DyFruh9DhWgU9CyUX?=
 =?us-ascii?Q?f2sEdc/3A8hppnJC2We2fme8/PT8IefBAJa2Q1rZ5CV8H0QJf3u0EMzknQYu?=
 =?us-ascii?Q?G8XBO6Vn/aEEG+0LygCDitqOvEsfigMamRxU1mlC9+Gz/pgdrDDdNoDzFI9C?=
 =?us-ascii?Q?99xRc3aqX+7pUGnIoKgBzTI/ks2OLno0RkVTBMFcqpL8C9VHCZPxSfmRSdnc?=
 =?us-ascii?Q?7jKCy1FMXKB/sO8zlzpzvdF9rXJzfwgzK1NsdUHgg7+/T6WqlFeuS3b7IMaF?=
 =?us-ascii?Q?SvleXYS/LidnbvkpEbjBdPwPAXG443iLxenrOdKPQVZSBWNO9IxvQ329GwuF?=
 =?us-ascii?Q?nKsmPOC93t/4lhLBUIUaAYMDERvSshD9usYPd1yHl/7R8r5T9CaS4Ee3zVpD?=
 =?us-ascii?Q?aJpiLpzqWUjvgWMTb9GuS1JAFuVRgpZCJ/8w07WheO2eCkWSR7od6orKSXfQ?=
 =?us-ascii?Q?51kh52AcKxd4n2HKLeKoOMhIa1Busw8nSzMEZRbvchv7akOE4OaUuvDHVn7Z?=
 =?us-ascii?Q?Gw2LZek6vSnXiawGwvcosWBaNp9Cx7zjTQYIDNNI20J3BdjULGl+BobJjPVG?=
 =?us-ascii?Q?hZSJIqZtOfnoZkk0SEVKPaVyM+j9IES9IIwIxNxKv7+yMufIj7TCp3ya7gId?=
 =?us-ascii?Q?0VtjHJvtP7B7U4Ykq9zdIqN1GeKf60oixynMjCVbEW5CmcU7qEjvtOwBBxoX?=
 =?us-ascii?Q?qhBR4XSRUtsoZfjcg3vCH6vJpHUjTrA1L3S8LRPlgzKVb1DUXdnS5xN+Yxl9?=
 =?us-ascii?Q?x4hBVrEYgw306/SM9leRJn0BdwHRCtu0byXIiaCFDsY3/sNrsE8qbtOAS8KP?=
 =?us-ascii?Q?dECbJXebmU6pX8IgPavGIxeBvhpHk+kFYGR7s6d4mMalszgHQVGZznOIiLXM?=
 =?us-ascii?Q?ZtDfLHekyQOPVS4vtt+gOW+3BAYlFEb8qZEN+XabX5nJ5aEd1yxmJiD5VxnT?=
 =?us-ascii?Q?PGSSuhY+z5fjE+4MAr0no/KiYAicXNIttaB3zKeiDC3H92qw6tj98bnznG/s?=
 =?us-ascii?Q?K4wdyRBDLGveTYcS2V6lJmY0eqzMDKxj7IDCIevka8uxn0mvEvSwOd8HdoAL?=
 =?us-ascii?Q?4JnV4/VbR6i6h4+UYN8lj30Sse2hK/DugdbaWTj9o+D3xjxGfZ+NQnoCWRff?=
 =?us-ascii?Q?/MobqtEMfFRAtxSSGzeOg5L3eWA9eq7jKcRTQVJp/znoBQ0crrwhm8GN2kqP?=
 =?us-ascii?Q?bA/P+YUYo5KI+6jo+mSdDwB1rGDg4jYWKSwZm5GfiK7ntcv6+rV14OejJQ+8?=
 =?us-ascii?Q?TN6IC1r350fmzS1HF4o2R0v9OjKoYB5HPPifUJSna7qkOJghcHLyXZnjKOFJ?=
 =?us-ascii?Q?VlsEl2Z5osw8EiHu2w2Z1amczOXZSuXpm7210ucVBYCNcOyDY9TXf5n/imdo?=
 =?us-ascii?Q?U/gDRAM/aiFK6uEhtbLz2U6FAQmNM+U9DB605vjczvtd0PBAQS7C1VesDuj1?=
 =?us-ascii?Q?as4Jj6qGQNvi8ik9UyBnqkOfLe8nSWZLr/A2SOtLD1iUde+XBpZqwk6Xy9N8?=
 =?us-ascii?Q?1H5Lmz4BdWZR9lyYjKg+4zXNKl/h2h17q8UxboacE6xIilJ7wQBHRqtCEJ/x?=
 =?us-ascii?Q?v3++Fxob4Gm0CZmo8Ce2W3aDxwjrsK2pJUI42RuXUq3DJGdnG8zWx+heptH9?=
 =?us-ascii?Q?tqgulYUtqkb2NjZ2OA9eNEpE0/M/jpYN8BVPWoeLxIzy2a7XkzI96qmrGBtH?=
 =?us-ascii?Q?WeBE7s6AlnD5iWTNPuwNuygcs84aC92MXG5mGaG5Tle2tLxS6Fu5hqCdTwdf?=
 =?us-ascii?Q?XLD4FHmiwg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61020d15-cb03-445f-8e87-08de659d6f4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 16:33:18.4775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GMqGpXPEaLJzJePt8wfUQyoGr3wY53oud+wjBrvT/xY22fr/a/eB+guGfWvAon4eFhCOPayjLGVwMoYcZKUQr32q4UupW8l1QpmF4TbS1HM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8441
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770395610; x=1801931610;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8bZaexaciZVTwDWxdVdR+oII+Xy8cOAbvLayKlRhszE=;
 b=eXgQAUPQ+sV0lyaG+d+5kzJJRQaSaZbAdreMGSn3rXgwA7tXFOPPqcIi
 bp05BFJSrejVsAJpmWR/ZSgEKFRSWO1/9CGYQbyBSWYSTyTSfxc/tNVNN
 u1U+R6WxknGcv593JHGzWGB+RIeh+phO6LtDI5cUl2nnkFtz+sr9H/JCr
 GVuJydqa3Qa4ARUPXsetT5dcXAXNKGRnEHtvzCfX3N05/Z3p1muEKfK7X
 zHWRcQ1/doUgmEIcq+gpcfh8XyspVwQa8054634hrGzTohbjU6r2aUM5j
 K2jv1MGdfikZ1hmvumkcW2YGVNhGqVZkmM9ZqjZM2rZiHTwskRCtUwtkx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eXgQAUPQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] libeth: handle
 creating pools with unreadable buffers
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.757];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,davemloft.net:email,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,lunn.ch:email]
X-Rspamd-Queue-Id: DF189100519
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lexander Lobakin
> Sent: Thursday, December 4, 2025 7:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L=
 <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; Andrew Lunn <andrew+netdev@lunn.ch>;=20
> David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>=
; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon =
Horman <horms@kernel.org>; Keller, Jacob E=20
> <jacob.e.keller@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@int=
el.com>; NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@int=
el.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] libeth: handle creatin=
g pools with unreadable buffers
>=20
> libeth uses netmems for quite some time already, so in order to support u=
nreadable frags / memory providers, it only needs to set PP_FLAG_ALLOW_UNRE=
ADABLE_NETMEM when needed.
> Also add a couple sanity checks to make sure the driver didn't mess up th=
e configuration options and, in case when an MP is installed, return the tr=
uesize always equal to PAGE_SIZE, so that
> libeth_rx_alloc() will never try to allocate frags. Memory providers mana=
ge buffers on their own and expect 1:1 buffer / HW Rx descriptor associatio=
n.
>=20
> Bonus: mention in the libeth_sqe_type description that LIBETH_SQE_EMPTY s=
hould also be used for netmem Tx SQEs -- they don't need DMA unmapping.
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  include/net/libeth/tx.h                |  2 +-
>  drivers/net/ethernet/intel/libeth/rx.c | 45 ++++++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>

