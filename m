Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3F939883
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 05:03:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB20F607B5;
	Tue, 23 Jul 2024 03:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6utq1sOM7zDJ; Tue, 23 Jul 2024 03:03:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF38760594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721703803;
	bh=mqmmVNykdeweRGvi+70nOUk59ePC6VkdMtBDOeC7ECo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wg0aku/fkU7rrqDJYX7r7nVfa2WrOonYc/QWdm1qS0y0k3N6Mq5AqW6pszGSei0+I
	 QmlftE3M9HU+qBoF4U82n2PksImtxNYO0AUOzx+uq+nRGrk5tgZYSlFFOiY6YOFHgB
	 q3YlPBb0iHUfrjsSEETfRwB7RWVIgnP9XYCmR4Keo7k1fb7iT+BiePYO6FPD5BsmE4
	 gIlkBg1PT8hCWqAdz/Xn0U3cDaD1yZ5WTG6/X5MdqUHxGCfVt65jKZWCgF+uGez+vm
	 /cM7lXhooZuR4jZpmutJcKO6Nv9DxmMWS1OGtAmECDqDDnkFxVyZOVAFDf1aZdAyLm
	 xThqkMg6/k9nQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF38760594;
	Tue, 23 Jul 2024 03:03:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 243681BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 03:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B65B8114F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 03:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNMjcqe67_1J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 03:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0604081146
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0604081146
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0604081146
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 03:03:20 +0000 (UTC)
X-CSE-ConnectionGUID: e8ouCFOvRqyR/nyMW09CCg==
X-CSE-MsgGUID: w9O+hI5pTJKGtqwcxzBhsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23067665"
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="23067665"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 20:03:20 -0700
X-CSE-ConnectionGUID: 0S133/y7SWqEu1v316sh9w==
X-CSE-MsgGUID: RXpTpLUfSfuoH4aZmh+ySA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="52144448"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jul 2024 20:03:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 22 Jul 2024 20:03:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 22 Jul 2024 20:03:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 22 Jul 2024 20:03:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 22 Jul 2024 20:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XrIwXshlm58zbdwrabxbWdYY9e5tUtSOGX2GDbdpxFFGchGXKxhhFqQ618jh1MwYG8y8xS/jOns3HLpMQiTCzXc+GeVD+0w852uHo7ODtSjfR8YKFuCpvfYnYUMLFF3DXw6oNImoo5NnKi67BYrXDvqTBBbr/2VwU2mBqy83cuQft8vvU2hkULZYcMOMZjQQPYVAQLT2ja5QvT/TozP9oUXfGWY2JmQA3G5Q/8b1o+c00sZiMncngIR4tMSvUhQ6qTJ5ep5VSlYN9dG9IxErxWIgAYIBLNEbCfOyJMM5k/s+ADdlfDqEx9ePwMW8R1VlRGLQw5P1+gmE8+Pil17nzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mqmmVNykdeweRGvi+70nOUk59ePC6VkdMtBDOeC7ECo=;
 b=MrxJKbGfvv6uKzfOYCqNgXaEu0lJcNEGXgULi2iYmG4e9prs7pRpKe9kFp/xk2xTV29et+ipphUNrND3QfQOcd16uVbAf5Vn777/nQYBlWXPbWeidFTx/6IzpaSQfRgiOX26efBZgf5NqH2XICnCUZl0g+sctn1rnSC3P9vwYD8t5hFlexlIaqPlu0M42TA1ZwS6vvux5LrHjyHh4NGSUb6bDaMEgQ3D7a8FfHf2KOrnKewNb8uOu8Gs3q3DCqmixlKwgCxUt7iMN4tYbo6j2Qi3VxkMBxSPcZlgZPqPn0a8lDgHj1HoOaRRykzPSYobKjrmmk6C231daWh7mDdpoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 23 Jul
 2024 03:03:16 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 03:03:16 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add standard stats
