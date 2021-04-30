Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA6736FBCE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Apr 2021 15:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30A288481D;
	Fri, 30 Apr 2021 13:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRZwTHeTlXOy; Fri, 30 Apr 2021 13:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D3D28471B;
	Fri, 30 Apr 2021 13:56:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FCAD1BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D3AB40667
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WMrNvNlEqq63 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Apr 2021 12:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65E5F40665
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:30:01 +0000 (UTC)
IronPort-SDR: bJsUAV6ku7LP+71m9bXzMw4VTwOcSFvN1KYCBAz7N2lnewXcGVu/AgSax4nUTNR0qCXcIEC05c
 WGLSsojyN/Bw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="176748047"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="176748047"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:30:00 -0700
IronPort-SDR: 8epZmKRiWRO6X8NCuVSQZUzVJi2ffsRR6+gNFib+FAJ/GDNm4jADEA/l4Od9QNU6aAKkIulTFm
 iwMV4Sq9zGBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="404581931"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 30 Apr 2021 05:30:00 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 30 Apr 2021 05:29:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 30 Apr 2021 05:29:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 30 Apr 2021 05:29:59 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 30 Apr 2021 05:29:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XXRDaK+6W3+erzWVmzUbCIr/NUzXutWP4VlN/WkxBrjQy150lLwJe8aEi7cCdbgSCLt7cWZFVhS/G6rJH73GQH85tNsxI0v0gDZCUuttRejjw0wcnjMSJgkPU0ARFFI8vd+XXizpHx/VYh30gePcJi831p7S8CjyuX+RRbD4J2L4DVLXLhRbdmMHK0NQTHapIQzuF113yxGKOgXLe/fSJag5V/Dg8gxdH5EEjXzpEpO57aRgt050/+70tLcxj3FbDLxWxtlWSdzbeE23SPvqWHaMzxg5/hxYvMWYxMnyJtOyXFkxKnfg8zo4TOll4exZei16UsZ8s2oIBEMsXJ1lag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoRFYxS8PA1eFG8X7U16/q+oVdkiUvOPFnxVaYBd78U=;
 b=mhBXrwO1vRcZwPcSm6ZAs4bOlJ5ObF5xOCNXbtTMWUmcUt9c6/XQSkekEbwGobjGtOw+xR8oZOyvlfhnPZOtT0DvpdfrtQ9AN4rZ9W9BWUd/XZyJwIWaL9jR26PghVgL6N66yT603YVMA+khFwv1Z/smfZorVBO8XOw4xkSlBiKVIgdVEDQug1TQNSGgB2x4dXWmp/dDoc+oA/C6O5+5HhpMtUT0AfTSSspHgTeb5V7wiYE0hq7REIHrsDAu+1l7IH5IsOhByUYr2qkhapuaQSxu5cSWzZjM3bEbW1hHDT+KL0AztqVrAxpGRvZ+yXkmpjolL2UsxOvdjguJEIPsTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoRFYxS8PA1eFG8X7U16/q+oVdkiUvOPFnxVaYBd78U=;
 b=O5Td0OsE66GpyIMLRdowr3F7GA5X5ucVj6cpiS9Rij1mAZS9tgB3ATLvpdd7WPzXv2HSSA98EnFqi5bDglLO5E7plgxBst2cJ7kP3KqITdj2Yqkbwm8VI3Bt+cOG/Dq4qc78gc+sdKeNO9WnDHenig0O6yxNimSOukGfwJzjcbE=
