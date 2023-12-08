Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6014809E07
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 09:21:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66BDD83DB6;
	Fri,  8 Dec 2023 08:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66BDD83DB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702023665;
	bh=SmOWcLpXSi8kiwJemBa3NbAOc6dZGjhvyMRHPMkjvbY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/8iOD71JmCzUW4/ZdlOIlR+gGkdMlrDRrderpX6r9wwbm9SNwvYY+CpSyHPKb1uG
	 16OTkYLRhMZPxFH5YX8xziiYAslmNN0eHzMCjVdi0FSxm6EsmEaP5v24LhmDIG1nSd
	 O0KgtZOMXqjDkj3kmbPNfOE3hHdt7COfX6kDI04/qLzUf1MOCKzQq0ts6FOUR5SIpR
	 MV39YsqBqm7gZmlvfhQtK4rymnCB7f3qdpa3tFcDawFugZvtW04JotI9Tgy7RDEAri
	 gsdsC6/XDc3GzsE059Mxcfj2CxUtrRKWJtfoplgbgDQCQ6x3gXT7FZtGxrPUjbd3Uu
	 ZRNeE+Ex/GbKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wigo19IPG3Z; Fri,  8 Dec 2023 08:21:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 406FB83B22;
	Fri,  8 Dec 2023 08:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 406FB83B22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BA4F1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 08:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C3D5419B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 08:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C3D5419B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnsN1Zr3KyO7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 08:20:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12D654016C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 08:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12D654016C
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="391544615"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="391544615"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 00:20:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="842522869"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="842522869"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 00:20:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 00:20:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 00:20:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 00:20:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hx3KZhNjxRGyomNRkkt7AxTNnp2CTPKjo1QGsU3h0T3YfosTIcO872VsQYGL0woeby4lRSl1niwNI8LpPK4ST5OPGBfruSik6r40kE5HEf2DsN/bKvfdYON1/GK7VBdBLiCxcbUb4DhHOfpTUlyoKQwhAfwrTfXxgfIqBGgrgxNd6CAls3RkmDhwkuSQuvMdK97uobAVxJAGMKcBDr8wdpF0TIjf5DJiSZ3C96hETiHygVFMkESR8LhH1VZ+82mDm+6ARKZX2wCjWr+If+MPJ/F5MBTE+VM/aa+3TpY11JKg7ylzJh+c2PBh0n++wgkll6rtyjqxKDmG4plmFvmMPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4cAnfp745Nycd3xGXil1nAQxB4rcwhYiZRJz5F8+hq0=;
 b=XriTjsxu/NN1vT/LiTIN5GE/YUh5TurXvXVj7Vua8z6uDqvY7JkX9t2OYlKBaC2Si5bxn5bM6zeGEaERgAz1iO9RrVVPsOhrgjafaesAVRMyvnNVgwxspBzCu5gmBONQctRZ6fhyj+kBX9e4Q4evjG/p+9ujgGDZLeWSIGTBxArQlMHRa08P5tIzEg8uzNxOXJsHUdcuci92BYJnIGD3PDXQmFqwYmKgfa4b4mdXVP+W8TSYN8BRjaPty1mQTNJ6PtUKlVL+tVWhWeEWLC+wfO59oe6NYkIJ24Bbq5GiNmNlVQ3l3BP+Bn5/w8RVdnttm9mPLDqv/WgEiVL0Z0pQzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 SN7PR11MB6752.namprd11.prod.outlook.com (2603:10b6:806:264::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 08:20:49 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76%4]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 08:20:49 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v2 1/2] ixgbe: Refactor overtemp event handling
Thread-Index: AQHaJ29/1skde0whAEeB+I8XKyfRCrCed/SAgACW/RA=
Date: Fri, 8 Dec 2023 08:20:49 +0000
Message-ID: <DM6PR11MB273171412C3B31079AB48C10F08AA@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
 <20231205112840.149813-2-jedrzej.jagielski@intel.com>
 <a0b249ef-68d5-4c46-e059-0346c3d224f5@intel.com>
