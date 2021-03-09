Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA9433320C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 00:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACCE842C2B;
	Tue,  9 Mar 2021 23:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id st2NNneAssMk; Tue,  9 Mar 2021 23:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E68B4018E;
	Tue,  9 Mar 2021 23:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB6381BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:47:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D5BFF4EBAF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNt3MzL9-qEJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 23:47:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01E6D4EBA8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:47:43 +0000 (UTC)
IronPort-SDR: aXjAV0tGA7atTMwfmbV1NijyVyWre/vHPKxl1WBlI5Oc0j6lAdVtgD6C3QjRoxCQFTFkDK34Rr
 OjAPG/WmSVhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="167616097"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="167616097"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 15:47:43 -0800
IronPort-SDR: oHVnPtkZ6JCPEP1JgAWwVYj5xwbOB5ea2a23fUojjt0ZpjPr3AmvVB0/sivBFKC00p+Cu1vxdv
 N2VfDvURwH9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="599539453"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 09 Mar 2021 15:47:43 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:47:39 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:47:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 15:47:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 15:47:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVm8r08afnkn3Z0wGU8TUmHKiOpHhJqJRu9DBmiyQCvRwBuBdYdEyhhl050X1W2wg7tPunlYI64C4vHwe+ebxDFfLHnAN+tQfYouSQsBQO1qamytTUSiXg2TNhV2wkDGgQ7OlP6dTJLmEZnhFXW64UB6tvh01IAQqhX0CPimdEqd0RYrsH/nS40Mcwc//a3/rSvTuIs6j25EslaB4AsWQwQ8r59hO/NrGfLWjn66ClMQhafVXbyXdDI+6rk553/W7YH3BECu4TF0moBhwz570H5UBycXMVfxqt3y+QQz2mjoLPQe2wOzrzGfA7taKchGW8UEkC3tdsNcQwmn6ABiWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=890dAi0hZZ+3OVafkSmUJEktZD/yNSb/B9TZuNALJHE=;
 b=nK3sJT9c8yUXIoni39JflfZs2yQC31zF8NO+MPqend1QuYLU7wwCE/+8dqFe4f5SqjuzJHl1wGOcqy08RuifDq3/SrUC+Oze+gigOb/bW99G0nvInNHiC8nsj8zJAmPHoTh0lUKPARJ5EUu4hv2cjIewjc+QaHhTTHXU6atTH7KqqYuuxxeaX8JXGLZiHEntXbj5CoB/E7t+DFHGZ6DBFNgQQwlNrk05BQhbxTaxq23ndr5Bl+8Vm8k9t2RAXE7ejv50WZLJ8Pz920IAdP6sldCvcIEB/dV8u4zt9F1saz862YjjXETOmT4HPTBJi3h1fzDYtHVVG0BHnkP8eGZf1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=890dAi0hZZ+3OVafkSmUJEktZD/yNSb/B9TZuNALJHE=;
 b=ubN4vtT7YPcr6aJwhuNZyU2OZm8cDz1EtvWmHejbybfH6DsktSNQF2rI8dTJQ1H305TZOefJKgPVcOWTsmnIdWASglrKyrTQc7auyk2kmmGqJyn7qjTENs88M/sHmHUyVdbJTYALdq43p3pyGOkE8nCqEv/lzUwd7Kgs2ZuXLeU=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB0014.namprd11.prod.outlook.com (2603:10b6:301:64::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Tue, 9 Mar
 2021 23:47:38 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 23:47:38 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 08/13] ice: fix memory allocation
 call
