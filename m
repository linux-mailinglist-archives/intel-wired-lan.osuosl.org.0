Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AE3939BBF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 09:30:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F3FD80D77;
	Tue, 23 Jul 2024 07:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4wS9CMrE7DUL; Tue, 23 Jul 2024 07:30:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1634D80D8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721719854;
	bh=T9XhBHgWIZCBVRn40zSD8CKNl9QOcBik4+8dUoNNiYw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nAoIkluaAFc53pl5Cj5ygMFLsy6EIBWWvAhOkQGrAAKmvoESGUUX7Cjy3ozlnVtjn
	 2StcMjbZAjBHD6nkRoBdp12Slv29xKqtz7QJ/VR2AqfIlq4j86oMh/0u9aN2QziLI0
	 5yUIfOBNN4/JPsdS6CuhZw8arGQVigSN6/4WGi4TxirxKUvq3xozf34iUCSFsNfR/F
	 KlU7mtrKpNXDjfoFMQssMMW+qLQraYTkejc6fewrvly7dAk1Vj1JQTU2gc/TEmzgXs
	 CKuF5FFhfNUGYJ333Xnvp1YOf1wymSdnwHI5YJos+nVau18JgvbJC1Xo6R+ph6GlZt
	 QDBcmjF/b5oYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1634D80D8F;
	Tue, 23 Jul 2024 07:30:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 027711BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E39B360796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:30:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6ZxDfXyM7ER for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 07:30:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D489460773
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D489460773
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D489460773
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:30:50 +0000 (UTC)
X-CSE-ConnectionGUID: BZe1+1Y+SSuh1fKpHJVmIA==
X-CSE-MsgGUID: L3YAGQFORn2BeObIWKVBUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23128208"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="23128208"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 00:30:49 -0700
X-CSE-ConnectionGUID: vrTRh3SzRESpPCzGJy0snw==
X-CSE-MsgGUID: MJmO0BV7RhKc+RIAli/mZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52890044"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 00:30:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:30:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 00:30:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 00:30:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ei1bQHm/UGY+cGxe4Rxvkb41ej6PvxPMEsNL7SXZ7LbNBgv694mpJF6/bX6JsTUD/q9ai8vYRXKiCwUT1dd+AxQ5h0NkJxrskDuUqN6LjPexx+RbJLOZkD8AFdHP6/6fPZBn/zm06WBbddvnIEi9xc4U/tHRH+guUzKaA8mK7TKHZDyOZ41kHKcvWVcHJ8Psh4JdCN+MqijnDSS5/weoVyptsRvUpDHzZJWHqnt1Zl58eewxhmBmV3DXJRcM/an5nML9HhRwDIptAyKgCeR08Y289KH6qBw8hOgI80mCVPAhF+fmat7euXVWLGNcIeBO4R02k1pADs1/OAzkDq+17g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T9XhBHgWIZCBVRn40zSD8CKNl9QOcBik4+8dUoNNiYw=;
 b=A0r6ME1x0RJOGF/hGqKt3Q5Ssb4MIBv4hKerZP8IPtB63kRlqR+7/sB/WWTRPwWDnhGlyhZgufb9IEklZwaUfkt7QnIpCdbRyOoJ1vc9NlfAyejBGHKjT8QkLiWY6vpvY9on94v7kUn1tbhSyG/AJr+/DymQf6mhxvLxuUYF7Qju5KB7y/WijMHYPpEmuYQ0fKomwPD8YB06XWD8ggY1QXvOjCBPbn++PO1cxPjZyGxAQOmYDsNrOecOKiaGi8FIwS1YqLeqlt240Kzyov73tJePQsPw9xAMG3vZFz+rWtI9FWm3aiEvU7jEevKoe7Momg8AOBCKRX6A7rtWo+OmdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by SA2PR11MB5113.namprd11.prod.outlook.com (2603:10b6:806:113::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 07:30:46 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7762.027; Tue, 23 Jul 2024
 07:30:46 +0000
Message-ID: <27f157f0-1240-4380-aaed-3b6e912d4a96@intel.com>
Date: Tue, 23 Jul 2024 10:30:38 +0300
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240212-igc_mqprio-v3-1-261f5bb99a2a@linutronix.de>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240212-igc_mqprio-v3-1-261f5bb99a2a@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|SA2PR11MB5113:EE_
X-MS-Office365-Filtering-Correlation-Id: 7859a1dd-129e-4b87-92d3-08dcaae95df0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEtvdFRrTkRCV2t4dUc2aklYNzFqNkpRYkpMd1o0d0w5ZTRJZ2F4OWZ1VHRH?=
 =?utf-8?B?bmdvZ3JSM21kOHlLM3IvMHlKbTRvTGRWczNxZmdsZlNRd0pZQkVUZ2w2MHY3?=
 =?utf-8?B?RUJ5b2RZbDA4bU5xVU90UU1tMzlFcUs5UDJpeEVvdnorai80Z3pZNlhjZFdz?=
 =?utf-8?B?WTRnNVdFZ0xtOVRxVzU2M3BEbDBaSG1EaU1OaGhPdmhUNkNXK0l3Vm96QmNj?=
 =?utf-8?B?ZGlXdGZ1Y1VsQ01lNTBDYmlWWW9Qazl6aXBNUzRNNUF0Y3ZjSGdmK1JCdlNh?=
 =?utf-8?B?UWQzaXoxQzF4TXBkOTd1MzF1TG9VVlpZS1pLOGVKYWhsQ2tNOFcwZzhGaVB5?=
 =?utf-8?B?ektVSlZ2ajFrcFlsOVVEZC9vKzlCcTBGZThkY3BJNGE4SkYyRzhvdU8xUHdk?=
 =?utf-8?B?cGFRL2hHRFFHMU1YUk1zMU1yYys0ZWRBanAvNkllMzdFQ2RwbTltUFl6STRw?=
 =?utf-8?B?WGpNNTB4cDE2TDhiSTU3RTZZRU1CQVFJMGcyKzRHQllNV05lSjZRNW5Sd2tu?=
 =?utf-8?B?cVNnUEJLa1RzclhPOXRTK2kzbk15c0w3MUcvOVdqbVFOcDQ5TEtOVkxWOEwx?=
 =?utf-8?B?UzQ3ZHdNQmp4RHhaWkxaQTVMTTVNL29hVEJrclpHZkdlMFNHdGNGNkJqY0wy?=
 =?utf-8?B?REpYL1pKLzBrTjNvbi96YkE1R05Za2JiaFRUZklkdys5OGMydHQ5T1hxbTJL?=
 =?utf-8?B?QUo0b1pQNU5FS2FIdVlRb1YzamZHWlpxV1FqQTNHVU9CajNOZ2Zwc0FSTU4r?=
 =?utf-8?B?bWRJTGhxMXVTMWhBRmFMK21wblpHSzAyTEFkdTVZMkhGMHJTQVlpKzJXdnpo?=
 =?utf-8?B?VzlyY0lvQmd5VjExVzNNU3hrckFGZUU5SVZLa0s5WUFkZC9kTHpnUDNYMVg2?=
 =?utf-8?B?MzlqK01YSG15elIzUDRDU05pdHpTTm1jYlo0TFB5a2MyZCsyOFA1dWUyV1lQ?=
 =?utf-8?B?VHZQVXZtd1NKaXFPMDk1WmQ1ME1YcFg3TGIwVTNoanVVaUczSUEwV3VDZmFV?=
 =?utf-8?B?aEk4WlhhcDF3UzNRZktNUGFMRmVUblRxZHpTWFp4K2psT1AySGNvTCttdElm?=
 =?utf-8?B?TmFLc2l2bUFTeEJ5dFlUbjZMVWUxaHhnL0NmM2twZWI4ZkQvNEJlcXkrNTlz?=
 =?utf-8?B?bnFaT2pRVXRJVS9rN1FEckZjTTRyOUtQMUZNT0RscFF2NXllMmFKcnNUYXJk?=
 =?utf-8?B?d3AxUk5pUUNCT2FKQ1pSNEFscXBidTJnc2FtQ3VxVFdPOTYxTkc1NTJwNkJq?=
 =?utf-8?B?cWdwOVpGazBVQ3BDOHI4Skd0Z2c3TC8yWTBRUkcySStoUVc3M0xpSGEvTFJI?=
 =?utf-8?B?SXlIR1pZRW56c3BJNTdOVjhqZW1GZ2N0U0MybXBSd01OSFFEUStSck0zUXo4?=
 =?utf-8?B?NXRDOStCNWx4T0dyQ0h3OHpXT0lQMExFMHJjKzFKZzdkM2NvQVV5RTBQR2t4?=
 =?utf-8?B?NVh4OVZyaENHRGEySkh4SVNZOGhyZndpVGU0eTU2VzJWSDg0MkxEOWxpWjFQ?=
 =?utf-8?B?aUd0OFdBVlFJT0krSHQwY1pzcU9VK0tLTEgrR1FNaFhlRmhzV1o0MElrTzlP?=
 =?utf-8?B?bk0zRmJrYTJPUkVnMmdINHRkU1B1OUhkS3FZVUFJdk9nQ3pRSjJwWGpTOUI3?=
 =?utf-8?B?OG8yUVpXcG1zRXgzVVZ3TXBmWVdPNEtNTnZiTGxLbDdmWGNwK1I2QUtHbjJI?=
 =?utf-8?B?UEdaMTNyWVRlam1CYjc1K2d4Nm1QSmlyMGFnaTNtR0pyRG03cU50amVLbFdB?=
 =?utf-8?Q?dvYTn2fLOjj6yRxfsa7/Xua1SBx93bsnJjN7BSB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QktHam03eXB4RnBYOGQ3MGc3czRxNWhjWWxtQUUraHJka0RmUklRdTFXckpQ?=
 =?utf-8?B?RXRoVG8zRGZNMlprR1ZHd3RYNXo3bmtwVVZTL2FXeGIrQTk3eDlQSkc5a2g0?=
 =?utf-8?B?aHoyOHZFN2hZUStFVnZJcE1PUnJCei9PbFp0MDZVL2dCWmo1bTFGaU1GZmd6?=
 =?utf-8?B?eVk0a3pYVkNHUVhsZDJDU2hQbHFndVRvUkU4dzRnRjNyQ1pRMDNQeHpWRmJ3?=
 =?utf-8?B?M0g1UCsvQTZkcS9JQ0hNMCtGTVVZUVR0RWJGZDNYbGVLdDYvV0g4QVBoREJ3?=
 =?utf-8?B?RUhMU2t4T0NKL0FyTmdqWWQwSWI0c2N3dXhoTjZnQmdNa2JUM0ZZbHdrT3I5?=
 =?utf-8?B?WkJ4MVV5SEFuUVgyeFdsMVIzTDV3Y1Zja3RtR0tzQjBUR3hWeEZLcDNKbU1v?=
 =?utf-8?B?bkJScUVTb0F0eE1maG1DNi9NWmNaMEczVFpjMXl1Y0ttSmZKVkgyeFdRcGJF?=
 =?utf-8?B?NUo2S3dyYkMyYWI0YnJVUHJxWE5pZ1FydzFwUjFEaitVamozeFEvTFFYbytH?=
 =?utf-8?B?NjZIQXFUa1ZTZUw2N2hHZHJRb3M0eW01ZHhaTjNXMFNYSlhrODFzbEF4T1VJ?=
 =?utf-8?B?U2I5K3U3VGNMNjNiTVNuL05Ja003akxoWStTT0p0eHkwNjN4ZnZtRE94V3k1?=
 =?utf-8?B?empZbVFOQlQ0N21ET1hBNHNkWXdWK0Y5cDEreEt2YUJ2T0Y0dzBWQ2ZyeERh?=
 =?utf-8?B?b1J4ZzZkOVBYaHdNZ2VLM2NhY1R4RTl1bk5TTmtEZS9GSWZ1RGtQV0U5R0xp?=
 =?utf-8?B?eUNXaW90VUxYUUdyWU41Y0JGOWZUa3hIU05ZVUdIWWxCMzI4aG9wRXNwdXhV?=
 =?utf-8?B?UkZRaHJQd0FSaFZ6djVFci84WFdqSXFUaEg4VkhETDRrYmVJZ3pWY1ZUcnJw?=
 =?utf-8?B?ZEpUZWM3VHlVSjhZUjBpcVM2Yit1WVRLTmV1Qm9pWVFtMjNWakk5dWV6MHhX?=
 =?utf-8?B?QUdQQWJhRTB6N0V4NHdHUUY3NHZOWHFYYnVrblJheldBbEhaeVp2bmNtUyt4?=
 =?utf-8?B?cHRqYitraWYrVWdiRVZadHpMWi9DRTBxOUU3K093YkdXUUYvNWM4R3Q2UEx0?=
 =?utf-8?B?Z0dRb1JtVVdyTnlONUFibEdSNkRsYkQyWit1STJTM2pUZUYweTBhL0ErTGZR?=
 =?utf-8?B?U3FTT2JSeXlBYllDd00wR1FaTGdUUjdmNHp3SFdVTWw4cG43ejlyMitxR2Nx?=
 =?utf-8?B?OVlOa2ZFcGIwQXlpcVJTOHVFUHhQenMxZkoxNkx6S2Q4OUJmb01sNUNMOGlm?=
 =?utf-8?B?TjB2Qmg2K3dhbjh3bkNEOTZyWklvZWhWWEJCWjJLZ05NQlhhc3ArL1M2c21a?=
 =?utf-8?B?cnloV0JjM0lzUHdiRUtRcTZUcjRoN3BFRlZGQUVnZVVUUE10aHRQUllQNCt4?=
 =?utf-8?B?S1pTd0RjcTNBYWtlbkpqSkVrcUFlcFJIUkw2ZXlSQU5GVDdYRGZuZ0l0a2Vv?=
 =?utf-8?B?MXRtcEh1K09JTDVjbnZ3U3QxT2hGSWVDa2FrRmdzUnhqWWFEeWQ5d2hMYWJq?=
 =?utf-8?B?cVdIRitra2NZTkhCWTZaem1BbXVZOUdGVzNWQkd4RkZWaWtid0dVQWJBSFB2?=
 =?utf-8?B?RkRJamdsSmdOYkc0a1B4c2lFam5Va0UxenBVamVpR040VzMzS3ViN0MwRUl4?=
 =?utf-8?B?b0ErNU13dVI1SkRPVWxUOG1qVzZxRjlzYXYxaHdZWkhjN3FDNVE4c1F3L2ZD?=
 =?utf-8?B?ZmE5RzBIWUYvanl4V0pIV3hUSHV6SGFuVkVVM01LN3E5Q3R1OHhyalRTZCtM?=
 =?utf-8?B?WDh6YzhhS0ZLbkFSOVd2czJPYWk0c2hmU1VsV1h1Q0ZNYVZGdFQ0SnNtVUZC?=
 =?utf-8?B?Rm1ydFJZTGQzS00zeDk5NjdZS2c5ZmZmYkFZRWJScDcxejV3LzlFVW1CT3hL?=
 =?utf-8?B?eWVDQXVwbjQ2cm5YMnJTc3JjaExNTWFkRlZ0b3J0ZThzZEU2OEx3SDhyRC9y?=
 =?utf-8?B?VHRVWjNSTFo1VVZOOU5ZdnBIYjNWOWlDUXg3V3FrZThVTGZadEpFbVJhWVF6?=
 =?utf-8?B?a1A3RStMSENRTkZHTzJUdDRURnhqQ0ZneHYzTTdMU3ZSbHdzSmpmNXJnSDhH?=
 =?utf-8?B?RWMwUU11L3dMQzJmd3YwVTVlN3ZRUEFJbnczT2NmYThFNWtpaDQ5dlhnK2RY?=
 =?utf-8?B?a0Njdk01cEcxM3RiRlduTFJTQUc5VFdkMEF4NjZWcmh4YXNtYkdYQnBRc3Ri?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7859a1dd-129e-4b87-92d3-08dcaae95df0
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 07:30:46.2387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9S4p3ZMwwxwLHrUcFKAsz8uPuz0Uv2u+wyf9QZMSivCH5zdOdQzz5a2MsfFNjeKlW7mrvDl09Kp04TE9yIgYodrr4P4SZefysLxRsG0yP3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5113
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721719851; x=1753255851;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UsYMuQNgKVBx8b6JggzvTn/qQ1tsLrIFSvx4l8kPOJM=;
 b=PMvKlvKvuMrN1vXq1+tuDwwVE8GAPr/JlXNh5B3e82wWz5ypokxPfdaj
 dKtgBa5F13pJJ4JXKYdIbkSHtmHbjvJqCoPvpvZeD+lRkd6pDnUzjqt/x
 Kw0+hMarEV9rZhu8SuG613Ta6A58Se1HV6dc44ZsRTP6gyw/YhiRcFzpL
 f5MqhFaRG7iLNxWmBVIxudYYP0drqGzAYd0yT34e8klwD+PPNGcfpA31I
 f66Zy07owYnsrabyytLpz9G3H0e++YUUosN12Ng4ZcitMzPaSEMglQ3+S
 XlVP3EOP4ItAYQrsO16oOGqcuKjtKYgM0VGz1nOg3M57ea8Z4TenPfThC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PMvKlvKv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add MQPRIO offload
 support
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "shenjian \(K\)" <shenjian15@huawei.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 21/06/2024 10:25, Kurt Kanzenbach wrote:
> Add support for offloading MQPRIO. The hardware has four priorities as well
> as four queues. Each queue must be a assigned with a unique priority.
> 
> However, the priorities are only considered in TSN Tx mode. There are two
> TSN Tx modes. In case of MQPRIO the Qbv capability is not required.
> Therefore, use the legacy TSN Tx mode, which performs strict priority
> arbitration.
> 
> Example for mqprio with hardware offload:
> 
> |tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc 4 \
> |   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
> |   queues 1@0 1@1 1@2 1@3 \
> |   hw 1
> 
> The mqprio Qdisc also allows to configure the `preemptible_tcs'. However,
> frame preemption is not supported yet.
> 
> Tested on Intel i225 and implemented by following data sheet section 7.5.2,
> Transmit Scheduling.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> Changes in v3:
> - Use FIELD_PREP for Tx ARB (Simon)
> - Add helper for Tx ARB configuration (Simon)
> - Limit ethtool_set_channels when mqprio is enabled (Jian)
> - Link to v2: https://lore.kernel.org/r/20240212-igc_mqprio-v2-1-587924e6b18c@linutronix.de
> 
> Changes in v2:
> - Improve changelog (Paul Menzel)
> - Link to v1: https://lore.kernel.org/r/20240212-igc_mqprio-v1-1-7aed95b736db@linutronix.de
> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 10 +++-
>   drivers/net/ethernet/intel/igc/igc_defines.h | 11 +++++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  4 ++
>   drivers/net/ethernet/intel/igc/igc_main.c    | 69 +++++++++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  2 +
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 70 +++++++++++++++++++++++++++-
>   6 files changed, 163 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
