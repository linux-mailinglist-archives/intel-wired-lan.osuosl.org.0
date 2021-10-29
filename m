Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2FB43F93C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 10:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16FC360B68;
	Fri, 29 Oct 2021 08:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MpsWMz-m3nsV; Fri, 29 Oct 2021 08:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2152A60746;
	Fri, 29 Oct 2021 08:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 627AB1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4ECBB400E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVsRDNLqzdNH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 08:49:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2ED25400A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:49:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="217537266"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="217537266"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="487503305"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 29 Oct 2021 01:49:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:49:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 01:49:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 01:49:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cib9lxJ4lBMixupOV+XAfF5ucQz3V5d/mlxge4Apfa3tudl4TSn1w1lMwl5RDrblYxxCAty1Nb23qIEWRzsSv/YEBUnN4ZOzbkWLHWz9wVrbD2K7J6d0aDNpV4XSdS4urUosN43IhJDvJuN9+xoX1eXCraSZjhGqhIrqJfPd3rIgMPNt+9CBk/QPdFg1rubCWbNLGn/ePtutRZ/cF2sdJ6HVcy/Ycy6Ccm/Ef4pFK6AwxUa2o8blEzFaMz2RsHLWwywHmt1CR/XsoATiY5VxfxUiP3LFstQwYWOIvOjA/sHFlB+FLZeiyP55rl2tYEaBmxW3DqpTSfErH9bvYRWeqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYPk8DWixs6yjBcPJoqHuz1m+vrpm7tiLJlzNbJHJkk=;
 b=cFSmhMUQXe0acJUNozAW3Y5Ylm5medZhUF2gF6icpd7pzWgonOp6+6wHD1vcZViBxJY088VB/7WbFGGQRySzlc9w1MsA/xWUwLJD/2n1XouTWIcpWiAW+e1RJb8nBqo5CrrskVXH9hQwwYvDR+qm0nXB3T+G6yOcQ/ynOMHyqKhNLfDXZip20QXmUQ4ZgE7km2dntf7vKn2n78dD3Xp0TAGWAL747Xdf9Udx79uR7VKDQLtbRNb1cjU946cAr0gbQNTQ6IlbKafC0GHnu9C1wNLwBqEckDpIsuXgg9fqWyUuQh92jASlMIzJ94ZCiONYIWwuxLPdCSDBElRXY/OXIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GYPk8DWixs6yjBcPJoqHuz1m+vrpm7tiLJlzNbJHJkk=;
 b=RO3Kz1ru9t0w7qOVHYQ0lRhkrKHdB55ZgZT5V9MPZjLnw7SMosZdzdOR/f1orvbRQBqK7KiE5yeBiK5XtXYYcpF7Wv+2uWVhGhPqn1SI4Q7d5NpBa/dlVpb0s6RF3QBHlWNOLpyy/f0wo2t26ui4TI8ffAFE8zf/0lZ6++k+YKQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2968.namprd11.prod.outlook.com (2603:10b6:a03:90::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 08:49:37 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 08:49:37 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 7/7] ice: Propagate error codes
