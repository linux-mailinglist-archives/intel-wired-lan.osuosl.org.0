Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9372E722119
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 10:35:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FD65821C8;
	Mon,  5 Jun 2023 08:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FD65821C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685954102;
	bh=rJ+k/5MAHRSgLwJO+Le8EgDwxG7GFNiNzTRiQrEq33I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XWVHP+2OcZeNFp7lRQGEXamDEIxXz9j5FbkLu9jqztQmu3QOhsNZdwE/IFs0f4rlo
	 EO/atXZgLIkhsQ67V4PSmCviN0MVrmOcS06FNJ29iaLxATxhn6VPcHbYjd3lvYk7My
	 kSEngjMyIkGB4nuKh2pHgKHCOswP4mVofbu5V6XhqN718AZUyksAYPPfjsAblItyNZ
	 vCtxoNlj/bbhZRnLxlWdn6nvQGX7sk+4wURhrbJROJlTpgYv+1BB4Tg/BXr62erIPK
	 vu+L24tLoBbYoDRTl7rRoqWGBa444MhRAiReohSlM9ZmKpy7cQmwddnFdh33M96c3O
	 A55CeHbqThmXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dTfxxkWYi-5u; Mon,  5 Jun 2023 08:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDF29820AF;
	Mon,  5 Jun 2023 08:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDF29820AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D1751BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 420D6414CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 420D6414CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNRrqnHIXMeh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 08:34:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B02A3413D3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B02A3413D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:34:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="353807751"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="353807751"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 01:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="852891672"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="852891672"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2023 01:34:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 01:34:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 01:34:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 01:34:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 01:34:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fwhIzL7d2lD8jWPoK7DzA9a0wbcsIgR7wnQTyozxuysSRofbUfNhMAjN1r06ZuMOSlxe4N3JqEH2sL7psufF7LZhIUrWGD8OaQr2HqxPl5o1TvX0CBvQ28CTrZjPZCyG7nlBAz3od31vIFL87DwC+EeqFsfxrqcwgIbZkniDGCY2Wsb8UV8STQwGWlRf153wAvuykTgGUOZJWrP9Uy7ogs3l3TnXIMeIryt332sn9n3vErmiuHjI6JN1zJao72d+4c+bTyK1Tota2FI5nbykzlU0jxcSPHQWhJvgXQTBOJ2MnwTjNQ2Ndnz3kQfa2mM8i3WDNvSGLN1SALlaJMJv/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2dNnDC6FFweQNFv0toXjf/8Zo/v+dieC2+sC3Skhubo=;
 b=MvhG1VH2lo1eD/tCFjtp6tR1X/TOwgq3BA0wMAD5MOFKeAqbtPW2AwZlfe/ZV+EIahUFKuLJ5UZO97bXod6fMiqAyUmpEcfoDVOg+IgR9S0XmAPmdfufovGO5kImrnZBNIxCFzZrWf2JYBci9cUE7yNfyQuOnp600mjmZhnhNJNOW/vVyORgHN8P01ZLcXhGs+cCZEGMbTXedSJwQbc9Cj+dUyRuuhSKcIuXTiuj9EVj3d81JBDkfMq/bp9HIz2SOYPnN09p0MLhPeUD8Q9HWChrr8R0jOeKoW+IkoOqN89eGTjGj4qLrzPF7W17oWd0hlR77Q2NOANziUUBThxu5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 08:34:40 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%6]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 08:34:39 +0000
