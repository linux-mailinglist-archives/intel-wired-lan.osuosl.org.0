Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317EC7D1983
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Oct 2023 01:14:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD60B4345E;
	Fri, 20 Oct 2023 23:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD60B4345E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697843675;
	bh=Qj6HWg2tyj6di2pf/jGGk7YKDgwYlNWcgYozazRYNOA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OWk+t7ZtYUlQV0C4lLp+w6zssWlA/Uxud5puc/fdUkaFM5nBcFxlz3fJgGtS3gOib
	 TCcDrjX9UmpGGhMrSbOYNcmbNAKHfC8QfYDSMFX5gWqvoMmGPNUKkqYJw+awv6QDFl
	 orwKowIOCkpYbQGC5sFbfohzIMNgcYTpYDMHZIZhhKGDtD5/rdKSBj16Prl/a3Cb/K
	 3eK4FOXilSC1u4zjF4DrTdCxPK7HWtyWl3VNkzv4NluovN/b/DSkyVWuYMHQt62pab
	 2NYOJbo75uQGjCSp8u8wrRIZ1eFwIzPAIoO7isfPtk0bAmuQKwR/dH5Yq842HOpGjU
	 oHyrlu0d48N4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XinZi-TqgYUd; Fri, 20 Oct 2023 23:14:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D8C543456;
	Fri, 20 Oct 2023 23:14:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D8C543456
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C59E21BF376
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 23:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C62161184
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 23:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C62161184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8lGemNjIwJC3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 23:14:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20AF96118C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 23:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20AF96118C
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="417721982"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="417721982"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 16:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="757605163"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="757605163"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 16:14:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 16:14:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 16:14:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 16:14:21 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 16:14:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UD6PbJH5jPSbp8Hp9MV4HObgMZsb3rar4eShQPyTjCsuDTK4hd4ht58ZGLcI3t1L0ObY/OC3DbZib80bySF6rucOksazLaEL3x8DirLat7lW/l4YFMxfdDDUReWQ6ioRC0hrsS5XIwE2/ZHATMFHjDyJITTBf47DiA2uEIFbnfOCH5OApfhjzqbOpHRDfbSErCrIolwyzV8y9QHes3iCHxJXORHjQpUzcs/F8UdSuluIQQ+XJpZi/x4X/DDT1hH2Jh4oR98FYvnRPsImQb7J6Umz/qvj+H7WpCJ5eK9MLTkAz3ui9JY+AyXtgFe2iSjcJTL09D3NcMj7OMzZDDk7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4wAw7ZscDvpTEZUNlD/v8/uREucx48kM3UnJbT4d/s=;
 b=T5fTk7LKU8g2BBdWhARRWBH4EyE8sS8+HBok16EReeUrI35Fi+dcomfx6PYEeNH563ZtlgoppBAyuLcY14vZKlK9fw4cKEsy/mf8bBvV7E8OOzMgzxtHxucqjiWapsELVnXGPhe+J7PsvhtwkSipeWTGtbitGOZiRXzDuRn6JA7rGcnn9U1A1J4R1mVIpl9suPFLonORyxqkoRieDt2FNOLferMtUkDAHC8ZYykcMV4IHENnak1sQVH97C/cJMd4GfkxfxYQcOA1D3tCQe67uS48sc6xWyq+3OAy2k9i6Q5v1jJzRizV3FsytDxsRgHt1i2VY7yWgLt56v6a8WI1mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 23:14:19 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6907.022; Fri, 20 Oct 2023
 23:14:19 +0000
