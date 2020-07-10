Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE80621BF35
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C53D2E586;
	Fri, 10 Jul 2020 21:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQR20gej9pbA; Fri, 10 Jul 2020 21:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D59B629168;
	Fri, 10 Jul 2020 21:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7EB91BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C3501883F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92AoVmeRZ1-Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EC5E883F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:22 +0000 (UTC)
IronPort-SDR: o2IoFMXo3tjGixpl8oxD45623OWhJ+RakGXNAcFY7wIQVcyzh75VRsUAMJZeR4erDROPhRgnNM
 Z39svFtP0NDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="136489833"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="136489833"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:29:21 -0700
IronPort-SDR: K6WEqQMmWBXIhTgoFEuOY96aQkpmQaoQMqic0MaWb65hIq4091wbEXDidueOPLT7uPuywJgIdn
 ZnbyPM7dRAbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="306677530"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2020 14:29:21 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:29:21 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:29:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:29:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsnDkIke87/5i7RMcSGRdLiGrITZWBejnulIdc8Bo+z8bbPawr9mEBso/68urfhLzpW9fsNXz4A0eZQiXwPavL+fSHtva4pMLMlLzCc+7iZ4RgeuKK4elYp3G95thbedxdCA+ZuK5uWIFwQ8LkgQFh7w/4xQOcCyBLKWYbUqS+uxwKGwNhxV8SdT+f5aY+ryp140R771YblQuhiH4bjCRiLsIDwNZL9Rv8Rls7AGUE/+yO0/hNfvyhwiAnkWuku6vdOvS21GpM0O7ATo3AxYkskQgY+LrgFtwl3JRycyxqaYryoEH2JvgEKKkurDMAJ7tzAK8Dli8ziVbholCMv7tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1E19jcIUHBRqgcU2UO4J151vFFLqxlpfzcMBda/gNs=;
 b=VzmSzivOSa4iUm3f5qUDa9nMK2N3FoqlkQ9nGxs4HoCH7+RrmiTJtM4zNjOIy07S+syfbnYKdJDyhsj675QePbwxoRjxeCmlC9I3HfIBHxgFXFUV0cf3KPfkCzSDxkpk20m7tGUXWDECUUkYwG49QZ+bkhCmthg6jEX03jGTqlEWG5SIdrSzZsSge9vmlKtEWtbEDYTTU3SVJd3t7h/Alh8UgkMfAN2QE0xqUqy/jT3Rq7sQEi8140e9ApDTTOhM6wiz4psnOg+rkDkWQR86h4oxtHPtXDJRe/HRocLCt7W60c+q/imddwzU391bUsbEySlsZZGJvErs5t9oy8TDWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1E19jcIUHBRqgcU2UO4J151vFFLqxlpfzcMBda/gNs=;
 b=C26KaTX98otYnF72W3tVeU9GPANHRTrDiwc/wYxDn3jwfGuuS1mcrEbbb/Re/5o9XoNeEO3mz9QpbKJZdF9UOtVMDSnxLaWm/RkOWg+SgpZGM1s0UMs6a18fQ3TxWtxjzOmZiJ6XXc7MpaxYLc1UAmkjc4xj+YoUoodk5Vz9/4k=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:29:20 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:29:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 13/16] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
Thread-Index: AQHWVlXw3KU8pXnjWkOiJPqhcz95+6kBVZeg
Date: Fri, 10 Jul 2020 21:29:19 +0000
Message-ID: <BN6PR1101MB2145D83E02DC3BFFE0D96E018C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-14-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-14-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 78b90cc2-36d7-42f8-b5b6-08d825184e88
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB36041BB12DD70B211ED59C898C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OhSKp1iA5jN1TtZouUzp/QCadRnHXv27d2TPYimjvygG1mjOyKnpYOcLW+DrSVTAcmJdzXZpKKr5X/zUpHOJN5sh4BGJjNeDzKZHuTVRHvqaL0kweTAfE+HCS3a7okGS3uEEE0qDErTPIoZFUybFRj6jS0toa7DcqsCh7ns6UrjuydsYxiY9X3RLGcTj+FUvzubyDmbR7K3F4wSRnFL4+vCVO5GN3iDtGRpNc8Q/VcZowqOFMRAoT29P9JLil7H2b6+le7JjnMkU8eFABOIB6DRktsa3pMeEO8bWOBvYOaJ4Lfr4dSfaGerCm0EOxZ04
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(4744005)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 9SMjoZQnQj/Zy+akrRX/KvXHkrnW/ydiRwkiw1mzFjwh93F6DXtw9VOekeh4ONhyzPnqHfwBLPh9CuN++3bLYA2AmglJpAddot+w44QRsW0qmMpBQQwFJcIjpg8AxfcM8iT7M1+VdmRMEKAA635hObWSS3zlRryjaJ2bgF8dsCGYFgKBjQlxHD8StL7X0csQ6Raz7Ts7e0OQamE690MOiDEEZMg+8dzVrFH+Y9HUPU/UZBDJgXTywCcUyu96Sy/Fki0MPUvIkDgp1WOHhfXQtRw32fNkgwwU3WvOuRvSohZ5QilPtqTgEVGOQCj0N7gVOTGF8GW3+YvKivsoLfnbi8bQdxeOvR3+RHHXE72xmKkv/dwucpjxXTJCSWUhGZC5zpRB3RdzV9qLFp6juPbFC/0/ziPxbCCAnU/nPUNAcjAJC3jjhcgTQuLub1PCg/HezIDgIIs7duIufyoaY3OF5NEskWd6i06rrjYEFkgljPTeGw1FiPS0N0eZszQQtNGb
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78b90cc2-36d7-42f8-b5b6-08d825184e88
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:29:19.7381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VkQOHRhqiMKZND7qr46d2hVgfsixwRoruwz5WObr+POLi4oKTsKLZ723Ckd7lLpklMtqUUB1RdrpWIvoiSWhNncbdri/6XKYtM+eOXhAxgY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 13/16] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
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
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 13/16] ice: Add non-IP Layer2
> protocol FDIR filter for AVF
> 
> Add new filter type that allow forward non-IP Ethernet packets base on its
> ethertype. The filter is only enabled when COMMS DDP package is loaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 11 +++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_flow.c          | 17 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_type.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 38
> ++++++++++++++++++++--
>  6 files changed, 65 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
