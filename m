Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D475F7EEA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 22:36:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7A644047B;
	Fri,  7 Oct 2022 20:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7A644047B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665175000;
	bh=8RTlDcNHfG5qhZ9xumvYH1OQ3Q3b1oIKjijzSczkRmg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NJqiZQUCtqWXjqI4a+cVA9+yTx6LrTzv9LXoyBCnwvO+ntXR7WOpDEz0u28AW5Yu3
	 ILKze3gH/rppi/psrs4bJEMmsz8DVJWUC9d+J0Ef9/iaiay2eI1eQz9TX8ISPBPvvR
	 UdLuE1PDpFvw6mBLZNYSw5jQtYn/E2PxyllErbCYx/jA/XI6ijId10fT/XtGUpDkwC
	 ny/QQce/UjOAoyET5k0sxDdtIwEC64SqYqfiFtEudiRv+v4FsLdTHYAGIOE/luXtFy
	 zV30cKA2JnD+6z5QBjqMg+9iqUQsZbR5QomAh68ci0ofJS0/z70qLZAzAyxVPIh0yg
	 AdJU8x0uJCfHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KCg1jBRToBaM; Fri,  7 Oct 2022 20:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B06524047C;
	Fri,  7 Oct 2022 20:36:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B06524047C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65FB31BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 20:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 341C0417D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 20:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 341C0417D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x7t90z5mLjss for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 20:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0045E417C7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0045E417C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 20:36:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="330276949"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="330276949"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 13:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="625278796"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="625278796"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 07 Oct 2022 13:36:31 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 13:36:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 13:36:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 13:36:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBiuZDoY8Ozy42YKmBj8tPNoeYhDUSo7LnC5OUvwU4IkY+ADMnPvQocgeyV6AUWYYy3shOeIgsmFcQ6Vc8YbNrvzjaatnQ5lZEhbyNI+eYU4zJLwQXoKZTfQQmO7QB2yUy0XdcXUXHARgoY77Zsa32XAN77UjdntV1J+o7sFE7ENhKsO0nR5ip77QCpydSzBts39Y0rShemIO+jb1338vDtPc6Yy+YU5D5fW8JRP2Pvh7F1BrCMb4G0yJ4w1VMnnR+I5vDTZnMDYDCPolYxdH/RsxoF7muWo1SAkoSd8XwJUiAGKFfizZkRPOXOPvN05FuNQl58oOnVhzFnpdGE+Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vOWmxIZaclmd0L5C9VwOxARsJupOHjuGb4EQmXE/62U=;
 b=AvtbEx+mcBQ+n+sf9F1u92YUWNIRZl2s6kheQHpuuTAuSI0g9zcQRRiQysw7+3fiSIjiH32qrYOnNEuWW9rOV117Sd5NfGousaXkRkF1lP8vunGcOD1qI4E3oIKK45Fuy0Pv9YS+HCpV8Dfvr0x+cIe5VnNA3wV0jbB4uqPTAsruPQBjtr44GCVUDTzqMMdd/khtlUrH0hARho9HHI4F+iuO2mr1dxtmY2wd9oiygO6YSBmzamJaYLIHVWq7QzFFb0iYpCO2Qq6vLkd6VIBHncbMvK2uyIDw8B0ibVLn/5qNnhQsIXdzebrppQdL3FOPlDTwuOcPLJxzwz3TrxnLTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Fri, 7 Oct
 2022 20:36:29 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::a3c0:b3ec:db67:58d1]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::a3c0:b3ec:db67:58d1%7]) with mapi id 15.20.5676.036; Fri, 7 Oct 2022
 20:36:29 +0000
