Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D763717113
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39C1B81F6E;
	Tue, 30 May 2023 22:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39C1B81F6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685487312;
	bh=CbsxT8eWTGMkrwEq967HEn8zfhD+TjhSX5t1Xk+8Fws=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x87OGlFbHIwvJzjKuo+UOhs1NoHDp2JAbf8iEiqntzhUyE1enQp6YjK++v5YGz2XW
	 p8rtbRJGRsgaRMXu7TAuVM88pap9O6Fc+KO357FIynNgisopbwQK3V+6/kqO3zw8L0
	 UAaCjkdglnSoH+wtBMmQy6m3JURLq17uoT9PDaloCeNSbzqRHTpQSIFEDrgmBRY5R3
	 qJYHy6p/A4wU8cb9hy/7la4I8qeR/fUBoV/Lvc+2SDj7V66IQu/vqf/hDuuC+WYTOR
	 0t8h8hfX1RVKZkKx88rqY+2SdFlAPEzsxd2mV2em8a2hjEvZflgx81LugktwjqxT8f
	 m2NLnMopzJGUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnOXzTkQsiBa; Tue, 30 May 2023 22:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E78088210C;
	Tue, 30 May 2023 22:55:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E78088210C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4F4D1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC1B560FB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC1B560FB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5SvoznyGEoR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:55:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9137760F97
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9137760F97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:55:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358326326"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="358326326"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="739680257"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="739680257"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 30 May 2023 15:54:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:54:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 15:54:59 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 15:54:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONHEk+VXHTJ/y2PMUOuhb+u2xFOx4oZjLBydSjeVKMfCa4OTlrlgGQqzriQncFOZjhVzuO0jSxtgXTK6GBe+is4Emr7pRR0rc9uDBRiwHKTP24CrqqV8oY6pQbO3VbhMzDUyiV/qADCACxQVk7MrY8kkj3xWOYrjRlTk9agiu3G5MOE8WzIgKxC7abUNcnPdcqEcW5RvoikmS6ONOra0t4g61/XVsokOvEhqc5V6D3yQOHIZifIpvg6mPSagqMbB/ee0v9GDHG0tTB9fXl7oZNspc5BSdPLnG6158GbWdkH518PBDRMj0RIEAstdS0qLsSk9fpgTxK393hHfPLL2ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jnkG01sQNuq/yv87aV1l/f5rKduGW/gHPYfC10wA1U0=;
 b=Nk+DC+4BNxg38LbM93BXKtco0ZfvxqheN3F5cbTscMqLDxB8otMuPMKGJMFdS5ZWmrGLCbYHsoWl2/UsscG5uaIH2NGvbt1+CNGUUCCP1KxGGgb6JyFhl3tpzB4DBlPjA40xk3qFVXzYplfn5IhHGc1x029vxS6w94qD3ZfpohQnWya94Np396bvh4i/ueqw92YMf3NWUA/gpi5V0plYQy+8+NSFOvKQddAJM48MhbhZ1vTcbIIqxwFpLVTr1KN0XLQa9lMllyoURjAE8IY31MkcAGHw6P7v9B0TSlHgq7fSkbUd8P+QxTLyrBBkKlByXxDNQFEg/ogqlFO4rCevJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by BL1PR11MB5301.namprd11.prod.outlook.com (2603:10b6:208:309::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Tue, 30 May
 2023 22:54:57 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 22:54:57 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 06/15] idpf: continue
 expanding init task
Thread-Index: AQHZjQ1XVG/xeqs3S029sQcHls+KOq9zeR8Q
Date: Tue, 30 May 2023 22:54:57 +0000
Message-ID: <MW4PR11MB591138F9E92BDA832E879406BA4B9@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
 <20230523002252.26124-7-pavan.kumar.linga@intel.com>
