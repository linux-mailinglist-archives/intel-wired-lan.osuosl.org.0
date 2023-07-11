Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF6F74F6C2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 19:18:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 320A541707;
	Tue, 11 Jul 2023 17:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 320A541707
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689095912;
	bh=+31vL0z1tnoISPbno5oP1SoZbZAc/Fsl1FZz5TC8rqg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Alr3nrAiwpr9TkBR2EDaFzbUKO+/am2PsYryYDrw9LOukz2A+Fe4gVogsym1p+Pi5
	 RZnYMmsx3iioxqimIfaLBbM/nEGNQb9l5K4Tlr+fhYZgINDqpkND+piJsUMjVOKtQM
	 zLvbgAJz2HhsNrKxH+Z9c1zVt5FeMP1AcHORkgp7jdRrGh4Urxzuw2SrhO+0wrfjAh
	 uzoZvhsHa6A/Hu+bZzjs7SKYQm100sHHQ+XFABa8+rARvijnJIVfsKXQnI0rbUmPOj
	 LNXjy7UHrHEiJJ9tn6Qm3fSlay6W/ynDSkVznUZ+oWCnC98B3qXgaDMg2ZAAfcyZvc
	 cMHmK72aILx5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mpXaHP4JBY_r; Tue, 11 Jul 2023 17:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50B22416E5;
	Tue, 11 Jul 2023 17:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50B22416E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0157B1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 17:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC3AD408BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 17:18:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC3AD408BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvJuAJWvCS64 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 17:18:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 800C34013B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 800C34013B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 17:18:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344998616"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="344998616"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 10:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="865795619"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="865795619"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2023 10:17:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 10:17:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 11 Jul 2023 10:17:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 11 Jul 2023 10:17:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3Q70wHlfFysTjLNwcLA6W32U2+9fis5yevhMU3NiemEkjxcMngYlhws1TXFFbB1HyXFyi3AXql2h3wJInqt5iPuLn4LLStbq5q/VQT5djM6T4wLJet6AkQeYekmQYPISsgaaikueLOp+ut8KhA2E72KQNhfd3/YurCSa5g5RiB3If4tl/MeaPPFQQut6GhzC32tqWe9iPXZkcmyn7wVpAh0zfZYRGbryhQZv2gLjDHbdv4x+/cDwZ6z/6L4EI0t+oY13ywsqwfMtLb33AQWjKLWEQ80FzUCiuc/nRYcP0NTatbWrg6CA8yVCYT1pi5rlETtw1veVwWnSV/AEGGedg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6Hs+AMeoAVE84P/gftg4j8jQcVt1aCBeqnYv9Eq6EE=;
 b=YF8hK35RUVKsIpFYyRH8VdQgEhXXWFOlmoRAP2jGAUAmsKnd77vVFkMUplu15ud9nfX+t4lfG+FE8qIklW9Y7Ge3995SuPY7OGfFeGFi751cc7acyA2ZGzAHSnpisM4vRCy1IKtY+Sx/iJZjXf2Nm52n4/JO8trDu9gAbhPNwYPnm6y04lMZQy+sJOQ/zAF9h5E2Bvcsd6yLk+mpCWQNuDWMUdirBHAZ87w79Z7RvF9ANjaDZ9Rpo2fWnuR7cKl7i/xwei/JmnQt8d0cV70T4fsJQ1V4VkGSViuh8i8F1uIGd7eImaAPGsG9I6/zd9h97hELbGrqpXg5g7J4Lz/w1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CH3PR11MB7893.namprd11.prod.outlook.com (2603:10b6:610:12e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Tue, 11 Jul
 2023 17:17:51 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 17:17:51 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v9 00/10] Create common DPLL configuration API
Thread-Index: AQHZpc/u2XBvfmJQckCFu+3HjTH4RK+edcOAgAF/xCCAACKYgIASxLqggAAmaYCAAXNRwIAAGjOAgAAtYHA=
Date: Tue, 11 Jul 2023 17:17:51 +0000
Message-ID: <DM6PR11MB4657067EE043F4DBB9D8B03B9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJwWXZmZe4lQ04iK@nanopsycho>
 <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZKv1FRTXWLnLGRRS@nanopsycho>
 <DM6PR11MB46575D14FFE115546FDC9DEB9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZK1CizcqjqO1L/RQ@nanopsycho>
