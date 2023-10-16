Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAF87CA193
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 10:28:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 090B6613CE;
	Mon, 16 Oct 2023 08:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 090B6613CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697444933;
	bh=1zyIApO+43KnReYEWuA6KRTDzHDbOJ6feMWZ6rDbt/g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j+duEveIXfrdZvN2taCLHjsBHpz+SY5DPejvJN9htYa0BDDum4LuQ08wuVNHiOVsY
	 xLIXkcP5F49oMt0WC3kp1fLT4XXtvvydwoA6AJxI7l0amg5ChhVbfpuXrVGi3KuN8s
	 Iwllm9ePXJFbGSTUWB763lbP1Wv5VdBgQOadvlC+GocArtzyKCy/L/A0VnZsIo+Gns
	 /y7og41ixvNmBeUhULupbHE80cIw/WbPzsT4JmcIZ5RLqvQK/XwpmeMdoWsdOZUn9F
	 A0g6rlPP7hKQbsn/leqU+H67Jd5v3OzARJISrEMMgrg4cLAGw8i5vBNtVYON1bKr5t
	 jJiaCEQBDcAWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIauqZnIK7Sw; Mon, 16 Oct 2023 08:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70A3A61334;
	Mon, 16 Oct 2023 08:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70A3A61334
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 831F71BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58E1740950
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58E1740950
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YtCLS8P5vFFU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 08:28:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 534B540936
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 534B540936
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="471704636"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="471704636"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 01:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="825917877"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="825917877"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 01:28:44 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 01:28:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 01:28:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 01:28:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQVAMsBE21I1a4kiBks793aALSXYRx7Z/qPbFyj/NiX5sROM2AMGJEotitStzfy0Nu9eiR5gZXcNlAz4KIUof/Kn+qcRGxveV954j3FDan0hkzrLUcDAYLslyekErBzTxNiYR32Cxv2efFzPNYHrBtBP/FSuRbsqCMmYtDt56N631QYsUuAk0HBV0SdZm//idhc1JxA9n8gg6SVqSnlM2OZIY0EdXazOqbiOpaHHCmV1pUJWWVWwADOjbYhLQbk8ulOM5CYmVD1dmY8lQIiyDtDeUvtwHZy6YD6cWSIV+GwdugXehtn/Iw9z42wAa8abFRWVPC2hKhA2Xm4oyyK55g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K0tmeBjHEGM6iv2qKVf40glfRGF7cMPrzK3v0GJOBA8=;
 b=bI1MQCd9T88Z94bqkM4RskPjFM/XeZXX5qrREjbFC4+IJdSX7ooiUaXQYd3H3lNyir+/C+gjs6wAoZF5ImrWDe7KAUR3/Y/RuftIdiZWYDIiH1m0d7i9g+WtPlkdxE40dNtVzCTQ7HRqWU2i6tSaVPoLlzQtsXLSmMNMX/UjeeF4ZapRsujbhQtvWUFapJXwvmFfVHUVpd7+5px3nHSyBuAOcrHU9iUeya1yy/Rq1inP9y1hCvbw8/NqaXJyymkBpN9S4kl8P5DOApJ2+ovIr21y6dILKesfJwctDoYkMFRekidFcufGkR01FbrdGlO2yk6gggh16jKXRMl7TigzFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA1PR11MB7944.namprd11.prod.outlook.com (2603:10b6:208:3d8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 08:28:40 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 08:28:40 +0000
Message-ID: <f6ad3217-4337-0eaf-3a35-b769a3e6849a@intel.com>
Date: Mon, 16 Oct 2023 10:28:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
References: <20231013115245.1517606-1-aleksandr.loktionov@intel.com>
 <b8f3eb2e-afaa-48c7-c830-300f888b1f1f@intel.com>
 <MW5PR11MB58598BE9AE5947A2D385ABA8E5D7A@MW5PR11MB5859.namprd11.prod.outlook.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <MW5PR11MB58598BE9AE5947A2D385ABA8E5D7A@MW5PR11MB5859.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0098.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::14) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA1PR11MB7944:EE_
