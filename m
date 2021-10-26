Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E5A43AA0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 03:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3B1F4015C;
	Tue, 26 Oct 2021 01:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIKouIZKziC3; Tue, 26 Oct 2021 01:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C320B40106;
	Tue, 26 Oct 2021 01:57:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75B011BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 01:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F55A40106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 01:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k45rM3wb389V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 01:57:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DB1C400E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 01:57:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="228562360"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="228562360"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 18:57:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="578362211"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2021 18:57:35 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 25 Oct 2021 18:57:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 25 Oct 2021 18:57:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 25 Oct 2021 18:57:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F5nPCnQdDUaAJDV3rWCi5Z6xFmi+F8saP2v86SYT1Y4FnsxO6pj5Kg3z3UsOQL0AESGNXTS+ouCNi6a85OwUWEY3lMHoxt1B9wHsz9ozU5seiREAvXbBTFNPaOzieMyzk2DwtSE1TsIHf0Y6j01f/Sgvy8l97vknkGM8iwauj4dtS3epBLjEBF7wIhLb//TrJ4sD4pbSd6EIpG9MZm5JSoAQWoS/uK1RTd4B6Fy/F5Y7fZX23ORklwKugbQVurUL+lsmCD0/fS5FzTUIOAec/tHMte+5FSIzkKtPnyDiVjDB/sC8tbQO01DfJnVIXw7cHehEplcYvvRoGMvyYxCljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBquncx7RRwYjgWBMin4Q0cuFxv/OM59nSFphDKH5gM=;
 b=oRPyzn79AsDdN2Z/wyKySgp2BiuBdfBqHiVqdv7hrd7+GwwVtTEymLVwuZOkL8FMqJof/xiTb1R+K55j2ft4WKVCC3BuIqhjNtpEQFktSFMTlVyXPNyd0HfZVpBcxOuG68ZzrJhAte5wcO93XQDQb7koETc9RaIpfdtuDsjBjIDxkvQQuJzcJwXCR4EeV1QsOqO/gOq6EKBMxmWnV8hH/IsaV5C/q94mMcVBPAHExel6anz5BXcVTTF8YoW9Mfp+5prmEwkpq8Hegd3/9v+ZGAl5d9kXL5/pkLgfD9NMNo7JVF1TO6On2oLfENkB5IVcjISqV1BrPTMTtn1SR6gtQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nBquncx7RRwYjgWBMin4Q0cuFxv/OM59nSFphDKH5gM=;
 b=U/RI5zRtPWAPzwHmuveSGPyfOnm7AUGFtcRINKNzPE11HnbnMib1bYHTheXW2uh1wFt62KeR+L2afZLN074+21PGoaKS9aDfcV/LW3Zi/3eDejfuHPsoRHxLTH06eeS8C5sa5859SMrtuS4bmbLwTivACHKyBmyxx+k93sDWlHE=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1408.namprd11.prod.outlook.com (2603:10b6:300:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 01:57:34 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72%4]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 01:57:34 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v4] ice: support immediate
 firmware activation via devlink reload
Thread-Index: AQHXxTP+JhclPrKLtUyBjpH0oBtkhqvc+FeAgAEFoJCAAKGFgIAF78kA
Date: Tue, 26 Oct 2021 01:57:34 +0000
Message-ID: <027cc22c-89f9-e4a6-64a1-716bc4cf1c21@intel.com>
References: <20211019215423.3383750-1-jacob.e.keller@intel.com>
 <2adb7d96-b114-d5dd-20ef-31f43bc263f0@molgen.mpg.de>
 <PH0PR11MB5095792EF885D0C6C4EE853FD6BF9@PH0PR11MB5095.namprd11.prod.outlook.com>
 <9c8faad5-da51-0e1c-793c-b3ae1407c031@molgen.mpg.de>