Message-ID: <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
Date: Fri, 20 Oct 2023 17:14:11 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231020153316.1c152c80@kernel.org>
X-ClientProxiedBy: DUZPR01CA0184.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::7) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: 66131e54-db63-45c3-98bf-08dbd1c2494f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TFMnbvmHOHiejPOHimxUAxbXWq3qN+gumryjGMioXDRWB8zfUlhDVSdjM+UVFNE5J7mgrnOkjhbDIpi0g1E9836CmBYEOu7mPKQ+zUHITdp32CQkUx4qMggoHSwyI/gJeGDxnicFb1jJlRQBWmAbaBdRICFxxK5k7mIsOma/lt5ALN5ZFSGYainbVusEXzmuRLNE2Ywi+S0e/+IIfmdtIsPFk1UmDg67gr4oOkCv3/tkjrQ01wiSX9oIS+YYsZNli+/jXLRd2Gr26tdCb+Tnp0fxogHU/kgWukDdGXf3sSn5lvuCDTeJ3RtUOT0MImYcPAYPgSbg09afqC7RFit3v8NZIH89j7Xa72CiTV7AdGmOZpT8MhSHduBHrE+6eVUrXv46PPKLTbkrWgQG3ooKKNRMUx8uk1spA0uwrXd+W2Beemw0jZncLA/U7SzFNUH29u+kfYa0+ljB4ZVLCwwhgc4B20Lvk0ZGgm2EYa9RVKSYnqeMoiGQ0aGIY7+McNhwmR0DHwy4j2wpsjbQhE5MTSsG0veo3F4JxNPhRVkjQgRCG3NB0Svwz2q1dH2PiFN+7evsYlsXEd1wpuxNA6CzQwXjMMWQvHFLP+MhHNbAwauIEgK+zlE8WA6ylAGb6cWFXJ37V2N34dLsblqI1ifEJrC9bfqP8wnVp31r1JE44n0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(376002)(396003)(136003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(26005)(6666004)(6506007)(6512007)(53546011)(2616005)(83380400001)(41300700001)(5660300002)(4326008)(8676002)(44832011)(7416002)(8936002)(2906002)(4001150100001)(966005)(478600001)(6486002)(66476007)(66946007)(6916009)(66556008)(54906003)(316002)(82960400001)(86362001)(38100700002)(31696002)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmVRYUdSSTF6VnZnbldmT1NvZXVyMUJOREVmYkp5UFp4NnBQTXpsM25sZGs5?=
 =?utf-8?B?ZmcxdHFidkNRdkJKNGNnU2VFWWluN1AvWVF6dDh3NHhtYncwNkVGbzV3V0Uw?=
 =?utf-8?B?d1hCdjkrRGxNSFZyLzdXM01walo3WUcrRWh1M0xhNTgxWWY5T0l6OVR5cTFn?=
 =?utf-8?B?M01UVk1aemhMaDBsY2VtdGh2MngzbGZkbEg3cjNXUStOMXl1WFFkaHJhNjlQ?=
 =?utf-8?B?RThuUE5QVE9HQWs4ZVlzbDd5OU05bjd3QzY1NmhYYzJjYnRuNmZJRjZkdGhv?=
 =?utf-8?B?S3Y5MGNhMDR0RDl0eGYvYTVOYkNzcXNvRmhpeThMT2djOWdaOU1HOUNzRmk0?=
 =?utf-8?B?d3lMT2ZUU2pKVjh2dHRqV3A3VEdRcXJFenBhVkpEb01sakh0Rk5ubGxqQU4z?=
 =?utf-8?B?aytSSEtZQmlmaXBDUnlEdmFiYmNQK3NSTUhOeXNLcVpmWUZvQUlyenIrUkIy?=
 =?utf-8?B?SjRVVzQyVndwYVdSUEZKOVB4NHcyQmgwQW1SdG45U21iU0xEdzBXQzBGZ3Bo?=
 =?utf-8?B?azB1ZStIak5qNDdVaUJyam96S29ML2ZGUEVrY2RpWUIwZU9HeW5VQUpOZ0xN?=
 =?utf-8?B?QXFaSnB4NHZLM1VGM2ZRRDY5UmVhSDEwVVUxdEtTbkZVd1VyeEozRWVSRXBF?=
 =?utf-8?B?WllCUmlqLzI1M3N3L3hLemJDM1Y2dkFyaFcxSExBS0g3YTZpOTdoNHZYbmtP?=
 =?utf-8?B?enUvV3FoNkpham1KeTd0eWpRUTMxR0oyeXdFN0dSNkgwWnAvZVF1c3hSYlFn?=
 =?utf-8?B?RFBEcHd0SUg2TzFReWhyZ2Q5b25lSW1RbWJXQ2JZRTdHTnYzV3RFV2xTaHhj?=
 =?utf-8?B?TU1USVVxMkd2UFpNM0c2QUtwUi9IbzZEdUNLUEhxdE5TeTdwRHBod1RRK3lx?=
 =?utf-8?B?NGNuYldNcnM3OVdTaTJnaVRiM2g2Nm5HVVIvMU02TGxyRXdFSnRoSUpPbU1C?=
 =?utf-8?B?NkZXMmlLTjhzWmZTM3ZsbklKSnR1QjZpaUs0M1NtTnZmM1NsYW1pc0xJb2FN?=
 =?utf-8?B?cndKaE9tVEwzQW1jaGJBSWo4dFYzS0tUY28vbkxBRTdWUEs2Z2JqRFdRaG4x?=
 =?utf-8?B?SDNNRXl6NC8rdEd3RUhQR3FZa2ZoRU13cTdNdmd5TCtjZnYybXdybzkvSnN5?=
 =?utf-8?B?ZWUyeEg0TC9wRlpqZmZkMWRSVWFHcEtkZFZSOC9XbVdGaXEyUHd0UkFHQWta?=
 =?utf-8?B?a3JEMEp4R2F3dmlCMzJWc1k2VGJ1eG9SVFhEVkJQTFVGaE5OdXdicndpN2FV?=
 =?utf-8?B?NCtBODZidkczMkhMN1ZWLzk5WkloTVVuYi9idzkzc0s5Rm51THd0Vm5sclMr?=
 =?utf-8?B?cWtPVFJFbU5nZlc4SXpPZmNxN0tEUkVKVFhKVDluOFBGNG9aWHh4TWNScVM1?=
 =?utf-8?B?bjFiSERYVnRXZVZ4ZkZpOWoxdFN3b2hzVHBvc2tEOGFCcHlyZmVaSXh4dkx3?=
 =?utf-8?B?T1R2YlFXdU4yMzJwdFRDMldjQXRlK0NGelczcnZ5UWZSS2dmcHRlbnhMbDNR?=
 =?utf-8?B?SjNoUXFnc0N3K0syNTI4NTNGaTZ1S0thNExuMnZJM0ZHazVMUDhWWHM1V1p3?=
 =?utf-8?B?azhOOTBvWk1hSlk3S3dEUE1GaHErRk1DWXlhckJrLy81WEJtWUQ3djRRKzRa?=
 =?utf-8?B?NFJuQ3dsMWtDSHhBRDRhV0w2QmpTSFR1QlY1WVV1emxRRzBpc01lWVVCcC9G?=
 =?utf-8?B?alJGWWhqVXR3R1RNMkZWM1c2WGk0VXV2MWdXY0t5SzNBOGJONlRIOFJzanJj?=
 =?utf-8?B?dW5SN0J0VUV5R08rRGdBWm9hOVZRQnFEVkM4YTBQVWhYRVBaa1dheEo1SG5S?=
 =?utf-8?B?ZjZ5TXNkUmI4b0RRZjBCazB3ZVNyS1JXaGkrRHpNNHdrY05pWjlldzdqZFFT?=
 =?utf-8?B?N2U5M1RjYjNZZ2xJUWN6akM0SE8xTHdJVDRFcVBFS2RxSzBEdHJuS3JhT3Mr?=
 =?utf-8?B?d3NMd0hlUXNPaGFuNGF3Zmovbm1TWjhqZlREV1JRNnBxRWR6cFRmcVdtYk5s?=
 =?utf-8?B?c2tqOFZKTHMzRDdtVUdIZVZxUlpqSzRhUkJzank5L1RTd0tKQjNSSWRmTTR3?=
 =?utf-8?B?VGg4clQyYkdxdTR1VWxaanRYdVFFemdJaTY1K1h5cENYbzJONXJ2c2phWGNC?=
 =?utf-8?Q?rY8vSQ+bQtNnx1NwpYQyoL/Lo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66131e54-db63-45c3-98bf-08dbd1c2494f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 23:14:18.9021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 69/Lr1pehUGF0iqcOzXYCU18tCSyepNwkecb7K7Ud0aAgeSPQCBled9x+Ru9fEITF6kb8xSmSzZ6iKAXYyi9RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697843664; x=1729379664;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bLcPcHZbkrvAw5FiOXY4tD18ENRrMbEIaIa+BiVqaA8=;
 b=IKhtRfMiaLv8BQczamb159fNQiYjPVqBV12Nz+rp/ZMVL6iv4kB/d/Rj
 LbWC2tRV7T91lykH3mm62Xo1iIVcfNSK5PLBo9OZSnhClBtfh0x1Ghlm6
 rBuRmWevxQJpIWQAKWbsJ4uSRh6He4BI+S6R+K8uu4zmtagX8UxZ0a8R0
 q/mKL5UEEp1D+h5gLhCqBKcqc2vo9SU1FvcgR53HproOu8hlcJtivqZ49
 /6ccDCKL7+FTKI6bQAOClmyMXuFfDpQ7a+sPpvUezBoP69/8jA3mfqXgo
 gq7ne1FUiaN6r3dWKnnHTjuErqrpcvsp9EA5QLoiwslIi7H250N6igZFq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKhtRfMi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-20 16:33, Jakub Kicinski wrote:
> On Fri, 20 Oct 2023 15:24:41 -0600 Ahmed Zaki wrote:
>>> IMO fat warning in the documentation and ethtool man saying that this
>>> makes the algo (any / all) vulnerable to attack would be enough.
>>> Willem?
>>
>> Please advise on the next step. Should I send a new version with the Doc
>> warning, or will you use v5?
> 
> Not just the doc changes:
> 
> | We can use one of the reserved fields of struct ethtool_rxfh to carry
> | this extension. I think I asked for this at some point, but there's
> | only so much repeated feedback one can send in a day :(
> 
> https://lore.kernel.org/all/20231016163059.23799429@kernel.org/

I replied to that here:

https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/

I am kind of confused now so please bear with me. ethtool either sends 
"ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the interface 
for "ethtool -X" which is used to set the RSS algorithm. But we kind of 
agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses 
"ethtool_rxnfc" (as implemented in this series).

Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would 
that work on the ethtool user interface?

Finally, a note on Alex's comment:
 >It doesn't make sense to place it in the input flags and will just
 > cause quick congestion as things get added there. This is an algorithm
 > change so it makes more sense to place it there.

the "ethtool_rxnfc->data" is 64 bits and we are only using 8 bits so far.

Thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
