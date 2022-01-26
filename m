Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AE49CF37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 17:08:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 955DC409A9;
	Wed, 26 Jan 2022 16:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XoNUlUN_8UXW; Wed, 26 Jan 2022 16:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CA1040341;
	Wed, 26 Jan 2022 16:08:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9051BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 16:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54B3440341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 16:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o76P0tSWOwTJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jan 2022 16:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00D2840301
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 16:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643213285; x=1674749285;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=veYE6jo8CYygiDq+xZovKCgK/Oea9FsE0nKHB+i12vI=;
 b=DsBqMotFqJYLLN1DxUp68aHkzbHmGP9fgf/bHKgpcokzRUbL2ncpWJC0
 88yMpB08OmyKHOjiDAlm48gsYKnH2z44Ol0rdtBhO3XoymC8SDr0ips1i
 J2vGuGyRj53yW4aYel6TcGmvY6E1xCE9uyXtsSAuuY9Jv8USXo+yyI9IA
 JBv93zw0Kn2gcVlXr7PkmK0J6HkFAjbAxVp7Qlrr1D+ApqejZHuPCBn5+
 CrZnUNUrQyYFMqYVjQD4sriPL+KzZi4Vsmm4aCXv1REJeOJP1aQdeK9GK
 +F/DKqwuVnqHuAwwmd/pqK1tTQ59cTlxKok7s2sCHRlRm3igbG1/wugMQ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="309896131"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="309896131"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 08:08:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="479927215"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2022 08:08:02 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 26 Jan 2022 08:08:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 26 Jan 2022 08:08:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 26 Jan 2022 08:08:01 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 26 Jan 2022 08:08:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLfgs242y8nx4H8kkMHBWltoc+Oxg+BpGvroBAXkg1rw21mGOfxP4RgkgMC/IjCXl8tctEkwB63t0oiL3r7KDO5/MV15enkswLyp+qOfX9+3uNyfcVnCQiYWTYdWvUkctkAWkfxjHPhiVduS5tMEC2LCDYnd/PfCcJEoV5Kn5YD4g7yi6F5VOJAQt2Up/JB0q+cPNKuY07S7QRKfoXq8r9qGwwIZiBf+95cJY2xNOsVyolGBDxpFTOEZjhl1paVaTpR9qTjAA8HLYNGX1zHztRRddS8H31War0JwHnrN86jjmMNyitq7p1e4UJd2nOpBciLNHOMnr+/1/Ry5oWNcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OKWtPr7tqUyiuwFgHnVOFj1ndCfi+cRMbE9wRcox4KM=;
 b=a4FtRtin+XXrRQky/WVHdfgBQRMcmdwChhKdWi4YpjLTvk5eSLa8XLuTngVkp/jUgY0aqSc+Vpghqw78Hpb6NddkfEqzADUULfWYjXx1+yb0yGK+V98JLHGq2eCQmfL4N3LL7nGJUVj1jjx5+SSAl30M2I/Kh0bBloJ/qk/aQNXreFxxJDE7pJRAonuwwtkLYNwwfMtiY8RU7xyQgKrujFHQBP4/wOy9qbJADoFeuqHPLXWk6JiaYfZO0w1Dt0rc3T8rd3B3HdKXRj11/jgXzNPp8BW9U3l+AbsiKlhHHTPSd4LSfLU5KhwQYP3yvrqXJ6SgyTo7oNc7FG80yFPdAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by BL0PR11MB3204.namprd11.prod.outlook.com (2603:10b6:208:60::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Wed, 26 Jan
 2022 16:08:00 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::44df:92e8:8706:13a3]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::44df:92e8:8706:13a3%3]) with mapi id 15.20.4930.015; Wed, 26 Jan 2022
 16:07:59 +0000
Message-ID: <885c9ac5-7210-b875-9db9-6f3ea54ab496@intel.com>
Date: Wed, 26 Jan 2022 18:07:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220125173123.962540-1-sasha.neftin@intel.com>
 <a223b8a3-e54f-0a50-1aba-05b8a09e1ace@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <a223b8a3-e54f-0a50-1aba-05b8a09e1ace@molgen.mpg.de>