Message-ID: <0aec2a5e-6730-cf84-4acf-5e6e874920fc@intel.com>
Date: Mon, 5 Jun 2023 11:34:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: Prasad Koya <prasad@arista.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230605031534.9846-1-prasad@arista.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230605031534.9846-1-prasad@arista.com>
X-ClientProxiedBy: FR3P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::13) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS0PR11MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: 571f68fd-3531-48d7-f2cf-08db659fb3e4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lSKw1VedLstRGGLk6Dbw4HX4fylOCFJZJO8HrqjbrwZWoTE01o2QECQnKvCuf/cpKDq1cWpaZHeW0MbAz8m9fyEtSOB84dEVD6w0TIZPONXpZ4URzYZSc3IT+UeuyPO/MfXPh/CmzjPRj6oVVuwYwbxZbVkOcYODDDkq1STzi7KwQ4csQoYsukZaYa5Jc0yRtAtDe47vx4uIBFnDH5jOUSjWjPcO1IRaJTx5PL/nRwru7hShnnJKnBl0FTgo9S9WWFem4nFSgAgBrMXs/i5rwUSxgBIJFCmp1g8XVMtnYxyv88cuWr+t/HzPxcUCyEqgbh6M2CaaJ8mW1SP0giD1E5ibk+m6ihE7ytxPSAWtfk5YkRGxERczfOxi0LOLpvjsR0wjjXhljvyYS7Rvpc4POM1QOxXJ7ReBozs4oAmnMeAtGGL/xHtHimamLkWFYgDMYnkeUsAZgq+wcfYCv9wud/xoqAxAd6OzoD6xs1KIHJ2SRjxheKR1MTJxDbT7dHEldoXaJmwVaqZKaXRI9fA9O9rvXD5aquV5DMx7LjbUJ2CoztXiF13+Ur0xU/hLpEKItihM/09JLwPo271qTenzT7xrEIv9iLRYnOmQnJ1lcQ0wSF6GhuDVjsjrhfTFgu5zhMefzgTxwpXuoHcqFLPRtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(396003)(346002)(376002)(451199021)(2616005)(26005)(6512007)(53546011)(6506007)(38100700002)(41300700001)(31686004)(6486002)(6666004)(186003)(478600001)(54906003)(4326008)(66476007)(66556008)(82960400001)(66946007)(316002)(8936002)(8676002)(5660300002)(2906002)(86362001)(31696002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlRVcWhBNTFHUTkzVWtwQi8rN01xa0FmZGU3QWtkTkdZQ2hRc0FmTDVtY3or?=
 =?utf-8?B?WVpjZmxHZHA3MFovZzBYQ01RLzBOb0xtTGRISE16UmxIN25lbkZuakRPQmNV?=
 =?utf-8?B?NTh0STM5czkzV3VQTGpYYzRrcVRiV3YzL0xUNGJyMElCdUFjMVJrL0VVR0l0?=
 =?utf-8?B?T2tNTzFUL1hHVDhWM3JkY2ZZVURUTUdaQ2hsdGdFVlc4WXA3RVE3RDRpN0xu?=
 =?utf-8?B?bGNqMVFYWDN3QlJPYUF5NmsvMFhqR1ppbXUwWERiR1FnVVdVd0hMeDl2UkRs?=
 =?utf-8?B?T3k0OGd4UVltM2dERTlPYWJkcm5jWE1EV3NUM2FaUHNDUE8wcGhMZlNCRklN?=
 =?utf-8?B?L0NLNFk5OVdkNnJKczRwZ3NkRGZQMjUvNzVyNFFqK2FvL081K3BZSzVHdnZH?=
 =?utf-8?B?UXBpdUpkcUZpemRLQVlieFZjc1pNRGxVR241QjV6cTdHWjNpeGF4Zm43RVVJ?=
 =?utf-8?B?cTZlRzJYSzV3bm9ZcEZDQ2lwcVpwS1lFV216SWFCRGJJVFA1bW5IVzlJZlFT?=
 =?utf-8?B?Um9BUkl5V1g1M3NvS0pOZlJOb3M2b0pHRmhxcEdCR0JycFphUTBYbFhvdzlv?=
 =?utf-8?B?UkRJeEdzclc0elFjWXB5aU9yNGZhNHNMWTBmZ2M2WXB0T2pvQVMxQXZGbHRa?=
 =?utf-8?B?OVB0TldOU090bG5uYlArZFRXeFVXNGN5YTVoQnp4dkx0MngvNXA4WmJYZU9C?=
 =?utf-8?B?RERtMUljTGZsNmdiUU9VdThnY3ZqVGtHUUt2a2Y5dmEwdGZJNmNhNXZzeGpB?=
 =?utf-8?B?eVp1YmtYWWNOeWtCU0dTSzJzZHAxcHF4TzFWQlZyYktUY1g5VktMaXhrU0Fr?=
 =?utf-8?B?MHlZOFd1NGpaTVpwZWxBOHhRTWpORit6RDgxcitia3AyeFlDV0ZXamYxVnZH?=
 =?utf-8?B?Y1RFdEtFOTZMcnFEWGdlcEsvWmoveWwrUDdoLytzOTh3S1dNdWRwc1I5YmxZ?=
 =?utf-8?B?bjhrMStqbmJaQXM5MlljWVhlSXZhMW92YjMzNXB5dURNTGJDK1F3eGlpRlh1?=
 =?utf-8?B?QWI2cUdIRTNjbWhOZmJVT0FxTjVlQzBYTk9PNU9hNUhVcmNWaXlkYUNKUUpP?=
 =?utf-8?B?N0Vub0JQbXM2MjBhWEQ1Nm0yUHZ2OElPN1FXQ2RsZ21JN0xNZXJzZW9Vd01R?=
 =?utf-8?B?ZFJPMjY0Q0EwdXZodTdtdEwxTzVZay9aL3U4czB3anFiWmo3aUFCQW1RYUI0?=
 =?utf-8?B?WkZwQ1N0eS9sOS9aazNTUDVwVDlBaVhVcWxVSjNFc3ZFWksxSEp3Szg0T0g4?=
 =?utf-8?B?V1Bjbm94Q0tFcmY2UVI4THRld2d1eExYNFJEdGMza3NuZFFKUzFkeGZJWThJ?=
 =?utf-8?B?TU9xckJnMUR0Q0xPRVBKejdWdmJIL2pTaUN1aEx1cmZsRVRJc3VjSURsQ1FV?=
 =?utf-8?B?OTVXV2tZQisrOGJYb0ovZ1lhdmQ5ZVJ5clo5SW93Y2dpTndZdmovVHZBamZr?=
 =?utf-8?B?a0k5M1FSUkVidmFJZXVjYUhvazhjZUVaai9wSmxYR1pQejFXOWJNalNpMVRm?=
 =?utf-8?B?RWpKYlJjY2d6M1V2bEVDc3V0U285UFoxdm5jZ0RzY2ZyT3ZHTnNCZnpFTzdu?=
 =?utf-8?B?Y3YxdFU0MjBPK3hBQTFnYlR5NE1NdHN5dktsWUx5dzNaVTVlSDl5VVpyQzc5?=
 =?utf-8?B?bkM0dHZVUHhyZjNCSWMrTk9JQmIyeTNhdVJWcnFOL0Y3MG9KRFc5eXRoTTFB?=
 =?utf-8?B?cTRwdzE0b1NFQTBud0RUb1c3YnlPc3U2Y21nMHFXL1A2OTZVdHJFYWl3NnpB?=
 =?utf-8?B?Q1N3djlvY0ZHY3A4ZXpXZzZqWWx2bGd1TGlMOHNqQmVjTk5NWGNScUxXaDlu?=
 =?utf-8?B?ck9lRHluZTJPNWI2M3daRmpVR2dReDZuMlZQSHZnalFaTDkvWWNzS3ozMHNv?=
 =?utf-8?B?VUJXVitDMll3MEg3UzI3dnNsT1NBTitTZ1FWSjg2MmhqOWk5N0pxS2tPci9q?=
 =?utf-8?B?elhjaXFES2NPNU9UVERSYTg3TXFMZ1VxNHh6RHdtTTliS2F1dlloVDVCOTNE?=
 =?utf-8?B?ME9Zc1BCb3FWekg3Y2FxNWFxSzNwVUNWdDhrR01rNFd3ZXRSZ2NBZEFncEZK?=
 =?utf-8?B?M1ZHUWo1NEVtd2JKUHdMdGNqakhkMkFzZ09yOXlnRVpCN3BkbitGSENiUTZU?=
 =?utf-8?B?Q2dvellEZlJYUzdFRTJsclM4S0l5T0tDUE1CN2NSSFkwanJxZEZrRFNpdkNa?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 571f68fd-3531-48d7-f2cf-08db659fb3e4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 08:34:39.7824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bxiM9XW5qHAYGVquAoPZiqx0D26u2VhoM1qM6WplVYyCIc7sodKGQmI/Qa276CyDBOIYk4rFjaZgDLhRwEUCxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685954083; x=1717490083;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ur90bc82G29faDe5tS1HxZ6ad1ux7OL4HnwBuzD+WUw=;
 b=GEzAUjbHvKK5Fgz+fAm1n5dpW3kwIHea7AfrPJvLxLTGCpfH2OLKIzwK
 N4PAnKJR5FozlKQ4MttiRxvMGJmOBMuG8eQAfQU4Vkqal44BN9amaQX6k
 PkfUojuK7woRcDgcG7OGaiYhBDcUFd6/LdVvOrOROmV/Z+/jMIcNuoAtX
 GGRefT6KMUENXCvyhNGw9A/o32heACPL6UMjnouBXSXyRvv1GjQntFaNG
 AfNItu2Sx+8PblRZ8pGFqHqFzM9JNiBrRRXpk/odB8qMHdMm1DivG3wSI
 oFuf5q0x9iIsuqPslX1epXrMuwanzzk/uVIT0EVqESvLThX4p/2MksxdO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GEzAUjbH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net,
 v2] igc: set TP bit in 'supported' and 'advertising' fields of
 ethtool_link_ksettings
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>, Salam
 Noureddine <noureddine@arista.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Bob Gilligan <gilligan@arista.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Amir Avivi <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/5/2023 06:15, Prasad Koya wrote:
> set TP bit in the 'supported' and 'advertising' fields. I226 only supports twisted pair copper.

Minor correction: i225/226 parts (instead of I226).

> 
> Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")
> Signed-off-by: Prasad Koya <prasad@arista.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 8cc077b712ad..511fc3f41208 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   	/* twisted pair */
>   	cmd->base.port = PORT_TP;
>   	cmd->base.phy_address = hw->phy.addr;
> +	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
> +	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
>   
>   	/* advertising link modes */
>   	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
