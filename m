Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4742A3C99F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jul 2021 09:54:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BC7A83D43;
	Thu, 15 Jul 2021 07:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PYHWTPqKtG3l; Thu, 15 Jul 2021 07:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 933C383D31;
	Thu, 15 Jul 2021 07:54:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7D21BF869
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 07:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04E0B4060A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 07:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-qeHpFcApk7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jul 2021 07:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CE09400CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 07:54:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="232321094"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="232321094"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 00:54:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="494474847"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 15 Jul 2021 00:54:21 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 15 Jul 2021 00:54:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 15 Jul 2021 00:54:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 15 Jul 2021 00:54:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 15 Jul 2021 00:54:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMHAgQ8AqvE3FDPbOky+iu0X8JaNJhMrTIsSYwcJjhMo5XTgzhIpvR3ZyVfWEEPofLYlwjZV4Eu82O9F98NaFLcGMN8WlEBBu6h79iiM0tmuWNJvGOOpRNtSecpUySkKu5rT3CLlgDKkBJdpkHuOXn+bE2dcFNl1c1r84ijnQGRXg1WhVUGNNP1cPa2tI29pjyz8V054KJyv7cC1FY4KCnBs8V7Xkvi7GsNQeFIKgurdhhj90XSskQNlZdjZs9oIz5c7vaqcooIhhxOefQY9PoyX1/NHjWyzIXq0owzOKR5h55IpK7t500hI/0TA/rXsSW+6tcuxAOSIpForWubDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5wt8qqoqTn96PpSq47n1cLh6Hy/vLbZ/Apt4BtShxk=;
 b=QKa3DvNte/v4CGuAnnvrMzDvQcvWzZoBT/dIzzINbtCZm3Y6mjXnVVa63Wf1hc5qvTyCE3Q+XXXHLQVtEaMnWERUS11qLDzZ/LCHP3uG2E29MMO9Ud6zl/UMChBFOqE5k50UETL1Cu3j1qRp2Qhrnw/S5Y6VPai/C6H7FDv9Up+Y7pAK3lzhNl/nZrBrowhY9zusAL/3N4lPYejS75OBy2PTBoIOOLPCvhcydbq2JITB5n4uyLmGAHvfqKxbXeTX7Gj6yqPqaErnSb0ktDTvZN+57XPk+0IeMwsDTXm2Lfs4+GgC4pcOTqI/vAqZ8M4dPEDSgZJelnwe91B4Y1g/aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5wt8qqoqTn96PpSq47n1cLh6Hy/vLbZ/Apt4BtShxk=;
 b=FisPMzRMPaFZwoclHBNYtDmZ5Vz99JDX4Qe+3aOCUFcQGs//lEUAm1GNhxWcbe9HSQwBJI7yZ3n/5TnJhvyn+nMpyqfoxf88YFJNyodjRyhHxVNE0qLGrETFBVNnkzF021KW8onwbVkCGGa2se5AY8AnW6qe+Sfa1FKeT1e2J6E=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MWHPR11MB1968.namprd11.prod.outlook.com (2603:10b6:300:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Thu, 15 Jul
 2021 07:54:18 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74%4]) with mapi id 15.20.4331.022; Thu, 15 Jul 2021
 07:54:18 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210715070342.2948195-1-sasha.neftin@intel.com>
 <1f8b5f30-3f46-79eb-6b22-2b2e3da7a7bf@molgen.mpg.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <e83e4b2b-a648-cc2a-57c4-9ad56169f2f6@intel.com>
