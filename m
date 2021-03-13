Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BE1339A5B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:13:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA29C60605;
	Sat, 13 Mar 2021 00:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wHncOL6k-gkK; Sat, 13 Mar 2021 00:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A35AE605EE;
	Sat, 13 Mar 2021 00:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76B891BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 603AC441C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bXOpn3b2OoEC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:13:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A892443906
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:13:47 +0000 (UTC)
IronPort-SDR: Yi7apk2ATGvPssog1CckaRUDBTPHJN+xrNzx3wmGb4e/2Z0Mh1oL4/NCCisaPlsDH6YCByWPKU
 KnBy95nwZYhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="185550008"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="185550008"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:13:47 -0800
IronPort-SDR: CSGgILWbQS5J9bLnmiBSLqwIGEOxzKM8wcZkju2yWyuJ4HCmK14KPiKlOFxK+nEVauI2OrkwAe
 CcsAXhpVx5Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="600769334"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 12 Mar 2021 16:13:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:13:46 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:13:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:13:46 -0800
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.57) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:13:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kL2T9PcVtaawk5qMzmCQwbAUnU7AUMc67yZij++eBMQUsbkPVzfs9UmvGTXB4OTZNGukwbUds5/CWPabEMjMzHrMqBD0SSFQ7jfIFtJt8am+0ePqp7iZZ6wHZ/6ZW4jLJrc4p5Wo/a65CYVFyc5HW1YVEnuuCEZ9dImtqos9WIZVKG8bmRbccodm7xW3WGHkmOLq9tWRkoimnJEROTPWks0NWRqzJdCjKnnN0uACGPwicVN/Et3WFbLdLqjYUVHQHd54DblfALX7w0uvzkbDESgJiJRshuo6wvPljIDGXQmlsEWlw+0Aatl0NkJgle1+FnxzWlLwb1OGpHRE5CyT/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8mnY2TVtagQ0zvITeT9aZRvloG8+qKw9UyQ5sCUTQk8=;
 b=CUYPFuwTQpLa5SEeH7FO2/qYqgnnCS1qTvpDa0IH5H7v+kD9j01eFl4MiReo77212ZAxIvdSos/df8814Z+EV1mwhQmSR9rliXACWWXYHvYX0/4fz5hqBgfRE3JbvUrOzaI4vfrbpx66B9Zi78+yjR1dGSI0IBFQzZJqFwCY3ey9iMXljGfO/CjGSOLIU4MAcBA5Ku0XfRdMAxmsi35mm054a17mnlEkQqKjDathJg7HeTEln32k5MDKTgoczspa/UgUtq/jsE1n45rIS+3lvP70NGMFemLQF94a3VOusJTohad4UZTTvnD4kUkpe93jyunrw83n1N7bpK6D4UEK4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8mnY2TVtagQ0zvITeT9aZRvloG8+qKw9UyQ5sCUTQk8=;
 b=fvi/VCE9yNzDtCFFg2ca/Y5cB5XxcPkECwpUpcYi1apCgj/t89fvxvijQhLboh0alHWUckcR8Pm9bndz+aG5IRUIFdiniimGDRp1rG45ADnEzbwMSkop6EoNz54mLhMVuGjl5Z56sWkTpZfjuDSV3PaHfTuvEiwTGgx6iim6KVk=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Sat, 13 Mar
 2021 00:13:45 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:13:45 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 10/13] ice: cleanup style issues