In-Reply-To: <9c8faad5-da51-0e1c-793c-b3ae1407c031@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ed0ac13-63cf-4d76-f4e7-08d99823fa68
x-ms-traffictypediagnostic: MWHPR11MB1408:
x-microsoft-antispam-prvs: <MWHPR11MB1408F1FE5EAAD89743C90867D6849@MWHPR11MB1408.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O9m1QmPDeD5uYYQL0BTKgivnqKjZ7pVkm3WjXmwPARdMUIgs2yM/ySIjN2tRKq31T+7+FPjlvU9nvrwbs3wsMIQPryIZFLvteDjrHQwT11UvMiKu182lAAan+aKXe4F3E6PlW3Q4i1k8xUZ5D+PmUU4IIWGKwYkKsJbGvTJ98x3wl0yAdCKwCSVBg3qa404odIho34DkBaRclXEvJSUXpb1plLz8IpNFue+Q/0J8HWrZw1WNXqMqJcTmDsMxenR/N7WgpiSHQIHhOsXKWPBw0CKkLZbXumIvYw0/ZZhM5MJvpdPQe/aQlWB1i3Uau8KtU/r19i+vN+I0LszrK9DcL/pqHmYHo3mq/u/qsqtwlLZJxuA8cQQrGBC84WD4copjF4OygdvwWxV5zLCVtPCSmMdPzA/KnLXA7WCJJTDPfdkJNE84U77lOXBNb+zQ0XGafSoEAbGHEFSnPuMqsu0qBgi2Kcmwdh9bCAiHKeP5pDanHyq/ODne6bVkqI/ItYUi+1LCzgYW4y3KdeCJtQz2wFIsf2+Ip2xfWNYuB+MPcQQbHSITQnbPLdu1KsgxTl65ySVQeZpOifnSkH72w7w6prY4vtOLMfyVvhuec+7IWkOe21pDqeYjyBEfk1s2gmaaJzXf18adXRt7GiP6Q+v7OOUCoZL8u6bh7NlmADiiF7+6dPk3Kg4AviRs1A5nUlDQ29metuZ/jXCp/XMycQxJEKlNBYBkgmE2tBhXjM3tne4bpVb+u3vjFs0rvZPBzbsAI6dsZnqaa4dcwcGFHLFV1yqN45BDAFreCx27ajRrh58=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6512007)(53546011)(558084003)(8936002)(31696002)(26005)(82960400001)(83380400001)(2616005)(38100700002)(38070700005)(6486002)(122000001)(64756008)(66556008)(66476007)(76116006)(4326008)(66446008)(2906002)(6916009)(31686004)(54906003)(8676002)(186003)(5660300002)(71200400001)(36756003)(66946007)(86362001)(316002)(6506007)(508600001)(14773001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGxmZnkvUEIxVG1kOXZzczYzMFRXTHRoWTlDczRUMkNzT0dqZVZycHJ6MFJU?=
 =?utf-8?B?MHFZUEthQU1iRUtoc005bHR4Z2NydkZON2s3N3pVY3d1WHRrSWtUMGl4VFoy?=
 =?utf-8?B?elZVdVZueHRYY3VuMS9acUpkeHR0WFk5eXNFd3JQSDNuY2c5RFByQ3FlTU1P?=
 =?utf-8?B?QndQQ0xheGI1RWNHSWcxV2VQbTFOdWh4YWdGZStxc05JS1p4UW11WVhiQStU?=
 =?utf-8?B?ZUxLcjFYZUViaDI0dDBoSGJJaW00Y3YwU1ZuRUVNNUh0OUM4ODRyTlJBMTN6?=
 =?utf-8?B?Wng3ZHg0eW5pNVdOSEpzZnhWMDFIeXIzaHJSTUo4YjJWbWFHVEpjTUdoclQ2?=
 =?utf-8?B?M0d2WnhsWGdidTBxbTd1azBCQXdPSkdUN2J2QUlPRmQ1YUVoOFVJSklSa1o1?=
 =?utf-8?B?OXB6aWZpL1kwdzNhaDZERDZvUXVlUWlTb1A2WkZ3TmRNNnZyZ2VLSFFSdFp4?=
 =?utf-8?B?SDN6dERKVHJkSVM5QStTcDZwQm9DNEhza0ZxMERTQk01Z1hPeFVTODAyd2to?=
 =?utf-8?B?QjZSaHVhNC9EN0ZuWnppY2JGVERWSWZzZFl3eDBkM053Zi9lTTFvK3h0YWZz?=
 =?utf-8?B?eG5XK3NOUGJWV2VMY3RCOGFDVXp6TmVSREhJSW9nbmcvelkycTRBMEF5YnI4?=
 =?utf-8?B?N3cxODRJbWVYS2liOXB5MUlCWkxUenhPMkZ0NGI1TzZiU0Q4QUtWS1VmTXUv?=
 =?utf-8?B?bXF1WVpMa2M1WFZRZVpxVkJDazVYRXZZenR4ZG9YVWdXdDJkckdwYUdRZ2E3?=
 =?utf-8?B?M0w0YkVNRWw2bXFaMUxsM0FadWp3RDJUanB1WFN3Uy93MXZBL2xqbk9QUWtk?=
 =?utf-8?B?ZjFFRE1OSDBzYVNZdHljbnczSlpxZ1poWGNyYUhTeThob2p1aWJkNXpiNVhy?=
 =?utf-8?B?a1hQMjFkYStnbXVVWUxzUTh5RktxS1NWR2tzcGdyOFN4R0xCQ3lrcGpKdllr?=
 =?utf-8?B?WjJpWWo4QS85aEZiR3hXbDhzeGNEVGJ1bzNzZGZobm9kbW10L3U4a1IxOWZ1?=
 =?utf-8?B?cExYK3ZrbXVIZVF0OTZjczZWVlVNeGora2RPMTFOK242TENOZzgzTVVlZG1Z?=
 =?utf-8?B?Rmpmd05jUFROUmc2aktpNFZIUjBLU2JOZTBzN1JIbjBodWRpekxOWCt3Ymtq?=
 =?utf-8?B?WnlJSjd2TkxlZUVTOVRMdEpVbk9tMUlidXY2UFlDMHNRT21iemdlQmtuVDV0?=
 =?utf-8?B?eWs5ZjhzRTUvUmd1TDlnU3dOZEtBV2pJOVZQQk53eVk1Y3U0NnZEZTRCUTNN?=
 =?utf-8?B?L00rYy8vUU81RWk4NUpFTUlwUXB0NjZTNDhza3JJbTZNZDFOMUlBcDdGLy9K?=
 =?utf-8?B?eXlvQlFMYndWdjR0QmdxS21kYXhpeGlrSlk2c3c2c3lpbTBEZExVREtoODN2?=
 =?utf-8?B?ME1kdXpURjFzUTVJWVB6akFialZraGtzeHdCN3BuOWlaMk9MbUpBT0prSmN0?=
 =?utf-8?B?NlJlc3hFZWJMenY2UnQxcC8xRk5XMUN5bndqWmVoLzFpQmhSSlBzWVJXMlpN?=
 =?utf-8?B?aHluVE5DRXA5TVRoSUorb0NKOHo3aDVDd3F6T2FYOHBlamE4ZjdvV2xZQ3JN?=
 =?utf-8?B?ZUJzSnoyUlhzMDZJNWJLWEUwbXFvZ245S2VPTy9HNW1rWnorYkpqYWE3NzFZ?=
 =?utf-8?B?c05QS2lpQzB0bmpUcHpBNm1SRkcvV2lSUW1xSkEwdjl6Tlp1dmRoRjBDclgw?=
 =?utf-8?B?MzdtNnUwWjhwMjJsUUV1NzRtVXZudEZQWmhFNFVxdWhPOEtMMURPV1FOeXRD?=
 =?utf-8?B?SWtheU9hNjN5eVFaVVovejIyWGlCOWhwN0xWMit2YnFWQnAzOTNlS2l6TjNl?=
 =?utf-8?B?MWJlR0U5TWdoaitOZ1BsWWhPVHFHZjZUamY2VFM0b2dOaGIyeWdQUUFUVTR6?=
 =?utf-8?B?MXZwajltT1RUcXpoVm1KaGsvT2I3K0E3aVhYc0FlbE5TNVR4RVZVVUQwd3or?=
 =?utf-8?B?d3JZc3hrZG5oQzdlMURaTDl3TzZoM3hzaEFrZmRXTzUxQ0RnVXdib0E3Uysz?=
 =?utf-8?B?TjBkakhNOFN3RTQ3c1RMZmJ1TnNnRVNqRDZobWM5cHBvTFBlTWFMQmJuNlA3?=
 =?utf-8?B?VGVCVnc3anB5Q2F6dXVjWDdVT0x1QTVDZnIzZkNsT3lvRUlTU2ZwbFVGN1BJ?=
 =?utf-8?B?aHN1WWVtclNHeERTZUlDSWUwUXBzM2VSemJOWmlwSDR2WHJzelZMVnNMa3RV?=
 =?utf-8?B?d1I5ZG05UUl3KzJhZmFWMDNlMG9iQXlmRHMvSDFnc2xybDc3bHJaalZwRHVZ?=
 =?utf-8?B?WGxZeXA2ZDUrN0lnZEV6RDBwOGRBPT0=?=
Content-ID: <B5B598000A7B574888DD4D968F13C1EB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ed0ac13-63cf-4d76-f4e7-08d99823fa68
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 01:57:34.1279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YrKus2UOkqfmHblbcTlqIjAN0E0uMLJGiSf9Iky6KuJ8G5ORhU2zkYvyQCHRyaP84gg7iu8D76H9cMXfRYwBdnUvAcckhuuZlSIsKCESno4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1408
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v4] ice: support immediate
 firmware activation via devlink reload
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/22/2021 12:18 AM, Paul Menzel wrote:
> 
> Dear Jacob,
> 
> 
> Thank you for your reply.

I sent a v5 with several changes and improvements including your
suggestions. I significantly re-wrote the commit message for clarity.

I appreciate your careful review! Thank you for your time.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
