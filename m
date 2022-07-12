Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 149F85728ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jul 2022 00:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 428F842332;
	Tue, 12 Jul 2022 22:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 428F842332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657663332;
	bh=hJeOjrOiICNvdHgqX+7cZGrJaJTgk3DNZBbsE03EOng=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xHNX8esOdEG1dPgt6zMkjdQTpdK7vz+HaEa0801dHjhZH6IzhjRVpLh2ihtHYRABe
	 JvR4UrJWQ69ZRaVPiXpRDOZnbPuE/sNfjIvFPjWZN63OK112YvZ8Zt6maSubIA7tKX
	 mafaTPDgcP/BntvX6XRI89D7GOFakQT3C4AyaB7YA/AYPqF5Zk3qIAI2pQXOm97atM
	 nQDNGOPRSEY0bfLhFUd2XEP4JcL+6IuZ+7ik4OtRkdTL9QlQunn8bQNVYnl5IY/jAa
	 QNNoaM0CZLY+LV/7lsHHJWNv38L6TR/pK1pd2gnComSkKc9+A3y/QbB0VnZJzjl3ul
	 vYkahWTYplPQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mabHIh46WXCf; Tue, 12 Jul 2022 22:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7C54410C5;
	Tue, 12 Jul 2022 22:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7C54410C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2AD6E1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08ED161320
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:02:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08ED161320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2KiCpZI43pN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 22:02:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD1BA612DB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD1BA612DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:02:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="285795751"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="285795751"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 15:02:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="595445585"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 12 Jul 2022 15:02:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 15:02:02 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 15:02:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 15:02:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 15:02:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EHuTQRR0N3Q5LSVCRxVIC6wJCjN0fnF1nZNofVZ3tnPEEVosrPowOAJHdd7TnwiqUsf3r1tjUFBGqL3/aqKN3NS1sGni+LkUtqXt68Uqbc3BKGCtiU+Nm8Z3Tex5gdfecBv7r7Ux8qtxUY4PMfmW2gKH1hpxdAjvM5vi4lZyLR51+Mj8GXoeMwvFF+bxzen5kdSb5ANP0sEOed5N4o+scI4MrSZXu48TPuzInOFZ4j158Q5MQ4Vifw4tF344R6Z5N3NYduWy0j/dghMUfkVF8kBpKm1A04EEm8fsLpSd0BmofNd6sZiJSRJawo8TRYaGAZoroS3zAVFCFvs1Qcjojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EAgDvmr/7W+z/E2s8a4Ozwu5aXODKAjEXFUlvhgrQjE=;
 b=MUd9WD49oGruY4aUIZewTHTvPL6rZCpkZeZpeAAiwHyixU2L1rwGzyZMsP4nHsEtkZWzRCPpIFJpSiZQXqxm/XwUFzaDIrYWpaC5TqOe/uOHf6+Ekr+n5+MX2tNeGNoooxheNQz1c1uC/b02bJO5qH07CWejCP5+aln8a+sVFOstm6isXf600GP7oDKr9tv5DLgK5ehdSCQN1QTaLcgq3qx9GKzySarF9FMwAouRI3xNosTEwB+jlvF9V5pc4HboDw2AJilTGZzoEP1Errt1MYsVbKnqAfkhmQOMzPfLR20KAcOZpCGGoAsy76JVBddDkfMbhoY168g/5kihv16+Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB4980.namprd11.prod.outlook.com (2603:10b6:303:98::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.23; Tue, 12 Jul
 2022 22:01:56 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 22:01:54 +0000
Message-ID: <270002d5-1159-7950-33fa-44417f22b0ca@intel.com>
Date: Tue, 12 Jul 2022 15:01:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220706135437.1695672-1-mateusz.palczewski@intel.com>
 <20220706135437.1695672-2-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220706135437.1695672-2-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0058.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 36645b28-896e-4389-34aa-08da645221f2
X-MS-TrafficTypeDiagnostic: CO1PR11MB4980:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1NSCJIgjeX1CEeqA/OGqmP1Dj/9AX4m9qr8RQNj1XGy/fn6yMiQRqc8txi0ouO74KQcbEpyX7nzQWwnZUtnBegj0R94gOXmj5RZO7csrAUTJk4h5kLS6cCb2Mqr2YdgYVuuBWIFWlpLHhaS4P+Paf0v1xVLvWFV2gmxm1dQBn0JX1shdU0xuXjIwzndafv52scJNdvnM/osZ7C/uvwbNCLEcle3EB/H4MBEbuR0FP/rfZDfoJcJLH1tSUvQfT519VUR1KdCeeD+VcyUxqMiyYtivpud52fjWiG1BfIJ6AIX1ZFluVwOBnndswNuKf19Kuc7PBSbg/K+OeElk1EyPZ13M+m+3yCX4f6dkL0o52WCtD1bC0Yp5APi2Ays1DkcBkHgNVGQVUNmBL+Z65y0YgsfcYI+gyhudbDeVjDs8r2eaT21omyB02L6xFapuPG5rlulvhkXdUTy/hV20ZyeTcxzDd186DPGc2oAQPs7TLO4vqXfEd2++ac+yXXhPXpd8S5sRYb4lyjBbKD3PWkM/uzj2EgodZ5ALMYgGTcyqgvsZnCBjTMDu/p1WlfyBfHSDn52peWDNwW5gqAY1clh99HTv3V+WEQmHWQbGP4A9vG3VI0zqew53JCaHbvlXdyF35Adz2Mbre5jTlL+Y+4Sq5oaiXIhFnIsRU+k1dXXspKIiEiBM3rir1luD//7KP8Kd+x3L3QY5A9bsNL2Kxgcxwj0pNMfpSRLYgMA/tnw4adic5rrmPlp3MmXTSCXdEyVyKlrzDJB3qF977TK97qTwrlXsbg34XZp7o2AdtqIuvG5e7kuNJkqg6Cp2m8eZ065ZgETOtRYyNSp4M7NuSLahTZcVqCuNw1xVgoczRER3q6Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(396003)(366004)(39860400002)(376002)(316002)(6486002)(53546011)(36756003)(6506007)(5660300002)(4744005)(31686004)(2906002)(26005)(6512007)(478600001)(41300700001)(66476007)(66556008)(66946007)(107886003)(83380400001)(8676002)(2616005)(82960400001)(86362001)(4326008)(38100700002)(31696002)(8936002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tk5hektyWUJSZVVRazkrMFNtVDU2ZDh0ZUhFbGtHZmZ3czJlUUFUWmxpbFFJ?=
 =?utf-8?B?T3d2V2ZuRDJpWmNwMCtSR2RFRy9udjdIaVpSNEdhNjRqblhLeVZEQ3BYU29C?=
 =?utf-8?B?QTVpbERqV1AzQ1Z5RTUvcVgwS2cvMFl2OThRcE1PU3YwVWVDZzR0Njl5QnJE?=
 =?utf-8?B?MHJFTDJJTDhMZFB1UEdIVGhEVkJnbENIbFA3UHFmNnhIYXV3elB5Skk4L3Zs?=
 =?utf-8?B?bk8rWUY3enFpR0FNQk0zWFlCTmVHdHJTcFlKL0w0c3FhYTJlYkZzUlNSWUJZ?=
 =?utf-8?B?WE1CRHhpb2duaklTeWpVdmpGTG9JQWY1UC95b1dKVkNIeDRsNktYWFQ5eWo4?=
 =?utf-8?B?U2VZZCtVRHh1TlpYWWpQWUhRLzJ3Tk1mQnlMdEZhSWNBSjRBVlZwbWVKenRi?=
 =?utf-8?B?ZWoyb1pKOWpoYmxPRmVPNi9oN2lNU1pmMWN4Nnltc0d1bTVlUUJGcVFOKzI5?=
 =?utf-8?B?N0RXcWlWRWsxNTV3QmZRaERnZ2RkWVhPRDZtNlIxd09yamw0M3oyUTROclVJ?=
 =?utf-8?B?akJDQWlzaVMwdmNGNFBMdy9paTdSLzJRcFdpMUk0S0d2WGpIc2pQMmVVQWNV?=
 =?utf-8?B?UVdYcXhMZ0VzWnc5cmxQVWphSnJZMGdKVUhPc2RuOFNRYXBXS1Z3d3d4QWJ5?=
 =?utf-8?B?eHpTaVpXck9wa2xXeWhSeCs0a1g5ZlRZQWJsNzZSeGE0OVBxb05PVHNIaWhw?=
 =?utf-8?B?YWtKY3BrNGJadXp4RXJrVFNleWh2RThnZ05BcEt4Z25HV0V3OHRmbjNFTlJ5?=
 =?utf-8?B?SnZpL2orSTNaRVVqak5PektRMFJEUW1Gc0piNnIyL212b0xMcW4xc1RxQmJw?=
 =?utf-8?B?bFlHNWM3aGs0bzVPb3o3RjlTVWN6L3B6MlB0cW9YN01LbUovbkNKL2l6Q1Mr?=
 =?utf-8?B?Y3BST0d3bnROb1ArSzA4M2dBazlaM3VLV29EcGJzUkQvb0ZxM0JGV015dWpu?=
 =?utf-8?B?Vkw2VDZBOVprSHQxeVhQeEd3anlWOERCbGx2VVFmT3Zza0F6Y0xkVDF0YnVY?=
 =?utf-8?B?TE5aYmJWZmI2WXNSVHRKUjR2MStrSUpreTRwQ21pQUY4dkpicWdSVDlScEw2?=
 =?utf-8?B?UlY2MFByUzZ2N3FQQUxXdlhWS0FXUEJKZHoveTJsb3RGZ0hqRXBUTEgweENF?=
 =?utf-8?B?RVY5NVlhTS9SS3UwM3RFeGNCbkRDaW5YQnBjK3BYc3lJYVp5OTFqQ1dlMTJ5?=
 =?utf-8?B?NmUzSmNEVnZtc2FyVEEwL2hIOUxtRzhOMlJPRUNGM1pjbGdHaFI3UmVIRGpx?=
 =?utf-8?B?Mkg2RWg4WVhBL2lDUFBHMVVkZ1NyQ21ZZlBTSStrOHUxdkxqSU1LcE4weDdx?=
 =?utf-8?B?V1R3blZOSFpJMElHL0RBZmdqdWU5d3NJT2ovZytIQkRxNHdESmFyK0hkcGpK?=
 =?utf-8?B?M2FTNlhRb3dFTk1NbWVIcjZmVzBxN2NjVU9ra3hmdEYrNEw3ek83R1Z6dk9V?=
 =?utf-8?B?elVnbXcyQk9zbXJBdE5ZY3h5SkdadjVkeG1mVDcyQ0prcFcwenp1bVNuUDVL?=
 =?utf-8?B?RWJYczhyTTRqQ2duQ1FxYVFHNmhGYXhRSnkyRkRjd1FZMm9sY0g2VWFVMjYx?=
 =?utf-8?B?TlNPbmxHMGFpcDQ4STdqcXAxdXdiRTRiaXFpempRNmZZakpuMHhPUnAxc3d5?=
 =?utf-8?B?eVdhY1Jxd2NBMjE5UXhaa2lxNU1JVVBzSmIybEdIRnJqbkxPMFN2YVVLcU10?=
 =?utf-8?B?ZnlRTTdJckx4cDZ3ZE9UUkhzdW1LUFJiY0JHQUVaRUNJM3BCYkpsZytpWFNC?=
 =?utf-8?B?VmdFVVNEZ01KS25iYnhNSlhZc3VHMG9FQm9ZTE5hQXR4QkNxeXk5Tis5ZG5m?=
 =?utf-8?B?bUh1RlBjTjI1Ny9RQVUwcHhpd2l0cXE1NndFdXBRV2FrK0wzdW5TU3pTL3pH?=
 =?utf-8?B?ZloyUlBWb05VTGhYak9yRkFOOURjZnViUWdXZlVTblVIdmVZNGhZMjdtKzJT?=
 =?utf-8?B?MWlldVVNditBb2xvVUxJMHdqaDRRT1o4bTdZYjNEOSt6US8wS2ZSRTFDOFhU?=
 =?utf-8?B?dkZGeWd2eEJtalNOdFpaUkgrdENYREFsaUNkNFlHbzk4eFNuZ0w3RkVUdzM2?=
 =?utf-8?B?V2N0bnRTQ3VsRzhyUnNTcmJUOWY5b2YxNy9qcElxTkhZOEhNeWlTc09IR21U?=
 =?utf-8?B?a1BScXJOVUxnQlFNRG9NaFkxQVdZUGJsTjVRcXhZOU5ra3VyUWNxTlRKNlAz?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36645b28-896e-4389-34aa-08da645221f2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 22:01:54.7994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tnuh+7wQzl00EhsmIEyb68PWUlN0q6mAAWs3f1tS/jFLGgQohlLqfHh3X2C2QrbcNqrY5EKbKKEcwT0CgQy9yHWb/5EZSIUOieBMBup5nX0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4980
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657663323; x=1689199323;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W8EaEkVT6/tYEUpioDwCqF3YpCb1E23iv0mX7SW4LRg=;
 b=ULhjw5YWSbc595DwoAyoSo+I3JJBEy9h5ZBWAGNRpkcds/G2pJ0yePsU
 ejUm0TGKKqSEPz6TwaFZ5Pl9Jico5lQKFj8M1meWVFELScZi5oHoN3tHH
 4OlwRjf4K1eAWzSlp8i/KwDgrIqCVhyt4GtLygnjfFX6bSMXquN8TTe+I
 9f8rV8b2afkm1kza33A32fE6OnSKfQPnGwIHwt8lR1IgnzESJoZRLA+A1
 rdE+Z4mWyPijiWLvqUZQQJiph60/47abhc6Tf+pTEUCgkcXzYj2mNJVMX
 CRVL8hM9Iq+dltvIVr6GVFIaNHdN+h7Cpnzi/H4idoYSePfEyKyIKJ18j
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ULhjw5YW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Fix shutdown pci
 callback to match the remove one
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/6/2022 6:54 AM, Mateusz Palczewski wrote:
> From: SlawomirX Laba <slawomirx.laba@intel.com>

From:/Signed-off-by: email name mismatch: 'From: SlawomirX Laba 
<slawomirx.laba@intel.com>' != 'Signed-off-by: Slawomir Laba 
<slawomirx.laba@intel.com>'

> Make the flow for pci shutdown be the same to the pci remove.
> 
> iavf_shutdown was implementing an incomplete version
> of iavf_remove. It misses several calls  to the kernel like
> iavf_free_misc_irq, iavf_reset_interrupt_capability, iounmap
> that might break the system on reboot or hibernation.
> 
> Implement the call of iavf_remove directly in iavf_shutdown to
> close this gap.
> 
> Fixes: 5eae00c57f5e ("i40evf: main driver core")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

Same issue for patch 2.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
