Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F9C41426D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 09:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D782C8377F;
	Wed, 22 Sep 2021 07:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LvZkwvLlkTyZ; Wed, 22 Sep 2021 07:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA0B1835C8;
	Wed, 22 Sep 2021 07:16:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8D41BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46693613AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gv0LGGiwLVzR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 07:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46C9B613B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:16:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="245971757"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="245971757"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 00:16:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="512859063"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 22 Sep 2021 00:16:01 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 00:16:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 00:16:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 00:16:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 00:15:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmUvuAP9OyWpl0nrwr8cvZDwFMXiI6wMQ0/clYNqShcmIJ2xMWUhutsHOzygzJqjdCp/f9qu4WoUOmXgJZXZXRO7m+kMgsdde6jBJ8+Qd68qfp/kbQi7x9oD5/9/37hbVO34BuWLaPFfU0+DMruVfXXBuvOfuKIVgiuqDtNgZn5pJRxclHVWqNGYnhok1ar5lJ2FgIYThg0kKiyKk6S4ALGhywZjE7bo0gG/P9tfUOWYtBPz7PuP0zxxI3HO5Z1oX3dUdC6SyLwsgjL9NfT/rdkqVzUsBsDPbAHkjmRTTQQ5UQ3SlFJv1DOh3d84Cn2+on2ElXxZekSEDLN/7VQNLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=qchlNijH+zedmKls+dJD9Xy7BbpHgEQ8cvRt+2FsGbQ=;
 b=NZ3MIQEmV/uuYsXZBmyX/VrpCMxNSAyxFA1w00zAEno+RsvuT+RXw1wEYGgoUB1lZelROsC5xqEcraFsuidVxcR3e9LjjkQk3BjOpm2v1Xpm1V4Nn0SlMcssKntNvsH6b0wzTSKV049wirvjgphAHb0fsJdmkvGcuKUXEFKOqQH8PxF5vOtcEd1pdPxYbF5F+1890N2ToWhpdUKMmp1tNoXDsCT2NQKzaZvj4a+wzAxTD4eJTp41T/HQzmw6teWhuB0JWU+fLZzQAzGzy9EfxYbuXMCV6tkkVoo5vxSDEK4GBvFtFCuVbjSbajaaydtFoqAIloaiG1NWo/dQwet4Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qchlNijH+zedmKls+dJD9Xy7BbpHgEQ8cvRt+2FsGbQ=;
 b=NM35QhhV98xqgDsNqjGZQKKzRPkxQaGS8kM8zV/7G+d42AhdgOG0vZVsaKSkd/qRTJA/9RamFgYQuVKT4lJc689e1xB3UJ9sAdu7Bfs8SeLAcXxf848fyqglwE0ZgFlldNm3mJyEr7EgN0UVACFV3UI9Cfu5v8R9hM+HMS1Rnbo=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by CO1PR11MB4820.namprd11.prod.outlook.com (2603:10b6:303:6f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Wed, 22 Sep
 2021 07:15:58 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::a07f:5f13:3a27:40d6]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::a07f:5f13:3a27:40d6%6]) with mapi id 15.20.4523.018; Wed, 22 Sep 2021
 07:15:58 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210909174904.3765604-1-sasha.neftin@intel.com>
 <9cb08013-19f0-1c27-339e-63b3700c26f2@molgen.mpg.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <2a9ee721-de1e-0012-bc9c-cb47b384cacf@intel.com>
Date: Wed, 22 Sep 2021 10:15:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <9cb08013-19f0-1c27-339e-63b3700c26f2@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: PR0P264CA0240.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::36) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
Received: from [10.185.169.5] (134.191.232.46) by
 PR0P264CA0240.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1e::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Wed, 22 Sep 2021 07:15:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c66d660-932b-43a3-574c-08d97d98d360
