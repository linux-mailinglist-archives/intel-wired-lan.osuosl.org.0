Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2276C90852E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 09:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 845C384393;
	Fri, 14 Jun 2024 07:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-h9n_NX-fAD; Fri, 14 Jun 2024 07:37:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2C9684394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718350635;
	bh=hon5dHQVWaTqSirMaR6wOp9L4y+YApZhOLcAIim4Gfo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lm2groJvIjhAaZt274iZjNSPfWt+dPIwSfkTDrdYzWOnavs6cp7TbOaRzf+J3NAqC
	 onV4ZvDLCqk+K4h4b4sa2GC3+67m7YdtVrbqe+K8ODk7qnR6qwN8rDBqvF1fVxUL4c
	 gicukHYPLWKk7zqpWGCNJ0WTinqRncCtnTCLwnTuhHCCoraorbKR6ocqjZ8JGO3X+3
	 8X58lSZk9WvU7e/Pypc/5L0WL8fPlrY2H6NKCbPdNmcJMMd5th6ukyAQtAjw0/9CZB
	 0sTDy84TE8Khntb/YWqFqpFX3XFll7fcKonrfQzJiWKAL/6douUAEdYtlm8qE2OPsC
	 ijU/fYbgvp2fA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2C9684394;
	Fri, 14 Jun 2024 07:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57CDA1BF334
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 07:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 434DD842E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 07:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IR4HL1AJ1zsB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 07:37:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B75F842E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B75F842E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B75F842E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 07:37:13 +0000 (UTC)
X-CSE-ConnectionGUID: iNYZv1NOQA2GTg9rEtguUw==
X-CSE-MsgGUID: fV1NJqnmQA26232fMrcSsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="14959015"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="14959015"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 00:37:13 -0700
X-CSE-ConnectionGUID: dNWWsK9zQaKcwoL+Q31sAg==
X-CSE-MsgGUID: FZr4vszjR82yivzinXkfdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="44957520"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 00:37:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:37:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:37:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 00:37:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 00:37:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfYZwdpbZF+JMQ/S5cWHd8HWTaLDXefJPVp7nNP0QMbnMzTqVZzzXZ8WD9upRpkak4pDn9IS5wEaAjUs4K5tIapxjawYtgmeIXrl2J3UyhHznTMyJVzhsN+4BM4v6b+UIhwwR0MFOYvQHiXX5dsVz0OAN6tI0EuGHUk7G19YnZ7fQ0xhW/++cMxHjaoWfu/Jm1ahqgqyE1QegEI52b/L10kOQHt77Q0X+BqNlEAjAaEhGagPPvZpZ/BAbNQiChQagnawFTZfKSUQ569JGSCssfO7H8gWrQLuPTXbtj9eRoFoGFT7V6nZCaxbkCetuvMvqBhctFPsV+tc+I5DCXv7jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hon5dHQVWaTqSirMaR6wOp9L4y+YApZhOLcAIim4Gfo=;
 b=IXIdaOLDTxXiaLBYNNz/iM0/bWlkHvaS4ar0977Bw8HqWJuyoTwAQFN2GOttIpMcQMsE/RlS5Tv6JbV0pEJyVm2SiXHM7Qh+hRbhAV5AzxO+e2ibCZVr9sbeGj9V4NUvILd3gm08Sb3o1C9Pd5MAVN4SnLqEMPpWa4LvUA/pIKynIT7SMyVLR7VjznhpdrXZkaMdfq9DXxgT80da+wWr9xSWHo0g0oQrR+9x/s362hscZCRKIFJAWxtamYMQ9oGKdYhlGcQvDYqKG7Fnof1EKodx0HprU6XdiX0SZz5lUul7KAaoGfCNEwGHCZQSLD0GEt/vODIQrY3yk/0LmskdVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Fri, 14 Jun
 2024 07:37:10 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 07:37:09 +0000
Date: Fri, 14 Jun 2024 09:37:02 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>,
 <anthony.l.nguyen@intel.com>
