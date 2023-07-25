Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 570C976209A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 19:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6352610CE;
	Tue, 25 Jul 2023 17:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6352610CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690307552;
	bh=r6o5oH69KyPH6dNICxvdz5/XpQFStAI768yXqzSPT3I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gJcGOekLP/A+bAbOm1vn5feWWzN9kQDoLyT728uSkF5O2lyuxdzIlqvwIMCgqDsjm
	 jbJKeliqdQcH+o3SivU7f6nf+YHsV8k+2dXJoN2E8Jth3M99Rsg0GulIao+UOktBlt
	 HDb2mCMbW0LkugqBIZ6roWSj33cyZIHWnm45xmTBfr2ogXRPKpsasXzIb/cVTr5IYO
	 wjPET7VoAbgrCBjA4e9eoa+4BAwfPy55hNzMcRu/IzDYkD+cWnj9V0z4L4wshx8XBU
	 bEqY7VSWsMxQKTzJEG3IaVL7qRQ0nJQ4YkNkcjn60aaANe8fG4qZ7T6dn6O+nohpZ1
	 AHabhHOdUMHqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbZLatbLU8su; Tue, 25 Jul 2023 17:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C34CB60FB0;
	Tue, 25 Jul 2023 17:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C34CB60FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1392A1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0A8141574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0A8141574
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opnEn-Gu16dI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 17:52:26 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA35D408A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:52:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA35D408A7
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="357809575"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="357809575"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 10:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="1056862045"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="1056862045"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2023 10:52:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 10:52:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 10:52:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 10:52:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OutYj0KGJAhthquO1PCY5wJxrEVSr3xVwLLTU2s/l83DAYLbpnJjZaHM7kHEoOpE2vqv4Ui85KRYdbsEDw7w5p81vvMMbcLtCeMLGJ0M/3bmMsGMk3rGwLA6akzloVxrvm0n2VK+KtRNfsfpI57jMArTyl4dONAyhhEGFmLus9HJ9JCDsvkvfU5QATlJ3HFt0XQHrFrCvU7vBO3w3Tfm78zBYyEv0o1nQZHkcpkDqhEpazl5grhbRWFvEEiqDXvjJkykEkGjI/eKtp00MDCmvib9z6hUfTXnWrJD/oAbq6R0xQlseING3r9waFI0Fokve/Q0oq7hCaNtc3xfIfIV6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jf8xkzWjDmamGBq52caFsgKkAlSJBmg87LUVFHbTomA=;
 b=Zu+pQXU7xeUum9FYS4zYRUKMVx4xNWTaEB9b4xH4ubDWMEeFdYo2DzjDBS1xd8IGyVebNf4q3tjpekqc0aZCzVq/qP41OiagLnozSKX8sd5H6ZNVlOqtjYcHnQ3+dDvHyQ5HS5lPn4Swd8nVZQuDAi7uXDNGkdHIqjLX6eUI8HBTxsYmkQqwlRdOGYE58mlEE1PzuX5zy42HF+UIaNI9E8FWxWxs7zJ60Osol//SfZ3jX77GZqHpcRN5iS+qBPxammvNePghFI5XKs59tSkqITzcIfN2qfzSU7EzKVlFzcGxzLGxV8xPrdfM4CJsvvDCqB+jmWVkCkJdck1EL++Tww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by LV3PR11MB8728.namprd11.prod.outlook.com (2603:10b6:408:218::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 17:52:12 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.031; Tue, 25 Jul 2023
 17:52:12 +0000
