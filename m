Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E05319796
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 01:47:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA7EE86F69;
	Fri, 12 Feb 2021 00:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fGTbZ3SHlVZr; Fri, 12 Feb 2021 00:47:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AB3186F7D;
	Fri, 12 Feb 2021 00:47:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B065F1BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 00:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A654E86F69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 00:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7BQAW565mZw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 00:47:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 173A586F63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 00:47:01 +0000 (UTC)
IronPort-SDR: rHZzLa2seedqcMXq+IG/dDMWIQbyhLVVUu33tpx+SFWFE0KiCT1l2ggVw7CxGPz8C6tRufBHVL
 zCCj2pfqsv7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="179788697"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="179788697"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 16:46:59 -0800
IronPort-SDR: cIZgodvp96JLbsvN4t7G7aE4OvpX/7KBf0vry1mXXznYzx0UA2aktFvQNcZ4ogzWuFHHoInHT3
 GtzDZHAhBAsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="381249036"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 11 Feb 2021 16:46:58 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 16:46:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Feb 2021 16:46:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Feb 2021 16:46:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BwCIJba77ViSJt3OcB4u/XTiM8QXZq/mxZBIwtCUb0MVjpqvxcGJpVm1aB/a7+Ffw11kHHm+Cmm1cykj7FkGL3mXoG5XFAVvgpRbCwUxr+cTqKGdnd4VzBpOSjDtKFKdCyhRcosb8f1pXbjGQFLx56U/SiOSe5wSjj+U6ixSmBUshvzsSDWpsw6UMK2rX+O7zvVaOcNuHlR5o56SFTCUJtxKtvAInf29iVkS78xiIvvUyEFXPz4LqIvz/4h/B3+31ySWQzy+zBYCLiLMBmdCJ1qd0rJx3U+cFgw9Au36HvayeD+diUsETNW+LNr8uGT8IohUWjHu57cSn+Y0JJcC2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mdg+LgHNXLT0wANxw/+Es7T6NQy4oQ3cE11MMpiWv4o=;
 b=cf6sLrutIOr/aGpYol37Ihttj3yVwpR3lEku1MYCyQp9LnCea2X9i4nmT6GHrynEkXQEqLpmjasO3FCsWEIshxhOU4uuTPyME1LmHpy/ol1mojoNwJVzOVxsE2l95xwwgnlRUFbyOdAaTQptX0Q0JLrAM7p4gGiFIJVS1XcllpBDKSqDU19s0rhPfboLUBYy42LZwg9L7/A6kq6zD3yY3WHDBvBV08wx141Rh+q2z69T995TrdBlspk8Ldra9+xETs37zYhpkt8UNivLT9Pve5VwZWiUzmxtPXEkaWftPGe9lerC8pzvLaMqVu49uzVyrj/f6oUDTd52xtlJwpvshg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mdg+LgHNXLT0wANxw/+Es7T6NQy4oQ3cE11MMpiWv4o=;
 b=uOlW4/30SF36keelUBEpbq6StrUuqsDGLk5kJeNVf5tOEwQcb+lwKZP/ZxRxL8IOpKSKIos+lIBWvmixZlekauBWjXtDxQOyi22Mce31Xf0uNHA4kkX6uAF+9fP2A7ywmgvQJDuCk1+L1DXbEbYCh/GRtw87g+rGM3WxpfBkiZ4=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BY5PR11MB4353.namprd11.prod.outlook.com (2603:10b6:a03:1b9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Fri, 12 Feb
 2021 00:46:51 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208%5]) with mapi id 15.20.3846.030; Fri, 12 Feb 2021
 00:46:51 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jdtxs00@gmail.com" <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9MiEdQczt5Kka7rT2SBEkPSqpSO+SAgAF1NyA=
