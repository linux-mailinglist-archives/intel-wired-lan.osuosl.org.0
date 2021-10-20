Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF4B43520A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Oct 2021 19:52:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0888340771;
	Wed, 20 Oct 2021 17:52:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CApRl3kHHz6I; Wed, 20 Oct 2021 17:52:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09A5340770;
	Wed, 20 Oct 2021 17:52:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C88441BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 17:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B434B60AF6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 17:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4vyY5m7916J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Oct 2021 17:52:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29876607DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 17:52:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="228795055"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="228795055"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 10:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="494739800"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 20 Oct 2021 10:51:41 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 10:51:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 20 Oct 2021 10:51:40 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 20 Oct 2021 10:51:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m51YW4409sNDDCmBjoo3hgzWi+iPsdh0Jlq2pbVdJzMLKWqkbns4ZIH0vqGWyzyt4HPfKQao198GtmKrbECB7cPgPnZxqdGLFeaoS263k9zGzkFelDy8KT11e8b03R6TLKpS5tVj3EXE2hkaMrieqIKu9sPt5dls9qpMneK2UuLZVPNmPAV96w0avQghRGgtjwTjeAhflBjF/fFLK25WaX7Lz4jwAvGTeoP9eLZijGMi0HE5YgwIbP5QjqA8rlIfZ6fo0Zzrhd2KZycJqzoAPf2MlL7TWy1bU8vjPCEV6H0qEOV9uR1+CUgQvE0CB21iBJt1UVk8Bh717GXAr76Lyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KM39yiQ5HEU5kOaRIc9BTj+M43C18cCvVETXkPIsF8o=;
 b=caapfUKoLmVVlxU3fXt5UzFXMfpifMNG9gIvDmwIoInlxe67s8iRAoqIwkSyzkSxg8WhdPE3ZD6shvF7fpP59hisoDd4iZA1c4ijVnlRaSkO3sqvgJ4ATSokWyISFlm8DqRilcgxM9dA+iGipPxqpFZhMs2rN1YW0TzH2Jyu9d2+Har/qBzYifs0FJK3rhunAwV+0JcMoh8addLitaf/bgjV6BdNo7QGsddvplNCuTQJudP72uNnvWudepi0jG+7vvUZeXBcRZ9hazXmyci0IarPqF42zcbh+NI0BlhmQWUxAoJkJqFQakbknOn+yHYjUzsGZ4JvmmFrHV4hAaItsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KM39yiQ5HEU5kOaRIc9BTj+M43C18cCvVETXkPIsF8o=;
 b=sGK1Ff6hUo+fy5AQNzvdaYxxtAy8muGm7zw+0dvMs4642suf7u7dP20DvbOJbrjhoyzuum/Td+zfGIewxTeJHNFPZQ9QC16liQovdOxket7D4/dhuqwVAZxJ9zS7Jzx2dsN7+A3oZv7Dh4AJMCnaiBo4jyguZ1ZKTgiPJ97Z8hE=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Wed, 20 Oct
 2021 17:51:39 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%3]) with mapi id 15.20.4608.018; Wed, 20 Oct 2021
 17:51:39 +0000
Message-ID: <7e048277-c1df-0e3f-213a-708a22c4d43e@intel.com>
Date: Wed, 20 Oct 2021 10:51:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: luo penghao <cgel.zte@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, David S.Miller <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, luo penghao
 <luo.penghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
References: <20211018085305.853996-1-luo.penghao@zte.com.cn>
 <fdd05a99-7cae-c6c2-f44a-d48202fb0543@intel.com>
