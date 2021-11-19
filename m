Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8732457655
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Nov 2021 19:22:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66DDC8295A;
	Fri, 19 Nov 2021 18:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NZynosi8MdiG; Fri, 19 Nov 2021 18:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5935E82948;
	Fri, 19 Nov 2021 18:22:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 602F31BF20F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 18:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E6F740970
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 18:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wwt-cVThAokb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Nov 2021 18:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45DCE40105
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 18:22:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10173"; a="221345730"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="221345730"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 10:22:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="587824632"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Nov 2021 10:22:35 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 10:22:34 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 10:22:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 19 Nov 2021 10:22:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 19 Nov 2021 10:22:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RM6qNP6VpmGv+ZWQ8rQ91BtfJQg79D5K6TvXpeeX68r3SNe1ukB16Xm1ORS2SFUAfWbjXWmoX8+LQHEuIGFrdfUdx57oH+jPrmYLn/OA2GKjutSv/JJXdVEiBVMW/sa5NALGOo34vIGzfKXEt0ttpW4CkSQo+ZR+vI2rk1rBKTPokHqde5w4MeB9BpZvLPOat7GhpB8QFWplhmPY30AAezWzf0Smh69EGlMhGAi5D28r2TzpoeTT28p3mn2XT3+LkUorJ2okpokyxyzJUOq9lR//tp+mwjSMBAyql+AiP1GykYQ0dab2wrn8485DQ+SSxq1CXEQkIPsvtTW4jPg39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONNG3wsY3UdzZmDOc/J5xpHe0FTRbvBRvZp4Oru9BMg=;
 b=Gj8n4asOVsgPSqCxI45AkfmN6bNvYGcfkMmtWDvLntKqG8kqi4RZ0Z3Qgv+g4QEZGHiU7gM2wr5SZxZQbzdgCidncjLpihoBKdb2O1XDO6Jg4W2baugii8QQMJ1VveDC4v2QB0qIlz3tvwJIXGLxG8aHGuz78tcCKc7yOoWQROOL/3HKZdj6nPPhFQMeOYEBAFZe/rXk/A7NL5m7Z0P9unKGvLibWSeQF20yF221lsZq2aMlmjoZvrbinTgWgKjC0ZmK3kgNqnF1aNBC6Xfn5V5fIRrOY003RLWPr+RjYio+ammytQQc7ieRh0AEEhsi3YeyRyB5wqbMdbt4I1rQpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONNG3wsY3UdzZmDOc/J5xpHe0FTRbvBRvZp4Oru9BMg=;
 b=yBXTSpY6eE/iIqjq91LV3UOvmiHez0jWeHyThD2JjEgo5sD1fO1Q73fm9lLua4y7AugVQrVn3l84eafIgQ3DJ6N5ETEKGVuriKlJOC3JsxGl850aeE/KDwAM4YayHgeKuOAciCyDYtzOrOqIGFFdLn6MsMCfmpQ0UA63n9xE+YQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2750.namprd11.prod.outlook.com (2603:10b6:805:54::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Fri, 19 Nov
 2021 18:22:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4690.029; Fri, 19 Nov 2021
 18:22:30 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix NULL pointer
 dereference in i40e_dbg_dump_desc
Thread-Index: AQHX25yaOt8cb0ThEkmW6kmnPIT4WqwLLT8A
Date: Fri, 19 Nov 2021 18:22:30 +0000
Message-ID: <491af7df6c21a21148316723ab4b720e7bbdcd90.camel@intel.com>
References: <20211117101737.8961-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211117101737.8961-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3ea2e1b-cc47-403e-f106-08d9ab898ca2
x-ms-traffictypediagnostic: SN6PR11MB2750:
x-microsoft-antispam-prvs: <SN6PR11MB275073D211C0F3591956C696C69C9@SN6PR11MB2750.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jOA7NgHN6BpU6pO5YfEs7glA8kUfIq4VG2fayVCbxFkdpXpggSC5BkJGO4mEmwD8OUTxDisa/7/95ybRbTIVGJXOxRrFaF5sH2/hJmOdZeIH2NtTcd8rn1QXt3ivPdYAqduEgEByPZNHAR58yOv3XzviXxmObZzuEulzc5442RNLKqqxfsbvBItSgrdgovrIaUT8l7E4FUXFfohlho9MNfHbdvyUR3qdfueb5HYYJfxwXRrr1CjII8SYpKFDpznQiVebNKqd9Lj9+0zYX32gk1goQcvO50QVFI6pS5a8/8AHPA9DIZhrhp92ubVOeFhVdb0+WXXTpUNOSSp3hluVxIu9otbi49Ds4/7cOk7L7gBSWGZ2JDXI1ZZERmRqpPBSI08xBf5UaDqvSYjqB35bu+6GNoKD9aYiuLUXxJfxrSkxczbNodwg9wwf49MtyIuGvNRkk1cojDz1W5bS+LyatYnH2xAXjVMe3lvfJl6Dmr3XYAkxHwIyZ1dQC8lxQ08+bOwp0aHkYmcc2j4upcIDEaHTxUNOd2X3SUZJR28IIzsAsqJByT18X4QssuwmP2KSGq3+4M1DxijeAARBmUn7uTx6lbmfgO6Euz8ydhq90sv2jnm66EnimiuIwThCxbCE5KNcRYswvx/3LPsv2UfowLtQrwq0q1rPAg3OZrQ8BIW+qHVvTB+VN/E1cXzgVoSHhA7xjLRbYtUIuZ0Zx9b0bQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(6512007)(6506007)(26005)(107886003)(5660300002)(316002)(186003)(8676002)(76116006)(66556008)(64756008)(66946007)(91956017)(54906003)(6486002)(66476007)(110136005)(8936002)(2906002)(36756003)(4001150100001)(66446008)(122000001)(4326008)(82960400001)(71200400001)(86362001)(38100700002)(4744005)(38070700005)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFhhRnFGWnJ3OU8yelREWGk0TmFxWEJIU3FNL0tOVkhxbm5QOTlyZzZBMDEx?=
 =?utf-8?B?Wk5yQXUrcVV0VkNLY2VkeFJsSFVFaVYrenpoK3B2RTVxcXJVVXc1Q3Nuclh3?=
 =?utf-8?B?bHNXdmpwWU9tMDY2UjVHMWhsWG9Lc0xURDRsS2dvTDBrSHZtRndaWVNJZ2lv?=
 =?utf-8?B?Zit0cnBBOVI0ZzlDSXJIUG1VV3hobzV4YWJ3T1lHNWJtN0Zid0svTFVzaGwy?=
 =?utf-8?B?ZDRpbHRSVFlhUkFiSG12L2tlMXZsWmlneWlsLzlPaXY4b3N6R3ZzQTJ2RWk5?=
 =?utf-8?B?ckRINTg4ZS9kaE81UDh4eFF5c2V3Y0NyRXNhRjYxdUJYYXJZMlVOYlFad090?=
 =?utf-8?B?ZFowRmQ1QXVBUytid1FjR1VoalZjY2lmdVFzOGpRcnhhVTFLelVUT1M3eUFJ?=
 =?utf-8?B?ODZ2WDg3ZC9MeTVPajUxTEMzdEt6VzdGUHhPaFVRQVNBVXpLMm5QVnBYRFhK?=
 =?utf-8?B?b0grdkFRNFZrckhXRnMyOC9mREJXNkEvQXhZRkNpeXNnOEg1bXdBaDQ0T055?=
 =?utf-8?B?OTI3cW9UUDdzanZBNnFwRWdwOEdwUzBIeSs0VCtBdW1TMmJHRnVaZVJha0sy?=
 =?utf-8?B?emZuZHVGckxYNmFaeFpGMTlURXViVFpKa1AycmZJTlhsMXVSSGlRc3VxcjhJ?=
 =?utf-8?B?MHpEUWh3enJ0M092WGM0UkZoZW5XQnZJRWRITXl4YTR1bWYxUzRxWXdWL1NF?=
 =?utf-8?B?akc2bWc4dVNVQnZlSkxyWjVHL0VidzVLZFNRczJaR1lUdmgzcm5BRUF0ZCtk?=
 =?utf-8?B?WnB0dkJPRTh3Z2ttODk4VlVBSGFXcFZoWXZHMGo5bzBGKzU5Y3RYUTN1QStE?=
 =?utf-8?B?UjhDeU83eUo1a2JFOTIvaDBORUdYV3ZQN0Z6VW5Gbmo1b3hzdWdQUndWVHhl?=
 =?utf-8?B?Y3l3bysrWWI0ZjM4Nno0b0Mway9YcmpDUHhMdkUrSUgrdU1welpGcG9VcFlW?=
 =?utf-8?B?ZHBFUUwzUmkyTkJqMzFqMS9kZlZQU1NOemhQczZadThaTUJHV2RIdXI4UENz?=
 =?utf-8?B?Vi9vUGViQit6WFJEeGp4bG1qMzdXeVpoOXo1WFltK2FXM0Zwd25SM0lkQmdo?=
 =?utf-8?B?aC9lVXFUTnBSbkJvMnFtY3F5aFM1bnlYaEk0Y0tBSmpvZDltTzlqN0VKcWk0?=
 =?utf-8?B?MWpHNGhoTzU3SWRMOVl2Qk1UNEdsbm14SzZocU9LQUkrQ3hzNWRGbzRrT3JD?=
 =?utf-8?B?WTNtdkF4NHN4TFdSTmdRa0FaQUs1aCt5T3NlNCtqUm9qSllBUDdjaitnZFpB?=
 =?utf-8?B?K0pySjNWcnI3Q2Q2aHNhMFhBV2p1U01vL1dKZTZJOHA1dU1qZC9KbnpOTDRa?=
 =?utf-8?B?eEVwSTdaV0x4ZGYvY3NJNnF6WnE3TDUrQldRY3BUeE5PcmVVZG15WG56alho?=
 =?utf-8?B?L3VrcDhhK1F4UFp2dlhJMlluNDlSSkRvTWlHUkFnS3NxWVhUUzdkOG1OZXN3?=
 =?utf-8?B?UktWcTB1K0U5YlQ4VGpQTGhnRzY2TUpjTTZic3VVd0dsQk83clVXanFsZklv?=
 =?utf-8?B?ODkxMno4ZDVHUzRBZDZTcXBWZGFEaVRjUmdQTFptYS9JK1pJb3RjZ255QkJ4?=
 =?utf-8?B?MWNFRFBZSnBibjBkUi9LMHJMTXdhM3NzU1EzSXNRV05BWTJUOXpGd3dYYURS?=
 =?utf-8?B?Y1dMblVXbHkzeFVCMlZLN1pVZ01TYnQ3OG5iN2Ftb0NLREtoOEJpZ1FjT0NB?=
 =?utf-8?B?YTJTMlpjQkU3RDlubVF1ZUdmdkFnbzE5TVhWTURXd0VKWmZhMUFuK2FqajRk?=
 =?utf-8?B?Ry94eEdRREFHNzRVZTVHQVJQK1I4aXY4TURjZWlSL3BraHZ1QmoreWUzN3J0?=
 =?utf-8?B?S1cxWkpUc0pKTitGWFplUVl6MUV6ZVJrNmR2Y2lyeE51aFIwODdpZlpIY3VH?=
 =?utf-8?B?TDhSZ0w5NDN2VWl5Q2YrVGdjMEdvQjJUVVdJVFhMTnNVSWQ0Y0N1UVk3VzVY?=
 =?utf-8?B?bCtnTmlhMml1VEZBSGdqenl6aVlaaTZ1Vm9VeG9idXNzRWlOMmg2bUoxMWZa?=
 =?utf-8?B?eVZ6MjhuTGJJelZuZ3ZMYVlTa1RlU1EzT0VnL3Flb1E5OHBhL3RGdm1sTzQ1?=
 =?utf-8?B?eFkxejNxVm42dHJZS09lOFNqaythQWFzdGUxWmwzejQrQVdsK0k5N1YzZHNh?=
 =?utf-8?B?MHVtUFlKdHhkVGtmTjZSMmF4NTJCaTdUN0pyak4rUkFhZEZoaFVveWFsQ3dU?=
 =?utf-8?B?NHRncnprUlgyN21OMHA1RWtyNUdCOHNGNEdFNlQxSHFORHcvaFE1OTcxOHFz?=
 =?utf-8?Q?ufM/FrjQICsq+Acly0ZlzBM5voYjrWd/u3HqNDtdFQ=3D?=
Content-ID: <51B2BF5CB1BF99498833ED1886BE8796@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ea2e1b-cc47-403e-f106-08d9ab898ca2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2021 18:22:30.6974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jl8PRaTrD5tvDaRbhhUjvwK9i8D09xmZjmdTuleP4nkuWNhAhA1uz5r+Pe6yT+p3gCyz09eZXPMr5g64SwR7XaZcLl070cumDw0z+6QEE50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2750
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix NULL pointer
 dereference in i40e_dbg_dump_desc
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-11-17 at 11:17 +0100, Mateusz Palczewski wrote:
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> When trying to dump VFs VSI RX/TX descriptors
> using debugfs there was a crash
> due to NULL pointer dereference in i40e_dbg_dump_desc.
> Added a check to i40e_dbg_dump_desc that checks if
> VSI type is correct for dumping RX/TX descriptors.
> 
> Fixes: 02e9c290814c ("i40e: debugfs interface")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

There is no Signed-off-by from the author.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
