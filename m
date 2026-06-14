Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cmIVLlFVLmowtgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 09:16:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15756680868
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 09:16:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=mHWbXiK+;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4858783E49;
	Sun, 14 Jun 2026 07:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRzdta3bjznh; Sun, 14 Jun 2026 07:16:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A448183E4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781421389;
	bh=viaVU2a5+gEGEF5LBQwmSs1sUQ+XRv5XOW+uSWmBHLo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mHWbXiK+AfhNC08dPupv45CFIEqD9A5w/klJC3rHDzqfQJIoZbnMdjFEfeDgXMPMx
	 srFC8ujLYirXUzxoPCmaqUc3qIIeiY9ZJWzMvje4EAa/kt5OMTukTeNnkL+MKs9uaR
	 Nr4MZPGpPCFXFd1OaYEHlT1z6Imfoug8P/lue4UAwHuj1/ufu+Ww0s2oZYA9L8xiAH
	 16H/YaBi4aa7r+/nmLt4vhbtqB137gmCtaiMLdJkJ6KuIbWAfBXsIF+eO6oIalKnBd
	 SlvngKy4xsU9FYl0DeaFFDJpILQ+HKRIs7io8A/ZCv7GUderYbvOO4E7DJWIxBGXGM
	 9un0/PlPLBBhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A448183E4B;
	Sun, 14 Jun 2026 07:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BCB5169
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D9B8610D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:16:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9R19vsbmFwe7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2026 07:16:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 526836109B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 526836109B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 526836109B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:16:26 +0000 (UTC)
X-CSE-ConnectionGUID: iBCO5OxuTe2nkGYQ8bi8IQ==
X-CSE-MsgGUID: O9jI+UyJTkyvUUG6ghmIMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11816"; a="85826819"
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="85826819"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 00:16:26 -0700
X-CSE-ConnectionGUID: Aq4JboLWTkq8KdVpjQS9aA==
X-CSE-MsgGUID: d9d+jlOiR/alqX7oSDaLcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="285296166"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 00:16:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 00:16:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 00:16:25 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 00:16:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ht5an0ZV4PcAKe/MOOvVGRvF7KHMvpqokCoIUNXHpsRCIyEG5lXy/FCiwzYSzSYXP0Xk0FlPqI3dBbWSW4kxeUAgXvcI7c35vM6Z0Q8ktf58+HdO8llot+IfdrWwJyn4agfHPLjeaW502mBwSBNP+hLmQw583kQip4bHCaB4V3oMdl6ydjoKf66ylEdTFqmM2gDqCrwxNHh095wFS9zSd+unOppdHF3JjtmqzdNJzjNU/qVWoL9ibmxf+4TV5B50RO06fmTWxgRbg7Ywh7t4EHrVwa6bXB+0x+1mTSarXRZId1vWagT5rFuD7LJWB2tWtc7cLccCwGLt08WDrd+4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=viaVU2a5+gEGEF5LBQwmSs1sUQ+XRv5XOW+uSWmBHLo=;
 b=V7eA+uiadT07vAy7Y8Y3m8rdR083gk9Ld8GiLkKCxoRg4YY8tJQxhGVC3FPID5JvB55KLdILEgL4BBI8Dk5VhiSCPSWq539rRFLj2DqdMZ1poQrWzfoBgBFnuctzyKTbQSzUV1mfk5ijyBwAdWR+vWa9IAlBkcv/ec2RxNuBFD8sItkDpNZ/V2DwXCcrRmOyadj8RuCpWIk5DbpfnI+Up7ERwK+oJmHa5Fwi2+3lrOoxOyYSrY6QAGlSSIjdyu0owboSySAFGQwnJ8hpXD3eXV0XdeaBEZ/iPaIyRZv10gUGC6Na3wxUBSt/qnXsf0m/dgkXHfHH1Cx1R2Als7NKGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SA7PR11MB9541.namprd11.prod.outlook.com (2603:10b6:806:4cf::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Sun, 14 Jun
 2026 07:16:23 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0113.015; Sun, 14 Jun 2026
 07:16:23 +0000
Message-ID: <7d4b2a62-231a-4f61-8561-5c26d6ed3125@intel.com>
Date: Sun, 14 Jun 2026 10:16:16 +0300
User-Agent: Mozilla Thunderbird
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <faizal.abdul.rahim@intel.com>,
 <hong.aun.looi@intel.com>, <hector.blanco.alcaine@intel.com>,
 <khai.wen.tan@intel.com>, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-2-khai.wen.tan@linux.intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260507214706.309984-2-khai.wen.tan@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0020.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::9)
 To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SA7PR11MB9541:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fbd4559-355e-48f4-3058-08dec9e4d6f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|23010399003|6133799003|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 2sMFeirKNQZRq/3poeh/zzgqRMZsrvrtaU+5+Y7An7BQ3GDr+1FZNT6wKbng2wOfCYPwFSLTbl3DNDNAjvg54Ovsrvsx1lCRYVmK2ZCNOEHo2PWPKm5mwU14/uN3K7XFC7u3FK2ijlHzdhQKs9aWGCt3uKnIV4Api+4tSHooqnFe9rfjDXipAtvu7PfPFK2NjfQ7bwD+Lzjj/XzY9+j9kgHt8dvqT22pCwqUAGTa56rSNnFlhqQuC1uB7okstydqOchOM8nY3wwDoAolJdExbdT5+py0IcjgyAXUGQImeM/64Nzi2E+Ofr7qjIf9vn9hmPKoyT/Kd96tzDpW/zY3gNxcsltUdvJTY8JGSill17pfrPRZonZpoioOvl1LZ1UyTRgIhrNo9j1vbEf6xBkCC1GFs14UyXBBYDJxlZtO3hTn1ZvcZ0MmSm0bwMJd4mjqRpc68B6aqgwTlIgYCjga3I2iWDACBY2kpFFDRzcbpi0L4SNiQQVUqEiP4u8gcr9LbRhZQlZjPwMzqvgjc2+d2JGh7juw8AZVIp40lTLbmSJo4WiOIO0JSuR0W+B52N57NhVzXp7fAPT6oNimn7pGIzZGR5v36EkVlZazDGqVAJykPPTBnq3/JQfc/96jNIst8LTuGH2L13RRkTSFU/gb/YwRJ46y7AR+qRvtiZwy8yxBDmD7eftzz/u+yRhBUmpw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(23010399003)(6133799003)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a004ZXg4c2RHc3NacnllREFOMlc0S1orQ2t6V09nNk1iZzhaL2NOZ29qN1Y0?=
 =?utf-8?B?bC9ndVp3K3BZemRvaWVsQ1RWTFJ3dHRsRXE5V1QzN3A3VWMwUzNjOERFNFpz?=
 =?utf-8?B?T2ptR3ZtdkNHTGsxbWlNeFBqbzRIaDlZRzVaSXlTV01PVENuTUZUbENHUnNH?=
 =?utf-8?B?a0JwMDMyN3U3ZjdjWXVzTnhFc2kyY0E1UDdncFFXMDgyenJ0VnJkQU5ESGt3?=
 =?utf-8?B?cHh2R3pwRXplVk5iTTlFTTVUbEhZRmVaVDJaMi80QXJuS29TU3JaRForK3Bv?=
 =?utf-8?B?YVBhanFBV2xEbVRyN3k4NU44THdSa2hxSjM3THpXeUJPN0FkVTMzMjY1RXVG?=
 =?utf-8?B?QkZBSmh3aEJnWmt3bGJ5RmpLNE5oN29INlErNlluRUNiaGp1UHNUU2pkU1BK?=
 =?utf-8?B?OEpnaXQ4Y1RrSDhyTzc5MG1DUUZyZVdQU0RId0Jsam14cU5XT1JZeWFETlg2?=
 =?utf-8?B?cUpXNDYxa3QrdW12bE1yMVBDRUUyaURQeFpvczJxTUVIV3hZN05NSFo4OTdW?=
 =?utf-8?B?YXMzM2h0Smk4R0JLZXVTV09rNld5VTd0SHl3SXBlMGxoU2ZkZ3k5WUR6TWdo?=
 =?utf-8?B?QW43MjVtUU1MUjRqdGErT1I0aDFTY3dBSzY5bFE4RE0vNE4xWm5GSW16eXV6?=
 =?utf-8?B?RStjV3RqYUN1V2xGeFpJZzJoN3NqanNncXBWTFdxc1gzOTFsYXluWkxDN1pz?=
 =?utf-8?B?dzNjQksyNlBZWWVOUnRBTU9jalYvMEN4c0JsQWdrYW5iRm9RTzlLZ2pSY0lJ?=
 =?utf-8?B?aXV6THFuSHowdHJaZnlTWkhibm9UMWx1TkJIQUFxck1ZVWoxcWF0VTdKYXls?=
 =?utf-8?B?a1BWTUpBMWVHTXBMQ08zdlR0cCsrWExYVHNEOEY3ODJ0Mzg2NXI3UzVBMFlO?=
 =?utf-8?B?SG1UY3JJVEVveFJvU05lMjNpelV5VjMvc3NnTnN6UFpybXpoRFEzZDBuZW5W?=
 =?utf-8?B?NnhNNm9lZGY0V2F1ZEJ1K2VRL2Q0WG0xUktUVGFxdCtGeEVxUDNma2JjdERS?=
 =?utf-8?B?eTdFN1dRTGp1aEVQK2JxN1FQZ0dpUWRKcHVscHFtNWlyaHhoYUUvdjdpejFR?=
 =?utf-8?B?Nm5XV21HdDIycjl3dG9uanI1REVmV2RVVWRPMGFwbTg5RDM1YXNJak44TlJk?=
 =?utf-8?B?MVBmVTNZQXpqY1Qwdld1RHgxaXdiUzlaWEVVbnhLM0xVVmx1V3ZNSmsrRmJK?=
 =?utf-8?B?MDJOc1VxRlFMSTBkRVBha0hIRDN6azJtQUlDT2tsaER5SnBuOTFjWW14TTFW?=
 =?utf-8?B?YzBEckppaTZTWDZObFlOV05TRDl4KzFjMEtCRXl1aDJvbEtobjdoL0d5QmJZ?=
 =?utf-8?B?eHBXVldqVHJuTWhnaTgwYW1OZ2dTZGJyYWhNTHpEZHZGWnd0ZlFKZzdxdUxJ?=
 =?utf-8?B?SThNQ1pUVHBnOVFUOFZLSGx3bzllVE9QSXNYQmIyQmk0Y2I5SDNNd2Jkd04x?=
 =?utf-8?B?UkFpQnd6TnhNVWxBdW1laHpqZERxZVR2NGVzQnFpOU5FcHJ6YmFPZUtKRDVi?=
 =?utf-8?B?NFFDOFhSWVIwNWVWajRXMzFyYzZSUDBPWTJwV3NKVFRRK3ZDcTVkRGF6MlRh?=
 =?utf-8?B?R3VnVVF4MXFiMU1qVmhhUk1DaFRLWkJPdGs1b3YwQ08zbllKNnFNTmFhTS8z?=
 =?utf-8?B?T0E4bjlVK0x4c095Z0dtNTZWNGp3N2tPWGQydmNKNWxXQ1l4ak4xSzhLSWxO?=
 =?utf-8?B?dEJFbC8ramdwbjBzUDI0c3l6clVkV3pWVkp4eFJ6UXhBWDJQR0xJR2ZzY0xw?=
 =?utf-8?B?eXg2bEtsWXFEV0Yvc3BBVGNoU0lWQlh5VmwvNXNMYVh4MEd1QnRTYXJ2SDdW?=
 =?utf-8?B?cEpBSlNwOW9mNUxYK0xBaEsyaW4vaEhXdzUvRVpiUCtBRUwwRkk0NzhrMFpm?=
 =?utf-8?B?TUNzeEwwTDU5WnR2aE1pZ01pT0xIMGxBaVJkckpIVEFrMjRjNTVkNDFnQWI1?=
 =?utf-8?B?WUlxYkJBMWtsa2s1Rno5K1BuTHQvOXJLUUdaZS9KRmcxOW44VGdZZ2E5amFp?=
 =?utf-8?B?R09BNkQxSE1nbFRDRnRNbS8xOWFFRGhMajZEZ2YrcCtJLzhBN2UyeitSOTNQ?=
 =?utf-8?B?R2pnUjQ0b1oyTHNyOUhjVE5Ya0dua25QVm84SlpUeHFXcVZjM1pMaDJCc2t2?=
 =?utf-8?B?dm5waEZPQlQrU2RxelRRSEhxcW94MWIrNEE4bXo0MjZkdEx5alJFNnFHUm56?=
 =?utf-8?B?YW51eElhRk4yRUFSbUxlMTROM09NMzlPSk5GWGhySDFuSWNYZVVwWnZnNk1w?=
 =?utf-8?B?ZjVBbTltVDNKN0JzQTNReHYxN1gxeVNTUkVJZTA1d2xQWVVIV0N5YzZFMzYx?=
 =?utf-8?B?SFJNeERZQnd3OGo5QWFyZ1pmZXpiRXBHRXI5bThZUnBEZ3BsbVlOd3Z6eWRr?=
 =?utf-8?Q?6IrtMNUW9/i/fyIw=3D?=
