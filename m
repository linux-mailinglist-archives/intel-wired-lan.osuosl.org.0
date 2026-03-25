Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BA8LCEExGnOvQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:49:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9396E3286E1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:49:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4785E61099;
	Wed, 25 Mar 2026 15:49:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ult6qObVkcD5; Wed, 25 Mar 2026 15:49:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCFCD6130C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774453790;
	bh=dPBU68OF0RCIIXyDXAww3CDJz2Ymy863OKvq/8jZ8m0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RN3dzVRYs2UidxHgmW4CdFJNI6Tnh9GyiziK/UcH3PjIUGen2MScDEqN2w8enklCD
	 0uYm12JMQW0MzefWW8ucm62bmk/tG97saNOp92k5RSRFZds5HrjGVdoUws6wa2zjF5
	 liV70YoWvLbtyEBlCFJlIzgPQFyKzfcr8BrgsKYdiLi5W7dqtaIi3T12iwOeCLiRMq
	 JF/0/QEQuED/73TVASlX2oETtExV+6iTDcgJBV4KGGldpTitENSgC0T2+7f3NAcoC/
	 /nh3yLLZPjM/fBIHerA+0+EYuBOimj0Ss15fiFNmDfdBCYbJ+4mD+dVlQy2D9Qq+n6
	 FD/tywqD96C9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCFCD6130C;
	Wed, 25 Mar 2026 15:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 75726353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66F2940213
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TrT_nmhZMqGK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:49:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5CFD74009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CFD74009E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CFD74009E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:49:47 +0000 (UTC)
X-CSE-ConnectionGUID: QXkA10+/Rru86wKSxWqw6A==
X-CSE-MsgGUID: IJpsNhgrTPWlgy84ZIjeHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="63044842"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="63044842"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:49:47 -0700
X-CSE-ConnectionGUID: UnGydugpR2yZXN1628Y0QQ==
X-CSE-MsgGUID: MoO0tuxFQx2li8qhiTgc/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219877986"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:49:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 08:49:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 08:49:46 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 08:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mkUxDwyA0O5/lS4zS5HxGNnf1y++lX1pKZhdFaQQmJXpdTHn2x2gWOAeMNa/1ppMrSl3oWaiubutMrDBQ5PQl9cZhZGueG9pbes1DstZsL6FuaqhG84j6ngEOEtHaL+6cDDbKNMO3OPIrBYnyVFZ96so0FIRZmNPg1imLVPcRW1fNerwpLFuRvIzA9x2x0QMi6p162DXH+bQkXH9rswyl6L/nBLiaaJOL48Odvt4VZfALPxjhwSn4aPTfkA6E/ygHdUVBq/nNSa4MVxKXtuOY5wqE2BQtyr1SX4wNe53hehSKSDQc1ZI2FgvrHSCaAmuH8LxxnJk2mtGfK/4xDBWRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPBU68OF0RCIIXyDXAww3CDJz2Ymy863OKvq/8jZ8m0=;
 b=HwFQXZ9PguHOnBIfEnhJrzm/u9iAY250/wxyXjNLAYYlRqPjM2jPI9TCJuz4zbicz4nJb+ZzCmmMhqlU7Lr0QN7oh4Qw/j3/kW5Ip4nG7vY5G9MnjOIfRHfDHVDcHSGHa6jOLzZpUv1KI9pDjnVAY+5+z1nXzka4iCOb98jQjQjceBOactOxvPT5ozZ93Oqitb5WJtMrJ7Xqe+BVeSIWZl7Csdl6qlfi2tb+VH6nJbVCGBRWFr7QeiYG9WLQ+ejNRUnLUtRQgDohm9esHCpaqlvDjTI31zciRd+Gq44NChAuxXegN9zj0dQCWRU5LTkurTbWr9Wpm9KMHkgd74t5aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SN7PR11MB7491.namprd11.prod.outlook.com (2603:10b6:806:349::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 15:49:43 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9745.019; Wed, 25 Mar 2026
 15:49:43 +0000
Message-ID: <35bc35d8-ff5d-4596-9f9f-6ab563c890b0@intel.com>
Date: Wed, 25 Mar 2026 17:49:37 +0200
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, "Brandt, Todd E"
 <todd.e.brandt@intel.com>, David Box <david.e.box@linux.intel.com>, Len Brown
 <lenb@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>, "jeremie.wenger@edu.ge.ch"
 <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
 <20260212111506.16bc402a@onyx.my.domain>
 <29b8a4b4-66d4-47e5-a316-b88a03b3882c@intel.com>
 <20260226143616.608ba411@onyx.my.domain>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260226143616.608ba411@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SN7PR11MB7491:EE_
X-MS-Office365-Filtering-Correlation-Id: b1c2e742-e27d-4798-541e-08de8a8621a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: /O41VBY7+Wi53Aan/BtcSAb0xxFc93fy/KuRLwbSvNJmeDgY+6MHqNTSOUzWkJwxDzxeU78sIHrRmJLV1UHH01z2g3jFtfCCxUlkDPQxUW8Ut7ak/j4i3RwFHys3rjhD24G94BkSJxKHybEVVlZr9rc5bWViRfpuPHW3j9yQGARGfpX0IQv+RjRX7d2Ji2gunYWjlFJTTDJMTiC31GV3JyVYyxeUMXUo00SwR1EZ3EnHdOZ2f6rC7rjYoaL6iH37VfEaZyT9+0VejcdW/F4oodjS+qUvlAjUwiTzsUzJyyFzKc2YjaNjjzqEl7uP0XOZdj5EMVNC/JTX8v77klP6zvuB/zAyo3YOFMBLZpVXvOiyalATTWb03Be+IqeHamaHfoE4yU6r+AkWrXdHmuaU6EIszOHz7kgkClTgT4gxzGhmsAAal1aYN656kzEe7zzTD0wg+OTKPi0eusS6ihJyiF+nIXLl2OJkjVhPDKP92Kle++a5gOUPHk31RS/ofwVrhezHWXBf8ZsyazCPTr+IpGyc6j9bi1nvJtde3LWCapOMQSiXc8inR4gpZaCUGRpCcJyySUrVpfvBbPIziF4v60bkD+Jc8giAEjv5hP6npn6QB++50IMrppGkDOKS/FW2pkFai89JFzyYLdPe2oH9qbh9mlRK9ouBqp7gtKEBUruwaRWguMHyk6s2pwj7aR9Gr2k5gpBpjLYiMDaG8dhGa4GmM3I0YJXvc+xNm8z9v0k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TitIUjU3V0trTkxUam1DSFRmenFUNkxOYWlsQTBCS1VrNi9zM3RYVDZzY25T?=
 =?utf-8?B?aU1TUzNscld4Yk9VN091NUlyNkV2SThod0Y5bjNTQmJYajBQQWFiVVh6ZG91?=
 =?utf-8?B?MzN2cC9RUGtwNU0zNkNGRGJHa29VZTV1dndRdXpiZkgxWTV4TVZXTnRTaXh5?=
 =?utf-8?B?KzNmOGJ5N2FacWtEb2ZVb1RyUHhzRWlEMTdROWZUSzhkZ0J6KzlLaW9sZUU0?=
 =?utf-8?B?Wk1HaTJpUytsaGVPSjc5cGp0aTIydkJuNEhZNDFMaDFXSW56bFRuTVhnNUxu?=
 =?utf-8?B?dGpGQ3VncDVhNEVDbEN4dzU5M05jNzRyTWxJcXgxVVo0WXE5cTVqTXRvanRv?=
 =?utf-8?B?RVRLSFZST1Y4a2ZwNG5xWVF2WUJUVlh4dmdPZ1hhWEpSbERqbnRya0tIT2hw?=
 =?utf-8?B?VThmeFJtT1BBTHNGdWN0c05oeG1QcklEY1RKaGZhTTF4eVNZeHNPaGNRSW5E?=
 =?utf-8?B?TFg0cVBqOWlHOEdDNzN1QlRQZGNSSUVKVURPWDh1YzFUY0JseEp4bTZTM09q?=
 =?utf-8?B?UTRFYUxpYyt2cktFYzUrY2U0akZNTFFmYlVYR3VhWk1UMkZ2cFBkQldjc3dI?=
 =?utf-8?B?SVVLeDVDSk9Lb0REN3kwdkYvaVcvOWJaMk8zNTRBZVFEM01iQUczS2trVTBi?=
 =?utf-8?B?KzJFc1VqcmtsYUMxK05CZ2h0c2ZIaWluY2lOeUg3cG1hSVd2V1E2RlAyV2Va?=
 =?utf-8?B?bGNjWjVpYUVaWXpPZEJwVm1Ndytmam8zZ0I1Ni9uMVFQR1E2RFJPTkpMTXND?=
 =?utf-8?B?QWtmUVJUTW1yYU5hRlpkbGl5d1l3dHhoWGI5MFF5ZGNlSlZLRkhndVBUbVFu?=
 =?utf-8?B?eE85dWlvckRxQ1UzOGU5S2ppa21wUDVvaWpuRDhJcXRzYTBZRlpQc2l6bVlx?=
 =?utf-8?B?VnZtYzBKTnFYZVNjS0VaczJ6RzRvRUp3WFZGYWxaelhEU0t2UW4xam4xQUVW?=
 =?utf-8?B?NU1RcUdzanA2L0tNZ3NPVEhqQSszR2lhdkR4RlhvU2VxejdKMVY1UDlOSE96?=
 =?utf-8?B?aWViZDUzaHpWTlBsSXRwdFhoRkxBUlVmb0s2cml2ajA3cHhkakczTjc4aDF5?=
 =?utf-8?B?RkJKNU9BSnhFL2hZNkVHSXFtMHlVMGI5S1dvVk10SVNGWVBsdHNaV3paSXFh?=
 =?utf-8?B?SklnYXpmTjlKc2VMTHlJUFJFazNkMFVEVEFTY2NZZVVNSlZDbERucURvWlA4?=
 =?utf-8?B?Y3N2aTBzMXVCNVJORHlpU3Uza2FoVFZ6YVJCNC9WMnpvNHBGOTNETEV1OWRo?=
 =?utf-8?B?NnZla1JEcEhUaFJ3MTlTenpZZ3NwSll2SUhvSFQ1bFVPM3Y1a3E5YW02cVor?=
 =?utf-8?B?Ym5TWG9CWEVzTUR3OTVIU2cyR3ZTbGZDZWxZZ1ZtL3pSNGlscUxRelphUDEy?=
 =?utf-8?B?S2VQNGZ1elZaNENGVzBHUDlKWkhQY1kxdUpZUkYzTmREVWRlR2FreXV1Sjl6?=
 =?utf-8?B?bmhnVzdmaVVFOHpTR2pFeEZaa1IwazhvZWxGMEVpM1JWKyt5WTF1Unk1UnB1?=
 =?utf-8?B?OW9pNVRzeGNONWFwSDBaeXVKaE1tQncwTFZvakFnWERCbUhRUGEzMWtIZnJj?=
 =?utf-8?B?MXBzbExCY0JSak5sNm1kV2ROTGdxckV2cURKY3dhVEhDRVlmYXdHemFyWHBv?=
 =?utf-8?B?L0s1clh4VU1nUlh2WHRXWGZLbGZXTEVxLzdxb1FENkZRUnRmUnZIT29BdzRr?=
 =?utf-8?B?Yzg2SkJYN2VWclNDTzF5ZHF3Z2xpbnVoM3VtSkgrSHBVQ1pMeVZCOWNqSHRE?=
 =?utf-8?B?ekhpZFEvQlZtdy84YzBxMU5EOEo5QU14UDlCMTl6KzRrWjVtREJCTmVHYmFr?=
 =?utf-8?B?K2Zva0R4cUVRazBSTStQWTE1Z0FuQ0V0aUVlc2U2WXJZS0VlRUdsekQ5dEZP?=
 =?utf-8?B?RjdmN3R4OG9Wc1g3azNROTdVMzZqeUxDbkEwMjRPZmtYcmtVNTQzdG5LSmJL?=
 =?utf-8?B?SmJ5TVdDTUs5OHlYa2FRT0l1ZVlZcXM0K3RiMGxqcDZNNjRZSTlYcGRLK1d3?=
 =?utf-8?B?NVdiYXd1MEd3V2puQnNNejFNenduQWIvaUpIQkRxK015ZDZTTlJ1MjFlaWRl?=
 =?utf-8?B?d0svMkJrYmdYMHVISlNRc2kwcDFRTUpMRXcwTWVzTkdmSk9ZK0pFVTFoRVZ5?=
 =?utf-8?B?VHpicEVNYmNxd0djakVMc1Vqalg5V1FPQ0hsalFvSE5GcVlZMTdtL2xidERD?=
 =?utf-8?B?ZzhjTTh3QmlPTWNPcExxVjNzZTVDYXBvN0ZsWGM2N1hmTTRBLzBBNld1cVA1?=
 =?utf-8?B?N1V4RE9YTFAwWUpZcWZrU0xQaXk5cm9BSmV4VmhUSDU4bE9mRW9na1BCbGNy?=
 =?utf-8?B?TEw0Uzc5VjJ6Tk5iREJVVzlxQVUzVVdMY0JXajBUc3ZWVlB1YzdIUzI4bmYy?=
 =?utf-8?Q?P9qBUKp5ETFj+sBY=3D?=
X-Exchange-RoutingPolicyChecked: LSgGrUdcxNa8tqFxURx6Z3YnfZMSkoBTncK8T1uP5rJq06Gy8Q4Z+swbhTLxVkCD9ri1V8kHYQRrcEif0PqhobggWjIk44Zo0yvXiWaUNky4SkVxy3WDNdWwNM6ZsH+OU7mve7ukSm0IiA+Yzqz1sW/qai1Qj7mDbd/hVptvrHnD2sZ/iOm+xLx0z8+iHCyuUhFlS+Sdqb2B4uHG+6g+cPD+r0l4UFv3CIcG3S6/xvVv8ou/TxD5c128DhyZ26FF8lN4vLRTo2ypZGUZ10fT0o+Yh/EjiqFPDjkTWxLQ0LZSuanDcVPJO1ePM/lPk5tQSBibtSxW3WFNLEHg1hhtVw==
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c2e742-e27d-4798-541e-08de8a8621a1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 15:49:43.0532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MaYxqcnB0IyNNfDtRpR5asadfvR4nw2GZSyaMJMJLLRti7ZmSIl2LyzopQC7fwogAgQ/sPdE0GBUiqMtKnUpqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7491
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774453788; x=1805989788;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TzTotjSJGhwQL83sXmGPEjee4gNhDNViK91w+oVarno=;
 b=PCEUzFPlESdggXQBriUTRdvLnD/U514Ap1+VNGrJKRmmLuMOGcsu+rNQ
 DfZE++27gyfndvupksKkqYz0A8p9DEBmcqtLxXvhvHyUJCE+lQ1qh9cPu
 IjdUli2XEbYHfUqpuDe8vFzzdoRv5zrmQMLKzZJVkxWkaJ+rKHb1GdeO0
 KRrrjUcYdrusW6OnCgERiNrbFbdAyjXtE9vl4MrhuIt5t0BmGo7p1MqKE
 +NIpZmLNkhRdRa6diBXb7PQ4qdDhlzl0y/KiBgYY1Jy8rx69MV7DuHrzg
 OsQi2veoAqqVRAwgmvARHx3k3oFhL1eq2ujVI+MLZmLaqFqrMJxJG/nLq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PCEUzFPl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:timo.teras@iki.fi,m:vitaly.lifshits@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 9396E3286E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26/02/2026 14:36, Timo Teras wrote:
> Yes, generally maintaining a large quirk set is infeasible.
> 
> But this is my point: if the affected set of machines with this issue
> is so large that maintaining a quirk set becomes infeasible, then
> the proposed change will make life very difficult for large enough
> set of people that a better solution should be devised.
> 
> Timo
> 
> 
At this point, with the current PLL change, it looks like the number of 
affected systems would be smaller than would be with the previous PLL value.

So far we have not received additional reports of regressions caused by 
this patch, other than yours. So, perhaps, the it can be manageable with 
a DMI quirk approach. I went ahead and implemented the infrastructure, 
it's actually quite a small change, and does what I want (automatically 
alters the default value of the K1 disable flag).

Could you share the DMI IDs of your system, where the issue is observed? 
Most likely the sys_vendor, product_family and product_name, located 
under /sys/class/dmi/id would be the most useful. I can add them as an 
initial DMI table entry for v3 of this patch (or a follow-up patch).

Thanks!
--Dima