X-MS-Office365-Filtering-Correlation-Id: cf7a03e7-33d6-45c3-4f8e-08dbce21e630
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6AE23da8Q9WGWRemfWJTT1v8q0MPiZuGaFzujTi6KxhdztaLT3G8W4DM3fo/0VM1zwbCgoI5sPXQkpkNjTkr86TtKnri8W/Bp0hW0RBqWplWZ5dIJ4lKZEbfRCqxSsEfxwzZfo4COwoxsVpAsXKm0ZUHCj9BvQDl8lGx2o9OzjbLbzc4TojJZbzr2PQQpOreMra3Z7APZJQ0J2hSoVaXZJkdwXg0OYAox7q1ef7Lp50Qx6geFn8DT1zfNl2E6c5Gj+QcPKXXq4Yz1okGzF9xJ/EnHCknRQ7Tn/9sX/EOtvh+xYqxEOIeBIrE5km5fUS41iqxZvU6Tglq8I0OkC27ZzFYU9iHhOS+YlRadwNd4V01+a7IMuJqBK9qRtCemCK8LCajrbQGgDITRVg+Tbc1kDF4Ya18fRFA6xJXdySJeEbVsEK5ZAVMUPgZzmGr8imZ4YF9MwRHAVNOBBLpFfL/WCWS3vRxaZu2qD41iJ2LbETyelFHz0DAK+pIb+n4I7AdAfdOb4sKEUyb2fP2yDwuKBgcFGtikZyDJ4hvARfNBa5oXzRoqhdf7yL3VELpl3Of+Slo6eymR3QKf/4ndCiBzJtg5FKB09c2xFS7Mxa6aMJFMIkLkSON6OH8mwcGBJ4UuMzqi9tASnL3bJL2Sh6CzA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(31686004)(6486002)(36756003)(82960400001)(38100700002)(83380400001)(6666004)(53546011)(6512007)(26005)(6506007)(66946007)(66556008)(66476007)(316002)(478600001)(6636002)(2616005)(110136005)(41300700001)(2906002)(86362001)(31696002)(5660300002)(8936002)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wm8zV09Hc25ZSWRrS1hEVFNraVVRSncrMU4rR0M1VkllWTRoMGdWdFlreDZh?=
 =?utf-8?B?aksyR2NmQlJ2ZEZXVFA0YjN4U2kvN1RYUkdNZnkxVWY0dW91QUhtNkFlZnBw?=
 =?utf-8?B?VEpjbzVvVWErSnNQWGRQMFBScDN2TXFFMlIvcmlVSDRDQXhTUHFOQnpLTlpa?=
 =?utf-8?B?MlNzOGlITm1Fdk5SZWhEMS96ZjJxYkowS0V1MFUzVmZxU2R0SnJXdEJEc1Nt?=
 =?utf-8?B?MVJiZis2WHZFSThiaVFKZ0FNVThSUDlrTEhnZ2dFa1ZENDBQQ1RYZmV1WHpz?=
 =?utf-8?B?eSs1MUczOEczLy91ak51c0FsRUkyb3NzYWxtWVVpKzNZTEFGTnkzaGJCZTA4?=
 =?utf-8?B?bS9zYXQ1a3ZUTERJTTFOZHFyMlEraytMZzlkb0x5Y2FKTHJxZ2pOWEVwTzZN?=
 =?utf-8?B?RTRhV0VLUXoxa1lDcFFiRVJLakppR2VYaFV3dVIrVVRtd04wbTU5eDg5ZnNo?=
 =?utf-8?B?QTg1cUJqRWYxK292Vk41N24rMWZVNjVtRUQxM01xV3hSZWZaZXA3RkVxdEht?=
 =?utf-8?B?amU5WDkvd1V0YWRMTEYybUtYT3hvMUlUUTBlaEZBN2ptTUFDKzNNUE9qcjZo?=
 =?utf-8?B?NkxLOENPM1ZZY0VvRDA1djR0N3pCMm02NnNoZ2t0QTI3U0c3MnE3eWJ5T0ZJ?=
 =?utf-8?B?R3ZjVFNiZjIycVUrdTdVVVR3M1pTSHFER3BjNjRvekVrbTlHMmdiUG93U05j?=
 =?utf-8?B?eUdIelBETGk5UTJoUkVvdmdqSjloT1k2SmVxamtNWUFOSWlPN2ZINVF3U3lQ?=
 =?utf-8?B?SUxheGNzdnc2V0VOQ0FacjJiN2ROaXRvSlN2Z2dBckQwTkdTemlBMG9nWGZr?=
 =?utf-8?B?TDBkSXE4N2YxTzdlNUpxdXpJVDBJa0xrVW04QlVDUDd0ei9oR2x4T296c1J3?=
 =?utf-8?B?Sk1Va0VrTzJVVElrcTZyNFdJOXNCUEFDTnJYWG9qWmNmYXFYTWNoNHJObE9M?=
 =?utf-8?B?SU9KL3hLK1d2OUtFUTk4TkVvKzRTRmwzZk14bkpOcVliQnY2ZzlDVlptV01W?=
 =?utf-8?B?Sk85RFRtYUFlV1lMQ1M3U050bk5uUGxWVlZXOGgxaFIvbDllbXAycFJEV0ZS?=
 =?utf-8?B?dXJlNzlIK0J5NTZDV0dyOUpLZFdpZGwxSFpmWlk5UWx0RXFqUm9XZ0ZRd3hX?=
 =?utf-8?B?cnNPVThwbzhobkFYZUl4bzYvYVZ2cHNUdCtJdTc0MXlYNkFyMjB1c0ZjME5I?=
 =?utf-8?B?ZUMxT2FXVENXMjloam1RS3crZG1qSlBYZi9BNGpwMS9UZVBrV3pOVHFCYUhE?=
 =?utf-8?B?eENEaXpzWFozQU9rVTBvZlNuVnYvQWwvZGtBQjNEWHNhTFJWSERLSWdUeWwz?=
 =?utf-8?B?dzIzSkQ3Y0xsNXdUeDJmbmoySjh4Z21scFMyMEQvVTZ1eGdxakdueCtzSzFN?=
 =?utf-8?B?SS8ycldBY1pvazYvK0pVeG03UlpDUzFRUEp2MlJSMSt6Y0crTTJUcEFEQ3g5?=
 =?utf-8?B?cDVwdk9jR2ZNTjdtT21GU1VhVm9SN1JPSjZpTExtN0Z3dE9kb054T3REbXVV?=
 =?utf-8?B?T0hocXo2U2cvb1ArQS9tRmNHYjJYaFMwYjNTTVlsb1hhRVVPUWZHSVJJN2hi?=
 =?utf-8?B?UlhvYnlqaDg5L05Ic1ZrckRXWStZZlBLVGt4UGdnaEw5ZTlkdUJQcHZXWjg4?=
 =?utf-8?B?OVAwanlEZjh4VGRYVmtjOHZwQUU3bVhTZ3dwejM3TlMwN2prc1lvUTJPZGlq?=
 =?utf-8?B?K2dvRVNXR3pSSVR0MTcwSkZranZXVE56MDE1V24yZHQrSDU1enEwbFAybEVV?=
 =?utf-8?B?MUdFZ0EweGhlRUx1d1JxeC8rcTdua045TG5DN3REaHErZzFmWjZMZzQvZTY2?=
 =?utf-8?B?QkxXV1hMeW5yNDN2SDI5OHJvaC9rWUpPRjg3b3lIb3pKaUx5aGM3Z3F2bmNm?=
 =?utf-8?B?ZVp6aHl5NlF0anJuRE1Bc1ZsMWNoZDZGdGxKS2c4VFhqMUhpemJ2ZDFNMlcv?=
 =?utf-8?B?YzdOc0xjMnJ6VTNKNVYyd0ZhTGd4Nm5CMTVzVzJaT0RvMnd2NGJYRjlJcXJE?=
 =?utf-8?B?WUtWWEowbWVRUmNqQStrNFE5NG01TTRRQStOUm5rMElJYWVWaklhenRRQnYw?=
 =?utf-8?B?a3dKSDJWUUFiaXUrNUc4Ymd6ZVNPYW9qbHcyYnJEZC9mcW54M0xrL2hYazdU?=
 =?utf-8?B?OHo0RkdYU2JVcWVWSjdBVzI0cmNvNmZCTkx3bExiTFRqckpVM2g5cW4zNzBr?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf7a03e7-33d6-45c3-4f8e-08dbce21e630
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 08:28:39.6793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u5Od45zV3GLrC2iNGOKC8Li1mJ6PfZh4c/evkQsgywmAkmmYEiMSgUXyGJsXiwdA1+yLtSHwGEEpn9kvpPUrC+RBmVhkYVmu2+/exzya68o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7944
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697444925; x=1728980925;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WZVg1yiCT4Y6LeXYdmlxTOlaqV8qG50P8EwGtzlnVu4=;
 b=Ct7vNir8mpakoPiNgmXyXKSZYHOiZwl5P4Ohk41Syt7641MXftTZ+EqB
 79uKW2WRTryMblKrHstwcooOW0KSOxkxqHIpSf8BXa8WyxTiEWhpTH64Y
 dS8BiXc9Xmqkwe26e4BHjwIbnQvblx9h1FKkcImeinPlzZTWmeitZ9XaE
 o9E9dAjArOk4tLeOOhP/lgOLDDznKpIhkx3XwDYMEwfbsejDbRdcR6jM9
 D+ai6dAGzMdQmNUlvV3A2TOgi4VsLA3TX8ZnhyvsfIfwEdYK/oz049MM3
 2fz+PyDvOjBMWbnyciWpBydMZZ7Fo3FJvIBfBNgUrpCvhgbomM2fHnn/s
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ct7vNir8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/16/23 08:56, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Sent: Friday, October 13, 2023 2:35 PM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
>> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
>> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
>> Cc: netdev@vger.kernel.org
>> Subject: Re: [PATCH iwl-next v5] i40e: add restore default speed when changed
>> PHY doesn't support it
>>
>> On 10/13/23 13:52, Aleksandr Loktionov wrote:
>>> Currently, there was no link after plugging a different type of PHY
>>> module if user forced previous PHY specific link type/speed before.
>>>
>>> Add reset link speed settings to the default values for PHY module, if
>>> different PHY module is inserted and currently defined user-specified
>>> speed is not compatible with this module.
>>>
>>> Co-developed-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
>>> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
>>> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> ---
>>> v1->v2 fixed Reviewed-by tags
>>> v2->v3 fixed commit messages and tags
>>> v3->v4 fixed commit message typo
>>> v4->v5 cc to netdev@vger.kernel.org
>>
>> good move!,
>> now you have to focus on the rules more, like those:
>> do not post next version before 24h of prev one;
>>
> Ok
> 
>> more metadata:
>> I would remove the word 'add' from the Subject line; You still need to change
> I don't agree, because it's not a fix it's a new feature implementation => 'add' feature.
> If you have a better idea please suggest a full commit title which fits 72 chars. What I have now it my best.


