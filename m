Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLbPK91bhGl92gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 09:59:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA7EF02B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 09:59:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61E2983A71;
	Thu,  5 Feb 2026 08:59:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yl0Q7qwVSzWO; Thu,  5 Feb 2026 08:59:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 850DD83B88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770281946;
	bh=fNcjXebeuXvyS6VPRRO/i6EoJPL2EbTD/bBCKtaGStY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G/BQR2RZe1sMwofSt7FjiX7sS/bSUpk02P/jCKyMqjm2PMsm9EWjtpS0BLRTGgXCw
	 DULAWISFIp8Nu5sQ6WNsOt2GgDBB1882EBMUR9LhFnqiqJKFCAAOKxJbckYFxB+D5Z
	 ZahjcqPreCwes5nHjzllk5Dt5OYlzhwHzfVYc3KEszvWRnATXEDvcdCC2REhEpK9pI
	 CwB940XGJVlaT7frIFsw1un1RKQdOxOayjv1iOysgLe7rm9LLuAxel1SxVkDTSZF4t
	 RcepT+YVtqOEfBF6FktP4FpNQ+paub31nAz2so4F7rDnjdxj5+Xta25nqAn7MGzOy1
	 PiEtIxPMgDFww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 850DD83B88;
	Thu,  5 Feb 2026 08:59:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4108917A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 08:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2292B4009D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 08:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4CQvgpNekN0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 08:59:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A98740088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A98740088
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A98740088
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 08:59:02 +0000 (UTC)
X-CSE-ConnectionGUID: bFbf3tUCTMihYdUyXjtdoQ==
X-CSE-MsgGUID: AZl6gM9sSi+STRLjgzWQGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71465600"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71465600"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:58:42 -0800
X-CSE-ConnectionGUID: tldXR5MFS06jrH2IT6zYlw==
X-CSE-MsgGUID: UuMGYU8gRcOLNIi4GZjL8A==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:58:40 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 00:58:40 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 00:58:40 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 00:58:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jiUbyM9as1gT9NJ083XQiLizUGmlzgbPb80isyOl1bsVPNAlHWc4i4R7jOFwX/lw3y19gxcTChBb0cxVOHO5yvnrJauSk5iC+22H8BEawpPzqF4EJyzPfQLKtUecM9riROHL56UXf6uJ2U5+Hnkx1xPYpbdiVRD/WX5BLQac0V1dixrwOZWQCIr+VL5+Bj9GNAvYB7qJSgVOPCAElOLei1x3sG8o7UhTg1CNfLs208AvX71EO49aMkDa4UFNOKuP5o5qSAs2Q38KMIfCGVM/+AcJKegN5LDJQUnbdPfl9uI2iWkA2H2yURh78VHT5/Qdx+cagNTyS4LN6l1XnmEE/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fNcjXebeuXvyS6VPRRO/i6EoJPL2EbTD/bBCKtaGStY=;
 b=SCnzBd7Z/UJ1hP5PVpHco+Q9zCe+WfpVO3Iwhkn9AZFHz97ucD9qDgGhu6yUXuNtY++VIczC/5/CKMCE/ZzKbDPUGY0BdCMqXRTC/SPUd2sDHG2Z3nsBLV0wPNLmJ+qEi2fhr76mp8JpfsPDM7hPn7wbinyh/y/wlp+NPWZtwkEvCUWWIGnQyetRYzSDuYh4EZUS+YqRN9Q6bLnfHJLauYU8LyKpUInHiexIOdSJVAEvBG8blbtpGi3eUXZHrl6fMSBHbPSJ5ass68BoF/3WgOKpuFFNQOp3Ujy/z1/Y/IFpnkxPqFPTnLBOnfoE+BhOMjBBkqHvOjMzt8nuTG7BlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by SJ5PPF263E38237.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 08:58:30 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed%3]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 08:58:30 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Jiri Pirko
 <jiri@resnulli.us>, Jonathan Lemon <jonathan.lemon@gmail.com>, "Leon
 Romanovsky" <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>, Paolo Abeni
 <pabeni@redhat.com>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Richard Cochran
 <richardcochran@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan
 <tariqt@nvidia.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Vadim
 Fedorenko" <vadim.fedorenko@linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>
