Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB1055B95C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jun 2022 13:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E450083EE7;
	Mon, 27 Jun 2022 11:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E450083EE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656329797;
	bh=3K90BNDLqKeyvI27prbphbEVybJBPK4lGGyDIIIqaY4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qhlBZuU5wk5jOLtVMJ10tIMHINy7Q9pgSFcstJtNerjb56Ci4c+nGzOqZhmAlxQ4K
	 HQwszMM9Jy254Q2vUQkhXn5BP4slDB/czcFcrtf5GzPzTm0k04iveeZC6mLSjt5hLo
	 PxrWLHDrYZ6lD8w+bpfzYNe68UVwFR5WMWpHTM3dRZVwnMw9dr+roldCPHK2+ILwDI
	 wWJYFBZpVbq5hAPmAlhp23aYqz8uiNUBRwGGIGh8PUwq/x7HPlhtvsfPKDlRNSNlhQ
	 ron039vZCL5N9RAy81jUt8+ydoOD7knTDMynZzjapNk2HxYgUO6wb/BEHBafihEgjG
	 oDgiWkHRdoH6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TjNXaJeaLb7; Mon, 27 Jun 2022 11:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA1A783EFB;
	Mon, 27 Jun 2022 11:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA1A783EFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAB481BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 11:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2E4440185
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 11:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2E4440185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ms0H4h0H7d6f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jun 2022 11:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B052D40A81
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B052D40A81
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 11:36:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10390"; a="281468931"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="281468931"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 04:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="717019217"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2022 04:36:27 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 27 Jun 2022 04:36:24 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 27 Jun 2022 04:36:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 27 Jun 2022 04:36:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 27 Jun 2022 04:36:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=blNgO2cgfyf3exCIOJc9A3ssBnJuCWGJGUETkRAs1MPi1iAEGJ+bGtBIrzxIL3fhNMZBalgw9UI0f8BHRXR1Z/Osk44TssOb0oEa7r7pMF8RI2KblHnz47JxLR3B4IW0M+TGnreRkfJcY10WCBfDBoS1943kXbPWDmB5ojl/mjBRvOujHd3gjXP6P1jOxjMT0vHOA42TBElUcnetz9WBQCSvx2EqUqzw2TM74XYBsMz1ISEZvVptoSuLn9jgNbuzuK4tUl6osCBxZoBnwfV10OMRMvraFwDW3qaFywsuvD8eJKJiKpyIfu8AiYjFrk7Oe78H2xclmsRu6l9EtbTx+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f14RJhgBWjslYHTIce/LAV2vRW1GEBw7LblMpBvLJKo=;
 b=nWQr2L9dDxvglUgw4hK+AgeRoIYfEcHw5U2UGf2c5IScOgtFJ6KefkU5pU2TuRt++HkyYjrNxS8Zqj6H+H5uC+YgjicPA0LYvNVVp0Rftq+/CJKqfrIziZT+A4QGszQ7gcWr4cGP2qDBMpxepPWRL7TVLSvGYGCQA04pWHdZeQAyPscgaMstZcQ4z9E+SeRQa2z2zUO7QA4/sz8tz5yYbZrOVU22NRIj3PsnBrWkAj5pK8TtDCeApVSVXIhFGntgcBIgnx2OfU/eElK02U0J3QB9RuDgaMqTbLeVJV4BxCEV+bLrukuTs+ge4fM3g0p6lhgtBk/AYPaG6ZLIWZWSZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MN2PR11MB3918.namprd11.prod.outlook.com (2603:10b6:208:151::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.17; Mon, 27 Jun
 2022 11:36:22 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c%3]) with mapi id 15.20.5373.018; Mon, 27 Jun 2022
 11:36:22 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Baowen Zheng <baowen.zheng@corigine.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [RFC PATCH net-next 1/4] flow_dissector: Add PPPoE dissectors
