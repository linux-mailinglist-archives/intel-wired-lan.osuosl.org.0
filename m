Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFBD206BDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 07:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0B24B20521;
	Wed, 24 Jun 2020 05:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S+EtsDkyddkd; Wed, 24 Jun 2020 05:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BB23E20527;
	Wed, 24 Jun 2020 05:40:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B2471BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 05:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3340220521
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 05:40:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tJMB13U8-nr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 05:40:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B5AB2051A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 05:40:26 +0000 (UTC)
IronPort-SDR: pbl1Fga08Oh1FGvjV3EhN6yplFYgMuExHhxYAHXYrMqkiizaCRvGupAhIwn4aeBf3Yovblyk2o
 f6SYEpEewj3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="144378128"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="144378128"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 22:40:26 -0700
IronPort-SDR: svr4EEC5m1EQMJHZu6hdIZGT94vbNk3GaBogTkgtJdbvbzp+7jFV9kzB2+LizyzbTn4kIQABPr
 pZDguYeI+KDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="264981077"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 23 Jun 2020 22:40:26 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 22:40:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 22:40:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 23 Jun 2020 22:40:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgQfvb9l2rkzZecILXgBlzn9Xivv9PkmM+FL6uF/355e5BOMuo2cVBT7Wu+Kc2GMKug03egFfIpja9gTlTve7fN+H1oUAN3WrfzUdsdWKSboZ9pD5L5w2cmJVotA0QAbXAQHCALAjTRvVfP2MSqZBKslHKv3ULswFQ4vGd9Si3vFDVb/V9/SIxHfg1b3RM2H152zx+jlWD5yKclwrsvqGMZCEzTCfXfpZ4AA5pOOlbeQoq67O7tLFqKNkUMBN0w2QUUVvgdzOG9NQhvZwWCpiw63/pUuY/c00Ix5VJviGMuYbWRcbmxdIP6QKJw/7uINo/1nTNqH5SnapCpF5cFbXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ymBvRDD/A+1eU9pYpSgM3bu8Q57iwyCz97D3kj5+Z+w=;
 b=OdRxzTN8HRKoc50MwlnbcW0/dmkhlkRaCRV8deROVdNB4TzOC2cxX482qgS7FK22HfOr9sLfG1zDGBjExM2uN5cUZm7AmSSQUmNIwbEdLJpU3NM99OsT8vYb/VJalu4FJPoVqoDPz8EC1XreWKyEWY+O5BZxqWm5Uax8XuPeuzx1LsolDfBIQoJ9ecCjTnarIn+EFFXVFf1OhXGXYjZAezsE32p6ps3EKvpNj9kzFNt6H5/u5dw/VRPqNcW0EmhQcTmK2qgqQbTOTjg+LMM9A35B6wv4qdpyymFxu92OYSLvNyHrMdB41UNaM5dc0/hnRL72feF+XmktSP4AREpgkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ymBvRDD/A+1eU9pYpSgM3bu8Q57iwyCz97D3kj5+Z+w=;
 b=rOo+XSKp6vrJDMautk05+lNO+PxIKmbEHXqUF6T7bmya4xRi//MkuxD6B0/M4yxOP4eCL8eYjWxASlO7bS2mTSrP/a76zSpXXTTP+tEugA7bF6+1WzDZ/PK9VVRkFH1o2tNOzZ/uc3oKyiTP34j9t6tBgnIjKVBivr21ISzrRGc=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM6PR11MB3467.namprd11.prod.outlook.com (2603:10b6:5:8::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 05:40:06 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 05:40:06 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 1/5] ice: add the virtchnl handler
 for AdminQ command
Thread-Index: AQHWSc4yvSpig+KIjkWHAVeXORxKRqjnP5ug
Date: Wed, 24 Jun 2020 05:40:06 +0000
Message-ID: <DM6PR11MB3900A2B7A289AFAB58AEF644F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624020801.104003-1-haiyue.wang@intel.com>
 <20200624020801.104003-2-haiyue.wang@intel.com>
In-Reply-To: <20200624020801.104003-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bde8faa-22ef-4d2b-f231-08d818010d05
x-ms-traffictypediagnostic: DM6PR11MB3467:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3467062C257C9FE52B2B478CF8950@DM6PR11MB3467.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iBPD5nmbpW12W2NZZ4EwqkHnWN91+8Wizr+WoQIaXkX+su48qiGlmrYaXg3wHli3ur9njEmpUIZ+rwgbWMK4t16fAVDQwRQ5uBxelHHBF2gRS+5QGh/mZFH9oUY0SBbg2kZr8gwLjKrszdBs6wqN/whkjFIohJDr/UALKTu33IbwJziLNAHHCzvKvSxBzzStTqe8qbYE6/bE5dPL+XKVE+ni/r3LlrOPwoxec5YMnnyWX+NSUsUM5xGwNoMztHNE+thwpehD6ls/IocP3rOGvc3JDvVCUOBF7n2ZiZAycWwbAFQH4ZYSKHGNwjvLHJTzW3Cb7zW4KGgV1L87jeFZYF0bJ9JQUMULS8nSuZenK4WbIBDuZwKfMrqUTfVwkt69J3oAtc+59BVOr7vR6fPMeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(86362001)(71200400001)(7696005)(8676002)(966005)(26005)(33656002)(186003)(6506007)(316002)(110136005)(8936002)(478600001)(53546011)(83380400001)(2906002)(9686003)(55016002)(66476007)(52536014)(64756008)(66446008)(66946007)(66556008)(76116006)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: yHN55bVEoqDNkk3jesJeVaQXtRyaxh2leurUN19mve29EdB6pJWgDsB81c7DuemC9kN31kEucM7Xta+U9F+pj/+eU5fyzq2yJOWRevKtHFyogxCXm1clFFJoZz9EoGHLD0MjYjX7C9k+KLoS28t45UxIVke8Mo1sWpt/h2cr4An62Jwue+Kyl+IEvDfBdaeViTIlLutKBy20+DAOn8E9O9sFNJE9nXdHxdXVnBYf9ZaMYBLvaZ1aYBoocudTA+xeOXBxKGmNOKgIy4ctI9jqk5TI/ZZi+NGHVDaOdwxaJjluEue60tb7IT1ZH3SyTfJ73GWzvj6/K+lxMKk9onC7dhej3c3RRrjT/VHja3zfUSuKzSjDdoWK/5wNK+5AwcVCTsLLjp5RoPs2H7BJqUWd2XitVuJmv0kJwT7LXuuCGHWo/PTa7PIWp/HlILHOsFjTKglVgQ0z5pA/jyrDhK5PVk36YX2wbJ7lYreFvn9DCazdkjeTXiRUqZacAPgl+vs4
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bde8faa-22ef-4d2b-f231-08d818010d05
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 05:40:06.4103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: snvwnwSWAEBSUZ7KJeuv/GmvwWKgJBhDqDY/0ps1bEmLP/mVw5x2G9aL9vDjdZlPq/6OObZz9VKEdPnTM5PWlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3467
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 1/5] ice: add the virtchnl handler
 for AdminQ command
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
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 10:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v3 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver sends
> these commands to the firmware, and returns the response to the VF again
> through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_dcf.c

Tested-by: Lu, Nannan <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
