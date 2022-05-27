Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135DC53661C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 18:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DACE405F5;
	Fri, 27 May 2022 16:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9zIiDkmw_y-O; Fri, 27 May 2022 16:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7707E405C5;
	Fri, 27 May 2022 16:45:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B28751BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F241429CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2w7ZdXjfYlc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 16:45:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 581D0429C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653669930; x=1685205930;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n5abJLKws+tX4CHCERLf2vKxHYdvK3Lspljhwa5W4HQ=;
 b=nunV8ME2Ol+eI4nw9KNvfd3e+EQTRTnu6TP2pEwS8Z5r0VnvegAusrFh
 ruI6VKHlW1zrnHaq9z/w0Dz5mc56zAF6rjCdeSQdyBSpxoETgKzBgVRoJ
 N8CFzZQIfpxebUm7zSvZnmYLAaejqP8/DE7EOjfWrMgeo0v9c5VXw3De7
 /kwPHsDHTVEj2w8OsJNdobwAwS5ep2pQW4K7GlKvAmDkybUaLALnbpY5T
 VCySte+QfbWpIOrpXUTlBz+ekOWLx7wETeUPdUkNdlH4JZGrOzRqEHne8
 iNi0IjnYevBtTOolvozv6Ua50Y4vWrN7cTgNYeaM6gGEenl4m5J7wAx2c w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="299869644"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="299869644"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:45:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="643464924"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2022 09:45:28 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 09:45:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 09:45:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 09:45:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=chqNPAHDxAI98LvGXUMdmvKizTySSDasPAdP/bg/ULdWw71rvauFSHAUxIkYq3gNQPCsfwcI4tIjYOz3nGrjEmsgnFPE4oygaAGuwAwA+pobL3AfSVbLf/XyschF+mdHMa5k26jdMSVgKxDkUeyVjQDm7USs8l7wHrUz6iyDlruH1SYc62jouoV1STeHLRv2v/IpwmYvZ67Y/f4HKIeg4T2neKF5XbTR0ECf/fHS1Slb+TY5yNrPfZdT9D4qgaIFHYKnO46Gn6IWOfliynY1ncQVTRheqmRe6mz+edRjNvggvbvkErUEVudYw3z0Htf/u2JwpsSXzNN6jD/VFD8yBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSiZ26qLBgyilb9lUGxzQT0SfjgqynhDU8xIbkiqh34=;
 b=gXBSonboHRG1nzOyoR5ibthBpmb44tdhzE1oaQJN2jxJOZQrNqVZCLU6op4jH+FrzCV/ZkmfowQ+VSakG2+lA6XJEpFOV78r7EH/P2wgM2Ga2SKGPXkfnGtw4dkFbJsrrW1gYQda9A/a/2vDzeGSsXot1PwINoQjsD4oR5jjNRV3+LILiEDVrwyQnt2UhY10do1AAPB6GCyt911YppUeZgEfwPU2X1c9jFiGv8B5qJApTrqK3RRt7CSDoPClpAjwWi8XN2OnlQvtmQOqBhtFwdoXkKJFMNLkj8mmhG4OxTbRhqhspvNCIdu2/rHI1Ib7v/1Ykg9pcdiYjgzViuiuvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6067.namprd11.prod.outlook.com (2603:10b6:8:63::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.23; Fri, 27 May
 2022 16:45:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 16:45:26 +0000
Message-ID: <2485cd45-1ac5-6e2a-9023-2887cc535069@intel.com>
Date: Fri, 27 May 2022 09:45:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220527080750.2370502-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220527080750.2370502-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW2PR2101CA0018.namprd21.prod.outlook.com
 (2603:10b6:302:1::31) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b77c921-829b-48e8-ad75-08da40004ce2
X-MS-TrafficTypeDiagnostic: DM4PR11MB6067:EE_
X-Microsoft-Antispam-PRVS: <DM4PR11MB606788CD97AD0FEC9558B7C5C6D89@DM4PR11MB6067.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jY08wshDgfsaZecqpf8Jom08MG0gR+ahd4Mi7tH493Iwi2LWclxSBaKhjgJ05pGZWYn3XSbdSSFCCHF71pb2o5vIbO9atQYiFWhYzvoMt4S8yr+8FK8qV8icj3LdIV0rfqXrMMgh51s6dKPKlY9FuAzVwgZhXCNGI/HstQ7yaUVdz02yGjczw4vP19A8nYxOOmofd2BjsxbW8PYB5QJHg4Cu8E2uLbl6ayxMkU7evRNqFrmQuAJ1LD0ursqjlWxVUOhGcUopTnbyKvtTq47NcFIQ3t8OU9p4zXURXu7d6Y5/7LV4jRVfpHOBuFCUMZZKK4bIzIrRx7GCkkkGwRdUHL2kp135fVHiWeQZnNVlZLjXtuOW4QPOgOxsqTqvYqhXNQYKkfcWR82SGez0c95O+VGq8mL8xtCrKbvJkQ1pYb4pBtws/TSPDuebrFOT+bbFhNLOnRjUSo3NOQJFB2KRLpS28TQ9ngWqzxPGXDBbF4qWPXr/Drapfd/i3l4mOpkBqqtqaCJ/ZakPm9Vxv0JjeYdzZccVSyWKUjxodt+ZOjb82TSp2mENE/zd6Q3EE6iPH7kV2ffnrT5BkjmeLiYacLOqGr/g6LSiU7jayh3LZEdonM6rxxH6DHVSxE4Lba/UnUyvUJZLt02ESAmd42hM2uB9y7KL/bVQxp8/ullUt6IpeGL3Kql0YUFXjBkeb3e3+w5VlkAZj8vRQoI2HWiiZMkdYcKGK2m9zDXzSs4v/0HR6MizO/TLlWNesjiNYd50
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(26005)(53546011)(86362001)(31696002)(8676002)(6666004)(6506007)(38100700002)(8936002)(83380400001)(2906002)(508600001)(5660300002)(82960400001)(316002)(6486002)(107886003)(31686004)(186003)(36756003)(66556008)(6512007)(66946007)(66476007)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3dQK1dmNmVJV0Z5Q2xra0grWUpCTWpXSXJ2WFI3ZWQwN3VCZjhsR2pESFVI?=
 =?utf-8?B?MWg2amIrVi8wc0xWVDZjV0c2ZXBmNXRVdjhsbmFyVmVjYUxodWdVeXQwb1Vv?=
 =?utf-8?B?WDNyQXBmem1WMTB6VE5hdm5Vcjg5MVdBMFBtQzRYYnpWOUVqZ01LR1ZaNTF5?=
 =?utf-8?B?RUdQSmxGSit5UXVva1ljZ1d4NFU0Ulo2SnA0Y3lVZTY4ZlJkcytORS84MGdU?=
 =?utf-8?B?aDY2RTZwdVhEd2VWdkMxMGc2QWpiM3JDVVlrTTNwdmN2eHUzMGpYNXVnR21H?=
 =?utf-8?B?WURIaDlGUWV1S25XeTlFQWtZZzV3THZ1WGR0VForOTB1ZHV3RUQyblhUc3lr?=
 =?utf-8?B?LzVJT0tMa3lxS2JMZ2xTZ1VFMXFtbkdYWHdDUTBvRStTZEJpZjlEeWkvOEcv?=
 =?utf-8?B?dXdVS1RRQVJJVWNNKzVaSyttUXJuMnlpeXZaYm8zbUlhZUFoeTBGZzV5L2lY?=
 =?utf-8?B?ajZYaDYybTRISWJjUXhEUmcydThpMGQ0elJuRmhYb2EwQVJXR3B6Y3htY0Rt?=
 =?utf-8?B?MnA0YUlWaTJvSWhKSkYzOU1ScVN4aW9xdUlHLzZkMURvaU5tYlpES0NnSlJI?=
 =?utf-8?B?M0t4cTIyeWhjQ1pqU2twejNxZ1JmQWpiYlpSVG1MNHo2K3ZJYXdXQWdGVGZu?=
 =?utf-8?B?TUgwbGs1dGZRTWJnd2JrM2k0d0NCMjlBUWdBWEJPTy9EWVdXUkVqNGN0R2sw?=
 =?utf-8?B?WFVmWkJyUWdYb1h1SXdPVU1hcXJ3dTlseFlqbVZqb1BVNWpHZktucVlHbkRk?=
 =?utf-8?B?V3F5ZlBJdDFjenk5QUhZdlZvbEZ0Q2VWbjJpS09JNXJvdDY4d3dJRVdXcFls?=
 =?utf-8?B?VFJyR2F5NFNEd25wUkEvTWNhV2cxbHNtTTV3WmRuVzVMYTU3QTdDSXlUTDNQ?=
 =?utf-8?B?WmVnTER6eDZvK3g0d0FkNVhpcSthWEtRajRyRWt4RktobEwrVkdUK0ZZODJs?=
 =?utf-8?B?NFY3dWtUeVlPTnpDVmFwWmVyaElTVjJVdFRGOU9ORXhKZVdYSStpaHFpM2Ra?=
 =?utf-8?B?RHpQODdkRVh2UEh0R241Y21sWms0UDdMakdRZkZjZDl1SjhuRjlCTGVKUWRi?=
 =?utf-8?B?SmZwbHR2SitmTVhVd0hQNWpENy93c29EMlJodjhIL2UwNWg4SFlxeFhDWklj?=
 =?utf-8?B?Yi9EeEZqVkwyWlpQb0t2MWxWN0EwSXlOeisxRE1yYnNRWVRQUlBOTHQ4UlUx?=
 =?utf-8?B?TDhyT0F3U2htT0tBanh1NS8wb0l1Mk8zbTJSSnY2SUFMakhuVVlqS0RMaXRM?=
 =?utf-8?B?QWpFZjVuaHZiZTNMWXZoTXhOaUV0eGxXTnRYeVJiUWU3N1VERFVxNW8rL2Yz?=
 =?utf-8?B?TmtjbUE5Uzk5QUVDbEJRZ2tBSUNCMWQrTGVPQVU2aVBjRGIwZkFucVRiSkdo?=
 =?utf-8?B?UXovcjRQWFpYMHRWY0cwVVk1NDBKQUsrRTljQUVnc2tCMytnSHd3amJKVWcy?=
 =?utf-8?B?TGEvSVhYTjJ0bWNzUGNxbDFlY0JHYnR5Z0gxWFdBdDRFU012MTFGYVNFS01H?=
 =?utf-8?B?SFZNS3FSdmM3ak5rRFFDSE9XRlNaSGR6RittUDZHclRqb2xOdDVsUTRyK3d1?=
 =?utf-8?B?UVBBYzVSMVB4T3ZudlZXQmtENnE1UWFZNytaWDVPNGp2ZlllL0d1c0d4bDBr?=
 =?utf-8?B?L3dXbUYzRVFtWi9sV3J1by9GUVN5OHFBWXI1dlhLVnlQL1JEV1IrbkxGQ2x5?=
 =?utf-8?B?MTcyRmh0ZFdZTnRWdGt4cWIwS1YrV2tpSUpyYXZCT29oT3ZneE40ZmxMaTZK?=
 =?utf-8?B?UDkvYllVQjZJR09EclJKcmE2TTMyRDZ2eXdjd3lNR0ppcXAwdGtPNityVHZO?=
 =?utf-8?B?NStrZldGbFVhbThRK1ZxMHAxek40VU5lajY4ZVA0Y2JjRzloYXZxSU5TcU9F?=
 =?utf-8?B?Q0srbkVHQ1ZJdFNBZHFWWG5jT2FnUncvWm80b0FHNGlVdWwwaTFrRWFZQ2c4?=
 =?utf-8?B?c2h4ZTZCZlhkTTBGM0sydGdVR3pwZ1VGSXBiUTI1dUdXR3JGL2VGYjRSK3VT?=
 =?utf-8?B?VENpTnRHZW1RM1Ezb2J0NGFmRWNvSjBkQkRMOHpVdDZLeDVjamtSNUJnWUU2?=
 =?utf-8?B?TmtSMkRzN0ZHSk01TDdGVVA3ZzBUWEJwMUZ6ZlJOV2IwVEk1SXRpS1pncSt4?=
 =?utf-8?B?bWhrdWFUSE5mQ1UxWmx5MG5nVXVrWUZUcDFBU0xVYk9qb200clIwMFQzRjF1?=
 =?utf-8?B?d0tuTkhQbHF5cDNpcGZFT2hqc21zdlB5UUxGdUwxbk9VVFQvK0dsUEhUYXFr?=
 =?utf-8?B?MXM0MGZRbjJueDVIYllkWCtjcC9NT3ovc0s3UmFRQjJ0VVljZ0h1eGxBamhQ?=
 =?utf-8?B?TTV5OUVUNGJtV2ZTdHpWejJyeCtJOFlDTnF3TlVwY0w0UzZVSzNDcGUrWDV3?=
 =?utf-8?Q?DtfXH+lnncqyn67c=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b77c921-829b-48e8-ad75-08da40004ce2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 16:45:26.1229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dzmufCHCMmD5lvT7/XpUrr2T46kVrA0CyrcYXoBplz8cB8msVME9v2796A4H2q12SJuOqFTZrkULXtu7Ikwf+mHvXyRW7le2jbyi4x4VGN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix dropped jumbo frames
 statistics
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
Cc: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/27/2022 1:07 AM, Jedrzej Jagielski wrote:
> From: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> 
> +/**
> + * i40e_stats_update_rx_discards - update rx_discards.
> + * @vsi: ptr to the VSI to be updated.
> + * @hw: ptr to the hardware info.
> + * @stat_idx: VSI's stat_counter_idx.
> + * @offset_loaded: ptr to the VSI's stat_offsets_loaded.
> + * @stat_offset: ptr to stat_offset to store first read of specific register.
> + * @stat: ptr to VSI's stat to be updated.
> + **/
> +static void i40e_stats_update_rx_discards(struct i40e_vsi *vsi,
> +			struct i40e_hw *hw, int stat_idx, bool offset_loaded,
> +			struct i40e_eth_stats *stat_offset,
> +			struct i40e_eth_stats *stat)

Checkpatch reports an alignment issue with this. I'd recommend using 
this style to help resolve this:

static void
i40e_stats_update_rx_discards(struct i40e_vsi *vsi,
			      struct i40e_hw *hw, int stat_idx, ...

Look at the ice driver for more examples.

> +{
> +	u64 rx_rdpc, rx_rxerr;
> +
> +	i40e_stat_update32(hw, I40E_GLV_RDPC(stat_idx), offset_loaded,
> +			   &stat_offset->rx_discards, &rx_rdpc);
> +	i40e_stat_update64(hw,
> +			   I40E_GL_RXERR1H(i40e_compute_pci_to_hw_id(vsi, hw)),
> +			   I40E_GL_RXERR1L(i40e_compute_pci_to_hw_id(vsi, hw)),
> +			   offset_loaded, &stat_offset->rx_discards_other,
> +			   &rx_rxerr);
> +
> +	stat->rx_discards = rx_rdpc + rx_rxerr;
> +}
> +
>   /**
>    * i40e_update_eth_stats - Update VSI-specific ethernet statistics counters.
>    * @vsi: the VSI to be updated
> @@ -679,6 +749,10 @@ void i40e_update_eth_stats(struct i40e_vsi *vsi)
>   			   I40E_GLV_BPTCL(stat_idx),
>   			   vsi->stat_offsets_loaded,
>   			   &oes->tx_broadcast, &es->tx_broadcast);
> +
> +	i40e_stats_update_rx_discards(vsi, hw, stat_idx,
> +		   vsi->stat_offsets_loaded, oes, es);

Alignment issue here as well.

> +
>   	vsi->stat_offsets_loaded = true;
>   }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