Thread-Index: AQHYh9BDElYAHuMNC0u6wODYDa8kZa1hSr8AgAHZdUA=
Date: Mon, 27 Jun 2022 11:36:21 +0000
Message-ID: <MW4PR11MB57765C5D5A1149515E3C6F97FDB99@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220624134134.13605-1-marcin.szycik@linux.intel.com>
 <20220624134134.13605-2-marcin.szycik@linux.intel.com>
 <DM5PR1301MB21725B441E51642967C8BB4FE7B69@DM5PR1301MB2172.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR1301MB21725B441E51642967C8BB4FE7B69@DM5PR1301MB2172.namprd13.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b64dc91b-be1b-4cd8-2078-08da58314291
x-ms-traffictypediagnostic: MN2PR11MB3918:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rd416+S53PJb3eW9G7NFGwYNXCtUFp0EJf7u4GA5QTVp6qoOU28RK/c2EcZUE8mojvockcfyOEwvthBX7boue+i/rhOHBK1F4Uu9WrOTrIGM1qeg3zMAXQxjRToCopLXdyh4JwiFiJDrjaDOSqu4Ty6yor7yhecwXS9pMaxv1gvl+1wrYHkkW1F+ZbeySD7NtuhYFpDeTarTsyBuk/2z06JggHjWHI6gQhjDNcTzbmKxgblhXpFlioYwAuFcQ7QePBWPeujvHjphn1Jq8fp92PvdGou2knhDdjVbqvLVR3VL+JPzVDcowl1AMt5R9HJVM6742rXcC1oJRVcKzn2w+EqENFyv2WQuxybOoDyRUrGzfcDfMYiBwNYk2xJVm7o8gio1rSreTuxFG93AOjmSZH3KyU4XWmX0wzrhnSgWCBypPEvGSHQb0JKTbtKiDMKQcBFcTL9stlXUntMsCbF1BAz/1xEYP9OnDQAjPbeIbxQdzRhys1kxMs7wUHNuqjCQVodwXapYnhqdwFN3eLE3LW0IaLIYoqMK/HWs1w5t6zZ7/lfEHk0oj/oP/88LB9fgs+fya7F5crp8RylOROpZx1Hm4lM9u5mjUbzD/8h1V9ZGSfcdF7YGheukuJFt2zYTcX5+jYHQaZremEGoKJ5D+cAWSoJ8FD6frhC5iN38i0FcB4Ft0GUFWfUNv1OQ09fEWUYiOfhiB9cFeSE8smlRqTtJVD7GgKL13a/eqdr7UFSdl5N5QZeJTmsDlTGxCgm4gxqzlACRYFI8B/WGQ1dQ9ljxCFYoyVcCyKl5lrJEwe0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(346002)(376002)(136003)(38100700002)(55016003)(186003)(122000001)(316002)(33656002)(86362001)(7416002)(110136005)(54906003)(83380400001)(5660300002)(52536014)(6506007)(4326008)(66946007)(9686003)(8676002)(64756008)(66446008)(66556008)(38070700005)(66476007)(71200400001)(26005)(7696005)(41300700001)(8936002)(53546011)(76116006)(82960400001)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MnlDMUJFcGtUNjYvWkpIcFZUanBNdzJacVQ0UmY5WjJxK1dVd2xZZVdMOWlY?=
 =?utf-8?B?OCtxVUtTUWFGbUo5T2hLRUEzTjFINUZkdUdzR0tNT2lNTWZIcjJiS1ZYVDIw?=
 =?utf-8?B?K0tQYmloTHdXVDMvaFpGUWpYanh3ODZ2Q1QvSVRnNXJpQXJ4Y0lveGNWL3Bp?=
 =?utf-8?B?cDBtMHBVNlIwZm1EU2FKVEEyZzQrNFVaRVZwQjRjVUxScVJRRlc2VlhoVFhm?=
 =?utf-8?B?UmhsVFlibzczbzZ0YlMxWVVTeThiUnVKcXBYdFhZbER6UjVtaEdkN2Ftc0l2?=
 =?utf-8?B?VXFrWjMvZGc1VFByZnRXRmJzaVdadXFwa2R4WTRvRmVRS0grMnBTSzlCZlB3?=
 =?utf-8?B?cmtjNTRWT0JuelA3ek1hQmdsRlBDMzlvUVJyc2tvdGJpeEkwckI0a0s5dExm?=
 =?utf-8?B?K2RJN1IrL3JadnZCTzRPdXZ4UWZzN2ZyZEtyNXVNYXJyei9sNGVNYTJWKzE5?=
 =?utf-8?B?SGtGOWNtQUVwdmcrbUxGK0FMN2pyU2VZQUJwQy9XM0k4bllpOVdJbnlYb051?=
 =?utf-8?B?blRxZXU3cEdHcGhhZVhvWEc1MmpmbDBzQ1EwVUc1cDBFQXQ0UzJGK3dmaUU3?=
 =?utf-8?B?QUJHaEFKTWhNc2hzQ1pNZW9uRjZwZzZjU0poQ2JjWVpmUmlTSzV6TnZpeTQ3?=
 =?utf-8?B?ZWc5cklIZllPc2x6N0dlaUw5RmFwaWdoaWxsTG4zUDRBdFQ4WC9yZlFZckhX?=
 =?utf-8?B?Z2l2THB4dnh6TXdKN0VCcjBxOUtyRXd3ZVJUdk95UmtSY1lMMDJXRXhhOHJH?=
 =?utf-8?B?dFNGbXoxWGtBV0JaeUVIWkRRRURUamJIVjVjeHczVFdjbmwzWmJLZUZaRmRz?=
 =?utf-8?B?eXZ1T0EySEFrVG9hMU5CT0ZtWnhyQW0zRDF5dE1QYUQ0VlVYTld6S1ZqenhZ?=
 =?utf-8?B?VysxVlV4Q3VvdWJ4empwUmlXdDhoa0ZzZC8xUFZsUitxWHowWGZNUERITXI3?=
 =?utf-8?B?Sm8yMExWUkI4MXM5YUl5aytsODlvRXQ3UnZuc1dlYTk3TFM1VlRMc1J2Wmlu?=
 =?utf-8?B?eTN0dGYyMFo4ckVSbDVJL09hYmJ5OVVYM2ovdlFzS2VFOHB4ZVhkNGdXMFl3?=
 =?utf-8?B?ZWhCT2VHb2lQYnR4a1RRWCt1ZkxhWWpsRHJnL25tNGlHOFZrZ2F0NzI5S25x?=
 =?utf-8?B?OVB5MlR6ZmhNQUdnZ2V2cldRUTY2ZE9ZdEZEeHRxbVlqNXV4NXhiK2RZaCsx?=
 =?utf-8?B?WWNRbWthVFRrV21UQmpMbUo5RktWdlh4WGNoZWR6Wkd5d0xmRWtvbGRWbStz?=
 =?utf-8?B?R1hUWDhvRXYvaElHSlFMUm1xNmxybGNEQ3hFWFJsQXdiN29XdzBhVXZKSnp1?=
 =?utf-8?B?QkhURDBlWVpVVGN2RDgwMHF3YkhQTndDMHRnaHUzM1ozMTBNU0MyZWFneTU4?=
 =?utf-8?B?L04zUzNWVXU2bEZlOVA5R2xncVZlQitrZEs3UlJPV2dPU3lrVU42TzlFN2lq?=
 =?utf-8?B?cGlSWEt5SDlvM3B5eTlJWjdwZHZhK2N5RExKWDlxRlNSYzBiOWpEdHZaUHR3?=
 =?utf-8?B?RWlrYUozTlB5b09lS05UMXpiVEx3YTBlZ1owU0pKQ2ZiZUVzT2JjR2xOZ3V6?=
 =?utf-8?B?MUlNN0xTank3YWRiaVVsQjh5NUpWZG5GZmtTUGxzNkpaREdUZzdSWkhiU256?=
 =?utf-8?B?WGZvT0Y0eHQ1Q1B6Z2hLekc3cXAzajhOUWxraDNGR3JxMmJNWEVrT29uSy9U?=
 =?utf-8?B?eGFnNTU4aUFGTW13SWJxY1VsYWpZQzZLVXFDdDRUSkg0SHYxNEhXWWZNU1lz?=
 =?utf-8?B?Y2crVjJ3M0pBSnAzSjNRMUIyMkYyY2VWZVYrSVZIZ3dlUjNwZTdpOWJMWkRj?=
 =?utf-8?B?NGF5NUdJOTNOMzR0OHFIY0dnREFuTnNSZGlKWkNSVUxLL3lXN2x1ZzlobHoz?=
 =?utf-8?B?VHloZWplRHlsamhBZ2t6RzAxMUhkY2ZPd21DbzFJazE4OXBzSVFxQTE4d3Zq?=
 =?utf-8?B?WW5UZi9BWncvQUhwR0lHejFxU3hsMEJ2OUErRWxXdE95dU51OURMYjROZnNC?=
 =?utf-8?B?MldKdHdoSVdKOWpIcWpJR3pIUktjd3R6NTRUcVV3emRlWU5Dd0l5L0hBREJw?=
 =?utf-8?B?WXJZSk5rQnRrakRPcTlERDlzeVBBL05FTkNFVmQzTlFPd0Vua3dtTTFQMXZm?=
 =?utf-8?Q?SnCsA0Wb863mKf7IMFL5QmRww?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b64dc91b-be1b-4cd8-2078-08da58314291
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2022 11:36:21.9326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6WNbcULR5KA525TqtqgiCJXMK3VFdWog3RwubYoevsKeBwI6IuH8bIMUCp1aoDh59FhunWhXM839yspm8IdTelR8c9qGA5EqS820+Y74BdQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3918
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656329790; x=1687865790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f14RJhgBWjslYHTIce/LAV2vRW1GEBw7LblMpBvLJKo=;
 b=kDTN9E/Cj5Z5jFGiwJsxMBSDygRfgTkLc/oiQbGaEU8+pCQ3RLyDk7GU
 ltXd4ElxE6WIZEGuQZa3XfIDmwYALJpiUIXXDzi5jG95s3eeoEJMdwURu
 +R4isE/rZKikCC9z3rmvVD3pbECcy23YWbo+S7brdzNpx2+zt3oKrpP32
 SGiOblE0YtLBUvb+8WmJYQs/SP9lYrogkNXvlLPpBMqkUGlkpi3hijFqz
 pnaG76Cf4eTSxvJC2I0FKVoXqkYwKB80wyS6O5tsN5o41bUnzbE762kyr
 Ui8AfpOBoUIyeQ1CJ57XdRT/6BM5WOzKKrfJ7Giz8Lf3QVNpaOZItWc9t
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kDTN9E/C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 1/4] flow_dissector: Add
 PPPoE dissectors
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
Cc: "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "jhs@mojatatu.com" <jhs@mojatatu.com>,
 Simon Horman <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "elic@nvidia.com" <elic@nvidia.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the review!

