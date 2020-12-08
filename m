Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F49E2D2944
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 11:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3ED6864BD;
	Tue,  8 Dec 2020 10:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ogaRxfvJxugk; Tue,  8 Dec 2020 10:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05F0F86C5A;
	Tue,  8 Dec 2020 10:52:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA6FE1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 10:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A406086FCB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 10:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VJeeS6LjZLAT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 10:52:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ECE5D86FB1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 10:52:39 +0000 (UTC)
IronPort-SDR: 2HYbY5UEdrhrVgwMR/iPY1Q9CkkKX9WMmRbzhrj7EWWL4FPra2vm0zxN1YdWQ6EhzEwCry/QGv
 LvPJbDCoEbrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="171298162"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="171298162"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 02:52:38 -0800
IronPort-SDR: dVhMv/ynHaitGWNEFSfSs5h4JZkwyB/t1IKzJxN2MJRZVyvdf8pReXUA+OtuhcqDXDAjz3YUnz
 QEE1cU8azlTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="332479620"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 08 Dec 2020 02:52:38 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 02:52:38 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 02:52:37 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 02:52:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 02:52:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Anl6cYwlOx3wrPsz/N75VuagimHl30cQaXCdxICe8s1CncHhJ6fpWYhgViltxM0QCcbZn7U5BJIJT6BTqUWjlVVTplrfyz0qyFV7a/buO6NfJ/ZORc2Pgsz3oa/phn5jfl3PUiv7FwbFTY5PrkaiqkuGT1mzjm8vRIdMEc8dj1mehWhP1Pm1c5Rf3nAAJKQOVmvc1oYXynK4vCrPvsKMssj5rTXZFxhGnBFQfHen8PGDqysP7n2NhKXMr6W9vPzxeEkquQqTsI7V/Ejw7H+Horf72bxUxl0zZoVw+IuUzmJKMCGlaAPBjCM3NT4iohSIvdDapbvGuD5xyXRbTRBgqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RwDe2jynUgk3okWr7+wDB/5YjsijmnqOAfFtA45Do/A=;
 b=QuiRjT7KI5y/AHqZ7z4CJN8GRU7MyfsPrPO5dSOgiPLGp+Gu/uG7gu2TFOX4woKVp28KjkGa8ZM6SHlkfZ2lD1iyYxqFka2GGXtVjW4TQC3xlBWpKEz4T9r/Tz5xdaifIdOhoeoEE++o1HuYCR7f69MP8FKzrFe+DB9p+qKDPm6x/lH+MSXSn+Xx+40SpQbS0NH9NPXL2dLG50B13oh9/UUDjS/yNUrpOfYDTAigKY78ifBEjEy9dDCeZX1bdOBsD44sujaO8p3Fww0iFqPa76K2MkGro3IQrCMHEntuXF03Z6c7Zm+pZYhNi04F74nvCUbRQOAQxUEEWYK8rf2udA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RwDe2jynUgk3okWr7+wDB/5YjsijmnqOAfFtA45Do/A=;
 b=fRhNdRgF8Qi3PqueS8XYn6HXIiCiWhwQWwEUm4oSEgMHQY8shZ6xKSaCQeLD0X9yirMPTvHwyev/ZiEhbqINIhTUzpxC3kYFMSIyqFji6KEw9vS/bSVzIAlBEWs4YR39hFszzBljdh+iA4ltfmDwTr1TF5gITZZ6ugzSKD43pc0=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1439.namprd11.prod.outlook.com (2603:10b6:301:9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Tue, 8 Dec
 2020 10:52:28 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::7dc3:6311:ac6:7393]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::7dc3:6311:ac6:7393%8]) with mapi id 15.20.3654.012; Tue, 8 Dec 2020
 10:52:28 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Sven Auhagen <sven.auhagen@voleatech.de>, Jesper Dangaard Brouer
 <brouer@redhat.com>
Thread-Topic: [PATCH v4 2/6] igb: take vlan double header into account
Thread-Index: AQHWuEzm1HVTLNMKWkWhDxMz+yb+g6niBYrggAAKPQCABlVwgIAEyRYA
Date: Tue, 8 Dec 2020 10:52:28 +0000
Message-ID: <MW3PR11MB45544E9B9B610CC6553F246B9CCD0@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20201111170453.32693-1-sven.auhagen@voleatech.de>
 <20201111170453.32693-3-sven.auhagen@voleatech.de>
 <DM6PR11MB454615FDFC4E7B71D9B82FA29CF40@DM6PR11MB4546.namprd11.prod.outlook.com>
 <20201201095852.2dc1e8f8@carbon>
 <20201205094213.p64bkcmd3lr4iejl@SvensMacBookAir-2.local>
In-Reply-To: <20201205094213.p64bkcmd3lr4iejl@SvensMacBookAir-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: voleatech.de; dkim=none (message not signed)
 header.d=none;voleatech.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.79.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7893573-1535-4910-e2f7-08d89b675b36