X-Exchange-RoutingPolicyChecked: BvnJjTNqz8rwqyTX7qYjAW+yG+Nzrr6QT4gVW040UIsRk+sam/libS1G0VxBtiLTbYIeX5iHnXjAval+u21Lp+NXHA0jIWBajp0f9HQg2QSYcVytLwCUmN29CIgeT7Ba/ltcAWJlZ6fr3WgYhrt66o5DbiQFw722QBWHkmWn+ah4ETx8224M3IbN5T4RAJJ6GuxBwDPM387V1h8W31iQ9p0ORmw4uchwo4/6UPagNje5jcxY4r3jEr53ACWq3wgbbAOiaKvnUelF0TPRmenQz6hHd7UZ/vP5jc7LcqviX34EqCi5LN4yNzGdGj6uZ8jXf7e+x3XMTeT7KwEncCD7MA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fbd4559-355e-48f4-3058-08dec9e4d6f8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2026 07:16:23.1724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BCCkL7aL4g1sSKE374IQEEIfck0ROwEAyqx9wJqhBmHS1wpWK7rtfaQwZEfQFchTeWszaYWOxqpXXWgpzBTB8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA7PR11MB9541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781421387; x=1812957387;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e50ijcRkLaPyvQIrIIfQPWrmres7yGiCLmygi6ovuUA=;
 b=CgO+L/sHokXVuprm9jslUNmN46yVwBbbZ9Axh+QEOLUh1vLWRWHZ4Rki
 9Rggx5//APPwdHfqkPMu7yBQN0Em9SMu+jFGnVUCnUX/qLfwjjgY/w8Ib
 D8L7PEpAtgJp5Ary9pHuK8OrFz60ytt6CkttRQIkf8WkaVvtPBmM3uVqx
 uPBa57CovlK/UC3nCCo7xcsq4DYuC4FyNsCjsMBF+xWAEmGLZHdgnk5ow
 FzrdRRpsmLLJqujGd/pPHGjgjqKy8eNm8xOcSvyty1JFQNEEe4s6CjysP
 gyZFMZghmDo92NrIMw9xCn9bjwFcx5388h9fp3nwwEypTcMLIOT41o+ex
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CgO+L/sH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igc: remove unused
 autoneg_failed field
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15756680868