Message-ID: <89f4ec10-2e4f-49ef-f7cd-0a74ccd1f854@intel.com>
Date: Tue, 25 Jul 2023 10:52:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Michalik <michal.michalik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-3-michal.michalik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230721154424.11834-3-michal.michalik@intel.com>
X-ClientProxiedBy: MW4PR03CA0095.namprd03.prod.outlook.com
 (2603:10b6:303:b7::10) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|LV3PR11MB8728:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a4f7c30-2b86-4440-6dd5-08db8d37dffd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JWVBAe8IrPwFPyBmbuxE7ewFwJBUbpzvAXAyc9iXLzijrmynWllEdw5iXmTu6AqODHJUxU630Ta1as1veZodRnbyZlF3/qnfO0UfvD8Tn82fZJbVeC7uZlHDVw31OD0hCS2S08G/w+t3DbZ0Wmk/dmubS627SnGUMi0cp7Q1/XYh3JdV3jOI7stB75cxDScrV6uUfnl3I+xJtt1UX2MCxIAmSL1qPMvxrLedYtj6WOthvRs+rsQXdWiCfKNVpvuLq7hdOD93PtoOXiTjX5m+qR19hpc9Bs1Cgkgk7cGBGAnrWx8cB4wgwtW17SS/C7loiCb444l0dLvhTM5d15CBiQuWnOCn3MzaXVi6entYJjuD0BG+QWMUu1eIn17QLnpML0iZIRTxz426MzD+3kcN2W+hxxi4/u0UkKqAJgXCgq0WipxrUlDShErbJwz9hNRPfZWmt0fIJWzbV3oWcUldYsJos7qV7z1+ubjVVZb9+kH2rO1zpvpw9olzAQFi5+Ud7ih4PtWFqUo7uC01Ymgw7WoIyXQ5niauP2CgC92mPz4NV6yALqbAXXB4bILU/QP8DzciuPoFjCHSgW9NWUsAQKWP4kFO3voKzOrgj4mnQJ/yOwajPeXFLKhgpG9DXbWakqeWmxW6ciXn/O2WqSfrEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199021)(5660300002)(966005)(66476007)(8936002)(8676002)(66946007)(4326008)(66556008)(316002)(41300700001)(2906002)(6486002)(4744005)(6666004)(6512007)(53546011)(186003)(6506007)(26005)(478600001)(83380400001)(2616005)(107886003)(38100700002)(82960400001)(31696002)(86362001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHBzMGQvVlNBK2RHYkhKc2lKd0dmWFRHYXBrS0dLbTdsdGpZbU5YMHJGYmtV?=
 =?utf-8?B?ZWpLU1VZQUJMZVJlbXVxYUtmQi9SNElDL1N4anZIL2hkbTV5aUEvemRPbUll?=
 =?utf-8?B?eTNHZ2tvczBoeDJBRXgyNmZWK0V4YW4zYUgzL2NzL2NUbk81ZnVlOTFoUXZ2?=
 =?utf-8?B?dU5NaEZ1SkR5cEUzNVpiTGtnUDVVT0p6THFKTE5BTmNLUWJaZ1hjRzFFbmRG?=
 =?utf-8?B?TzhIdVl3N2Q5WGcyUzlwMlVsWUZ5Mk02L2tFVFZtU0d4bFYwZWZZbWNON1A1?=
 =?utf-8?B?Unh0MVh5b1hKT1pOZWVkSXJRTjNaVVhXSHp0Qm5rTEJia1ZqcHJEM2l0MHUr?=
 =?utf-8?B?NkFtSjk2RVFxb2pZaXA1MmQvZGkrSTNYZDFpN0hCTmlUSTJpdlc4NTRyWjQz?=
 =?utf-8?B?ZVFacXVSR005OFJjQ09uY1RWZXpKeEoxMmZmT05nLzNYdVUwcXpyUGthek52?=
 =?utf-8?B?TnN5YlNmY2J1c2Q5Qk5TOWUyR1ZzWVh0Sm1LNm5hZmZTNm41Sjd6Z1RhYjVo?=
 =?utf-8?B?TmJpd1Q5RTl1bTd5ODVneHlkbWhCUEgvbng3TkUvMGxBQ3lWc2p0enFrbkdK?=
 =?utf-8?B?T2FzcEMwVVpzMFpvK2FUSlJmSnE5TWtUV2t4RzNMczYrU3Y2WXNJVFR0cUdG?=
 =?utf-8?B?ZUZ4SDk2cVVPQjU5VFBXTTVyWHpMUVBRRmtqTmE0UVVLVlEyL0s3MlVaZWRU?=
 =?utf-8?B?VXZSUVFOOWIxN3NtSjV6cUdCYldOVVVZUjdVQ1IzcEpQNGpBK3dEQmVRWTAw?=
 =?utf-8?B?cDlEdk4vWjdaZ0x2ZTJpb1VGOEZjQXhDNzFVby9TS1hmQ2lVblhrRzhMM3d5?=
 =?utf-8?B?eHBnRE1TT1FTQ2Frek0yL3QxYVhyRElQMHQxd1JKZmZPOGJOd1VmWDZsbjZm?=
 =?utf-8?B?VU13VnlUVVlvMkNWWUNXUUhCUkFBS2d1MGQwbmZaSFpHY3puV2YvQjNHc0Yz?=
 =?utf-8?B?MmRNM3BwTnRKTGR2RGsvRDhDK3VhVG96SVZoQkRUWHo3aUNCZ1pjbyszTVNs?=
 =?utf-8?B?TjlmODE4Wm1MSWQ2a1BkektOTUFpWEFMNzdidDRDc1JYN0M2UlJmdE9mM3ZP?=
 =?utf-8?B?MHhueSt1VzBKWHNRUm5yMHRjMkZaM0RxMnd5QTZvcGxzVzIvTEpYQ2xIQzRj?=
 =?utf-8?B?SWNDRGNJa1p4cEZhTjdKWXBZSUxWRFkva3REcU1LS1Y2Z3NXcW9QcXd2MDg1?=
 =?utf-8?B?cWt2Si9ralBCK21yUmdiellrOVJ4YVJjRDhJU1VsNC9sb1NRVnM0Nk1wN1lV?=
 =?utf-8?B?N2d2ZVhkaFNUSEVqU3h5TGtOSUoxdXhxOXN5Zk1QOUdrTU8rNkRLUnRJV0RX?=
 =?utf-8?B?Uk9jRjNsUnZPaFJkVmtsUUJSSUNiei9WSlVESHkxQ2QwbVl3TGRLcEFTbmx0?=
 =?utf-8?B?Y2FFQXpwNHM1aURUQXNyb3JaM0hzdVJJU1JqWVpBQ3pwNG5vZGdoSTJXT0dE?=
 =?utf-8?B?cC9USEJHR1JyZVpYU0Y4RXU5WkEyYW9NVEZOYWFnTklubk4zWnpaWlhQR3BZ?=
 =?utf-8?B?ZHRzUlcrOUUxUERiWFlUbWoyd3dxTXVmOHBrTzVXeUczYVdrNjZ1WXR5bEIr?=
 =?utf-8?B?dUJBYnk5SFFjN0VTMlh6c0lEejlRM3BtdUxrSVNmekdCd2tXSWl6QkxoOXZ1?=
 =?utf-8?B?bEVKY3QxSkJuM0oySE9aZkk3aVV2a0V5NUdIdGdlS2c4MlpLZGtmN1lWLzdX?=
 =?utf-8?B?SnlnaU5zd0hRZzB1bUhDQUdjR2NRUjRVL3czb0dCZ0g2NnNIS2poWTNVbDNR?=
 =?utf-8?B?b1owTVp6WkRPWllBRG52QVhvMURKNlFBakFDaUFlakhOeDdVRE54Y2RlKzJz?=
 =?utf-8?B?T3gxVTBCODZVM0pVRTd3QnpoL3hGMFU3T3ZVcFFKcjYxSEVsK3hVZGZNWWVk?=
 =?utf-8?B?djI1MlhOQmt6czNnc0FHb2R2TktMTGRraDFLVUlOckZpRm9uSkM1UHRXRlNp?=
 =?utf-8?B?Q2kycXhPcG5FSlhWWGtzekxpeEt2NzdtaklKdy9ZYXpoMUt4Q1h3U0F5U3FR?=
 =?utf-8?B?RkswMUZlMjdVbHBLR1V2bmJyamgxaldURW1PTFpDZ3pBeDk0SGlqNGVHc2N1?=
 =?utf-8?B?WXBoSVc3bGJ5WEJJay80V0VaMVZReWMzdDRha0s2cE4zaytDeXc2d0FMaGE3?=
 =?utf-8?B?cGlpS3YveVFxc1hxRDZHTlZYV2Yrd25HcmlIRGZVa3JOYWEyYWtLMWVqa2pW?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a4f7c30-2b86-4440-6dd5-08db8d37dffd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 17:52:12.5577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZSkmqkj8oOkpCRNm4tFU8jVTZkI2vJQVfjXwLa7t1Z3FdvSjHr5xS7sSaKwMDQriqdrewBNUsK+J9hR7Jqb8w5zJffrwf7W3A4TCKJZfXp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690307545; x=1721843545;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gcnfc0EKTRYpnLM+7KTFhwu+JykZWOmOOe6oOPUCTII=;
 b=oFbQ6Bgf/KgGArE45uwGaXVMDrzBhVbY7aEdtHZ190Qg7K8YESXJKDon
 HeIoNkpyFoBZZkdDFBD1M2IxhjqDhSWpKowAu+14CTRft9sNb/Yv2JQeu
 BP92AEPKLVKJye6LjYDO9xjdW5tEJoB7coi41m5LxVfuuhl4t2mA7IHuR
 xN3fsVaFYoQDaXZeD9OKBYhg8q8q/ymBqYv2crhodODHqNo92hmYVv261
 xwS10vb2l8Dn/FE4xjJ8YDSt2GnafkgcEdEedlUtaoWZ0Ol2Nx9E5l5hW
 lC5oIKF74r6wMatFU/xy0AAKjDR6Kt1z9LWNRYYrb1WmlRtFHJMljSfld
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oFbQ6Bgf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] ice: Use PTP auxbus
 for all PHYs restart in E822
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
Cc: karol.kolacinski@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/21/2023 8:44 AM, Michal Michalik wrote:

...

> @@ -1927,9 +1945,9 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
>   	/* Reenable periodic outputs */
>   	ice_ptp_enable_all_clkout(pf);
>   
> -	/* Recalibrate and re-enable timestamp block */
> -	if (pf->ptp.port.link_up)
> -		ice_ptp_port_phy_restart(&pf->ptp.port);
> +	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
> +	if (!ice_is_e810(hw))

Should this use PHY model since this is coming after it [1]?

> +		ice_ptp_restart_all_phy(pf);
>   exit:
>   	if (err) {
>   		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);

[1] 
https://lore.kernel.org/intel-wired-lan/20230717221713.2249044-1-jacob.e.keller@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
