Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 751AD5F757F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 10:49:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D1EF83E77;
	Fri,  7 Oct 2022 08:49:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D1EF83E77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665132594;
	bh=vzDbR0thK3ZC1KMtLJyUHiBOlQ5WhS7zWjj5VKyri5k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U/7T5U9PMTr+/qV8srbbkPJaRcTkEdvQ1/G3XhxEOQSNR1nIzD7AaOYAXSloSIxOc
	 bHpFAvrPnUxhADzGpNLRa/deppeC3AVk3XSu4bwEyEaiJE46ZntgE+fvVlEEKgmx/o
	 qzlv8/18N2NaMTTPIeFUSJNlcbtIhZck+K8awZ+swgYAyIqYgFohjsNXFo7qDeZhHR
	 Pv+LI1fgZWnhTZwg5LpgJq/vQO6GaXx+2scrsAYptrPUBvMw3JSKLioOUnvw9C2RlF
	 1HBxGaT3HrhaFWnBU9LJ/jefcQ/3updR/UfY0Amulp9mTCn0eOZoI9pbphrrtD6lt8
	 kqmRm3iWXLHzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUaJl2Cblj-1; Fri,  7 Oct 2022 08:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BBDD83E8C;
	Fri,  7 Oct 2022 08:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BBDD83E8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92B4E1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C9E983E8C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:49:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C9E983E8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id trhTFQQDL9DA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 08:49:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56F2983E77
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56F2983E77
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:49:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="305269044"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="305269044"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 01:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="870212808"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="870212808"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 07 Oct 2022 01:49:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 01:49:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 01:49:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 01:49:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d2mIBQ07VYQK/qV/6NwMLxrl66G7H18snAw5UgBbOzzJOiCQ+QumEryv4Jptjef4f4ConZXFtrB4+ObFbs6xxNMm+sWwW89lmTB+QfZwl5DFGI9XtVFYBPaIjQ/0uvRGuGD7OLGUU7SfxP7l8oYL3CdepiR9uV905xwbVOBZI9VTUWAEoFDFmzB94GhbiEQG7cQT3vTqZD5Z3AShIXG55+c9qUShd1OaplYfDv32PnrSBuESghRF/QB1cX4gVe9ncTohOeCwoy+rP7HDD4tXNrAAKzKWxbGXTIEczSSNzP/MPeXarsd2fvjVMD/E4sdAxBsuOPpogoqBc3CTn2swHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Te5AB681ZYT+4GVbag/vJTzGwhkI74OIOrjQNqgr5E4=;
 b=GRtZ6mMpwALiPrPxqa1h63MOTzwP8CMiulpVmWSXrQHXbHH9+AdiG5FfJ/d3uMW6mWrLDCf5fTTplhOOYLxj0DTCnYPhI1jx1uR0m1CSYLC8MyK2NM4JVq3Dlv7TAmW6PsJaDt/iEHPZ1trkLO83FQBKKbNZkO5HBexlA/EtWc4aWsYGBCKaqYb9fNELtExJZ4rNobLjPZ5TN2HJBu1O2P7sKRJngajQwTWBQYxB1cZWGeQi3hdvBs+DGs1owQi7Iv69FwUlfBNyAK8KABl5B5CgMB4K3qLR1TBeqbh/ZLs93SOzzLqjcaO95BYdBl/OIV/P2cKngU789+Bm1Fyywg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 BL1PR11MB5382.namprd11.prod.outlook.com (2603:10b6:208:31c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Fri, 7 Oct
 2022 08:49:43 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923%4]) with mapi id 15.20.5676.028; Fri, 7 Oct 2022
 08:49:43 +0000
Date: Fri, 7 Oct 2022 10:49:32 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <Yz/oHNiBzVh7FwNB@boxer>
References: <20221007072424.83543-1-mateusz.palczewski@intel.com>
 <a6c715b1-2c96-89ef-ee02-eb6e137e1b0e@molgen.mpg.de>