i40e: support restoring default speed when changed PHY does not

> 
>> author to Radoslaw.
>>
> The patch was seriously modified, so we are co-authors.

sure, my rule of thumb then is to put bigger contributor as main author,
and the other/s as co-authors,
perhaps some people believe that chronologically first should be the main?

I always try to split patch into more
(each of them still being of value when standing alone ofc).

anyway, it's just a comment, not change-request :)

> And I'd better leave my e-mail, which is still alive, on top for better community support.

doesn't matter, your address is there as a Submitter anyway :)

> 
>>> ---
>>> ---
>>>    drivers/net/ethernet/intel/i40e/i40e_main.c | 65 +++++++++++++++++++--
>>>    1 file changed, 61 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> index d0d0218..6829720 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> @@ -10076,6 +10076,55 @@ static void i40e_reset_subtask(struct i40e_pf
>> *pf)
>>>    	rtnl_unlock();
>>>    }
>>>
>>> +/**
>>> + * i40e_restore_supported_phy_link_speed - Restore default PHY speed
>>> + * @pf: board private structure
>>> + *
>>> + * Set PHY module speeds according to values got from
>>> + * initial link speed abilites.
>>> + **/
>>> +static int i40e_restore_supported_phy_link_speed(struct i40e_pf *pf)
>>> +{
>>> +	struct i40e_aq_get_phy_abilities_resp abilities;
>>> +	struct i40e_aq_set_phy_config config = {0};
>>
>> just `= {};`
>>
>>> +	struct i40e_hw *hw = &pf->hw;
>>> +	int err;
>>> +
>>> +	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
>>> +	if (err) {
>>> +		dev_dbg(&pf->pdev->dev, "failed to get phy cap., ret =  %i
>> last_status =  %s\n",
>>> +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
>>> +		return err;
>>> +	}
>>> +	config.eee_capability = abilities.eee_capability;
>>> +	config.phy_type_ext = abilities.phy_type_ext;
>>> +	config.low_power_ctrl = abilities.d3_lpan;
>>> +	config.abilities = abilities.abilities;
>>> +	config.abilities |= I40E_AQ_PHY_ENABLE_AN;
>>> +	config.phy_type = abilities.phy_type;
>>> +	config.eeer = abilities.eeer_val;
>>> +	config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
>>> +			    I40E_AQ_PHY_FEC_CONFIG_MASK;
>>> +	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
>>> +	if (err) {
>>> +		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %i
>>> +last_status =  %s\n",
>>
>> s/  / /g
>>
>> (in English: replace double spaces by single ones)
>>
>>> +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
>>> +		return err;
>>> +	}
>>> +	config.link_speed = abilities.link_speed;
>>> +
>>> +	err = i40e_aq_set_phy_config(hw, &config, NULL);
>>> +	if (err)
>>> +		return err;
>>> +	err = i40e_aq_set_link_restart_an(hw, true, NULL);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	pf->hw.phy.link_info.requested_speeds = config.link_speed;
>>> +
>>> +	return err;
>>> +}
>>> +
>>>    /**
>>>     * i40e_handle_link_event - Handle link event
>>>     * @pf: board private structure
>>> @@ -10086,6 +10135,7 @@ static void i40e_handle_link_event(struct
>> i40e_pf *pf,
>>>    {
>>>    	struct i40e_aqc_get_link_status *status =
>>>    		(struct i40e_aqc_get_link_status *)&e->desc.params.raw;
>>> +	int err;
>>>
>>>    	/* Do a new status request to re-enable LSE reporting
>>>    	 * and load new status information into the hw struct @@ -10109,10
>>> +10159,17 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
>>>    		    (!(status->an_info & I40E_AQ_QUALIFIED_MODULE)) &&
>>>    		    (!(status->link_info & I40E_AQ_LINK_UP)) &&
>>>    		    (!(pf->flags &
>> I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED))) {
>>> -			dev_err(&pf->pdev->dev,
>>> -				"Rx/Tx is disabled on this device because an
>> unsupported SFP module type was detected.\n");
>>> -			dev_err(&pf->pdev->dev,
>>> -				"Refer to the Intel(R) Ethernet Adapters and
>> Devices User Guide for a list of supported modules.\n");
>>> +			err = i40e_restore_supported_phy_link_speed(pf);
>>> +			if (err) {
>>> +				dev_err(&pf->pdev->dev,
>>> +					"Rx/Tx is disabled on this device
>> because an unsupported SFP module type was detected.\n");
>>> +				dev_err(&pf->pdev->dev,
>>> +					"Refer to the Intel(R) Ethernet
>> Adapters and Devices User Guide
>>> +for a list of supported modules.\n");
>>> +
>>> +				return;
>>> +			}
>>> +
>>> +			dev_info(&pf->pdev->dev, "The selected speed is
>> incompatible with
>>> +the connected media type. Resetting to the default speed setting for
>>> +the media type.");
>>>    		}
>>>    	}
>>>    }
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
