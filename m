Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEEbCB98nGm6IQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 17:11:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D651796F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 17:11:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36ACE606CB;
	Mon, 23 Feb 2026 16:11:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XpOAu3VQXbrC; Mon, 23 Feb 2026 16:11:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 778166078D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771863065;
	bh=TsK0a3SPViypM8d5nF9WE7W5M4F8Ey+6YamspxFedhI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=32SdrZEQPVFfBJSh1cisRG3/on1hiN+JaCpRtcflMJWdoUrhTXhhqQhDSCpYlgpUg
	 IHG/WA6TfQ8orDwwUj+TX8grfC9DBIjWrsJizk8ggovxhVDHygCpiccc2Ku1SRhS9h
	 SlWq0FCz+vY9Q6bvc60zkaVVrxpgYg2z7Ane5vi5OIjfmZqJ5WjtgX0GEKM14X2XH+
	 VCcUso6O3CxbVgZAQpdV+sa/4CUETgbzZ9PmPvBpTBPWrv4gnSmrBYCO8YUIOPXTY/
	 A3H2MRW0vx8fQBtOkxFmF6VT4iK3JCSBxX4Kiunzc4is1i74Q7+Z0jeni9l3q/dGhz
	 +Jjsyy4hvirGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 778166078D;
	Mon, 23 Feb 2026 16:11:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E54E2237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 16:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA09683E13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 16:11:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pOdpQ348S4_o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 16:11:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 08F0983F60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08F0983F60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08F0983F60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 16:11:02 +0000 (UTC)
