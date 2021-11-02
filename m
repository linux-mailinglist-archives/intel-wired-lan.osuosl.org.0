Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C00EC44271C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 07:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56A0A607D3;
	Tue,  2 Nov 2021 06:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9Eeosf_cP1F; Tue,  2 Nov 2021 06:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D77F60727;
	Tue,  2 Nov 2021 06:29:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8A21BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 06:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7953960727
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 06:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gyci1D_F4O5Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 06:29:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59E68606F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 06:29:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231049309"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="231049309"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 23:29:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="467571289"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 01 Nov 2021 23:29:16 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 23:29:16 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 23:29:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 23:29:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 23:29:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bhqb3aouQE1qw+Dknr0S9qwn61+i2CLzFNFdzaitv9todeyt5o/VX0Ao93wDzfM5yrqhL8t5YiFTxSUPLcvCKhbJ+S42+ILS1MmRfikl+ezA14CEl2kXGbJm3OQ4sAYzr5aAYa+yB2rm+MO0QUbYGhnTD3VSONu17UkqtYv3V1+uOqB/IDDP0HnKTZO6XEmFA3lBD6qk2viXHuObbbgtL/pGZ+cbd/oHJEas0uw4rU9e0qDlakgjZU0fO6APVhdGmxbGvb0yf4i7WSo229edXPWFeIYauur5zrvZZY6dwGtZc/7k5+lcdrYcGdSTxy58vd8vaxQT7EsBevvOZ2dOmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cp5swAxdI3b4eCHiMTuHGZtbUAvBJzysxRlyXhlxOZg=;
 b=LZFSLgOKb6dYxQRspXEqYsuqfI3c0F99lZGrphltrFFl70hDFGzZ5+eRwXo7KVSOehz8gRwCykImQV4CHtioXuJJjDNE4BISDzP05d2KrUkKF9Am8aQvW1KWxbUE423Dny8F5VRaUL9tGeInKZo7NTw++VOOJm88+ZL7FItvqYlWYKZh5FyMuX6SN8HIGdbgaB/6lUkPHkLiJDIQEIPsbMy/Ar2ZwL6paf+mxpd/4M1voI/sub8MGPIylXccKtoOSDX4+LwrmDhwt0vUEVVigpq44+S5vhDf0dP+/KQc8udcyAPO/kiPrC8PY+2Xz4hCQAr31lyG/NVmAFrqvvUjuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cp5swAxdI3b4eCHiMTuHGZtbUAvBJzysxRlyXhlxOZg=;
 b=GvtMbmurFEChlpyblwqUCqXkeslFjorCIu1Gvl9Rh1tL3fjNudXZZnvAzNwxhVpSbzi+3K2fOWMSty9pwgU3dw+fNd/bMXlOFI8kSynkq4omud70RK3BF9LercV+DxeVMrdAbQgoTF31ilDDkka7H856NZqmvZAaL7yFkI27qBE=
Authentication-Results: canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MW5PR11MB5908.namprd11.prod.outlook.com (2603:10b6:303:194::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Tue, 2 Nov
 2021 06:29:14 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::cced:992a:9015:3b8d]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::cced:992a:9015:3b8d%7]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 06:29:14 +0000
Message-ID: <b20821ce-2f16-6932-280d-a2cf98ad2120@intel.com>
Date: Tue, 2 Nov 2021 08:29:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20211026065112.1366205-1-kai.heng.feng@canonical.com>
 <04ed8307-ab1f-59d6-4454-c759ce4a453b@intel.com>
 <CAAd53p69k-2PVw5RpJOAbe=oBh11U_UqzsyMjxHFbo7xqNBDsQ@mail.gmail.com>
 <f6a4d53a-3ec8-b5cd-9b6c-b14c69d20248@intel.com>
 <CAAd53p67dehgizx1h0ro40YRmKNsbv3Ve=2987kyMUKs7=LOpA@mail.gmail.com>
 <49c5e91a-8e02-2a76-db5d-5f15df3c485f@intel.com>
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <49c5e91a-8e02-2a76-db5d-5f15df3c485f@intel.com>
X-ClientProxiedBy: FR3P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::15) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
Received: from [10.185.169.41] (134.191.232.48) by
 FR3P281CA0068.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4b::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.5 via Frontend Transport; Tue, 2 Nov 2021 06:29:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1448e017-f936-4ded-80ca-08d99dca167c
