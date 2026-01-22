Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJCHO0AJcmmOagAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:25:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D258C65F54
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:25:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69662446CF;
	Thu, 22 Jan 2026 11:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id duk16wiT4hNy; Thu, 22 Jan 2026 11:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD7A545A57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769081149;
	bh=5Z56lFm14xjQC1QYtOFMswHrHVXVfmrPb34d0mVnH9o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Stc8WYr9M/baoDPR8esrlcKInqtB/IAp2rX+sxku/ckd79N9zrn6Fhlg5KACDdPc
	 4w2IY13RcIR14C3ojpZaumF9BTg7OOapFRrlsRSGuuAh39kfYKYMoe2C67GZFPkMI+
	 C578vr1FC0WDuVenyfazdbFcM93Xv3Ij+sjNWA/KR1wpWGvPiO8ZC1anNrUm+ajmwI
	 /l31Mvqy9OtT1mlv1RXxroBq+ZeGWQzyBDdYyzdeyfMdAVxH950dOnAeetGvyNoqCy
	 ALy17DQj1+tcHyoTstGdMT3jz02erm9y5003o5e6kGVDvVP8GOrh4evabgS+DCLcc/
	 ECj9yBl2++X1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD7A545A57;
	Thu, 22 Jan 2026 11:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 108B8158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 011236F6BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j7TUH-kJ-BoF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 11:25:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 381A56F697
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 381A56F697
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 381A56F697
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:25:48 +0000 (UTC)
X-CSE-ConnectionGUID: fNiAODa/R3qufq/3JyQ1qQ==
X-CSE-MsgGUID: 24a4+M0ORZiG6QfrPrkBWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="74173361"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="74173361"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:25:47 -0800
X-CSE-ConnectionGUID: H9kZeWH4TuSY3S9tiPNOZg==
X-CSE-MsgGUID: 2CBg7gi9TQWo4TYcoZBgFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211154068"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:25:47 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:25:46 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:25:46 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.40) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:25:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xanZUwRXEpMoLVtpOJir4UMgOLaOTA63p92DbOE10IrdfoemxKC+T9hadGdFUokqeEuGF4Ru2h4ecGAH3oXO1BW2mMs2cTKpdxa6LaLUIajsPak+IeolS+0a83CMMJkLvzNJ1gruaQoTkce/Qk9npmAbb72d+TMumT/KStsscoVx8F2X/DJfc36Rsm5fxYeL+joIw7gcAtVJyD4/I++dKmL3ILb6vffScjVsNqKZr/C732/bN26ZEzRZOv8vLi3HkI6Td0vxLXakEctuducznlXO94EEfSM1ocOsLsanKBBDDBM0WBaCIKTVzqhuz1jEJ2p2kFgN4RAA/WjpiR1h/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Z56lFm14xjQC1QYtOFMswHrHVXVfmrPb34d0mVnH9o=;
 b=h30nXpTjQRj7vQUIcbCpoEzUkNFTwHtEWNXpv/NMOLC95wQtDkGrFBgmcN/4Cobs9G5JZvuGWPgJP2MArKd9v+tT+WwyNNeDrw7B/tN8sr727fE/dk3bcnfkS0bA18nz1d2MGGphWlpeVoxNiBQayhk0Lw2cv9WzmsMTsImEnGXDSf3Z+tI57FZ9ZRFURch/BR6T9L10gW7oqNM0BvzS1n7e9gu6MsEruMxmqpRWBQwJGd3sKlYLPkB7cUOVnYcsSFY+zljTYLD0PUuzDFxLS9MzULSdQMqxKoj0ay5RjEnT1/gDGl/fhLrKatTWOVW/Sjy0KPL4Vb7vVNRnDDaGxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB8158.namprd11.prod.outlook.com (2603:10b6:8:18b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 11:25:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 11:25:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Zilin Guan <zilin@seu.edu.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jianhao.xu@seu.edu.cn"
 <jianhao.xu@seu.edu.cn>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in
 ice_set_ringparam()
Thread-Index: AQHci0+/2RA4nWngfUiv7sfyJXR/Q7VeDPmw
Date: Thu, 22 Jan 2026 11:25:44 +0000
Message-ID: <IA3PR11MB8986F163A397EEB8421FF320E597A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260122032644.183754-1-zilin@seu.edu.cn>
In-Reply-To: <20260122032644.183754-1-zilin@seu.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB8158:EE_
x-ms-office365-filtering-correlation-id: 2d9c7d17-77fd-4bdf-f252-08de59a8fb82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vPeb5bkbE0JLl8YLV5oZDZWFZqlzUbnvfLKKYkUy25cFUSL/14df4HlA7GkI?=
 =?us-ascii?Q?XPbGWkRaBxScFzDQdeguEtQivaPCZm8xGwv6kxvAxX0dnYv0S4nQjkCz/hCi?=
 =?us-ascii?Q?es5/pSHVxar8NS4PvoDmPeR/FPC1EN/EjW8etoM05zRj7S3K6vwHz9FF7fva?=
 =?us-ascii?Q?l0GlSt+rX9nCALKW02lSSqW8ZNVoMURl6Io7HFoLJ6RWDtnWiUpwq1d68rHN?=
 =?us-ascii?Q?KTd0J9Igw+7NJTQfoIoY3zse0rgrI3oQmTJ4YhYKAv8HcaKsz8wwAvZ23iv4?=
 =?us-ascii?Q?4TZez3JiTSinI0nBD+lQvwXGa5p+OafbsRZvNqWh0pc2Bx/vgHZM4eVIDXN2?=
 =?us-ascii?Q?e9fMSIgfguq7T9yC7VO9oojiTWJBZ8ifzLcsSsb28bdVK0LZi93zHYq4gnuq?=
 =?us-ascii?Q?AEIiNWJxVLPPXMZugTO/fFzeopWqSInEYIugaD+IcFNp/YayOCE0Mjipjxko?=
 =?us-ascii?Q?FS8y6ULcQETJREgdaYC6YwB1tRKbQUId15rzCAwxUuVJz0x91OGG+c6X8A6c?=
 =?us-ascii?Q?jpEsTP16Ij8Wty2OKC1LmJ4/K0/RodLouamGoWImN9c6wFtDV69y+x5RnZw9?=
 =?us-ascii?Q?yigBrdmzbVVI7NoIl8Kiz5M2Y6OoZf+rz7OegBGesNrA6slg5JrUKBgKC4UN?=
 =?us-ascii?Q?gGWh3QHBXy7oWczSHrVJWr8HGb0naCZ+HdbogB0ko/sJ4xJ5cg0M439tSz+5?=
 =?us-ascii?Q?4BvZ/7K/SytYoewpzvsSyp6o6MH9Ayz/DraxPeHwL0Gzr3580kRX2U/R/gJ/?=
 =?us-ascii?Q?MHQrftlMawMSgQTeJAoRWs+zs6O8J5ye6tEyJvdROYCS40wKWxzmNbuoaZ4u?=
 =?us-ascii?Q?afsKUf23Cou0UZavrbr8pu9rh9XuoAfXo5cmQHottQgSwSpvkfutr0oVLsec?=
 =?us-ascii?Q?Rs7E/sJ9UPfvQDjuPAM1dRrrtCSmIju6Q6yTFb8xGEMFW7Ag2BmjOfvjeAvO?=
 =?us-ascii?Q?9vT4ss/KJVC4oXQaB6ypKkbAMFmdsJ2cpI8SHfytfSiI5CLV6zg3ZSDBeMbY?=
 =?us-ascii?Q?LkSXzOx7TsLNr5eEHEsuhidYKjlQdftkSxIRqJMRZ60RiMAIjoCTDifu/464?=
 =?us-ascii?Q?nvsOGxHBVHfmxQXQ3LmV5id+ptTn7cx4JP2YsQYMVPzzugqWA4CD3Sd484SA?=
 =?us-ascii?Q?Tk701UskSWFw6tUMIK8Ji/aHZWhGgefBX/94bVm4Qi67elU+vY1v/2MUphj8?=
 =?us-ascii?Q?19qlKnl0hDUJfbk0Yn5G//iR2L4DHg8AWgscIYErojdeQXhpWd/Sv2FAZoO3?=
 =?us-ascii?Q?T81FLC34X88/5rGCAxdVi6cjoCY+k0ef8R4zszJo++KplN2SsjVWJNL1IoSi?=
 =?us-ascii?Q?asyVvjopST5u3maML/rZf2oIGewrKAc0rntt2MfX9kNbrB3RGWgcd0tfq5ES?=
 =?us-ascii?Q?w3S9zJv4zoc3s/DznEl41eyZ4ZErl60Hg01yl8VGTcs62OpkBLnVbIV3WzoF?=
 =?us-ascii?Q?LDDbHBOWJiqstEC/iHP/bsOQ3bD/Lix73Qcpt0BsoiAmuPIbDvJtKknrlDX4?=
 =?us-ascii?Q?l0UHb2bQmk/kgP6su7tjeRd/QhJhYKAa51k/Iu7dggrrE8+lOPk804qT7Sa2?=
 =?us-ascii?Q?ielE3Nfkf/dwReC6JpUCb0RxwktDxFNt3i4FnoOtRMEQPPipIsX9OhbrqIoU?=
 =?us-ascii?Q?9R6I0p6uNLJ6N4yEbyV6n+U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pk0N8eSDmYI9WWNHaxH1wPJ4DPuhMWZehLIOj7NizfvKx042egZ5RpZNBMHa?=
 =?us-ascii?Q?Wvh0ctJ/COb6zcahOuIzy1Jy9aN1N6ezMuSjskC+1xV7bV2GNXZk+lRKGxIi?=
 =?us-ascii?Q?BVqmqatb7SWNIZi47Vo4/IVV2nb9NYZoHy8PLBjCJeJ4qy6gGgJfQrW5rdB9?=
 =?us-ascii?Q?EY0sUEd/O54aIVKVYRWw/oIg+jkh/J+CXGPVzYbMHoOF0qlpfzgXlokIl7U3?=
 =?us-ascii?Q?03ZlkENNck5nEEdYHGoxx2TNmMGPV+pC+AvProYADTRiEBrLTkSx1dtzzFzw?=
 =?us-ascii?Q?ftH7CWrnC3z/kXYSTHTjNseI0lG2IDcLy5hnQVwOTIllQTZpsSycaYZCbjRe?=
 =?us-ascii?Q?EIS+Z90Af46Ux+iKibdeQxLtcPqF3O5QyGVUxrKC28A+WDZFnN3BMDo2IkxI?=
 =?us-ascii?Q?M+uNB4ZHHPvUC7hvT+hEG3wZlKlGPO/LflAVfHS8rvTnx+SQrvY5+A9AjQTF?=
 =?us-ascii?Q?dZhTb3Ax4vQlCxHytDvSZPqgaaw0r08Y494ewSFkhp0T3B5zZnbAtYJkH4Mm?=
 =?us-ascii?Q?wsCSlz++bWYINKgU5afBCYxs1/jU1R1S0aS3FzCcf7QH/suvdbj06kEuTpsR?=
 =?us-ascii?Q?AX2pWyH6tUVG/Nazp1wAQvSk7KT6yMNb+i5t5u0R0u30EWGvUwb/sVkSQNrJ?=
 =?us-ascii?Q?HloTyWtA8zj1CC6IReJBDYjw7IVKioH6IOP7liRLphL8TiFzzd3injB+rGts?=
 =?us-ascii?Q?1g/swEyKXJz+OwhmABUxe5cf6D0osbyjRGNIOyNfXMBDHfsGtMFT5xS6W8K2?=
 =?us-ascii?Q?IRD1VMJlx7EIo+K6zRFT3sXkZnnTCEyEzxgAmSPFzgAPOfYuyj5477tXoeCn?=
 =?us-ascii?Q?TEVsOe7CmmbB7lR3IszO2QVB9GeOQN5GCalaKdCytM37RSiavnhyOy7Xh9Hg?=
 =?us-ascii?Q?u9FEEj3WwEz3KikmNNtjszVJTVJQ00cpNmzsnuZpezrvMjP2Mlikaf4ePEvJ?=
 =?us-ascii?Q?5le7vYFfAKOz+aNlV4m4VLoeBjApgM1rjQ7iQnpOI9qL6jXxrTUP+5diOEVa?=
 =?us-ascii?Q?Yge3rcN182dZuWU5eqWF0hvaWS6iBB2i5DWj54aX1KuRm4Fx/7SN9JjENPgs?=
 =?us-ascii?Q?fyDSs0/g6yLkwJzwnL3T/DJNfHvN0z9IOFPRMz37gKG909YMdjKHophQHI33?=
 =?us-ascii?Q?AWrkeQzdYhGUw52JVc8HQ9cmWCwl9b3al9PEi3Sa8ODO/dpn2Ncm0UOVyzbM?=
 =?us-ascii?Q?Z84/9Y3yb5qsB6hz22MVZltuBoxErH2m3EAOBF6Gshftq34cFoaeAiZJnJ6y?=
 =?us-ascii?Q?RTMMK6bUjOZaratGEOwPk8ERRLdxC+HKywbIspAUgnBlCJ3vtvRrwJTW/V0+?=
 =?us-ascii?Q?pp9Z7hhq3eXw8eEgIINT9qm7Hs4nSDdUd1d+nxD3v2JzU1KLcDBoeRjz7B0g?=
 =?us-ascii?Q?s2G90vaAumKy36idX0DerhUnkgmLJXkdryQeTztJPfr84mjyfkmR3MybaOrJ?=
 =?us-ascii?Q?213PgogDfLHurMim7knoi5PGDA+KWOVF84cdB4Yzq3d3J31IA/NYizLa2OKq?=
 =?us-ascii?Q?ud6e2pv2fr1qViC2/RTm2/2NtUcbz1UZsw/nbUIBks7ZedN743FatRo2nQ9z?=
 =?us-ascii?Q?B3ioUbCZpfuSoQ1KbSUWOUPIESqN62/RFQ33xD5za+LCn7n9k0Ut5PMYUiV6?=
 =?us-ascii?Q?9vbelR5RS2ijbYb4um4VIZpyiEMk9AHw1mlVXd5fl8EQhUAGDmcI21YMrABD?=
 =?us-ascii?Q?ZbKI1aKUeAfp4TrQQ2jQZgqS0gcLUV7SqUQhCa08e/mPovs1Og+79yuSCNU1?=
 =?us-ascii?Q?GcSH3T0CeTt0RBihPdZk5HMpOOecygg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d9c7d17-77fd-4bdf-f252-08de59a8fb82
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 11:25:44.1913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /SXkk2jDhJUPLM5kF1GeYFd/TGAAepvyDTrLCYy8Eo+vEw/feHuKZOrVPV0iJF/2BHMDwQaNDzP0Dd5C6oYGYff/lk579RUxjyl+bqt7b3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8158
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769081148; x=1800617148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KumVct7jFruFkrplJS215S7A86w+gg5i2p08GzHQrMw=;
 b=HxEqyALr9yBIMCpFyX9to4rHGw2D3PBJ1euaI/6CHArqaFXq0KC5z7oj
 WtXRRu9Zn6ObWf9QlZBjkOg2Ov91AWeupaRJAm5khUSsiZwJhfSbxKHsD
 k6grK2ePayf8iXS9G1TxPWtFiam/i0vmT0rdYnLOFTxXBF+wQZ1UpAO8i
 GHmcN2Js6DJ+1su3C4mdsC9P8Vlq99RXQo7mgFA3ACgprumY0uTXNTtnq
 9WGJ89Ts+bwlEyWo0/QV4PKCdqf5UqL+U5XogXfbkdWBiuwbsR1s8K6MG
 COhPF75yIx+WKTFUEm6jRKFcAXrX+S3TEwdKWMLmVsz+EYlz9pJdh/Rlf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HxEqyALr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in
 ice_set_ringparam()
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
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zilin@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
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
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: D258C65F54
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Zilin Guan
> Sent: Thursday, January 22, 2026 4:27 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; netdev@vger.kernel.org;
> jianhao.xu@seu.edu.cn; Zilin Guan <zilin@seu.edu.cn>
> Subject: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in
> ice_set_ringparam()
>=20
> In ice_set_ringparam, tx_rings and xdp_rings are allocated before
> rx_rings. If the allocation of rx_rings fails, the code jumps to the
> done label leaking both tx_rings and xdp_rings. Furthermore, if the
> setup of an individual Rx ring fails during the loop, the code jumps
> to the free_tx label which releases tx_rings but leaks xdp_rings.
>=20
> Fix this by introducing a free_xdp label and updating the error paths
> to ensure both xdp_rings and tx_rings are properly freed if rx_rings
> allocation or setup fails.
>=20
> Compile tested only. Issue found using a prototype static analysis
> tool and code review.
>=20
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 969d4f8f9c02..1643b118144a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3318,7 +3318,7 @@ ice_set_ringparam(struct net_device *netdev,
> struct ethtool_ringparam *ring,
>  	rx_rings =3D kcalloc(vsi->num_rxq, sizeof(*rx_rings),
> GFP_KERNEL);
>  	if (!rx_rings) {
>  		err =3D -ENOMEM;
> -		goto done;
> +		goto free_xdp;
>  	}
>=20
>  	ice_for_each_rxq(vsi, i) {
> @@ -3345,7 +3345,7 @@ ice_set_ringparam(struct net_device *netdev,
> struct ethtool_ringparam *ring,
>  			}
>  			kfree(rx_rings);
>  			err =3D -ENOMEM;
> -			goto free_tx;
> +			goto free_xdp;
>  		}
>  	}
>=20
> @@ -3398,6 +3398,13 @@ ice_set_ringparam(struct net_device *netdev,
> struct ethtool_ringparam *ring,
>  	}
>  	goto done;
>=20
> +free_xdp:
> +	if (xdp_rings) {
> +		ice_for_each_xdp_txq(vsi, i)
> +			ice_free_tx_ring(&xdp_rings[i]);
> +		kfree(xdp_rings);
> +	}
> +
>  free_tx:
>  	/* error cleanup if the Rx allocations failed after getting Tx
> */
>  	if (tx_rings) {
> --
> 2.34.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
