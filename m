Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6117CDA3F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:26:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 655ED8233F;
	Wed, 18 Oct 2023 11:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 655ED8233F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628370;
	bh=6fAlKTmbs+wjzqZwQTh7A7M81PIzUOPtdVqyrtVS4+w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B3UY8mOTDVskgBjpnbjErsWal552u6I+v+kUYjfViniQ9usuIVKJY9tqxiFOs6x9v
	 1Q+YzpckvpqkQ1vIFWURT65IpNFmuv6ZJURBm7ZKhBhW5qFSzmHfZSJVEN9ltvAVKF
	 T3n3U8fiRSK/aqpH5WVMlhRn5o1m8eafAfAe367ssiNT1mfb7l1EZHdio7pgM+YZWd
	 BL+a4LPhgRYFQRy2jSAg0h+7lMQ63iHW07Az92QQ8BPLA31KlxJG7f5sLVPuFRPLxT
	 Wzrfln4LtRoMynUYqMJcwGQMi8ndnEw6EFw5rHgFSY2gkJznsNpT7X/FC+sO3IA/mw
	 Fjwo5HlGDaxnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rnOc-nlWaCV5; Wed, 18 Oct 2023 11:26:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B078824DF;
	Wed, 18 Oct 2023 11:26:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B078824DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2CC91BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:26:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 797D4822D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 797D4822D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCHCekKgJjuT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:26:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CBE982215
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:26:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CBE982215
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="388855264"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="388855264"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="822410385"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="822410385"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 04:25:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:25:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 04:25:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 04:25:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EloKeMdknCHDKjU/ClErAhuxkVohbv4j8WU1ublJiRUaZc7RTCUMZ/rryO+XPaVHYvMQcCN0WanL5oTgAKG9XoEl1H4+jBknoh04pAfIxsfwmIni9Lxsd+W/zX0waLaWm8LHTp5Zr7UL4FrVbo31mGRBoIDI3AaMFIlgD0X/kFtq17FpiPGJXWumbZECicubXsVZdtsoVrl8ct+ujsuuPDIrpi9NiQV3vk58pq83otZu/duyCNzdyDIlY8mkCiVe9WftxtSdjsvWYr95k43zFwxDJL4ohL60UNn+A5/hxZO7MtL0DSu/UPKZb+RGCG3OJOqkmSVvRduXD9pXhMlmGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvApNHECqY0pCyzq6jWplIo5SXzu4khGOBIWvvlP8Pk=;
 b=PrlggiMPAEWq1YGFlj2a/ITD6WirdjMnUO0I35/DU+aAP09aZ9bzpTOCuAgTYOrXrO1R8jC1b7EDVk6wtCY+42Dv3NLZ/MUhlbgqwyI6Zv5or7lXaocc/LN9OE5izl6ODGmZycdYoRktQ6zHmvOvFhQJE2egu6t9cRsTn0EERV5Uck+HGnaPe90ITIEGy6ik7ODJW9bhRTHQkl7MX1hq7xkg7PI6X1hgHPYHy0Peu/ciJj2CRcjtQ6WQg6DXaiKA4sdglAOR1bR+Y7DMWRcxpvMOr+gQR0Gwjn4k3jB4S2ILanpQS71YmFuEuHnxvCeboe+v2YQtSwwBbSlkNnhsNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by LV3PR11MB8676.namprd11.prod.outlook.com (2603:10b6:408:20f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Wed, 18 Oct
 2023 11:25:49 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 11:25:48 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next] iavf: delete unused iavf_mac_info fields
