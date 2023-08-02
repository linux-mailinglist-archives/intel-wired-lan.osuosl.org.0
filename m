Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2118576C525
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 08:08:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86F4560E2F;
	Wed,  2 Aug 2023 06:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86F4560E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690956483;
	bh=XwFXakIWqY3ex1bQ4v0pWd8WVNppbD05UnYiY2pvi5U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W0WsQBgJRwifcGAANER012Eok7lavtzUcgzHE7LKGV7MpCf0IYR1p+G7RbsRYDTES
	 yYnwLJRYNaSy5f0DmIl1quyJMhSdepnsPmpduOiZFx2ygp0KJ9TuMBGEvfGl+T5f/0
	 Z4ZiqJwsDgju+mCq4zBP8b8GHTpHQP5HuZmRyYVSD+N1Gqv7CJQFPGOhtlkkbhpRGN
	 MLJqtVXJmVFIKC9OLgZYH5GX39vyDXyS92ByH1zwLTO0597Zu0zGihu4MLFH0kDxFS
	 o3gxTwhua6w9kBDJS/E4BTbv62dC+R1bI6SSjH7ozd8PnHN8zaaU1Jg7z5n48qR0Lw
	 Bt/5z8KSHS/mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1k4nY9009y4T; Wed,  2 Aug 2023 06:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E781160B05;
	Wed,  2 Aug 2023 06:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E781160B05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C40EF1BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B42DB4012F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B42DB4012F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DP-x1YEZKAvL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 06:07:43 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13BC240207
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13BC240207
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="455859683"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="455859683"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 23:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="678926726"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="678926726"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2023 23:07:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 23:07:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 23:07:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 23:07:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GU/M3cSpYohyttdQ8hiJe2I/Ly/fz4mY2HPhQwhkUhln2rvv3SzC4BJBNa70fGlbZE0MJJOoXiDYJDJrnOIWQedEHoPbGBti906cxmLSK+jLvjyu+92zvTsKM54sd3wwAulUXxvNDnW9YKtK4hiWwefTrKZMOgkV7Ww6O/DRk0QE0tD6JXq7b4L5Fpv9C7mDxwXPd/SBDRunnFO9JJQEj/MpBDXFn41u1TWqSLN0BCXX1+E0macgG3MApgs3X+IH/9/qKflbnnz6yTny2HQVNv//abG/DrRxqIDX5SHmfBfyT8xX9K+jxpBIP2Z1eV7WTAfaUm0Q9JjXmzc89fft/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lP6cZxjAMOkoPNvIMoSMW1RjpRsKKlRsOGvB59tara4=;
 b=k5xpv4QnV9jCYwf69YxyxXsuxCoB+r4QIN95jbTsHblwOiVVB9wl7ta2xSt9UrQ0Uog9/+Joi7xPECZkxhNJah4DqAbQDT8YRq9Oug1ySnMlkHALZmk32DWJZsrFENHLEXHU84czHlvKJcSDx8fiRxdkB1xfRbm79B8a1aVMD/ujfPivJyYsQVmk4L6vfSiiM2czyZ6F32e4XXNLJs7W0PnEqx0TYrRow9HHdxON9/s8dsz2SvHE5dNDiFqxCLLtS2QLeww3PtuBYbDP2jxpdH6ktbSKMmCEb7qWFbq56lvzsz8PUW6rmT+ddVLT8en+qO54S38DTvKScYbzg7FnQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CH0PR11MB5426.namprd11.prod.outlook.com (2603:10b6:610:d1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 06:07:19 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::674b:9823:4913:b800]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::674b:9823:4913:b800%6]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 06:07:18 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaborska, Olga" <olga.zaborska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4 2/3] igbvf: Change IGBVF_MIN
 to allow set rx/tx value between 64 and 80
Thread-Index: AQHZvs/QETWDiRet1EyCFmkFKkJLKa/WkWkQ
Date: Wed, 2 Aug 2023 06:07:18 +0000
Message-ID: <BL0PR11MB3521C0FAF0F3B0019612CAB28F0BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230725081058.92158-1-olga.zaborska@intel.com>
 <20230725081058.92158-3-olga.zaborska@intel.com>
