Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8B11DF060
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 22:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA61988AA6;
	Fri, 22 May 2020 20:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 799pMb2upKVt; Fri, 22 May 2020 20:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71A6F88AF5;
	Fri, 22 May 2020 20:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 761431BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A67B87A0D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONhnWJJpkcO7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 20:09:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 566F7879FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:09:30 +0000 (UTC)
IronPort-SDR: EWSlNS65zDQMllImUSCzTS21rMjAlgZcNbMyqOcnVhsGayWJOTtaroBv6ZKf3Mp4/ozV9hwa0m
 yyZeHC03pYDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:09:29 -0700
IronPort-SDR: fJjg487bXRNPjOhM1Cxro/IrtYL1HZ9mnGOlupsW6/RYTU/aee3XWmYptzGYhQo8wZUtBYpOEU
 xiojLkK8N7LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="283505932"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2020 13:09:30 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:09:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 May 2020 13:09:28 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 May 2020 13:09:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fq7vcy8pDngRlPerR4vVeMbuv9eVjgJYs/OWq4L9K0qaItF70FKcJGFh4zr6xGR2vUNuPZqhB1UASJSjlPvwlvYEYDWKQ9spFD9T48RPQfcLZyiqXpwyGqD8BMSGWuqaiwELC/SkbGuiyYkPlXzg6k3i63ZFK0WHwXAfjPVlmK7Aiz8SpPqsbxt1kaUSq+KlH+JQ5UPQ+aCSsqt1yekcD1H2KXhlIVExsLr2Kp0SkFjiZIrSqaWi2K7DAQ3y3fjs87WAH9VSovko4zpzxdaCe2wLeHi+VIIla8qsQsjBUMQ76Qj1IAtuFcQe6vlGXf1SPJCUfX6OKG8tP1hpaTw2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znFRlG/1ul+ghJWHIhkPeHrNuA5kk7LJrvFTBfPJWaM=;
 b=fDrqP2n4j2Tkq3B+7YJ6K83fZBg50zGpqPXTBDzGPtNQiIrtifsk2Hhwy/WY3TzxRj05VaswZMQf4Qsk20n52hHlHj6M2hf1RcK/bcZnS8tYyJ+U+fmf+Wt9vCTo8oGBt8iFDTLybbJ2dGuv7NqLQ7lm8+TJEPBw5P3DzYwIfis7aiHGoZU+7KstxY83wHCWvmva4MNwjaoOA3H7p0R2fe1EgSmoyn0NFbdPYJ2zjwg6DPzGyyjwnS34vM72hCvnNANeJjgq8cSLCL+iWcUhFXg4qK/Dp4ZlZTTwGSBDk14yyfjxKcVZF8k8dsdnG9qt7T9ckY8S1GboVMXvkFb6pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znFRlG/1ul+ghJWHIhkPeHrNuA5kk7LJrvFTBfPJWaM=;
 b=e+qv6NZFnM6mb5wWe3cJVyLF65LurZ37MzmuDV6F69wPvwtlOuTfrjLJv6IkyQSZb7B9gMyDSIlsfXhgVBJ4hbx5yYYJmkZhufxd8/5tnKL4qo6i7TE3bmBfkbP2NldrhKUR3ZiJKgnF9M1qa5CYnDoOaXd5c8zVFhKqYQZ9w9c=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1242.namprd11.prod.outlook.com (2603:10b6:3:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 20:09:26 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 20:09:26 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 15/15] ice: Add more Rx errors to
 netdev's rx_error counter
Thread-Index: AQHWKxqEtwOv+juCKUuDmOyM/V/X86i0k34Q
Date: Fri, 22 May 2020 20:09:26 +0000
Message-ID: <DM5PR11MB16594A1E37F062DAA051101B8CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c33c0a66-a856-4888-48ee-08d7fe8c074b
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-microsoft-antispam-prvs: <DM5PR11MB1242081E5FB5D8C626F591AF8CB40@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: suEFstW253bkI7ilQSJCoBD+evywogv7ukbTDaFnAqy6FvFaRXaShNHI8Hc9+aucWauDXLtCVgjxWOHTtHThVaVVAwl/0un6fnurw5WHFK6/CCAUcHwjGX7WNQgZnv5G0H6E9Jwop0MnSkSGd/T5lXZIDgJERFWX0mbWNqwWH/IP22GP8jDp7PVdShDKIWFp/Zlrdn5UHBKQx0ePpElVgHDxDSrpiFORgL6nnxPsB+YsbRPSwNTkU79g/ERhCldpbhFBhSsN6wUX3hk/40Lvk6MzSDfbxcLoLt9vUePDQ2+ThVDLdXuS7La+XdHeS8GG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(7696005)(71200400001)(8676002)(64756008)(66476007)(66556008)(6916009)(53546011)(86362001)(66946007)(66446008)(52536014)(5660300002)(186003)(76116006)(2906002)(6506007)(26005)(478600001)(4744005)(316002)(9686003)(33656002)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sWucBOC65JxTpiFY5jaQ+k2mH25i7VDoBfmRQ5NHJITC2RJDwATfxwFe7W2mlOWtZ/139BRzsZx4twfLt9AoAdWiBmWKXSHVVQVR922Ey6f9SbzKusOn+Tw663CMBLBfe9cZfd5o+UHMJ3Epe9QTFE1aGqYpOApcEXojaZMvWhjrzBcsUHI/PGmG9z3wf+0frBKKNi+9VK3IiF2eRGn3X/zRJyNWjDsVTvgGedl5zRVupFBa2e/O3PNnGBp15vZzwAyb1rlCVpuIJ+XvsbJe0hzXI+5P0uz1Sd3cFUZOOT7iRHmS4Tb1d/gu7bv8F9vPfB4LBMJL6MB3AQGGJJEb0itutMdM1k1+MtGFZCm5Zs4NTE6gyJwwn9S0ldohVSIhdbFEyxc6lCtgFHcYnVa6cQ8AQKF/E1ueKHdhzeYMwTHZ0e380tc4BvyG6Ovt3KMf+uzkMb6Uu0eq0JE+ezz4tqB9CtGvefcnOYFkMy4XBKYY+8YjsLcUHRALXvYv3OzA
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c33c0a66-a856-4888-48ee-08d7fe8c074b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 20:09:26.6425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3B4ghl52yCm5/A2VaCyYLwX4TOShwbwMAFeBF6cbBib94IukSLXo0UxX+1iOBqRfERY+OAjbArowTDrY0gGhN19w8BDxoQNONuf5puv0sCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 15/15] ice: Add more Rx errors to
 netdev's rx_error counter
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 15/15] ice: Add more Rx errors to
> netdev's rx_error counter
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently we are only including illegal_bytes and rx_crc_errors in the PF
> netdev's rx_error counter. There are many more causes of Rx errors that the
> device supports and reports via Ethtool. Accumulate all Rx errors in the PF
> netdev's rx_error counter.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