In-Reply-To: <20230523002252.26124-7-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|BL1PR11MB5301:EE_
x-ms-office365-filtering-correlation-id: bf5b62d5-5ba3-425e-31ff-08db6160e3f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: reKV+ct2+WnRdodVLDFWen2PTOM8ZrVWAzG+Ow9puhfKJjz2NwdKBC0ZMzeA1fCZccCiD3DkTWVWTP30Iw9su3tucxX28Duj2dQwHul+qVWK0NiToqwyCXS3w8VMieQycqHvvsLy7z7RUC9v9ykJDPCynK21Il27ZR/lxJiAQHCjVlqKFXCmxE/24DiA5f7mzS4wB4yDC7yQRqbZOZjn982nootK6iOh7bNQIU8csU91uy6L1/+ef3Riua/CsP3CRHVVRhGnEyE8q1JJ9OqVf5Zm49GXOk5oMAz3URaFLzssl+qtYqaICLkXElJcxQHNltzPKxY/olpRIgGSnv4nU8U4cpwdhvnok4mMYBUhKcvcZihMMtH+zphaiUyk6G1uWZzKtOdHMLMK1qC6sp9IPqdEumD1I9TchieOmvv4+pAw1NhQ/4QpZLLzD2iwPmTEhXFoDcyWqZuXSP0SrpMz0d1YfgYQ5VT2CLyRMs67g7KHqb7H1A7EXY4Yo6VaAioxF43ocdG3o7RWHtmGo2ekFRcblBS2vSSWDzlF/0m3XxjS9nM3ApASEALMVC0VJKhwRPy2a/JwlC9gE1LvVXJnxZE9d5udxoNIHHFnlUT8GHLd0jttAqPaV6FUgf2VKeDH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199021)(66946007)(478600001)(83380400001)(4326008)(76116006)(66556008)(38100700002)(66476007)(41300700001)(64756008)(66446008)(71200400001)(55016003)(38070700005)(122000001)(110136005)(82960400001)(54906003)(316002)(8936002)(8676002)(5660300002)(26005)(6506007)(9686003)(53546011)(52536014)(33656002)(86362001)(2906002)(186003)(7696005)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z35PZHDmzgCwWpAswHgnanc8wpWbUmCewtM+/6RaA09BQPeNP7FvKronpMX2?=
 =?us-ascii?Q?gHpTrdVomClTaafdIn0TVXDgyg8OqFDjLtgP4s30dPt4K4BNW2Lh1PqwXHLy?=
 =?us-ascii?Q?tHnR80bu4aGHY6DvLpOEBYPp+uRR8CW7hFtKwvGQvRJnwI6dSb5C2q5Bvs3N?=
 =?us-ascii?Q?Jg7DCAwTV0pwvL716IqtKb75j+GGBkDIQ5HaKNo/XCVbATU8w3OgSlI8Sxiw?=
 =?us-ascii?Q?U61nYpcjUgudEXo0ff89fhXyjdRmvLdKRc0HmB/ZC/zxQxd7C5X+ed0nPGzf?=
 =?us-ascii?Q?ZZRSuR26XS7kocQvoGiLBlCRFxhDn3mimKdNlMOaWHlcfe5FQmnKAynftbQY?=
 =?us-ascii?Q?7MjOKgKYPUPqdakZ/SsTD1yqa1SZDrDSgHytYugrLXJsy15CT3A4oGOMwwHk?=
 =?us-ascii?Q?lAKyqnpL7mDBBg+F02SAVkcwQY+lr6GlXJut3TzLH2rvC+hPgZb1QlMWEkiQ?=
 =?us-ascii?Q?S/BaJHg6at451GWXYOMztNatXPhDN4/riyEjfYIV7SbIUXseeMMlrpJmSilt?=
 =?us-ascii?Q?Dxbjbcz4FlrniESkovb5aVOO/aV7IwUCJr/cQaQ0h8Nx101h4l//mP7eNawi?=
 =?us-ascii?Q?k2jQypYJy74ED6Ez5/XDn3k+/ERabDq8fO0wun3fCQDDG9LjWKeiSRXSkSlT?=
 =?us-ascii?Q?IqiM3bKJ6UioQFeqPKvwiaDcaaFHi/y2FDZJGwIvcHF3X/I2OEcJeSjQxFsd?=
 =?us-ascii?Q?jTNrqQdUd8A4WTIl9TQL9bKvq1zabIdmMN56mtT4P8TA0C4Cijb8ZdJZjUsh?=
 =?us-ascii?Q?ToANSHnbIVbXwtqr1yakyuLHZaIviuK8xYQP1Ru28JguAw3sfuQTOQABHWPU?=
 =?us-ascii?Q?DuNKKlfHf9wE3Ml6Yqq8WcYZmmZtpPWwIANNfm4dMRy4Dp9zSmMniwMsHohj?=
 =?us-ascii?Q?puyIfu+aUBOr4Qb6sAbgRewAqNQYSt0AxnN3kKxnu6Snigin8gMwVkXfwXIl?=
 =?us-ascii?Q?evXlJ8qhmUkr2/1S3hBD8ZBEYD+hS0DMLld7f+R7w0zL2dvk0L6B9rjgIQID?=
 =?us-ascii?Q?LAFRNOA3XoshDaHbeiMRiC0/ensDyhO50y3tGiCbJz35x/x2nNegZ6Dd9Y4m?=
 =?us-ascii?Q?w20+ztCzzUDypdMWHRpoVlF6yErhGrMq/Ym2jpDmGO+QMDoXigfQiNDNcC0G?=
 =?us-ascii?Q?AZs7b4ATmiiLpCjLDFMXNtT8sJ9jewAg9ozJiFDiXIDtBeGKnm0qlsYCBowm?=
 =?us-ascii?Q?GIzn6v++Ood+j/zT4MkITgSunKwf8oeGJ7OjmMilnSpu5ye9adpExPLfPge/?=
 =?us-ascii?Q?gANNHL8l+QkgBt3KWnwj8HoctZoKVMpS4GgwwixzwFMlZeZY/irCqtEPQhPK?=
 =?us-ascii?Q?/MKMOt1A8zeYuwio9/LSEIIwY29MYCuDZtBkaPmMvLxtFPgurPGyc8I5NZnw?=
 =?us-ascii?Q?fNK92qYO13Sc5f9Qw5O5Osij+TTKY/nbPuWosJCBTedhdQRqTQLljh1fU49g?=
 =?us-ascii?Q?2vBE00A1fDM5q+seVBclJCuv2A7AsGKIKWALZFjqb7CUxLQnyjT/c+nGGOkz?=
 =?us-ascii?Q?dMsLfItB2DnxGem9H7ETKU5EjXAjhrNe8WWrRhBK6itWHh+nOYxXfTEDHhOM?=
 =?us-ascii?Q?AojkUygjz1t5ZZnHL/eNO3bI50fvXlXpTl8Ipa0LUxguPhYP9gvt7tN/9nDD?=
 =?us-ascii?Q?aQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf5b62d5-5ba3-425e-31ff-08db6160e3f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 22:54:57.1807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HDD3pW3DVmnSTDn38wt9KaqSNhBNzJqEe4lVSnFlPWXnzLXVv6rydahkVAsT2qFe6i0ahX/asZ14T/BSeQKzyviNv3ltX/zKg05y8mUJ7aQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685487300; x=1717023300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Js/q5qdMij5goMj2xKuz5C8LKLFO8AIoiaIZicSYxs4=;
 b=cl0TxZ35MjuJeQ+DJgvIs+Dlev0fYnUMf1VX7NRHJTMAxA1RzZQc7EtU
 rZetFAK3+L8Mg4hlxiercD7zhtble4Zqk/iB8gueoQQhgXk6eOIZnYpIp
 kBcp8NDljiklxOiklc8LJH+mzNubQFohzu6DWG/UY86Xtg7aycrZb+N9F
 zYP1qJ9l8U6Udy4XiL0L6tA6NSlqowLPKEXJZyZlT2MlfUIkz5wnT3qum
 zyG3aWFiCVytdzqGIqK/lgUvtctTRM8664CdllowwiV1PF4wLnwj8+10P
 n6PYEYJKZQiK9t5vCHOMenPAfUpV5Fq5j/Bdj299VtE9qcMkYri0FkZHi
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cl0TxZ35
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 06/15] idpf: continue
 expanding init task
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>, "Bhatnagar,
 Shailendra" <shailendra.bhatnagar@intel.com>,
 "leon@kernel.org" <leon@kernel.org>, "mst@redhat.com" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Monday, May 22, 2023 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: willemb@google.com; pabeni@redhat.com; Bhatnagar, Shailendra
> <shailendra.bhatnagar@intel.com>; leon@kernel.org; mst@redhat.com;
> simon.horman@corigine.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; stephen@networkplumber.org;
> edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> Burra, Phani R <phani.r.burra@intel.com>; decot@google.com;
> davem@davemloft.net; shannon.nelson@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 06/15] idpf: continue expanding
> init task
> 
> Add the virtchnl support to request the packet types. Parse the responses
> received from CP and based on the protocol headers, populate the packet
> type structure with necessary information. Initialize the MAC address
> and add the virtchnl support to add and del MAC address.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  28 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 184 ++++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 104 ++++
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 483 ++++++++++++++++++
>  4 files changed, 794 insertions(+), 5 deletions(-)
> 

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