In-Reply-To: <ZK1CizcqjqO1L/RQ@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CH3PR11MB7893:EE_
x-ms-office365-filtering-correlation-id: c45308bd-02f0-4d0b-384a-08db8232c1a3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tf56fkK9K8rUYRPYvRKO6pmM/0Z2HaQ4ksDggsEuicZquqHJfs4U6BVfzxsy7dsy/iMBvui1f0IgDNaXZ+cIwpWrlQ/Cq/HKvBZbn9XVDtcm28zHbfXZGDK+jyozUQWwfhEuSGacCni/HUmUSpszmkusz817FseYEUsNenMZeWwGCahWsBEk5Z1KUoHq6mZ69pa9m6n0NdlAU21OxP0fZXDJ9NNVLf28ieo4PF2AKy12cgWDl1h/iHtH+cGXHrfkCvCuSxkJrqnqLYBkBdUl8NFmI1PLTOSb+CrXakhj8CNGQVLkAzL5O8wS5naXqZdaMXOEekFGtsp/jTihvywol+nlBmTPOcTCL7k42C4Dg7sxRGQ9LuFIOTHUcerkkXQ5Lc0+dz+IfIQI8705KBU0mj41JlQdaKGpmzmPyKUYSen2hOtaRrPf3aza4vbBJg5CCVnrg4fjXAZBb5gGeaccFiP9lbqY5p1r41VxpleL49WuduNHd+9ifl7x8rM0hk8lmy3p6EaDNGnucz+nJpar6SQAXgetcO8mDVKl9gZlmrVRqrY3A2X9Q9m4gIpoazpT3MbsMARPSsWbRhxg58IbQ3REbHkW5cU3BoBJ9cwpm+g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(396003)(376002)(366004)(39860400002)(451199021)(6916009)(7696005)(4326008)(66476007)(66946007)(76116006)(66446008)(66556008)(64756008)(478600001)(82960400001)(122000001)(55016003)(26005)(6506007)(9686003)(71200400001)(38100700002)(54906003)(41300700001)(38070700005)(316002)(8936002)(8676002)(86362001)(5660300002)(52536014)(7416002)(7406005)(186003)(33656002)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kvsMjS3fVWWhMrK5N24DLBUDjPbevvx/C1rGfYAsZwZ7C5N8hBxVMUrrnpXg?=
 =?us-ascii?Q?ebRI92GPEUmXPrDMrCbPfPPCPOk89gP9kMqsm4JPq056wixHE/BLbR2Rg/je?=
 =?us-ascii?Q?NnwTlf0QiPwnQid1yNOpz8Jt02PrQ2cda52AWHkYo80leH/8xjaq9PJNk8KR?=
 =?us-ascii?Q?gquWKP4NJcXm56IwG6G+SDqCtXLcIFyG5aJQfTxQIk592g6qkslUgni921OU?=
 =?us-ascii?Q?Bai1pD3buHWopMUJ2B0xq+6Frdh3AC3uM5Kzgi21qlYz2hN/vjSYtGWCWaBc?=
 =?us-ascii?Q?YCYOzJ+532KPG9+HyO4Txrrq8wsHOEdtEOcCh/6FfhaSRehA6cVav0bx+acQ?=
 =?us-ascii?Q?8qGvQ4gE2t/ZuMeXYdZnnAP3oswozvscy/BIO/9YS1FOl6mQLlVk2d97Zs33?=
 =?us-ascii?Q?haybYZaJLw7h2JkqRaAlAXw4ev6LXdYwZb5narvBfZsUuSn0rq5RTfpHcH12?=
 =?us-ascii?Q?JJuYTL7E8AlRZtU5kVotY1DXp6PeYHzAcL20wUS6vpcjpMw551yCQazs5jR1?=
 =?us-ascii?Q?tkEZ+jXA7aM65DSwL69DsM90rroI6rON6w6x+VyVAimxEAxnA8qEZ86kGonc?=
 =?us-ascii?Q?N/RWnmzBvoa5bkYsYmUN7Gv8I/+KaLTxmMEcDRWEqZXUjp4wapKXZ/RvkuPE?=
 =?us-ascii?Q?TtSwSyUFxiWYJqnrDv3shpN94Hl/QSxc/d4mUfz5HNhGfoOhcj3tZrz1oDfi?=
 =?us-ascii?Q?enjb6S2wLpx7LmLZu5GMmcj4/tzyMa0rS/5C4fDKa7X9/SQuzu85XpGK3Fdt?=
 =?us-ascii?Q?c/sC/1hcWmAnjB7tRxhorgg0q0WuZxHPFnBoJ7+Hom8tNg8r8+XoiexPiFhs?=
 =?us-ascii?Q?SC9mue0HIw5q/xVX3HxE77Uy5jI4gx/mNKJZJv0TNBngr2+NcB9yPJYQYwbR?=
 =?us-ascii?Q?+guXNqwNqVVsZXkhOHuMM5D4PcQ01VmtaFN6UNeduod3wfSItu3kzU1V3sqT?=
 =?us-ascii?Q?TfQZvpgG4bc/135grd9EIV0YYV0FP7G372FUcHOU7iSQBTxq5gl6yysRmIOV?=
 =?us-ascii?Q?JxFCFvKl2kyHdbJprD3t+0tJf6FipbnhJvLTshdiEXXBAFPEgZPBb2FQF0wG?=
 =?us-ascii?Q?9rN9mZKPnCtaibi73pdjOk7K/fg8OIhyOWwmSQmAvgJGHC4ZYIygeBlrJr43?=
 =?us-ascii?Q?6Vu7qLDL2jmLvuy0/BzLJLZZydI6MoVVv9yXJ1UtuKRLkfg/OgKUxnihBTGj?=
 =?us-ascii?Q?IouBo4kW8IPCZ6SjJQ8EkYMwqKzJtf9LQW+H2TSrRTBhrzSSCgaBozcTnKUH?=
 =?us-ascii?Q?5183iRdb4NUSJd756jPjPXBJ4FNK7waMlga2JKOAMHULEGiLohS/lMkC11a9?=
 =?us-ascii?Q?nE/SfYF0AMmo0wK8FqF0Z4XpE/Nlv4EF/thSSaxXSXisUdF76NAjaVzJTzG/?=
 =?us-ascii?Q?sN557p7WBis7P4fZsxXmYzWqei4lQCA6C1GBJcdnUJEYtGDwddBUG8mrVcpC?=
 =?us-ascii?Q?gLMBUitrQwp3XGb0Z1r811dGeIFPDuQYFpggtQKicvaX9KUVrv4J98+Q9jLc?=
 =?us-ascii?Q?fK4RXrcPX9s66/ZeTTlnU6GlA2Vkzbf91iiqPZlAQ4iXONvlGzWE+hWAylIL?=
 =?us-ascii?Q?kxI89ecXCzKZKZ12kSKtIkJ5cmDvGZKbYDLFwt9dIWtJuwdjH5BPFAEVvHGb?=
 =?us-ascii?Q?/g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45308bd-02f0-4d0b-384a-08db8232c1a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 17:17:51.1376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fD3TxMwMeikmWuG1CrtnBQ4ZrS5G8AGEK2492ESzxSM9wGJAkEyDs6Ln+CrbID7G9hHOjIHCdZh0AiDV90SPjzZdzMfdXSbuASGO3eiDRrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7893
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689095903; x=1720631903;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZNUqWLMRnOiKF3T11ZSoQyDCcSajdX+RUOtMrB/j8FU=;
 b=H37TFmgqeyyzjQnowN7o5GF7GmMztyl6I9DvvbnPob8KSpKlY+JlB0MI
 YSLrDLqQbUV4BK8Z+HgmCuXeQ3CBqXRFp6DOeECjYJtu2/2WEr/XxRSIH
 V85hBsoUXNJIbVatINa1HigSNO7RFCm3zNViB1gQzu8O4rqDXgtApEvZa
 G8PXb0vay9eM8CZYcbVA446mWAdGiw6eyZM1U9gXLoTlpxmVffinvqeRg
 fZ5stQrSdK64QhFZ8e4t9ZGpSAAADcT1lwfGtUbfBafQyqQLPPkg7x56V
 yWhk/j0VQpkavYwyf2wU+gQSU8W9VMID/zDh6HmfZXxtoh2MXmp9W8DcU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H37TFmgq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Tuesday, July 11, 2023 1:53 PM