Date: Fri, 12 Feb 2021 00:46:51 +0000
Message-ID: <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
In-Reply-To: <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a5a204e-bf96-4e8b-44cc-08d8ceefafa6
x-ms-traffictypediagnostic: BY5PR11MB4353:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB435366B9E83218B00787DDD7EF8B9@BY5PR11MB4353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nXEs1vZIBgjwr4aAeOZ+o7lZqb36c3RRJVhYkCc79Civ7e1owMw4XyHkfY2VjwWKSknnfDhor6LeRDeL1AKdxqID90gQsVz4XHFI1iiyBoH1PrJ9on5iJPtZtGJDWtoFtqqzMTd6T1EyZnYFrzz8su01vH2sQwSBnGWUoaKNJ2OuXFHMtEjXQoS+UJxsUtncKBihK0sdnG9gdyxjGfC8AjSCLnkZhulKXQqxhnxbSve1RepC7PTbRCO8dH7yOKTrIhoNme4DBpmDla19bW1smFIK7C946GipGMtsrGNAcSBvYksro/2yI/i0vwGrsZCer/OsgB/XF1gPcHe1b9tc/LzgqQZ1xIki3FHQHEWJxtbObcs1XzK9jvuCwB6tzQZhN4mckWjxQPE4BZZLjEX1lx5KxJGrUKqJVTQs22w61h6hK7Ds4/OUHesmMAnWSw5ZrTbo62HH37amL880BCtjdf0NQHv4MqON5j/BmxlybwdohYSMFANERtKYtWdjanMgSab/Np6ArfaAa+FB+XojsZQrMvNZi771O+gsELmJ9iCcu5gCU2FQPB1kSqQ3EfScZ4wwGTc3w1L/TkaVi940kA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(366004)(396003)(39860400002)(86362001)(110136005)(7696005)(6506007)(53546011)(55016002)(8676002)(8936002)(71200400001)(316002)(478600001)(76116006)(5660300002)(83380400001)(66476007)(66946007)(26005)(2906002)(64756008)(66446008)(52536014)(186003)(33656002)(966005)(66556008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?fF0hW3wNBoCtODlE9ihi754ragoigyS1vyNCnD+5DCc0kcee2EICtUloy1T0?=
 =?us-ascii?Q?EwtjXy/SkuKvalgUQFkTm02JbslSbwoEtKMe8NuB5w6jTpfWkgN6/1pjST9K?=
 =?us-ascii?Q?nhZaymc5ddq2djuucCgVH+/WI6Nk8wmmXIqumJSiFGcjKSr1WkiO/kNSjy3E?=
 =?us-ascii?Q?tHcAnz3D6DP3mYBzpzIM1ZX3Gm6duYX65WAyRouO8icqcTLWqUUgIcJrVGn3?=
 =?us-ascii?Q?Z8ogQztn7H7xxrJKa5OMvUICSshYM+aGxsP3djauJtGAtyXtAM4Xl0Qwk0Mn?=
 =?us-ascii?Q?NFarBzMmSRLsO34NHuch5LtJzM9iYbDOrlV/9hHjcBCjXIF0NP4hDyQAe8JW?=
 =?us-ascii?Q?XKSni2rwESTqHU57zQBi/DPl+jeylmxk8KchW1ZAtTcFXQzRWrmZey2ThteC?=
 =?us-ascii?Q?EfahA/kIFOcSKC5FiKkDF2hbu+QcYxfvt93Rx25WyN5jBT7D1vg9TntLyQnM?=
 =?us-ascii?Q?vHIDTolf/mm0Ld8Zzd+A0L+y1YonsvZbJxTgLtM4Rj6a/cQLln6POxGU+6Sz?=
 =?us-ascii?Q?/zrbCrRcP8F2NfjGsA9ngygT44YQDX2aJPJDm9iFhGQOPlyVi5DJXtdvCH58?=
 =?us-ascii?Q?9snNvptuwJ6RyY1tiGyY9bjy7K4Qeo8EIFJAJ5fviZva5u0V3O39LBThoosk?=
 =?us-ascii?Q?F2H0G6guV9kL5+7zPdQ2d62V897Ik5yZlmauoSC/mlEJ8/zAueox8++XNi41?=
 =?us-ascii?Q?5uhkuyWGZpU9lA2u6/MzBDLINQAecl5yoQnI7qjsDiIrGyvLlSr8xfexMHDO?=
 =?us-ascii?Q?cKE4UsYBbIYr9vyjE50FH1m0TirRvWjcfrcR/wm3ELNFl5HVXyVo41MdzBdX?=
 =?us-ascii?Q?zYkvrAcOyN2p5hYZTDn9vqxdui0hkjkrz5RjbwW0vJpSEXp94p1fWR5X3u3r?=
 =?us-ascii?Q?rvi2xvpiIw7htMX+Z+dhZtFlSTcDJeRZ+GUC1flhsFORCDOzosDVmquowvwS?=
 =?us-ascii?Q?6H3RNHZYDRtdNMhc0+H699ZKAiInaj4PFjx8k6Vz7AOOcoXjoWVbd4G6o0e6?=
 =?us-ascii?Q?mW9hnyQR3M6qkg46lvFcdvYsnf1rSTJxV5lNNBYtMmF20BB3ceRa2BN3YygJ?=
 =?us-ascii?Q?XZSgPXlSw5yX8kpfJEHv9bB4RgwegxDee4ExuKDZRdOo0cBLnDndhzDTU/Pw?=
 =?us-ascii?Q?FHsVjw3d1kZ/KI4RC8zFWYRciP7CqfhIHZC7opvZYD/cQwdvTohxKf0T45Df?=
 =?us-ascii?Q?lRrXQINVUbx9c7jJypDThmshDQoE9btn5Nc/T3oIPTD4T4RoKBesJr/FXcBA?=
 =?us-ascii?Q?a17mRo4Ta6+2Qv9SthCNNwSThHuYI0oeLUzQPBaJb/tAfFpryWrvCEgus0ad?=
 =?us-ascii?Q?Y8k=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a5a204e-bf96-4e8b-44cc-08d8ceefafa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2021 00:46:51.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CmA5NSMh1c07TBNqv7RfMo3eGnaigkGJosg3UACgHjJvGMCHY8zcPQKqqt3dbslpbPgk9s6XuoRTy1RSuKDMmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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

Sorry, top-posting guy.

I'm going to put this in our internal bug tracker to make sure it doesn't get lost.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Nguyen, Anthony L
Sent: Wednesday, February 10, 2021 6:31 PM
To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> Hello,
> 
> I've encountered a NIC driver bug that leads to null packets being 
> transmitted and arbitrary/OOB memory reads by the iavf driver.
> 
> I'm unfortunately not sure how the issue starts, but it has been 
> happening across many different AMD servers and virtual machines.
> 
> Running a tcpdump (tcpdump -i bond0 -nne ether host
> 00:00:00:00:00:00)
> on bond0 results in these packets being produced at a high rate:
> 
> 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, length
> 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, ctrl
> 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], length
> 144
>         0x0000:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0010:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0020:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0030:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0040:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0050:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0060:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0070:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0080:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
> 
> 
> As you can see, they have a dest/src ether of 00:00:00:00:00:00 and 
> are completely null.  This doesn't happen on every virtual machine, 
> some return absolutely nothing.
> 
> If I filter the tcpdump command to ignore empty packets (all dots), 
> some other interesting items begin to appear:
> 
>         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c  
> .......).....sel
>         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a  
> inuxsystem_u:obj
>         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> 0000  ect_r:bin_t:s0..
> [...]
>         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> 6572  ../usr/lib64/per
>         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> 2f46  l5/vendor_perl/F
>         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d  
> ile/Spec/Unix.pm
> 
> To me, that looks like it's reading data from memory and attempting to 
> send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> 
> If I run that same tcpdump on a different servers exhibiting the null 
> packets, completely different items show up which also appear to be 
> from memory.
> 
> Keeping a tcpdump results in the same items from memory being repeated 
> infinitely with no observable variation.
> 
> So, it seems like the iavf driver is encountering some bug with memory 
> management and ends up transmitting null packets or arbitrary data 
> from memory over bond0.
> 
> How/why did I notice this behavior? The VM's seem to perform worse 
> over the network when this occurs. They usually exhibit small amounts 
> of packet loss, or poor SSH responsiveness. Oddly, I have seen this 
> bug in the past, and it resulted in dmesg on the parent printing 
> Spoofed packet warnings for the i40e driver. Now it does not, yet the 
> null packets still occur.
> 
> I would like to help in any way I can to resolve this in the iavf/i40e 
> driver. I'm happy to provide information from the servers if it's 
> needed.
> 
> For reference, here is the setup on every single AMD server:
> VM:
> CentOS 7.9
> NIC driver: iavf 4.0.1
> Kernel 4.19.163
> 
> KVM parent:
> CentOS 7.9
> NIC driver: i40e 2.12.6
> Kernel: 4.19.163
> 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version: 7.20 
> 0x800082b3 1.2585.0
> MOBO: Supermicro H11DSU-iN
> CPU: AMD EPYC 7352
> 
> And here is the dmesg log (grepped for iavf) from a server that has 
> the issue:
> iavf: loading out-of-tree module taints kernel.
> iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver - 
> version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue pair count 
> = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 iavf 
> 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled: 
> Queue pair count = 4 iavf 0000:00:05.0: MAC address: 52:54:00:a6:3e:62 
> iavf 0000:00:05.0: GRO is enabled iavf 0000:00:06.0 eth0: NIC Link is 
> Up Speed is 25 Gbps Full Duplex iavf 0000:00:05.0 eth1: NIC Link is Up 
> Speed is 25 Gbps Full Duplex
> 

Hi JD,

I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
