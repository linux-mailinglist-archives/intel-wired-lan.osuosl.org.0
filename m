Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D30812A3A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 09:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7613483B87;
	Thu, 14 Dec 2023 08:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7613483B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702542166;
	bh=yUO61kemu7j+rVDVRqzeCwiUhlx2FrPx7drsYZn6Vqo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tCJnUhzZCG6P7+fZfgNvNvtFYWDk7Jmcq2vh3FNfWgAJ1Adx0+vbccTu4y/WsSCfa
	 cTz3O56ZNwa2NAmAua3LBHlvRDYPHl3a//fYQXcRdtkpjENEgk4VLjV2DGb7Q1jfwn
	 MVO/nYFG/0bX2mc+Gnwp7EFglMR3B9lFxhWIwXU8g/CV9V6Dsa87zElQOwkK5e1knW
	 LmNRqqMA3mylIzzVTZuNJ0lobaRypUwUHSxQEmdaVNxA+F9W5eHTeiiodCBx4A2g5h
	 1j3w9YW7Ony/XSSigHKdBqziuUtr6yHVi1GKEHT/MXOuJCNGA73WfkbPLr3wx61R5H
	 5IshGeDCxJfSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-uGyIa96DH5; Thu, 14 Dec 2023 08:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07AF883A76;
	Thu, 14 Dec 2023 08:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07AF883A76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E07021BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C315841E45
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C315841E45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8VOXCUg-GZ1K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 08:22:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6C2341E09
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6C2341E09
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="459409948"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="459409948"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 00:19:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="774268571"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="774268571"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 00:19:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 00:19:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 00:19:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 00:19:32 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 00:19:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VLbZ4vpC2D7Dbw0Z4yYtnb/Bh2193Y3UBX3eDXdGjXQfNatX/GoRhFPxxTG0u2In+KHyjXAR1NKDmwqXExAdFscLhkzXI/qipGs07TIofHaKb+SSRu3a1V5v+y0GZQd8R16L/5XCEl6pSPRg5CR59Nr3hMrFSKzbf6O6dEmcVBNo2tHt3RVfZ6gKMAVxzvHkezEk87c9zGYhwS9t3Bz4WzWNa4R6GGlXCuGusifoSlnj0EF42XRD6zu+uenmRY22oOIneI66/imcKbJ57f79KNV0UECpunEJt6XT3qFIdUF2T2mF4RqboQYohRYDG62GumQ4uF4XMz6h71C2aaFxxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfofDWZX1TOxXfc9XOITiAsTTnPeJC7Frpn5XkPJJdM=;
 b=AnWbacCiCRhcpwjdiJIpaEFoOB/avlBORzZZ0nyyDhd4zS0YnnV5K1SZM4nkcx1kVlAqRkBo/4Uuy75atWWVB+PNZySYgPMQDVH0XddV1vy5Giz9hxosLld/OFGaPb2jc/thaRGX4u/YJSY3URkDpaFUOUN50Frc9L1apfe71whIQkCwrGQE1YCgLT5dl1jLM0P+c6aQ1lrhZrmUkaF6RBJZiXhMcOIvlyU3efvnUkwL6Brb5ddI71V+WoqOuorg12CnTMyRiarWbPUVtDYSplWFC7EXRJxe6ukfRG+HwSczqXsBjukLHujfRy74mKM8yI7GGQ2XBj+tjznVjhXwmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 by DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.30; Thu, 14 Dec
 2023 08:19:28 +0000
Received: from LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::c851:ea8d:1711:a78e]) by LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::c851:ea8d:1711:a78e%4]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 08:19:28 +0000
Message-ID: <4bf80a63-868b-4ed6-9e73-ba79a1315bad@intel.com>
Date: Thu, 14 Dec 2023 09:19:23 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>
References: <20231207124838.29915-1-lukasz.plachno@intel.com>
 <20231207124838.29915-3-lukasz.plachno@intel.com>
 <20231212102913.GX5817@kernel.org>
