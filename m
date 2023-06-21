Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC18738740
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 16:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB5468223D;
	Wed, 21 Jun 2023 14:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB5468223D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687358378;
	bh=HLUkZyOlzoln00M4fCg5BLefjKGYX88zG4RZ7VCpenM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WRvEUnjeQX17/QPbY/KlVujvbFBBgx19M8KaIsNXF9pQZW8/wslXJj4X3dp41ndZ8
	 l0dsxKSEVKtEEgZWqCiR96ah2Zq9hpTL3cx1RaJwkm/rBDE5MnX1Hd8tMWIQ56vGT6
	 9pHlnkxPRPfhYzv4NN15uMHJIVy6EcCkQVIsbitS6aOna5UX4MVRJuVmFpFeIZdG4q
	 TRioTPPz9ihs05r44MH6090UsbS91lcaucK0/Oywfdq10E+eMVD4pOfADA6fK8WBhW
	 uSciXvxR74KfF9RIJyQqu+r+ImcjGrV4tqcS4EFGh5DX+zEF/DfiaBLKKM3PAimrhb
	 /+3yIDVuWDFLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xGEo8CoqyQpB; Wed, 21 Jun 2023 14:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4176C8219C;
	Wed, 21 Jun 2023 14:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4176C8219C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F09591BF473
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7739613ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:39:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7739613ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KspESV8-Tyq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 14:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4572613EA
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4572613EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:39:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="389707737"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="389707737"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 07:39:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="691874130"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="691874130"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2023 07:39:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 07:39:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 07:39:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 07:39:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbItY505mXccWrb2yPKhUs92g3c0SbIYTjpZ7FzX5CpJbGdOUanyIVkTWC4ex0KT/so6XuX65s7RlsCGsy97HHE9Q7tXgjZWlVRTKnmN4dkqJ2i0kKDg3jLkb6vQf8ZLQ5blPq93XlObZhOsAk5K0yNa2Pw8oEIKV4z4Jxa0SjIUDFKHMirmzGG2M33poju++PKFq+kbxn0i3YfBkCvGLrYUT4zfqfbfPIP78juG5fBknDXWunMDcaGS+ogyrj94nRcd3gVemMCrduBLh5N0zqQCPN+drHOD/NGGzAvkNULo7lT+ABOrVj3Ddr2iv2VtRLzIP3TzO+39XoA3YMNqZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgLdW9xBDsyNKvW6a29/eMqopoeBrN/t2DIrTgUhg+o=;
 b=NtoP3Pr+GFNMYID4/selXSJmC+EmkZ8Y7qWzCamp6qIYD32LyfseBr4VnXb3FMG6tYBvCTqk/+YxWafpeeJctpiYensZiSrwSnhxqW6n/iqT3e8MrnitxfHWQ5Ghwn2KLrT0C1NtDUKQB8d4CacS5gWAGwRwRy8wT6dJ86M8qcqPTAQjDFgZ2vOVBIXtQIF0CFdeci2XuhG5vbqJ5IVIRBAnzk7Kt/S/7r3hs1BVa3mXL1mFZi7rnhaYylIyVL2wK2MIqD1wqv0DOHrWxu6dObQlJXdQ44FsdGurJJMhbrOoiGCnfHZ4ayTsMFQwN6Vs4MWGR7bLEZEMCV/NGfkdOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.29; Wed, 21 Jun
 2023 14:39:00 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%7]) with mapi id 15.20.6500.031; Wed, 21 Jun 2023
 14:39:00 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH iwl-next v6 00/10] Implement support for SRIOV + LAG