x-ms-traffictypediagnostic: MWHPR11MB1439:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1439AB3692AD3E32DA207C359CCD0@MWHPR11MB1439.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VyNGGE0RRxVyY9mQ+89m4lYhD4SX3sju+YOY7+YUfVJ6Ny5k4LTKfK9noe2/BU3v5Yv0nt2MzUM/sBZJPpPWYPWQQE+Jue4fDz3i7ZZvfcJAn8PEI+brRUGBBWAU77nguTnLOI8KzDgVS5KDckEaSeKPj6H00C9OdcjJldEjfIAV0lY0GscxWPod9YWxAz5tYhUbvn18+OofjzvlG3MMngx+lWj7CC8Vj+ZpBk2rPle4++u331VWG1CcPDBh8vtfLpYXxYsQLzaabi4r2GtyreqZdYvEmtrqicOf40kBk1/66ZwPXvap9Hq2qp39CQZefBB81wU5SOAWFTCqpHOUyFzy6CyT1RzkrkFx/3v6BNBUPEpfAUFMeoN0L5hUQf42ofuGDOmC6zJISHOp9bt70g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(346002)(136003)(376002)(5660300002)(55016002)(316002)(66946007)(76116006)(6506007)(54906003)(45080400002)(52536014)(64756008)(478600001)(66476007)(8676002)(110136005)(71200400001)(966005)(86362001)(66446008)(33656002)(66556008)(8936002)(186003)(9686003)(7696005)(26005)(2906002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?S6Gqbwo4Vo+Q2cmlwlw5vCph1JRWqNeeptTQJLSqHBfn3YxNJlRAmUsrOGOc?=
 =?us-ascii?Q?3QbOHYSRCayFOY6sAkfh565zVNlM0v5Az4W62kS1gTRZG0Vx5gzBxJqIVn/F?=
 =?us-ascii?Q?88Gi2lyv/31TAMwkwvexacD9d3V1AOqkLMJXmcbufjE9tMEdEPnMQskdoghQ?=
 =?us-ascii?Q?uKwPwGx+IBE8zQoHm61BccaLHNgUCVvE8mLVbiObK9Lszvui3GE1v151A9Il?=
 =?us-ascii?Q?avmldpHblER2BP/D6wNKXwlfEgGYLx2iAx+x9sTrQucnAnf2nnjNAccK9maX?=
 =?us-ascii?Q?UruYKAqp1LZYW2IF0lt3cYeRukbNIvav+jMiOFnd5tLLZjmexKgr5ZxMneKb?=
 =?us-ascii?Q?IUTmPK6kN+d6lkdnkJpm2gx+B3x1XYeAfaudepTSYR+cxpqMqqnjvy90gnpK?=
 =?us-ascii?Q?hUgPxfPzCIhDClng2LWB4mE7dwBozURP6LJO8rr7Bs8b/Tej/lkLRxCmnxJi?=
 =?us-ascii?Q?PsWyr/WKrf4+lrasoM7dpClWwlHpPwqrjR4jtsc2bJzkERfCaVADRXYLYF5k?=
 =?us-ascii?Q?64a19i843Srz2a36/3jwDaGBG5rNJyy9K7lq6uiRZtxdINMlLkdErLNeKWfp?=
 =?us-ascii?Q?B/pwaCv5o/sy4ez/xbV6W8PhKLMmZfc9ed/DcszDdauHz8Z7iGfsmHcbDbrM?=
 =?us-ascii?Q?brUVHFwRAD7YRNfIqbHM+IGHtilPm2UGgCNVm4tkR/Om5RaJI0ekf/DX/rBb?=
 =?us-ascii?Q?8ODQayndHDB5ilBC9fRT9dHL3tf9eWzeJEjdmImokMUTJwsKqJXi/3EZesEi?=
 =?us-ascii?Q?3qKRAe3h7iBuI1KWzJNXKsxvQgTLaSQ6bwPxTSsLQzOUfT+xhunbWjGid0Za?=
 =?us-ascii?Q?8d8IZqzycjvnyfV3Ej4OcVYFsFw729FDY2s/L46eB31lxTsTxANckp56SQix?=
 =?us-ascii?Q?VxG8anNzxRzCkpB4thhFOCPC3JNulIGMT4iX6FVu60tTlcNfaAgPFUDv8aff?=
 =?us-ascii?Q?hyzNBvJ/bzYXj2C6LIpt+ujB3u9rpQVOuuEcWJvXxL8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7893573-1535-4910-e2f7-08d89b675b36
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2020 10:52:28.6309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ev7XnRUzWeNbPVzc/nyhBLe2MWzOpNeWWm6L2cwt6rBuJQkjpeOd/JlsEamhuLIs9SSGsCsFgqdwgRhE7dp1jPrI2NIKPvDlIzKjU7//Zhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1439
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 2/6] igb: take vlan double header
 into account
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "nhorman@redhat.com" <nhorman@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 01, 2020 at 09:58:52AM +0100, Jesper Dangaard Brouer wrote:
> > On Tue, 1 Dec 2020 08:23:23 +0000
> > "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com> wrote:
> >
> > > Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
> >
> > Very happy that you are testing this.
> >
> > Have you also tested that samples/bpf/ xdp_redirect_cpu program works?
> 
> Hi Jesper,
> 
> I have tested the xdp routing example but it would be good if someone can
> double check this.
> 
> Best
> Sven
> 
Hi Jesper, Sven

I have tested xdp_redirect_cpu and it is working.

Thanks,
Sandeep
> >
> > --
> > Best regards,
> >   Jesper Dangaard Brouer
> >   MSc.CS, Principal Kernel Engineer at Red Hat
> >   LinkedIn:
> >
> https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.l
> >
> inkedin.com%2Fin%2Fbrouer&amp;data=04%7C01%7Csven.auhagen%40vol
> eatech.
> >
> de%7C5a78333f75c945b9bcee08d895d75e5b%7Cb82a99f679814a7295344d3
> 5298f84
> >
> 7b%7C0%7C0%7C637424099531073949%7CUnknown%7CTWFpbGZsb3d8eyJ
> WIjoiMC4wLj
> >
> AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;
> sdata=
> > g80690tGbCHAi3lr412ZlKoxwIFSIzn5e8V8nO1aZcw%3D&amp;reserved=0
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