In-Reply-To: <a0b249ef-68d5-4c46-e059-0346c3d224f5@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|SN7PR11MB6752:EE_
x-ms-office365-filtering-correlation-id: 092878e6-18a9-4fee-5d39-08dbf7c695e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GDqq/7vLABgiQ9S/J5rAvJIRLZUTTHNU59D1kA2VCXq6Uu0IYtds/qOLCAQEiuQ/PYbgbvzI4YjmjIqEjPmdJJLkIcy36b/++lmTqXckV3G7OQ6BPiAMptAGS+1CMT7LDgIv2ZFmlhjuEdrzbwiL70mR2/dBrWxjV6s2ZHeXZH4eQUzIYzubIV5amsYvY65Xl2/R5aXGUiFoScPt6IIX609ZR9w5g1Lk3TjMuJ1z52oPQMUrUm/6KjoI2V94A5Wn8qxHLkSqoJDN7LLVpPUUevJtPiAZ4MUbOhhMCKQU/nkk6S1jddD6Tv5TXZT5rKkqAYabxmQWOfZiKV49PWSbgexBYm8QvwDUQ1YgwIAO41lkz8edl8uARPVzI+5byFthBwFfsvJqVjnDF3OAUdmUaU4Iuw9Ep8emIijvIBi+qJvgVQ1sPqgEXL4sWZrUey0YFI/reW28xWpRjADAPRHau3qZAMgw5itkUe18KKTNBD1TD8RALC9r9uKRQmCmYnpdjFfUL3O/z9LM7Z0ZTzw011RANdKpzCFl6gqgkZg7HKOyuwuCNheRumE/HjMwC00RDcNZqpjGedphgVYE4m2g+B4A8vtbjV+86t3Pfrtx0unYcKWpYJFtm6bHajiNPDQmHX4c075Zvjlka9qogdn6fTwwcl3ceAD44sKAMHIpmSM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(396003)(376002)(230273577357003)(230922051799003)(230173577357003)(451199024)(1800799012)(186009)(64100799003)(4326008)(8936002)(8676002)(38100700002)(52536014)(66556008)(316002)(66446008)(64756008)(110136005)(66476007)(76116006)(66946007)(41300700001)(86362001)(33656002)(5660300002)(9686003)(4744005)(2906002)(26005)(107886003)(83380400001)(478600001)(7696005)(122000001)(82960400001)(6506007)(71200400001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alNaeWJNK1VDL2lxTXV3eEpYbnM4WkpPS2p3aENNaUxzaWJ4cERrMkJTWmVk?=
 =?utf-8?B?cnpjbS83Ry9rTElzNGhkeUFQQWw5N0tmbTFnMW5sL0xYbEJtd3BqVWZHdFNq?=
 =?utf-8?B?ak5MUkdUcllFdzEySGtxcTh2NFFqQzR2S0wxTVBrbHo5d2pwMCsySTlONk43?=
 =?utf-8?B?cWxubEI4ZWtwamFLTmZHTjNJcnA3SjY1ZUs5Z3FCTHQ1VmxGUG41MkZRanRZ?=
 =?utf-8?B?MlNwYU5FSndKeUJ1ZndJMkoyd3JtM0hYbmNKSlZoSnNLMDlUM1BPYzRKcU9W?=
 =?utf-8?B?RHNnWXh4cUlHc1F4THRyaVdkcTdvN3BXZFAzYUduLzdBaDF2TnFKZlhLV0Rm?=
 =?utf-8?B?Tkd3RFh6RkRLUFBVM3gvWm13eUk5ZFYyenZZY3ZjaVU1QnhHUFBqa09vcllz?=
 =?utf-8?B?bEpqUnNvWXl1YWRLMnRucnh2OERJZzFNQnFCYS9NQUlIem1GaWFZcUhqaEhp?=
 =?utf-8?B?bVNRS0hDQlhRdE5zcnRuM0dQNFlhQUlid2dsdmtIaG5mem5pM1JDa3Nkbngr?=
 =?utf-8?B?YWNBZ3E5VDc2d3dmVXBkdEl4NWQ0VXdOMnF2TUF5Q0NRMDFFcjNLdlNCTFRC?=
 =?utf-8?B?REZYSGpTSTR2NmVrbVlZMmkyZ0F2Z0RMSW9QY3RnemY3NnkreFZGS0NMUGZN?=
 =?utf-8?B?dzNGdHpQNDh4MVA5djBoYzZ3dEhza1hYdGJ3L0w0M0M0MDA3MmtoeWtudXg3?=
 =?utf-8?B?TGF2QTcwWERtejhyajdBQzNjWEZVeXNhKzFZWHFPcEJLZmdUNmpsMWY0TFR0?=
 =?utf-8?B?T0Y5WWI0NTViMGZQWldKV212cnIxWnErTk5wQmN6WFNDenFrVEpzWTdOeUxm?=
 =?utf-8?B?L281cHdwcnFJODdOSVBDdmR0VGdieTRrN3ZmR0FVbVUxVFlaWW1CbWgxc2hF?=
 =?utf-8?B?cTNYbC9XSnBiTHc0S1JBQStuOWtQc0RiUi9EY09QN21WdFRDMkw3bCthS3lY?=
 =?utf-8?B?bll2OHIzNkUyaGw3UGx4c09YRUFKcDdidHZKL0hjTmxLTjk0c2x4VklFY096?=
 =?utf-8?B?UzgwakJlbzZNT0RaNGp6RkMrTjRFWmY2dHd4bndzc2t0QVJ0QnczdUdNWHZZ?=
 =?utf-8?B?RWhxUEJMdG9sdXMvYnEzdEZRTWJVRzNjbDIvK0xlbnRwUzVJd29WSk15bFpJ?=
 =?utf-8?B?YUhUM3lJMjE2YUJZcStKK1pwQlBoa2tRNERoZWdSWUdXbENGUWR4WE5hbUFm?=
 =?utf-8?B?TXBtWUJlN0RnSTBTaTl4MURReCsxdEdBaTFzdFgwcHJmZzFCZW5jbW4yMmsx?=
 =?utf-8?B?OVQ1THNNVjdTTU5kb0l4K29HaFBGdHpLNU1lQXJ0WkdGYy94eFJZeXFpZFpX?=
 =?utf-8?B?WTFkWVhVcGVWemEvOFlUQmx3eUJIQUhRdTY0dG9lR01GZDN4YWE2VUVQUWpa?=
 =?utf-8?B?QjRaNDU5TWJCWW5Kck1EVFNrNldVelRhYWJCcW8wUDEvTktQR1lzUmNtT2Y1?=
 =?utf-8?B?cHNiM1B6aXlUN0V4SDBMODdMSG95UUhvdSt6N3VSWFR5TmVubHg1NXVYUS96?=
 =?utf-8?B?UmoxOS9jUVdGSzJjZ2VJTE1sTDV4dklnTk5JZmw0N2x4dWFDQjh6OGljY1dx?=
 =?utf-8?B?TERiSlVrVEZoVElSVFZ3ZEhSSXZta1BrK2hnc04zcXdvR1M5eEM0OXFDdzZO?=
 =?utf-8?B?NU5wRXYra21VN2tSZlpTaGo2cUsyWGVBY3ZSeFRkM3MyV3lsZVFZTTlkek95?=
 =?utf-8?B?UTFYV1VETXJWMVdZb0hRNXZPZzlZTmZPeVMydzQ0TzIyK1h5WlhJdmRTc1Bq?=
 =?utf-8?B?ZXJNSWRvNDNFSTgyM2hhNGdQZ1lsVk50a2JNYzkvTzBmTUgrWHFkOW1RRzBh?=
 =?utf-8?B?OE93UFBGQ3RqcmtxOWlIaUZaS0tnd1VQTWYzZzFhR1A5N210NDhLYWw4Z2wz?=
 =?utf-8?B?VjhBTjlkc1dTMFYxTjhYbE5MYUM1SnpKalhXOGlkQUF5QjBDL3B5NjZwYTVU?=
 =?utf-8?B?bHBFTyt2eHVMYi9FYTdicTA2UWNrOXh5N2JVVVdpeUxYVXc3MW40aFBERW1h?=
 =?utf-8?B?Vzd4azJnZHNLRGJDTDJrZW44NGIzanNBUU9UTnREM3lZaU5mUkNvMllTaFV1?=
 =?utf-8?B?UXcwWGRiNUlsVWUrWGRRYlBER1E0dk1iNVhHUno1djg3dEpYa3ErNitMaWM1?=
 =?utf-8?Q?lK3Gofabe4VQTkpFbl68oCPaa?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092878e6-18a9-4fee-5d39-08dbf7c695e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 08:20:49.2795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5m2TTeE61Vc6EawoBnd5B05ioJJEEdLD2m0GDwljUKYi1u1qjRk3+mDyQ569YVBRAo2c++jGeH6Mry2zDcKFZ4Yi9g9qExHTyPgvJtOhM1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6752
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702023658; x=1733559658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4cAnfp745Nycd3xGXil1nAQxB4rcwhYiZRJz5F8+hq0=;
 b=Xg4qyrQy82kXEqaF8NIx7Vh1yox73Di/hVtS4vYS5BLtZMc31Gcq5CRy
 81k4YZD1eZsBaDJquhcAkYlahOEDFSB/QVLfwqLalxos4HXI7zd6C/qnR
 Y73uDkY3MuNdQHY6Q+A/C1ZCUuueue5B4rYYOSzIh9xxKgDfS9Add3Thi
 Kw1A5u9Pxl/vTpoU/5v3+jasZ8fqi4BcUld6KE2b6YnYkQUdHa0fm2Ff9
 AbwfcKVea/3MoOjLShu2AmNFxKmJO0ywfO9Q4X2R0mwRgNO7pwwxRQn5X
 +zOOklv88XbpkeLFmEp5xMbeb/vEseFXl/mo3e8VLulx7tynH5LF/sAiG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xg4qyrQy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Friday, December 8, 2023 12:17 AM

>On 12/5/2023 3:28 AM, Jedrzej Jagielski wrote:
>> Currently ixgbe driver is notified of overheating events via internal 
>> IXGBE_ERR_OVERTEMP error code.
>> 
>> Change the approach to use freshly introduced is_overtemp function 
>> parameter which set when such event occurs.
>> Add new parameter to the check_overtemp() and handle_lasi() phy ops.
>
>These patches don't apply. There are also checkpatch warnings on this.

WARNING: function definition argument 'struct ixgbe_hw *' should also have an identifier name
#186: FILE: drivers/net/ethernet/intel/ixgbe/ixgbe_type.h:3512:
+       s32 (*check_overtemp)(struct ixgbe_hw *, bool *);

I am aware of these warnings but that is common that ops are declared without 
specifying name of function params in ixgbe driver so i just kept that rule.

>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