>
>Tue, Jul 11, 2023 at 12:34:11PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Jiri Pirko <jiri@resnulli.us>
>>>Sent: Monday, July 10, 2023 2:10 PM
>>>
>>>Mon, Jul 10, 2023 at 12:07:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>>Sent: Wednesday, June 28, 2023 1:16 PM
>>>>>Wed, Jun 28, 2023 at 11:15:11AM CEST, arkadiusz.kubalewski@intel.com
>>>>>wrote:
>>>>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>>>>Sent: Tuesday, June 27, 2023 12:18 PM
>>>>>>>
>>>>>>>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>>>>>>>wrote:
>>>>>>>
>>>>>>>>v8 -> v9:
>>>>>>>
>>>>>>>Could you please address all the unresolved issues from v8 and send v10?
>>>>>>>I'm not reviewing this one.
>>>>>>>
>>>>>>>Thanks!
>>>>>>
>>>>>>Sure, will do, but first missing to-do/discuss list:
>>>>>>1) remove mode_set as not used by any driver
>>>>
>>>>I have implemented in ice (also added back the DPLL_MODE_FREERUN).
>>>
>>>Uh :/ Why exactly is it needed in this initial submission?
>>>
>>
>>Without mode-set there is no need for device-set at all, right?
>>So it is better to implement at least one set command, so we don't
>>need remove device-set command entirely.
>
>The enum cmd valu could stay as a placeholder, the rest can go.
>

