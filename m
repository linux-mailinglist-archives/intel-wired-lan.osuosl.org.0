Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8601D5A46
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:45:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CF0985514;
	Fri, 15 May 2020 19:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVzM0PAE9YK3; Fri, 15 May 2020 19:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 197CD88F2F;
	Fri, 15 May 2020 19:45:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF9881BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BBC6688F2C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oBEMa+HWlafD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D18185514
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:26 +0000 (UTC)
IronPort-SDR: zVUzxXiY8cM4O0L2sTlNKAqmdtxm2Mcds/hsswrMEIxHh9uNUpXs91pfCtJ8ziounuk4yKF3Cr
 s35u7GIvaKUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:45:25 -0700
IronPort-SDR: hy9iglJY6VeLzN9BI63PAapr1fAtheXCDM9BRl0wg/MMbqbLyhs9gCr++G3b4zMyIsVnYZOLMI
 W5Iw1CpRC+EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="464834873"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 12:45:25 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:45:25 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX155.amr.corp.intel.com (10.22.240.21) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:45:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:45:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LI3WfL653tenv0b1Gk6OKaUfCH9VwgeHaBnDst41BHT1+sVCNwm9QcPCT3/5yi21qWpHjgjUeVJu7HA+yAXFPSHvsMmaEKmhDr4dfUeg3wwHPUIJt7TDwrabBF2eV4edN8VxHAg0AA5puDE16HxuqYZwlkWtykT2g4+zBkhgGPMHdTcFqFvEF6QrT/ljm+i7d+nOnDynkjPtuFG/GdcmW0NdVrEI1LtTYWfGa1vewbzq7/3uMcbqvvRAJ/LXJDDH0RjOCjI/6AHScR93JyVHWfcfTIgKd5QDhhp6ifaHRIzsT1NL8810IXmt/lj4eV+Xx8WMQcoitvryn2gPsMI7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXKKfHH95rqNsXENjKzgFk0SgRx9tEfBo4l3nErdW+4=;
 b=QmvMFoB5K3mVDJLeTLciyYEcZTzLq3MTrN/UTTtzM8coiQ8j6ANLC3/jo0w1rJL3tufUdy4yBc4sADdC24FnUR5x8+Dstz3u38vN3X9sU7DBcPmrXGPOYIkOOvPNQdIZZSEiIbxc6TtVN/QV3Cxi2Kla5Gdfmgi8k9MCtfyqixPT8TFHDVJ4Qe5FZhGNUZ8IZ+c3JjwLQBiXGzkl7GfRfo45tvataLoEmS94QIrQD/mjFoKGvonMny6izI2nE5Bc+yBeUeH0SSfLWVaNCe8RU9UlvJkkg+gblMu2RePfnnoGpvuWBo0GvWsu5bE0PEVhyoeqklBShFFH8BuoO1r3Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXKKfHH95rqNsXENjKzgFk0SgRx9tEfBo4l3nErdW+4=;
 b=Q4pwSKz6enltora42cbwo7QTjrC0vPnehvfjlseKiHz8yiii0x9hVd86fkb647J9pxctu0dmVsiQpZnLaTq02bTpPNUryWIM9NXGRqyjn7yxvwxymu2xNUA6rQUSMHuqStx0uISFWNYwGQTOh3Yre0e9/kfW2dGCCh9fL/p3TkU=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1945.namprd11.prod.outlook.com (2603:10b6:3:10b::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20; Fri, 15 May 2020 19:45:24 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:45:24 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 08/15] ice: cleanup vf_id signedness
Thread-Index: AQHWJNHyv+K/wturkEieRVz87/MwFqipmQig
Date: Fri, 15 May 2020 19:45:23 +0000
Message-ID: <DM5PR11MB1659A68BB25C6914DB06DEA78CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60d8dab2-e190-4739-1d9d-08d7f9088278
x-ms-traffictypediagnostic: DM5PR11MB1945:
x-microsoft-antispam-prvs: <DM5PR11MB19458EF8AE82EF2C975FF4528CBD0@DM5PR11MB1945.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C45Ooqg+k24CDzIC3/0jGJeWyrOXTqKjQh7CbUNciaHCzhflevzjcgbZAJf1fbW7hF6ugLYgEn3d6Sk4WxC/LOaCavLNUMTrmY0MV/tuxPYdOScKz4MkSg5NSfgtcdR8wELr1kSmP6PX5ckMU/iEJCO6Z1yTFmgnt2dno9nuYsdBHSmBQU0f4vAY5pF/5S9JFaWmI14HVf36t8Eymm6C8ViWqyMwyogUeaYNJQKspiG4n8f/Y/9eJecJy5PUo7lMZlAC5W4/k7MsLAf69l2rde7QWfPlTE5C7+RFws+4/NAbyYSOQkWvyDDIxSEeldmhEdfqu9V8cuVaM8n6UiVaPMnnXjjrm/9jAU71i6YgAaFdl9uM8XF96ycTFIm9dDoSzQbTXwMtE8hx+MFvrmKJB/Br/WPqA8Khsl4kFQDwiHNvvVhqUtkCHQifJc+QGODM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(136003)(366004)(376002)(396003)(33656002)(478600001)(86362001)(76116006)(6506007)(66556008)(9686003)(6916009)(2906002)(55016002)(66946007)(8676002)(4744005)(8936002)(71200400001)(186003)(66476007)(5660300002)(7696005)(66446008)(53546011)(316002)(64756008)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: RiOjck8iKQRkThH6y5O+8aZsAvB3wAxWqB3keX0cJxLTh4ShTf1FDn/CiZ5AHkpGoblTjBSQbVprRscr1FQgXkXqiIKjLEB8hMIrO4RBjhsHRdnpQQeer6cNIwmGFxdbC5LW1DR07Q6DjJZyq5eQpapgDjBvjqw7Y/BZbz+fzLxdFxTlSR8N+YQsS0w63Y7/LEpRW3aKfkGvMDxXrvcpvxis0hD3tDetFaYHyIQ3vkzqfExT5YRKuSjq1dYjH+n+NrdEuD8rMo8GRPBqEOky5dsrtsIcAcQl+ExsjumDTs/fBWa+/FK8rVqX0YdQ+uYUcpK6sJ+43neTQWdgn1VBAu2mCRiBnWBX46VdtXv8zNokuzT0zvpQOdFuoQP2nWxr82+KQwtdNwL9rGXjuRcStduDUzR1LcGrhK7Vfblsxdr/IOiJge0ykHrK0sJaP9Je/2V7jZlGGCYokSFM0gyLHiii8hZzZPIRSqSTBntKdjVHhUiiNimQu35NP+ScKpeI
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d8dab2-e190-4739-1d9d-08d7f9088278
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:45:23.9329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g7oMFTYXlZ0zBvCZPm/P4eFCN/4ctQqwkbatn1p1FH7ZbrF8zq1u2Plqa8YdBmxcIZa1jN2nl1a3QwRr+uUJangx5A42infuo/7R7SwLfvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 08/15] ice: cleanup vf_id
 signedness
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
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 08/15] ice: cleanup vf_id signedness
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The vf_id variable is dealt with in the code in inconsistent ways of sign usage,
> preventing compilation with -Werror=sign-compare.
> Fix this problem in the code by always treating vf_id as unsigned, since there
> are no valid values of vf_id that are negative.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h            |  2 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c    | 17 +++++++++--------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h    |  2 +-
>  3 files changed, 11 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