Thread-Index: AQHauGOBZpXNSZvn/U68i3v0HvF+nrID5/mg
Date: Tue, 23 Jul 2024 03:03:16 +0000
Message-ID: <CYYPR11MB8429668C4544690C2CE7A6A1BDA92@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
In-Reply-To: <20240606224701.359706-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA1PR11MB7386:EE_
x-ms-office365-filtering-correlation-id: ed403465-a029-43cb-039d-08dcaac3ff8d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?dMyW5aENDnrwqkNxiBGP1+wRBwbb/GEKR2zDs+CdQLC3jDIVAmTMa7sawd0u?=
 =?us-ascii?Q?/OFxBTOscBx4KPLHr6N4RMYCci+s08cvaWY5sib+9pCFunApAtS5mFgEg9zF?=
 =?us-ascii?Q?r3NP9Nnwh44KPZ54RnStU7a60sR5gd2Aswv8OI+VpyENLMj1dNIQJpSdejw+?=
 =?us-ascii?Q?OrPwLGxQnIUKlG0iCUQWhj+dNJ2/vLu/6EEZ8Nju/oTo6Nx2UMtSxcIC9nMo?=
 =?us-ascii?Q?Yqw5q3rVnK8vLvNtc0tkawccvcyciYC89yyQZSWZbl/0sEp47Dz4H/B3SUh7?=
 =?us-ascii?Q?FmOJx1fuENtBhQ2eWxphcUZSBf+GpbxwfRhdG2kkQMqkdlQvV3btxyslU79r?=
 =?us-ascii?Q?eZ6u3PAZZHf424MQ3+GKjavXiTH0Cf+6p8NlEimk2YZOPewsAHfMExFVDmC7?=
 =?us-ascii?Q?QdqJmu7RxlXE3fL2/t0dlzilwLJqL91j4kVqUDNRUcnwUvbX6fTOXkk7N5Nh?=
 =?us-ascii?Q?DwvB6mktg3ZpDI+79Vm22/D1RyawYcb9ZBqKL3rRr1myD3xYIaQBE+h+msby?=
 =?us-ascii?Q?QvZojuD18JgbUkn+2Ns4XiRvJN4Bw2oL8g1YKc3eX3HuWX9TiKavC4xBQPfL?=
 =?us-ascii?Q?j45wIlq4uobW9f/9bbkKm9DU1JjUkMtT2Iu7ZgJz24RsmbAxU6MMumKkS/QD?=
 =?us-ascii?Q?qm4J8IfdKZhViVH9TpjMkz6zyUPzc0sO4Xc8hkJq8dK4dZWdVYo+cJDpgqH4?=
 =?us-ascii?Q?aQt5Up+mX9rqtkO+Y/RIR3D5kYTSnj0N2HjEd3bvw8+GjR2mJG54H8noPne+?=
 =?us-ascii?Q?/fN6f/AjeCOin55b18+KiLCxj7d2PzQuc9SWGK2/RZjvmb3EUR9MnZ/kG4p+?=
 =?us-ascii?Q?VltGo7/xCtvmxXq57mpq4J3zp4divifJGpjtMsYYGmOFsj8HPQ7ExbL4tO7M?=
 =?us-ascii?Q?O0B6Vx0XLSUeMiP6Z3FE2+bDsk9QJycyFs6ZNltOJiMVftwuZsYXh9Wxf2Wf?=
 =?us-ascii?Q?5r7MhG3YtrI6zn2CoLPHx8/Fj+0fHHUHNQVKmRzohGrII7i+IAUYND86RQre?=
 =?us-ascii?Q?IB4iDO7ng4zZebVuED6m7xfjw64mY43TRmSa57GiJJt2zHf21/Z5F+hD8dLn?=
 =?us-ascii?Q?oHdQx9C7U4Lrw067RF4jLoxQw2ymIRzH1vD59nYQE8jHphLMJZ1StQJloXhO?=
 =?us-ascii?Q?NG7vtHeRM4E+7MAS5UvHae04a6D8QeMZJyT6jw6EH9iFl/ut+Yh9PWMdXrIt?=
 =?us-ascii?Q?oSe7qRPk5BeXxx7s+kGOtN03L48bZqUaOo+vfhBJGoakqIv8yK4bSV7SmYnE?=
 =?us-ascii?Q?oa9sFa3Q8t5Qk2XFZ8d5bOLf36NX/MHGxDyn/K5SQCFdKGZ0vN9ob/0IIvNH?=
 =?us-ascii?Q?zIeRWy9p6rICFyi+fMnDgegdTUAuwG+y75ktstJ5ZX86lE/yOX1/3mp8+Scg?=
 =?us-ascii?Q?htbUNWA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wwr9g6zbB75Q2Zu/TNknQI6h6E8+gRb3FaNQ15qeVzQ2sdR18KprTwUXNiGt?=
 =?us-ascii?Q?Z+0Wd3Asd0QZefOoKEjr63Vj4Q/98RZQANeEKPTa/VV6PDLNorbq6cenOadH?=
 =?us-ascii?Q?NRkvQTtQOf75I+Ha5mDUX3vHTa5jMdsynKawBrNcF44n1dHfzbWeBTfwlkiX?=
 =?us-ascii?Q?14cD0WBwZiUxl/rznRX/nzIRrgKm8JZHYemVvLI7akXADFahy2G9s7L1D36p?=
 =?us-ascii?Q?y3lUH6YSyoip2KyDvsNPxUVuDIGdSI4yaXDLQOTveznCNPqN2HnQODosxdg1?=
 =?us-ascii?Q?mGx143P52MwnuCqTXL4hg7OTnVkAtxxlR+gu+nEjHy6kG+WI5bUzQzayV4p5?=
 =?us-ascii?Q?J7h9F/27w6Vqyd2LqViskNTXTI2ksY668iIyAkukjrqgqItUs0prltEDzaiQ?=
 =?us-ascii?Q?Aw+5ycoxCfFsd4Uy9oDkiWWC3uzoFZWXJywiaUs115U12A5qSNtdmzQj0uq5?=
 =?us-ascii?Q?g0d390xodj1q8px4wbCmXdXz533wyHwgFYthL3GAKH8yjqsOto2BP2GaFPpL?=
 =?us-ascii?Q?eYyXFbKQjztrQLoBIsyjiEWF/t39ceKtsDn28wwr7Rdk/V+LZ5vcEkFVVwP8?=
 =?us-ascii?Q?xeiUjH4bTvUfRnrdIFFX79dvhbrIEdBDYnn6LgETgEKNBwT3PKp4qjhiFcr4?=
 =?us-ascii?Q?BS30uslUF/JHa07ju1lVlTj5PatkNAZptxnKzddq7pebSdERfaigKRxujNpT?=
 =?us-ascii?Q?nfBTMi/MUEnPmwORs6BiV+NKaM5r+eovMZEM1qBUmGkVrqWjFz+MAZ7luwbq?=
 =?us-ascii?Q?Q1xkh8rKyOvsNIZLZnGsORGqNKA7eOWpll233Z1UYAO/8sETVa3O5ksvyaQU?=
 =?us-ascii?Q?ac0ZQJ4eoXGTNL5+F3u2bKQSu9QJb/7TYz2HGb7oGgdrCQjEJesOdKtsA1hj?=
 =?us-ascii?Q?fLgp3wKt/jABQWLfEWnQ3383TB0VRhclHhfkcP45J+Mys8/lqTV8mWsQkcWh?=
 =?us-ascii?Q?VQySunX2i429+6U/0xW3H8Q4RzeL++cUaJ0HOrNCHpSbOpzmvzdPLLK7h/pH?=
 =?us-ascii?Q?U96A3Q/+J7ieEtHx8/OSJ48L8fFCZB21xNkiOc5KtcbN/MJ5nG84lyW5lcTr?=
 =?us-ascii?Q?fSe4NjldvLNkfek7xcRUZ7iO312lnNUMYj71NI18t5547+a0OICfO3W4+OzD?=
 =?us-ascii?Q?ds5i05DR+bEFVkdhhzl89FbiFJoP88u3c/Bp4uFPCaZPLKblmN6qTIbocW/b?=
 =?us-ascii?Q?yiNCZzZJdQzjVDtdvtGovldi8UW1Qc0qAT5KVFTFQbO4BQl0dvi6ZgenmjFB?=
 =?us-ascii?Q?GukSCyVU9o1GbC79aM4OsMQSYSBeDpLlwec0CqSwIAi7IHjmhcNnexj7nfpf?=
 =?us-ascii?Q?8wer6k3wgT3WNgwoWnDFMfvis99sY6zO8jS1NYtYltecZTKW2dAk9U75QKvz?=
 =?us-ascii?Q?0nEIZM1QytZjtktYmBhJTKHRGNARaxyM+1KJKSCbrlWTFpkNFlOuNpZ0aFWY?=
 =?us-ascii?Q?jHz1M5HVoUWZM/tQErw82WYWTW1uvC8c0I8A8oz2q7z1c5HYcKaa3U7oONm2?=
 =?us-ascii?Q?e+2nWPimanYXHw5nxlAI3UeKca8ShZCnpBshwWpioVTypzjjYheC/iNPC+dN?=
 =?us-ascii?Q?m2NRAVZpjbrMVAHNcYRCdPCv8ypphENyhTwO66mb+ZKSpJDxhN0eGIwqVYtt?=
 =?us-ascii?Q?bA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed403465-a029-43cb-039d-08dcaac3ff8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 03:03:16.2452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GWpijCXZTp/KN7pfYwouFom4yoTFecy5DvTovTrx/DusExgU18PN/fKFYKLlJzskgEp3wbmJmNYcwabLCK8T6AWSzdnMX6yOHErNXeVCCq+CwIkgAk/AqDDawJC4Vfjy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721703801; x=1753239801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IzDoZl1RIt991mcmqNwmrefneaoSCxwxm8ssEoRFXOs=;
 b=R/bZU9MRpaMNqWNuLQ06CIPqGQYXvWz62A3SGb5WDcHKRxYospl3eao6
 PJokQaKj8sX+/iAr3r3hGY6pP+nIxq4DJmZlYbStglrrAUoJroDsvP1B/
 df5B9eLnyL2lxk5W0M2t/kh4iPoTHsQgfF5Tn6Iab/KoiFmB26OR8VZGU
 EHwYwhcWsyzUwJE67IrOl7XhaFHUIatlGf38dPZ4p9xcBPVDEkJ8AuFBU
 AZiWdFQRtIQaQuhcjpGUPL+meMROMwMZPNlpD9FW8kdaRs6/aouFGJwy6
 h5YY/LzNFNkMWh8p99eUBGTG6fH0AlQ8P2kUOGdYBuWOakHps/G2Zqakj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R/bZU9MR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add standard
 stats
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "corbet@lwn.net" <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
esse Brandeburg
> Sent: Friday, June 7, 2024 4:17 AM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Cc: linux-doc@vger.kernel.org; corbet@lwn.net
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add standard stat=
s
>
> The main point of this series is to implement the standard stats for the =
ice driver, but also add a related documentation fix and finish the series =
off with a cleanup that removes a bunch of code.
>
> Changelog:
> v2: address review comments on 1/5 (Jakub) regarding backticks,
>     fix email address for one reviewer in commit message
>     pick up some reviewed-bys from the list
> v1: https://lore.kernel.org/netdev/20240604221327.299184-1-jesse.brandebu=
rg@intel.com/
>
> Jesse Brandeburg (5):
>   net: docs: add missing features that can have stats
>   ice: implement ethtool standard stats
>   ice: add tracking of good transmit timestamps
>   ice: implement transmit hardware timestamp statistics
>   ice: refactor to use helpers
>
>  Documentation/networking/statistics.rst       |   4 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 138 ++++++++++++++----
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   8 +-
>  drivers/net/ethernet/intel/ice/ice_lag.c      |   5 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |   9 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   1 +
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |   3 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  9 files changed, 132 insertions(+), 47 deletions(-)
>
>
> base-commit: 95cd03f32a1680f693b291da920ab5d3f9d8c5c1
> --
> 2.43.0
>

Not able to see stats with this series of patches.

$ sudo ethtool -I -T eth0
Time stamping parameters for eth0:
Capabilities:
        hardware-transmit
        software-transmit
        hardware-receive
        software-receive
        software-system-clock
        hardware-raw-clock
PTP Hardware Clock: 0
Hardware Transmit Timestamp Modes:
        off
        on
Hardware Receive Filter Modes:
        none
        all