Thread-Index: AQHaAbR9JXgcf/Pn70eESBvCd9QlvLBPZgPg
Date: Wed, 18 Oct 2023 11:25:48 +0000
Message-ID: <MW4PR11MB577642AB058202687D511502FDD5A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231018111527.78194-1-mschmidt@redhat.com>
In-Reply-To: <20231018111527.78194-1-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|LV3PR11MB8676:EE_
x-ms-office365-filtering-correlation-id: 91f19bd4-6603-472a-4c2f-08dbcfccfab5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O9WbP/9jDh/RrvQ2UzyTFptrg2WU8d4RTSxw4eB9sEkaSIw6y6SmTDAtq9nAXQOPuJbWs+7z7C0VWBkyUNk08oo43GKcpv6pbuI7z12LYf0hJbTebIqJ1iUmzdb/Gz99G96JmSNFQkUfvhz5YdxzK5IJZKuBTNWF66zICbfT8EGkEhJIs8xprv6epzv+UwZL/ESqZcCCf/YkiWQQZ1ng9G4quZjrUG2cUajoUiqCEmBrKdYN5qXfhdDrUyie0r7ZhWIDGfGqmf20DrRmRFmHOdCA0W8oGtF2CUYRJOHvApmwYzCLR+ySa4N4JInBywZ0PG0dlTvfh+0/PxtYeNScZ471+ljTlCzf64qllx3Z5PSEci4Mra2+bovfB2U5k0jhZ1aFq2K/wRGUlAA+jckN/PDq+WwcpMIwx35iGlcgtlyaeyICLYNyxagE2HjhP8oDSvyC9rEC84HcGuUlDsJDLUkj4PKw/dtcYk2Xe28CwOK+x8yhRVzoQ/KoGzPqgLbifV8cJSOjpEtpaqgILN7Xu2OhKEzk7p7q+4xYa4j1eIdhR/F9uBSaKYBIrYiw0Yd5p0OmBu0hP0GWLTpICU7BkOnOk4rMBdTNouNdJDs5L4g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(366004)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(9686003)(7696005)(71200400001)(53546011)(6506007)(41300700001)(2906002)(4326008)(38070700005)(478600001)(83380400001)(82960400001)(26005)(110136005)(86362001)(33656002)(316002)(55016003)(64756008)(54906003)(66476007)(66946007)(66556008)(76116006)(66446008)(8936002)(8676002)(122000001)(5660300002)(38100700002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fbElwjZwY/m4xQbgFz2ATWGJkBo/iJksCnFnoQnYs9r6pjBYMsUgUFf/4c2t?=
 =?us-ascii?Q?uilGcZ6bFKJ9xRNxbnDrN57M3W3KFkDsv1D0i52IhYv8FBKrxs0Kz6lYaCyh?=
 =?us-ascii?Q?mrd22x8YGuX5cRPi5CDubWWhGKWaLJhkqd/R+hDTrmgpdJE3PIFGLT0C8Or5?=
 =?us-ascii?Q?FLl6iNW2UINqCcNqW4s0eSuvW9dn1KShWRndIqgCvsgZod6ejn91wPOaTmXj?=
 =?us-ascii?Q?qMxwovFpV576SElLGlBynYS4d0YPyk3JOVSY9X10LjnpbnTxoCHSXHMCkkMk?=
 =?us-ascii?Q?yAmwDC9xxWfHTksQCCqDANx+H/uW01DOsW9zaHmkuhsxbLtaezoxAbE3a7gG?=
 =?us-ascii?Q?P/R+O6g1o5vi/GMycl3TKgyu2kQ/DS3JtJfEFmKT/IiWp3i8kWeatrYdEnSA?=
 =?us-ascii?Q?yxvdTWKFxX9ZbCUQQTRI+osxzJvWxxx1VEmHQbLjHtIkzbytX10BA6p5nT+E?=
 =?us-ascii?Q?wDYcvMyH12Vr+OTl/xfNi7hCOcXnTfnCuMnvG/KYPbjjS0oS2YWQULkF3QSe?=
 =?us-ascii?Q?oGFewfX+hOWv7EGnshe2dKVnt4Rson2Kd9wd3I/dbEkrTPICFlu1hBhwu6yD?=
 =?us-ascii?Q?rSY6dp/c98viLqu5ek0TGt9pU0YR0jRy9dRzqBLEGunMEnpVtZ0oXx1Phl54?=
 =?us-ascii?Q?Dmf+svp/p0q9e3YCoMiIcrXAwTMu+VaVa4WaSCF+S0PMnkyYA6WMj4RUL0LQ?=
 =?us-ascii?Q?B/iCXluqPisPM0Uc2YJRJE6Paez5OnL+89sdN3Gy6XQxMfIYwZUt1Uz+PBF6?=
 =?us-ascii?Q?3myeX7naBpTl9fFLqQ5osNrE1r8TEnTG3fFHmnBrDpMFxt+qm2c/VEe6sh9o?=
 =?us-ascii?Q?JcL2UcEGmobES4Sqa1MxteYzJ8h+88czZV9ctP7rYcdOx6sgxfu+/zBPFvv7?=
 =?us-ascii?Q?EvFMLzqlBUad2c8EDf9wTrOf34SepwLeLxWzHysV2+I5JOFsx164JgFluhk0?=
 =?us-ascii?Q?AikFifKMHijn0i6tIL21e/8lbv+HBfE+GVFcHBYo40kYSg5fch4qNT5OlO89?=
 =?us-ascii?Q?p05/iT2/93Ksg+GCsFgxS58Q30fMdXPeQ3ewv4n6hLkZBPldSBa8krNJTFY9?=
 =?us-ascii?Q?WD6G8BGP7RXe7W6YrVX6G3oMLXfFROsIXBpoG8IxFGw3Qe7ncwxTJbcZufub?=
 =?us-ascii?Q?vwuRa90SLUCp2IAM6/As+ICJsqXYVeof2FyypSNMwEU9qIzWMC/EDV87w+e/?=
 =?us-ascii?Q?wMYbl7EUPzMq9S8e06kRnQasOi+VvmKzYRkno9pQn8Pc58ATzF1VM8ATf0jy?=
 =?us-ascii?Q?7wthIn6v1DN714gw1za4bLzlYsbS8VkE1PsVy5oK59upiEy4JmyEsD/wBa5Y?=
 =?us-ascii?Q?o0qxs6mD0qkiyXZB8BJ0mk6WmGH588OB3ZaWO/PQ8IFsPYVjZtg9Le8Md4AH?=
 =?us-ascii?Q?46GlQOKMT9o95AC2VCZOwvzNVzm/e0kEJUDvW4Xq+sKQ2tQlTYrH3iKcwV4n?=
 =?us-ascii?Q?CjFuBdZonL3KSZf6jvMPXM44SYehL/ClTFTUSfeRsv9VWk4V0qvlcKOXreQf?=
 =?us-ascii?Q?aZOzUY8exirKB/qnH12bg/KzrcHk+8Ee+FBegod0NMJJHMOV45WHwzQRTz2g?=
 =?us-ascii?Q?AkH+lSAE/Dix+EL9l4hpkTY/mWhymSaZhNoBcjbQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91f19bd4-6603-472a-4c2f-08dbcfccfab5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:25:48.9127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XuNMgPVpM6Nk0R67z7SO7eTOUvkKLCfuCHhsRPoGuJ9LZpyVT8MNYf6/8xC8/NMmzmJZQ98VcUNIWs1Hjk0kdPf+94nkZPqABITK8mIDZfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697628361; x=1729164361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QWD2xkr2YEtiFJYMO4fpbLSJBZfXGrOiMMA96m8iecI=;
 b=FfaI2GWS//47kK+smYkQO6MreI4m7lbYKNMB+dsFV6T8sjrn6LDWjJk1
 ka69i+QcbOeNUx5D940YzEnna5OLokGZe3gX2FpRBUNgmmSj2ieifw6rT
 +6PP8blnNN0Zl2oFuvGPr5DVE/CDmxSjNh/SQEdDgCI60VBSorpJWm+Q2
 ykbwyWxEMqCz6vlDM7rrGO5eY49OIXsNTZL7mY3qFbXEXxz+R+0ewoL7P
 R1/mHXvdfG5o3Nu2DvghtSSb/6Jo37LhGxKkp1YpP7sjV+s+ZaJczZEmy
 HW+D6VTsWkHubhPmaxhU5zFBaDNvt5NkR2lrHKK0LtZFNzOQ6sZEPn0Po
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FfaI2GWS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: delete unused
 iavf_mac_info fields
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Wednesday, October 18, 2023 1:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org
> Subject: [PATCH net-next] iavf: delete unused iavf_mac_info fields
> 
> 'san_addr' and 'mac_fcoeq' members of struct iavf_mac_info are unused.
> 'type' is write-only. Delete all three.
> 
> The function iavf_set_mac_type that sets 'type' also checks if the PCI
> vendor ID is Intel. This is unnecessary. Delete the whole function.
> 
> If in the future there's a need for the MAC type (or other PCI
> ID-dependent data), I would prefer to use .driver_data in iavf_pci_tbl[]
> for this purpose.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