Thread-Topic: [PATCH net-next v5 6/9] dpll: Enhance and consolidate reference
 counting logic
Thread-Index: AQHclTRQh9karwqTf02iV/eL8tjIDrVz0KLA
Date: Thu, 5 Feb 2026 08:58:30 +0000
Message-ID: <LV4PR11MB94917B69A82A442F762221959B99A@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20260203174002.705176-1-ivecera@redhat.com>
 <20260203174002.705176-7-ivecera@redhat.com>
In-Reply-To: <20260203174002.705176-7-ivecera@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|SJ5PPF263E38237:EE_
x-ms-office365-filtering-correlation-id: a128eabc-75b7-427c-a7aa-08de6494bbde
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Hy59QWxUc3vacD0dchtDb7G3Yy1oddffPkP9de0j51yPg/XQX2LNoUG4myVD?=
 =?us-ascii?Q?BY/ikmsGISiAA6WC4+85j1zSY7w7Ss2l3jBzyMfOzX+0cMvBg/OkEoCdlIOG?=
 =?us-ascii?Q?vAM8s/rdW3wOmkwPwFZMLPjMUvi/RXYWCQDjKnqSnzGg6joHqR8FP809NWgC?=
 =?us-ascii?Q?fSgEgftZqPNZImY6q/hNLfDhBDz7QuEBuWuwW29vRpjqikBPCmHWaBk51rxQ?=
 =?us-ascii?Q?jF78mTfra8BQsV8qV3esLxKSBWze1ED5l4sR3tgkJIodgDhgs57i0MCLjgFt?=
 =?us-ascii?Q?iAhrZmtCZNbZ+gj+UjtcubZiD87guYMoPs2QPkyazXkbGqWLN/dmNhf5x9ov?=
 =?us-ascii?Q?W3JsfN4+zV3Uzel2ODzuRsf92nQ+i1Znq2dCiD3eKnyMtPom0UCs2z+3ll5i?=
 =?us-ascii?Q?MNJpSsVKYp7FLLnaF0vfKNBrfRlEBzy4rR5OgSJRh0FzNlma1kpwRZjZiNs3?=
 =?us-ascii?Q?MoHXNYXKS5m1Qiwv/7KzxCb10h3P8csRDkTs+d/OIcs1OmeU0Ut9PpeFHeP+?=
 =?us-ascii?Q?4u2aK2Ms0wYg+nE/+6IMm/N49HLOuHSxqP3bT8bZR3jAQHpX42e8kUH0CgKW?=
 =?us-ascii?Q?WLBgIY3aEQCJaHIEzxzPX7mbosFUb5lTlGv/yveKSc4mpk9FCANAjea22VFx?=
 =?us-ascii?Q?TcDDURphszp4J221jHphT0LuEgGVQVL2f0hCe6VLjyUSgQ9DlVYCmVF87Gaq?=
 =?us-ascii?Q?67NtDre5dSoaEBNqZz8cIRQKU6Dn063WcYo4cr2rT8WFthOV1jwMmfBb8rI1?=
 =?us-ascii?Q?ae9jl6qM9hrxrd7Vauhb4JNaBI9c2y7heXpIjgbCFUxBciMqTE9Quhwq7Qhu?=
 =?us-ascii?Q?3MQpFB3vhYjqqgKzTi0YnJiVRM3/mYo6k8Y9Vs3STh5PynLy8Cm/Y2bi3U45?=
 =?us-ascii?Q?B+W0now5e02MRNIJlx6ZQe8boCLP87T2t5bb+OnPFAefodZCSpIz15mgtH1T?=
 =?us-ascii?Q?KYvn8FUvOfk+EEsKIJf5QxjVeNY12wyZGaXOiq9B8Mj8tHkWK8iejos7m/Ny?=
 =?us-ascii?Q?wPuDmCHuXLVbSkyja3iIN+urMgWyVGEq0vUKx6/QV7LW41eiVeJ3Y4Gteihr?=
 =?us-ascii?Q?q1ydaQhPUHv1tamF5x1QPlLJwj30k0H4zMOfZPm3DvxXeee5qMsZAyb4J8FP?=
 =?us-ascii?Q?w+c8YpPaEhsV4vmza0DwdA9RM9cnnFGfhT/3fTiI/Nt3mlpdwd7SPDPvu6v9?=
 =?us-ascii?Q?1xiRr01BmQ89jdZOvgvPodfOCcwtNUCUglAWbFtZgaCSGeXPtAFN6OeHNLFg?=
 =?us-ascii?Q?ZeXiavN7FgnLsCCqPpwyaa5W11sNcEjKnJr3rgSC4wSHNvmKtqx7Q3mahMT5?=
 =?us-ascii?Q?B4kG/QS3A/V0Dav1swfVR7CmH5FYPVBXTvptgh3jI6TVylf0JBWJuiADXBys?=
 =?us-ascii?Q?LRhlkhQDlIXINnBUC3pwMTt2ykIm1KZQAKUmGjfX9wXcypcYReLgQ4a4h2kg?=
 =?us-ascii?Q?nD7j7+WeX0CRMh96evzuTzWUgJm+fek/bTQUJSCgQ9eJ6pwOjqSkZDUld2ms?=
 =?us-ascii?Q?OFWiD6pyenyaL1ymzp+I2RIS/Y9HkOmk+CjZlVW3gdMKLRNirH/Su7bRwRbf?=
 =?us-ascii?Q?az4qDF/YJhTy2zin7rrKZXreQla+8eKVwKPyHnjyBWFRPF4iaN/Mkpxjw8TK?=
 =?us-ascii?Q?bPSO09JtQnPikxpO7IdgXrw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+GrMRcPKY6QR0YmdoiGvOn6MdMAR9WgaWlqr4+N55F9QMP1e9Hds3XehcJKm?=
 =?us-ascii?Q?uDGhfslMVk/FZoIpY94psi6cA+0pK+7g/3v3+14/akEt9tWH1pS/AW1mHBeh?=
 =?us-ascii?Q?fVL38HdoakIqsMCyx+mvq5WHs39CcKxTo1VMT+/eH2/rIZpXuQlHueBEBir4?=
 =?us-ascii?Q?HWU/UpmeIyGHOZK92032d/4aq0niRflyjLi95sGdPRAc/RzUQhbui6Rf3Y5P?=
 =?us-ascii?Q?bkFk5+JPgbo1oRVbYxNW0qzSdwMb+syINZzfMU+JtHQYL5WqPZCNV0GTsp/A?=
 =?us-ascii?Q?hIvzAr6tHZYl1tO2bqKPpscMcFYObKgpDdhz2IHiOkNSxbqygjl5FDRe1umQ?=
 =?us-ascii?Q?lDL79jdFyt+QxfNpdq+Zg2MVOw4cHeV5ZNuVwn5alHtYZOfbzybmWozZ/wmG?=
 =?us-ascii?Q?DbIxfJv2rBaJTTjvGCQq1tDUmg7vNV0bls9B+IMH/cIWyIYVI90NZTruwFgj?=
 =?us-ascii?Q?YXd+a96jsfGGFJ9/mKhxdhccY4I/kgdpJGa4xp9R+G+cUykibcBY0fUdxzVS?=
 =?us-ascii?Q?PRefNfZVf5GkouxdksJkiaxNsjThF1+lT06afNw20mnbgEFLX0/srGnit+Fl?=
 =?us-ascii?Q?b0vOQBkjVHHowLRafl1HZiiX3Xg8Q2U0r1g+7WUpTtdfUtMVlMIBM1lSSdPm?=
 =?us-ascii?Q?2FciVPpYZVPh1O6bL65epH/E17msibC8QGiS5yFrf/aSit1chADVHA3KdlVJ?=
 =?us-ascii?Q?FQ6OBgcOzrIUsY6ysoLsh+zez8WvX/1mkTQal1MqP2B+u4eaNaG/pMqxO2dc?=
 =?us-ascii?Q?7RuVUxucOYExEoxQdvsvkE3Zg/cCjTyW8797hKse0XbkcsQR8YqaxzRUOWeO?=
 =?us-ascii?Q?6dKIdeAy3HwA7kDZlKmbY1mOhD8SPwnc9v5N/GDAlfCfsRaN+iJbHGFpPX61?=
 =?us-ascii?Q?PngF7YCKl11UsTRkXsm7Mp/Cdu2WBi+u7XJNBZTtMf6G6j/4e29KS+SeCZRb?=
 =?us-ascii?Q?70cvL/Dv0KvdzvNnMiaZHuq76dE5ctLhup3jKOqyb5Vb9I8T/ZZn67Z+4kPG?=
 =?us-ascii?Q?pCiAN6msk94LD/wgpk/82L7MZeqGPvf/+YpAGZjHuyA/F8X5gvPNadBAAK4r?=
 =?us-ascii?Q?myiNtHNVWRp483GTXXTBatLG1yKEzLjMxUklKlB3K3kDM1SMwxlSYs5B357i?=
 =?us-ascii?Q?WvQrIvgG7UScj1F4NUQqBgHuiM8jp7VNgKLjhMWehS8x+Q4R5LsDaKbBwk7Y?=
 =?us-ascii?Q?nS8yvnsSkWUinljaNIHhdHjNJegWonnnoqDRBNgUTsT2ai5iXJqc9+9soO1D?=
 =?us-ascii?Q?0wr/p05tQTqeYnXgNX7UeJSMv/orw8fs1oXqWXPOMCY6BMcbw8MTl8MFl2Bq?=
 =?us-ascii?Q?z6oZiIFYbALA9rN0QMxhUiQSSq0nN4fvBQv9XIvghQmlU7OCD77oxrBRfFP8?=
 =?us-ascii?Q?te8iU6kc4rJOu20Or8k2H1DMc0aNSG/E6kKoUE6dlWFEG3PA4vEJwMOXd6fe?=
 =?us-ascii?Q?oAt6kCG6koLQAhgNoEowjfNkQRZHqFPiY2LmoaN6jZnFmyXag5slZpGYtw0y?=
 =?us-ascii?Q?1+e7SYsz2aQF2uYkj7bHcwhNnjtnTVaJ2l4njeVsKwD6zNmiCFhJhLnUb/kG?=
 =?us-ascii?Q?NOG9w7YHtcV00hWEztITRKYIt5ngDPjDv1MbmUYyxymYUtTXb9ZoFT93N6pA?=
 =?us-ascii?Q?46MaHb/StI0rbGIBMr5n5DiggDfXOPjhqC7NR2djEXRPEyQB8J+jYL2KPWro?=
 =?us-ascii?Q?x287QyFPQMCE0fo0lvYhMdI3UerJcsshW8hUoahvd+wVHpt9nao6DFhgC/mj?=
 =?us-ascii?Q?Ml5e11Pi9rlLoylrihZR5WQmeKyAYIs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a128eabc-75b7-427c-a7aa-08de6494bbde
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 08:58:30.2472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 52Pr5xmBF9yFf0HbN/URClcOVLK4be/6Ug5Eqf60g8wLZmms8GLvcTBXz46+adZ8BNB8HLuPCAc0B1cezwHX9hbjRDYxC0GAESvpS1MZkSw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770281943; x=1801817943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=52kCSXK37WTvYtfxOa47ksQf8fng2eVPX+MUaGSOUJE=;
 b=CVjXuue90/DlxpMTm1ToRJ35bWMeiRivMjtkeOfqqgUgEFvChogwwvIF
 PVs+uAd/QrC+8WGn9vwrM9DVJVf5pkcLgylvS2MbvVX3JlU/zoRJi7jF0
 68YrPeDltsCcsThsIfYLmFLDFvf0ayWQ3+Ex1m9OkQJdo/fl0yi8HBJrf
 rKAya60TFywXba7fJDkIzUAnxSo0jjChcnwq67xntJWiKzL1taKlAEzO9
 iy+bAZ28dj3XXTA/rTG8Qn1I/4pYhzeQCBCa338YQkS+uCUeuCKDX0JIc
 +wH+Zb73nNSLEjIZgJMLTYLJjzPPuG0Ib+PKw1BjFPMS/XglWl3HCw8kn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CVjXuue9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 6/9] dpll: Enhance and
 consolidate reference counting logic
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
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:jonathan.lemon@gmail.com,m:leon@kernel.org,m:mbloch@nvidia.com,m:pabeni@redhat.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:anthony.l.nguyen@intel.com,m:vadim.fedorenko@linux.dev,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,resnulli.us,gmail.com,nvidia.com,redhat.com,microchip.com,linux.dev,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DDA7EF02B8
X-Rspamd-Action: no action