Thread-Index: AQHXu8kSvGNufFfL2EeNsr+mmBZ/0qvpzAWQ
Date: Fri, 29 Oct 2021 08:49:36 +0000
Message-ID: <BYAPR11MB336717299CEADCE2B8DD6EB4FC879@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-8-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e659ac3-66f9-40bb-1b35-08d99ab909a6
x-ms-traffictypediagnostic: BYAPR11MB2968:
x-microsoft-antispam-prvs: <BYAPR11MB2968DE44E93C5B4925BC5D59FC879@BYAPR11MB2968.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gg4nxMRnrMFrnMmTu3boWxSHKHqWJ7k3Z0wIAXn3aFvMtoQNhkla6rjQ2ZVjVzOTlmjkxnARWWhONtFXpPa6tVXEP9n3VPCJ6XtljYmOchrXtxkVBwLEFYvgaEpAJwm77T+oRxlsUyA77QlMFE+ATcn3xzS3g4GBIBRkE+/dpsLB8jluI7Khssd0cua54A1JrizjEhYJWdfHl6UiswuoybMa9/BjKJJR5CL2RandQIRRtcLZeLPl8Tx7qfwEM+H9eRTO8DUk/OmnNaCh1kdrQS0WhieJinRWq8QicHPN4zY7pnazP+lmmBS/cAWNz0V3o0BpLkUrnsFx1vy9eIlvVQyGXUcsMXXXDGRWwdRfYMaGkf3y/3m+d5+OIRELzPcWj0ZIFP6JeMxm5EEHCxYb/LsVjhiDOR4y5yICl39FxtmbmGd/knGPFHi92OjHw9jzATFkQlSqlg02YZm0awiLIbJ+c29jiP9uqZDI3dFFGo2i0l38Vlv5Ks9hLtiO/gtCZllCaYfA9aZcCBE4BTYcTMfQmIxBb8EP04IcsUQ5dLcZxbB5GUZ75QGdGA5/nlBWDi835tkr6HotZ2NFiUIVJDXdc+oWDYOWVmlZm4BHB7bGhy3BkDTXNsu6okAduDuSeAht1RoHcX1WUB5egw9k/1J24b5avZZthMhpcDlmmr4gDfCyQq2YqkTCT8P3OXgTJplP7Hd+qYL8RVXXbfY3ZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(66446008)(7696005)(8676002)(2906002)(9686003)(55016002)(508600001)(186003)(26005)(4744005)(33656002)(53546011)(5660300002)(71200400001)(110136005)(76116006)(83380400001)(86362001)(8936002)(6506007)(82960400001)(66946007)(66556008)(316002)(38100700002)(64756008)(122000001)(52536014)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ca+3Snxe2Ujzp7ve8OH9Um9y3ibYLOFAPvrDYZXq/+hKb6aHicpH6NX56EO5?=
 =?us-ascii?Q?RNbvQfgB3iUoYJmExZp7K85PLyypf0Kf7G4wq59vDcJmPzbWU1W52iShM4u2?=
 =?us-ascii?Q?WdgqDE/zuZpeDLu6q7RvwpG/QE6ezkZwpiDxKydxfzvb+OhQFxBVWIeTiy+v?=
 =?us-ascii?Q?iorh6qMgJB1HivC9h62ETeG+PncwPd07WiL8Sm5BEjk3ZpQ5Jj6+BM3ZEHIK?=
 =?us-ascii?Q?PDEoQ6DCmdzY2qpb2KO4roFbbufDSvcfPjlyPMr5c8htIipdylheuU1MLLyn?=
 =?us-ascii?Q?5H6Fo+tRLgW9+chdxAGIy8/po2Hoyb2reHONzMLh7J6AHAx/2FodGNCcHlQH?=
 =?us-ascii?Q?QM85wz3YjQYmJFts4w2gln5kjFi3XAGtBC1H7KlI3sfc9rBaD7VlGW2UCRFR?=
 =?us-ascii?Q?3kWjBF8ANipRc8xIDWj+sUbBTt7sDJND/jiHW6FlWJAaP+Adw8FWvWC8XjBx?=
 =?us-ascii?Q?ihbX+Qv1NQaeQO1pER7Bt94gxZojlRCjVHbUoZLUt4j3aRtiyLVaakKteXyp?=
 =?us-ascii?Q?wDXkmkTFKUI16+zH2s4Y9iMkwL6bEGF+7PebpQ39YXPvWuRRrdi2bYrilhh7?=
 =?us-ascii?Q?AItgtEuPQFxErLCHbyhPI+Sv5LqL3fs4aiQ1dZt3ccVXM06nAHhRK9elGnSA?=
 =?us-ascii?Q?quifL6aXbOoQpC4fPf/6M9qQ4pYF6EYWHGYV0nEbiNM2Ud/jkTKn02IrXA4r?=
 =?us-ascii?Q?FKQUhJ3D+Idg/vjKvB+jWn4MolSaX8wBtZoTsLdwXt3ucGzMWBHdfDTgsR2R?=
 =?us-ascii?Q?x6myznZwESGwTENZcGLdOfXyOb7+d99POnVnKCZHUkWIddnJBbTXFz5poxEZ?=
 =?us-ascii?Q?OrMI4IXKbIBafOJcWbz8Zwn/AF7e0+SN09i4ziifCuJguC+kHRaZEJhwWWHn?=
 =?us-ascii?Q?eIZ/U2VWMdabQmIq7RsddoAj+/euMOfgQd7v0MPlnq6TXpSgYn1BVD0ryUSm?=
 =?us-ascii?Q?uaDiHWavhwQpzGMog0EzsorI7E4ItT7zLYcnW4nDFSqsufJ/K6nXdpGIDjnR?=
 =?us-ascii?Q?85uLGHssTnqbbUA3s34RrOWoj0ADcj+xKgXLjR6BJ60+hdQmEYLUt633Q7SJ?=
 =?us-ascii?Q?Su2/au35sAgn8+oq7PpCkCkRicwGr7jW55b2oTrR0MOgS3jNi5Zx+rDNEBFH?=
 =?us-ascii?Q?A/1eMShVbMZHdrXP6oijeFYIBHlwV5YLp/Sv5mdYyzjfJtvF/xnxBabDwAZ2?=
 =?us-ascii?Q?sLYfQuRYZO2ZVL14wogVxZLJe+c4EIyE+KlcJ29C9G7JL+QH7j01aH2j5BEK?=
 =?us-ascii?Q?LSno6QskALAh0686oCOuG/pDBKaGgYf5rj2Pjs02NU37MmITzTEOeCh97yfU?=
 =?us-ascii?Q?7tKWZoF60L3NUwSbYl+q9u5usyrb+uKCi7ycRih0KCOp6OjHABFo8juNgaQm?=
 =?us-ascii?Q?3RJmh5E+wPVCYzXAdQGKG0TP0qBty2UqpSYE3m6xPKVpWRk/viqSdyRXyU60?=
 =?us-ascii?Q?N6yLIuoHT8yRDUHGfVK0mP7Efe9wx1+DA8Fg/7yM/EvzG62IozUBLIGTAJ3M?=
 =?us-ascii?Q?x22GzQ6+Rh1rIAzuLDv4I7jT7X+RfUJ2QgcuRNt0oD8YVrDt2zN7InMcibvm?=
 =?us-ascii?Q?fSCm+h2jnRxRGMqdV7grp9RMlbsOtyCR8OyY+PubGwTSBHziLGNrQMI9cmk4?=
 =?us-ascii?Q?Fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e659ac3-66f9-40bb-1b35-08d99ab909a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 08:49:36.9694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JkKKm7djtQvPo3Zd/jAN4uEW661CX6BrE9yQU/tvW8F+z4KjlgcqBGYv//wNtv52xeAT1ot2rMOUulNIH4dNVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/7] ice: Propagate error
 codes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Friday, October 8, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 7/7] ice: Propagate error codes
> 
> As all functions now return Linux error codes, propagate the values being
> returned instead of converting them to more generic values.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |  4 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 13 ++--
> drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 ++++-------
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 23 +++----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 63 ++++++-------------
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  1 -
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  4 +-
>  7 files changed, 48 insertions(+), 97 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