In-Reply-To: <20230725081058.92158-3-olga.zaborska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CH0PR11MB5426:EE_
x-ms-office365-filtering-correlation-id: 1220a391-6454-456e-40cc-08db931eba56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0sOzp3X00IrFoynFXVIYwHzs4Pn1N8KMWCA3W0YNfO8OxZ+cWHzmT1tWEBJjAuW/Nxs6BPLAuVRzyMe4Pc8ReUYm6gdgg1hPFrRW7j2z4bf5wH6+W9r7U/wv9IJJypTc+TL6MvGOVcuzx5tc1EPqiC+fanb1Qwxjl9aU0qLz8wySBWwd/GQkt+Dv7+lmPeCY/+oFuRYYHZJVjw0WW/Qs0yBJMJtWt5kmpe5YC23nFUiQLDdvEO8sofLKZvNz2EbVNZiMQf2/WT5XU4D7F0meMt8s/HJfQ6zPLO7SvYIL7vg/YGixzJfs2BGkZrQEmsgK2Ne6Lc5p5fnRpCLvuFtW95lHtAsiPvNjKuWMIEyxTNSkkEu2liGu9z3c+fY4oe0U7Rmc1yAO1W7vO7mkG5MgI+UMbBajnQ+ae4zyxRw1555PNfKTBM0GBwSrWoYPECzwNPvZ8YejuQKNuUhK3AvuaSO1ZRXYSzNRzcwLdv+oJqkcPDJC9kGp40BZFq1h+Nv15BCZUPy8NFFqV4VpALotemoN35IEp6FZNFJrA7V4QvEzLIJqjbNWGrlA3ga5OPGeyzC8dPd6rNppYysPCtcS1YN4j3pBPY5l+xkd5/LcXWJORCb94g+eR29L/evU/FCe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199021)(33656002)(4326008)(7696005)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(82960400001)(71200400001)(122000001)(478600001)(86362001)(55016003)(9686003)(110136005)(38100700002)(2906002)(41300700001)(26005)(316002)(107886003)(186003)(53546011)(6506007)(52536014)(5660300002)(83380400001)(38070700005)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qx4Qc6jDgiR7aDFMOYIDPL9bbRzJPagCBaEpHWLnjvBJxr3PrEJ8dmnZTb1o?=
 =?us-ascii?Q?qw6Zm/ewMeVed8AGurocNnt6bA+uRplNQige75pEC2lVfQgdQrJ/Mr1uVakr?=
 =?us-ascii?Q?bH2qSR+R/R9rb4CeUMFfQmlHQaB8yJrt73SDGc3eN/+WFZx+6QMjksYx1xni?=
 =?us-ascii?Q?HzuXDbswWVq24Aj08of7P0noUOfEPu3VPLrGNUKro5i12sKtwy8fDStDJi6T?=
 =?us-ascii?Q?IZBsVrWNskQBNF1m4Cnog6eOE+Pv+ZSYxordPIP41XECqw12zHsjnjgpJPa+?=
 =?us-ascii?Q?PvpRoiejoQTY1BXer3zhY2F4Pf6qUwEQV23QpOdfV5pirE0Zxj4iXoP4frjL?=
 =?us-ascii?Q?cL58Vn5yNef+soTYqtb/c6m0kgElivI6cQxEpQWlion9Xk1VdGj0srknbvUo?=
 =?us-ascii?Q?WQE/ku07f/O2fh2xIq8Ji1j+WaE5yx7xauhQiYrLAQDl6kceUopwBT8c0ptT?=
 =?us-ascii?Q?a1siwAo0SstTaNIjTrAzvEuFp9FwLuz3enP/DmTD/UM/0CZCTSGL4Xo8wWCf?=
 =?us-ascii?Q?gR+szwy2MCCC+8rOHTCnbrlyTJL1q3zv0Y+sDQg/mC/stS7XwvbzpHLgfuQu?=
 =?us-ascii?Q?O0YmlE2/dgCpeEf596Ss5Pvgtwxw45yGrFlU6R3WdqIlvJmlrg0EiAuHSNgX?=
 =?us-ascii?Q?rd6xN+bcHoA71er8PVCP18+HadCgVTwBU/eJpX/f3AFSg8UChjNFv44yVcsi?=
 =?us-ascii?Q?87GnS7PH3Wqw2QCXvtVkTA2vbAri0BDD8vu6mwzFrPJ8uhnXxEuGqsACEqK6?=
 =?us-ascii?Q?WPRVmmZMS60CERRMj/HHO/6OB/J8cSMe1KM9advuTGlC5o1M/sd3G9CDHMf9?=
 =?us-ascii?Q?xRNGxoOst10ElBW7at6sDR3U0ujtTzrC0kjac5nDvOk/jYZOhBasVsFu+0jQ?=
 =?us-ascii?Q?5qw+wmj0Ve6QtrjclaWyewCXicfSa169WEVVU8U6stA40FXVL1WPy7Zr9h3u?=
 =?us-ascii?Q?XJL6yhDemMpxd+YjQxohN/lxQRGnmQBifpUAr/5zn5X542bFvZ3/cfxGipRA?=
 =?us-ascii?Q?/gA7LR6WK9upUGJdkf7RZA6Dl/zR5FLgaIzhltvqpOkmSuNGs+j0SgD99zRf?=
 =?us-ascii?Q?d/eS5pfja9IrfD4drgrXWrQfpEYeKO3MQ0WVqPyxt74DSuMuHbSgn7IJ5WjE?=
 =?us-ascii?Q?WBgWh7L9nz12OZQQaJ76sHcl1aYidCUPjpyoNKL+bn8xCWkK99XPQWosQTTZ?=
 =?us-ascii?Q?PBSm77UNrx/bxt2aOP/qss4L+E1hlTGQgHPKC3NebBzgGs51n7rC3kWBWiSk?=
 =?us-ascii?Q?L/jnbGizEb5Qmb4n+ozUnmALT/M1nFJl8ngC+/xwCLUCCZJm0658bZM0bzCs?=
 =?us-ascii?Q?WC4zv2Kn97Ax5do1blaGYVyLRxaEMG/01HRjNRI4TvhgzP3TEB1W++I7kb5U?=
 =?us-ascii?Q?sWYWutNxoCtF0Baf9FsI7BTRkRBIe1nsYuajkE69+5RTMs0uJFjfN8LHFx3z?=
 =?us-ascii?Q?y1x7/uLJ10znEerBYwhOtxtW1TzdbJb+H/SoWYFvUcIBmJd3i5LGdwSwgNEm?=
 =?us-ascii?Q?I5hSDcPh4mqaZfbD6Nml9wIDO9L35+SC1Pv4ikKOyF1WejwLTrVjlUug5dyl?=
 =?us-ascii?Q?q/nGfK3LWfTINegg/tzjV5t8Zhszvu+4v7dnxKboS4j5q4xPdNxEHiWN48yM?=
 =?us-ascii?Q?WQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1220a391-6454-456e-40cc-08db931eba56
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 06:07:18.7142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k8hLgYE2InrrupJGN2DFXQbAJIaDod7s8O+0zc1NZdZJOLgZTiI8HJH3Qjldv82/X31+DFErmLgE+cO2a1bGJx181cGuD6Bc7PpQVLD2MTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5426
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690956463; x=1722492463;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tq6qjYBMcQLn4GnGPRwnjZGIvYXI/+eoQA+prLposHE=;
 b=gJTyUaOeMZWoAFEuIt3BmPNL5VYEH72zmtnw2vHcVGtik0vc0MDtaC7C
 j7hwIC2A0DbAcspqAyn6f2GKt4NM85dNH3N40GWRzwLYyb4szqvIPnbSO
 BVHksdw3aNV7aErdNNISqCYp1M1O3zyX/WEcjukfcPnpq3dn7tyeQ5rWR
 m6bG4liBgU56uNGkXAiA8gxleOaHF+39zj1/q0PnqFzM9snYgHN4CXAmw
 0d7I+x4cNFg0dlSDFk+5UpxMXsW0dD8OVqSEHM8J4lAxmMkB6iwZVPbxE
 O4tpEeHwpUaVDPLKCYVfGROpxOc0LTFcLWm6cqvGxGoz8h5aQJrqvoAUH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gJTyUaOe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 2/3] igbvf: Change
 IGBVF_MIN to allow set rx/tx value between 64 and 80
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
Cc: "Zaborska, Olga" <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Olga Zaborska
> Sent: wtorek, 25 lipca 2023 10:11
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zaborska, Olga <olga.zaborska@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/3] igbvf: Change IGBVF_MIN
> to allow set rx/tx value between 64 and 80
> 
> Change the minimum value of RX/TX descriptors to 64 to enable setting the
> rx/tx value between 64 and 80. All igbvf devices can use as low as 64
> descriptors.
> This change will unify igbvf with other drivers.
> Based on commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")
> 
> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual
> functions")
> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> ---
> v1->v2 fixed commit title and message
> v2->v3 fixed commit title and message, added changes for igb and igc
> v3->v4 fixed commit message
> ---
>  drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h
> b/drivers/net/ethernet/intel/igbvf/igbvf.h
> index 57d39ee00b58..7b83678ba83a 100644
> --- a/drivers/net/ethernet/intel/igbvf/igbvf.h
> +++ b/drivers/net/ethernet/intel/igbvf/igbvf.h


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