X-MS-TrafficTypeDiagnostic: MW5PR11MB5908:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MW5PR11MB5908ECB5DB30F4D4F8FB93EA978B9@MW5PR11MB5908.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hSXt+hIF4qjbzI5aQpIoLtnzqN1nJ5wlPz2y/UBuz9Dpopd3di4c5RR8fIiH7FgkGZjFBqrU7B+YTZb4yeASSwDCv4nZWlnWxCRw8c9vgAKRbm5gV7XSUB8/jgKqjNdjPSTip5iezouzZxe3/3KN3EfR0Hc3tQ5Ct8a4MA0/0dClwKv1aJYgmXGSmKgfVKnqEx1p9oNMxqetnvXSddwH8U/czHkNBrBxwfBGGmygSmZ9Nf4NHcvfq/79m5T2qdUL4DSnglotueCXQ+d0d/2diUxCsAPXsG/dp9YXfe/3VHNGbjUzdf5UX0NZHWD//MKLR0KVZM9usEyXFFZiwseMa/bstsz/Re38QC6kObRwlUaVd5m+uN3nBDE58JV2rzyiZ7hUpU7nhESH5JRINj1hxgfUgtC0H75zuW+2mjFwEFFi+qa89eJDJoX1hCWnjdejDr1ZPp59pmdxUEmcvilqsJJZmsYGmngIWduITgu0nIXV3LwvxbM2Tfg2G5fogj0TN69YsqwqJrGUmmsADJS8Po8kFb9G7D3P1Wy+7AETCnjffyA2q+5AAuHpW++eV8OpZysh282hzzsJrUuAKkRArchxFpvPb6Cb7yaZVIxFyPW5Ibqbom9OpsZftadXzzRFoFBIr5o77Fe4WNhSBG1QYPk8IdrIfQ0NcJLKw1Mv3eLx9gFJ+krJ8wQPXBxbrQLtgQdGLafSdLu9VlBRP78WUyy2vSuFt/pSchjrWqGt9XGd9RaNgkBt03iL1E0Zd4UBkSp2wQQp+FkfSeXxI3xp/Q5olKA3NNpc5lRnAYIxhBHPZDgMr0PNYTrHJGynPKFnDzJqqdKrTvXJd1T2MgRuXu3HiUxtPebk9FvOmC2eDDI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(36756003)(8676002)(54906003)(16576012)(316002)(6916009)(8936002)(4326008)(83380400001)(2906002)(5660300002)(6486002)(82960400001)(86362001)(66556008)(66476007)(38100700002)(66946007)(508600001)(31696002)(31686004)(966005)(186003)(44832011)(2616005)(956004)(6666004)(26005)(53546011)(32563001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmdKVFBFMURlTVlzRFlvTWdvWDE0Zmgyd3IyMUNPREhtWEhYaHMxSGFVcjFw?=
 =?utf-8?B?SC8xenJCaUJ0NTFSTnYzRUYvcmxxQTBoMmUrbmxCSlljdktnY1VSU2xMZG92?=
 =?utf-8?B?MDN4SUlxQnVkMWJpbjF5NG9uQWJCK1lHUDFGSUlPOEJCWWpaRkcweklFa0pv?=
 =?utf-8?B?bGI5UThiZ2VWeldSckZrenlyZjJrdjdCNzVBRUsvbG9aYmVBNCttdW1HRnBK?=
 =?utf-8?B?cVQ3TGh4ZkJQTTJmM0N6akdzV3ZrdVMvNEEwbGZ5WXQ2NWtVOCsrSEphbVBJ?=
 =?utf-8?B?ekRYZkpXTmJFSkNQN2RTTnhzazdjTkdiL3VMZXZyRXJ0ZTBMV2JlbUxTWHZO?=
 =?utf-8?B?dmxXYy9sa2RQYXZON3BpeTYxczBPbDhnNkhnTjFvNnlid200YWZORTJjS2h6?=
 =?utf-8?B?eHZpejQyZHZLdTh3T09tK2ZscHhlaTBCY2k4RFVJbiszbVY2Zi9oQlBEelFx?=
 =?utf-8?B?NUpDaFBLbXVaWlltdE9uV3FXU1VhbUpKNG13Q0tKL3M1ek9kZmFIcFJNWkZT?=
 =?utf-8?B?SFV3ME92QmN3SllsVTRyNEN1ZjJPb2lvRndkQW1jcVQxcE9jbkQ3bkllWldt?=
 =?utf-8?B?d25mOWNpaTRKSDduS2dlOFdJWStEc0ZDakVoUTAyVks3NXNnMVdmazlpSnFz?=
 =?utf-8?B?VDZldW9YRzU1UGZvc1A3L1k2c0g3L2RlaEg1YTFsUUZUd3J4LzlRK0RHdnZJ?=
 =?utf-8?B?ZUJpUTJOblpLcG5LMGtLWGppb2M3V3phT3cxY1UzdFk5OGpzbUV4c3VNT3Z6?=
 =?utf-8?B?ekVsVXNYS3libjBEaWtMTDdmeXFkS21mNlNIT1ZyM2NiZXZEd2w5TmQ1UTBz?=
 =?utf-8?B?OW01MFJLUkNqY3dKR0NSWnhiNnZsdmRqZGRJRFZjVEd3blFjTC9WM2lpTEl5?=
 =?utf-8?B?a2JudnFMQWk1K0tqVGtlY1NlYUxGeE9zSzhSajNVNTNORTJWS3dUQmdZZ2Vr?=
 =?utf-8?B?ZFdrNFhLYzBHY3hwc0p6UGx3M3pMNVQ2c2JWMXBlRC9pVG9ucHRMOUxTRzVa?=
 =?utf-8?B?KzBSY2gvQThvcVRReGJrUXpON2tEZmZQWnEzRjZvZElIRHpRSHpvWU1yRi9t?=
 =?utf-8?B?dmRjWDdWcXVRWHNzL1FldzkvYWFKSG5iVDlLZm9xVzFrWnk4dTgzdjFlcUc5?=
 =?utf-8?B?U1lRL2dDRVdpbnFBTFJ4MWJkN3FycnkxTHhGN1JpOXoxUjhaQkVqY2ROUm9Y?=
 =?utf-8?B?OFVTODk3dUU3dFgxTXNaeDZSeTYvYVRsbTBxRmFTQWwxSGx5NWJ0UlQrSEVT?=
 =?utf-8?B?b09QK3lZODl0WU14Qm1NcHF1WjJuYUVsSm85dFk0blhqRHdQVjNXenpnQkJD?=
 =?utf-8?B?bTV5Qm84azRxdjMzUjdVbE1hZGVxaEh5NVV4NktwNDJ3NXZuOURBb3ZTRnpz?=
 =?utf-8?B?OUUzMm5ReGMwSXVQaWFSTTJ5MkgzMHp1NHRISkZlOWxwWFFrclEyYmlibElu?=
 =?utf-8?B?WmNKQWhYNzVETHhXSGZpbFNGVVVFdEg4d1VZeW5FOHJ4RnE1RFN4ZWgwU2VM?=
 =?utf-8?B?blhVSFhzZmtFeXBDZm8wVlkxSmpkdnBDZ2xHL3hlRHduTGp1b3Z5UWNFQ2Rv?=
 =?utf-8?B?WkxTRENhYlY4ZnRaRjZZMWMxbENTdkY3VElJbjVFQmc5TWZxdVZJMTI2SDAy?=
 =?utf-8?B?VUVxNjVWbjZZRHhjQ3pjNlFLSzdJamhzMjdLWmdsajF5S3haajByZ2Q5RHlK?=
 =?utf-8?B?N1JveXBzOUJmNVErdWc3ZGZDYVhFTldOc3hXK0RCUmpJYjNOWHRxV2dkUzFo?=
 =?utf-8?B?OXFFMzBDelZqY1Z3VFJ4UnlodXBQdjZ2VElKSjZWTlAwYjRNRDN1N2NPckE3?=
 =?utf-8?B?WkI0RlcxcWRIU3Y2bTlMRHBod3cyYzFBaXkxQW0zK1NFWlNZN2NkVFVqZDRG?=
 =?utf-8?B?akxmbE0yU2ZoaDJEbkoxRXFmNllSTHdpL29LMmNZdDlqOVhQeEpHMzk5dGhB?=
 =?utf-8?B?ZmMzd3o0VTZ0TE15RHp6MEZLcXdUVnVaOEVmOXJGcllmd0lsRkYweVhuUUlN?=
 =?utf-8?B?YzlWTkFHekxXR3YxMU9pd2xqQ3NLQys1WHpJbVJ1UW03WkJ3aHdVZm4vYjFt?=
 =?utf-8?B?N0dEZ3BvWk1GbDYxNFNRa21odzNJcHErMWJnNzZvNDlEeThjcllWUmRpWm0w?=
 =?utf-8?B?bWVZdXRKdGpMUXZFelAxY2t1dG80dGVZWmJvOUprM3VmTXE0cDNrYnRuZjQ3?=
 =?utf-8?Q?MDctFoIhTtHOf15iov0ywGY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1448e017-f936-4ded-80ca-08d99dca167c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2021 06:29:13.8915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p6QeT0oNNsX2WLV24fB7JJgG47ZyuYnCTdmH2HEBNu4pCaqLHfC1bU/k5wj6NpJh6vkIUfjS2itE2TbGunz29Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Add a delay to let ME
 unconfigure s0ix when DPG_EXIT_DONE is already flagged
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux Netdev List <netdev@vger.kernel.org>,
 AceLan Kao <acelan.kao@canonical.com>, Jakub Kicinski <kuba@kernel.org>, Dima
 Ruinskiy <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMi8yMDIxIDA4OjI0LCBTYXNoYSBOZWZ0aW4gd3JvdGU6Cj4gT24gMTEvMi8yMDIxIDA1