Nice cleanup, I've seen similar unused fields in i40e as well.
Any plans for i40e cleanup?

> ---
>  drivers/net/ethernet/intel/iavf/iavf_common.c | 32 -------------------
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  5 ---
>  .../net/ethernet/intel/iavf/iavf_prototype.h  |  2 --
>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 12 -------
>  4 files changed, 51 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c
> b/drivers/net/ethernet/intel/iavf/iavf_common.c
> index 1afd761d8052..8091e6feca01 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_common.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
> @@ -6,38 +6,6 @@
>  #include "iavf_prototype.h"
>  #include <linux/avf/virtchnl.h>
> 
> -/**
> - * iavf_set_mac_type - Sets MAC type
> - * @hw: pointer to the HW structure
> - *
> - * This function sets the mac type of the adapter based on the
> - * vendor ID and device ID stored in the hw structure.
> - **/
> -enum iavf_status iavf_set_mac_type(struct iavf_hw *hw)
> -{
> -	enum iavf_status status = 0;
> -
> -	if (hw->vendor_id == PCI_VENDOR_ID_INTEL) {
> -		switch (hw->device_id) {
> -		case IAVF_DEV_ID_X722_VF:
> -			hw->mac.type = IAVF_MAC_X722_VF;
> -			break;
> -		case IAVF_DEV_ID_VF:
> -		case IAVF_DEV_ID_VF_HV:
> -		case IAVF_DEV_ID_ADAPTIVE_VF:
> -			hw->mac.type = IAVF_MAC_VF;
> -			break;
> -		default:
> -			hw->mac.type = IAVF_MAC_GENERIC;
> -			break;
> -		}
> -	} else {
> -		status = IAVF_ERR_DEVICE_NOT_SUPPORTED;
> -	}
> -
> -	return status;
> -}
> -
>  /**
>   * iavf_aq_str - convert AQ err code to a string
>   * @hw: pointer to the HW structure
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 768bec67825a..c862ebcd2e39 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2363,11 +2363,6 @@ static void iavf_startup(struct iavf_adapter
> *adapter)
>  	/* driver loaded, probe complete */
>  	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
> -	status = iavf_set_mac_type(hw);
> -	if (status) {
> -		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n",
> status);
> -		goto err;
> -	}
> 
>  	ret = iavf_check_reset_complete(hw);
>  	if (ret) {
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> index 940cb4203fbe..4a48e6171405 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> @@ -45,8 +45,6 @@ enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw
> *hw, u16 seid,
>  enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 seid,
>  				     struct iavf_aqc_get_set_rss_key_data *key);
> 
> -enum iavf_status iavf_set_mac_type(struct iavf_hw *hw);
> -
>  extern struct iavf_rx_ptype_decoded iavf_ptype_lookup[];
> 
>  static inline struct iavf_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h
> b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index 9f1f523807c4..2b6a207fa441 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -69,15 +69,6 @@ enum iavf_debug_mask {
>   * the Firmware and AdminQ are intended to insulate the driver from most of
> the
>   * future changes, but these structures will also do part of the job.
>   */
> -enum iavf_mac_type {
> -	IAVF_MAC_UNKNOWN = 0,
> -	IAVF_MAC_XL710,
> -	IAVF_MAC_VF,
> -	IAVF_MAC_X722,
> -	IAVF_MAC_X722_VF,
> -	IAVF_MAC_GENERIC,
> -};
> -
>  enum iavf_vsi_type {
>  	IAVF_VSI_MAIN	= 0,
>  	IAVF_VSI_VMDQ1	= 1,
> @@ -110,11 +101,8 @@ struct iavf_hw_capabilities {
>  };
> 
>  struct iavf_mac_info {
> -	enum iavf_mac_type type;
>  	u8 addr[ETH_ALEN];
>  	u8 perm_addr[ETH_ALEN];
> -	u8 san_addr[ETH_ALEN];
> -	u16 max_fcoeq;
>  };
> 
>  /* PCI bus types */
> --
> 2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