In-Reply-To: <fdd05a99-7cae-c6c2-f44a-d48202fb0543@intel.com>
X-ClientProxiedBy: MWHPR20CA0045.namprd20.prod.outlook.com
 (2603:10b6:300:ed::31) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR20CA0045.namprd20.prod.outlook.com (2603:10b6:300:ed::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.15 via Frontend Transport; Wed, 20 Oct 2021 17:51:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1cc15baf-7509-4365-9dc6-08d993f2448a
X-MS-TrafficTypeDiagnostic: CO1PR11MB5169:
X-Microsoft-Antispam-PRVS: <CO1PR11MB51694DB80C0958724E5CDF6497BE9@CO1PR11MB5169.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MsbYuQK3+o66BfH6+aLtcdLYFTRqoi/HXueVqrtgIjS7XOBNjU4+IjUUvp6ZA4eV9WRdCReW2Cw1FLV4WkO8ori26mCm+LtT5DT1SdnlFtboxP3Y0X30gMqBeviWjqEFa6DLEMzWRLUXWAmCUMyqyBlTtdQkQ89q22pLTcmLVhSmoz+2aZPQia20+hW34xzLXhgfLEY9NZjuZeSFkz2cQ3QpLs0N9nnARzdIR8t/C59QC2Nlra5xS5fAtI5dP6CBE7fv0PRXvxG6IyiUiNK2EWRUNvVC2uasCR2z/j/iCOxuOHja60PQaHwmPmhkFjlYXRJ2E2wIBCTBjnhsQrBK6g49pMOdAf5RW4gsSqBTLXKmX56nKGqap2CmHCGfedIVy1x0eoRH3y6fy9DPziK21kmtnM/crwnQbP8QHPYAcmy+7C5rHYKpRrpDbIqxRto6mm3A/mVI21dImH2dWaAejrPUM0XImwTk5y2TVr5oZzHHMOFyVM4WPrpFcRygKfTRIjYi7VJEX+EJjgT41oP8nOaMiobCdJnjrDAHO1n028UqOSGfJdEIa90BgqNu2K3dn9keajyzFMTWcnk3NZW65h/RFThVhEMYZ7ehPsFufM8wO8WadZsncc0u+gouzvFnZdjvccXrwKXXm6oskhXYVSzcssMF9O99JAp4UA8wvxHL+x/0TTtUxoHv6RojtPmB/zAHup2jDlf9sEIGLaKosxweaZ/ckVvbA9rHbAOhiYUAnKErHdsiQ0guVOFa7Yko
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(66556008)(66476007)(956004)(186003)(82960400001)(8676002)(31696002)(2906002)(53546011)(31686004)(44832011)(26005)(16576012)(36756003)(316002)(8936002)(83380400001)(508600001)(6486002)(110136005)(86362001)(38100700002)(2616005)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UElFei8vUUQySVk5V3lsZHNxeEhIZVB0dkU2VEhKVGVUdXVrc0Y2aHdEZG1V?=
 =?utf-8?B?Ny9XTUE3dHhLMmpWbkpQTVhqb1JhVUZLMVVJZ0xGWVB5UDlLV0JWdEMrWnZN?=
 =?utf-8?B?cFI3NXFSSWVZUEQyTnZ4SjB0RmFnazRrUzFSeVp6MmR4TElaS3NqYVExR3RO?=
 =?utf-8?B?STRIY2p5RlFWYVIrUGJXcW5GUW5xY3NDVVFTRzFsOFU4UmhvMGxnK00rM3BX?=
 =?utf-8?B?WERiT0VacE5uNHhoTXp6SDhTbUFORWRaKzFEMUVYUUdFZnh5eXROSHZZZGFi?=
 =?utf-8?B?UzhoblNMTmlIZEpOdXhGU0pITDdhZDJwZFdldFFjbndUOFA1YkllM0lReE1K?=
 =?utf-8?B?emFFS3VubEVPZVVnNVlyQUhKWjNRMFVTbFRuK2FrRFhBNEVRQjQ4L2VFNlda?=
 =?utf-8?B?Qkc4aWV2ZWl3THFUSkxiMzN2YngrUDRnRkZvMWpybWQ3S1F4ZGw1Yk5rdnJl?=
 =?utf-8?B?cGtXS2ppNTc0TDNuQnRXTzBuUFVYMlhzRnFicW1HUmQ2YU5XT09QVlF4TnA5?=
 =?utf-8?B?cjJLQ0FkYkh1elY4QXR3aTNtNlUxUkdCOGNTM0RvRGFNN2lBMlZ5VEoycnFo?=
 =?utf-8?B?SkpHNFhaN1pDdHRqcjViQXRKVnhzM1QzdnA3NWdmNnZ2bUtBN0Q5YVVPSGha?=
 =?utf-8?B?eDdYWS9QblFQeUIxU0xXcG54MitEdmhSTkNtWDNCOElRbm9pSDI1NlZDSnFJ?=
 =?utf-8?B?aUZFV01yRUd5YnIwRG9VNXJxYktMeHZKNGdzVVFvQmJ6N2NFWVRaaThKWW1Y?=
 =?utf-8?B?QXRCcGhTUDk2TE8yUkR5NDgxcnlMVUswaVJSb210cVd3R1FHUncwa1lNVTFr?=
 =?utf-8?B?Q1JveHdMcm1wRjlsS2pqOG14Z3BjVTgvb3NEL1NJdjk3N1ZwaXhzMWI0VUtL?=
 =?utf-8?B?STJndGlGdE93RStRUTJvdnByMzgrU0gwY3RRU2o3M0V0ODhGTmxGc256OVhw?=
 =?utf-8?B?a083QzNxTk5Wa1Nzc2x5bnJGZFFmaTJhZzBRUmp5MFNJbEUwbHh6dW5xaWJv?=
 =?utf-8?B?dTh5WnJzdlBwN2plVUlxMWwxTi94WHhqV0cyN0RGT2l6ZkFuT0llN3kxK1lK?=
 =?utf-8?B?Y3dndnFDd3VObjhFZDFxcG9lbE5ITnFxWVhUd1hrSmVXTUgxbmJUYUY1Z1Vi?=
 =?utf-8?B?aEF2dWQvL1dHTi8yOVZRbURVVThkaTl5TGZSd1JOVWw5RnlRSTZoSFVqNStC?=
 =?utf-8?B?SWp0UE56dTU3Z0wyMkFaMUF5RDl1NTNETmdTY0MyR0FCa2NnSG4rWnpuYkxV?=
 =?utf-8?B?UzI0NXlscE5uYXBlcEVPVE1xZFM0NVJqNVViUUdQdzFNQmdaZjgyWWEzSG45?=
 =?utf-8?B?WEVtc1llV1BWaWplcU9jNDV6d1g3UW9wWEQzZzh4MURESzJqSTlvWExEZEdI?=
 =?utf-8?B?QTFpR252cXc0WC80cDBKR1hNbEFmejY2emlWQUovVmVSdk5rd1hyZWJ4Nisv?=
 =?utf-8?B?YWlyTW56akp2dHNRME45ZVZSYjhhc25ncTVtL2xlWXpmc3BDZDc1YmxaS0xC?=
 =?utf-8?B?N01FNWJEVTYvUHRBSnBmRE0yMmhmanJyNm94ZVRUL3huUXQ2N2hPandCSHNr?=
 =?utf-8?B?SUcwUXVqQ09BYmFZaUFUWjlacjY2Wm1QKzM4RTNoUzE0RG0xck0zTS9zU0hI?=
 =?utf-8?B?ZG42dUN4dFU0dzF1cmdlWW05L0ZmZXU2QjNsN3RYWmpyOXM1U20wQTcrcUpK?=
 =?utf-8?B?VFVqK1p0OWlyci91YXVNQTZ6YjJ2ZXZlSFNqMyt5S0x4Q3VFS0FkYVgrTWkw?=
 =?utf-8?B?RjdYc2Y4Y2hwVUpWQmRYVkpndS80ZWFTbXh2a01pVFVZRmFYVy9qQmRBMHdH?=
 =?utf-8?B?clprcCthOG5NNzBGRTdwMFBTT2UrazltbTZKT1BkTjkvYnQvQnFtZytmaDBK?=
 =?utf-8?B?YzJVRElmdllaU0hZcEd6d0hDNWxydUZCY1Q1K1ZuK2t4L0tEeHo0ZFVabmxC?=
 =?utf-8?Q?N58mJcrKXC/ydgVHGV6i693u+8PSDMaF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cc15baf-7509-4365-9dc6-08d993f2448a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2021 17:51:39.1945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jesse.brandeburg@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5169
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH linux-next] e1000: Remove redundant
 statement
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMTgvMjAyMSA5OjEwIEFNLCBqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbSB3cm90ZToK
PiBPbiAxMC8xOC8yMSAxOjUzIEFNLCBsdW8gcGVuZ2hhbyA8Y2dlbC56dGVAZ21haWwuY29tPiB3
cm90ZToKPj4gVGhpcyBzdGF0ZW1lbnQgaXMgcmVkdW5kYW50IGluIHRoZSBjb250ZXh0LCBiZWNh
dXNlIHRoZXJlIHdpbGwgYmUKPj4gYW4gaWRlbnRpY2FsIHN0YXRlbWVudCBuZXh0LiBvdGhlcndp
c2UsIHRoZSB2YXJpYWJsZSBpbml0aWFsaXphdGlvbgo+PiBpcyBhY3R1YWxseSB1bm5lY2Vzc2Fy
eS4KPj4KPj4gVGhlIGNsYW5nX2FuYWx5emVyIGNvbXBsYWlucyBhcyBmb2xsb3dzOgo+Pgo+PiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ldGh0b29sLmM6MTIxODoyIHdh
cm5pbmc6Cj4+Cj4+IFZhbHVlIHN0b3JlZCB0byAnY3RybF9yZWcnIGlzIG5ldmVyIHJlYWQuCj4+
Cj4+IFJlcG9ydGVkLWJ5OiBaZWFsIFJvYm90IDx6ZWFsY2lAenRlLmNvbS5jbj4KPj4gU2lnbmVk
LW9mZi1ieTogbHVvIHBlbmdoYW8gPGx1by5wZW5naGFvQHp0ZS5jb20uY24+Cj4+IC0tLQo+PiDC
oCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ldGh0b29sLmMgfCAyIC0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfZXRodG9vbC5jIAo+PiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2V0aHRvb2wuYwo+PiBpbmRleCAw
YTU3MTcyLi44OTUxZjJhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMC9lMTAwMF9ldGh0b29sLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDAvZTEwMDBfZXRodG9vbC5jCj4+IEBAIC0xMjE1LDggKzEyMTUsNiBAQCBzdGF0aWMg
aW50IGUxMDAwX2ludGVncmF0ZWRfcGh5X2xvb3BiYWNrKHN0cnVjdCAKPj4gZTEwMDBfYWRhcHRl
ciAqYWRhcHRlcikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGUxMDAwX3dyaXRlX3BoeV9yZWcoaHcs
IFBIWV9DVFJMLCAweDgxNDApOwo+PiDCoMKgwqDCoMKgIH0KPj4gLcKgwqDCoCBjdHJsX3JlZyA9
IGVyMzIoQ1RSTCk7Cj4gCgpQbGVhc2Ugc2VlIG15IHJlcGx5IGJlbG93LgoKPiBUaGFua3MgZm9y
IHlvdXIgcGF0Y2gsIGJ1dCB0aGlzIGNoYW5nZSBpcyBub3Qgc2FmZS4geW91J3JlIHJlbW92aW5n
IGEgCj4gcmVhZCB0aGF0IGNvdWxkIGRvIHR3byB0aGluZ3MuIFRoZSBmaXJzdCBpcyB0aGF0IHRo
ZSByZWFkICJmbHVzaGVzIiB0aGUgCj4gd3JpdGUganVzdCBhYm92ZSB0byBQQ0kgKGl0J3MgYSBQ
Q0kgYmFycmllciksIGFuZCB0aGUgc2Vjb25kIGlzIHRoYXQgdGhlIAo+IHJlYWQgY2FuIGhhdmUg
c29tZSBzaWRlIGVmZmVjdHMuCj4gCj4gSWYgdGhpcyBjaGFuZ2UgbXVzdCBiZSBkb25lLCB0aGUg
Y29kZSBzaG91bGQgYmUgdG8gcmVtb3ZlIHRoZSBhc3NpZ25tZW50IAo+IHRvIGN0cmxfcmVnLCBi
dXQgbGVhdmUgdGhlIHJlYWQsIHNvIHRoZSBsaW5lIHdvdWxkIGp1c3QgbG9vayBsaWtlOgo+ICDC
oMKgwqDCoMKgwqAgZXIzMihDVFJMKTsKPiAKPiBUaGlzIHdpbGwgZ2V0IHJpZCBvZiB0aGUgd2Fy
bmluZyBhbmQgbm90IGNoYW5nZSB0aGUgZmxvdyBmcm9tIHRoZSAKPiBoYXJkd2FyZSBwZXJzcGVj
dGl2ZS4KPiAKPj4gLQo+PiDCoMKgwqDCoMKgIC8qIGZvcmNlIDEwMDAsIHNldCBsb29wYmFjayAq
Lwo+PiDCoMKgwqDCoMKgIGUxMDAwX3dyaXRlX3BoeV9yZWcoaHcsIFBIWV9DVFJMLCAweDQxNDAp
OwoKbXkgcHJldmlvdXMgbWFpbCBzZWVtcyB0byBoYXZlIG5vdCBtYWRlIGl0IHRvIG5ldGRldi9w
YXRjaHdvcmssIHNvIApyZS1zZW5kaW5nLgoKTkFLLiBQbGVhc2UgcmVzcGluIGlmIHlvdSBtdXN0
IG1ha2UgdGhpcyBjaGFuZ2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