Message-ID: <25beff49-5564-dd48-c6db-d29b126677a0@intel.com>
Date: Fri, 7 Oct 2022 13:36:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, <intel-wired-lan@lists.osuosl.org>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: FR0P281CA0114.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::16) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SJ0PR11MB5598:EE_
X-MS-Office365-Filtering-Correlation-Id: f2a592eb-e6c2-48ba-d10c-08daa8a39cd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qjebL98XeiRDDZsm2Md0kcD1AarvbtJD3ZpNzXdmdbxdysXvMwvDb+KFR1sMMs94kTj0pWXdr9Kdc2Vk7jRprTi3x9JKGqC9qwbVB/sDtF6sFev1nsgiRK3JzeDf5sE4r9ZFI5xB+NUL7dA6G9bwuZkHi4OQjf9Mr7wZOlLsACO7Hyw8BvLBPE2afgXwoY6uv+7AIUmnGme5GmKMjwlqz49v3JhkVUd5ueTtVWYMjYmiwVwEJp6jgrXCKI/15lP2vcKl7STRmiH1PT4ZztMjpwBHmH8fHR9v3JzusBrYk7Z82uzy05Vis/wdNr5YgL7GGbh7yIVZEkpYo/TDz1RzG4M/wPxc1QOFQ4uCh7mlKRYDX+i4rlLyTZH3Lea21DU7oCrx/aXwOW+W3qFxp5orgDfCQYLO2L87d13DUNbJdT7ps/rnZmFV+DewEXWmahHF5eeYsoP7GWaF1N+s4h++cIEm7mTeO8bPAlXVI4VbdPYcKSME+SrYLgTwapAbugHJqdAyMOiWMMsv6tkuu4RI8gIgCwj/p0Z/eaKkxPySfoErXacHzaoFtH3tgl2QRhR4SQzo90T9RUzLfjPSdrqJ8mnvZi+sv81e+NsS0IDTg0IHIdex9Y3lXOpX6of6A/DS47rUgiXRsFXrSRMlLDLyTrQNlxsF07L+SjYUvwlfAZITuySgHwzYc+s8Gt/nW446hqjFMN8R9fFWlD72Fx2sYXQ9WeaTXKDEDOwXSZE2op2z61XZsfFTMcRw0D9r5moUaNbkT9oaqEl9u2BY451CaWG0+Dl+40RIrAAtzGtwa+I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(136003)(396003)(366004)(451199015)(31686004)(2906002)(66946007)(66476007)(66556008)(36756003)(31696002)(8936002)(41300700001)(38100700002)(53546011)(86362001)(107886003)(4326008)(5660300002)(186003)(82960400001)(6506007)(26005)(316002)(6666004)(2616005)(8676002)(44832011)(6512007)(6486002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDBNNFBReFgrY1ptZklRNm5hSnpoSmZVM3BtSXphT2lyVUtyK3dhZytlQnpC?=
 =?utf-8?B?cytWWFlETTBnNVJzeHhleCtYS2lkWXcreU8xbEJ3SFRBdjY0cndNcXJqcGpU?=
 =?utf-8?B?YW1ubXJwSjAwU3FoRVl0YWg0dUczVWVxUGVXaTlkZTZIdTgzQzVXeXJMd0Vq?=
 =?utf-8?B?SW9rMWVxZWJaSEh4RVZhc1FJVjdMdHlQUnE4QnM2eS9zZ05EQmoyaTZkMWFJ?=
 =?utf-8?B?Q1BNWDAxNVhETUFQL0lDZHVVVWVmOXI3WkN6SkNWM2NNYXlOSWgrQnpud3Rl?=
 =?utf-8?B?aGZ2OUlsbmpvOG96eHhIOTRweXRXVFRqOW5pZ2E2YkRGVGFXY0Y3eVhTZXIy?=
 =?utf-8?B?U3d3WHI1bWlBUWNmd2U1cWVQdTZ1eGxzdFNNREhKNUYvR04wdWFUa2d1S1Vy?=
 =?utf-8?B?MXJEaC9pU0pSMW5SOEFUbm1yYnE3WUR4OUY3Vlk4cHFkcDliQ0Z0Y1hHcXBR?=
 =?utf-8?B?OXBSVEpNd1NRaW1pSk1rdVowQjJwZ3pyVWM5TThzeVd6dmZlamJrU1Y2NXdP?=
 =?utf-8?B?VU5Qaml4dm5VWDRndmthc3UybkRZbHhBRU4yM1Z4NS9NMjFjYkRNcUpiQllx?=
 =?utf-8?B?Y2I1WmFqT21jSHIwd1UwbGloR2R4TFlOenR3QXRtbHNVMUROdEp0MXJUYkt4?=
 =?utf-8?B?OVZQWUlNTVNBQXplWnY3cjBwVmJxVllYdkpIQTh5RDFDakJCY1AxcWN3b3Jm?=
 =?utf-8?B?Nm1GMXBkdXdhblhZd0g2dEVkdmloODFwWnFUeXJkYWwxbGdxa0pGK0ZkWlpJ?=
 =?utf-8?B?YUVOcWt1eGNLTzlyTEVyME1ucHFxK3JrV215VHhaaE5uTTB4SjRGRllXbkFH?=
 =?utf-8?B?UjE1aXBRM2lqVldkOGd0RGlwb2NEMDZrQUdBT2oxSW9leFlBcFZnWFVpbUNU?=
 =?utf-8?B?c3hBM2R6Uk9kTGtRUndJU2Y1eHV4U1BQeXh6WEwvUzF2cE9qTnVHUU11T3dr?=
 =?utf-8?B?eHdKMmEvT3ptbUhkQ0M5d3hkSjJtYkhkSFR6aVhjd1Z0VDZUMDNkVnowQ25N?=
 =?utf-8?B?R3BWUjR4TFlhd0daNFJKTHlWUjg2d0tmN29LNCtCL1FYSkV5NCttdWVvS203?=
 =?utf-8?B?ZmpTbFlXdWpIcnJMZFJEVHpPUkRDVGs2VTE2aVRYMmFaSklNSS8vQ0l3UnFz?=
 =?utf-8?B?QzlKTHkxSzhWbE0wM0FLcFAzcldON2tLUmgvcHlCeEM1b1A3Ykx3RWltL0c5?=
 =?utf-8?B?NUV5dVBUSERiSE9UalJEdDRiSHpPQ3ZmQ0VYbFIrS2dVbmYwTmRCZWpPUDk2?=
 =?utf-8?B?ZHIwR0I3U2NuRXd4bUR3eDIwWlVOdHdqOHAvdHcxL2R3cXY0aU0yekJnTnI1?=
 =?utf-8?B?bVBsMDlndXpaZHRvQTBtTzlXOWR0WUJUNmpUK0dNd2lQQS9tOFlwYjYxNzU1?=
 =?utf-8?B?ZTJoSUd3M2xYOWRCUU1OOUdkUlBFR0lMdFEwczJweWR5aUNyL04rTVdLZzMv?=
 =?utf-8?B?VzVaVlI2dUpNb2R5SENaYXBCY2Y2ZmFVMkVucHoyL1dIYkd2MWF4ZHBRdElW?=
 =?utf-8?B?MCtOeWcvYWFGZUVSMGxLeGZWQ2YySU54NGNrMkZ1NGpVMzY4eGNlZU9VUEx0?=
 =?utf-8?B?WHQzcXJIbjM4UFVyaGE4N1RkVERDaGpDTExubGs5TktNTkNLVks2OE1HRi9E?=
 =?utf-8?B?QWplWG5OOEJKTTdmYUZ5RW5Wb2IzNUpBaDN3TUZhejdKd2xkOXVnUVRJNmtQ?=
 =?utf-8?B?eGFmaEZ3d0RvMHFwbzFKMXk3Q3A5V3VrclEvZXpKT0kwUXV3UFZkS0xWSnlS?=
 =?utf-8?B?bXFJNHdocE56b3llY0dlU002TlRrM1QxZnROTmM3aEF2MXFUWktZblM4UFNy?=
 =?utf-8?B?RFB6MlZHbjhWWHkxZ3gxSURZczVteDQvZzdIOHBOQ2dlMkVvb2F5Y2pLYjJu?=
 =?utf-8?B?WXRYazZiUzRzOVZWdkcwZllOVUYwc1hUVlRYZHRHcjNaaTcwYkF2SzBjTnZq?=
 =?utf-8?B?QUU2WWNMalRPVkNOWVcrTHFxSFk0bUJ0aWFFc09TVmZmUU9LU0UzSk83VThW?=
 =?utf-8?B?dUtYb1k5NEZ2VTBwMndRcCt5OTNMUVVoUEh1Q3lpR2NmQkJNUVMyMWUydGJq?=
 =?utf-8?B?SzkraFE0aWZMbm9wWUZTNlVHYStMOUZwcGlNcnkxd3RCbXdvWmpBeWJzOTJk?=
 =?utf-8?B?dlY1UHBGTW9IQ2lucUJYc0FFbFE4b1A3V1QwQXF3WXhQeERIR1hDMW54dzBl?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2a592eb-e6c2-48ba-d10c-08daa8a39cd7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 20:36:29.3818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AdJW8TvMeE4X9aoZGhf6TZgL7V4CQtLEYETBWh3krk9shtynEXTQMimwOYxjeFmx5QZQpbN9rk/40CL2QmVlRuLADx/Nf2RyAnIjPspYZzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665174992; x=1696710992;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+K+9g3DgCtT6v3GwMIbpgIWWNKLu1IMmdGvdCxClAcg=;
 b=L88zvb4s+AEcypUxUfeGSmHyqtLsbwavTjskwUDVS4nkkOZShH8aHu3/
 ebVLa1PYmSDk+pxcRnWqQILd7CLVAZ3XxCPQ83z3FusA1xmM2fDXgdHLm
 8rhyFT1c9HSeYhYSVwWraB5PgGIVBV+KLOmEgzQ/qVdK5g+jeMxWHCxVC
 UE+3VCerhVukbNHO5q+dUgfdpWRX+n137PCW/w3ylxw1ZMZqP+fG2GLZg
 +5ILqdSbSS40YR2ZnBgzIxVkXiRJ4ej3e0nSg+xSSAnm66ilpVuPPapAy
 xZGs7TSxgd7s3YQN6CQ2lOvXSytMnfy1zGsvkC+yTIyhtTazvCqTpHXqt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L88zvb4s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC,
 next-queue 0/4] i40e: Add a non-XDP i40e_napi_poll tracepoint
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/7/2022 10:57 AM, Joe Damato wrote:
> Greetings:
> 
> This is an RFC which is similar to the series up for review, except that
> this implementation does not touch XDP at all and adds a conditional in
> i40e_napi_poll to only fire the tracepoint when XDP is not enabled.
> 
> This should avoid the issues that Maciej has with the naming of out
> parameters (since none of that code is touched in this series) and it
> clears the way for Maciej, Sridhar, et al to implement the XDP tracepoint.
> 
> I am submitting this an alternative to what's already up for review.
> 
> If you prefer to accept this code, please let me know that you want the
> non-XDP version and I'll submit it as the 'v4'.

Given the discussion, this is the series I prefer. I'm very happy to see 
some more debugging helpers coming into the driver so thanks for your 
work on this Joe! As for the rest of the team they seem to be fine 
speaking for themselves, so I imagine they'll let you know :-)

For the series:
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Best regards,
Jesse

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