On 08/05/2026 0:47, KhaiWenTan wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> autoneg_failed in struct igc_mac_info is never set in the igc driver.
> Remove the field and the dead code checking it in
> igc_config_fc_after_link_up().
> 
> The field originates from the e1000/e1000e fiber/serdes forced-link
> path, where MAC-level autoneg timeout sets it to signal the flow-control
> code to force pause. igc supports only copper, so it never needs to set
> this field.
> 
> Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_hw.h  |  1 -
>   drivers/net/ethernet/intel/igc/igc_mac.c | 16 +---------------
>   2 files changed, 1 insertion(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index be8a49a86d09..86ab8f566f44 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -92,7 +92,6 @@ struct igc_mac_info {
>   	bool asf_firmware_present;
>   	bool arc_subsystem_valid;
>   
> -	bool autoneg_failed;
>   	bool get_link_status;
>   };
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 7ac6637f8db7..142beb9ae557 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -438,28 +438,14 @@ void igc_config_collision_dist(struct igc_hw *hw)
>    * Checks the status of auto-negotiation after link up to ensure that the
>    * speed and duplex were not forced.  If the link needed to be forced, then
>    * flow control needs to be forced also.  If auto-negotiation is enabled
> - * and did not fail, then we configure flow control based on our link
> - * partner.
> + * then we configure flow control based on our link partner.
>    */
>   s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   {
>   	u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
> -	struct igc_mac_info *mac = &hw->mac;
>   	u16 speed, duplex;
>   	s32 ret_val = 0;
>   
> -	/* Check for the case where we have fiber media and auto-neg failed
> -	 * so we had to force link.  In this case, we need to force the
> -	 * configuration of the MAC to match the "fc" parameter.
> -	 */
> -	if (mac->autoneg_failed)
> -		ret_val = igc_force_mac_fc(hw);
> -
> -	if (ret_val) {
> -		hw_dbg("Error forcing flow control settings\n");
> -		goto out;
> -	}
> -
>   	/* In auto-neg, we need to check and see if Auto-Neg has completed,
>   	 * and if so, how the PHY and link partner has flow control
>   	 * configured.
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