Content-Disposition: inline
In-Reply-To: <a6c715b1-2c96-89ef-ee02-eb6e137e1b0e@molgen.mpg.de>
X-ClientProxiedBy: AM6P192CA0016.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:83::29) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|BL1PR11MB5382:EE_
X-MS-Office365-Filtering-Correlation-Id: 08d0d8e6-56ec-4fe1-65c9-08daa840e132
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z75w4cCFhr2r31JViPdU8SV0fiku9/Ob9YkrjGmY1qDhk+2RgKDGAAPwi2/VcmHR0ciuHbsr6iTRDw8ru16CZjnBmggmZ8s8r0XE1v+2L4cx2gG+FSuO6QbrbTwz0LQf9mA2YF6ggATyJFXsVbtSJuzEC99KHG/2XJVJteDD+iGXt7RYJY1WR1oFhnz7A3K1fcAKQlcVJHNy9ltAZnFrj8/1oN0wAwxdXo0XX+eoFk+DkLg2XertUooLCzz/Zx8RRbk9CMqySPAPC1xE8bgMN6eTcs1Zoyy1jObUyNtfdSfMKhhEm+1iY5YOc/RaWupDnyJZZVgvaxBwm2594im27/iUUwjqhQeKgBDR+3JQ3RRPLEyWGNdNN2ltqHAdasI4PVLMwL7zQEvSRoBeOiakabX68sBpyV/xtrNB0DwiKJnBqKGxVy5bQaW7CugbsHXHdgUmISgrB47rPa+FAnYEARwqtdw1/9RGaZ0r2T1FBzkqOj1mAaHhHF1VWNVWR9x4xdr5TpB/cAlnwcS4at/k/fA7bi6576StQ5gQussnvJxV7Wojbwpfv5jxi3K8J7luBoQZ4cjQD83bAi571psHEAUDEb3RwjVEH2GuwlknH4apEWi1YU/oNUYpq6SbJKAOK4dVpxwgkaEhRq9cg3uV6Q0I0gp8n3RJqa2cYI4mOQzZmYEk68uD8AFmbr39r5OiiNeFkvlP7lXHNl+h+TU3WtVGd9ZNaaCBhKszKZ+Ck7b4bdsr/LCoqF10Ne55k7kk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199015)(15650500001)(66946007)(9686003)(966005)(66476007)(6666004)(66556008)(6486002)(2906002)(107886003)(83380400001)(6916009)(478600001)(38100700002)(316002)(186003)(8676002)(6506007)(33716001)(44832011)(86362001)(82960400001)(4326008)(5660300002)(54906003)(26005)(8936002)(41300700001)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkVqY0l5NFUzLy9SYTY5OGRObjVnUk5vWkd0d3V6QzQ4VEwvenBiYmRHVUQr?=
 =?utf-8?B?UkRRdjVRWEpPSVJKSzBwM0tlUUh6c3RJSEVRTXoyT3N4SUJ4MjkwL0FVUDA2?=
 =?utf-8?B?Mlk1WmJLRS9YcmNMdDlNQVFvMS9QdVloUXRQZjJWcm5BcXR6dktHUG1CbFF3?=
 =?utf-8?B?U0o3c2xhOUdFUVUvRUIweEpTcVZ0RnhEN1BWSGRLd0lScDEwQ3lWQ3pDNVdS?=
 =?utf-8?B?RDEyYkM3WFc0NU5nMGw1aCtENUpXMkYvdGF1VDVkcVczQldoRXFZMGF2cnpG?=
 =?utf-8?B?WjJHczhub2NISVVGcWVjNi9kRmRud0NYMGRXZlJaMnVxQlFZYitYWkUxWC8y?=
 =?utf-8?B?aC9aeFhXcTlUR2lNT3hyeDJUN1B2S280WDF5dGZlYW8xeDVQYjVZYStUK3pC?=
 =?utf-8?B?VlowN2Jwb1VFV3JDaXM1Z21aWUxoSkZPVHNpZjNRaGMwM2NPbnFKakZycjBX?=
 =?utf-8?B?ZUZ4ZFRCa1ljcm9mOUtKaG52SDA1Z214WTFselJQWWZEb0pFb0dSUGs4UGZk?=
 =?utf-8?B?Q0MvRXJFaHdwOWZieXF2bkRFL2g3ODBpY0pWa09LMW96cEZFdEhSOWN3emhW?=
 =?utf-8?B?UmRJWE5WdFFiWmNRVFg2dFRDb0hQRzNqMXpmU3o0RU9PcVcxaEtjaTU5NnFD?=
 =?utf-8?B?VlRrSzJYeXBlYUt1UEV0VnJKWFphSzF1Rng5THNkaTRFMVFSTkFuS1c4VVlY?=
 =?utf-8?B?UEZqcmgzeEZNVFdYR3lGTXd5RDVFcVlwbDZISzUwREdjRC9BMTF6Vks4UkE5?=
 =?utf-8?B?VmdHbEQ1aW5wbHJQdzVUVUtUbHU5U1RQdjdBS3hCU0JuUFR6K2I1ekozWkQw?=
 =?utf-8?B?UjRuZzJkUlA5SStLMnhIN1Z3RkY3Z3Q3bDV1WkYwVjVaQnZHRFBUUjRWVjZR?=
 =?utf-8?B?eEpBMUhkS2VFNmVmdFc0YkFNcENVSHR0WExmV1dBMHJRUURWUkpQWGZvY0xs?=
 =?utf-8?B?WTZmWVFpQ1B4bFIxellRR21TbVJmZ0JmNXIwbXA3SVBnc3pnUnpjamNTYkVG?=
 =?utf-8?B?cVV1UEkzSDlLK1FpMFZkanRUOW5PYWFxKzZNL3Q4WnFwQ0ZaRmZ4QkFoVWc3?=
 =?utf-8?B?NnRiRTFxZThzZzR0d3JDcXNIRDNTbWtkbm5udlNjbFFuQ3lYbVhBQ2JnZjU0?=
 =?utf-8?B?ME9PUkVFTTk3eUJlOXdkWEhLVUxmVW9HTU5vTEtpclFJc096bzJDdkVaRGRz?=
 =?utf-8?B?dFF6REhzWldzLzN1dkk1bXFFV0d0Rnk1OXozajg1RnpGbTA1T0xIWlg0RUFq?=
 =?utf-8?B?SnFZRFdWQzEydFdxTHV4OVdBT0lMZDJPNVRzSnVqVzM3dUc1UFl4ZFI1ZDZQ?=
 =?utf-8?B?USt5RFM5SS94VDZ6T0lUakg5cks1OFJVUnVMek9CdFk3V1hpQ1VwaEJaSVVu?=
 =?utf-8?B?cnRERml1eUFPN2FjWkFaOWlOc01uc1JCVGhkTjdTeHlVUUdFdUNtV3dXRERm?=
 =?utf-8?B?K2xNR3RPbEt5TFBmbndQNlkvRzVKaU94VXN4ei9jZnlaNUxJTnhiWUVwQ1BP?=
 =?utf-8?B?TGRwYlRwSVRZV0FRdjhPdjdNUU82d1AydEsxS2RVbzEzbVFaWHFSQlVHb2I3?=
 =?utf-8?B?V0xIK0FwL0RwUjRUQ25BeEladzhRQzA0aUQ1MTBpVTdicXhPQ0hBeFAxMUQv?=
 =?utf-8?B?M0hSeXVZVXo5MThMT1htdW44akhWZnBvcDVhbEx6bWxpT3BzU2RybEpGN1hK?=
 =?utf-8?B?eGpPMkNrYmc3bXROQkpLb0Vtdklha1VoNTVLS0xGOENVRDZuU1dJcENmZ3JB?=
 =?utf-8?B?VlNhZW1YZWUydGxMN2QvZmMxY0xCYW9BWlR1WEdVTWp6TERFZlBrSWcrN3Ru?=
 =?utf-8?B?ZFFqS1dXYjVJWlkyZ1lEZDNqd0lQTjc0L0tVWC9YbnpMb3EzSXdtZlY2WVlJ?=
 =?utf-8?B?SkJOK0I1ajhsUFdrTEhqNjIrVkJPSHNNRUlGeVhlUEpRWGMyTGRVWElNeGJJ?=
 =?utf-8?B?clRZdFlMMVJRTFBLYmlzM3NTTGRMR3Job3pHcStBSVB5WGlaSHR2K1lLTjZH?=
 =?utf-8?B?N29pcEt4RktYYnVuLzdKVU1XR0ozTzkzVjBTemd3TzVDTnp2Z0pqK1JZR1RY?=
 =?utf-8?B?MUdGTzRqUFA1M3JGVkU1bUVSZ2dZMHRsVzhaOUw0cWhESXBMTTBJVTZBbWp2?=
 =?utf-8?B?V24rWWNtN1JLdHQ2anljZmxBQjJkd096dGgxdEpYWk9uVFBPKzYvTFc3WG5l?=
 =?utf-8?Q?urdP9VVL4xRXlRii2PDTYLU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08d0d8e6-56ec-4fe1-65c9-08daa840e132
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 08:49:43.6677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ORVTC/5VvUTPx1pH6ttuOo6kEVQUvyyMo0Kh7KlvrIC4DDLr/xHMUvtsIm7Jj3AuibWglxnqNRiLmK66+QD8bZ4Kl8Ybick8T+pNtdX3hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5382
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665132587; x=1696668587;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BLoh0/177wCRLmAE1YpAYYhork7gbjFcAzr6uQ4nIjc=;
 b=UZYh00eb6HY7htxeFbeb42uNVQkLJ4Z12HP+/V8atU8J1bBZi1y3zfMf
 DVfCz5/f1ZclPgqR7c7I7cSds6z+aJbIMitRAqm7oQGKuRPOlDOaXE4lZ
 oc3qAFyh94+aJ9Xis0UrDtkM+IEVN71RrKM5Lbo1AxHA34TgoAea8030c
 qFkNU7a8iWQ12kyUkKfdOKYOmZ87TxsaMBS2kLbvxVMP3mY0f04rgPqGO
 PQzNQK+xA6FMNtOiUNFOaKOMEPt/mXd5Pp3Ll1XssWl5uK7f9qaVI9OiS
 PxuJf7CxZXw/wIC8QqE5TuoSVdnLeuVpqRUmYEk9KZNYCPUXrkmNzJdgQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UZYh00eb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when
 XDP is configured in TX only mode
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
Cc: intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBPY3QgMDcsIDIwMjIgYXQgMTA6Mzg6NTZBTSArMDIwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBNYXRldXN6LCBkZWFyIFN5bHdlc3RlciwKCkhleSBldmVyeW9uZSwKCj4gCj4g
Cj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gCj4gQW0gMDcuMTAuMjIgdW0gMDk6MjQgc2No
cmllYiBNYXRldXN6IFBhbGN6ZXdza2k6Cj4gPiBGcm9tOiBTeWx3ZXN0ZXIgRHppZWR6aXVjaCA8
c3lsd2VzdGVyeC5kemllZHppdWNoQGludGVsLmNvbT4KPiA+IAo+ID4gV2hlbiBzdGFydGluZyB4
ZHBzb2NrIHByb2dyYW0gaW4gVFggb25seSBtb2RlOgo+ID4gCj4gPiBzYW1wbGVzL2JwZi94ZHBz
b2NrIC1pIDxpbnRlcmZhY2U+IC10Cj4gPiAKPiA+IHRoZXJlIHdhcyBhbiBlcnJvciBvbiBpNDBl
IGRyaXZlcjoKCkl0J3Mgbm90IGEgc3RyaWN0IGVycm9yLCByYXRoZXIgaW5mb3JtYXRpb24gd2hp
Y2ggd2UgdGVuZCB0byBpZ25vcmUKbGF0ZWx5LgoKPiA+IAo+ID4gRmFpbGVkIHRvIGFsbG9jYXRl
IHNvbWUgYnVmZmVycyBvbiBBRl9YRFAgWkMgZW5hYmxlZCBSeCByaW5nIDAgKHBmX3EgODEpCj4g
PiAKPiA+IEl0IHdhcyBjYXVzZWQgYnkgdHJ5aW5nIHRvIGFsbG9jYXRlIFJYIGJ1ZmZlcnMgZXZl
biB0aG91Z2gKPiA+IG5vIFJYIGJ1ZmZlcnMgYXJlIGF2YWlsYWJsZSBiZWNhdXNlIHdlIHJ1biBp
biBUWCBvbmx5IG1vZGUuCj4gPiAKPiA+IEZpeCB0aGlzIGJ5IGNoZWNraW5nIGZvciBudW1iZXIg
b2YgYXZhaWxhYmxlIGJ1ZmZlcnMKPiA+IGZvciBSWCBxdWV1ZSB3aGVuIGFsbG9jYXRpbmcgYnVm
ZmVycyBkdXJpbmcgWERQIHNldHVwLgoKQ0M6IE1hZ251cyBLYXJsc3NvbiA8bWFnbnVzLmthcmxz
c29uQGludGVsLmNvbT4KCj4gPiAKPiA+IEZpeGVzOiAwYTcxNDE4NmQzYzAgKCJpNDBlOiBhZGQg
QUZfWERQIHplcm8tY29weSBSeCBzdXBwb3J0IikKPiA+IFNpZ25lZC1vZmYtYnk6IFN5bHdlc3Rl
ciBEemllZHppdWNoIDxzeWx3ZXN0ZXJ4LmR6aWVkeml1Y2hAaW50ZWwuY29tPgo+ID4gU2lnbmVk
LW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29t
Pgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWlu
LmMgfCA2ICsrKystLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMKPiA+IGluZGV4IGU4ZDFmYjhhOTY2Yi4uYzA2YmRjMDNkMmY0IDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+ID4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+ID4gQEAgLTM1
NTQsNyArMzU1NCw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25maWd1cmVfcnhfcmluZyhzdHJ1Y3Qg
aTQwZV9yaW5nICpyaW5nKQo+ID4gICAJc3RydWN0IGk0MGVfaHcgKmh3ID0gJnZzaS0+YmFjay0+
aHc7Cj4gPiAgIAlzdHJ1Y3QgaTQwZV9obWNfb2JqX3J4cSByeF9jdHg7Cj4gPiAgIAlpNDBlX3N0
YXR1cyBlcnIgPSAwOwo+ID4gLQlib29sIG9rOwo+ID4gKwlib29sIG9rID0gdHJ1ZTsKPiA+ICAg
CWludCByZXQ7Cj4gPiAgIAliaXRtYXBfemVybyhyaW5nLT5zdGF0ZSwgX19JNDBFX1JJTkdfU1RB
VEVfTkJJVFMpOwo+ID4gQEAgLTM2NTIsNyArMzY1Miw5IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25m
aWd1cmVfcnhfcmluZyhzdHJ1Y3QgaTQwZV9yaW5nICpyaW5nKQo+ID4gICAJaWYgKHJpbmctPnhz
a19wb29sKSB7Cj4gPiAgIAkJeHNrX3Bvb2xfc2V0X3J4cV9pbmZvKHJpbmctPnhza19wb29sLCAm
cmluZy0+eGRwX3J4cSk7Cj4gPiAtCQlvayA9IGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhyaW5n
LCBJNDBFX0RFU0NfVU5VU0VEKHJpbmcpKTsKPiA+ICsJCWlmIChyaW5nLT54c2tfcG9vbC0+ZnJl
ZV9saXN0X2NudCkKPiAKPiBJIHdvdWxkIGhhdmUgdGhvdWdodCwgdGhhdCBpbiB0aGUgZXJyb3Ig
Y2FzZSwgYG9rYCBzaG91bGQgYmUgaW5pdGlhbGl6ZWQgdG8KPiBgZmFsc2VgIChhdCB0aGUgdG9w
KS4KClRoZW4gdGhpcyBwYXRjaCB3b3VsZCBiZSBwb2ludGxlc3MuIEd1eXMgd2VyZSBwcm9iYWJs
eSBmaXhpbmcgc29tZSBkZWZlY3QKcmVwb3J0ZWQgdGhhdCB0aGlzIGNvbmZ1c2luZyBlcnJvciBt
ZXNzYWdlIHdhcyBwb3BwaW5nIHVwIGluIGRtZXNnLiBIYXZpbmcKdGhpcyBhcyBmYWxzZSB3b3Vs
ZCBjYXVzZSB0byBzdGlsbCBwcmludCB0aGlzIG91dC4KCj4gCj4gPiArCQkJb2sgPSBpNDBlX2Fs
bG9jX3J4X2J1ZmZlcnNfemMocmluZywKPiA+ICsJCQkJCQkgICAgICBJNDBFX0RFU0NfVU5VU0VE
KHJpbmcpKTsKPiAKPiBBcyB5b3UgcGFzcyByaW5nIHRvIGBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNf
emMoKWAsIGNhbuKAmXQgdGhlIGNoZWNrIG5vdCBiZQo+IGRvbmUgdGhlcmU/CgpFdmVuIGlmIHdl
IHdvdWxkIHByb2NlZWQgd2l0aCB0aGlzIHRoZW4gbm8gYXMgdGhpcyB3b3VsZCBodXJ0IGhvdCBw
YXRoIGNhbGxzaXRlLgoKPiAKPiA+ICAgCX0gZWxzZSB7Cj4gPiAgIAkJb2sgPSAhaTQwZV9hbGxv
Y19yeF9idWZmZXJzKHJpbmcsIEk0MEVfREVTQ19VTlVTRUQocmluZykpOwo+ID4gICAJfQo+IAo+
IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