Thread-Index: AQHXDIaJOVdOhOa2f02YFN+2oe5S7ap8Y/OQ
Date: Tue, 9 Mar 2021 23:47:38 +0000
Message-ID: <CO1PR11MB5105F6D775DA2332379FB3E9FA929@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2797021-abf5-48ed-67cc-08d8e355b8b0
x-ms-traffictypediagnostic: MWHPR11MB0014:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB00145EAC90383178D3D7FE8BFA929@MWHPR11MB0014.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X06rkKRq0c6tDtYyM0gz7JyLEH4NLsxV6ndi6ku/fJx45/A7N9WL1sAF39wTtfI/tg+zTDzq3Ej9oqNdbR1aI9/GAyd4mEEAjT6SWQ7tX34U4kLX8vgutIoJ9Tk4Lku+uGpG1BE+JRz8BXIjstFUUJiyMdTGA5Bm/lEhinj74k3YU0EyD/CtttpFmFnA3tP7o3Sr5tWz2Fu8l91cBSl4hG3D9gq5dGejZt4euW1Sdyr6YNlZ3yCJE2LeK6qmyYcpZCi6lLOtXxuM2ayzhP5y776vhpHa7i5Coc2Ko1RXcM1+JbMnpHp00NAJ7/p04YE5wE+8qvj6rnKXqLIdrzuJ5IxXKedLKP+TMQcA1fn+FLiPKbNZA+QhPjowI5X4X3sXA1x/5+7O6EMNDNMGc+qIlWcF59AjE3jh95nmcKFsgx+3lQaii7OHHLvR5sEPjAljRPhhm0kQAsce7CfO0ya2eldQ+7tFqzcGucujq+NTHLgAyy3xQ7ef1esL7Jh8v+0bdkRG52SB/mqIUQk+SDiG5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(376002)(346002)(366004)(39860400002)(52536014)(83380400001)(8936002)(71200400001)(33656002)(7696005)(478600001)(55016002)(66476007)(66446008)(5660300002)(76116006)(66946007)(66556008)(64756008)(9686003)(316002)(186003)(8676002)(26005)(4744005)(2906002)(110136005)(86362001)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?5490npW0J3XzX9qaT2qifrpcFdh90RVuv5xAsXICgDAQMf/Mh07rBqLk8XEO?=
 =?us-ascii?Q?AT+8uYUYCBMcpy/6FMq0pWwN+cdpGQwkIoTnko2dnTPC+rJzD6y9zcfegiF/?=
 =?us-ascii?Q?dFc/OgTBpR3dDV+BygbxBYjDVILEoYKovm2lrJ1GdqVAwfUkDiFO1cOWAkYm?=
 =?us-ascii?Q?vj8cFR0+B4iDtBAQlBRj1AymBVILRPJ8b3w3Fo7CYZcwVjXNJFI+YU2/SZX2?=
 =?us-ascii?Q?T35sgajJrRjYj6Wc4Jnb0xsilIKDRJD3fj45LEmRgecXqgr2ZCXI8Qb3lgOp?=
 =?us-ascii?Q?ChpC8jdngefOAQZpNkNKKCbdjCeuqVelh2anJUlLTJwejJzLY82hbrbxw1v7?=
 =?us-ascii?Q?FAZuMx5vT7pjbkp2AdNjdMFEAtHGdznSj03Tk+ppKRaJHCIn//s73VKFO/IR?=
 =?us-ascii?Q?idH2DPmMYNrS5rLGKuzfXa4I7uR1qqo2iddHkEX+OIqFG2+GG92bN1DXt6ZL?=
 =?us-ascii?Q?nqtnv5HX2QEFNQF0Vko/qshuKtA+Ksgbw9CR2voFxgSBv+/yLLFWnhVUG5HW?=
 =?us-ascii?Q?uKNShPgMxs99A74Fc9puUy9TDNQBYbTWpRQBw/WF1/6rq27sQk7xWh/ZtVjM?=
 =?us-ascii?Q?oVkSiDJGARTj5uTPHaVwBcCsh045yOGmJh9cL+A05BM2UGP9iDHJO1uHGc+i?=
 =?us-ascii?Q?l7/jUEgGzLRs2OKgKgAlidclfu166YaeYlkFBVV2HRPuD7Gg6qr2lrCKT1Zl?=
 =?us-ascii?Q?zMttssji1z4TwVo1OS4nFsu7d64GCQuF8CZjH/ji8FwYiROKTYZKf9zU7vA5?=
 =?us-ascii?Q?vueP+CCWKThvJcfMyhC7t4f/Q4172yV7YTgjFjUh0PG3ij0LBL1W+iFlbZku?=
 =?us-ascii?Q?wkFNfLdxLxZs+i3/8Z3991bIaxbWyKFSNsfVeKZBWVg/pM/SXoWPPQgfDFXX?=
 =?us-ascii?Q?kfZPVQw9Cm+egn3mSh7KaxflcIahKj74rbb5ctwVunyobTfhXMDieohBbk7I?=
 =?us-ascii?Q?1LefbrAppcxLegGXwAeTy6lRdc/to+JExNGDZ3xmN9Pg8AEuSOLbnTAboGhT?=
 =?us-ascii?Q?d/3oZMEfwsEyu8hx+sclAUr5fWDZyJJyHOT0k+YHfywJTAupB68b0nWfdXtC?=
 =?us-ascii?Q?+ObCCHvGIc9/MCsc6BgoxD3CY+Qlne/HnNAyilfgqHQXXgz4MOEo+rfOz8mQ?=
 =?us-ascii?Q?Qbkm01m+LtZj0asktdnCR9tcH1Kv2+PXNhLUt//IAWjnv53JfSMOcieSb3Qe?=
 =?us-ascii?Q?ehFHIorNkd1nw/BX7svK1Hgt/jBSPuad2/2wE3usM2WeNU530J6yqYQt67yB?=
 =?us-ascii?Q?HqVWQhhfaQ94Gh+mSGrqpMdbKwqWtXEd+0RFVtzLxdRvt92uzqGMMFZoXQew?=
 =?us-ascii?Q?u0zk35M/jIMZ7zGgRZhAD+M1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2797021-abf5-48ed-67cc-08d8e355b8b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 23:47:38.1656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OdTFC7pzuwUvPdBDagiYDx4oSxVRvg5TvhkoC6s66ZHgmb730//ku4P/a4N5iTpxSO3h6yXkPpQtcOLs0QXuUh0FOBmNqkdMchr9UhMJazM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0014
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 08/13] ice: fix memory allocation
 call
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, February 26, 2021 1:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 08/13] ice: fix memory allocation call
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Fix the order of number of array members and member size parameters in a
> *calloc() call.
> 
> Fixes: b3c3890489f6 ("ice: avoid unnecessary single-member variable-length
> structs")
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
