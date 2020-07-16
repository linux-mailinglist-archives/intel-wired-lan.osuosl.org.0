Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C55222A57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9FB08B18C;
	Thu, 16 Jul 2020 17:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XEfK217efm8W; Thu, 16 Jul 2020 17:47:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07B898B15A;
	Thu, 16 Jul 2020 17:47:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B9441BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 83C238B144
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEB8k8MG7Aui for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:47:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E0B798AE06
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:10 +0000 (UTC)
IronPort-SDR: HLE4TUPE4FLMsncUVDuTI1ONuQNsYh1Z1CgT6HCY+oLKTrBSQy7bo4/sJj497lUD/NWvzqXIfI
 doDiYTTwDHlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="149441187"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="149441187"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:47:09 -0700
IronPort-SDR: R9E/Ty9JBFYXlS15wmaZROEsaHQQh2kIgstfvkXkFaBdbZKKYo4eovcGwXHC9ZvyBCcxw3OT/P
 KWUzTvupLIcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="300312521"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga002.jf.intel.com with ESMTP; 16 Jul 2020 10:47:09 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:09 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX163.amr.corp.intel.com (10.22.240.88) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CR0TVbq5B73vc6ho/wrOvokJSqMGY+MVDpoUIMg3kSbiYLfvQivJnErmR4We2WPravGoZ5sOBgQKX9PGumZeppm4dMVawOV1EvBuQ7Bk6sz5RaDSDvYtxT8x+sroNkO79vq6h9gw77lD7gf/ac9Ag12X2VfeBXj34U+gZLtr3FS95xOaHh95aRvhXrhHWl1fPlIWM5Vyj6t4x4QDr00fi9gsU/8JkUAlcEYqQEGqIfljpRQXYal6Q7b+Vy4c0RXbAuDwdl4kJx6lRDWGY3dA8YqmZRxnO8w6GbgIDO3fdTp9ofuPNhatdZnIrqeS2C06GmjPyoPGZ1Yz6caWVavARA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=08v/4XH8o2Q8nqWyJ7y7s/Vk1QZVp+ZrlR3ugxAfSoc=;
 b=aoveei6NQ3dTHKSctPB0yxW4iNsjxzukgzGeTUC9BI7b0Ecva0dWDDwBNV+GAekzaD01KsVkZCHKpMRjX4l3vCsBzfXA6ndJnH43IuEsE9DACLS/e26lYOEitw5d9809pvdtJ94r2bCR3mmrOk3u3FDgHXwvmO7WfCfdea8nyPfsmGvmgaPrtzFYrewbt/ForeJUYC+SqQX7OXvmUNfDYuSyW7+qKm0JyW32lTZ8tFw25HcXqULx7z+0+6XWwxC4mRb4UpD338LyD8X2KVnYc2vugKZ45ZFX0S8ylnuFhlP1oLYT6XtlfLyeQJCP1kVCc3TFHo1Q+P6zvnPRyret/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=08v/4XH8o2Q8nqWyJ7y7s/Vk1QZVp+ZrlR3ugxAfSoc=;
 b=NmVRkjaefOHob8KtVW0ykBWJHneXaNVpxrkdQux5GP0OY3DaZd27goSOMnzj/HrVNiNuEoE5s8G0Z6SMZgrqxkSsCDsK4jWLP05Twn4Iv2Q4PkjtAUHnDqdlBHhOINJiSEpLoqXZ+Q33I+Jao5FdPM7+e9HZcOtH0ZXN5S9bfn4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:47:07 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:47:07 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 07/15] ice: Add RL profile bit mask
 check
Thread-Index: AQHWWVg7FHSHFydYJ0ibrhyRQYHqSakKf3kQ
Date: Thu, 16 Jul 2020 17:47:06 +0000
Message-ID: <BN6PR1101MB214524D2A62EA1E718DDB2A68C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-7-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 66d10a60-f2c3-431f-b4ff-08d829b041fc
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB12685A623C2B6A04E79A93508C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:747;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fvLNS15C3gqYytw3VAfNU57oNjuuYXzraLq1+qr6VQGpVKFqxdyIVeaVZsRDjVgH11jIts5EB8PuJFcJUdQr5ISlumuhyjZf2f0seS3gaIpkCdX3eRVmYAqCSCgLDwCcJjpMjuBUXW7NhA8IYcWlx8msW6+TPKCgz3DSz03hY8HIwBFsqiPLz9+sw9rjU0iZarP1c0UH6LB5K8d42B4OaWTh+qN7LZb9mjN5D9s+I87f69jBOz1KMWZiyAyhMc9GQfIHXY7Lw4RcRkXBUV0NyCg3QaoTFOp4FclZFATgwNT4M0dlrd6ET0WCtiXcFDfJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(6916009)(2906002)(9686003)(4744005)(55016002)(478600001)(7696005)(186003)(64756008)(8936002)(316002)(66946007)(66556008)(66476007)(83380400001)(71200400001)(76116006)(26005)(5660300002)(53546011)(33656002)(52536014)(86362001)(8676002)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SaTta58/UjK+6NhjBQcb8JbIwlixQKh+YK8526Q0NasNU5yLmZOphPmVrxpz7lYsjG6DvR62GMaLZIEQOSKE7EY8LLSgm0kXr5XdDlTg0ccuumEnWqYwU0ZbIzp45SvrTBNYRDEzpguHJP4BPCcA1NYub2m0M4jUl5orioiyMHQsclMwbfq8xFdyBVPDBhb+J+B+9WdyyhkdzEAs4/iCdjHccOyZmUOFtEHcGRkhH/i9v0MiA7CTPrOvoWF+RHv/mgCgaBp/l+EhG8mrv4qrZ7UShkA2JzSHHvRdzn9SqXo/sHdnnuSzlEHCqFGyJcttOvnynSv8SiBGHrWfoIEfClarVnHFh6KcwePE4A8oARDVL658eh+WuSWByNNG63H5p9jeY+k+SPQl0HZvBB31gImYwLfI8pZcY347S905oBjG8tyXyjSRzeU4+5IgOT2zIKVdrLdgM1erSb+QU5RGd7J7jqOWb95fdDeJtmzrgE0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66d10a60-f2c3-431f-b4ff-08d829b041fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:47:07.0538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KhqG+wfcgFP+nHA7u5sovhX0Ro2nMBlWh4MBSRi1dyNjcGvsIYSBL6VDE73dVXgGL/0lvujlQWZNFFBcUpD6cqNx1WWvb3gR/Swchk7vV8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 07/15] ice: Add RL profile bit
 mask check
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 07/15] ice: Add RL profile bit mask
> check
> 
> From: Tarun Singh <tarun.k.singh@intel.com>
> 
> Mask bits before accessing the profile type field.
> 
> Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