Message-ID: <ZmvzHqGHQz0ZSTii@lzaremba-mobl.ger.corp.intel.com>
References: <20240528090140.221964-1-karen.ostrowska@intel.com>
 <CYYPR11MB8429472EDFF52E822D765238BDF22@CYYPR11MB8429.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CYYPR11MB8429472EDFF52E822D765238BDF22@CYYPR11MB8429.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI1PR07CA0219.eurprd07.prod.outlook.com
 (2603:10a6:802:58::22) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|MW6PR11MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: db12083b-c5d1-4912-883f-08dc8c44cc92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230035|376009|1800799019|366011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lsxq4Uh7Q3BYbhEVus5wb+rGFUMocaidn3vMCRrVRJvQboBCySvUsMqbrOH1?=
 =?us-ascii?Q?HCE9gK9YR8nDfCavRdAGL0t2TTqjU6XKD/zHLQAcmg3voqFfeWI16CfX5c8P?=
 =?us-ascii?Q?Jz2unkWb/MeECbUwBTIhiFEGzchsavq8krI77U5CIcKOwD7645759jf5shi5?=
 =?us-ascii?Q?fjUx280G99uP56ZKkiaS6dru4QgltRa7naTJ3TwABurKb7EOUZA9rfMCoxGY?=
 =?us-ascii?Q?lSTcbzzqkUlaO2ra3nfktcUlIb+3tL4WkdHra8S/K+I/i27p/rKlahW5PK9J?=
 =?us-ascii?Q?/GJZVqEmko8ciWQhdOtRn4hU6tFVK/4LQ7xzntb9UaN0ZgpfcjLjNTxqtcyN?=
 =?us-ascii?Q?vkeq4MJEstJ/3zy7kxMkGaVSeaczbSL2cbowFFSbqrpezt3w72V+tKuIVkY+?=
 =?us-ascii?Q?b6gS09lb7HypkPf5jsvwXtDxbE6hUk4wHZ177hoFQThHLgCd3V+CEGfrYZmx?=
 =?us-ascii?Q?mjjSqIsd3zjD/r7a0NPOPwz8YejKDJK0j/T+M1nu2s7JljjfrgbrUmVDHcen?=
 =?us-ascii?Q?PjwY7tYLXfwAoGt+PLvUAecGXItlhCtBuXMS6pk+HAyc+jQxmLvmom6xoJYx?=
 =?us-ascii?Q?QGG58VjkdeswJd4auuW7x2Uf8l0oY4WRD/cmLmSn2L5+I+F9M8DJwOa8wzMy?=
 =?us-ascii?Q?gVz5c2Wb/6raju597XT/MeJuAu9MeP0M1qBpB/5GWcdNDVmP4h0No6idERzs?=
 =?us-ascii?Q?Is+lrfXo0OaJ5fCEu9I2pd+0kSMsmcJ7/arpmwpAVFLALBa/8f29KPG55d6i?=
 =?us-ascii?Q?Nck6W5QMaREg9D5ZEFLocQzCH+hQDXWfCY99WRkHZqsqVtCYsPYNDgFSjmmO?=
 =?us-ascii?Q?L0gTDA3I+TZTe0fzssUSwdfToZigAsRNx7oqobGK1UpuRMEZNmRwNiJnTB8H?=
 =?us-ascii?Q?iqnxNR2CQvOjQay9QjmH/yhRgPm4ZdTN4MJ4bsy30+FJsuj5p/0hKNTvJmbz?=
 =?us-ascii?Q?5Vng+60EaqLbHtkDZEtR1FzcyFerkfkzI0pjayoFBqSfH4Zb/B5kPIfl1Xt5?=
 =?us-ascii?Q?HvrTiC9bstgfMKVhkgsc94LRhGSK7EAyhcZp5jg32gaNV+Ta8wOXib/jSpMy?=
 =?us-ascii?Q?mcUCiRYS/haFCRZGVw2eWKxr4qOwe11nGyGPpefLccRI8XmLh9oW8aSVG5vC?=
 =?us-ascii?Q?zfD0G9kMiVlZEnA7hUtlFZhIOW1ISSuyBqMmjW/zxcPJR2PLFcFIoh72UzEg?=
 =?us-ascii?Q?7IyA38Ee3XlxT+5iFJtcoAZ2GuBwWsyfWXn4ds6XAKZiaKlTZpay46+ZI0Mm?=
 =?us-ascii?Q?xsrdMKXTJlepMngZYoQKVSPYaHN4zpM9re6aOxJfiDJo2wNSMlgDGazMcdgV?=
 =?us-ascii?Q?swQltxbyjSmUf1CyOy/1CIGu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(376009)(1800799019)(366011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4uwdfa+62ljf+uJBeWFAG9WEltge1T3KkDYZ2o69NhHVMKIkupOlkv5VSCT/?=
 =?us-ascii?Q?T2hVLLeqaOdoa7aUYikgIUlDtsSz3+X1ykC0LC/jDj/Ju5huDLbu5tvJO9RW?=
 =?us-ascii?Q?wQJzPdvvm6p3j0NNzskghzTzte+p6UvrJciiiPSEQTc7H+Kl8XV/E6X/daBr?=
 =?us-ascii?Q?NQ0oLzg0G3Oh2DmMJHeqHJfcaXMwXazML0xOrftBzlhSf0Ah84zRyRcGyXQF?=
 =?us-ascii?Q?Ol+RKq9y44SjzZ6Rqw3RP5qwT4wQ2F8ST+VcwseXWACfdQlK/9bYXlS/CRsQ?=
 =?us-ascii?Q?UNvUfssBZinrBUSm2CMRWC+S57v7tAAEdyMORAY3hbEO9/q0NhpIFHW6ryBz?=
 =?us-ascii?Q?9w1+Wrhs/sGmjD6gNYqKvUs8dcq7qsB2UDTwcs94b0WC+kICF956ltwnq3DS?=
 =?us-ascii?Q?bV7A6BQTXUq4ZaNg9APnXRWeGRwJMnGtea/zmCh2ajJe0yfSxvP8udvnNWif?=
 =?us-ascii?Q?U/moiqWkwPBMg9+FgdBkEdtLnilfrwDrTi2znr/cyNA5GQEDUmoWMre4nJCZ?=
 =?us-ascii?Q?ysHQqSrvttmSRljU1hNhuhrNd2B3GEYAFaLkeMsdj5y/GHKrCM02XdhgU0Wd?=
 =?us-ascii?Q?lGhr5vi+bUFO7RwA/8yG/jIk72IeWPCKkkKAyc/zWiOjOl4gzfbJl5TekHQf?=
 =?us-ascii?Q?haOHwXmv4KD1QgHjSazXaJ2Fg5J+wsPp6fYtPGfLuDSwvz9xvHwo13ttyUP6?=
 =?us-ascii?Q?4PNh5OUmV5MHaFI0D20bU7kCc0sBhMIOkzAt3yVCmgkEMSRZNQqR545ZZO2j?=
 =?us-ascii?Q?4Ay7o8OF4TqucyEzJ3a7VTNw0UTe1AIRFeaErpamuQ4GjlY3kXU/CnrNawPg?=
 =?us-ascii?Q?N3MeTKLT6iVmZrPgl6OoEagaqtT6fSfLeDXw4luOlFkyvoV8lpyimQ0KNe+M?=
 =?us-ascii?Q?+BJW2srBBLxTeFsgSnscVWSFxf3BkhbAFfSqEDqaVXNWd6DXJaP0IZ06qn7B?=
 =?us-ascii?Q?/cmB4WZXEZxkU5Eh0yHgrdYAUdEiwJhyz6CM/n/K9vZZXIBlg+6qAC68L1EI?=
 =?us-ascii?Q?4iE0iR2LgiC8UuudSRFUy639lIuOTJTaP9brjr84Z4bTT8Op940aq6k/GWq8?=
 =?us-ascii?Q?6Hu+yXhvzzWBflMd3cHbPX/E43D8Xow2aS1MroxD7Ekfe+N9WaYtOYBQh6n5?=
 =?us-ascii?Q?aG3g5KIt26a8/5V0aj79nB6P9gAuZR/VxhkPldkatutj/EypqaRrCfl0TxVH?=
 =?us-ascii?Q?FskOLPT7R2DgU4L2/nQpTdqMBI7SJph3Fv5s4nZrGxQQvDkbFDmDBdHw0BSh?=
 =?us-ascii?Q?fjLHLZfydS6vFLR7lI2PyEp3Ijo4chZG6pumjtOcS51E3DIORAEykxl99G0z?=
 =?us-ascii?Q?veEMq1LUvjJHFjIq4Cmvp+gGgwVYqW1PeV9GPLSYTVF6nJvGvKYWNDJXdoQ1?=
 =?us-ascii?Q?VHEquTL8CHpMoCN93Htesl64ExndTWeFLn+zi0wy3qS2ly/2xinnhd8Uo/Yh?=
 =?us-ascii?Q?2bm3JV06dwjk18sBxKx4PxvG34ITWWSUCAUWdOlzJ5AwxDBFP7lLD6lYqPQA?=
 =?us-ascii?Q?SrFUzMT1WyCfkD1X59c3vZRwJmksi6ODS2snqM4fjgjKl6I9IFgAuZtITCJT?=
 =?us-ascii?Q?PmExDTafOpWI4WDlchiv6LXc0IPrS/NxRtPTI/tnQUfXy6Eu8Hn6hwFRid+S?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db12083b-c5d1-4912-883f-08dc8c44cc92
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2024 07:37:09.8509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: os5EjUMK3Nwlwe6EQBUvgkakSIWewnS3UXnCrjM+5qY/q6ut48alLwzjC9OEI5md5LiULga6UjEySVPIvF5yJgFLpiD3jWlZ4j3/lM8tGdQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718350633; x=1749886633;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qllEhnEp4DmuG1v34aKB5qZ4P7uSpPSr3M2zGiTX2Y8=;
 b=drZfBo48Vn01+NG1aVAC6hvC9riR9uGV2e1VgpRpA4IadCWo8k//zQts
 /Eq0StMDuyr/pou8kSshAQZUm4SUDv0Oijh+j8YG5Y2BNPm6K/FzRTj9n
 eGzNwWWY74vsVuzMbcl+7RNe35hA/lvMBUkjhVnEn1r/C+sUUAEOQaahQ
 lF5sKGZ1WF7uYgNqTCJmamw+bRbg80O86Ox7J0hd3mpRx72kDUXDnZZwh
 VGUfeuzIx8xrqby8wHVcEs6UouTFceRWjQQKowfvlHnROE07fACgwloyg
 ajLjrDYjvPDky48OVUvPrrYC2dkUm07stwtasX5Fi9KtLSe9s59bWTZFZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=drZfBo48
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: Check all
 ice_vsi_rebuild() errors in function
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
Cc: "Ostrowska, Karen" <karen.ostrowska@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Joyner,
 Eric" <eric.joyner@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 29, 2024 at 05:09:52PM +0000, Pucha, HimasekharX Reddy wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karen Ostrowska
> > Sent: Tuesday, May 28, 2024 2:32 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Joyner, Eric <eric.joyner@intel.com>; netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Ostrowska, Karen <karen.ostrowska@intel.com>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Subject: [Intel-wired-lan] [iwl-next v1] ice: Check all ice_vsi_rebuild() errors in function
> >
> > From: Eric Joyner <eric.joyner@intel.com>
> >
> > Check the return value from ice_vsi_rebuild() and prevent the usage of incorrectly configured VSI.
> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> > Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++++++--
> >  1 file changed, 10 insertions(+), 2 deletions(-)
> >
> 
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
> 

Do not apply this tag, Reddy has found a regression that causes unneeded error 
messages.

[43788.733637] ice 0000:18:00.0: Error during VSI rebuild: 0. Unload and reload the driver.
 