Thread-Index: AQHXD5GXT/xti2BSDUK38RoJScLQ76qBHCSg
Date: Sat, 13 Mar 2021 00:13:45 +0000
Message-ID: <SA2PR11MB51147FD90E2DEFC8306CBC72FA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b622812-5819-4633-8a76-08d8e5b4ddf3
x-ms-traffictypediagnostic: SA2PR11MB4970:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4970503CA8487041DDD5788AFA6E9@SA2PR11MB4970.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RjRqJU9rzVC5p/7zfPSe8HJBhw0Cl1m2gltdUUMYHXOvZD6cswmXiLtjT9bQmV+q8Alic+oeUhf7qPU8zC9E35wU2QmBVd1wMakfso6PmGd6GVVPZ09IgICIverzgP6RlEttj4lei6/HPWpc/6fVSw2Ps3QH2vanzvsVUkZ1qNdgXETq6XQRW+/DnkTbvYjQCIhwJXzQvxxlCvf52JAAQbOB9RVOXPt4cUlZtCkso2BuYvpffB7L0yaEIUXuWXLDbNdvUXFsRVnNN+j+CG57oy9UKb26A79atOywDu1ACmwSEEbqVKQobYFfVI8NT2y3y2gSHogSI3ey2d23hVVUHDZpRp+e543bknbbLya4oqDATe59B3LglfQCavqfWRwGsbsqvmEOY66nbrcihbQdA4+Y94krG3x4uTBPQmF3BXP8Vy8/KxvvktQQSUxMz0F6vqqzluxG4JlNnki3cfY7QjQS6/5JgYmVz4WnKpQxf7O2D6fNieOd6IfOtdzESt06pslZbkwUflQ8hfAfDrq4zCV0PsSZP7LDxEpy1Rpptn79VuptlVSfUFBUIMOCpbKk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(366004)(396003)(39860400002)(186003)(33656002)(86362001)(83380400001)(26005)(478600001)(2906002)(66946007)(110136005)(53546011)(76116006)(8936002)(66476007)(64756008)(66556008)(66446008)(9686003)(8676002)(71200400001)(4744005)(6506007)(52536014)(55016002)(5660300002)(7696005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?tyqINkGJxCbOEwZ7tbxyK8XLXrts7k/NMJo3UXqd6pGNLcbxKiqqHCHJTu29?=
 =?us-ascii?Q?082RarHMNZVbtBpiDf3q7VI3qAkJ8rVq8N010s6WKX1kV2PNph7/yELVtl5I?=
 =?us-ascii?Q?mS2bzk5YQ0YxJg8vHLKDhzKDqAYI/g3mK7msNUSGwvKrxdvbxp38GpKQW8Gk?=
 =?us-ascii?Q?RKY7OMKBofCNkbFR7sF8XDQp3iw08YKxSCJoMIrG6xijgxkYJ++9m4YAKfLz?=
 =?us-ascii?Q?+d2V6/jhehIFDr7hBpQTJK9OW+K53UD2SZil8eTZh2p0iRaBvh6f1ENOv2le?=
 =?us-ascii?Q?bTPkSseXWDZs2+3b0hyV1tnYOQe/bEuJDIQj1kQomctlElrcs/svboqNLo9L?=
 =?us-ascii?Q?awFCA8a4EdinQ2lE5dEjdBI4kYBIFYfWdqQK7bSM5OywpF21mshBzLpQcWrh?=
 =?us-ascii?Q?zopBKpPXBFKQgwzmj5lizCv1cT6pJmSjZNNGLtvguuZPZhlcUqjaAgByBZ6O?=
 =?us-ascii?Q?AFqa4fnRe9vmeW4NsV4059xnabJhk9wTIeGzI1U/7bOneiJwz97y6xXnAH1H?=
 =?us-ascii?Q?qgrLe6Nc1hfkpe+gtZZT8XhhbiU2sRSqEz7VZ2qpJXX3EVHOP5PthRAujcCR?=
 =?us-ascii?Q?NhNoNKtc69u0w69IP/Gbvv8BWum0wKq/3mbasdzul1Zhr+nrKGfNcFlmBMwX?=
 =?us-ascii?Q?0tIWa/5qcXtgUhR82V+oP4DdTC9HzZMZDaEFvwyAAAEzxm04MSNDz2GuEttj?=
 =?us-ascii?Q?ZPEpAVl0DSZi1e3Cpkc/6de5PWZ+P7mt8TID3YexIrD8LYFOGOrD6+xY/TTC?=
 =?us-ascii?Q?W3VeFBAwb0BAZi79nDq//FCjmb7DSrDU/CA67y+HlAhRts/pkn8jO+wixEVe?=
 =?us-ascii?Q?ix1ghkXytQDHDCAXgaVvOx/G6h4sE/tzklhjqo5CfStvDl16s58yg168DRGE?=
 =?us-ascii?Q?k2QGPXITOCArkmDgqG0pF+766xAOn8IYaOjP1i0XoG2wAfF/UXhCiBFUFC/X?=
 =?us-ascii?Q?0a7kdQEvh8BjcQmWaWtORrPKvI+NWnYyej68nctymVt1SUNm9I/op/Gxr3sR?=
 =?us-ascii?Q?bVFwMyj/EiIiA23rTJ7O/1BNY2n1oMO6VoaoBmOJnqXTFeBJkf+Kah+xZ9LM?=
 =?us-ascii?Q?J0JHwOq5HfAKNa8Ps5+0rPhxunSuNbk1Jlv5xEy03pIxO0syuwGm75Lc1DLs?=
 =?us-ascii?Q?cfpwp066QiqKioXGDLAQke2M7Bj+8iVVCi7ApiB5qtsFwahz4DfcUnr9+R4k?=
 =?us-ascii?Q?qVLVDjcWF1bg7iaVcOBhRe56BoXsnWGM33mlHC7qs2q2CrjhqeY4YjhcYXhv?=
 =?us-ascii?Q?T246V3N88mRT0ea37vE28SOrPp84+zIKQKqOJzqaihfQImnJVYOAb3xNoooM?=
 =?us-ascii?Q?woIqhyYWX4tEKyzkdyoJt47z?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b622812-5819-4633-8a76-08d8e5b4ddf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:13:45.2728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MEeitoIaFhA9HxnnQMqiKkDIHIOzBKxHsx2CWlGSeb3I5bEnbdF1ujTp0y4p7DSma6zpWZnms6wwCV5jfUO1aHh4qaXaB/JWKuGcO9SUUSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 10/13] ice: cleanup style issues
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
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 10/13] ice: cleanup style issues
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> A few style issues reported by checkpatch have snuck into the code; resolve
> the style issues.
> 
> COMPLEX_MACRO: Macros with complex values should be enclosed in
> parentheses
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.h  | 4 ++--
> drivers/net/ethernet/intel/ice/ice_flex_type.h | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_flow.c      | 6 +++---
>  3 files changed, 7 insertions(+), 7 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
