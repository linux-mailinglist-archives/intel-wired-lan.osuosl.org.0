Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E427322D279
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:54:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 979738715D;
	Fri, 24 Jul 2020 23:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCG4b5hd-_W0; Fri, 24 Jul 2020 23:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 012D2870F4;
	Fri, 24 Jul 2020 23:54:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA97E1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A65D487099
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I_ItpKIH3omp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 209968708C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:54:10 +0000 (UTC)
IronPort-SDR: 2ptlU5veNn8P+rkT2CV7mDZmsptHEg16EQqF9bKdxdYCJlmP+xJ7ySr32y3wS7yQZxW+KELrNd
 Wh/OqxINF8wA==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="138309786"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="138309786"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:54:08 -0700
IronPort-SDR: 71X1lSWeDRp2V9QBxjg3R7p2u8C3ViFfdkPfOROOYyz68d45qx8t5cjDNJCKJGw2C0aSmQ4FKv
 TWm0BXp/isSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="463395798"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 16:54:08 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:54:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX161.amr.corp.intel.com (10.18.125.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:54:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 24 Jul 2020 16:54:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KuD4Cq9cEnyGVYrFqS6rvaPSs7izFRIZJmm6itVz03WPIg5hGwuf+gwsHiFeeIJk7p0FmvDqLPs5zGB1k48MkSg2OieG31RfOLT/y1ErD8tJh18Rzr40JsAJTuGVCd5etDY46p1OWVM68IbMCW+JoFP/uonLf1l94aG+XtluOXG8oIMo45FvTZ5fbbLhg2ctjjqzM+dI5IYE4ojDqQZg92+KjYWEd8SoW8epUBWxgH66nt8BhYrhW7WE0+al0ja0Sj4t5qTlPlQdi4OxM9/VdZpYAEi31QB8FaQccQvnRbxqD+X5+RXydPDpsTqGOKBxPI95gyTx3xZNg7Hd0ukFNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f431GFTYuslJpTP9Ldls14X0zt8vk+gKR5CQXXIDlL0=;
 b=LCG+G0IOO/dSaKewPSyA8ew7jALYSROEe49//GZoBK9DGhmKx7vhEF7qBgRZBZ+ZPlscAurTMO3l0TSCR1V1ybAkt5QO7baIQJ+3sSzep2kahADkFFfFiQDFGQFLatxtwVMNdjYXoLAF5E0iCa2128w1joiPObWBYeh68zhdCCcV/twU+813hWmI1rZGVA1eIbXzVf2Asvt/0OsXh/bLUVmV9Zny9hzEj5DDX1Bo0keqbl3zUlRb3/TB/BIBggLhRyxJ5fOCIaRrAn5j+jVqJLE/Ap0ANHq66a5nrlgHffInBm57xlw0kGBUvZ2WUBaDYO1n9ftQwIDHF7fsmEMmRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f431GFTYuslJpTP9Ldls14X0zt8vk+gKR5CQXXIDlL0=;
 b=cfwG+EuQbfN476QDGNkrFSC7g5X6scGPnHMJVwSXkZiL+qzFrYpEat+Nx7EkC4H67OCgtW/vQYNfK6tNyvtlBqL94mLkOewtGoASRTRKXMQqkpue0hAYCOM8pZnT1bM2Ai0lXKgVNwI3Z78wsEpeSMss6g39+vjs3mXBwaQWjLs=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:54:06 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:54:06 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 04/16] ice: Add more advanced
 protocol support in flow filter
Thread-Index: AQHWW3YKamdAjiE8b0eVkGvpSpW9rakXdHDg
Date: Fri, 24 Jul 2020 23:54:06 +0000
Message-ID: <BN6PR1101MB2145E0EEB4C5C62EBF4105078C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-5-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-5-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e57d6c40-a035-4524-d8f3-08d8302cd9b3
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB384275A9D1510FEF4BEFA8A98C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L6kaLw1wjPln7kCpidFMOMnF9D1+YR/0TgbQjQ0A3QIBvjK1uC3qFYxMLTiatv2AJ8K1Ho3rIHKVQZn/iJOg7JwfCTVKZsbwb3whtVRs/l4VdLdDNBJH8qrNCSAHX0YylHX1TTzvqAYZVSMfjghltlgA/qnm092/palSFzKDCQWnBw0ctM2lAbtPXSy4uKiPUfFYMz1D0pI65h5UEum/LAoEPV+fF1XvB0h2Z+LW4Q1W+IJS3ptPzQqq/t96peyns3JT384X9yWy/RocTesEpxiOQj0P3lu6mT2B495/v3qt6lMk8DG03sxJ1ficarb8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EJPuNdCtzKQA386Fd0tw78+qE0zO2FmlSXk3eAGfAU6D5IU8by1PayQhE3NRDcU7T/BxCIXOIklivGxKwQnaOUgRZNw5TalK7XKriVphkMHMulw0/Ce6duUBlNU5RH7CmMG665UtuURfExDcrSYoZh8zdk8ix7Am39kMzAJFoMlDBQ9PCTX+lzuv1E9mKwO8ds8VX2l1tTj8E4CnlU8YgA/YO0ssVZkuUlII000dCjwI3vPEHsqNu+gJqm2Na3kZfFhgC9Wslmxf9BUAYILU4jzqzz0uhCJ1pnABiqI2fWySXjB5uPpoInvO+xWqGtpw2uXwQ/8yxLyYCQMgYFLgYikBtX9UUf0eKlkGktCUv1Bs0Y0t9r9ymD8m3rnzJ6dlLKCMIpLLDoTcUxX6ezuUgkcRgiRUrpF35HpyN5jBtAJ6oiVL12MnBkIT/ElpOA9JdF7Jai30iNJU7KHmwGjUHhvkPC/gofEBMhaUWGqvFPI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e57d6c40-a035-4524-d8f3-08d8302cd9b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:54:06.1622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: De/qX3/Wrej/Xy46e3pJZ1vWSMkfnYfKgsay5/adGJPgZO0Q8tb2S/zvnzuQQcLMaD4COqhoc8ozWofas9UnGH0EapcO4VCM7t1MiixUV+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 04/16] ice: Add more advanced
 protocol support in flow filter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 04/16] ice: Add more advanced
> protocol support in flow filter
> 
> The patch add more protocol support in flow filter, these include PPPoE,
> L2TPv3, GTP, PFCP, ESP and AH.
> 
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c          | 270
> ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          | 128 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_protocol_type.h |   4 +
>  3 files changed, 396 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