Thread-Index: AQHZo8UQ2b2jUqU4gEm1FskdOkL/16+UhfmAgADM9sA=
Date: Wed, 21 Jun 2023 14:39:00 +0000
Message-ID: <MW5PR11MB581140622B33E82BC694C7FDDD5DA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620191907.3a812399@kernel.org>
In-Reply-To: <20230620191907.3a812399@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|IA0PR11MB8334:EE_
x-ms-office365-filtering-correlation-id: 050b119f-f898-4069-6ee9-08db726540dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Oe5UQUiSVOp1EfwZnnrJ+EZ6mRMM25Und6GxVYGjUeJ9Ycyt5YLv9bJTiK86UprpwuL4D304A+Dnz4k0edoUFJuxgHYPZSb+vlphp99rL0Dw+wFzxcejQnyzqtEPlsZBktbXs/X7qBhjY0AaRb0tyODkBYVQ1tvjjwa+Q9QhMB8Vx64oeDzsZMoE86Ko0s3GzPyLteTMq1w+zjjML4WeHj71nblaL/+cGcCHzdsL98J9JPX2PdG7tDRyeSzAlMV8CFYnqPSVd5Wgigz5d/AOJCHBBttFjfkmLqu12X0P1JPedNlWXhuHgX2Z0YG03Ih6Wg7dMeu0AzTWmya4AgDm82zO1JHLTiBTL0iqTD4Ju+5VRDwbHmMzYVaa0aw6abDnpFR+g0l2WTdzGR1ERpMyjNdq3vHt6DXueu2i6VjS1w0fR58SvVLNqqnQGITuojeE8BtXm53PXXaLI76Kh57JmDHeFyvti8bIIt5KRJR6QYeF2+ik256Sbzvyx79qH5LX4mD2pgFlB8ZfTEUlAukJBtZUY76pDUeUqrTroOow2Z6QlRKA3P36FJAVofSLTI8v3tJMOISmKPinbp5oVRfAf0tSTXJsLcSDgZmtsta+ik=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199021)(83380400001)(107886003)(186003)(6506007)(53546011)(26005)(9686003)(71200400001)(54906003)(7696005)(38100700002)(478600001)(82960400001)(38070700005)(122000001)(86362001)(8676002)(52536014)(55016003)(76116006)(66476007)(316002)(66946007)(8936002)(4326008)(5660300002)(66556008)(66446008)(6916009)(41300700001)(966005)(2906002)(64756008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVVsYkY1NnFiWjkxQXpKb05mOVJFMFY3QVh4U1NjdUc2VjVPeDNrbXB6Nmow?=
 =?utf-8?B?ZVdOc0UyYnA4ZjYvYjRNcFdzemRya3ViK0EvY1RZbnA3VDN2c3VxRTE2LzVU?=
 =?utf-8?B?QUhhT05iTWpyRkJoczUwbDByZlBGVnE0cXFzRWVHY0FNL3dWUHM4b1JIbHFT?=
 =?utf-8?B?ODdMVUhzRzlUWEtYNEZHUHpTNGJ0a0JnZUw4cG43UG1EOFlPOVQ5TDhlTHc1?=
 =?utf-8?B?cElWM3BQc0tPcm5UcDJOSVErQm9DRERsUlZpRnZObXB3MFV5K3R2Y2hiV3BF?=
 =?utf-8?B?djdaeENaYkRSclphN2ZVU013TlBOQ2NZczFqeklMQ1JrRDc1VlFLSDR4amVp?=
 =?utf-8?B?Q0dEK0NYM1U5M1JMMXBXOE03bXJmQTN5TzlXZU5ieEMyRnVKS3U4ZS93Uk1S?=
 =?utf-8?B?N21GR1lMaVBkcVB0NmdLemp2ckFZVHlrUGpDR1hlSit2cGUxR1NHQ3h0dkJZ?=
 =?utf-8?B?TDRJUktPbUhRWDBaQzJTaGtoTmVsTUE4TGx0c1pkOUZScWE5RHM3R2ducUdB?=
 =?utf-8?B?OXhTb25hWVdlYWFaVS9rT29xRE1vYUVJZnlwV2lYekJBbmRHc0xnc25yNTJX?=
 =?utf-8?B?aURuQ1hnR3NsKzMxMWw3SmhuRHJyU1crZWxzem1PZWhDTGp4Y2hGMWJlb2Vl?=
 =?utf-8?B?VkVjcjc3WTU0QW9ORTRhMFdWVmpSY21jNHJ3NHlCTG1qK0xMaU4yN1NLalA3?=
 =?utf-8?B?ZmRicnRVTVhTOXUyZjZmcWJ4SldrVkhFeU0rS3JmelUrMVlEbjV2a1BkMitV?=
 =?utf-8?B?VC9lMys0MFJBODE3dW1uN0ptRzhFQzFEOEtSaEdZOU4waEdZSXAxdDMrZjQ1?=
 =?utf-8?B?UVZUb0UvSFdPcExOQkI2NXJTU0JjZk1vakxOd3RYZ21jR1VXSDQzZE9LRTZL?=
 =?utf-8?B?MkdZZkxEQ1Z6K0VTa2kvZFdPK2xLQkt4c1pIbFV3dmF2RWVWRnVIcE15NXFv?=
 =?utf-8?B?UmxVc281eVR4T29uWG4wdW44U1BOYmthRTZHanhQbjRjQURGZjQ0R2ErOUdv?=
 =?utf-8?B?U3lSN2xoVkQ2R3ZPdnlMeDJTeGxOaXpWellBM255RTNZTmNTOGtzNUx5K3A5?=
 =?utf-8?B?dnQ1Z3JZdG1FQXg0VmUzVnIxS0JtQlFhQVFlRVNDY2VIQXFWYkQ3ak55MTd0?=
 =?utf-8?B?S0p0b0c0ckhEaFFlNDE0TUcwbmRDSWhOQ3YyZjJUOWZNdk1ka21aTEptM0tE?=
 =?utf-8?B?dGhzcnY3UGR0OG5iVHAyVW94dU1ONjliN0x4eGVnNVBqdStEUWxLaTlGOXJv?=
 =?utf-8?B?eGpoT2FSU2xyWTMrYlh6YlkyclJLM21ZOXlnd0c1NWtpYXN5VEJ0cHdNSXRu?=
 =?utf-8?B?TTdtZ3VOckRhakt2ZEt4MHFseU1hRzllK1lmaWoxdE1rMU9hODlkSkFiL0Qw?=
 =?utf-8?B?MExaNVRKL3hXNlZlbWt5aUJLTk5xNG95YmxKOTZFSEFCc3hoUmhQN0p6eXA3?=
 =?utf-8?B?OVBpUjh3YnRsVzcrSlBMUEdWR1FvNWhjRVF4b3hPSlFRTGFHRllRZk4yWTZ3?=
 =?utf-8?B?YUV6cytsSWlwcjI4WWQzemIyMDdtNW95T1ZoS1lJaEhsaCtFdTNiLzZxUThk?=
 =?utf-8?B?NUpzL1NXVko4T2RPaDhPU0M5ZnJ5RXlNRFlOZFNEQ2RXaCt0VFlKZ20vM2or?=
 =?utf-8?B?RGp0aXMwKzBJdzRvaFNub0c4ZGhCSmZ2NUphRWpmdlBNd0piT2JoTUFiN3BP?=
 =?utf-8?B?K2ZrNWM2a0l4aldMY2pFdjdKZDRWZks4SUg2MUt6U01CL3hnbVByZytQSDhZ?=
 =?utf-8?B?aVpiVnZMbE9tclkrNWp2RllacmJ3dXRDNVNuWkxpckJQK3NaUGR3MlhlQ1hx?=
 =?utf-8?B?clZ5cmRxY096Zy9LY3RabUZkOWUxaTQ3WUt4c2oweFV6ekNzVUpUUW91MUpY?=
 =?utf-8?B?K3J3VXpGTVF0OVlZN0pSbGhWTXRxalhEbHpGMFErT29ycHpSV3N6bUxrUG5C?=
 =?utf-8?B?TVEycWQzNEpFQTBQc3hsRlhMZ2V4S3hhTUMwNmpjemlabFpPdDNuWUlmeTN0?=
 =?utf-8?B?QzdVNEl5VnY4TnZWK1V6SWlWVXoyV2owOFczVmlnT2N2OHRhRjlDZGZxVzNo?=
 =?utf-8?B?eVFTUWVPK1pmMStXbnBJWEpWMzRMMThOUjIyOUNIYnVib1E4NkNVd2h6N2RK?=
 =?utf-8?Q?8qb8Eol7s9a3CM84i1rdzRTax?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 050b119f-f898-4069-6ee9-08db726540dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 14:39:00.7919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XwhfEiXMHk0GpY6xy1jQ0DMiDhBZVpfsH9PsUolLM9w6m2rZGrbhQrYyI8UjiHR28NztKNnnN43BDiJbYZWKpG4OvooOd90y6UmzB6pFrlw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687358370; x=1718894370;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JgLdW9xBDsyNKvW6a29/eMqopoeBrN/t2DIrTgUhg+o=;
 b=ROUMCdMvq8eWCr7Ulb/dmiB2gmY8aO8jdRnV7m17lJJvpeQHEMbd8ODg
 2g2iSp5M5UU9AesFvq0RO3Aryz9jCRDXhtU7kvU1mHrXQ4J+VAh3qGj0c
 imh6MFLiOxeh2H3vGt5RQl9zelNR0HnAYSAv4tQJ7hS+XaQ1OnQbXBz4i
 2Qa8tXIe2UpJPDExP0VhLafg4JQWkTr6ZjgyLx0kx1skcJCEGsnxZqaCT
 oDwarpeDYiaEBtrX0fYiSDSpZ2EBPOHBgh9rkmu5KViFwy28WOLcqG+hr
 qIujkwctv8IVr9F1WK7pyevxXZGM074HpO9QNR1DwllwVPfnpWpGqVVAk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ROUMCdMv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 00/10] Implement support
 for SRIOV + LAG
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
Cc: "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Tuesday, June 20, 2023 7:19 PM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> daniel.machon@microchip.com; simon.horman@corigine.com;
> bcreeley@amd.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-next v6 00/10] Implement support for SRIOV + LAG
> 
> On Tue, 20 Jun 2023 15:18:44 -0700 Dave Ertman wrote:
> > Implement support for SRIOV VF's on interfaces that are in an
> > aggregate interface.
> >
> > The first interface added into the aggregate will be flagged as
> > the primary interface, and this primary interface will be
> > responsible for managing the VF's resources.  VF's created on the
> > primary are the only VFs that will be supported on the aggregate.
> > Only Active-Backup mode will be supported and only aggregates whose
> > primary interface is in switchdev mode will be supported.
> 
> If you're CCing netdev you need to obey netdev rules:
> 
> https://www.kernel.org/doc/html/next/process/maintainer-
> netdev.html#resending-after-review
> 
> You have sent two version of this today (and there weren't even
> any replies).

I apologize for that!  V5 was an accidental resend from the patch-set from last week, v6 is the
revision  after responding to the feedback over the weekend.

Never try sending a patch set in the morning of coming back from a long weekend - lesson learned!

DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
