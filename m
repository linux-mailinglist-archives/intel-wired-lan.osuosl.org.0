Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C327F2B8B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 12:16:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CD0D417D6;
	Tue, 21 Nov 2023 11:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CD0D417D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700565389;
	bh=Q4sx5sUPOQFE+naJ0knQ9apwTSaTjvnojcyV1wvhmew=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YbOb7wo4AsXXqUxQGQh5Fiypfr+WrtuZwiEPZ14aeVzjQko0FGH5ijtbflaGJ3df6
	 Mnna/Nxtc47zVQ42x43bzA4yIfjToxr+EN1j4URYgiUgN0qjNYdCOxoSeGKi2NRoHC
	 PVyowmeA9r5tjiSAis2HwG9Swi/3ZbOSILmHEI+my5Fm6ZF8NKzqt6Br2Ip2PNdywF
	 ifJMLLTLcR+8UPAIoSHtQekDRF0ExZa6DHUtudjnYocDX2g+UnbxO8vwv2eHBak/5y
	 DBBwIlmgXBJWvGCgXFDWOYva8oowIDdF6yKZ/B/+DutRqIdN6QGc1bjKFU3WYQZ28b
	 l6TAMkOTCFkkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgxnvO19HwJ7; Tue, 21 Nov 2023 11:16:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B0B7401AF;
	Tue, 21 Nov 2023 11:16:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B0B7401AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4E371BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 11:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7840440B1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 11:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7840440B1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mzzb99QZIvlv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 11:16:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0935640B05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 11:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0935640B05
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="376855714"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="376855714"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:15:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="837026655"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="837026655"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2023 03:15:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 03:15:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 03:15:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 03:15:56 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 03:15:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n++Z5lQWNXC5F2Y2YXX6tL53loeA76lptC3z6a/GnrRd2VSfw5cR3V1DOBVUVO0N4l6RtqOOmaGpF8MnQgB9OW3Yyb3EmQb1+ryzo1zB4t4VNRb3Sr9LFv12nF50Ne/j/CVAzkfGPOLw2NmKLkmpBAK3AMpStvrlKlca7+UrAs6aVFkHaoFuLSOm5EOuw+SoYEhdotOfXx8EgG1wRqG4EojxWK/D7rA2QChBJmP+nQo5Q+r1wUI7CJtKkAtkpWAO3mOvkNzuknfxLkG8lv53WBvUgLvi+eWAKbJCPn/ReFNQBLqWuqIMM6V2dszbQPbn1PTuRZm+FB8R2JCJ6SWt/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZjndI0OIpo0iBZsmNXKWq2D/OcCpI1o7zaef+OYHuY=;
 b=lfJfiZMDmfJC/JsP1R0EHGI7jjfn0bzj30APpg8yWspTdB4w2sVHdIh42f7BFAQ5qGATwh8QLRD9rqFsDsclpouki50N4vLNpf5qFmBX7vYcdtziOZgADnCbVAZCeymetyq5VSUqB5cnSkEdgusBLo8C453nqg1QSih1UPBsSRXy2jxRMZYaqgKOH7MdPuTvWOdAGTQZnYndpR1L4bUVmV4IUg40GRn+uMWObb6IIcEsTtkiFf/yB82U/mpUZ6f1GRw7bw+Ecx405c7/JKBZ0p4tTMAu69T9xjEHnsJmwEbBbBCMXjXkq6x8FiJnaBWsHV1RAdv48cqUs+OjSTRZHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB8478.namprd11.prod.outlook.com (2603:10b6:510:308::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Tue, 21 Nov
 2023 11:15:54 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7002.026; Tue, 21 Nov 2023
 11:15:53 +0000
Message-ID: <e5b458fa-c7ad-424d-8416-2947d684b5dc@intel.com>
Date: Tue, 21 Nov 2023 12:15:30 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kunwu Chan <chentao@kylinos.cn>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
 <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
 <4b551600-f1a3-4efe-b3e9-99cb4536f487@kylinos.cn>
 <2c61c232-1bbb-4cae-bb7f-92a7f2298e97@intel.com>
 <55b77a28-a680-4465-bb57-2a5cb20ce06a@kylinos.cn>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <55b77a28-a680-4465-bb57-2a5cb20ce06a@kylinos.cn>
X-ClientProxiedBy: FR4P281CA0404.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::6) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB8478:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b855b5f-f594-411d-fa2c-08dbea8339b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5svfr7t5EawNhbWyZj7bssOADyCWJ5XhWAOlsSRMtaoBBTFD0LgAeD+x01izIE/ZMbXCRwu/V6Bi77dzYyXgDAnwKmuBThvutxqNlkOuOYdnFi/6DD22eMni/zGf+zcMVfv/yM0oY8u/XuX3LDSc/WpxJ34sxvHIB2ndMRd1WA9jsA+BTYWJfKB5EAksyVPrtFaJvY6z+CDeRoP4nxpzwpFv6aGN0YhoAfzF8l2mxrx8vI1Q+ms0ut5B7yjPnkGX8+bOnczb68VylRyqNbphviXH6Xj6xFtPIy3z7HysEqrRShAxPnXH1ZjQGndy2L51+hYQORJpF8ek/nthbOdc/mMzzLfeXnXOV8r1ehWcqjNFT4l4/XliOK80oYeamKV/ahYQAWIMWqVospZ465USmJKBC1ROsQ8pfza3oRDnjUtDDKZdAuXLhzcspbpjeF+RB35i3eZ0HJXBO+rtS8xQHI77otMyyphzfPm8ndDcql2UvgKBH80UZGJUe8lbKW7kK3ZOOwe7saDrc9t2IZ1HnWEMZFmLIOCpAr9MN6jkyBi6p3x4wXAvSfoPTs06n+5AsWhgfyQ1Yte0NuD2p30vFXp4MncTAPgoEAN1Mn8P8j1Bv8UeoPRdwStR+QPAbzDTDe0l+ytgDBYLfNJmobZK0w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(346002)(396003)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(6486002)(83380400001)(6506007)(6512007)(478600001)(31686004)(2616005)(6666004)(26005)(82960400001)(38100700002)(66556008)(66946007)(6916009)(316002)(66476007)(31696002)(86362001)(5660300002)(7416002)(2906002)(41300700001)(8936002)(8676002)(4326008)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0t5cnVTcXZvRVF4ak4vMGdZZ21XSXZDZ0JNU21LdE5mcTRMSS9MbjB1YVZB?=
 =?utf-8?B?dmdIdGlyZERTR1pNM2xPRVRjbHNXLzYxaTUzNitNT1dXckZxQ0cvQmxYemQx?=
 =?utf-8?B?cjl2bmJwWnVGWWU4eG9oVWhMOFBMb201a0NlVUM3dVNXcTBmdDJZMmJmNDhD?=
 =?utf-8?B?bkVlbW5wVHZML1FCN2VpUHA3K0RpazRNRU9nNEpLbDY1T0ZlMnQ1THJNVlF1?=
 =?utf-8?B?QndhUUw5bUoxaTN0T3MxNFZxR0VCRGl6YkpXZVpOOC9NVzU2cGtmWkJadlN0?=
 =?utf-8?B?U0dkTUlkc0ZrTXRTNzFvLzBYeCt2N0p6SVFiaTNSazJSbUpuUjVneHVQZjZG?=
 =?utf-8?B?RU4rYkxiTFNEVFJZRDY5bHc0VTdIa2JjSU8xYjJpR3VWamMxbC84VXd3L1ZK?=
 =?utf-8?B?ZlhBNzlYK3AwckpPSWN5SkxwZEZEYjhkZkM2UzdaditjaS9mVlZFNENqYy9m?=
 =?utf-8?B?Z3ZiNGE2dlJTMTBEellKQXRlTmJ5V2ZucnRBY3dOdnNwbjZUQ29Wd1pTckNy?=
 =?utf-8?B?NXZsL0FEckl2dFBibzJzaUt4VjUxWDFIZ2xHUzEya1d4MElkekEwU2wyQ2NL?=
 =?utf-8?B?WW4zYzJobVFuOWdwTThwd3RicllUd3p6TnQxMmpYMWRUMUFTVktVN2dZNFFF?=
 =?utf-8?B?U2daYWlscjdlRzB1K0tIbGdJY2N3OUZkdnZZeUUvRENHQ2VqTUtKdVYxWUVy?=
 =?utf-8?B?VHM2TzB4OUdOR3VQNnhqRlJIRTFwZzI2Z0w1aVRmK1Nhb2FsZTVzc2JibkF6?=
 =?utf-8?B?SWNIK0hUV3ZxVzNsRkUvRVJBSDQyWWRNTWJTV0ZzeUpvd3FVMUJUKytCWWg3?=
 =?utf-8?B?a05BaEM3akt5d0o4RHdQdTJTWTFOb3NKSVJMd2VVKy9WQ1VhRFBHbG9BUVZk?=
 =?utf-8?B?VHEyWHU5L25yb2V2V2czc21FQlJJSDF2bm1FV0R6VlhNWkJSaCtxSkp2cjJh?=
 =?utf-8?B?T2R0NlQ0QmFoUXUwWTdWbFNwMjF5a2NaakZ0TXJQUlhVeWtkd29idnVFaFRh?=
 =?utf-8?B?MkYrcUd0bGk5T25hSy9EbnpKMGdPMDl6ZXR6MXcvMGR0WjlHd2lCU3ViYm1k?=
 =?utf-8?B?Q3BkM1FidnlEbGRKQXMvd3pLMXQvbEk0VCs3K0FJeTB4Qk5PSlJlZ3liK3FV?=
 =?utf-8?B?dEd6T3hoczlOQmRPWVhyUGxtcGg2K2xLNktyaENmNFY2V2ViaXdvVXlmRm03?=
 =?utf-8?B?VndkeTdLcjFtbmMxWFBWSS9aTmllUkVFcXgvaENPVVRjYWF2VHUxQ3EyWWxm?=
 =?utf-8?B?RjBwUnVyYndPdnJ0TXFENCtHT0kzbGpncUpSN1JnSFdndm9oNTRTKzk3TWkr?=
 =?utf-8?B?VFlLMkRpYmsyeTlHOU5kUXl4L2RaMEJGbXB1ZVFsNGszcWs2enJBN3FwWDkr?=
 =?utf-8?B?SWUvRWx6Zk9wVmxkTkkwUlBUYU44eDNsK1BIZTBMM1FURGlFTUFiN0ZCemJj?=
 =?utf-8?B?WmRBVnlkclBhTlRtcEtQWkxuSm1YWVU5L0c5SUpNVjlwTnVSU3FLNVAwL2J6?=
 =?utf-8?B?N3ZXZzRVcERtYk50WXUydFBnQmJhWHYveW1NU2hhNVBLa3lCLzdTeU8xUWoz?=
 =?utf-8?B?MXgvdEs5QkZQWWVudHk5K0ZzSjQvQ3RlVzhPcjRKMmhrV0tlMDlnbjRZMXFE?=
 =?utf-8?B?Vkt5TXJiY0xiZG56bWNoOS96ZmF2Zk5tclg2MXRDQnArd2dyR3lDVnMrdUNB?=
 =?utf-8?B?T3lxZXEwSnFsdHF1NENzSXVFRmE1alFNQmNra1V6RWVzY1pNQTd0OVZIWUhS?=
 =?utf-8?B?Q3U1R2I4MUYxK052WkpvTElDR2FtNktsNmFTTXBnT3ZTZ05DYXg3RXZ6L3ZF?=
 =?utf-8?B?c1lrUDNodWNvTnZ4TytxZ0cyL2xWSkFCR0tYZUV6ZmYzVXcwaTRiNWU3QVZW?=
 =?utf-8?B?eGwrTnFLWCt1ZTUvK2xJbjlhMXh0YlFNYVpNcjJMNE5CMmVEUkJHUGtJdzIz?=
 =?utf-8?B?TXJKV0xDSUt0TS9xa2xRdGpWeGtCZmZ6cGVyVExMUzVHa2lKbHpqWVJsK01I?=
 =?utf-8?B?UU5LNzRRcjNLSFBKQTJNRDd2NWhENDk5aUVIODlsazNUY1ZPbytaTnY4MzU1?=
 =?utf-8?B?ZjZPbWtzTEZVSTYyM0tVM1RiOElhZUhpcytxa0ZtVWdRQVJBWHBvemtiSWxI?=
 =?utf-8?B?dWJBZHlpT0NrQ2kyTHdpUDA4YnZTZHg3NW5QWnU0amxMUzlTeS9XbUo5YXFo?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b855b5f-f594-411d-fa2c-08dbea8339b5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2023 11:15:53.5685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rvoFpLc3GdQEwuuqsphnf/twhzW/Q6Mqky+6GELkc4lM8BUWMxhQ7ShUSnbczxN+QmkUAo6os2h8R4LK0bSul/Te+Stw+6t182POpwgkyXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700565381; x=1732101381;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=elVfpZHQxvaK8UHMtV1iFKkJFgElHj6tqCYznTTUucg=;
 b=ZwZB0gUdhbTfhWh2v8/b+ZApkCiij4WJCFtdaKVDr20LAWx3PCeuSsHq
 +EXV46PQwIUq6ihONe55Yc7tARTzaAmSUVuJDU9YphJWTKyf/3WZssG2S
 Z70BJCU7dCDapjfBJBFvRukQjb4CruSn4jaX/KYiWcW4VGdrlXB9SOvlt
 IolSkLd78ZAOUzGIR+sdwQNhCwxPwA0LQ7wWA8Wk4UPfq7qCFD7EVTWqH
 1g3R89jLDEKAaATv5Ptie1MEJ1k033CM764NhJS9rFbiSbpNsfSxt7Cia
 djvDqoJKurqcK7Kh6WvJ8SOTzUEoIRvPnFOWBdbhzWdSTIp/b1IaPeehk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZwZB0gUd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 horms@kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogS3Vud3UgQ2hhbiA8Y2hlbnRhb0BreWxpbm9zLmNuPgpEYXRlOiBUdWUsIDIxIE5vdiAy
