Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D13421F13
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 08:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B57440185;
	Tue,  5 Oct 2021 06:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2sdP1Du3XNr; Tue,  5 Oct 2021 06:51:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6B5440183;
	Tue,  5 Oct 2021 06:51:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C455C1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 06:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFC8D83CF5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 06:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OU_iDgrVy47R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 06:51:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDF3A80E41
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 06:51:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="205789092"
X-IronPort-AV: E=Sophos;i="5.85,347,1624345200"; d="scan'208";a="205789092"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 23:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,347,1624345200"; d="scan'208";a="713962089"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2021 23:50:57 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 23:50:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 23:50:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 4 Oct 2021 23:50:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 4 Oct 2021 23:50:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bsH44w+DJqg62TRWb+7f+V2h0xNFdMUKQjqmCIRSqtru6op/6ud8060Yr5RtKRNkkGW8EhxzUEsK//LRwFcEa8qkvRAcnbG8tNcV5Sl3/2tjds7xC6+CLd76/IvWp7V4PKykpp9XyITwLGVAzcJAww9rOQFyofqQIrY5a2GNC40c1HKCkZ5vvreMc+xBIAhGGEa+G5LLDlTwibm7MtC0HaFlAC3ULqNmuLDjnR5ChWaX64QHcRXXPA1g/Jo2Ctzf+qKLfi2xUcunxZz+4Vvk3Q4oJOYxkZxHov1xF+N8w7wt/L7/DdSV7KtNUGPkAdSXOKM+fUifl7QcnxSeXAnEcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nKRgPkDhYiscNsm79nedrdtRZP9ZjSQWWqzm2VGW5nk=;
 b=nV1PWvbMX7qclchBfeVsLJuu4Euz1brNByXvapGEmUppZ2YmpFbMkyPNB0GzcrFP3UKwi06zDkv2uBaxFomyFiADAk6F5WJHz7Ir8HgcUTDp0kklYDufjpnIww9ooQ7Onf9rHY1UEKxB2W1BmyiA2ind18esnHOLMYkfpo6kknzL48bvn4kWHt+vDbAZBdNamn8cQsIIGt84liWgFFyQ9IzS7ycRXa5JvUdDdaNKNigUWVYGblOSNe8xM9cHtLwHVynVOa/csR5Bzj/bEI5nMNlEs92NQ6fgce7czy79BE9TjBgstFWR0oe5STYzL939XFu8kriw8/Yv23cjGYdg2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nKRgPkDhYiscNsm79nedrdtRZP9ZjSQWWqzm2VGW5nk=;
 b=XpDfYGdi0j2UqNYngeeF0zrKXdimTFOPEYoD9QVe9dk8cjvnkGmuSthMKruJT2uz7I/KyPMEUMubVbqO3kOapr3LHLpgMf1FgD//+mSOi+PjngnbAjtVDGz5O7ZXgvg5Jn2f8pv8rI6mtZr6lFcdhbzdnDfEm9rBquNeKSf6HUU=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MWHPR11MB1728.namprd11.prod.outlook.com (2603:10b6:300:2b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.21; Tue, 5 Oct
 2021 06:50:55 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::cced:992a:9015:3b8d]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::cced:992a:9015:3b8d%6]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 06:50:54 +0000
To: Hisashi T Fujinaka <htodd@twofifty.com>, Jakub Kicinski <kubakici@wp.pl>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <4111f2b7-cbac-3451-593f-a154aca65263@intel.com>
Date: Tue, 5 Oct 2021 09:50:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
Content-Language: en-US
X-ClientProxiedBy: FR3P281CA0026.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::17) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
Received: from [10.185.169.76] (134.191.232.34) by
 FR3P281CA0026.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.9 via Frontend Transport; Tue, 5 Oct 2021 06:50:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb69a347-bfa9-4e8b-5f17-08d987cc7a59