OjI3LCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+PiBPbiBGcmksIE9jdCAyOSwgMjAyMSBhdCA1OjE0
IFBNIFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4gCj4+IHdyb3RlOgo+Pj4K
Pj4+IE9uIDEwLzI3LzIwMjEgMDE6NTAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pj4gT24gVHVl
LCBPY3QgMjYsIDIwMjEgYXQgNDo0OCBQTSBTYXNoYSBOZWZ0aW4gCj4+Pj4gPHNhc2hhLm5lZnRp
bkBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBPbiAxMC8yNi8yMDIxIDA5OjUxLCBLYWkt
SGVuZyBGZW5nIHdyb3RlOgo+Pj4+Pj4gT24gc29tZSBBREwgcGxhdGZvcm1zLCBEUEdfRVhJVF9E
T05FIGlzIGFsd2F5cyBmbGFnZ2VkIHNvIGUxMDAwZSAKPj4+Pj4+IHJlc3VtZQo+Pj4+Pj4gcG9s
bGluZyBsb2dpYyBkb2Vzbid0IHdhaXQgdW50aWwgTUUgcmVhbGx5IHVuY29uZmlndXJlcyBzMGl4
Lgo+Pj4+Pj4KPj4+Pj4+IFNvIGNoZWNrIERQR19FWElUX0RPTkUgYmVmb3JlIGlzc3VpbmcgRVhJ
VF9EUEcsIGFuZCBpZiBpdCdzIGFscmVhZHkKPj4+Pj4+IGZsYWdnZWQsIHdhaXQgZm9yIDEgc2Vj
b25kIHRvIGxldCBNRSB1bmNvbmZpZ3VyZSBzMGl4Lgo+Pj4+Pj4KPj4+Pj4+IEZpeGVzOiAzZTU1
ZDIzMTcxNmUgKCJlMTAwMGU6IEFkZCBoYW5kc2hha2Ugd2l0aCB0aGUgQ1NNRSB0byAKPj4+Pj4+
IHN1cHBvcnQgUzBpeCIpCj4+Pj4+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwu
b3JnL3Nob3dfYnVnLmNnaT9pZD0yMTQ4MjEKPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEthaS1IZW5n
IEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gdjI6
Cj4+Pj4+PiDCoMKgwqAgQWRkIG1pc3NpbmcgIkZpeGVzOiIgdGFnCj4+Pj4+Pgo+Pj4+Pj4gwqDC
oMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8IDcgKysrKysr
Kwo+Pj4+Pj4gwqDCoMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPj4+Pj4+Cj4+
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRl
di5jIAo+Pj4+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMK
Pj4+Pj4+IGluZGV4IDQ0ZTJkYzgzMjhhMjIuLmNkODFiYTAwYTZiYzkgMTAwNjQ0Cj4+Pj4+PiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4+Pj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4+Pj4gQEAg
LTY0OTMsMTQgKzY0OTMsMjEgQEAgc3RhdGljIHZvaWQgZTEwMDBlX3MwaXhfZXhpdF9mbG93KHN0
cnVjdCAKPj4+Pj4+IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+Pj4+PiDCoMKgwqDCoMKgwqDC
oCB1MzIgbWFjX2RhdGE7Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCB1MTYgcGh5X2RhdGE7Cj4+Pj4+
PiDCoMKgwqDCoMKgwqDCoCB1MzIgaSA9IDA7Cj4+Pj4+PiArwqDCoMKgwqAgYm9vbCBkcGdfZXhp
dF9kb25lOwo+Pj4+Pj4KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIGlmIChlcjMyKEZXU00pICYgRTEw
MDBfSUNIX0ZXU01fRldfVkFMSUQpIHsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZHBnX2V4aXRfZG9uZSA9IGVyMzIoRVhGV1NNKSAmIAo+Pj4+Pj4gRTEwMDBfRVhGV1NNX0RQR19F
WElUX0RPTkU7Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogUmVxdWVz
dCBNRSB1bmNvbmZpZ3VyZSB0aGUgZGV2aWNlIGZyb20gUzBpeCAqLwo+Pj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1hY19kYXRhID0gZXIzMihIMk1FKTsKPj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYWNfZGF0YSAmPSB+RTEwMDBfSDJNRV9TVEFSVF9E
UEc7Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWFjX2RhdGEgfD0gRTEw
MDBfSDJNRV9FWElUX0RQRzsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBl
dzMyKEgyTUUsIG1hY19kYXRhKTsKPj4+Pj4+Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChkcGdfZXhpdF9kb25lKSB7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlX3dhcm4oIkRQR19FWElUX0RPTkUgaXMgYWxyZWFkeSBmbGFnZ2Vk
LiAKPj4+Pj4+IFRoaXMgaXMgYSBmaXJtd2FyZSBidWdcbiIpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbXNsZWVwKDEwMDApOwo+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4+IFRoYW5rcyBmb3Igd29ya2luZyBvbiB0aGUgZW5h
YmxlbWVudC4KPj4+Pj4gVGhlIGRlbGF5IGFwcHJvYWNoIGlzIGZyYWdpbGUuIFdlIG5lZWQgdG8g
d29yayB3aXRoIENTTUUgZm9sa3MgdG8KPj4+Pj4gdW5kZXJzdGFuZCB3aHkgX0RQR19FWElUX0RP
TkUgaW5kaWNhdGlvbiBpcyB3cm9uZyBvbiBzb21lIEFETCAKPj4+Pj4gcGxhdGZvcm1zLgo+Pj4+
PiBDb3VsZCB5b3UgcHJvdmlkZSBDU01FL0JJT1MgdmVyc2lvbj8gZG1pZGVjb2RlIC10IDAgYW5k
IGNhdAo+Pj4+PiAvc3lzL2NsYXNzL21laS9tZWkwL2Z3X3Zlcgo+Pj4+Cj4+Pj4gJCBzdWRvIGRt
aWRlY29kZSAtdCAwCj4+Pj4gIyBkbWlkZWNvZGUgMy4yCj4+Pj4gR2V0dGluZyBTTUJJT1MgZGF0
YSBmcm9tIHN5c2ZzLgo+Pj4+IFNNQklPUyAzLjQgcHJlc2VudC4KPj4+PiAjIFNNQklPUyBpbXBs
ZW1lbnRhdGlvbnMgbmV3ZXIgdGhhbiB2ZXJzaW9uIDMuMi4wIGFyZSBub3QKPj4+PiAjIGZ1bGx5
IHN1cHBvcnRlZCBieSB0aGlzIHZlcnNpb24gb2YgZG1pZGVjb2RlLgo+Pj4+Cj4+Pj4gSGFuZGxl
IDB4MDAwMSwgRE1JIHR5cGUgMCwgMjYgYnl0ZXMKPj4+PiBCSU9TIEluZm9ybWF0aW9uCj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIFZlbmRvcjogRGVsbCBJbmMuCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgIFZlcnNpb246IDAuMTIuNjgKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgUmVsZWFzZSBEYXRl
OiAxMC8wMS8yMDIxCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIFJPTSBTaXplOiA0OCBNQgo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBDaGFyYWN0ZXJpc3RpY3M6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBQQ0kgaXMgc3VwcG9ydGVkCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBQTlAgaXMgc3VwcG9ydGVkCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBCSU9TIGlzIHVwZ3JhZGVhYmxlCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCSU9TIHNoYWRvd2luZyBpcyBhbGxvd2VkCj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCb290IGZyb20gQ0QgaXMgc3VwcG9ydGVk
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTZWxlY3RhYmxlIGJvb3Qg
aXMgc3VwcG9ydGVkCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFREQg
aXMgc3VwcG9ydGVkCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQcmlu
dCBzY3JlZW4gc2VydmljZSBpcyBzdXBwb3J0ZWQgKGludCA1aCkKPj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDgwNDIga2V5Ym9hcmQgc2VydmljZXMgYXJlIHN1cHBvcnRl
ZCAoaW50IDloKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU2VyaWFs
IHNlcnZpY2VzIGFyZSBzdXBwb3J0ZWQgKGludCAxNGgpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBQcmludGVyIHNlcnZpY2VzIGFyZSBzdXBwb3J0ZWQgKGludCAxN2gp
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBQ1BJIGlzIHN1cHBvcnRl
ZAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVVNCIGxlZ2FjeSBpcyBz
dXBwb3J0ZWQKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJT1MgYm9v
dCBzcGVjaWZpY2F0aW9uIGlzIHN1cHBvcnRlZAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgRnVuY3Rpb24ga2V5LWluaXRpYXRlZCBuZXR3b3JrIGJvb3QgaXMgc3VwcG9y
dGVkCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUYXJnZXRlZCBjb250
ZW50IGRpc3RyaWJ1dGlvbiBpcyBzdXBwb3J0ZWQKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFVFRkkgaXMgc3VwcG9ydGVkCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIEJJ
T1MgUmV2aXNpb246IDAuMTIKPj4+Pgo+Pj4+ICQgY2F0IC9zeXMvY2xhc3MvbWVpL21laTAvZndf
dmVyCj4+Pj4gMDoxNi4wLjE1LjE1MTgKPj4+PiAwOjE2LjAuMTUuMTUxOAo+Pj4+IDA6MTYuMC4x
NS4xNTE4Cj4+Pj4KPj4+IFRoYW5rIHlvdSBLYWktSGVuZy4gVGhlIF9EUEdfRVhJVF9ET05FIGJp
dCBpbmRpY2F0aW9uIGNvbWVzIGZyb20gdGhlCj4+PiBFWEZXU00gcmVnaXN0ZXIgY29udHJvbGxl
ZCBieSB0aGUgQ1NNRS4gV2UgaGF2ZSBvbmx5IHJlYWQgYWNjZXNzLsKgIEkKPj4+IHJlYWxpemVk
IHRoYXQgdGhpcyBpbmRpY2F0aW9uIHdhcyBzZXQgdG8gMSBldmVuIGJlZm9yZSBvdXIgcmVxdWVz
dCB0bwo+Pj4gdW5jb25maWd1cmUgdGhlIHMwaXggc2V0dGluZ3MgZnJvbSB0aGUgQ1NNRS4gSSBh
bSB3b25kZXJpbmcuIERvZXMgYWZ0ZXIKPj4+IGEgfiAxcyBkZWxheSAob3IgbGVzcywgb3IgbW9y
ZSkgX0RQR19FWElUX0RPTkUgaW5kaWNhdGlvbiBldmVudHVhbGx5Cj4+PiBjaGFuZ2UgYnkgQ1NN
RSB0byAwPyAoaXMgaXQgY29uc2lzdGVudGx5KQo+Pgo+PiBOZXZlci4gSXQncyBjb25zaXN0ZW50
bHkgYmVpbmcgMS4KPiBuby4gT24gbXkgVEdMIHBsYXRmb3JtIGlzIGNsZWFyZWQgYnkgQ1NNRToK
PiBbU3VuIE9jdCAzMSAwODo1NDo0MCAyMDIxXSBzMGl4IGV4aXQ6IEVYRldTTSByZWdpc3Rlcjog
MHgwMDAwMDAwMAo+IFtTdW4gT2N0IDMxIDA4OjU0OjQwIDIwMjFdIHMwaXggZXhpdCAocmlnaHQg
YWZ0ZXIgc2VudCBIMk1FKTogRVhGV1NNIAo+IHJlZ2lzdGVyOiAweDAwMDAwMDAwCj4gW1N1biBP
Y3QgMzEgMDg6NTQ6NDAgMjAyMV0gczBpeCBleGl0KGFmdGVyIHBvbGxpbmcpOiBFWEZXU00gcmVn
aXN0ZXI6IAo+IDB4MDAwMDAwMDEKPiBbU3VuIE9jdCAzMSAwODo1NDo0MCAyMDIxXSBlMTAwMGUg
MDAwMDowMDoxZi42IGVucDBzMzFmNjogRFBHX0VYSVRfRE9ORSAKPiBjbGVhcmVkIGFmdGVyIDEz
MCBtc2VjCj4+Cj4+IFJpZ2h0IG5vdyB3ZSBhcmUgc2VlaW5nIHRoZSBzYW1lIGlzc3VlIG9uIFRH
TCwgc28gSSB3b25kZXIgaWYgaXQncwo+PiBiZXR0ZXIgdG8ganVzdCByZXZlcnQgdGhlIENTTUUg
c2VyaWVzPwo+IG5vLiBXZSBuZWVkIHRvIGludmVzdGlnYXRlIGl0IGFuZCB1bmRlcnN0YW5kIHdo
YXQgaXMgQ1NNRSBzdGF0ZSB3ZSBoaXQuIAo+IE1lYW53aGlsZSBmZXcgb3B0aW9uczoKPiAxLiB1
c2UgcHJpdmlsZWdlIGZsYWdzIHRvIGRpc2FibGUgczBpeCBmbG93IGZvciBwcm9ibGVtYXRpYyBz
eXN0ZW0gCj4gKHBvd2VyIHdpbGwgaW5jcmVhc2VkKQo+IGV0aHRvb2wgLS1zZXQtcHJpdi1mbGFn
cyBlbnAwczMxZjYgczBpeC1lbmFibGVkIG9mZgo+IGV0aHRvb2wgLS1zaG93LXByaXYtZmxhZ3Mg
ZW5wMHMzMWY2Cj4gUHJpdmF0ZSBmbGFncyBmb3IgZW5wMHMzMWY2Ogo+IHMwaXgtZW5hYmxlZDog
b2ZmCj4gMi4gZGVsYXkgYXMgeW91IHN1Z2dlc3RlZCAtIGxlc3MgcHJlZmVyYWJsZSBJIHRob3Vn
aAo+IDMuIEkgd291bGQgbGlrZSB0byBzdWdnZXN0IChuZWVkIHRvIGNoZWNrIGl0KSBpbiBjYXNl
IHRoZSBEUEdfRVhJVF9ET05FIAo+IGlzIDEgKGFuZCBwb2xsaW5nIHdpbGwgYmUgZXhpdCBpbW1l
ZGlhdGVseSkgLSBsZXQncyBwZXJmb3JtIGVuZm9yY2UgCj4gc2V0dGluZ3MgdG8gdGhlIENTTUUs
IGJlZm9yZSB3cml0ZSByZXF1ZXN0IHRvIENTTUUgdW5jb25maWd1cmUgdGhlIAo+IGRldmljZSBm
cm9tIHMwaXggOgo+IAo+IGlmIChlcjMyKEVYRldTTSkgJiBFMTAwMF9FWEZXU01fRFBHX0VYSVRf
RE9ORSkKPiAgwqDCoMKgwqBtYWNfZGF0YSB8PSBFMTAwMF9IMk1FX0VORk9SQ0VfU0VUVElOR1M7
Cj4gCmFuZCB0aGVuIGFsbG93IHRvIENTTUUgZmluaXNoIHRoZSBlbmZvcmNpbmcgc3luY2hyb25p
emF0aW9uOgpldzMyKEgyTUUsIG1hY19kYXRhKTsKdXNsZWVwX3JhbmdlKDMwMDAwLCAzMTAwMCk7
Cgo+IEkgd2lsbCB1cGRhdGUgQnVnemlsbGE6IAo+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MjE0ODIxIHdpdGggdGhpcyBpbmZvcm1hdGlvbi4KPiAKPiBJIGFs
c28gd2lsbCBuZWVkIHNvbWUgYW5vdGhlciBpbmZvcm1hdGlvbiByZWdhcmRzIFNNQiBzdGF0ZSBp
biB0aGlzIGNhc2UuCj4+Cj4+IEthaS1IZW5nCj4+Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogUG9sbCB1cCB0byAyLjUgc2Vjb25kcyBmb3IgTUUgdG8gdW5jb25maWd1
cmUgRFBHLgo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBJZiB0aGlz
IHRha2VzIG1vcmUgdGhhbiAxIHNlY29uZCwgc2hvdyBhIAo+Pj4+Pj4gd2FybmluZyBpbmRpY2F0
aW5nIGEKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogZmlybXdhcmUg
YnVnCj4+Pj4+Pgo+Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