Date: Thu, 15 Jul 2021 10:54:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <1f8b5f30-3f46-79eb-6b22-2b2e3da7a7bf@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: PR0P264CA0214.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::34) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 PR0P264CA0214.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1f::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Thu, 15 Jul 2021 07:54:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 26c8a29b-7ca3-4396-f610-08d94765bfd2
X-MS-TrafficTypeDiagnostic: MWHPR11MB1968:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB19689C6B9C3F85CAE5EA7B8397129@MWHPR11MB1968.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a2pu1D63LAOimtLB7jx/zglWxhkXPfRRq+9nRcfwaF3SfWR/nl/rlrWXCEvk9vqFc0x3kgCDR6Prlu+el1q5fvU8e5SU8rvHndBiO0CRkTb5hlbdx/y1ZVjuiVDIrN8HHzzpGUJ3nLp+tTCbtfC5Om3GI5Vdk6V2KUqXA2ovoVYA5KXPclgHmUtM830U1PhPG4bnRa5JbEZsk9Q5dP5ZWK/99gq0Hl7dX3uy0yKlXjdOxyM2V9lZJX4DnN1Gpi8IZZJqk1eJbHwNVZfkV6whYlseiwtJ0rh68fsbZRy2GklUdHA4OvlIJ2Oa5j9HpQobHgH66eAQ9dP7y4ZSS/6Ux5qXQ532FsKk+01g5HFBV5/gr1/yyr5jyLDAegBtRszlrC5JZyxUGxTgR8vBGgU1zlZM5djJrauz6D24ILBJQrtX6fcMQ+GNHs9CQCTnCEKh/9dcLACOv8Twlwd49bCgY/HfBVbtV6n2kOIK/hBsvP67BPtmeXv/1yERC8KOy1L/Pxjla1RApl6KyqEWHHWUIINLIrCxjI3lKMdVbbkrNqdAa6Fx1c7EtPdoXBx573Rq/jCfFFA5X5+FwFNxEeZyFrA3Gol+pZeA6goRHyUbznpsyZKfMT6YGFo6DNjj3jLLgNLryiEI2OP011dLUlwpDIbX6YK/fh9sC0MD2IPPIXCWgWUGoS6jR92+B0aM8m+w8wJ/M0yklt0pMeCNwe0LoZEeASrh9pFScpxEJZazw8xsT+SjCTOSI3jP3CUGAcKT+AM4Ao33TaoJy66ZfyCoFk/Xsw6a69JNeaXlHtpMstZrT3ENu9gmkiMhYyJg8V6md5P8OWLJbL2r0W8pP8nZrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(346002)(396003)(39860400002)(136003)(966005)(66946007)(44832011)(4326008)(478600001)(186003)(66476007)(26005)(5660300002)(31686004)(8676002)(8936002)(6666004)(6916009)(956004)(2616005)(107886003)(66556008)(6486002)(2906002)(83380400001)(316002)(16576012)(53546011)(38100700002)(31696002)(86362001)(54906003)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmVyM1ErRThJWDhQaFBhTlFYMkhmSWNZQ0hXcjlYS29yOTNieGM2TFlGYUNt?=
 =?utf-8?B?VmRFQVd1YUc3NGlzc1YwTXRzTmRnL0pnR1pramFIQmcxdkt6SlJNelQ5Q3hz?=
 =?utf-8?B?bWVoZ0VMWEpkRCtoa2Rtb1BGZ0hQK1p3azhqV2d6YkdLNkhjUkFhSHMxNkZv?=
 =?utf-8?B?eVlORGJXdHM0b2VUWlVYVFVDUkZmZ01CdjBWbFQrUVhqYVdZcnBORlpac0FG?=
 =?utf-8?B?SjY3cnhLaE5ESGFwSnlCSmFKTlpJcTRzbTFuRkRVdWYzTjYvbXFJY0l0RkhN?=
 =?utf-8?B?aHNYa1ZxUTBjcHNLNnk0UkhVUUYvV2o1aGF3eUlRaUlFb2xscG5qdlQ4RzhL?=
 =?utf-8?B?d1J1bm12bWJGRmkzU3JrNXVsUlBvTWQra29YU05VWDQ4eEhzV0FCSEliakhK?=
 =?utf-8?B?NlZmOHBQTTYrT0NDUmpFam44TTBsamZYSUhxT21LOUwvNGFCRk1SSnd4QTBT?=
 =?utf-8?B?amJWWWdMY0RUaVVnNVZ4dExLTVpHWlZURkJ0cUlWVnY5V2ZoM3lKeGhNcVRB?=
 =?utf-8?B?YXdTSjhteVZSbEd4MlR1TVZpNTJ3RXpheXZybDRkbGMrNFhkaVJpQWlnWE1G?=
 =?utf-8?B?QTNiSDdlZ1puYitPZkNOQzIzeDNjdkovRk8zUDVHOXhya1BXN0I2bHQrZ3ky?=
 =?utf-8?B?VnhUd2J1blhwMnVHMFZvaTBOcVlNYnhYVm8wcS8xSGFyYXNnU1VBQjBEUmxu?=
 =?utf-8?B?TUV0VkxWMG5ta0RhNTlGbnlzeStscW9JNWgzOTJUdVExWkxCamNibzNZdVdx?=
 =?utf-8?B?MVVhMGxmVS82Vys2QWh4NWdScS96S0hRNTNZQldGVkNBa1RlekV2Z1VmVEhw?=
 =?utf-8?B?M1N2N0J2b3hHZkIwb2lkSG40VXB5VVMraEZWM0F5MExoZTRobVRiWENvU0l4?=
 =?utf-8?B?U3VqMDROYWRXM2R5YTVZUmp6elFuV2FtM1hqUUh3MDZxQzIyZTRpc3F1eldW?=
 =?utf-8?B?eExNdTlNTlB1OE52ay9heVBFZ04yU3B0YUtKNGdiQWowa2xTVTNROUoweGdT?=
 =?utf-8?B?TVIwMk5wS25xNkVEODZnWTF1UlJDZzcySXBhMzhTbFU5dlZjVCtodk5MdVFV?=
 =?utf-8?B?TG1qamJQWjFCVkc2bjVua1YvQnloaWVnaEFqaDN5ajBWYXRncldjOGVmMVVs?=
 =?utf-8?B?MXlNNWJGeDQ1R3JVWTJ6cnY3NGpuMElDTFRNNHpmbWwxSjJyaUFodjhHdXZY?=
 =?utf-8?B?bFdJdDhJdnNFd3ZzeEQxbjRFUyttODZoZHNYWFNlRmhzZElXRmY5bWJIak5q?=
 =?utf-8?B?VU1vS1BGaWpGM21uWkN4eWpvSzVkTFZrL1VNRW1OQkdwQktTQkRyNk5CNFBW?=
 =?utf-8?B?T1FIRnFGTHM5dk5Jb1E0OVRpbDdLUFRpQThRWFRHdkJWb1FUMkN3cFBkVVhW?=
 =?utf-8?B?TEpHZjR1TE9OWm10MHJISEUyTXhhVzZiRjRMbTBUN0VtNzRCZyt4TVJmTy94?=
 =?utf-8?B?cWZWVzExOFRqWUQxVUI1Qk90VDVIVStJbXk4RCtmTmJkRmlmemR6dHA3K0s4?=
 =?utf-8?B?T2VqSW1EWTdqRzdzUEJYQWJWMjVVUkRISXM4Wi9aNk9LeUJpZ1JxcE5EMmIw?=
 =?utf-8?B?dU9yR2xEN0VyaWlBTklJek1nUUsyTTNWQmNrdWY0SHBiaUtCNFF0Yno1OWc2?=
 =?utf-8?B?OExlR3FmY2xKM0ZQb1htd2JRenZDM2ZiNjM1aXRqMTBOK1FmT3R3dnR4Zy94?=
 =?utf-8?B?TTZIRGliamJyc2E0S1lyZkxvVDRUdDQ5YldMdVBYb21tTWpiL0Nnb2NkejR2?=
 =?utf-8?Q?g7/4d1+PBU2G/1zFUsNSn2h3InfyWcjBflP04rm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26c8a29b-7ca3-4396-f610-08d94765bfd2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 07:54:18.6463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GakZCzt5KerXKn3RvEURZ8F8AMR4W8+R7R1GNU+8695PtN2PywZeRzOkiM/qJR8ghHBAY7qpXs34DEkuA/JwvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Do not take care about
 recovery NVM checksum
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
Cc: michael.edri@intel.com, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Tsai,
 Rex" <rex.tsai@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xNS8yMDIxIDEwOjE1LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IEFtIDE1LjA3LjIxIHVtIDA5OjAzIHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+IAo+IFBsZWFz