X-CSE-ConnectionGUID: +3ANEw7/RAGHUQGzIyBNKA==
X-CSE-MsgGUID: zo4pqZdBQ42y8i3lVM19Jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="75471028"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="75471028"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:11:01 -0800
X-CSE-ConnectionGUID: L2xt/3PcT5ePF8DqKaOXXQ==
X-CSE-MsgGUID: 4FVr9FHPQXqhgThF5vSG1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="246198600"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:11:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:11:00 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 08:11:00 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:11:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x9WtKwU5PfERQusSVCSLcld+5pRri8yCW3KobItpUhyAGUDhtaK1EmSTTm9hh3V0l/UDP0rWkq57mdjP1HqrKPO7FL0XCyfOhuIOTukPYOqy39aV6L0qa6bvnA/kuqn08ISPy74Y5pXS5monOCiiC+r5srYv47ZZeqifHQaZh/BbDaoKiVMbikaCFJIszFTK8X8bUM9+f1RXKV0qQtpSD/RzmAR5+JEUx6186OMvl7O2dCZXRGxEQiDNDPHxo5Mq4biti+YdIADk0DvDm3PflJ5LZqHCtGAPsm7aMTSXWXOdeJQFTOxlZsr9LEVzVBMh+V29fVIlsMvzKxl7m4RXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TsK0a3SPViypM8d5nF9WE7W5M4F8Ey+6YamspxFedhI=;
 b=OTs248gPnzlqJzulppF3s/nDjknnuCnk2qCBmeesG1xaOxLI8SYIq2tKwY/yq5DYSyaEkZ5rGbn3E0fudhqhxn0MWA30uW3a2VGddwiuW7Q+HJ3bEQ1TbUksn0WKabl8q91YZacs0O138Q6Kyb547LVDZYWzrgUJE0+MGQABKs4DT5GP0cohAWM9m1dICSJr8k3xLr0vFVT/z8fwKKeeC8cMv8Wy5Rn44lVzJP2LRPcswZCSas+MbnrLv6Y+TCRAl+k6xtE0txSSzaQsmtLIaG0joEnLnZce9ulpvR1qWGEc7ndvjEQe4oDzEcH2QV+LV0bzc/zkDWGDHuF0TwfgZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH2PR11MB8866.namprd11.prod.outlook.com (2603:10b6:610:281::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 16:10:56 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9632.010; Mon, 23 Feb 2026
 16:10:56 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "shaojijie@huawei.com"
 <shaojijie@huawei.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Eric Dumazet <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stanislav Fomichev <sdf@fomichev.me>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: fix incorrect reset
 handling in callbacks
Thread-Index: AQHcm4trpqTS4j0T5kOPp3sCZ11TUbWQhrsQ
Date: Mon, 23 Feb 2026 16:10:56 +0000
Message-ID: <IA3PR11MB8985EAC27768AC94379FA4808F77A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260207102245.812795-1-poros@redhat.com>
 <20260211191855.1532226-1-poros@redhat.com>
In-Reply-To: <20260211191855.1532226-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH2PR11MB8866:EE_
x-ms-office365-filtering-correlation-id: cb06caff-8b2c-4035-e890-08de72f6206c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0dVM5w40FEPGLCZCZLk36uTPqxYrOV9uS8NymFcZJTArGhbifgUeJdCzW5op?=
 =?us-ascii?Q?knTLUyGdMjJrPod1NrSYatnpsSKWJILJDuQ3+diRoRyhwxju8j36oxyiPpsh?=
 =?us-ascii?Q?s5sZkiSSYBsTWr+xsyucbJvyozksxIPUC4Szry6DPZCh/LwfoD04UlmNmM61?=
 =?us-ascii?Q?LDufk8RdOIdocfCS/WqFyBDyPkN5mOiFW48pu+OLFH6UrkX7hSd7EpW1V6Y0?=
 =?us-ascii?Q?DocBu51Lk8ai44E50zFjIEB2KtEZt4520H9OWtjSesFltPwkQ4H3Kz1oruh8?=
 =?us-ascii?Q?+fZR88P1WT4I4+hMJhmgG0Dy30yFIgcxrn69uujjfBsNWDI6a8B/LsN/4Zdn?=
 =?us-ascii?Q?cYJd/3Du984YE/lDxbD2lhdSAQyjbP0WLYjhMaWRI5j1VgDvQeJgzH0lo1sC?=
 =?us-ascii?Q?YDl/5jIt37n8K59czwAaRJWOk7wcUEcw0QKHPbfzcCNIPnlJJEiCGAMYRlA/?=
 =?us-ascii?Q?AjicGYQ+VNOCrm0lPtJmArcrgeQkynmzgO/AAKxVYrTZas7IrnBN/kbZda+O?=
 =?us-ascii?Q?c277WjDFqmCR4FGJ1xMupVr/Htas4tWftI/PlqZiHxkm8phe2B6rC2WIk5km?=
 =?us-ascii?Q?AZGmpu5TcTVvyI8L2Z767WdzVechteP09so1i5Zc6VIyL+ep5Aw3dm/2IPMw?=
 =?us-ascii?Q?6FZ/W5Q4UExfZ7ZTzGvBC7+JbsnQ574QH/3ypiWMk71LGBF9asfampY+uauD?=
 =?us-ascii?Q?pE/tjc5CWohw1Y8r8gnP+YxRVk9gKsDm1NhLVPDBVvo6ZijKwW8xMwCBn9+Y?=
 =?us-ascii?Q?ljwZT8g1me+4zVtvJM/c7UxX4t+xb948C+1l8LTSvaqMroXNxuozjpTSaDAy?=
 =?us-ascii?Q?A2U2WN1WopdAGM7axL7jhWyPctsYCwZ7RJNDIecz74mspwZfqhnVrlNeI1vQ?=
 =?us-ascii?Q?Gr1We1vLPRX7VY0Z4uFvwjPKuSQbp5/+MwgACwhRLEpTPZlunaejiKtM97lh?=
 =?us-ascii?Q?UjU6Fhz2/2mruDDV/3vdmnmzgMwouY0VXUfqP27mU2XdL8PPgKpg9TXsqVfL?=
 =?us-ascii?Q?tPWZuM5yn5NKHxXerAa1QW+HgyD2NGqcX+oi2Wc/0I2/0yF5A8G+2A9Oi0n1?=
 =?us-ascii?Q?YVNoaMDJ95P9lKK4Kkyl+3TWrLeNWxlN08EeOi0aLkQLNNoWCsiNYzhokr0r?=
 =?us-ascii?Q?10Fv/fOyUHPGdp5lUs3Tb8+0u9AuRCZmINtv7Qiu3tEajepk6FczHDauiCKW?=
 =?us-ascii?Q?Pxy4slJ4kMlcb0GVToNe0DxPGFF3uSMPts598WIzN/1EHciwh+Svoi1CDDf6?=
 =?us-ascii?Q?qukBrfdxCZc39HBbROntb9PZZftun4KbwRRbjVW7JQVjYP7Mka8Vf9tcuWoO?=
 =?us-ascii?Q?pR5r7Pnh2k4aYUR4C+4U6PwrX7nLoA74+IpFLtv33pT7yxWVVW3/rcKgfYuD?=
 =?us-ascii?Q?cxCGy6bxfefAktTw5Hx7fWW5nnMsriQVuLTpRgt0ePujm72pIVwUZsezvJNE?=
 =?us-ascii?Q?UZDyeDFoQVY8W86iOFKoqaqYDiruqMKZ0Xve/En6rkEHJhWvXF+xVrhTIm4O?=
 =?us-ascii?Q?OYtje2Qzj9RfEkDvLsNRyJzae3vehAa0YCHOnwbmGmt5nqr4FhVl/Aw15/ZS?=
 =?us-ascii?Q?87b/Q9e4AGRDq89QgtvKFsnhnT3kvbjIl1dWbqdBrzVsiM9zDVSRhXJUB8Kg?=
 =?us-ascii?Q?6yepLzEeMxU5nFVOZ6+ekl8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uuEq142jy8SacWwRz6/fpC8+Cltrw8vpic01tbxMf6iu7f4yNSt/Lffn8+Bn?=
 =?us-ascii?Q?PowzkxmWBC/vxzi8qe90vxX3bzusUUtej1VeLvuxfnWaauH7A1g+WQxgdINf?=
 =?us-ascii?Q?uvGHGvNA1Fe3/kNPaLEftIXGn1aiUwNxDXxsg7WVQL4IYJ+bh0+0SbOR4jhn?=
 =?us-ascii?Q?cQBhDR4Vf8K7Sib1b43ETev1rrzebjLQI/PcSE8MwgGm1Z+JxCSfEpLVYnxM?=
 =?us-ascii?Q?e6Mz5fzGjqrpVHYpHDDnqKnI24OWVNaKGuhnbG7ICi+h6LAsHa+4SQXPwb2Y?=
 =?us-ascii?Q?2q2vCYCEhiIAUAoN0vIxgeQJ0hTKwd/icvw5BQcgH1R+0ZnbVD1DvU7IO/XS?=
 =?us-ascii?Q?uYTgqMp8ztU6tJ/nr/osdCDBuOYyaOv66gfccc18UARIKRbxN7h+qDbq+bNp?=
 =?us-ascii?Q?Yl0XXWkG82iE8lpnoegf4rHwTYBBaVxhun7r8bBISbMQwpLlenRRNfctb7z7?=
 =?us-ascii?Q?yeRG3UqWADpFjgnS9F4U79NDFkW4lBwrK80GK3H/24832LvXTs02iX9CQn04?=
 =?us-ascii?Q?jMW+Tzq5fmNTc7MG2dM2DU37nlcKOOPo6anOQZAmRVb7pXcuIhApaCdNNAWP?=
 =?us-ascii?Q?v3O9vqt67BTdI93EE4LMNhHTxL0vbQ1woLVE4l/i5N5hFY1ofzBjseMFpaFj?=
 =?us-ascii?Q?6EJiQo2QDB03jyt3esdsDxfl5B8xVCSLUY8xmRmskMMSFi49t8B83wdJB2d9?=
 =?us-ascii?Q?3O1HQyFBxwFkLyUZQYHI9oZmdVVhFaL8YlJ2vqVjINgtnOtO15Xq4PkbAFrE?=
 =?us-ascii?Q?VsT1ZbnJWJmDE2/S+R/RV9NzisfJvzGWh7AFz07daX8SrbECZIvBQ6wNr1du?=
 =?us-ascii?Q?8Fvf/rPPBmg9VNVjIIZJKSJ44XkdJmEVZT2V3woxXUaQnsvS9dP+2MZYXs3G?=
 =?us-ascii?Q?HR+sRx+pVfpOhutvk6zXShpiMZGM4Hh1AAD8Vy7/UpjhDtSVId5p4GXCYi/Z?=
 =?us-ascii?Q?uobqoFqVmZvxMMmvFgIdUnGe8jbprXQ1DR005O4hzXPeOM75c2b3bQvtSmq1?=
 =?us-ascii?Q?gEOyqyntnLK38Dyrc1+B1G9mglcV2FfO/E+pHFdHNKP2PvsbAjQJfmvePzdC?=
 =?us-ascii?Q?wnlRGX2+3t2LPlMCrYsMKx/8+yK/uKIfibtvWyYPRYnxeEkio/v0hiHHpASS?=
 =?us-ascii?Q?wTdZ1i8TcaC4+z5CrcetllJAVIZhDpfWluzQrb3CHZ5Cz04zfyn4ys/kCCBQ?=
 =?us-ascii?Q?GDv0zWqEJy039DiWHYGs4xddYvwuukJTcrND1eLNFLJieU+ZfK8tfgJmLoeB?=
 =?us-ascii?Q?K0bBJMNiZhRauHirg4Qay5gkOU6IDySMb3rnoZjLkzDhY7kgWfAyS8UWgwxQ?=
 =?us-ascii?Q?NqguBZQRA+HoJ8LV+BtUTa6QeqFgd+k2zujXkSm3xqGNtgX2x2JXvIFBE+vq?=
 =?us-ascii?Q?WkAClI83FBqcPEMO3juxg6nJBOJ82aAqAc7uL5KuFaj+d28nc1SOskGv3unw?=
 =?us-ascii?Q?+KaaC6wf4bkQV70+3jUZ3+O669EQYrIGluxrHjlNF7j+UizKzIwRRPkRelYe?=
 =?us-ascii?Q?8ZPHpftLcFAYCCrV41l9bhPgDHFoxHeJFnJT+WSFyEVbSI+zYkbH4oH7P0M1?=
 =?us-ascii?Q?vl6UBPk5MqGFC+sdjdtpxE83fshCh5zORVM2YwNi5vBaB8H2r0Z/Ay+6FNB1?=
 =?us-ascii?Q?Xsva3tPea6OCUtaGqJzRG9r/4MBGKzEdqlccfZBwBsYK6UqutHdroJmDUbie?=
 =?us-ascii?Q?5vvTbArodDb2Fce1VYU8aMmS+SefPJoVfEy5TnrfPZ/LSHQ1fgKkJCvGkaHj?=
 =?us-ascii?Q?qiz1jZcoCA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb06caff-8b2c-4035-e890-08de72f6206c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 16:10:56.4612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vxSgi+Ebu0NtUIieLDJyVP5GJr5ujx0FL0qfNEQMOdESoiktf1I6M3jLdraZK6LJcvwduLTiYdZXriEEZ2CHJ0IP6zx00/dsKcGV4azulXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771863063; x=1803399063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kr1APpLL99X0SkclNX6/aPOF8iQ7vYsNlwHZz2uQem0=;
 b=PtfaE7+U9+zSZbL+oBITvARZ0ek/kolczGIdqQ72iZaSDyEhS8UZ8VOZ
 idl5kGgfmZUieWJkrJ1trQKqrWSMyn4KA4kNryghVVGmu/13Xqvd8ExP+
 8pJTnzPugVljfjVo8iLBfkazIFD6NjzML47275ZCmYPqetltesmHcU5Gu
 P4JDTrX0813kNQrmZQlE7ZNLIxWg00UebpEGzr5JbxxA2lG8XAcXOdACC
 cz8X6+1rU2O3p04NZ28goJki9FN2dfVXR1M2FRAWx/dOA+DDkFPdjyCvm
 90ioEx6Sqw+td1LcuuJq0xBnvk8Pj/VjjOxKRsRLMy7tiJdIvJTeBua06
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PtfaE7+U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: fix incorrect reset
 handling in callbacks
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:shaojijie@huawei.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 82D651796F5
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr
> Oros
> Sent: Wednesday, February 11, 2026 20:19
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; shaojijie@huawei.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Stanislav Fomichev <sdf@fomichev.me>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org; Keller, J=
acob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net v3] iavf: fix incorrect reset handl=
ing in
> callbacks
>=20
> Three driver callbacks schedule a reset and wait for its completion:
> ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().
>=20
> Waiting for reset in ndo_change_mtu() and set_ringparam() was added by co=
mmit
> c2ed2403f12c ("iavf: Wait for reset in callbacks which trigger
> it") to fix a race condition where adding an interface to bonding immedia=
tely after
> MTU or ring parameter change failed because the interface was still in
> __RESETTING state. The same commit also added waiting in iavf_set_priv_fl=
ags(),
> which was later removed by commit
> 53844673d555 ("iavf: kill "legacy-rx" for good").
>=20
> Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
> ("iavf: Fix return of set the new channel count") to ensure the PF has en=
ough time
> to complete the VF reset when changing channel count, and to return corre=
ct
> error codes to userspace.
>=20
> Commit ef490bbb2267 ("iavf: Add net_shaper_ops support") added
> net_shaper_ops to iavf, which required reset_task to use _locked NAPI var=
iants
> (napi_enable_locked, napi_disable_locked) that need the netdev instance l=
ock.
>=20
> Later, commit 7e4d784f5810 ("net: hold netdev instance lock during rtnetl=
ink
> operations") and commit 2bcf4772e45a ("net: ethtool: try to protect all c=
allback
> with netdev instance lock") started holding the netdev instance lock duri=
ng ndo
> and ethtool callbacks for drivers with net_shaper_ops.
>=20
> Finally, commit 120f28a6f314 ("iavf: get rid of the crit lock") replaced =
the driver's
> crit_lock with netdev_lock in reset_task, causing incorrect behavior: the=
 callback
> holds netdev_lock and waits for reset_task, but reset_task needs the same=
 lock:
>=20
>   Thread 1 (callback)               Thread 2 (reset_task)
>   -------------------               ---------------------
>   netdev_lock()                     [blocked on workqueue]
>   ndo_change_mtu() or ethtool op
>     iavf_schedule_reset()
>     iavf_wait_for_reset()           iavf_reset_task()
>       waiting...                      netdev_lock() <- blocked
>=20
> This does not strictly deadlock because iavf_wait_for_reset() uses
> wait_event_interruptible_timeout() with a 5-second timeout. The wait even=
tually
> times out, the callback returns an error to userspace, and after the lock=
 is
> released reset_task completes the reset. This leads to incorrect behavior=
:
> userspace sees an error even though the configuration change silently tak=
es
> effect after the timeout.
>=20
> Fix this by extracting the reset logic from iavf_reset_task() into a new
> iavf_reset_step() function that expects netdev_lock to be already held.
> The three callbacks now call iavf_reset_step() directly instead of schedu=
ling the
> work and waiting, performing the reset synchronously in the caller's cont=
ext
> which already holds netdev_lock. This eliminates both the incorrect error
> reporting and the need for iavf_wait_for_reset(), which is removed along =
with the
> now-unused reset_waitqueue.
>=20
> The workqueue-based iavf_reset_task() becomes a thin wrapper that acquire=
s
> netdev_lock and calls iavf_reset_step(), preserving its use for PF-initia=
ted resets.
>=20
> The callbacks may block for several seconds while iavf_reset_step() polls
> hardware registers, but this is acceptable since netdev_lock is a per-dev=
ice
> mutex and only serializes operations on the same interface.
>=20
> v3:
> - Remove netif_running() guard from iavf_set_channels(). Unlike
>   set_ringparam where descriptor counts are picked up by iavf_open()
>   directly, num_req_queues is only consumed during
>   iavf_reinit_interrupt_scheme() in the reset path. Skipping the reset
>   on a down device would silently discard the channel count change.
> - Remove dead reset_waitqueue code (struct field, init, and all
>   wake_up calls) since iavf_wait_for_reset() was the only consumer.
>=20
> Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  3 +-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 19 ++---
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 77 ++++++-------------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  1 -
>  4 files changed, 31 insertions(+), 69 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index a87e0c6d4017ad..e9fb0a0919e376 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -260,7 +260,6 @@ struct iavf_adapter {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