It doesn't make much sense to have a command which is not implemented, same
as you wanted to remove enum values which are not used.

>
>>
>>>
>>>>
>>>>>>2) remove "no-added-value" static functions descriptions in
>>>>>>   dpll_core/dpll_netlink
>>>>
>>>>Removed.
>>>>
>>>>>>3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>>>>>>   after each patch apply
>>>>
>>>>Hope Vadim will decide on this, the thing is merging in two patches
>>>>doesn't make much sense as there won't be any linking until both patches
>>>>are there, so most sense it would be if 3 are merged into one, but
>>>>then we will be back to one big blob patch issue.
>>>>
>>>>>>4) remove function return values descriptions/lists
>>>>
>>>>Fixed.
>>>>
>>>>>>5) Fix patch [05/10]:
>>>>>>   - status Supported
>>>>>>   - additional maintainers
>>>>>>   - remove callback:
>>>>>>     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>>>>>>6) Fix patch [08/10]: rethink ice mutex locking scheme
>>>>
>>>>Fixed.
>>>>
>>>>>>7) Fix patch [09/10]: multiple comments on
>>>>>>https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>>>>>>8) add PPS DPLL phase offset to the netlink get-device API
>>>>>>
>>>>
>>>>Added few things on this matter
>>>>- 1 dpll level attribute:
>>>>  - phase-shift - measuring the phase difference between dpll input
>>>>    and it's output
>>>>- 1 dpll-pin tuple level attribute:
>>>>  - pin-phase-adjust - set/get phase adjust of a pin on a dpll
>>>>- 2 pin level attributes:
>>>>  - pin-phase-adjust-min - provide user with min value that can be set
>>>>  - pin-phase-adjust-max - provide user with max value that can be set
>>>>- a constant:
>>>>  - DPLL_PHASE_SHIFT_DIVIDER similar to DPLL_TEMP_DIVIDER for producing
>>>>    fraction value of measured DPLL_A_PHASE_SHIFT
>>>
>>>Again, why do we need this in this initial submission? Why it can't be a
>>>follow-up patchset to extend this? This way we never converge :/
>>>Please focus on what we have now and bring it in. Let the extensions to
>>>be addressed later on, please.
>>>
>>
>>Well AFAIK, RHEL is doing some monitoring software, so the end-users need
>>this.
>
>They need it for the initial submission? Why? Why can't they wait 1 week
>for follow-up patchset?
>

Probably best if they could respond here, though I know they are waiting for
the dpll interface for a long time already.

>
>>
>>>
>>>
>>>>- implemented in dpll netlink and in ice
>>>>
>>>>>
>>>>>You are missing removal of pin->prop.package_label = dev_name(dev); in
>>>>>ice.
>>>>>
>>>>
>>>>I didn't touch it, as we still need to discuss it, Jakub didn't respond
>>>>on v8 thread.
>>>>I don't see why we shall not name it the way. This is most meaningful
>>>>label for those pins for the user right now.
>>>
>>>This is not meaningful, at all. dev_name() changes upon which pci slot
>>>you plug the card into. package_label should be an actual label on a
>>>silicon package. Why you think this two are related in aby way, makes me
>>>really wonder. Could you elaborate the meaningfulness of this?
>>>
>>
>>Without this, from end-user perspective, it would be very confusing.
>>As in ice without any label there would 4 pins which differs only with id.
>
>There you go, it does not have any label, yet you are trying hard to
>make up some. Does not make sense.
>

Don't get this, they have the label, but you ask to remove it..

>
>>What names would you suggest?
>
>That is the point I made previously. For synce usecase, the label does
>not make sense. There should be no label. You reference the pin by ID
>from netdev, that is enough.
>

Yea I understand, you are trying to hide this information from the user,
while I am trying not to hide anything, and let the user know all the
information can be somehow useful, this is the difference.

The one might want to ask how label indicating internal pin label is useful,
it is transparency, the label is there for identification nothing else.

You mean SyncE use case where a software daemon controls the dpll for
SyncE implementation, and this is already implemented and works as you
described.

>I think better to add the check to pin-register so future synce pin
>users don't have similar weird ideas. Could you please add this check?
>

Don't think it is way to go, and I don't think there is anything good
with preventing device drivers from labeling their pins the way they want.

I don't understand why all the pins shall be targeted differently then SyncE
ones, I mean the SyncE pins are special case (of dpll subsystem), and for that
case, they are also targetable by netdevice, but what I don't understand is
why they shall be only targetable with netdevice, they are still part of dpll
subsystem not a SyncE subsystem, and with this understanding shall be
targetable like all the other pins. While without the label this will not be
possible.

Thank you!
Arkadiusz

>Thanks!
>
>

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