Received: from MWHPR11MB1312.namprd11.prod.outlook.com (2603:10b6:300:2b::15)
 by MW3PR11MB4537.namprd11.prod.outlook.com (2603:10b6:303:5d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.23; Fri, 30 Apr
 2021 12:29:56 +0000
Received: from MWHPR11MB1312.namprd11.prod.outlook.com
 ([fe80::5e0:b155:74d6:dbea]) by MWHPR11MB1312.namprd11.prod.outlook.com
 ([fe80::5e0:b155:74d6:dbea%2]) with mapi id 15.20.4087.035; Fri, 30 Apr 2021
 12:29:56 +0000
From: "Hassan Reza Biswas, Imam" <imam.hassan.reza.biswas@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Hassan Reza Biswas, Imam" <imam.hassan.reza.biswas@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Remove lldp frame filters
Thread-Index: AQHXMwrvVrASMFRqcEmy6siNC8XPf6rNEfoQ
Date: Fri, 30 Apr 2021 12:29:56 +0000
Message-ID: <MWHPR11MB1312774CA08BBABCA0C7978DFE5E9@MWHPR11MB1312.namprd11.prod.outlook.com>
References: <20210416214357.341975-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210416214357.341975-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: imam.hassan.reza.biswas@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.70.46.145]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d253e84-12d2-472c-305c-08d90bd3a9e4
x-ms-traffictypediagnostic: MW3PR11MB4537:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4537925C54FA5ED5490793A4FE5E9@MW3PR11MB4537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e1y1e/XeRKIV9ky4t8Y337GRAEbmL1kbgAHA0Cbuq1gdQbi8gsRj3Am5rxB9PtU0WK9G+6ypCyPwLh/DS1zHqGJGkC/tGJ4aN8s+JqM7W+2KgqNWJHtAVlXqXT61zldSETO1aYHQqVIrKDJW5KmkjBZP6fLD14SWLwY+H1QdDjNSg3o1wb+Lotj7mGrD9plmzjZbmVv475K+nTXov3D2Dg9Vjczv8h5c0fKxt6VxRhaf7E+cUwOp5JQFaAuACQoCdPGQySLlWMneNtF0iYdCSDdBskxhBK2UStBUkrRxWfjLgpxODMa+9LZutwp1DtKvI5yq/sern52o1ooZ7oPPPGZtWpAImaMIPsoxlwHU5sI/vDmJzFgFmCo/xxsVM9rPuUllpwk4qHkakvchtnzqb6VMN2QVIJ6AfK/JnqoIwyrEEN0Yo1AdQzKYN+vsef7QJYAJt8PC9tCD8f+ifQe9HAXe2BhRRcr1jueO6ehLCxoXxNjUcd2VQhix7JQAICJL6pUVt9M6rXC1jFYu3Ku+r23frum7NcpO0YfsP3JjIMVyH47vvu3sC2dlt8JF3ZiLHowMA6ZRMwxkJkT0F8mXyPDBr+CB/YS1rU9/6c7dP64=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(396003)(39860400002)(346002)(2906002)(76116006)(64756008)(38100700002)(9686003)(66556008)(26005)(186003)(478600001)(7696005)(86362001)(53546011)(55016002)(71200400001)(122000001)(4744005)(66476007)(8936002)(8676002)(5660300002)(52536014)(316002)(66446008)(6506007)(33656002)(110136005)(83380400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?oduN3vXve5KU48yviMv7429/ev3Umg3aqeO3xnyTb0NMTitiZaBUcalviZ9N?=
 =?us-ascii?Q?y4cp7cEn+LQkiBv6lrjfPJM8q6vy+NH+RjLss9e+CK2SYCQzLQOa0iqrxJVp?=
 =?us-ascii?Q?vngfXGa/VLE5UVx8lGFhYghlhr/lNgd7UTF67z0QFrQLWZqsjdZfO0n8gqxH?=
 =?us-ascii?Q?qDfKWmZJNKAiRhHZubuVf610fJN4p7olkG9uNasbdOTr3td6UW21XZBQNxPK?=
 =?us-ascii?Q?9I5P3tIb1WldB7gVy6/MFt426xv4kFs7PYv39TPL+86Cf3hQIkNtyx7ZrTWn?=
 =?us-ascii?Q?Wx3YTIg7zu79tXkktxNpZWMUISn+4WGkCsfsY9LPpKvGr3OJRzi3/JrxOhtB?=
 =?us-ascii?Q?PY37gKyTQf7+4etw8y8CzErdmXEiwLasdjoXqk7zaZLDzljVZr0u9M8Fy7M9?=
 =?us-ascii?Q?8/1aPAJ1gaLVHT0NYwh3ORRQNOtwEi1B4depccSakzd5SOnGD3/soun7San+?=
 =?us-ascii?Q?f/pS+N8oOG6thy48QfrcE2xSnDkMPgjCvzivljVlVBFsLOeRYYSujLBL68/8?=
 =?us-ascii?Q?9OHrg//KtQBEIn8dch1LB+bdlORjfGV1MzxTnOFrCbVRwD+g+X0SW2EjfIgu?=
 =?us-ascii?Q?3h9oSVv7B9oXEUrMcnG+PFsXVAZLzxMEkC3N0OxPLllnDpKNnnOW8iEt80FC?=
 =?us-ascii?Q?LgcrFuuaAcVRiO/1hnaj5M+F3P10hWxTEHtxmi3yXiYxzbi/0tdnfBPg4ft0?=
 =?us-ascii?Q?lekMgWBNA0mQVxOsnMH3n6avGW0QyyHJab8V078e23yysJUDat7r1JuckW2t?=
 =?us-ascii?Q?DuNsNSeBQfoI1hx8H+vsgfOCR0t6lkv36ZJxeEr9kgeOidp/ef7T4s+H83Wx?=
 =?us-ascii?Q?UUQUUoNtF2JUlZHWonE4RgJZH+VB3W7QFJZYTiKnoOLxtEhGLfqRwuXIz+R+?=
 =?us-ascii?Q?FfD694fgvr7ngWwYiWgearQqYvPpUFWj+HS1JBsbJf3w9sALe1KSsea1vCnc?=
 =?us-ascii?Q?aIL4QaKSdReKlpYuriZfXbevJQzveFBm+88eYUlyQjWXDPu65PKVODww2rcp?=
 =?us-ascii?Q?sQY04VUzUS4lKq0WqgWjjLD2PUhcYDEsrRIL18Ruo8JC9GRTYLJ4CgnARCQn?=
 =?us-ascii?Q?DCgFkBwTVd/sTLQRvuE3cHUqa0aaro09d/bseCEblW5DZtjqn2KjICIWInrU?=
 =?us-ascii?Q?IeHYcTiPhE4HmhHUBovuHhvlWHWUbycZ/5KuQk8QC/yeEyGP9Ce9yC9eFh2R?=
 =?us-ascii?Q?JXBiGR+dswGehSUvxifYeMZNNohmNkkG74aYPGPixgQemqwgvEOeEU0gNUDq?=
 =?us-ascii?Q?hO4zamcr6nwppi3EdnyXU1K5gkwdI9bJisiP7c7QQ9poJcAcDmXj+9AulgVs?=
 =?us-ascii?Q?e+ELUsS6pRCM5w/yYfwqX9te?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d253e84-12d2-472c-305c-08d90bd3a9e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2021 12:29:56.4855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EWOXlfHis+18x4KcEP7iWh93upy2gmgWTkzhDTbYJJOqztFmVbGgnfI2mUk0kkCv91x9duR9txdHHEALSJwB7z4SBucYbasWG1VIo0Dmd21/2VV9SAPuNtZ6C+4uncPQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4537
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 30 Apr 2021 13:56:44 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Remove lldp frame filters
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kubalewski, Arkadiusz
> Sent: Saturday, April 17, 2021 3:14 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] i40e: Remove lldp frame filters
> 
> Remove filters from being setup in case of software DCB and allow the lldp
> frames to be properly transmitted to the wire.
> 
> It is not possible to transmit the LLDP frame out of the port, if they are
> filtered by control VSI. This prohibits software lldp agent properly
> communicate it's DCB capabilities to the neighbors.
> 
> Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based
> DCB")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 -
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  1 -
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 42 -------------------
>  3 files changed, 44 deletions(-)
> 
Tested-by: Imam Hassan Reza Biswas (imam.hassan.reza.biswas@intel.com)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