X-MS-TrafficTypeDiagnostic: MWHPR11MB1728:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1728DB8415B07F8BA2A9698E97AF9@MWHPR11MB1728.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eD+kiAWjFhfnRUv/ArZjoxNwFlxDGCnqwy2w4TYLD2vlV7qf2v1XiRmKcbMHk4CNiDUzYeMBkEdj7m43LQtKs+ef1HXwlehFs/Irx6c7KlFjPNq1qeMzrE88A2p34tY9C0tdmIuzSw493vvZRf2akNRNpcQSvxgv+BAzVJT4vHm+azNdIGWUv83UNZtkgB/kJD9/SSKHHdqLuPby6fmjJeqhZKykSeRdT8opWOaTOzbV+IRJRnqO1G1mktvyKTOiVDMFVKvqiA8CidtxErZTRmfdNKSXaVXI3hoSBXwaj+LCv6jRwA4TkifWpOwdgDnt1/2vceRTEVR2a+e8kRUVxiAxp1UdcADWOcHDRzMdHcPk48a8sCXlRZLM5y/6/f3bUTWYlejNtYqYYpgCmVNNXt5/UkvAwruDogXeuTgfk6j9bV5t1RKBTyl9ym1HJGuiY6YI6hvL4Q+c4eJ3uZwNX+IwT/V+WXJY9CyKcJIEScwwxmgVpq3aGsomWlkSOp+ez5m4GE2j46xFv5pKSa5NbX2eUevYU5Bi9kALUl1lTkA35oX6gIbCjrdMlus5x0mU93Hdf0dwmgumPgygWP+XL9fu6mtGNelJDMC8c/kxZctctLJFPQq/wC1+rDo5d78HPk5+cJcgG3hnb8WCk8PYqhRMYx6l+tJbVRZnAZodATh6PCPdgE16Wr8z9R8YP+n8EY8IDcINU/lET/gc/cX41ctcql+4Ql0iVpMvSt+//T9vxCOO1LvVnfxxcmmvCxLpPQQFjZkTgMNLVb/i9uSvHfkWoeyQjwrphHhXaJGtUCcBTgq7y13gkhDwhb5aVAcAZaX17OIQIyMlaRjvUs9RWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(316002)(31686004)(86362001)(186003)(8676002)(36756003)(107886003)(26005)(966005)(16576012)(83380400001)(38100700002)(8936002)(508600001)(54906003)(956004)(66946007)(6486002)(5660300002)(2906002)(110136005)(2616005)(44832011)(6666004)(31696002)(53546011)(4326008)(66476007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWt5dmJ2YjB3VkowdXVvOGtzeEtJYVlweElCWjNSUWp0U0dsWnA1TDNCNHZn?=
 =?utf-8?B?R0J1d2pEaGxWRHVkNlo3eVNoTnB6b2hpMC9BLy9SbjkzUk42RXJ2UWdXY1p5?=
 =?utf-8?B?SkFsZXdXV2ZuN2lvUTV6aWl5eXVJYXZrcm5yaGZLNlliV0gyN1R3WEJ6aHcz?=
 =?utf-8?B?Z29LeEhOOXF5WGtkZWRpN3h6ZnRMRyt3elF6SjFjcHZnYXYrelpUTVVENEpF?=
 =?utf-8?B?L2g5dUtCdzQvckVzMGhGSUxqdVBxbTRtSGg2elpNd2xSOWxmYnYraHdzYk9v?=
 =?utf-8?B?MHcwYzYwM3ZYVTc0cG9CUEJxa2czSUdTZ2FuY0ZaMU9BWG5IdXZweXAxazZm?=
 =?utf-8?B?UHEzeVduQzJIczh3UjQwYWVaZ1l4Z2M1a2RyRjRMQWZ4Q3MrYVYwTTVuYlVX?=
 =?utf-8?B?YXFXZGc1SnRDanZsT2ZkelEvWnoyVTVuMjBSb0kza2dwYUozN1c1RUZ3aDIy?=
 =?utf-8?B?ZU0wYmtLaWFiTUFhU25TaC9KSDRnUVR4VGRveHlFK2o4OWlkUkpaYkgxL2Fw?=
 =?utf-8?B?b1h6ZUdPRWpvV2RLRU9HdkRNaTdxazU0ZmNjdlhCM21rQmM4UXYraTB2NEt3?=
 =?utf-8?B?TGU2cU5uandqZ1hZYmJvdENvSlJZWGdGN2pRSW9EUHFkR1B5QWdpV2FudEhU?=
 =?utf-8?B?ejU2T3NMVVUwNU5Mck9DTmRiWXVUSEVhZXhqb1BaOFdGVEVrR094N3JNQjZK?=
 =?utf-8?B?UHNOand6dmFueGZ2ZjVvZUxPMFNzVXlJaDJQa2wyU2FwY2N4emtROUJTbU5w?=
 =?utf-8?B?RmgzMzROR3o1RDl4Wk1TRFo4cU9jYVNYTWhhN2xPSmtGK1ZiMEZISTVtSHEv?=
 =?utf-8?B?NDlyYll5V3llKzU1NkVXSCtiL2gzMTAyM0hiLzBNVXR1aVJ1SVdiakpBb21R?=
 =?utf-8?B?ZUxGQmVLeGU3cWtKVi9FcEkxY1F2aTVPcXhiL3BTVkh6QmYybHJSZVFncVdI?=
 =?utf-8?B?bWxxR2RFQWV2N2wrdGIxeWVlbmZuU1p3RlZyemwzQ2Jha1JEOGJ6OHpXSjB4?=
 =?utf-8?B?SGZSVjUyd1VnelU0VmZKcHAwSU90Um50cEkvbzkvNXpHcUVxdWRWNDRIbVZt?=
 =?utf-8?B?YkZMNmt3RTRNQXpUUXltREQ1MnhLVGRPZlp2VHN0S0VvU1A4TGJHWXdleE1h?=
 =?utf-8?B?dWFRcDJhaURDRG96M2d2QWNNRTkwOGp4c1ZGaHd6Q2JMaytIdkdzVUZWL3A0?=
 =?utf-8?B?d1VOTnFUcnlFWTNqNytMRjhreDNQUlpQV0Z1RU9jb0JLcXFEbHBUTjgxaGFw?=
 =?utf-8?B?OU1Ma0JRaTV6aGd4REpJakhzTHAzUTh2L0Y0dlFFQW42WkZtWVh6eDl0cXFL?=
 =?utf-8?B?YlJIZ2JoWlNZNVYyTk4xRXpzaE56QzRleG52elNHQ20yak94OE80T3grV2N1?=
 =?utf-8?B?R2phTVlNQ2FYaEV1TXBBMkt1STN1T0FNSUFEVERib2d0MW1kODdWT2RLTGJw?=
 =?utf-8?B?VU8ra1RnUzN6QlQzemdja1l1VWN5N09aejVxQ1RLQStJbjlnSDFxU2lSQmpQ?=
 =?utf-8?B?bTBzTmJOT01PZDR3SXhoL3BLZFZ0MU1ubkVhVEt5U1JNYkpCbHRaZ3U0MjN3?=
 =?utf-8?B?NVd5ZGoxUC9FMlQxV1JHWnBSNElDSXVHMjVTTVJrSk5mMHFaRWt1SGV0Yytj?=
 =?utf-8?B?ckJMR1dBZVAzTTF5VWJxdWF6d2Q0WGNxWnkyMU5YeHdFekdVTzhSamwxVlpm?=
 =?utf-8?B?eFFENHRqMGhkYU45MHpyZVhOYmU4WmxCelV4RnJsUGdNdjlSWDVNdVdORUNC?=
 =?utf-8?Q?Ke4It06oi+V0Z1CkBP97jcW34ULNxreS0C0De8K?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb69a347-bfa9-4e8b-5f17-08d987cc7a59
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2021 06:50:54.8766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8w8GknkVzgseBkQYajQORb9HnSKOqXw0AzjdPCbLdD54zNDBoC3rMzhc1+uwloiiLTR/D+H9b6ZmREZJFIQfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1728
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM
 Checksum Is Not Valid") [8086:1521]
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvNS8yMDIxIDAyOjM5LCBIaXNhc2hpIFQgRnVqaW5ha2Egd3JvdGU6Cj4gT24gTW9uLCA0
IE9jdCAyMDIxLCBKYWt1YiBLaWNpbnNraSB3cm90ZToKPiAKPj4gT24gTW9uLCAwNCBPY3QgMjAy
MSAxNTowNjozMSArMDIwMCBBbmRyZWFzIEsuIEh1ZXR0ZWwgd3JvdGU6Cj4+PiBEZWFyIGFsbCwK
Pj4+Cj4+PiBJIGhvcGUgdGhpcyBpcyB0aGUgcmlnaHQgcGxhY2UgdG8gYXNrLCBpZiBub3QgcGxl
YXNlIGFkdmlzZSBtZSB3aGVyZSAKPj4+IHRvIGdvLgo+Pgo+PiBBZGRpbmcgaW50ZWwtd2lyZWQt
bGFuQGxpc3RzLm9zdW9zbC5vcmcgYW5kIFNhc2hhIGFzIHdlbGwuCj4+Cj4+PiBJIGhhdmUgYSBu
ZXcgRGVsbCBtYWNoaW5lIHdpdGggYm90aCBhbiBJbnRlbCBvbi1ib2FyZCBldGhlcm5ldCAKPj4+
IGNvbnRyb2xsZXIKPj4+IChbODA4NjoxNWY5XSkgYW5kIGFuIGFkZGl0aW9uYWwgMi1wb3J0IGV4
dGVuc2lvbiBjYXJkIChbODA4NjoxNTIxXSkuCj4+Pgo+Pj4gVGhlIHNlY29uZCBhZGFwdG9yLCBh
ICJEZUxvY2sgUENJZSAyeEdCaXQiLCB3b3JrZWQgZmluZSBhcyBmYXIgYXMgSSAKPj4+IGNvdWxk
Cj4+PiBzZWUgd2l0aCBMaW51eCA1LjEwLjU5LCBidXQgZmFpbHMgdG8gaW5pdGlhbGl6ZSB3aXRo
IExpbnV4IDUuMTQuOS4KPj4+Cj4+PiBkaWxmcmlkZ2UgfiAjIGxzcGNpIC1ubgo+Pj4gWy4uLl0K
Pj4+IDAxOjAwLjAgRXRoZXJuZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENvcnBvcmF0aW9u
IEkzNTAgR2lnYWJpdCAKPj4+IE5ldHdvcmsgQ29ubmVjdGlvbiBbODA4NjoxNTIxXSAocmV2IGZm
KQo+Pj4gMDE6MDAuMSBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRp
b24gSTM1MCBHaWdhYml0IAo+Pj4gTmV0d29yayBDb25uZWN0aW9uIFs4MDg2OjE1MjFdIChyZXYg
ZmYpCj4+PiBbLi4uXQo+Pj4KPj4+IGRpbGZyaWRnZSB+ICMgZG1lc2d8Z3JlcCBpZ2IKPj4+IFvC
oMKgwqAgMi4wNjkyODZdIGlnYjogSW50ZWwoUikgR2lnYWJpdCBFdGhlcm5ldCBOZXR3b3JrIERy
aXZlcgo+Pj4gW8KgwqDCoCAyLjA2OTI4OF0gaWdiOiBDb3B5cmlnaHQgKGMpIDIwMDctMjAxNCBJ
bnRlbCBDb3Jwb3JhdGlvbi4KPj4+IFvCoMKgwqAgMi4wNjkzMDVdIGlnYiAwMDAwOjAxOjAwLjA6
IGNhbid0IGNoYW5nZSBwb3dlciBzdGF0ZSBmcm9tIEQzY29sZCAKPj4+IHRvIEQwIChjb25maWcg
c3BhY2UgaW5hY2Nlc3NpYmxlKQo+Pj4gW8KgwqDCoCAyLjA2OTYyNF0gaWdiIDAwMDA6MDE6MDAu
MCAwMDAwOjAxOjAwLjAgKHVuaW5pdGlhbGl6ZWQpOiBQQ0llIAo+Pj4gbGluayBsb3N0Cj4+PiBb
wqDCoMKgIDIuMzg2NjU5XSBpZ2IgMDAwMDowMTowMC4wOiBQSFkgcmVzZXQgaXMgYmxvY2tlZCBk
dWUgdG8gU09ML0lERVIgCj4+PiBzZXNzaW9uLgo+Pj4gW8KgwqDCoCA0LjExNTUwMF0gaWdiIDAw
MDA6MDE6MDAuMDogVGhlIE5WTSBDaGVja3N1bSBJcyBOb3QgVmFsaWQKPj4+IFvCoMKgwqAgNC4x
MzM4MDddIGlnYjogcHJvYmUgb2YgMDAwMDowMTowMC4wIGZhaWxlZCB3aXRoIGVycm9yIC01Cj4+
PiBbwqDCoMKgIDQuMTMzODIwXSBpZ2IgMDAwMDowMTowMC4xOiBjYW4ndCBjaGFuZ2UgcG93ZXIg
c3RhdGUgZnJvbSBEM2NvbGQgCj4+PiB0byBEMCAoY29uZmlnIHNwYWNlIGluYWNjZXNzaWJsZSkK
Pj4+IFvCoMKgwqAgNC4xMzQwNzJdIGlnYiAwMDAwOjAxOjAwLjEgMDAwMDowMTowMC4xICh1bmlu
aXRpYWxpemVkKTogUENJZSAKPj4+IGxpbmsgbG9zdAo+Pj4gW8KgwqDCoCA0LjQ1MTYwMl0gaWdi
IDAwMDA6MDE6MDAuMTogUEhZIHJlc2V0IGlzIGJsb2NrZWQgZHVlIHRvIFNPTC9JREVSIAo+Pj4g
c2Vzc2lvbi4KPj4+IFvCoMKgwqAgNi4xODAxMjNdIGlnYiAwMDAwOjAxOjAwLjE6IFRoZSBOVk0g
Q2hlY2tzdW0gSXMgTm90IFZhbGlkCj4+PiBbwqDCoMKgIDYuMTg4NjMxXSBpZ2I6IHByb2JlIG9m
IDAwMDA6MDE6MDAuMSBmYWlsZWQgd2l0aCBlcnJvciAtNQo+Pj4KPj4+IEFueSBhZHZpY2Ugb24g
aG93IHRvIHByb2NlZWQ/IFdpbGxpbmcgdG8gdGVzdCBwYXRjaGVzIGFuZCBwcm92aWRlIAo+Pj4g
YWRkaXRpb25hbCBkZWJ1ZyBpbmZvLgo+IAo+IFNvcnJ5IHRvIHJlcGx5IGZyb20gYSBub24tSW50
ZWwgYWNjb3VudC4gSSB3b3VsZCBzdWdnZXN0IGZpcnN0Cj4gY29udGFjdGluZyBEZWxsLCBhbmQg
dGhlbiBjb250YWN0aW5nIERlTG9jay4gVGhpcyBzb3VuZHMgbGlrZSBhbiBpc3N1ZQo+IHdpdGgg
bW90aGVyYm9hcmQgZmlybXdhcmUgYW5kIG1vc3Qgb2Ygd2hhdCBJIGNhbiBoZWxwIHdpdGggd291
bGQgYmUgd2l0aAo+IHRoZSBkcml2ZXIuIEkgdGhpbmsgdGhlIGlzc3VlcyBhcmUgcHJvYmFibHkg
YmVmb3JlIHRoaW5ncyBnZXQgdG8gdGhlCj4gZHJpdmVyLgo+IApBZ3JlZS4gVGhlIGRyaXZlciBz
dGFydHMgd29yayB3aGVuIHRoZSBQQ0llIGxpbmsgaW4gTDAuIFBsZWFzZSwgY2hlY2sgCndpdGgg
RGVsbC9EZUxvY2sgd2hhdCBpcyBQQ0llIGxpbmsgc3RhdHVzIGFuZCBlbnVtZXJhdGlvbiBwcm9j
ZXNzIApmaW5pc2hlZCBhcyBwcm9wZXJseS4ocHJvYmFibHkgeW91IHdpbGwgbmVlZCBQQ0llIHNu
aWZmZXIpCgo+IFRvZGQgRnVqaW5ha2EgPHRvZGQuZnVqaW5ha2FAaW50ZWwuY29tPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