>From: Ivan Vecera <ivecera@redhat.com>
>Sent: Tuesday, February 3, 2026 6:40 PM
>
>Refactor the reference counting mechanism for DPLL devices and pins to
>improve consistency and prevent potential lifetime issues.
>
>Introduce internal helpers __dpll_{device,pin}_{hold,put}() to
>centralize reference management.
>
>Update the internal XArray reference helpers (dpll_xa_ref_*) to
>automatically grab a reference to the target object when it is added to
>a list, and release it when removed. This ensures that objects linked
>internally (e.g., pins referenced by parent pins) are properly kept
>alive without relying on the caller to manually manage the count.
>
>Consequently, remove the now redundant manual `refcount_inc/dec` calls
>in dpll_pin_on_pin_{,un}register()`, as ownership is now correctly handled
>by the dpll_xa_ref_* functions.
>
>Additionally, ensure that dpll_device_{,un}register()` takes/releases
>a reference to the device, ensuring the device object remains valid for
>the duration of its registration.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

LGTM,
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>---
> drivers/dpll/dpll_core.c | 74 +++++++++++++++++++++++++++-------------
> 1 file changed, 50 insertions(+), 24 deletions(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index 59081cf2c73ae..f6ab4f0cad84d 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -83,6 +83,45 @@ void dpll_pin_notify(struct dpll_pin *pin, unsigned
>long action)
> 	call_dpll_notifiers(action, &info);
> }
>
>+static void __dpll_device_hold(struct dpll_device *dpll)
>+{
>+	refcount_inc(&dpll->refcount);
>+}
>+
>+static void __dpll_device_put(struct dpll_device *dpll)
>+{
>+	if (refcount_dec_and_test(&dpll->refcount)) {
>+		ASSERT_DPLL_NOT_REGISTERED(dpll);
>+		WARN_ON_ONCE(!xa_empty(&dpll->pin_refs));
>+		xa_destroy(&dpll->pin_refs);
>+		xa_erase(&dpll_device_xa, dpll->id);
>+		WARN_ON(!list_empty(&dpll->registration_list));
>+		kfree(dpll);
>+	}
>+}
>+
>+static void __dpll_pin_hold(struct dpll_pin *pin)
>+{
>+	refcount_inc(&pin->refcount);
>+}
>+
>+static void dpll_pin_idx_free(u32 pin_idx);
>+static void dpll_pin_prop_free(struct dpll_pin_properties *prop);
>+
>+static void __dpll_pin_put(struct dpll_pin *pin)
>+{
>+	if (refcount_dec_and_test(&pin->refcount)) {
>+		xa_erase(&dpll_pin_xa, pin->id);
>+		xa_destroy(&pin->dpll_refs);
>+		xa_destroy(&pin->parent_refs);
>+		xa_destroy(&pin->ref_sync_pins);
>+		dpll_pin_prop_free(&pin->prop);
>+		fwnode_handle_put(pin->fwnode);
>+		dpll_pin_idx_free(pin->pin_idx);
>+		kfree_rcu(pin, rcu);
>+	}
>+}
>+
> struct dpll_device *dpll_device_get_by_id(int id)
> {
> 	if (xa_get_mark(&dpll_device_xa, id, DPLL_REGISTERED))
>@@ -152,6 +191,7 @@ dpll_xa_ref_pin_add(struct xarray *xa_pins, struct
>dpll_pin *pin,
> 	reg->ops =3D ops;
> 	reg->priv =3D priv;
> 	reg->cookie =3D cookie;
>+	__dpll_pin_hold(pin);
> 	if (ref_exists)
> 		refcount_inc(&ref->refcount);
> 	list_add_tail(&reg->list, &ref->registration_list);
>@@ -174,6 +214,7 @@ static int dpll_xa_ref_pin_del(struct xarray *xa_pins,
>struct dpll_pin *pin,
> 		if (WARN_ON(!reg))
> 			return -EINVAL;
> 		list_del(&reg->list);
>+		__dpll_pin_put(pin);
> 		kfree(reg);
> 		if (refcount_dec_and_test(&ref->refcount)) {
> 			xa_erase(xa_pins, i);
>@@ -231,6 +272,7 @@ dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct
>dpll_device *dpll,
> 	reg->ops =3D ops;
> 	reg->priv =3D priv;
> 	reg->cookie =3D cookie;
>+	__dpll_device_hold(dpll);
> 	if (ref_exists)
> 		refcount_inc(&ref->refcount);
> 	list_add_tail(&reg->list, &ref->registration_list);
>@@ -253,6 +295,7 @@ dpll_xa_ref_dpll_del(struct xarray *xa_dplls, struct
>dpll_device *dpll,
> 		if (WARN_ON(!reg))
> 			return;
> 		list_del(&reg->list);
>+		__dpll_device_put(dpll);
> 		kfree(reg);
> 		if (refcount_dec_and_test(&ref->refcount)) {
> 			xa_erase(xa_dplls, i);
>@@ -323,8 +366,8 @@ dpll_device_get(u64 clock_id, u32 device_idx, struct
>module *module)
> 		if (dpll->clock_id =3D=3D clock_id &&
> 		    dpll->device_idx =3D=3D device_idx &&
> 		    dpll->module =3D=3D module) {
>+			__dpll_device_hold(dpll);
> 			ret =3D dpll;
>-			refcount_inc(&ret->refcount);
> 			break;
> 		}
> 	}
>@@ -347,14 +390,7 @@ EXPORT_SYMBOL_GPL(dpll_device_get);
> void dpll_device_put(struct dpll_device *dpll)
> {
> 	mutex_lock(&dpll_lock);
>-	if (refcount_dec_and_test(&dpll->refcount)) {
>-		ASSERT_DPLL_NOT_REGISTERED(dpll);
>-		WARN_ON_ONCE(!xa_empty(&dpll->pin_refs));
>-		xa_destroy(&dpll->pin_refs);
>-		xa_erase(&dpll_device_xa, dpll->id);
>-		WARN_ON(!list_empty(&dpll->registration_list));
>-		kfree(dpll);
>-	}
>+	__dpll_device_put(dpll);
> 	mutex_unlock(&dpll_lock);
> }
> EXPORT_SYMBOL_GPL(dpll_device_put);
>@@ -416,6 +452,7 @@ int dpll_device_register(struct dpll_device *dpll,
>enum dpll_type type,
> 	reg->ops =3D ops;
> 	reg->priv =3D priv;
> 	dpll->type =3D type;
>+	__dpll_device_hold(dpll);
> 	first_registration =3D list_empty(&dpll->registration_list);
> 	list_add_tail(&reg->list, &dpll->registration_list);
> 	if (!first_registration) {
>@@ -455,6 +492,7 @@ void dpll_device_unregister(struct dpll_device *dpll,
> 		return;
> 	}
> 	list_del(&reg->list);
>+	__dpll_device_put(dpll);
> 	kfree(reg);
>
> 	if (!list_empty(&dpll->registration_list)) {
>@@ -666,8 +704,8 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module
>*module,
> 		if (pos->clock_id =3D=3D clock_id &&
> 		    pos->pin_idx =3D=3D pin_idx &&
> 		    pos->module =3D=3D module) {
>+			__dpll_pin_hold(pos);
> 			ret =3D pos;
>-			refcount_inc(&ret->refcount);
> 			break;
> 		}
> 	}
>@@ -690,16 +728,7 @@ EXPORT_SYMBOL_GPL(dpll_pin_get);
> void dpll_pin_put(struct dpll_pin *pin)
> {
> 	mutex_lock(&dpll_lock);
>-	if (refcount_dec_and_test(&pin->refcount)) {
>-		xa_erase(&dpll_pin_xa, pin->id);
>-		xa_destroy(&pin->dpll_refs);
>-		xa_destroy(&pin->parent_refs);
>-		xa_destroy(&pin->ref_sync_pins);
>-		dpll_pin_prop_free(&pin->prop);
>-		fwnode_handle_put(pin->fwnode);
>-		dpll_pin_idx_free(pin->pin_idx);
>-		kfree_rcu(pin, rcu);
>-	}
>+	__dpll_pin_put(pin);
> 	mutex_unlock(&dpll_lock);
> }
> EXPORT_SYMBOL_GPL(dpll_pin_put);
>@@ -740,8 +769,8 @@ struct dpll_pin *fwnode_dpll_pin_find(struct
>fwnode_handle *fwnode)
> 	mutex_lock(&dpll_lock);
> 	xa_for_each(&dpll_pin_xa, index, pin) {
> 		if (pin->fwnode =3D=3D fwnode) {
>+			__dpll_pin_hold(pin);
> 			ret =3D pin;
>-			refcount_inc(&ret->refcount);
> 			break;
> 		}
> 	}
>@@ -893,7 +922,6 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent,
>struct dpll_pin *pin,
> 	ret =3D dpll_xa_ref_pin_add(&pin->parent_refs, parent, ops, priv,
>pin);
> 	if (ret)
> 		goto unlock;
>-	refcount_inc(&pin->refcount);
> 	xa_for_each(&parent->dpll_refs, i, ref) {
> 		ret =3D __dpll_pin_register(ref->dpll, pin, ops, priv, parent);
> 		if (ret) {
>@@ -913,7 +941,6 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent,
>struct dpll_pin *pin,
> 					      parent);
> 			dpll_pin_delete_ntf(pin);
> 		}
>-	refcount_dec(&pin->refcount);
> 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
> unlock:
> 	mutex_unlock(&dpll_lock);
>@@ -940,7 +967,6 @@ void dpll_pin_on_pin_unregister(struct dpll_pin
>*parent, struct dpll_pin *pin,
> 	mutex_lock(&dpll_lock);
> 	dpll_pin_delete_ntf(pin);
> 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
>-	refcount_dec(&pin->refcount);
> 	xa_for_each(&pin->dpll_refs, i, ref)
> 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
> 	mutex_unlock(&dpll_lock);
>--
>2.52.0