From: "Plachno, Lukasz" <lukasz.plachno@intel.com>
In-Reply-To: <20231212102913.GX5817@kernel.org>
X-ClientProxiedBy: WA0P291CA0005.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::13) To LV8PR11MB8464.namprd11.prod.outlook.com
 (2603:10b6:408:1e7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8464:EE_|DM6PR11MB4609:EE_
X-MS-Office365-Filtering-Correlation-Id: 3defb3ae-6d1c-4b40-431d-08dbfc7d638e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /PgOqFGMxVgTCjDs5vLgMPZdiYU97Oh4mKZwUOuzvnLozmqpkyg1H8lHjeFKvVaXbxz0sb1S0MoIhyUw8SHFHlm5umoEmzoLAt75iM84Fx7INKsVKc/R32CClc3cUb/03v6ZO3J9OZY/8+5cNfjrT0G1jO2+L/xHfNLeAgIxBE2M37elPrcIW/ciI/61+xJ+koFT+RUpMhvoGT+onVNgE3un/gBkIaPkvQE2rFJCxWdAvlrbf2RTBvBzQOVu65o0m7iOyCv+lNlWA8sW55P0i2cPm8ctqVAW8YcFPF7hgJCtzHJa3rydbJHg8GR/SCzjWTPS7smVSTBtm3N6tkbqKjA1PiREi1FrYbs8vJ1BjmUrYELANYSIZjdEBeRO/eu6ytsBQbxqFqv7aARzOtxYIA9m3dgnvUZ+9t4yPlvpTTheiudNfejpvHk3BYy6E21/OClIiIpVjHGFHUZvZI4bzMEtxOGw2PBzUcasAI4PcUoqzJeh5EEpIRaXCCZLx/64kmxGeRenRdiqtmBpt+Hu7969z2aCXzvdhM31IeKqw3KNjteSeX2pkZB3yroNU8LEVS7zVBkJpjF8/MzXT9j29rxKSey25OYtALkiLqXHsQwxnmq1+4m1Clvs1eDG6z/yUQQLKKzRaX8JC/3ZZ+66NQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(366004)(39860400002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(31686004)(478600001)(53546011)(8936002)(8676002)(6486002)(2616005)(107886003)(6506007)(6512007)(6666004)(26005)(4326008)(316002)(6916009)(66556008)(54906003)(66476007)(66946007)(38100700002)(5660300002)(36756003)(82960400001)(2906002)(41300700001)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHdYNFVwL3YzaDhqNHhXVDgwb1lmWkMzdVZHR2F1RjVZbXBHMDgvU2MwZksr?=
 =?utf-8?B?TExQOFF2MFoxZVE3cmJlMSswNXJIdlFKcVM2d3AzWFN5VW5lSFFxUkp0dmlS?=
 =?utf-8?B?ZXVBQ0xMQ2s2RHIwQ3hCWkVjeE5rRCtUWDBtM3owVHNEMktDOUlnZ050UTgz?=
 =?utf-8?B?VFA3Zi9TdTJ0RW5IZEJ0N1hjd3FESU5ZdU5WNW42VndQY1FpclRFb0t3NktP?=
 =?utf-8?B?bUVicUFjUDRkZ1RDUndDRU5GY0Z3TUtRNVg1ODhacnVuTmU1eTdCNDUwK28z?=
 =?utf-8?B?NFlYNVA3bXR3Yll3N1E2UnJhcHlqeG1PYytKQ2lZOTc1bDk3WkN0cXBwKzVU?=
 =?utf-8?B?M1R2OVJ4MGVpY3J6MjNDTWQ0Y1UxSmpaL3ZVN0Q5Ung0b1pnYmdkbGZtTkNr?=
 =?utf-8?B?TmwyWnViUUZXYll1MW8wbUp5VTdMUVBoTWNjRmtyWlRLZVBmd2dCL01MQ1BP?=
 =?utf-8?B?Mmp0Y3JsWjRzVjRONWFscDM5LzdzTklveEpzMmY3M2cwL3VHZXF4ZmMvSURG?=
 =?utf-8?B?eGlSV2Z5Q2J1cWQyQ3VSUlBnc1JkaHFVTDY5VXIrRjVWZDRnQlVSVTdZV3hQ?=
 =?utf-8?B?azcyOHRBUFFuZWJwYUJKenBLeEdDWmR6TU5rTVd0SmZSVHVYdXJaK2pYTHFK?=
 =?utf-8?B?RUJPc1JNK1JOc08wRm1Kd0x3bXB3aUtLV0tKR1pLbW5CdCtPeHZVcTczSmcv?=
 =?utf-8?B?YnNYOVJjWDV3TzdQUWJ5QTRiV09PSXJmWlNtb1BvbXNESTVXZG44enk5bnVK?=
 =?utf-8?B?Y2o0OEx4cHBFWVNXdWQrNDBHWkgyMEQ5RXl4STdxVTN0eWVlM1FBOTJYMkF1?=
 =?utf-8?B?T1Mxdis1TmxIdklLaXdWVTRPc2llYnV5MkY2dmpyNStyMFRNakxDYnRhc3Yr?=
 =?utf-8?B?OGhyM0JrMXFqWGIxaGloUyt6VFpTMkFNWEY4alhNVE1ndGw4c2VHMWdFSXNS?=
 =?utf-8?B?L2tyYmlOV0l6bllMaFlyclZyblhvMDV4RmEwbTM3bjdkUTdBT1hIZEV2Q2ZJ?=
 =?utf-8?B?TEhnTy84Skkra25kTzQwTmRJVUpRR3A0WXNaMjNjcGlHUi8zWHBGN3pPd3BD?=
 =?utf-8?B?K3dvN2RFRDZmcFUrV2dOQW13Qlk5YndMWjRDelcvaG94ckVvVGY2QUtjZml5?=
 =?utf-8?B?RkFpTkN2cW9ROHU4RytudVFSNGE3OEEwK2lwa0xkeDc5a2RZcnNQNDJvajYv?=
 =?utf-8?B?czBKRUFQOUR5Yjh4eElSQVByNW9NTzhqYldEYXM3U3pVS0hGVmhkeU5sM3Rv?=
 =?utf-8?B?QzYvSk5BWU1pN05NZEQ5VnUrU0RwK0YxdGIyVURSUjJIZUtTZEZHSUwzbjVK?=
 =?utf-8?B?MTJNVDZpZnJaYkJEcHk5M3RDV2ZhdUg4WnVpSkVqNlJiaWNvbHdTYTZEb2Z3?=
 =?utf-8?B?TncxSjJjZ2doZkk3LzdFQ0tUWnVYeklnU1EwbStsTTRGY2ErQ2lmWDRtL0Ev?=
 =?utf-8?B?czc0T1FpQkRWUjhFSlNKZ3lyZnpoUDVWVUx0Sy9MWUFGMnB4T2t1enJKeWtF?=
 =?utf-8?B?UHdFL0lVSEtucGRWODFxNDZlYjl2Q3NhaHNBQmFOOWdxamJjUWxHQ3ZiUkwy?=
 =?utf-8?B?akgwWVhIdU1KT2FPVHIvcDcwcVRwVDlzcVBqczBCKzczTzhGWFlmQjUyb0xa?=
 =?utf-8?B?MFdncjI4Y2JRQ3l0ak5ZMk9FZUVRU2JYbXp5WEo2cm9wMHJkV0psL3BsQnRj?=
 =?utf-8?B?OHdrWGFtVTloSU5TM3ZzRWp5SG5Va2VvcGpmc2pTQ242MnViNUN3dzcwczVq?=
 =?utf-8?B?UWRWVm5vcm5hSU5sS2lJUEM4cXN2UUgxb0s5eFBQTjYzdmhSU0lkVzZTZDRK?=
 =?utf-8?B?WldHSGIwQW5tYlR1bS9tT25qZVRlNVRiRGZsdEhib2NEcmFCT3plSXBWcDRN?=
 =?utf-8?B?VUFDNW9veTlVTTA0anl2NWw1QTVDRWtnZzF4cjBxUHQ3YUNhdk5Id2tneitG?=
 =?utf-8?B?MmQzTWV0RnBRVFZsd2NDZGxaeEpWSkpoeERMNVJyZm5lbldmMi9CbXViblhu?=
 =?utf-8?B?eE9paGhodlpLd1AwQk93VzFjRTdtT09UcFc2dzhHdEFEdFhrWldWMzNZTjEv?=
 =?utf-8?B?YVNkSDlQanMrUjI0bWxHQjZacHlYNTllL3hwZXg0TmFQalppVlROWFBxcGpG?=
 =?utf-8?B?aGp1VklYZjNtN3RwbmV3cTE0c0M1Y0JIempZbWRCUWY3ZmlIdmdIUldOUmln?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3defb3ae-6d1c-4b40-431d-08dbfc7d638e
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 08:19:27.6649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5iF35whloS9WSnjn6mUagRWAVntMYMvqIPkrFIkA//cbQWjPOlAe51hjUtMu0GGu4jQhJRfLmf23nAUNfEr5dQGhcHH5vZsnTKs4+w+57w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4609
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702542158; x=1734078158;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BA8lkXRine7LdS9cyMKc57WXIDmi2D+HPYeQPgf118U=;
 b=Ci7zXO5dRla8eh+UoZwRFJz5NK6XShwHKNNkc0b41uodt/M7OH+dIpIR
 IrwR5bgbM3IhfZtyhXD7x9O35LorQbi08LcexMsUk4Mg4FBLu56vzbCC7
 DuR1rPPKvsRpGvruN7kNguZfDn1tSOFagm98Ni+A0+dkKKrVi3VgUtJJJ
 JdTy+dR+hIOGs0gzebEYAo0N5J44BUdZDRmz+mGOMdxANWrCZelcHUV6t
 HQaFVqWJEFlaaa8U4rjNR1bdihZQxkj9U70rRY2YtRxn8fub7hj4JvpI6
 Tp5qlp2RtdaZKWfP0cDlC/x6jfU0KOFHHOefqAXG8RnE4aYDIbYO8ZVE5
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ci7zXO5d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub
 Buchocki <jakubx.buchocki@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTIvMjAyMyAxMToyOSBBTSwgU2ltb24gSG9ybWFuIHdyb3RlOgo+IE9uIFRodSwgRGVj
IDA3LCAyMDIzIGF0IDAxOjQ4OjQwUE0gKzAxMDAsIEx1a2FzeiBQbGFjaG5vIHdyb3RlOgo+PiBG
cm9tOiBKYWt1YiBCdWNob2NraSA8amFrdWJ4LmJ1Y2hvY2tpQGludGVsLmNvbT4KPj4KPj4gQWRk
IHN1cHBvcnQgZm9yICdmbG93LXR5cGUgZXRoZXInIEZsb3cgRGlyZWN0b3IgcnVsZXMgdmlhIGV0
aHRvb2wuCj4+Cj4+IFJ1bGVzIG5vdCBjb250YWluaW5nIG1hc2tzIGFyZSBwcm9jZXNzZWQgYnkg
dGhlIEZsb3cgRGlyZWN0b3IsCj4+IGFuZCBzdXBwb3J0IHRoZSBmb2xsb3dpbmcgc2V0IG9mIGlu
cHV0IHBhcmFtZXRlcnMgaW4gYWxsIGNvbWJpbmF0aW9uczoKPj4gc3JjLCBkc3QsIHByb3RvLCB2
bGFuLWV0eXBlLCB2bGFuLCBhY3Rpb24uCj4+Cj4+IEl0IGlzIHBvc3NpYmxlIHRvIHNwZWNpZnkg
YWRkcmVzcyBtYXNrIGluIGV0aHRvb2wgcGFyYW1ldGVycyBidXQgb25seQo+PiAwMDowMDowMDow
MDowMCBhbmQgRkY6RkY6RkY6RkY6RkYgYXJlIHZhbGlkLgo+PiBUaGUgc2FtZSBhcHBsaWVzIHRv
IHByb3RvLCB2bGFuLWV0eXBlIGFuZCB2bGFuIG1hc2tzOgo+PiBvbmx5IDB4MDAwMCBhbmQgMHhm
ZmZmIG1hc2tzIGFyZSB2YWxpZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmFrdWIgQnVjaG9ja2kg
PGpha3VieC5idWNob2NraUBpbnRlbC5jb20+Cj4+IENvLWRldmVsb3BlZC1ieTogTWF0ZXVzeiBQ
YWN1c3prYSA8bWF0ZXVzengucGFjdXN6a2FAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBN
YXRldXN6IFBhY3VzemthIDxtYXRldXN6eC5wYWN1c3prYUBpbnRlbC5jb20+Cj4+IFJldmlld2Vk
LWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IEx1a2FzeiBQbGFjaG5vIDxsdWthc3oucGxhY2hub0BpbnRlbC5jb20+Cj4g
Cj4gLi4uCj4gCj4+IEBAIC0xMjY4LDYgKzEzNzQsMTYgQEAgaWNlX2NmZ19mZGlyX3h0cmN0X3Nl
cShzdHJ1Y3QgaWNlX3BmICpwZiwgc3RydWN0IGV0aHRvb2xfcnhfZmxvd19zcGVjICpmc3AsCj4+
ICAgCQlyZXQgPSBpY2Vfc2V0X2ZkaXJfaXA2X3Vzcl9zZWcoc2VnLCAmZnNwLT5tX3UudXNyX2lw
Nl9zcGVjLAo+PiAgIAkJCQkJICAgICAgICZwZXJmZWN0X2ZpbHRlcik7Cj4+ICAgCQlicmVhazsK
Pj4gKwljYXNlIEVUSEVSX0ZMT1c6Cj4+ICsJCXJldCA9IGljZV9zZXRfZXRoZXJfZmxvd19zZWco
c2VnLCAmZnNwLT5tX3UuZXRoZXJfc3BlYyk7Cj4+ICsJCWlmICghcmV0ICYmIChmc3AtPm1fZXh0
LnZsYW5fZXR5cGUgfHwgZnNwLT5tX2V4dC52bGFuX3RjaSkpIHsKPj4gKwkJCWlmICghaWNlX2Zk
aXJfdmxhbl92YWxpZChmc3ApKSB7Cj4+ICsJCQkJcmV0ID0gLUVJTlZBTDsKPj4gKwkJCQlicmVh
azsKPj4gKwkJCX0KPj4gKwkJCXJldCA9IGljZV9zZXRfZmRpcl92bGFuX3NlZyhzZWcsICZmc3At
Pm1fZXh0KTsKPj4gKwkJfQo+PiArCQlicmVhazsKPj4gICAJZGVmYXVsdDoKPj4gICAJCXJldCA9
IC1FSU5WQUw7Cj4+ICAgCX0KPiAKPiBIaSBKYWt1YiwKPiAKPiBBIGJpdCBmdXJ0aGVyIGRvd24g
dGhpcyBmdW5jdGlvbiwgcGVyZmVjdF9maWx0ZXIgaXMgdXNlZCBhcyBmb2xsb3dzLgo+IAo+IAku
Li4KPiAKPiAJaWYgKHVzZXIgJiYgdXNlci0+ZmxleF9mbHRyKSB7Cj4gCQlwZXJmZWN0X2ZpbHRl
ciA9IGZhbHNlOwo+IAkJLi4uCj4gCX0KPiAKPiAJLi4uCj4gCj4gCWFzc2lnbl9iaXQoZmx0cl9p
ZHgsIGh3LT5mZGlyX3BlcmZlY3RfZmx0ciwgcGVyZmVjdF9maWx0ZXIpOwo+IAo+IEFuZCB1bmxp
a2Ugb3RoZXIgbm9uLWVycm9yIGNhc2VzIGhhbmRsZWQgaW4gdGhlIHN3aXRjaCBzdGF0ZW1lbnQs
Cj4gdGhlIG5ldyBFVEhFUl9GTE9XIGNhc2UgZG9lcyBub3Qgc2V0IHBlcmZlY3RfZmlsdGVyLgo+
IAo+IEl0J3MgdW5jbGVhciB0byBtZSBpZiB0aGlzIGlzIGFjdHVhbGx5IHRoZSBjYXNlIG9yIG5v
dCwKPiBidXQgU21hdGNoIGZsYWdzIHRoYXQgcGVyZmVjdF9maWx0ZXIgbWF5IG5vdyBiZSB1c2Vk
IHVuaW5pdGlhbGlzZWQKPiBpbiB0aGUgYXNzaWduX2JpdCgpIGNhbGwgYWJvdmUuCj4gCj4gLi4u
CgpIaSBTaW1vbiwKClRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgdGhhdCBvdXQsIHBlcmZlY3RfZmls
dGVyIHNob3VsZCBiZSBpbml0aWFsaXplZCB0byAKZmFsc2UsIEkgd2lsbCBmaXggdGhhdCBpbiBW
My4KClRoYW5rcywKxYF1a2FzegpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