> -----Original Message-----
> From: Baowen Zheng <baowen.zheng@corigine.com>
> Sent: niedziela, 26 czerwca 2022 09:20
> To: Marcin Szycik <marcin.szycik@linux.intel.com>; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; xiyou.wangcong@gmail.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; gustavoars@kernel.org; boris.sukholitko@broadcom.com; elic@nvidia.com; edumazet@google.com;
> kuba@kernel.org; jhs@mojatatu.com; jiri@resnulli.us; kurt@linutronix.de; pablo@netfilter.org; pabeni@redhat.com;
> paulb@nvidia.com; Simon Horman <simon.horman@corigine.com>; komachi.yoshiki@gmail.com; zhangkaiheb@126.com; intel-wired-
> lan@lists.osuosl.org; michal.swiatkowski@linux.intel.com; Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: RE: [RFC PATCH net-next 1/4] flow_dissector: Add PPPoE dissectors
> 
> On Friday, June 24, 2022 9:42 PM, Marcin Szycik wrote:
> 
> >Allow to dissect PPPoE specific fields which are:
> >- session ID (16 bits)
> >- ppp protocol (16 bits)
> >
> >The goal is to make the following TC command possible:
> >
> >  # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
> >      flower \
> >        pppoe_sid 12 \
> >        ppp_proto ip \
> >      action drop
> >
> >Note that only PPPoE Session is supported.
> >
> >Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >---
> > include/net/flow_dissector.h | 11 ++++++++
> > net/core/flow_dissector.c    | 51 +++++++++++++++++++++++++++++++-----
> > 2 files changed, 56 insertions(+), 6 deletions(-)
> >
> >diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h index
> >a4c6057c7097..8ff40c7c3f1c 100644
> >--- a/include/net/flow_dissector.h
> >+++ b/include/net/flow_dissector.h
> >@@ -261,6 +261,16 @@ struct flow_dissector_key_num_of_vlans {
> > 	u8 num_of_vlans;
> > };
> >
> [..]
> >+static bool is_ppp_proto_supported(__be16 proto) {
> >+	switch (proto) {
> >+	case htons(PPP_AT):
> >+	case htons(PPP_IPX):
> >+	case htons(PPP_VJC_COMP):
> >+	case htons(PPP_VJC_UNCOMP):
> >+	case htons(PPP_MP):
> >+	case htons(PPP_COMPFRAG):
> >+	case htons(PPP_COMP):
> >+	case htons(PPP_MPLS_UC):
> >+	case htons(PPP_MPLS_MC):
> >+	case htons(PPP_IPCP):
> >+	case htons(PPP_ATCP):
> >+	case htons(PPP_IPXCP):
> >+	case htons(PPP_IPV6CP):
> >+	case htons(PPP_CCPFRAG):
> >+	case htons(PPP_MPLSCP):
> >+	case htons(PPP_LCP):
> >+	case htons(PPP_PAP):
> >+	case htons(PPP_LQR):
> >+	case htons(PPP_CHAP):
> >+	case htons(PPP_CBCP):
> >+		return true;
> >+	default:
> >+		return false;
> >+	}
> >+}
> >+
> Just a suggestion, for the above code segment, will it be more clean to change as the format:
> 	switch (ntohs(proto)) {
> 	case PPP_AT:
> 	case PPP_IPX:
> 	case PPP_VJC_COMP:
> then you will not need to call function of htons repeatedly.

Sure, will be included in second version.

> > /**
> >  * __skb_flow_dissect - extract the flow_keys struct and return it
> >  * @net: associated network namespace, derived from @skb if NULL @@ -
> >1221,19 +1250,29 @@ bool __skb_flow_dissect(const struct net *net,
> > 		}
> >
> > 		nhoff += PPPOE_SES_HLEN;
> >-		switch (hdr->proto) {
> >-		case htons(PPP_IP):
> >+		if (hdr->proto == htons(PPP_IP)) {
> > 			proto = htons(ETH_P_IP);
> > 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> >-			break;
> >-		case htons(PPP_IPV6):
> >+		} else if (hdr->proto == htons(PPP_IPV6)) {
> > 			proto = htons(ETH_P_IPV6);
> > 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> >-			break;
> >-		default:
> >+		} else if (is_ppp_proto_supported(hdr->proto)) {
> >+			fdret = FLOW_DISSECT_RET_OUT_GOOD;
> >+		} else {
> > 			fdret = FLOW_DISSECT_RET_OUT_BAD;
> > 			break;
> > 		}
> >+
> >+		if (dissector_uses_key(flow_dissector,
> >+				       FLOW_DISSECTOR_KEY_PPPOE)) {
> >+			struct flow_dissector_key_pppoe *key_pppoe;
> >+
> >+			key_pppoe =
> >skb_flow_dissector_target(flow_dissector,
> >+
> >FLOW_DISSECTOR_KEY_PPPOE,
> >+							      target_container);
> >+			key_pppoe->session_id = ntohs(hdr->hdr.sid);
> >+			key_pppoe->ppp_proto = hdr->proto;
> >+		}
> > 		break;
> > 	}
> > 	case htons(ETH_P_TIPC): {
> >--
> >2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
