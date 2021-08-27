Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C39633FA131
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Aug 2021 23:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F39E4033A;
	Fri, 27 Aug 2021 21:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6T9vML01PC6l; Fri, 27 Aug 2021 21:33:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0947440351;
	Fri, 27 Aug 2021 21:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6F21BF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 21:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B99240207
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 21:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K9HjUc5EdVDU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Aug 2021 21:33:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4806401E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 21:33:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="281749180"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="281749180"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 14:33:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="599410436"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 27 Aug 2021 14:33:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 27 Aug 2021 14:33:26 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 27 Aug 2021 14:33:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 27 Aug 2021 14:33:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 27 Aug 2021 14:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ne0+Vo3B07LN0bezT1CG3habsXvTx/6T6Iu1uT6D8Wx9se+UA43NG5J9ikgQhpbVz+pSc2iRN5dewb4wHO8zagFDYrMVhdPhE7tPcz8rkCXd0Y7QGfbFB782rEFovdqFgxPm+Hmap8C1uawyvk76jKZXWBEIbJeYjwQ61L3vTXkbn5KxEX4wX3SsKYhEsASeQb7UcyVr3LdnbqiTvLtM+b7I6b5bZ4THfrmfEw0EU6dF8ftzkw6KqHxmXabU9mIfnjsmzVFwecrbKQfPTutuA7eknnfAT6/bPg7Tryc0d39XK9vBZtPWaZE7ppdWSJ2qIFM/rBSaHIO2Xx37+lt/yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6NoqoSIOByH9pqa8zRyDK4AgKBhgSfV4O89DTo5gsEk=;
 b=H3R1rozDzVnJgvxcEf3Y8W8X/zSmiIoihD2QaVvtAe5Fp6VduvLK+KdvQy+W9YiCJ88wtBUnzQ7ioKJwr6+jMqKoEJ9xAgVcPtvSwDlx5RmbbquAcu3AmalxHRDeaaen2MybGTDxc1GA7S1aLL9i84qP328BAbSQiVekKRE8WjbdH1iO/opJHLD7l24Dq4BmSbQDXfeeThgPREXwwzQL8aUby+YjZvsgvgF6EvwzWzvk6zRZBSqq+P4LGF+jq+bRaeCRmVsX+1sgwAFmk45o5fqMY5EGRQ8+4WozDxELs55c9ZeYtKnkcrh7NYDqXF0V0z5/dY8BuYWdQA0rGzCSlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6NoqoSIOByH9pqa8zRyDK4AgKBhgSfV4O89DTo5gsEk=;
 b=hOGfhKbl15KSwD6sYWLsBYESR0aRXMClywVZYQIHHQ3BI0vL2n/aISu8Q1fThFELBIyBmIPtgPRG5fGnTWmMKk0ZcfjXt8hbJw+g7jBAxvOnajXos7pVmTPvhq/OSa/pu+5OjOBUzsp/vsOUMQ2LRGP/l+KkbkE3DKODA8W4tXE=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 by SA2PR11MB4908.namprd11.prod.outlook.com (2603:10b6:806:112::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.20; Fri, 27 Aug
 2021 21:33:25 +0000
Received: from SA2PR11MB4921.namprd11.prod.outlook.com
 ([fe80::443c:2f43:c936:f55d]) by SA2PR11MB4921.namprd11.prod.outlook.com
 ([fe80::443c:2f43:c936:f55d%6]) with mapi id 15.20.4457.023; Fri, 27 Aug 2021
 21:33:25 +0000
To: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-5-anthony.l.nguyen@intel.com>
 <CO1PR11MB502800310CC895CCE4B5A272A0C89@CO1PR11MB5028.namprd11.prod.outlook.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <0d030242-dc75-7f06-f17e-1838bd66ee0d@intel.com>
Date: Fri, 27 Aug 2021 14:33:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <CO1PR11MB502800310CC895CCE4B5A272A0C89@CO1PR11MB5028.namprd11.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: CO2PR04CA0187.namprd04.prod.outlook.com
 (2603:10b6:104:5::17) To SA2PR11MB4921.namprd11.prod.outlook.com
 (2603:10b6:806:115::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.214] (50.39.107.76) by
 CO2PR04CA0187.namprd04.prod.outlook.com (2603:10b6:104:5::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.17 via Frontend Transport; Fri, 27 Aug 2021 21:33:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ffa3b4bf-a0ba-46e1-630b-08d969a24d2a
X-MS-TrafficTypeDiagnostic: SA2PR11MB4908:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB49081ACBC67981CB58A33B8997C89@SA2PR11MB4908.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qr2s4iuMe3ri1blgE1lGk5ArHDvizGnXKhrjATa3/1KZalpeD6MDP10tsW293GusvsQ+DnZrD20N7pvO2+x5zE4J4XZowHuLAhKpV4V/UBQhdIG5RMi2agptq+lxYUOmL4Fk1tQeEx4RJEQl8HVs/Uyj0tO3m7Kmrl2LsxcAKuIb5fCRkY+n1qKUIQVvmESEvs8N75PwxFBpX9fGWZSSmSvQGPM06p5Q2t2gyPk4vijvsdigZMW7KNASI/ktziAJL5gTjNFBFBtnHO/JsqxQ+YFmWXl7sYeN3LLKd0CQn0kJ5NnDq+HrAVX8nwAN+lR4ptZhoQ3ahuUrcGB8NUgbjNJJ8ZFDUVKDNUCXjXVb/uEfykasrpQyBT6ssYOc+r0AASuuDUDgh8W+BMeFf6z3cFNjRtERDTBDMmeldlR5SXjT9zXZfYpLTEPXKBuoG6SIwpmIidtUKfKJosaK4tvrScm/QHiRsGFWh6v+ayG+36EteucaW9p+sdpOP1j73IDKeB76Mucj5wnBIB0+FZv2Ry5rFm53lYsdP2sq1t29xD/Kgk7cksQXRjYrFJxHC01Kh1Qpzupj/HVZkWSgbnmR4jXo2/9vvuIh+UZBtFx/oMTXN8hciTuf7N7m419GqX3ToEqu4DNzB2t7NIjs9/o9xLXrwATX4DKXhpTC05Yy3mjkON7lDOdem62fjYI3DdRc2j3J+xXQBK5ypI0yfeaflZPjLRTaI0gzxlxmUeEyHDM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4921.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(110136005)(186003)(26005)(2906002)(53546011)(478600001)(956004)(316002)(31686004)(2616005)(4744005)(38100700002)(16576012)(6486002)(86362001)(44832011)(31696002)(5660300002)(8676002)(66946007)(66476007)(8936002)(6666004)(36756003)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzhUQnVQS0dOd2hTZi9pZyt5ZnQvL3NueGh4aWJJdzlRWHNOellDVFREaytE?=
 =?utf-8?B?RFR4dUtSblpTck0zeU1tWXRTdnk0dWs4cjZFdVpTNWFVOFkvSzdVSzFVR3Mz?=
 =?utf-8?B?dnlILy82K2tHbEFWbHBqTWduZ0MwUzBWWGI2eEZ5eGJKaWVNbzNaQkUwR0hF?=
 =?utf-8?B?cGIwMFhka3hUL0FOaVhqRWZCWXluVmlBWGVMSmFRdWF4V2N3RG9tTTg3WUh0?=
 =?utf-8?B?NXcvWFZsSTQ2THA3cTJrNjRxU0dsSzZsL20rSkhodkRXMGVxZGMvWHh3TWVF?=
 =?utf-8?B?WjB2MDJBYTVpeEFZdFExNEEzakpub2JJRDZxcktSMENhK2JwblFreHgyODBY?=
 =?utf-8?B?WEFScEVMOE8yRkpIQ21MNTMxb0pFeU5KeU4wMHlOTElRZkZtN2lJQmR4VFdn?=
 =?utf-8?B?eCtlYnVJbGVNRjJFcFZ4VGJZeWpLSS9Sak9ybGVlSXVhTHJEaFRPRjZUZDZ0?=
 =?utf-8?B?Ynh4SDFwWGJRQTFYZUxTdFJVUXN1aTZnZlR4RHZMYi9DajRGMnZsZFhkOGxo?=
 =?utf-8?B?MkVQV2xpTzdHd0hpOFByYXVKM2dmc21NdTFHL0Y3bVJUY1p2d2tFM0YvWGEw?=
 =?utf-8?B?MUk3cjMrWStGWFR4TGlLdFJzdVg0SWhxV0J0dkJHL3BXU1pvcXlxT0c2WHB1?=
 =?utf-8?B?a3ExVkRNM0VTSERTazg4QzNzSGlHNXpoNmdGK3F5eVJCeVQ3RHNoNFlDOEJI?=
 =?utf-8?B?S21tOUptZG93c2lFaHpjTmRvUzVRNFA3REpnbDRjNlFEU3NtRUpmQlc1R295?=
 =?utf-8?B?YWE0VER5M3NhUUY2UHVPSG9GVnBQeklqRWY0M09sblRyQXZYUGV1UFgzMk1l?=
 =?utf-8?B?OHlXMTZMWDMyK2ZNeGMxd0kwRXJ2aG9tQkhRS0pyVFBPUDB3NEFXZ1BET0hM?=
 =?utf-8?B?VEpFRjBVNE1oeDdpdDNnK3lwR1NuZVVtV2dXWlk3SXVhT0xsVXRFYXJOUHhK?=
 =?utf-8?B?MVJ0Z0dWOUF2YTBQU2pxMk1mblBTbStBT05VSHRQMEEwaUxXLzVHK0RLUEc5?=
 =?utf-8?B?aStFOG5rb0dNZEFpZlpRWjhJT1ZvL3Q5NlJIZytndHlUSnJVTzFZaDRwL0tI?=
 =?utf-8?B?V1pGU2I3bUE5bEsrTUkvajMyQjd4MXgvTEtGQ0txMGdQbHVsL3lqY05Zem1m?=
 =?utf-8?B?bTlkRG84SG8vVk9ZRDFpTEtXYWNOTkNjOVUwWm5leGxxRnZ6eE1sT25Rb2Ir?=
 =?utf-8?B?a29UVExlNW1LVzhCci9NT2VOTmVocVkzUk0yTWU5MTVJQXpjSG1mcW9DWCs1?=
 =?utf-8?B?bmlYa1VzUGIxbS9pSU5ObEFSNUFjQ2VWclh4dmVmWGJHUWJtb0diZmFWYWY0?=
 =?utf-8?B?SmI5dHFvdTAyZmlSak04Zy96eE1UTjh0WEdBeGVRN1BFMVNBbDI1aWhqc0o0?=
 =?utf-8?B?VXNleXJNUWZZNHNLczMxSEN0S2xDSmphTTV4VFpRN0ZSNlA0WTl0U3FmUThr?=
 =?utf-8?B?ajVDZTcwL1lvRFNuYVRudjV4RVhIb2hiMVpON096ZWlhZHFabFcvSUJpNWQ5?=
 =?utf-8?B?dGVvWXRvcmsrY04wVE9aOUltS0hVSHBvZmJHOVVtaERYZ0tHVkFyMEcvbVRW?=
 =?utf-8?B?M1laZGdVUUI5cytNV3VGOWczZ0ZicG5JUUxyVHdoUEZxMlBjZDM1VG0wdXVv?=
 =?utf-8?B?ekJhdDA0Y1dORytBSEJHd3FKRE5LOHlQKzUvSGxlRlFDRHhZSytaSll5bEFz?=
 =?utf-8?B?bDJheGxlUHphLzBnZ2U5eXlTTXJQWVJleTlkcmpIZEpsWnhpWXhvYTFIRFNP?=
 =?utf-8?Q?2KUMlOudYJ8Ya1/9spyNfnI8ywcIRFLb72TT+Ii?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa3b4bf-a0ba-46e1-630b-08d969a24d2a
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4921.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2021 21:33:25.2366 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FIRdQkIOlDuBSJzFNm0BCqERbq+Zz4SKs90w9TbzUDY0dtezpCCSvo/I+gR4iqXKmnxTP5NL/GC6wKILusKK22Hmdf6kS6hn8xtbA/IUzWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic
 outputs around time changes
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

On 8/27/2021 1:21 PM, Mekala, SunithaX D wrote:

> Tested-by: Mekala, Sunitha D <sunithax.d.mekala@intel.com > (A Contingent worker at Intel)

Hi Sunitha, thanks for testing, please use this format for your name
from now on (the format here is important and name formatting is
documented in the SubmittingPatches documentation:


> Tested-by: Sunitha D Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)

When you send it the above line should not start with > as my example shows.

Thanks!
Jesse

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