ZSBkZXNjcmliZSB0aGUgcHJvYmxlbSBmaXJzdCAobG9ja3VwKSAobWF5YmUgYnkgc3VtbWFyaXpp
bmcgdGhlIGJ1ZyAKPiByZXBvcnQpLgo+IAo+PiBBY2NvcmRpbmcgdG8gdGhlIEhXIERlLCBpbnRl
Z3JhdGVkIEdiRSBzZXRzIHRvIHJlYWQtb25seSBhZnRlcgo+IAo+IFBsZWFzZSB1c2UgKmRldmVs
b3BlcnMqLgpJIG1lYW50OiBoYXJkd2FyZSBkZXNpZ24KPiAKPj4gcHJvZ3JhbW1pbmcgYSB1bmlx
dWUgTUFDIGFkZHJlc3MuIFRoZSBkcml2ZXIgc2hvdWxkIG5vdCB0YWtlIGNhcmUgb2YKPiAKPiBF
eGN1c2UgbXkgaWdub3JhbmNlLCB3aG8gaXMgcHJvZ3JhbW1pbmcgdGhlIE1BQyBhZGRyZXNzP09T
IHZlbmRvcnMgYW5kIFBDIHZlbmRvcnMKPiAKPj4gTlZNIGNoZWNrc3VtIHVwZGF0aW5nIHN0YXJ0
aW5nIGZyb20gVGlnZXIgTGFrZS4KPiAKPiBXaG8gaXMgdXBkYXRpbmcgdGhlIGNoZWNrc3VtPyBQ
bGVhc2UgcmVmZXJlbmNlIHNvbWUgZGF0YXNoZWV0IG5hbWUsIAo+IHJldmlzaW9uIGFuZCBzZWN0
aW9uLgpPUyB2ZW5kb3JzIGFuZCBQQyB2ZW5kb3JzCkl0IGlzIGRlc2NyaWJlZCBpbiBJbnRlbCBS
Q1IgMTMwODI2NTgxMSAtIEkgZG8gbm90IGtub3cgaWYgcHVibGlzaGVkIApleHRlcm5hbGx5LiBJ
J3ZlIGNjJ2Qgb3VyIGZyb250IGN1c3RvbWVyIGV4cGVydCAoUmV4KSAtIHBsZWFzZSwgYXNrIGhp
bSAKaWYgaXQgcHVibGlzaGVkLgo+IAo+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJu
ZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTM2NjcKPj4gU3VnZ2VzdGVkLWJ5OiBEaW1hIFJ1aW5z
a2l5IDxkaW1hLnJ1aW5za2l5QGludGVsLmNvbT4KPj4gU3VnZ2VzdGVkLWJ5OiBWaXRhbHkgTGlm
c2hpdHMgPHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNhc2hh
IE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgfCAyMSArKysrKysrKysrKysrLS0tLS0t
LS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMK
Pj4gaW5kZXggOWJhZTQ5MzJhMTFkLi5lMjczZTE0YTM0MTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+PiBAQCAtNDE0MCwxNCArNDE0MCwx
OSBAQCBzdGF0aWMgczMyIAo+PiBlMTAwMF92YWxpZGF0ZV9udm1fY2hlY2tzdW1faWNoOGxhbihz
dHJ1Y3QgZTEwMDBfaHcgKmh3KQo+PiDCoMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIHJldF92YWw7Cj4+IC3CoMKgwqAgaWYgKCEoZGF0YSAmIHZhbGlk
X2NzdW1fbWFzaykpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGRhdGEgfD0gdmFsaWRfY3N1bV9tYXNr
Owo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9IGUxMDAwX3dyaXRlX252bShodywgd29yZCwg
MSwgJmRhdGEpOwo+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJldF92YWwpCj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiByZXRfdmFsOwo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9
IGUxMDAwZV91cGRhdGVfbnZtX2NoZWNrc3VtKGh3KTsKPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChy
ZXRfdmFsKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4gK8Kg
wqDCoCBpZiAoIShkYXRhICYgdmFsaWRfY3N1bV9tYXNrKSkKPj4gK8KgwqDCoMKgwqDCoMKgIGVf
ZGJnKCJOVk0gQ2hlY2tzdW0gSW52YWxpZFxuIik7Cj4gCj4gSeKAmWQgc3BlbGwgaXQ6IE5WTSBj
aGVja3N1bSBpbnZhbGlkCj4gCj4gU2hvdWxkbuKAmXQgdGhpcyBiZSBhdCBsZWFzdCBhIHdhcm5p
bmc/IEl04oCZZCBiZSBnb29kIHRvIGVsYWJvcmF0ZSBmb3IgCj4gdXNlcnMgc2VlaW5nIHRoaXMg
bWVzc2FnZS4gU29tZXRoaW5nIGxpa2U6IFlvdXIgZGV2aWNlIG1pZ2h0IG5vdCB3b3JrLiAKPiBQ
bGVhc2UgY2hlY2sgeW91ciBmaXJtd2FyZSBvciBjb250YWN0IHRoZSBkZXZlbG9wZXJzLgp0byBi
ZSBjb25zaXN0ZW50IHVzZWQgc2FtZSB3YXJuaW5nIGZvcm1hdCBhcyBpbiBudm0uYzogKCJOVk0g
Q2hlY2tzdW0gCkludmFsaWRcbiIpOwo+IAo+PiArCj4+ICvCoMKgwqAgaWYgKGh3LT5tYWMudHlw
ZSA8IGUxMDAwX3BjaF9jbnApIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmICghKGRhdGEgJiB2YWxp
ZF9jc3VtX21hc2spKSB7Cj4gCj4gQXMgaXTigJlzIHRoZSBzYW1lIGNoZWNrIGFzIGFib3ZlLCBJ
4oCZZCBtb3ZlIHRoaXMgd2hvbGUgYmxvY2sgaW50byB0aGUgaWYgCj4gY29uZGl0aW9uIGFib3Zl
LgpGb3Igb2xkIGRldmljZXMgd2lsbCBwZXJmb3JtZWQgY2hlY2tzdW0gcmVjb3ZlcnkuCk5WTSBj
aGVja3N1bSB2YWxpZGF0ZSB3aWxsIGJlIHByb2Nlc3NlZCBmb3IgYWxsLgo+IAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBkYXRhIHw9IHZhbGlkX2NzdW1fbWFzazsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0X3ZhbCA9IGUxMDAwX3dyaXRlX252bShodywgd29yZCwgMSwgJmRhdGEp
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0X3ZhbCkKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0X3ZhbCA9IGUxMDAwZV91cGRhdGVfbnZtX2NoZWNrc3VtKGh3KTsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldF92YWwpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIHJldF92YWw7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKg
wqAgfQo+PiDCoMKgwqDCoMKgIHJldHVybiBlMTAwMGVfdmFsaWRhdGVfbnZtX2NoZWNrc3VtX2dl
bmVyaWMoaHcpOwo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsClBhdWwsClRoYW5rcyBmb3Ig
eW91ciBjb21tZW50cy4Kc2FzaGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