X-ClientProxiedBy: VI1PR07CA0255.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::22) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af984d1c-1fcb-4dba-284f-08d9e0e605a2
X-MS-TrafficTypeDiagnostic: BL0PR11MB3204:EE_
X-Microsoft-Antispam-PRVS: <BL0PR11MB320419C3783EEC752304049D97209@BL0PR11MB3204.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q/F1gzjU8nrImtWWEPZbcsM44ad8a/9t6Q1kJZNfZwipcP1RLbS+546QRyxbaqcu7JhEnxQkj9gJZdyqXNCMZwj1srE+RhX1sU0aGM8S0EU3n75xwNUAJdgM4BMaYTBI92Qdm5pxhGOc8rZGvP+/K8jcdPVJuBdj+LUZFKlW+94qUab6T8zeiURZhNkjfVM3XKLLfKen1OhrMcxaQszeeBlraO+lMKH2QpJeTcr03NvfvouUHgEmh2GsEAjDrAw4RbKCnrwbRyWtjnCebIpj7MU9+2efqQmuRyQR9ekxo5vbmnG3Xu4dhMz0IQmut/NfcR5pGb5JxegnsvUWQb5u6l4S4Pln+EpTzVKS5go6X6FSfTAmiKRruJSlnmwWFlCpqdGtcxrEOjLyiL5VgnINRXAcerq3LkVSmCgvH1/GDlnkvzFeyIojV5/EpK5Im7hXpbPd6DWLMwcgs55qpT0av8qWjORYQusAthmpdgVYLa5nvrNMZKSHM3XYCTBHqka1mk61qTxXmKIxz8xvhBkIvxbxYNh+RnNPFtkYnYBU8KXM23CALwpEcBxOeORpihKp6qY3/bmcwuGsDSDBXAykTRtNkyN3CMhWGwBYtlqnrVGMndUB/XFCOPAnYO83BmdCBbqPgt/+DgQ6vTl0VqEVxeaf+TEqoB7Cj+kyIWpap3e+uE12BjU0TmOGCcB8yDGXSXGCFQNKQBWG/0H3tIrIup9xbWfF612JlUMMYpzGJlgw4auLcQ4Ar2XMyj2ixyd7GpV1JdZ07P2UGiKt97ePXWXjttWDtzYo2VM+W0wyGssLdP2HqC9JhFvZzNQXIKnHXC5kPeJf3a93LC8mSjuPTwi6v6L4jW9fJEV4VV+YBts=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(107886003)(8936002)(83380400001)(2616005)(5660300002)(6486002)(66946007)(26005)(8676002)(316002)(54906003)(6916009)(6512007)(186003)(36756003)(31686004)(2906002)(82960400001)(53546011)(6666004)(508600001)(4326008)(6506007)(966005)(86362001)(66476007)(66556008)(38100700002)(31696002)(32563001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkpzSE1iRzB6cVRUWTR2elk4eHlyRFB3eWhpdlIxMEhjRnl0OFJWWGc5UGEw?=
 =?utf-8?B?YzlYZXd0WXM1c3lJN3ZSZndaWCt2RFpycmZycDlYeWJVUFVMUlUzRXZLbmFP?=
 =?utf-8?B?RXNHK1Y0SEtkRkNRczZTTUpmL0t3b0c4ZjF1REdNZWRhY0dMZWFNYUR6Ly8z?=
 =?utf-8?B?VHk4VVNxMUw0RjBuZ29rend2Ym03SDZ4M0ZUb2R2WnBISWVZOG1aMGJsTGkr?=
 =?utf-8?B?TEVNZ2pKZDVBeS9nMHhlWklUSmdDK1lNT1BCQ0dCZHc4d3c1Q0Jsa3V2Qm9q?=
 =?utf-8?B?NnZjTWFWSVJMZ3JQRUhjR0ZuUVNZSGVoV1U4RVIyc2UrMUIvdURrOGxLbzFS?=
 =?utf-8?B?SUpGWUR3LzJaK3YwRDhWMjV0OW9VOWRPUGtaZSthYm1TM2ZOLzhXdXJGdnhR?=
 =?utf-8?B?S05JejBXUmZuUzJRajhpNHgvcFc1S0ZuSlVENFI2RGdjOEFRRmcvcFR5bXk1?=
 =?utf-8?B?dGdEOXdrN3l1RGFxS3VwcUEycnlQRUhBa0dCdWJnTzYwWERXWURYd2JvTWla?=
 =?utf-8?B?ODFvcDhHQlhjVTlMQkVaeC93Rmpsb3F2MlhxRHJwZ242RHQ0MDRrNjhpMktC?=
 =?utf-8?B?VHEwYjZxYUJySEozd1ZOSzNWMC9pUkROMUpRWWJTOXoyMXRPODk4dERpbHpt?=
 =?utf-8?B?ZHp6V3hoT2hDWTJRcDhvN0FmWjVZQktsc0hmckppWkZMOXJWdGdtc1dnaFFl?=
 =?utf-8?B?ckUrVDd4RXhWdVRwRUplRVhNZy9rRk1YckthYUhFcFpxVHpqUDFkOEx5eHBU?=
 =?utf-8?B?eG1Wb2xITkkrdTNUbmd5S20xTzZWNEhpbGhFQVA4cWtpa2RZaThORjVuL056?=
 =?utf-8?B?QmZTaFYycWF0Wm94QS9oZk5ON21zWXVwdS9PVEdtMHQ2QVQ0TlRvS00xc3JJ?=
 =?utf-8?B?WjJPYm4xS2NDczlyUVhVd0VTUUJQQll5U2VlQ09vUjludk90UG83eXJvOVI4?=
 =?utf-8?B?cWVyQWtWMDViK2IwSXFVRUhFbTU3eG1oL0xxNDJaYlZpT0pzWmFBcXN3dDlz?=
 =?utf-8?B?blRvc2hLaEYvMFVqY3B0bDZJcytTdjBJajRyZWdaR3JVQWlWYTRzY2JyaXcv?=
 =?utf-8?B?Q0FLWTE4U09BWUdjTTFGMC9ncWFNcExEMEV0Q0o5YnNlL0ZVZ3JRUjN3QmJT?=
 =?utf-8?B?cWZqQUw0WDJ4WnJURnJpK0tpck0rVWQzQlpWeG4vSWFYK2J0Z2Z4b2hCUzRm?=
 =?utf-8?B?cDUvNExXUjFTdjVhSVo2bkF3blFzWVZyRnpIcEx0VGthWFVualI5UXdnRTBq?=
 =?utf-8?B?Vnpnak9uS0tpbi81S1JnM1dTU2hzeFBhU2wxQXRaSXhTeDR0cnI3Wi9ueVdO?=
 =?utf-8?B?Rzh5NFc1T0ZPTFBjZVpDWVBabitRa2c4Z3gxT0hMeDhQTCtISmh4eGFDSVJ6?=
 =?utf-8?B?NnZzclJyTmkwcWsyNHIvRng3WkU2aGJsVm1oV2ZmSTJENldlOHdBeXVlaC91?=
 =?utf-8?B?QUZieUg2aUVIVWZmRnRubDhPY1Z5OEVubnV2Zkd3c1ZiMGJraDZPT3RSNUxl?=
 =?utf-8?B?VExNUys1QmFtSDNpbk55ZG0rR1FmM2FSc0l1MWJyczNRTzdFTkR5N3VCbGVV?=
 =?utf-8?B?SzlXSk1jODhBamdCK1VhcFk1dWw0MlRNV2k0WTRUTzFueDVKUHZJZVd1ZDhG?=
 =?utf-8?B?UnFkMlBxU040R0lwOWNhRWJTblFYZ3hWdEZlcC9uR0dqekkvZ09IQ1F6cy9h?=
 =?utf-8?B?M3NBUGFjSHo3RFFEc25QSy9UZmFNZnNsVW8rczZ2Z21YMFVYUENMM2ZOTE9i?=
 =?utf-8?B?SEpoK0hOQTBuNEo0RzVxQzlpOXhLaTNpNXo0Tzc4dXFOMTR6VzFpT2hCQ0Zl?=
 =?utf-8?B?eGdVUCtNeTZCbmdSL09xZkFFME1BTGZHaTNUemtUaEtOQkJYMDAwL2JBeERW?=
 =?utf-8?B?ZUUwTUtONEZFcVZiRXVSNTV6R0pyNEhvRTJtbS9FZm8vT01WTTNBU29TOHlz?=
 =?utf-8?B?Z2JNblhFTVViK2o3amJ1VjFKL3FaVXpOZG1KNW1iSWFFeVdYK2tRUjhFWWxH?=
 =?utf-8?B?dEh1OXFMQkdQU1JBeWZXeEs1L05jVUpJT2h5UU5FaS9qK1NQVzlRNlNEL3h3?=
 =?utf-8?B?SEFPcVFpRlNiK1lCNlJwVzFLOTE4R3RIMUhZVi93TmJYTURGVVBEbzJPMHVI?=
 =?utf-8?B?QXhxdTRZLzZqd1lxRkFzM3ZheENVOXhheEhFcVh1V0dQTlRwYmw0VFZVU01Z?=
 =?utf-8?Q?Whoi1rEfLWMlh27OsqFcb9I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af984d1c-1fcb-4dba-284f-08d9e0e605a2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2022 16:07:59.5310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9zmXpMUd3BEaxFAYejiCLJYrohAFO2vufVgap/CkNLWNIJk7NYxX31fj+0t5p5m4bEaBUiShEUzAy4AEEyGYyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3204
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix possible HW unit
 hang after an s0ix exit
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
Cc: Nir Efrati <nir.efrati@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS8yNS8yMDIyIDIwOjU1LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+IAo+IEFtIDI1LjAxLjIyIHVtIDE4OjMxIHNj
aHJpZWIgU2FzaGEgTmVmdGluOgo+PiBEaXNhYmxlIHRoZSBPRU0gYml0L0dpZyBEaXNhYmxlL3Jl
c3RhcnQgQU4gaW1wYWN0IGFuZCBkaXNhYmxlIHRoZSBQSFkKPj4gKExDRCkgcmVzZXQgZHVyaW5n
IHBvd2VyIG1hbmFnZW1lbnQgZmxvd3MuCj4gCj4gV2hhdCBkb2VzIExDRCBtZWFuPwpMQ0QgLSBM
QU4gY29ubmVjdGVkIGRldmljZS4gRXh0ZXJuYWwgTG93IFBvd2VyIDEgR2lnYWJpdCBFdGhlcm5l
dCBQSFkuCihJIHRob3VnaHQgeW91IGFscmVhZHkgYXNrZWQgbWUgYWJvdXQgaXQgaWYgSSByZWNh
bGwgY29ycmVjdGx5KQo+IAo+PiBGaXggcG9zc2libGUgSFcgdW5pdCBoYW5ncyBvbiB0aGUgczBp
eCBleGl0IG9uIHNvbWUgY29ycG9yYXRlIEFETAo+PiBwbGF0Zm9ybXMuCj4gCj4gQXMgdGhpcyBp
c3N1ZSBjYXVzZWQgYSBsb3Qgb2YgZ3JpZXZlIGFuZCB3aWxsIGFmZmVjdCB0aG91c2FuZHMgb2Yg
Cj4gZGV2aWNlcywgcGxlYXNlIGVsYWJvcmF0ZSBtdWNoIG1vcmUuIFBsZWFzZSBzdGFydCB3aXRo
IHRoZSBwcm9ibGVtIAo+IGRlc2NyaXB0aW9uLCBhbmQgdGhlbiBleHBsYWluLCB3aHkgdGhlIGZp
eCAoZmlyc3Qgc2VudGVuY2UpIGlzIHN1cHBvc2VkIAo+IHRvIHdvcmsgYW5kIGV2ZW4gc3BlY2lm
eSBpbiB3aGF0IGRhdGFzaGVldCB0aGlzIGJlaGF2aW9yIGlzIGRlZmluZWQuCj4gClRoZSBwcm9i
bGVtIGRlc2NyaWJlZCBvbiBCdWd6aWxsYTogIkhXIHVuaXQgaGFuZyBvbiBzb21lIEFETCBjb3Jw
b3JhdGUgCnBsYXRmb3JtcyIuIEl0IGNvdWxkIGhhcHBlbiB1cG9uIHMwaXggZmxvdyBleGl0Lgo+
IExhc3RseSwgcGxlYXNlIGxpc3QsIGhvd8KgIHRoaXMgcGF0Y2ggd2FzIHRlc3RlZCAoZGV2aWNl
LCBNRSBmaXJtd2FyZSAKPiB2ZXJzaW9uLCBob3cgbWFueSBjeWNsZXMpLgoxLkFETAoyLk5vdCBz
dXJlIGhvdyB0byBleHBvc2UgdGhlIENTTUUgdmVyc2lvbi4gSSBkb24ndCB0aGluayBJIGFtIHRo
ZSByaWdodCAKcGVyc29uIHRvIGFuc3dlciB0aGlzIHF1ZXN0aW9uLiBUaGlzIGlzIG5vdCB0aGUg
c2FtZSB2ZXJzaW9uIGFzIE1FSQpjYXQgL3N5cy9jbGFzcy9tZWkvbWVpMC9md192ZXIKSSB3aWxs
IGNoZWNrIGhvdyB3ZSBjYW4gY29tbXVuaWNhdGUgdGhpcy4KMy50aG91c2FuZHMgY3ljbGVzIChv
biBteSBwbGF0Zm9ybSkKPiAKPj4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MjE0ODIxCj4+IEZpeGVzOiAzZTU1ZDIzMTcxNmUgKCJlMTAwMGU6
IEFkZCBoYW5kc2hha2Ugd2l0aCB0aGUgQ1NNRSB0byBzdXBwb3J0IAo+PiBTMGl4KQo+PiBTdWdn
ZXN0ZWQtYnk6IERpbWEgUnVpbnNraXkgPGRpbWEucnVpbnNraXlAaW50ZWwuY29tPgo+PiBTdWdn
ZXN0ZWQtYnk6IE5pciBFZnJhdGkgPG5pci5lZnJhdGlAaW50ZWwuY29tPgo+PiBTaWduZWQtb2Zm
LWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+Cj4+IFRlc3RlZC1ieTog
S2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPgo+PiAtLS0KPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2h3LmjCoMKgwqDCoMKgIHzCoCAxICsK
Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8wqAgNCAr
KysrCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmggfMKg
IDEgKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmPCoCB8
IDI2ICsrKysrKysrKysrKysrKysrKysrKwo+PiDCoCA0IGZpbGVzIGNoYW5nZWQsIDMyIGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9ody5oIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ody5oCj4+
IGluZGV4IGJjZjY4MGU4MzgxMS4uMTMzODJkZjJmMmVmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaHcuaAo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvaHcuaAo+PiBAQCAtNjMwLDYgKzYzMCw3IEBAIHN0cnVjdCBlMTAw
MF9waHlfaW5mbyB7Cj4+IMKgwqDCoMKgwqAgYm9vbCBkaXNhYmxlX3BvbGFyaXR5X2NvcnJlY3Rp
b247Cj4+IMKgwqDCoMKgwqAgYm9vbCBpc19tZGl4Owo+PiDCoMKgwqDCoMKgIGJvb2wgcG9sYXJp
dHlfY29ycmVjdGlvbjsKPj4gK8KgwqDCoCBib29sIHJlc2V0X2Rpc2FibGU7Cj4gCj4gQWJvdmUg
YGRpc2FibGVfcG9sYXJpdHlfY29ycmVjdGlvbmAgaXMgdXNlZCBhcyBhIG5hbWUuIE1heWJlIHVz
ZSAKPiBgZGlzYWJsZV9yZXNldGAgdGhlbi4gQXMgeW91IGFkZCBjb21tZW50cyB3aXRoIExDRCBh
cm91bmQgdGhlIHZhcmlhYmxlIAo+IHVzYWdlLCBtYXliZSBldmVuIGBkaXNhYmxlX2xjZF9yZXNl
dGAuCnNpbXBsZSAnZ3JlcCAtSXJuICJkaXNhYmxlX3Jlc2V0IiBkcml2ZXJzL25ldC9ldGhlcm5l
dC8qLyB3aWxsIHNob3cgeW91IAp0aGF0IGl0IGlzIGEgY29udmVudGlvbi4gSSBwcmVmZXIga2Vl
cCBpdCBhcyBpdC4KPiAKPj4gwqDCoMKgwqDCoCBib29sIHNwZWVkX2Rvd25ncmFkZWQ7Cj4+IMKg
wqDCoMKgwqAgYm9vbCBhdXRvbmVnX3dhaXRfdG9fY29tcGxldGU7Cj4+IMKgIH07Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIAo+PiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4gaW5kZXggYzkw
OGM4NGI4NmQyLi5lMjk4ZGE3MTI3NTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+PiBAQCAtMjA1MCw2ICsyMDUwLDEwIEBAIHN0YXRpYyBz
MzIgCj4+IGUxMDAwX2NoZWNrX3Jlc2V0X2Jsb2NrX2ljaDhsYW4oc3RydWN0IGUxMDAwX2h3ICpo
dykKPj4gwqDCoMKgwqDCoCBib29sIGJsb2NrZWQgPSBmYWxzZTsKPj4gwqDCoMKgwqDCoCBpbnQg
aSA9IDA7Cj4+ICvCoMKgwqAgLyogQ2hlY2sgdGhlIFBIWSAoTENEKSByZXNldCBmbGFnICovCj4+
ICvCoMKgwqAgaWYgKGh3LT5waHkucmVzZXRfZGlzYWJsZSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiB0cnVlOwo+PiArCj4gCj4gV2hlbi9ob3cgaXMgYGUxMDAwX2NoZWNrX3Jlc2V0X2Jsb2Nr
X2ljaDhsYW4oKWAgY2FsbGVkIGluIHJlbGF0aW9uIHRvIAo+IGBlMTAwMGVfcG1fc3VzcGVuZCgp
YCBhbmQgYGUxMDAwZV9wbV9yZXN1bWUoKWA/ClRoaXMgaXMgbGVnYWN5IGNvZGUgYW5kIGNhbGxl
ZCBhcyBwYXJ0IG9mIFBIWSB3b3JrYXJvdW5kcy4KPiAKPj4gwqDCoMKgwqDCoCB3aGlsZSAoKGJs
b2NrZWQgPSAhKGVyMzIoRldTTSkgJiBFMTAwMF9JQ0hfRldTTV9SU1BDSVBIWSkpICYmCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoaSsrIDwgMzApKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
dXNsZWVwX3JhbmdlKDEwMDAwLCAxMTAwMCk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5oIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9pY2g4bGFuLmgKPj4gaW5kZXggMjUwNGIxMWMzMTY5Li42MzhhM2RkZDdh
ZGEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4
bGFuLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4u
aAo+PiBAQCAtMjcxLDYgKzI3MSw3IEBACj4+IMKgICNkZWZpbmUgSTIxN19DR0ZSRUdfRU5BQkxF
X01UQV9SRVNFVMKgwqDCoCAweDAwMDIKPj4gwqAgI2RlZmluZSBJMjE3X01FTVBXUsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgUEhZX1JFRyg3NzIsIDI2KQo+PiDCoCAjZGVmaW5lIEkyMTdfTUVNUFdS
X0RJU0FCTEVfU01CX1JFTEVBU0XCoMKgwqAgMHgwMDEwCj4+ICsjZGVmaW5lIEkyMTdfTUVNUFdS
X01PRU3CoMKgwqDCoMKgwqDCoCAweDEwMDAKPiAKPiBCZSBjbGVhciBhbmQgdXNlIGBNRU1QV1Jf
TUFTS19PRU1gPwpJIHByZWZlciB0byBrZWVwIHRoZSBjdXJyZW50IGRlZmluaXRpb24uIEl0IGlz
IGNsZWFyLgo+IAo+PiDCoCAvKiBSZWNlaXZlIEFkZHJlc3MgSW5pdGlhbCBDUkMgQ2FsY3VsYXRp
b24gKi8KPj4gwqAgI2RlZmluZSBFMTAwMF9QQ0hfUkFJQ0MoX24pwqDCoMKgICgweDA1RjUwICsg
KChfbikgKiA0KSkKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYyAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0
ZGV2LmMKPj4gaW5kZXggNmZiMzQzN2Y2OGUwLi5mYTA2ZjY4YzhjODAgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gQEAgLTY5ODcsOCArNjk4
NywyMSBAQCBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IAo+PiBlMTAwMGVfcG1fc3VzcGVuZChz
dHJ1Y3QgZGV2aWNlICpkZXYpCj4+IMKgwqDCoMKgwqAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRl
diA9IHBjaV9nZXRfZHJ2ZGF0YSh0b19wY2lfZGV2KGRldikpOwo+PiDCoMKgwqDCoMKgIHN0cnVj
dCBlMTAwMF9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPj4gwqDCoMKg
wqDCoCBzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoZGV2KTsKPj4gK8KgwqDCoCBz
dHJ1Y3QgZTEwMDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Owo+PiArwqDCoMKgIHUxNiBwaHlfZGF0
YTsKPj4gwqDCoMKgwqDCoCBpbnQgcmM7Cj4+ICvCoMKgwqAgaWYgKGVyMzIoRldTTSkgJiBFMTAw
MF9JQ0hfRldTTV9GV19WQUxJRCAmJgo+PiArwqDCoMKgwqDCoMKgwqAgaHctPm1hYy50eXBlID49
IGUxMDAwX3BjaF9hZHApIHsKPj4gK8KgwqDCoMKgwqDCoMKgIC8qIE1hc2sgT0VNIEJpdHMgLyBH
aWcgRGlzYWJsZSAvIFJlc3RhcnQgQU4gKDc3Ml8yNlsxMl0gPSAxKSAqLwo+IAo+IFdoYXQgaXMg
QU4/CmF1dG8gbmVnb3RpYXRpb24KPiAKPj4gK8KgwqDCoMKgwqDCoMKgIGUxZV9ycGh5KGh3LCBJ
MjE3X01FTVBXUiwgJnBoeV9kYXRhKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHBoeV9kYXRhIHw9IEky
MTdfTUVNUFdSX01PRU07Cj4+ICvCoMKgwqDCoMKgwqDCoCBlMWVfd3BoeShodywgSTIxN19NRU1Q
V1IsIHBoeV9kYXRhKTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgLyogRGlzYWJsZSBMQ0QgcmVz
ZXQgKi8KPj4gK8KgwqDCoMKgwqDCoMKgIGh3LT5waHkucmVzZXRfZGlzYWJsZSA9IHRydWU7Cj4+
ICvCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgwqAgZTEwMDBlX2ZsdXNoX2xwaWMocGRldik7Cj4+
IMKgwqDCoMKgwqAgZTEwMDBlX3BtX2ZyZWV6ZShkZXYpOwo+PiBAQCAtNzAxMCw2ICs3MDIzLDgg
QEAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGludCAKPj4gZTEwMDBlX3BtX3Jlc3VtZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCj4+IMKgwqDCoMKgwqAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHBj
aV9nZXRfZHJ2ZGF0YSh0b19wY2lfZGV2KGRldikpOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBlMTAw
MF9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoZGV2KTsKPj4gK8KgwqDCoCBzdHJ1Y3Qg
ZTEwMDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Owo+PiArwqDCoMKgIHUxNiBwaHlfZGF0YTsKPj4g
wqDCoMKgwqDCoCBpbnQgcmM7Cj4+IMKgwqDCoMKgwqAgLyogSW50cm9kdWNlIFMwaXggaW1wbGVt
ZW50YXRpb24gKi8KPj4gQEAgLTcwMjAsNiArNzAzNSwxNyBAQCBzdGF0aWMgX19tYXliZV91bnVz
ZWQgaW50IAo+PiBlMTAwMGVfcG1fcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gwqDCoMKg
wqDCoCBpZiAocmMpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmM7Cj4+ICvCoMKgwqAg
aWYgKGVyMzIoRldTTSkgJiBFMTAwMF9JQ0hfRldTTV9GV19WQUxJRCAmJgo+PiArwqDCoMKgwqDC
oMKgwqAgaHctPm1hYy50eXBlID49IGUxMDAwX3BjaF9hZHApIHsKPj4gK8KgwqDCoMKgwqDCoMKg
IC8qIFVubWFzayBPRU0gQml0cyAvIEdpZyBEaXNhYmxlIC8gUmVzdGFydCBBTiA3NzJfMjZbMTJd
ID0gMCAqLwo+PiArwqDCoMKgwqDCoMKgwqAgZTFlX3JwaHkoaHcsIEkyMTdfTUVNUFdSLCAmcGh5
X2RhdGEpOwo+PiArwqDCoMKgwqDCoMKgwqAgcGh5X2RhdGEgJj0gfkkyMTdfTUVNUFdSX01PRU07
Cj4+ICvCoMKgwqDCoMKgwqDCoCBlMWVfd3BoeShodywgSTIxN19NRU1QV1IsIHBoeV9kYXRhKTsK
Pj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgLyogRW5hYmxlIExDRCByZXNldCAqLwo+PiArwqDCoMKg
wqDCoMKgwqAgaHctPnBoeS5yZXNldF9kaXNhYmxlID0gZmFsc2U7Cj4+ICvCoMKgwqAgfQo+PiAr
Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIGUxMDAwZV9wbV90aGF3KGRldik7Cj4+IMKgIH0KPiAKPiAK
PiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
