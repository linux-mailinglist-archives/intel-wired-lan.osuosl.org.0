Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A891A832215
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jan 2024 00:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26BCC844B2;
	Thu, 18 Jan 2024 23:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26BCC844B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705618939;
	bh=+tq/fE/qFWbAKYhOZ2idfMVDzQmz9ljWES2dRhSHVSU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V+UUPpxuPsnRTm7o1Q8y+xMAtCSDROHstTLVmOLzMBv66LEjJ5HFUsZAbObUgvj9L
	 HSLHSJXjxz3zQTkMKwC/k2F5nIWOQxHVILmBKxTQOV+lbYJOCrXP7/CaTrUsIbQTri
	 4SZRqbD0l0n0nvIPN3IeyrAGtNhXEs9/FRpzfDPMSFk7IqfDYZ7pSIhPUc+j+tfJ9q
	 Mccy7pUsZoCBuJLsW5znutyB1ilYgdOpthKl6unlNXlk6nGmNhhbrcyp0YXe5rWtGS
	 tiEKrPngoZnaeWfXTaw5OqLFJxzlk1tCuu6rp0Gnk/xWv8bRLJWhaM2xyeamFIH0We
	 i4tgCUfdx3gVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DloLLRtyg8B5; Thu, 18 Jan 2024 23:02:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6C6A844A4;
	Thu, 18 Jan 2024 23:02:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6C6A844A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37E2B1BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 23:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E37D6F6C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 23:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E37D6F6C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDy66iY2V3xN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 23:02:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DD7160F13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 23:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DD7160F13
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="19189790"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="19189790"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 15:02:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="19235444"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 15:02:04 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 15:02:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 15:02:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 15:02:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlGz+ZDZTqTVdmJJcJb0wpcA0iP4Nycw7foDoN6pqzHUG1j/WLoM+sIW7tvivKkn/B7wf06hi9BueBhrfE/9DMQE6VNxrD7bsHCHJTUj3zY0bJ6qc43+eXUJzNJvywicRlc476q6sL3/X7aLgaQ8gyHAKPmjw3ZqFrwMSCSs3bGxAv9ap2oa/6rk0uoN+DS34Y0MEA4AemVC5VYxmwX7cq9/kGog8ekx+boMQVX5qltF7UAKTKzPlT3Um2U8nxKdbNFg03/eRG6ncbFsKbkfIGsYSjzUQtfkbvOc2iy/lSIzJmsz4t5eCzTbzw2eQ7cFjSwLqJdp2qJp5CcUWZ/Qjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+tq/fE/qFWbAKYhOZ2idfMVDzQmz9ljWES2dRhSHVSU=;
 b=NRaK/52MZuj88HGSdasu3qK4urIvl0ucGaFN1TeWPcCREZ9khRI2Wl33cc0nnFi90DK+tlfDWJVJ8RuiHkVyQ+KNGO61XKRbFABuY15mpkGk3YD1P7ETlK2tTrtiHR9d9oiSxYe9cO80m6O8QCNHNYo6E+8Buxq3SLz4Mvd3XxmzIGFaj2KCZyYWp+O7c9ozr9RMSjAGohsi0DTApJRf65rciMcCPDrVI5Lkk1UozeyQ7son928+TMVc40/pPpo6mHMrHz2Cp5dbSSq+lDY7Cd6Fp2NG7kNPzwYU4Js1UeE83kOKzupNacsayQ77Xo4uFoveZZ3Zs3msnF8r3Birrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM4PR11MB5296.namprd11.prod.outlook.com (2603:10b6:5:393::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 23:02:01 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 23:02:01 +0000
Message-ID: <a7f80cd9-12f4-4f37-a015-84ed493ed892@intel.com>
Date: Fri, 19 Jan 2024 00:01:55 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Saab <ps@mu.org>, <intel-wired-lan@lists.osuosl.org>
References: <CAMYpurzickzNKeOzkHhPitystoYS7JdB_6VHD+Cd1vco7dVP0A@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <CAMYpurzickzNKeOzkHhPitystoYS7JdB_6VHD+Cd1vco7dVP0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0166.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM4PR11MB5296:EE_
X-MS-Office365-Filtering-Correlation-Id: 8792bed6-6021-49cb-13b6-08dc18797a9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nv+pt9DLEiYZKACC14g7b2TIKjH3fD1oYlYR3Twxks7xQWpmGfacbo0IXBb6qXuT92rCy1P8wNMAY25xKXqSvYZGwhXUPpvIeLa7QT5PQdhLr/gGizMUUHY5xJdqBp5wQiACYyDkSf5do+X2R1Di504mbcmBxvl1srZYKNolRvhF1kEAgzDzsV42O/WnDrSQK829Esv33SuAlglzRil86GmSAEHLJLCTZ1/LaFtqegCv2IpXIre9JDRBPonqpQeXqK0oMVEKXhfS/AOTB88t+ALQW9K3WoNulPQfu/ObkTB3+CcQlQHRgq19/YHuYo2e4XTXBrS+YTvhuMCtC46mhw3xgk38dluPAHcnr72dvjdg6p9dmxPKey/m1FC6QzGOIK/r3ceD/T8M8TcZc8vZep602IYmyQC5M4W5sJHRqcuBMtId9UVcr0vaQajHZ0Ytox+Y4Q1hDGjt3mFr3Jd1YAbvMKx1brnVKY9jT1FASfEwMLrBvJCN2MN9njjIKkaZAlY9uQn65yUt06jNRqakfQYj6BGIv0iYtGyRyPcpPzWfXPsTtD2+YKUobBurvOMzpBb7/e89VBq0JVy2rFGf+pJU1tJmxWieSfWeubZG710h9js3RFc6N8KwvX+4XUXwCiFEKakw24eepxI/ZlAbfrDmI9PqMc6xTxkx8yks7SOlqqjrCEpjiT6CL5Ba/Ovt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(366004)(39860400002)(230273577357003)(230173577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(26005)(2616005)(6512007)(6666004)(6506007)(8676002)(53546011)(86362001)(83380400001)(38100700002)(31696002)(82960400001)(36756003)(4326008)(107886003)(8936002)(5660300002)(2906002)(41300700001)(31686004)(6486002)(316002)(45080400002)(66476007)(66946007)(66556008)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2YwRlkrWURqN3NiUXdVdFV6ODJic2NLd1NzVVk2S3NDb0l2RWZ1bjA2cWpx?=
 =?utf-8?B?VVFBUXYvdEpjQjNYeEM5R240aE0zdTQ3bEVOWmxKbHg2RUNPQkVMU3puUmxM?=
 =?utf-8?B?UVJsMmVnWERvWlp6NWJFWGJUM0lNWGtkcm5waHlOMDNpajRzRzZGclhDRTRz?=
 =?utf-8?B?OXcvMU1MUlc0WnJyNHI5MHR2b0g2OVk2T1k3NlBFQ0FGbUtPQjFqcmZlVHl2?=
 =?utf-8?B?c0RFY2dGNEUxVUsrYU42ZEQzMHlTU0RpZW5tejJNbUR5TzlkU2ZJbUpsQ3lU?=
 =?utf-8?B?Q2IrcGtTN3VTaGVDcndFMUJ5WW9uSG42Q2Qwb3lGSVdzOGxTalVXNEtrTHBK?=
 =?utf-8?B?QjFKelRSRFQvWC9ET1pqbVlKRzRHTTlmclErVm1Bem5FQWFhRlVPNHhwU0N5?=
 =?utf-8?B?VFZvejRrOURvM0pUSTljeVpzdXU5cTlSWjIxblM0YU9kaGQrMGlhWU55MURL?=
 =?utf-8?B?Wm5zY3Nya1NHRnhUY2lpMElDaWROOU44MC9xaVFEM0dGNHJoYmVEV1FUN1Z3?=
 =?utf-8?B?S216OHI0UGlYaTVTaGptc01sbXA2U2RtdWoycm5DeXFYS0ZneFMrVDUwVUx3?=
 =?utf-8?B?Uzh4R0RsdVRjM1dqSm1ZSkZlMEV5aEd1WS9hcWR0aXNnczZWU3RCNDJJd25H?=
 =?utf-8?B?ZUVHYWJNTFVTOHdXYnllN0Rvcy9jUjZXRWRRL1hieVFwSSs3aVhQZWoxaWU1?=
 =?utf-8?B?Qk5oS056NjFHWUJLME50K2ZrdmJXQVgwYUZTV0VETW1raHMxblh1dmVoOTl6?=
 =?utf-8?B?WWNqZE1hdVVLVStrc0ZScWdYSGZqb0N4YXJGQ0VSakJjM0U4NHJYdTNrOHRi?=
 =?utf-8?B?RFlmeUxmNnk5Ump1YkE4RloycVBrRTFrcHF3VTYyZ3g5ZHBSa1ErYWFFa2RP?=
 =?utf-8?B?ZmxoSGxKajlhMlE1TnNid01OeUdRQkEvN053UWhGSFVSYlJ2bXk4QVAzdE9E?=
 =?utf-8?B?OWNOaTFWeEZUTWJVelRYNUl0aG9pWmo3VWxTSmFrYi82ZDZkYmhWandXMGpD?=
 =?utf-8?B?MU1tektoTy9PR3R4N3gxblVvM042UnY0d3hCeVFIbm1sQlZNMlRUZ3BsdFFx?=
 =?utf-8?B?VHUxc1lGcll5eUdpR2E4OE9YazNiZWRpSEhhNTdDMENzd0dIZytaYU1VSjFv?=
 =?utf-8?B?aytBYlR1Wjh0Z0FTbDdWbjBQNU5sQ0ZSTTJyWFRZZUR2U2NTZ1cxVXYxdDI5?=
 =?utf-8?B?d01YN3FEWDBCSjd2UkpXZGlzZXhUYUxsSjVGSTVkcmdqdU9UUzlQVnRlRjZp?=
 =?utf-8?B?SDVqdHpRU3NScDFjaExLSDdtaVJETXFEMFpOMEk3RU1QbFJMdjlJMm5TRHBy?=
 =?utf-8?B?SmhpR1FHSDJleHJrcG5NdG5uUmdDUnp1WVdSMTNWdmpsK1NHY0REblMzU3Fm?=
 =?utf-8?B?ZnlVa2dHa2dZQVFCQ0d6U2h2WlFLTlhpZ25TUEtBTkkvQkp4RndBNGdBejNU?=
 =?utf-8?B?aVJTVDRlYXdhNnpNZWJXYjZCOHJwUTQxbG9VamR1OEpqVjFLUlRPbHp6VFV3?=
 =?utf-8?B?OEFQRncwTlRvdnJlODlyemk3NGFFNVR6L0tJbHdwa0lCQi9EVVZlRzlMcmxC?=
 =?utf-8?B?WHdvWkZDaGVGemJHSThWTVJPczJQMzVNZDNQSFBWd0lUSGYvU21pOWR5Tm1T?=
 =?utf-8?B?WW1hQ29rM3ZaM29tZVMwbUYxaWNGeUMwZ2FRWjVYZzhQemFhaHRPMTVVMUc3?=
 =?utf-8?B?ZTVjL2lPSVBISjd5NjNKWURTTFNoblAzNlVselIvRXhDakY2V3NWQkZURnRr?=
 =?utf-8?B?OHJ0Rlptd0tEZ0o4Y2dBWnoxTVcxaFpacTV3b2o4b0szZ0tGcmFsaDgvNnBN?=
 =?utf-8?B?Q2s2OEhkNVBzRTl0Y3ZoY3N4MzlTU29Dd09LQmloQy95ZU1xV0c1Z3hKcURt?=
 =?utf-8?B?b3hFTkcwMk1oLzYwZ0xSbGQrbmptQXNkUEVWWHBaZ2wwdm8rNDdOK0pNckdh?=
 =?utf-8?B?NFBDV2g5Qk1odHlicTB1TmttRGZpUkNVRDNlcDk1NnY3RWwvandlRDlSQUNh?=
 =?utf-8?B?K2lCa2NKencxZ2E5Q2xRZ0pXZ0RTM0JYcnpjbmtVSThncWs3TmlTdnI3b2xM?=
 =?utf-8?B?WkdIYjlEaVlRQlJ4cUlzMWxod2lPMThOWi9ReDYzRVNSMFpvNHd2N2gwMlRq?=
 =?utf-8?B?d29QSUcxMkFRUWx0VjJXc2tuYTNZYkhINkdqR1luY1ZHZ2pyaWF2c3hYenIx?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8792bed6-6021-49cb-13b6-08dc18797a9d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 23:02:00.8813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RBj6/BdRIRPn8Hb360aPWwBcThICAoit6+47BaYDtEx+dr+2BMd18m5AsElPZnEWeRdGSe30VA0/ustkQ/+C36rLoM86h2qBvjiHzSo4mEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5296
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705618931; x=1737154931;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7NaOK+QCW6bxkc+VFJL/dTv5KySnZ6p0FIX2c2Lc5TE=;
 b=LPeiar8nONy58B6b6D4sRIEQfcdVqzYWRoTpyD7Ma4RdIR8Qjx6eNROM
 JwBIc2OdiLBs20Up5ph+Yp5/rYZhlDxm6vkQ082OlW1qGcPqxYesiW+qz
 b8irq/bs4b4cq/9GhqxiuNQzh7n8hisO6tXNV0nLhNzZUCGpd8lDPUIQY
 /RbpH+VEywwj/M3nTP/sEw8eVd6QpLAhW10bhFaOeXBX9VZCwGozzS9JD
 SCRggN/L2Kji/na4aRBavSMaQBUdm6TLMbozZrGpDFfDqdeFRdjyTCduw
 zVvYtKRyAkrXy/A7AqQmHNnVFXvcwn6/kYXGMgcLZ72EZGw0fWQbbXOeN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LPeiar8n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ICE sriov reboot and other errors
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
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>, lukasz.czapnik@intel.com,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/18/24 19:19, Paul Saab wrote:
> Hello,
> 
> I'm migrating some systems that I used to use the 700 series network 
> adapters to the 800 series and I am noticing quite a bit of issues 
> regarding sr-iov.  i'm using between 8 and 128 VFs, depending on the 
> machine.
> 
> I am currently using ubuntu 22.04.3 with linux-image-generic-hwe-22.04   
>        6.5.0.14.14~22.04.7 and debian testing with 6.5.0-4-amd6
> 
> NVM is 4.30 on the debian testing machine and 4.20 on the ubuntu system.
> I see the same issues with 4.40 so I haven't bothered to upgrade (yet).
> 
> I see this on pretty much all versions and similar issues with the out 
> of tree driver.  There are two different types of errors and they are 
> both below.

Hi,

Thank you for the report, and for the extra effort to check with
different versions/variants of the driver.

> 
> The first is when link happens to flap on a port (switch reboot etc) I 
> see the following error:
> [  831.658768] 
> ================================================================================
> [  831.668264] UBSAN: array-index-out-of-bounds in 
> /build/linux-hwe-6.5-q7NZ0T/linux-hwe-6.5-6.5.0/drivers/net/ethernet/intel/ice/ice_virtchnl.c:2020:45
> [  831.683305] workqueue: ice_service_task [ice] hogged CPU for >10000us 
> 4 times, consider switching to WQ_UNBOUND
> [  831.683417] index 2 is out of range for type 'virtchnl_ether_addr [1]'

Here UBSAN is complaining about our improper `type array[1];` style of
declaring flex arrays at the end of structs (that we ended up with
thanks to implementing virtchnl as a "shared code, for MS Windows too").

Definitely worth a fix, but not something to be alarmed about.
Thankfully, Olek already fixed that in recent commit 5e7f59fa07f8 
("virtchnl: fix fake 1-elem arrays in structures allocated as `nents + 1`")

[snip]

> 
> The second issue is on reboot:
> [2771637.176795] ------------[ cut here ]------------
> [2771637.187192] WARNING: CPU: 12 PID: 1 at kernel/irq/irqdomain.c:284 

this looks awfully similar to the one of other bugs with recent fixes,
7ae42ef308ed ("iavf: Fix iavf_shutdown to call iavf_remove instead 
iavf_close"), and I had heard from Red Hat that this commit helps a lot
in their case.

Both of the commits are not yet present in Ubuntu jammy (22.04) hwe 6.5
kernel (at least in my copy).

Who from Canonical should we ask for putting those at a fast path to
backport?

Best Regards,
Przemek

(keeping the splat below)

> irq_domain_remove+0xd5/0x100
> [2771637.201762] Modules linked in: irdma ice xt_nat nvidia_uvm(POE) 
> rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace sunrpc 
> fscache netfs xt_conntrack nft_chain_nat xt_MASQUERADE nf_nat 
> nf_conntrack_netlink nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 
> xfrm_user xfrm_algo xt_addrtype nft_compat br_netfilter bridge stp llc 
> tun nf_tables libcrc32c nfnetlink nvme_fabrics overlay binfmt_misc 
> sch_fq tcp_bbr nvidia_drm(POE) intel_rapl_msr intel_rapl_common 
> amd64_edac edac_mce_amd nvidia_modeset(POE) kvm_amd ipmi_ssif zfs(POE) 
> kvm snd_hda_codec_hdmi zunicode(POE) irqbypass zzstd(OE) 
> ghash_clmulni_intel snd_hda_intel sha512_ssse3 snd_intel_dspcfg 
> snd_intel_sdw_acpi sha512_generic zlua(OE) nls_ascii snd_hda_codec 
> nls_cp437 zavl(POE) vfat snd_hda_core icp(POE) snd_hwdep fat acpi_ipmi 
> aesni_intel snd_pcm i40e zcommon(POE) crypto_simd video snd_timer 
> ib_uverbs znvpair(POE) snd wmi cryptd drm_shmem_helper drm_kms_helper 
> sp5100_tco rapl acpi_cpufreq pcspkr ib_core soundcore i2c_algo_bit ccp 
> joydev evdev ipmi_msghandler
> [2771637.201863]  button k10temp watchdog spl(OE) sg nvidia(POE) loop 
> fuse efi_pstore drm dm_mod configfs efivarfs x_tables autofs4 ext4 crc16 
> mbcache jbd2 crc32c_generic hid_generic rndis_host usbhid cdc_ether iavf 
> usbnet ses hid sd_mod mii enclosure nvme nvme_core ahci xhci_pci libahci 
> t10_pi mpt3sas xhci_hcd crc32_pclmul raid_class crc64_rocksoft libata 
> crc32c_intel scsi_transport_sas crc64 tg3 crc_t10dif crct10dif_generic 
> usbcore scsi_mod crct10dif_pclmul libphy gnss crct10dif_common 
> usb_common scsi_common i2c_piix4 [last unloaded: ipmi_si]
> [2771637.445556] CPU: 12 PID: 1 Comm: systemd-shutdow Tainted: P       
>   W  OE      6.5.0-4-amd64 #1  Debian 6.5.10-1
> [2771637.465165] Hardware name: Supermicro Super Server/H12SSL-i, BIOS 
> 2.1 06/02/2021
> [2771637.482150] RIP: 0010:irq_domain_remove+0xd5/0x100
> [2771637.496525] Code: 21 89 e8 3e c9 52 00 eb b9 48 8b 7b 10 e8 83 a1 
> 1c 00 48 89 df 5b e9 7a a1 1c 00 66 90 48 c7 05 6d a4 f8 02 00 00 00 00 
> eb 8a <0f> 0b e9 4b ff ff ff 31 d2 48 c7 c6 38 97 89 88 48 c7 c7 68 95 21
> [2771637.535041] RSP: 0018:ffffb7618005bb70 EFLAGS: 00010282
> [2771637.550303] RAX: 0000000000000000 RBX: ffff962e285afa40 RCX: 
> ffff962e285ae0e8
> [2771637.567618] RDX: ffff95c280391980 RSI: 0000000000000000 RDI: 
> ffffffff890d2ae0
> [2771637.584962] RBP: ffff9636607740d0 R08: ffffffff88834fa5 R09: 
> 0000000000000068
> [2771637.602347] R10: 0000000000000000 R11: ffffb7618005bbb8 R12: 
> ffff95c46a9bd9c0
> [2771637.619793] R13: ffff9636607740d0 R14: ffff96366077436c R15: 
> 00000000fee1dead
> [2771637.637280] FS:  00007f65ef77d500(0000) GS:ffff963fced00000(0000) 
> knlGS:0000000000000000
> [2771637.655883] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [2771637.672165] CR2: 00007f65ef481edc CR3: 00000002ea336000 CR4: 
> 0000000000350ee0
> [2771637.689947] Call Trace:
> [2771637.702993]  <TASK>
> [2771637.715641]  ? irq_domain_remove+0xd5/0x100
> [2771637.730511]  ? __warn+0x81/0x130
> [2771637.744327]  ? irq_domain_remove+0xd5/0x100
> [2771637.759104]  ? report_bug+0x171/0x1a0
> [2771637.773324]  ? handle_bug+0x3c/0x80
> [2771637.787284]  ? exc_invalid_op+0x17/0x70
> [2771637.801422]  ? asm_exc_invalid_op+0x1a/0x20
> [2771637.815743]  ? irq_domain_remove+0xd5/0x100
> [2771637.829921]  msi_remove_device_irq_domain+0x66/0xc0
> [2771637.844756]  msi_device_data_release+0x18/0x60
> [2771637.859108]  release_nodes+0x40/0xb0
> [2771637.872591]  devres_release_all+0x8c/0xc0
> [2771637.886559]  device_unbind_cleanup+0xe/0x70
> [2771637.900732]  device_release_driver_internal+0x1cc/0x200
> [2771637.915911]  pci_stop_bus_device+0x6c/0x90
> [2771637.929945]  pci_stop_and_remove_bus_device+0x12/0x20
> [2771637.944956]  pci_iov_remove_virtfn+0xd5/0x140
> [2771637.959127]  sriov_disable+0x34/0xe0
> [2771637.972288]  ice_free_vfs+0x29a/0x2b0 [ice]
> [2771637.985856]  ? acpi_unregister_gsi_ioapic+0x2e/0x40
> [2771637.999890]  ? srso_return_thunk+0x5/0x10
> [2771638.012804]  ? acpi_pci_irq_disable+0x79/0xc0
> [2771638.025849]  ice_remove+0x216/0x220 [ice]
> [2771638.038333]  ice_shutdown+0x1a/0x50 [ice]
> [2771638.050541]  pci_device_shutdown+0x38/0x60
> [2771638.062561]  device_shutdown+0x118/0x1e0
> [2771638.074166]  kernel_restart+0x3a/0x90
> [2771638.085274]  __do_sys_reboot+0x142/0x230
> [2771638.096410]  do_syscall_64+0x60/0xc0
> [2771638.106924]  ? srso_return_thunk+0x5/0x10
> [2771638.117632]  ? exit_to_user_mode_prepare+0x40/0x1e0
> [2771638.129017]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
> [2771638.140440] RIP: 0033:0x7f65ef31c553
> [2771638.150201] Code: 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 
> 00 00 0f 1f 44 00 00 89 fa be 69 19 12 28 bf ad de e1 fe b8 a9 00 00 00 
> 0f 05 <48> 3d 00 f0 ff ff 77 05 c3 0f 1f 40 00 48 8b 15 91 48 0d 00 f7 d8
> [2771638.181641] RSP: 002b:00007ffeff467d38 EFLAGS: 00000202 ORIG_RAX: 
> 00000000000000a9
> [2771638.195540] RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 
> 00007f65ef31c553
> [2771638.208948] RDX: 0000000001234567 RSI: 0000000028121969 RDI: 
> 00000000fee1dead
> [2771638.222318] RBP: 0000000000000000 R08: 0000000000000069 R09: 
> 0000000000000000
> [2771638.235638] R10: 0000000000000000 R11: 0000000000000202 R12: 
> 0000000000000000
> [2771638.248841] R13: 0000000000000000 R14: 00007ffeff468088 R15: 
> 0000000000000000
> [2771638.261970]  </TASK>
> [2771638.270048] ---[ end trace 0000000000000000 ]---

