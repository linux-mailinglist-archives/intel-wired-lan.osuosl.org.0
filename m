Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B0B3DF40E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 19:45:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A75D140248;
	Tue,  3 Aug 2021 17:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d8ohySLa2wab; Tue,  3 Aug 2021 17:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7115F40348;
	Tue,  3 Aug 2021 17:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 862001BF831
 for <intel-wired-lan@osuosl.org>; Tue,  3 Aug 2021 17:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73D5640498
 for <intel-wired-lan@osuosl.org>; Tue,  3 Aug 2021 17:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mIaH_yypRwv4 for <intel-wired-lan@osuosl.org>;
 Tue,  3 Aug 2021 17:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87AFC402AC
 for <intel-wired-lan@osuosl.org>; Tue,  3 Aug 2021 17:45:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="193338513"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="193338513"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 10:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="636683915"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 03 Aug 2021 10:45:31 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:45:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 10:45:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 10:45:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ljbmkzy8lOfHetWBrgnNIjBpBTfYXTJbhFytYCGwkuwcP7q5B1bUu2WFYZfMpdAi+ETsTNJrOW3K+fy5reshocCfHS5Ekf5BH9l823rn/xuWOmvr8XRV7gi1B0+fsAVPsz657Y6NNZ5ZFhaznu/E7JKNLqWq9zy2JJ5D4I6BCKtELuC3sv4LhuACzUZt9B+zJVAlNfx6xHxoDBpSLa/ls2ax42NB7F0JvPTSqegWju8vOJVBTiVtDpCkoZkgEq6viwg/D3xFZFmIy6sASJhuZFq9qiOXa2huAwAwI0//wDF1mlU5Vmq/xkZyJdHnZHxvDdeKRffK7cNLeROSOrrsOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hyXh7E7YeJQm9mOxDIIfOGfJhMAETH/EBDWMTsARR/M=;
 b=YblxK/ZDTTVoOOcSz9KO5fSkwhc28D5s5X3ujlohg/eNhgF3lsQcnQEsHSNsRolgAhv+7B0X5mlxGe9K9XCehdRMe678ZGxZd1XwT9en8T45Tih/hBrGuF4s+CfzGfvE7DfRw6Eb6/wbTN45vZREehhHIjt4+MmG/MjnK2tql1Uoqut0ZeQjE1q7sD1T4arinOiQNWnTTEhYaiQGCKF8yJ9w8VMkTFEsSANGwZIIJeY5luD0L0B2ayGLXJWuHFcYkVWQJJHyFnUHjKK/tTO00hkkMWMverm09mVMotkhzEFIX+PNyMNDC1hRlnM1bRRNX40FbLV8meUA2TR6kIh+iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hyXh7E7YeJQm9mOxDIIfOGfJhMAETH/EBDWMTsARR/M=;
 b=uUN01TI6Udq1sUvXjvAWW75k4PVyWuyZfHh3rlpZPcfYDMCKi2TDCSd4jMXRqZaMgSsDvGsOiDBD6qUMM9+wljP6vornq8csaWkKLbR98u1QM91jW5dxmcGFB4sHqqSIP9Ey2sjjdtJQMT0TfnzcVdNVGVlcgTdIxPTjuf3WclA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4608.namprd11.prod.outlook.com (2603:10b6:806:94::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Tue, 3 Aug
 2021 17:45:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 17:45:29 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Use default
 cycle 'start' and 'end' values for queues
Thread-Index: AQHXh7BKP13tw7z79kS6uNviXrV/iatiEEYA
Date: Tue, 3 Aug 2021 17:45:29 +0000
Message-ID: <9a007e51b14139e1c6372f182f8a38d1d4dc662e.camel@intel.com>
References: <1627916831-10144-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1627916831-10144-2-git-send-email-aravindhan.gunasekaran@intel.com>
In-Reply-To: <1627916831-10144-2-git-send-email-aravindhan.gunasekaran@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9615b439-b57a-421d-2b65-08d956a67c40
x-ms-traffictypediagnostic: SA0PR11MB4608:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46088EB8F7D693C3B4259381C6F09@SA0PR11MB4608.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3NBSvkp7zbTIRIimQH+281sZBxsF2pJXopepPaU9d02bhhZR9SKElPaeaWmpGv9OhCwVoh0GtF9ZLsVogVNEebBK+pWca42ods+E5K7mc7upm2CyeSValJubzRh3m0BwhdmtfCazG/bzO+x8w/v9EEQM+UBE2M3u6+dcX+cH5Lcd1NWjr46NRWjjBbgCJuaUTC8w4U7zvgbeGWpZdLBUYjzg7Ok0CzoB5nTL1lLtkR0lQuuS2vWA5txJ9oDARSZAlBGRZeb4+YOfTNIgMJJnUe8QPNyOLDJZWh+acYKI1bjsk67Ad/pyEdAWMSGO1TAjY9P2KogcHSjuRlyPyCz5KTpc2ve/mCuOIUKxJstC3Cvp55DKHleoHQDkO21h1v/+38N/3YrmNWc1gTB0EBKJVqidYPxUbDnXw7zCS7FKo0rU5Fb0L+ZtqGsp2TLvkdkmeDHrPLPkoHpU9gyB6UN8vvh+IfkEOY/E1s+iaomIwTo1UB8YVm4Qm7vdxm/OVfyl1rdru+Z3d+vsIwkeElt0cF6xMpuCPBnWTuCzOelltAGQnttkS56jxgQQpRPgCSats/Sy3OCpgWDIYfA9y8ytuuemVtaRtNBOzpBrREwckcwLokwH3QIxeqrYpzBToWOFKUnVrfdOsfhK44uN4iIg9FcPi0Ws23so+71AWIRvuect+fpHDxhX8EdVtOZXWICnPArox0Q4An7dSTf1B8+RUXAxmpx0Pqx4tpNGcNnDYJIvzeljZRnBqwe2EBRAK+GBfLadt/D0HL3a4V+FOZArW7qQ/TPMLUy8Fou5SnBSSYQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(2906002)(316002)(38070700005)(2616005)(110136005)(54906003)(71200400001)(8676002)(6506007)(26005)(186003)(8936002)(36756003)(478600001)(6486002)(38100700002)(122000001)(6512007)(64756008)(66946007)(66446008)(86362001)(107886003)(966005)(4326008)(76116006)(5660300002)(91956017)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk5hWmRLYlhjRTExYytvb2pmVXhEVEwzZ2Ewd0U2VEdNYk9mQVVvR1JZYlJj?=
 =?utf-8?B?OFFLZ29IVXF1MFdLcGdEM1IzVWtsOU5ROUhzYlF2TDAzaG4yVGRTRHdtVlZR?=
 =?utf-8?B?N1JiOXYvajhxSVkrVTJyNjZqaEJDVVdLQ1RJSHEvZzhBYzQ2VmRCdEtGNmFi?=
 =?utf-8?B?M09mQi9NbVJicDZ3R0hDTGd0NVBOWVpTWVFRMDlpczdUeW9QZERMYWMyV1pJ?=
 =?utf-8?B?a2VyNVdRbDBWQVlKeTljWTQzZ1RWMXNXMUQ2RmYyU2FLOGxwRE1lQ3lGWGUz?=
 =?utf-8?B?WTg1anM0SHJkeDd6dyt1ZjlLOUdQaTJKcXpQYzgxM1NiWU1yMUZZVERFM3VD?=
 =?utf-8?B?akZUODVpRFE4cjd3VjdEUklrZUVhMGIzb1FkTk16MkdlR0Rab0V0TnhmdUhB?=
 =?utf-8?B?L0phRTNsaS9veVludXJMWnZwd3pneXA0NFptc1dnUHp1MHpvaURkQ081NEJK?=
 =?utf-8?B?cmJzNVFrQ0dYZDhMYlRqS3FwSWJOYVlsNWhsU3ppdDhKK2F3Sy9Mdjhhb2tE?=
 =?utf-8?B?SjN5bFl6QlUweVU5VHdEOHZUWlJXck9uTys2eVA2UHBtVC9EU0dJRm15RDJs?=
 =?utf-8?B?WFJ5ekdGVGJObGV2ZlVLblc3Um1kQk16ZHplaWdvdCtJZmtxalFZY2FjRnpO?=
 =?utf-8?B?bDBLei9rS3hiNjdyL09YdWc3RGVhTFhyWTVoNDRieURwU2hpcEpuc1NHa0xJ?=
 =?utf-8?B?SDdiMGxEZGZFb3BkQ25OSGc5SlFLS2VsOU5TZ1owVU5zQjFQSEJiNlZ5LzBS?=
 =?utf-8?B?dkQ4UzVGR3RuYldJbDE4NUVoKzB6dS8xQmRxdUlldS8zOXkrQ2RqR2p5YThS?=
 =?utf-8?B?TEswdjdRZ25PTkZpSXlwTjJUS055YmMvMGUwRnJTdmhnUVNCSzFXY2pZZFNk?=
 =?utf-8?B?NmhYWUJDcGVjWmtIb2gyS2ZtQ0lLREFvYUducjJHdkI4R0lvU1Vtd3pIaGs0?=
 =?utf-8?B?YysvNE5JNStsKzVKUkZ2WU5JTkJNU1BnL2Q0OWV2eGxlZ0xyL1F1dUwxaEtI?=
 =?utf-8?B?RXo5WExEYUd2Y1VVRnk2eVdKcmMxKzA2eis5QWtlNHluaWFlWjJlcHJtK3Jk?=
 =?utf-8?B?WTBjd0dHSWxTT3NtOGtpZm1WalpZbmx0TmQ0aUdhYm10ZEFNWWZDTUJLUG1E?=
 =?utf-8?B?bm9leC9SbDl1SXdkYjRyeXg5VUpkZW1PYWNKQ0s2MC9ZWHBaOUdmSFN6TEdG?=
 =?utf-8?B?ZE52bFRzQU9aVDFxaEJkYS9Xa3UwK0ZpSG5hdXArNGtuTENOSnV3VFN5ZGo2?=
 =?utf-8?B?azBieC9nMm5hWEZCTitYU1hHNDJNRlRxRlJ3cGV3SmR0T2VRTVlaU1luV3Q2?=
 =?utf-8?B?R1l2TmFPMDV5RS95ektrNGtMcUsvYmFjem5VOGgyUVlsS3FFNkw0dXZrcnN1?=
 =?utf-8?B?bllwT2tJTjRtOUlRRjFLbjIra2lzVGZYRkpuazkzRkVYWmg4dDN4alpnQXpL?=
 =?utf-8?B?N05FcEFJeCsvbUVkU282M0xsWFJEQjc0aktzaWtEVE1VNFV0K3B2c3Uxd2Rj?=
 =?utf-8?B?SWNUblVrVDFmZ0l4WGhFL1kxeXVXTitCU292V05iMkw3eUNlQXBvc2VVYjU4?=
 =?utf-8?B?eWFTOWExUE1qZ1JPcjJRYjdoNXpDYkRjamIxM1ZOa1VxZmw4b1lPc2puUDVE?=
 =?utf-8?B?TC9Ka3kvNm9ubG1mWVgrUDdBZWtqTVcrT0UxVHdmelNhblVCRkxhRUllb0RG?=
 =?utf-8?B?YTVFRE10WXlyREtieThicWpvUFVpNmRGdmRjTTFVVVpsenNZVUNMTGhRNW5p?=
 =?utf-8?Q?7NTqHx+dDtD+Ldu+Ta1/dsgigiwgdNBArS1NqRL?=
Content-ID: <136050EB83703945B5C35886BBA9C4BE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9615b439-b57a-421d-2b65-08d956a67c40
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 17:45:29.7456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8igNG0IsXk911iXlMkMxctkzl0240lcXJZ7msrSnXEcZCwcg/T6XDdErdCStp6EzEvkGuyNq/qS8rBwwoPF8reu6HoyU19OK4goaixSTSXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4608
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Use default
 cycle 'start' and 'end' values for queues
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
Cc: "Chenniyappan, Velmurugan" <velmurugan.chenniyappan@intel.com>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-08-02 at 20:37 +0530, aravindhan.gunasekaran@intel.com
wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> Sets default values for each queue cycle start and cycle end. This
> allows some simplification in the handling of these configurations as
> most TSN features in i225 require a cycle to be configured.
> 
> In i225, cycle start and end time is required to be programmed for
> CBS to work properly.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <
> aravindhan.gunasekaran@intel.com>
> ---

<snip>

> @@ -5841,16 +5829,31 @@ static int igc_tsn_enable_launchtime(struct
> igc_adapter *adapter,
>  	return igc_tsn_offload_apply(adapter);
>  }
>  
> +static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
> +{
> +	int i;
> +
> +	adapter->base_time = 0;
> +	adapter->cycle_time = NSEC_PER_SEC;
> +
> +	for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {

Should this be using adapter->num_tx_queues? Otherwise, we can come
across this [1]?

> +		struct igc_ring *ring = adapter->tx_ring[i];
> +
> +		ring->start_time = 0;
> +		ring->end_time = NSEC_PER_SEC;
> +	}
> +
> +	return 0;
> +}

[1] https://patchwork.ozlabs.org/project/intel-wired-
lan/patch/20210722003403.69289-1-vinicius.gomes@intel.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
