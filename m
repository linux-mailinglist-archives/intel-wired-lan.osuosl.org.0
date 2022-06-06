Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01853E140
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 09:13:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4835C60E46;
	Mon,  6 Jun 2022 07:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f5lYO2-3fQEQ; Mon,  6 Jun 2022 07:13:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 489F560BF0;
	Mon,  6 Jun 2022 07:13:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5BB41BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAD0C84113
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZkL9yEK315E for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 07:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3307D84112
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654499616; x=1686035616;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c5hBPOeHBtlpZ/y+JDZGGWZNX75AFPifUiYVRxo467k=;
 b=PqNR8ODj8219oFuZBLMkQtQnrxVQIU2YoJC2o7k21UV1HxQJCbczP4U3
 8YipjtVcWUZDMzd1ha2amJ8awRdpif2uPonEkIs8LCzUkU6rC3Z4+8hfC
 QuO5eucaR3LBLda5w98AncpMqpqhSDf13YUrFKygnb7LY6HsIUIg++IjE
 ZvbM2v0kB7Nk1TrDqrQsJdLuJAFv3wWLnBKR/0fBZtILkj2+5ulbjRQSd
 ULuilvmf9ooTl4KE2OLRc2rakkqO/DWZaFd+VhTFxfPcNzz8/uC8/EliE
 bXEavbGgDD3/qgM60ePT6/mCmdU8ap2fULDBkgaAHwtF8pOyoa5q63RXr w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="256470273"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="256470273"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 00:13:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="532020122"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2022 00:13:35 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 00:13:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 00:13:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 00:13:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=In09lmWJVLdAIpHlXTyhxgG+KMykaaMux/uPZkG9kACOHXugkgwojm5lqU0kGAKrfmZk+i15S7lvPxc4vMh8020cPgFPsy04sCS2rUV9dvJ/mDMeWS2pUW2ILbMwfRcfM11UHu0Il6UfcxzH2bURDz4dK+BDN6DRft1UcBUHoQjlQIN6d2Ql9eXFZ3Re4HWczuhtXIRxoQG8oLV/qayyZBlHnrInzkNFPz7P8W07X1bpkDBZ/KOHgTepGm4lTrZRkJ40zuW0Ez7+2aGINX1wJWNYyg/rTHoDnA7l4DKyXKA/w9tQIxHvfa3nJbe9AV/xAzCfcjOQ7lULFJB+YpDrHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5hBPOeHBtlpZ/y+JDZGGWZNX75AFPifUiYVRxo467k=;
 b=Aph3ttg00MI7AoRjPC1l4V9xoMzsnAwZqzimXVi0p3Hw5DV3SxODa0c/VtShfxM9z5vavTxKjdYCHhaB/qEoiUkSOQVbxXqMCR2F5bf2IJvyAlefMlY+kisAyUK5NKJdTttvWKQWHVkCbuDSMLFbz2yOoJdZ+FZJBNQcx9yIMeFGJ5MNz1n3G+mJkNzu4OS1rvjm7ppFpyTpKVpQ+IYwqLlndF80tMIyT8XDirm0cxMTf2Ip0gQYN4nDi7OdHpRDDaBK8Fre98ATWtdibdO/sf+8PbCZV7ZXZ7ewZG2VCZ95Wx2J5FA50rgavT/uhk3A1nZxyjdkpSHhUJ0IH/ctJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by DM6PR11MB3290.namprd11.prod.outlook.com (2603:10b6:5:59::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Mon, 6 Jun
 2022 07:13:31 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8%5]) with mapi id 15.20.5314.017; Mon, 6 Jun 2022
 07:13:31 +0000