MDIzIDEwOjEyOjE3ICswODAwCgo+IFRoYW5rcyBmb3IgeW91ciByZXBseS4gSSB1bmRlcnN0YW5k
IHdoYXQgeW91IG1lYW4sIGkuZS4gdGhlIGNhbGxlciBvZgo+ICdrYXNwcmludGYnIGlzIHJlc3Bv
bnNpYmxlIGZvciBjYWxsaW5nICdrZnJlZScgdG8gZnJlZSB1cCBtZW1vcnkuCj4gCj4gTXkgY29u
Y2VybiBpcyB0aGF0IGluIG1hbnkgc2NlbmFyaW9zLCB0aGUgcmVxdWVzdGVkIG1lbW9yeSB3aWxs
IGJlCj4gcmVsZWFzZWQgYWZ0ZXIgYSBwZXJpb2Qgb2YgdXNlLgo+IAo+IEhhcyBhbnlvbmUgZWxz
ZSBmb3Jnb3R0ZW4gdG8gZnJlZSB1cCB0aGUgcmVxdWVzdGVkIG1lbW9yeSB3aGVuIHVzaW5nCj4g
J2thc3ByaW50Zic/IGUuZy4gJ2RhbV9oZWFwX2luaXQnIGNhbGxzICdkbWFfaGVhcF9kZXZub2Rl
JyB0byBhbGxvY2F0ZQo+IG1lbW9yeToKPiBkYW1faGVhcF9pbml0Cj4gwqDCoMKgwqAtPiBkbWFf
aGVhcF9kZXZub2RlCj4gwqDCoMKgwqDCoMKgwqDCoMKgIC0+IGthc3ByaW50Zgo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLT5rdmFzcHJpbnRmCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLT5rbWFsbG9jX25vZGVfdHJhY2tfY2FsbGVyCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtPiBfX2ttYWxsb2Nfbm9kZV90cmFja19jYWxsZXIKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gX19kb19rbWFsbG9jX25vZGUKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtPiBrYXNh
bl9rbWFsbG9jCj4gCj4gCj4gVGhlcmUgaXMgbm8gZnVuY3Rpb24gbGlrZSAnZGFtX2hlYXBfZXhp
dCcgdG8gZnJlZSB0aGUgbWVtbW9yeSBhbGxvY2F0ZWQKPiBieSBkbWFfaGVhcF9kZXZub2RlLgo+
IAo+IEFub3RoZXIgY2FzZSBpcyAnY3B1aWRfZGV2bm9kZScuIFdpbGwgdGhpcyBjYXVzZSBhIG1l
bW9yeSBsZWFrLCBhbmQgaXMKPiB0aGVyZSBhIGJldHRlciB3YXkgdG8gYXZvaWQgdGhlIG1lbW9y
eSBsZWFrIGluIHRoaXMgY2FzZT8KPiAKPiBPciBpcyB0aGVyZSBhIHVuaWZvcm0gcGxhY2UgaW4g
dGhlIG1lbW9yeSBtYW5hZ2VtZW50IG1vZHVsZSB0byBmcmVlIHVwCj4gdGhpcyBtZW1vcnk/CgpJ
ZiB0aGUgbGlmZXRpbWUgb2YgdGhlIGFsbG9jYXRlZCBidWZmZXIgZXF1YWxzIHRvIHRoZSBsaWZl
dGltZSBvZiB0aGUKa2VybmVsLCBpLmUuIGl0J3MgYWxsb2NhdGVkIG9uY2UgYXQga2VybmVsIGlu
aXQgYW5kIHRoZW4gdXNlZCB0aHJvdWdob3V0CnRoZSB3aG9sZSB1cHRpbWUsIHRoZXJlJ3Mgbm8g
bmVlZCB0byBmcmVlIHRoaXMgcGllY2UuClRlbXBvcmFyeSBidWZmZXJzIG9yIGJ1ZmZlcnMgYWxs
b2NhdGVkIGZyb20gYSBkcml2ZXIgYXJlIGEgZGlmZmVyZW50CnN0b3J5LCB0aGVpciBsaWZldGlt
ZSBpcyBzaG9ydGVyLCB3aGljaCBtZWFucyB5b3UgYWx3YXlzIG5lZWQgdG8KbWFudWFsbHkgZnJl
ZSBlYWNoIG9mIHRoZW0gb24gZXhpdC4KCj4gCj4gVGhhbmtzLAo+IEt1bnd1ClRoYW5rcywKT2xl
awpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