X-MS-TrafficTypeDiagnostic: CO1PR11MB4820:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB48207769CAF8A633158D7EA497A29@CO1PR11MB4820.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dzO9y1RzDsH9ukvGOqTPftwAJKM5V2/yUk6pdI+2tdc80LxNe2OtCpCEQa+YhaGbyOFK8uHwPzRJiTZq+4eOr44kCuUsFg6SwXKmtMXr3BkGKnPegE24Rox14SiQMiRFe5uNdNfBneH++hK4/G7+kaimliIzqUQyj2gep0CJ+nsI2eSNtvPfuINDF9opJcsqA9Xrq5QgiX6Qsf041/TY1zcoJiOxxEJYgt/XOkzW5EUlbevSLLKOYDFuYeK7lx57WfZ/CKFM/Tw7CKJMvsPorqSsSqBgghh3i5m9ZDCHDbSBEkcKNf2XHaNyMMGzdSA7MkfibkqbSKoJ7AsUGllcaZwS7DUUC1pQkNsaMGpy6TiUs7XdYvEgeOVDn9WPLgVl/3PuGisrp//NkSLW0CTU1KFq9faf3z7nkwT73wAyHGT9MnOjdJAVmDT9ZcM7mOxOFk4JClwsIPLt/HV3dj7dBKq77UMpH8xvPd08gWoLLgBFyEWFhMg3Y+JwyArE+UN7mDli6Kr2gHlnluYkPrhRej1Tui2I3Y/IvYTqq8e/4w6Yo4VZqkS9MMmUb47eH05SMJVVoo1iiHwi25lHT3SIZBkMLt2nbzqXS7dk9/UJdok5UfKuHtIf/vYV+Y4xT5NDT2O50skbWmDzgVcNUnfnLwlzqQ2KuRBe+RLoYh4hYFtw/yZiMWIetZVgRYXozEegCE7A8qOp62P5xA7uiVCZZKqZ2e9QRbAy1XUjE+9PQ9Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(316002)(6666004)(107886003)(44832011)(31686004)(36756003)(956004)(15650500001)(8676002)(38100700002)(31696002)(4326008)(2906002)(26005)(186003)(2616005)(66476007)(16576012)(6486002)(83380400001)(5660300002)(6916009)(53546011)(66946007)(508600001)(66556008)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eE9FRVdmbWUzWWNyQmlNbjNPOTloWnBNelJQemxjTCtROVdEMjJkelFYSHJ5?=
 =?utf-8?B?a1RwNEorZFVFTlZGem5DYlJ0L3BUdXorNUNQMDYxc0Jsci9FUURqZFZSdmp6?=
 =?utf-8?B?bDc3Skg1MWFTaTgyaUR2ZVNmWXozR2VwVTlZR1Uyb2duSGNlNWFRcHp3R2M5?=
 =?utf-8?B?eFVXL3k1S3VVWmN2SXZPeWpYQlJZalRCL29PK2tibDNqQkQ4TUtSYzNCcTNO?=
 =?utf-8?B?cHNzbVc2VTZkekROT1pQbmVBT1hjSlRnOG1EcExWWnVmUDJaWmZMWm1OQStU?=
 =?utf-8?B?OEtSOWZWT0t3SEhhNGc4R1dxU0YzY0RwL0FzdTNwRGl1SGNSRUI1a29NQ1pN?=
 =?utf-8?B?bE9ScFptRXErbWc3TU5oc3p0NDBMRTYvOU1RWjE0QzRaR1hlU2NEQmdRT0Zq?=
 =?utf-8?B?b1JRdmlGN2tRWlp1amJETUlLWTRjcnpPY05XV0t3VzhyVHRLRmptY1NzQ0t1?=
 =?utf-8?B?bDF0a0x5QXBRUzBFOGJUdkU3RDFGV1hCcXBOUWF5bzN0T2c5Q2Uvbkd6bW9p?=
 =?utf-8?B?MTBTVnd4WWMxUmVMUHpadjlURUdsU0lXTzlZeTEwOTM4WVFtaDdZWXd5Snhu?=
 =?utf-8?B?dUNnRUE0akYxZVlqUXhPSEdIREJvTmpzN2hJeW95VkNpd3kyM3FlMk10TVFk?=
 =?utf-8?B?VnFpQ0RvbHJ3bzBZZ1JLalhqclFDeGtJT2NrNlNjRmd1VW5Qc29pQ0Rya0Zt?=
 =?utf-8?B?REI5NjZERCtIRlVWMmFZeHd2UmRHVXlpcUx2OWtPRkdSZ20vQWJlTWNqanZY?=
 =?utf-8?B?di9ndzREWlVrMW9heDIxVkoyd3YrMWlQUDRBMlFzSWxnZGV0ZENNczhMTnA1?=
 =?utf-8?B?ZHBRU2hJQWpWZEE2aWtybXdGczZnOE5JUTVHSUVvM3NQc3VySitoVVFaUWhR?=
 =?utf-8?B?VTBMZ0d0QURuQW9yL3ZZVytxdnJReVhQUWJzV24wcndjVXl3QWM4d2pia011?=
 =?utf-8?B?TVJ4akFBVjNRL2piNEs1bEJ2QnZBWkxtbWgxcFp0U2trVTY5MXVTUE1kQjJN?=
 =?utf-8?B?OEszK3BZTUtYb1RGOElWVU56UXR6ZjltU3VwdTdyd240NWdmN1B5enFRS0ho?=
 =?utf-8?B?NVVKWVBCSE9KczU4Y3QxdHYrY0U2Z3hjZmFLNnFSSmJkakMwUmRGM096K0dk?=
 =?utf-8?B?a1lPRDJuTFRUSk8wSUVQMEs5aXVkcTJVdndVNkNLZGlaUUMvT3g4M3R4RWhD?=
 =?utf-8?B?WGJtNndPSW5VbTM2WUk4Y3VHdm5iSW05MXk4SUJLYzFuWFRKVlZ5N3hyK1Fs?=
 =?utf-8?B?aG5tVFZSWHAvVEZTYlo0ckNnYmZBVm9JVHhoeUVIODY2N05VTEFpd0loVjFn?=
 =?utf-8?B?dVpIK09oWlovOUJ0ak1odFN3L0NhTGNnUGRXYWs2TEdKRXJCQ0dONEZLNjVa?=
 =?utf-8?B?ckV3aWkwTXJUSmlnT3dPQU14clNTQzFvZ2hGNjlrRUxubndBNkprN1h6QUdr?=
 =?utf-8?B?d2wwdzNsc2l5V2ltSkllMlR0SWRRV0EvTGlEK0hub2xCeEdXeUhPaTdaWWtM?=
 =?utf-8?B?c1hkYjJ0a2xrTHc0MmdsMGIyemJ1UFhoTkdiYWVvK043WC9MWlFJcU5iSmlL?=
 =?utf-8?B?VFV0b2p5OTN3RDJiQTMxM3dlbjQrSE4xVElkQUZIOGNIY0ZZeU45Tm9rZGVT?=
 =?utf-8?B?bUxVRzN2Vm9OWlVGM2IyUzBzZ1lETWcvN002b0w3TWdjUDd4aTdzMjMxaXJX?=
 =?utf-8?B?SkhhRXltM2dnWHdyUTVuVjRpcWlZOGZKdWZ6T1ZlTU1TRTJnWGlPdWxxM0I0?=
 =?utf-8?Q?ZZr7lRpSSbf5y6QwinghmkM3j1nt/MHbn18V9zK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c66d660-932b-43a3-574c-08d97d98d360
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 07:15:58.5518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AX3h/iC0u1Ax41XJpaDUINk82KJ9LFu8a5Y9czG7La5pabOBBQhGnoTfQvy+IrlJVHPSAXM1d17lFOqBBM9viw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Update the device ID
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
Cc: michael.edri@intel.com, nechamax.kraus@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8xMC8yMDIxIDEwOjI4LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+IAo+IAo+IEFtIDA5LjA5LjIxIHVtIDE5OjQ5
IHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+IAo+IFBsZWFzZSBtZW50aW9uIHRoZSBkZXZpY2UgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnk6Cj4gCj4+IGlnYzogVXBkYXRlIEkyMjZfayBkZXZp
Y2UgSUQKPiAKPiAKPj4gVXBkYXRlIGRldmljZSBJRCBmb3IgdGhlIEkyMjZfSyBwYXJ0Lgo+IAo+
IFNvbWUgYmFja2dyb3VuZCB3b3VsZCBiZSBuaWNlLCB3aGVyZSB0aGUgb2xkL3dyb25nKD8pIElE
IGNhbWUgZnJvbSwgYW5kIAo+IHdoZXJlIHRoZSBuZXcgb25lIGlzIHNwZWNpZmllZC4KQWxpZ24g
dG8gdGhlIGxhdGVzdCBkb2N1bWVudGF0aW9uIGNvbWVzIGZyb20gb3VyIEhXIGFyY2hpdGVjdHVy
ZSB0ZWFtLgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCj4gCj4gCj4+IEZpeGVzOiBi
ZmE1ZTk4YzlkZTQgKCJpZ2M6IEFkZCBuZXcgZGV2aWNlIElEIikKPj4gU2lnbmVkLW9mZi1ieTog
U2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19ody5oIHwgMiArLQo+PiDCoCAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfaHcuaCAKPj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2h3LmgKPj4gaW5kZXggNzcyZmQwNmU5M2FjLi41ODdkYjc0
ODNmMjUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
aHcuaAo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2h3LmgKPj4g
QEAgLTIyLDkgKzIyLDkgQEAKPj4gwqAgI2RlZmluZSBJR0NfREVWX0lEX0kyMjBfVsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgMHgxNUY3Cj4+IMKgICNkZWZpbmUgSUdDX0RFVl9JRF9JMjI1X0vCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDB4MzEwMAo+PiDCoCAjZGVmaW5lIElHQ19ERVZfSURfSTIyNV9L
MsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgzMTAxCj4+ICsjZGVmaW5lIElHQ19ERVZfSURfSTIy
Nl9LwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDMxMDIKPj4gwqAgI2RlZmluZSBJR0NfREVWX0lE
X0kyMjVfTE1WUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHg1NTAyCj4+IMKgICNkZWZpbmUgSUdD
X0RFVl9JRF9JMjI2X0xNVlDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4NTUwMwo+PiAtI2RlZmlu
ZSBJR0NfREVWX0lEX0kyMjZfS8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHg1NTA0Cj4+IMKgICNk
ZWZpbmUgSUdDX0RFVl9JRF9JMjI1X0lUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDBEOUYKPj4g
wqAgI2RlZmluZSBJR0NfREVWX0lEX0kyMjZfTE3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MTI1
Qgo+PiDCoCAjZGVmaW5lIElHQ19ERVZfSURfSTIyNl9WwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAw
eDEyNUMKPj4KVGhhbmtzIGZvciB0aGUgcmV2aWV3LgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