Message-ID: <7e6e14b4-945f-a0a6-ec71-e049e68da24a@intel.com>
Date: Mon, 6 Jun 2022 09:13:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.1
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>
References: <20220606070747.3088370-1-anatolii.gerasymenko@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <20220606070747.3088370-1-anatolii.gerasymenko@intel.com>
X-ClientProxiedBy: AM6P195CA0005.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::18) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f6101b9a-edb3-4f2d-6f0f-08da478c0ff0
X-MS-TrafficTypeDiagnostic: DM6PR11MB3290:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB3290A24D9A43ACE0E6364FCD81A29@DM6PR11MB3290.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tUJ81bR8uVIAA99SCPozZYwC01OpnFwWPwMLiTTlRgDZUHGe3KMI3XP1tNPcJxMpbNboZnChL1TtZEpmMKlu93QniB3OWhKaAfjEhTG0UAE6+pMrpfC39bzuBameIUF1ZffQFYSQDajHvTCRpxwhm5nMn048zm3M6NWsu0rGvPCpdK87kG+ouBFKtxWL4pRjW4VXWE13zaNGsJyB9dY+cWheo3Rc+YumtK0NhwTPixZVYQzXqiLnahmKx8WkQEjVNJ1V2JAXRuxwPFYttP4jF6oKSKxYXPau3N5qnJ5QETi5dqBwOcqVr//uMh6/ABO82/OcJsRmM6jJeLTnCmcg8XXZQm+/zzoM9t9oql4Ol0+iqCQw6T65oImBz0vZHoHf6tcK2NU941qMSS12Jr+uo1y0Dc7KmgZx5l/fzvgIJaxr7pI/ViQ6kE/UYUVGaQ+2fZ0lU/NFvM0iBcdAH52zuAEN1xGG/6LctPbBKyC861Xj6bJJR+lpAh1C5b8JQkFzkl2LcuAnDtVGVmyoM8rx8Y77/lwZCB5Y1qr7mOJfLbR+NJXVGZf7N4mSM7q1Vrjs5tZmXPnSIArJXn6pLNZAajijQbV2gcr6IpEblV8pwwtQ3VXUJ4wSORIJGYWKH9MXDgqI6lBKP7GbV8/iH9Eu1KB5Bsuz5BWtGJHGGdz3GrRjHQ/7lsndvv43mjG99U/welAaTJVYcYzWD44w5HfnrEmDvjr8QIqSOIsqlPsUi9LvVeSMenbVEJOHoFgFheM5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(2906002)(186003)(44832011)(6512007)(6486002)(6506007)(31686004)(38100700002)(2616005)(26005)(36756003)(508600001)(31696002)(6666004)(558084003)(6916009)(8676002)(86362001)(8936002)(66556008)(66476007)(66946007)(5660300002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajJZV3k1U1dYQ0ZpM3BWcDE2K1NCc3dad042QXhIMkJGMGRnMEkxdENOUlQ3?=
 =?utf-8?B?d0VuVXhLRlhEbElSZzNBOURKOXJOdE8vcnphMGY0cjJ1TWpTelhlVC9JeG9T?=
 =?utf-8?B?T2tNSk4xTjRwais3NWM5SG9SYkswdTlkYTUxNHFWSklmT2ZDNXVJWm1KblVv?=
 =?utf-8?B?aU5BU1Qwa0wvZVgvM1NxL1VBZEVoTE5zeUJLR2I0SVBPZlg1Vm1GUWludkJm?=
 =?utf-8?B?bytxMUJwQWRHc09WaTZwTnAvcUlBNStPS3NiM1RVc0ZHK2FaSGs5c25Mb1pN?=
 =?utf-8?B?dmxkbElFUVBONWtNYWxzR1ZqRjNGSncrd3VRQ1NKTGt0RXN0U3VTTzBzL1RY?=
 =?utf-8?B?RS9PdnBISUFNZHNJeHJWZU1wbEtnQSsyZ3piNUtHVDZHMmFJNmxwdDg5NnUw?=
 =?utf-8?B?ZWo3ZitUclVxY3p1ay8wT21tNXE2bjVqRnpBN1JkWVpDb3MxWlZRT2NCMXhM?=
 =?utf-8?B?VFBma3g0cGs4aVIrYW8zbHh3dTU2dDJVQSs4RzlCMm5vUVA0azkvTGEvSmJr?=
 =?utf-8?B?TStMWXBYRk9JZE51VXRKckV3UDdMaXcyTENmSGFUV2U5ajFRMlN6dTJtZVFU?=
 =?utf-8?B?YVZRclRvMHNPUldBbVNGTjNLVXhKMzIyZDNGTVpWZHhGM0w0aFJaZ1k3NE1N?=
 =?utf-8?B?VWZFWFgrMld1Zm55UnhjbU1JQkhuSTYwTUFITFBLcjZMY3F2WkdHUSsxemVO?=
 =?utf-8?B?RmFNTkNEODhXVVRZR1JYN01XV2I2bXB1cGhPbVFkcW1oclJtZzlobWl6amtB?=
 =?utf-8?B?Ym8yZ0lHZUVyeVNJNkJTTDRGRk92QjVQOFdqRkN4cllFb2dBMTFaVUJVaWhW?=
 =?utf-8?B?U0tqUCs1MVBVUWNjb0NFbWdWSFZCcXFyOHBhZmJyWDVLQ2RjRVNxRDIwNDZP?=
 =?utf-8?B?T0xsdy9nZUpCd0NmOFBLRitXOWdJK2lGT1o2T01Ta1M1THFESDBnUWQ0MEZY?=
 =?utf-8?B?R1drNDg5czRLYTFwV3k2NVltcThCQWkxWjhRNE1lTVA0UHJyZkhFTmpQQi9O?=
 =?utf-8?B?Q2tFWCtqMWlFcDBaQlNiRkttT2cwMnFEVlZxUGpvQktUK3QzREppWFd5N1ZC?=
 =?utf-8?B?Q0RsaXdYY2Jsb3VwMVRWZHVYVXlGU3MwTXBOTnF3T2hDcmJSTTUwUUVFMmVR?=
 =?utf-8?B?V1ZVRnNmUU11Z0pmeEpWRjdmK1E3ZnQ1ZUVYb0tOb1Z6Q2RxRFArN01JYjlp?=
 =?utf-8?B?WFo0NXJVSm00c1dGSVpEdTB1dmpVRnZuM3FmeldnVEUvcFVkSUJ4RFRTUkli?=
 =?utf-8?B?c043RUlJd21xdFRueWQ5UzVpOHZlMnlTaitUNFdETXV0L3NRenZTS1I3R1FS?=
 =?utf-8?B?Y1JOTDlTOWFkZ3dNNHNzSkNMdUtyeCtYRm5GbHY1Y3hVN1hiR2RXbjEzWjZl?=
 =?utf-8?B?NGFzSWVVb094a0gweU93QW5GMHA0VndQVHhGYjI1UGcyWFJBZ0E2SzJ0UWhE?=
 =?utf-8?B?clprWXRHaFo1S2NsSzV3ZVJidkdscTR1TWNqNDBVdjdIZjFZWjYvS2VxL2p6?=
 =?utf-8?B?d3hna011YzczZ3ZYSHBjMnpaTExtVDEyVkFYR1FwbnN1b0w4WUc2bHdnV2d3?=
 =?utf-8?B?bXBrenBJa01YQUdST3pEZjR4MDQ5cndvdkpTdUU0bzBOSWRSRnE5am1MVWg5?=
 =?utf-8?B?QkY3VW1YcFF0Qm5FRmVobGcvRnVEZlIwQVBEWUNtNTRyYXc4QlF1Yk5sWUZ0?=
 =?utf-8?B?bWxWL1pZU29XanFNb0tsODNuM2dJOUFpU2ZpZG81QmtETzdPRGRjVURtc1hG?=
 =?utf-8?B?dVNXbmJ4TFhGK21JZ08rRWk3ai9yWkNmNy9uUnc0MVRPM3laSllpeWliUFp1?=
 =?utf-8?B?RWZBd09VekZDV1MzVDdkNXJCOTY5RlF1YWdXeGtYV3V2ZzQ5UTU2VnppY3VG?=
 =?utf-8?B?K2hSK0JpbzF5L3BpamQ2dHFMMWlndkNJVXVZeEZMSjkwS1BKeVlVYnhoMXA1?=
 =?utf-8?B?ZHJHNjZtbTZCR3RJOTViSG1SSXlYNkZ3MmtnTE1JZlk3NUFtOXdLd3F3ZVFF?=
 =?utf-8?B?ZWpNS1dFQVRUTUpEdi9lL0NQWlhxVkllZGJqOVo0WlNFVnR2b1lKR0c0QUw2?=
 =?utf-8?B?WnBLc0Z5VlFJZlNxTFY2QlpiemlncEJDWk9ybnVDTmN6SXljWXl2c2ZTNzEv?=
 =?utf-8?B?cUxiV2drelJYOWdWMVhwdVdEdWhDM3ZHZXhKY0F6Qm9GMFRLbklFN0tvUXFw?=
 =?utf-8?B?OUd1eWplT2tSRU45SXEzRFY3cW9ydEdmT0RGRytlZnZoVlVweVRwMTJMY1FW?=
 =?utf-8?B?K1RPdGc4VEN2VmFBZnZabVhvdStLY3QrZlFKNzlrYkdYK0pHemo4VmJGcTlE?=
 =?utf-8?B?YW10N2hPeVVYVWRRS1V1MUNNVVhYdzRxd2NwRjJWT0pVZEIyRWZ1a0Njbzhr?=
 =?utf-8?Q?6fxnEJVw1avmOs8eCmTVMhDvpKi8pzDU0/ATu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6101b9a-edb3-4f2d-6f0f-08da478c0ff0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2022 07:13:31.7411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +BFYENIYh88HzbZtFxodqfXOBeoqQ07nDT45+t3LU0LQKPDxh1eRZhJ6jYbWc43/BWlj9k2bNvaB4Fbt6hCtbd6+XFs8ESG0yxWWeSVhel8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3290
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: ethtool: advertise
 1000M speeds properly
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wrongly v2 in the title. It should be v1.

Best regards,
Anatolii Gerasymenko
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
